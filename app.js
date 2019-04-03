// 引入
const session =require('express-session')
const bodyParse=require('body-parser')
const express=require('express');
const mysql=require('mysql');
const multer=require("multer");
const fs=require("fs");
//引入模块cors
const cors=require('cors')

var server=express();
server.listen(3001)
server.use(bodyParse.urlencoded({
  extended:false
}))
//配置session
server.use(session({
  secret:'128位随机字符串',//安全字符串
  resave:false,//是否每次请求都更新session值
  saveUninitialized:true,//初始化保存数据
  cookie:{
    maxAge:1000*60*60  //1s*60*60
  } 
}))
//配置允许访问列
server.use(cors({
  origin:["http://127.0.0.1:8000","http://localhost:8000"],
  credentials:true
}));
server.use(express.static('public'));
var pool=mysql.createPool({
  host:"127.0.0.1",
  port:"3306",
  user:'root',
	password:'',
	database:'yun',
  connectionLimit:20,
  multipleStatements: true
});
//导出连接池对象
//module.exports=pool;

//登录
server.get('/login',(req,res)=>{
  var u=req.query.uname;
  var p=req.query.upwd;
  var sql='select uid from music_user where uname=? and upwd=?'
  pool.query(sql,[u,p],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      var uid=result[0].uid
      //保存session对象中
      req.session.uid=uid;
      var sql='select * from music_user where uid=?'
      pool.query(sql,[uid],(err,result)=>{
        if(err) throw err
        if(result.length>0){   
          res.send({code:1,data:result})
        }else{
          res.send({code:-1,data:'暂无'})
        }
      })
    }
    //res.send(result);
    // if(result.length==0){
    //   res.send({code:-1,msg:"用户名或密码错误"})
    // }else{
    //     //登录成功
    //   //获取用户id 
    //   var uid=result[0].uid
    //   //保存session对象中
    //   req.session.uid=uid;
    //   console.log(req.session.id)
    //   console.log(req.session.uid)
    //   res.send({code:1,msg:"登陆成功"})
    //   }
  })
})
//注册
server.post('/adduser',(req,res)=>{
  console.log(req.body)
  var uname=req.body.uname
  var upwd=req.body.upwd
  var unameu=req.body.unameu
  var num=req.body.num
  var upic='songs6.jpg'
  var sql='insert into music_user values(null,?,?,?,?,?,null)'
  pool.query(sql,[uname,unameu,num,upwd,upic],(err,result)=>{
    if(err) throw err
    res.send({code:1,msg:"注册成功"})
  })
})
//查询用户信息
server.get('/loaduser',(req,res)=>{
  var uid=req.session.uid
  if(!uid){
    res.send('请登录')
  }
  var sql='select * from music_user where uid=?'
  pool.query(sql,[uid],(err,result)=>{
    if(err) throw err
    if(result.length>0){
      res.send({code:1,data:result})
    }else{
      res.send({code:-1,data:'暂无'})
    }
  })
})
 //功能三:首页轮播图
server.get("/imglist",(req,res)=>{
  var sql='select pic.src from pic'
  pool.query(sql,(err,result)=>{
    if(result.length>0){
    res.send({code:1,data:result})
    }else{
    res.send({code:-1,data:'错误'})
    }
  })
});
 //功能四
 server.get('/musiclist',(req,res)=>{
  var sql='select * from music'
  pool.query(sql,(err,result)=>{
    if(err) throw err
    res.send({code:1,data:result})
  })
 })
//歌曲搜索
server.get('/songslist',(req,res)=>{
  var kwords=req.query.kwords
  var sql='select * from songs where songs_name like ?'
  pool.query(sql,['%'+kwords+'%'],(err,result)=>{
    if(err) throw err
    if(result.length>0){
    res.send({code:1,data:result})
    }else{
      res.send({code:-1,data:'暂无此歌曲'})
    }
  })
 })
 //最新音乐
server.get('/newsongs',(req,res)=>{
  var sql='select * from newsongs '
  pool.query(sql,(err,result)=>{
    if(err) throw err
    res.send({code:1,data:result})
  })
})
//播放音乐
server.get('/playsongs',(req,res)=>{
  var id=req.query.id
  var sql='select songs_name,songs_author  from songs where songs_id=?'
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err
    res.send({code:1,data:result})
  })
})
//歌单加载
server.get('/musicTal',(req,res)=>{
  var id=req.query.id
  var mtid=id
  var mlid=id
  var sql='SELECT * FROM music where mid=?;select	* from music_talk where mtid=? order by num desc;select * from music_list where mlid=?;'
  pool.query(sql,[id,mtid,mlid],(err,result)=>{
    res.send({data:result[0],database:result[1],code:result[2]})
  })
})
//歌单评论
server.post('/addAct',(req,res)=>{
  var mtid=req.body.mtid
  var muid=req.session.uid
  var act=req.body.act
  var uname=req.body.uname
  var upic=req.body.upic
  var time=new Date();
  console.log(mtid)
  console.log(uname)
  var sql='insert into music_talk values(?,?,?,0,?,?,?)'
  pool.query(sql,[mtid,muid,act,uname,upic,time],(err,result)=>{
    if(err) throw err
    res.send({code:1,data:"评论成功"})
  })
})
//收藏
server.post('/addslist',(req,res)=>{
  var uid=req.session.uid
  var sname=req.body.sname
  var sauthor=req.body.sauthor
  var sql='select uid,sname from u_songslist where uid=? and sname=? ';
pool.query(sql,[uid,sname],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      console.log(result);
      res.send({code:2,data:'此歌曲已收藏'})
    }else{
    var sql='insert into u_songslist values(?,?,?)'
    pool.query(sql,[uid,sname,sauthor],(err,result)=>{
      if(err) throw err
      res.send({code:1,data:'加入我的歌单成功'})
  })}
})
})
//用户歌单
server.get('/addopp',(req,res)=>{
  var uid=req.session.uid
  console.log(uid)
  if(!uid){
    res.send("请登录")
    return
  }
  var sql='select * from u_songslist where uid=?'
  pool.query(sql,[uid],(err,result)=>{
    if(err) throw err
    res.send({code:1,data:result})
  })
});
// 查询歌曲详情
server.get('/addoopp',(req,res)=>{
  var id=req.query.id
  console.log(id)
  var sql='select * from songs where songs_id=?'
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err
    console.log(result)
    res.send({code:1,data:result})
  })
});
//上传头像
var upload=multer({dest:"upload/"})
server.post('/uploadFile',upload.single("mypic"), (req, res) => { 
  //限制文件大小
  var size=req.file.size/1024/1024
  console.log(req.file)
  if(size>2){
    res.send({code:-1,msg:"文件大小超过限制"});
    return;
  }
  //限制文件类型
  var type=req.file.mimetype;
  var index =type.indexOf('image')
  if(index==-1){
    res.send({code:-1,msg:"上传文件类型不正确"})
    return;
  }
  //创建新文件名
  var src=req.file.originalname
  var i3=src.lastIndexOf('.');
  var suff=src.substring(i3);
  var ft=new Date().getTime();
  var fr=Math.floor(Math.random()*9999)
  //var des='./upload/'+ft+fr+suff
  var des=ft+fr+suff
  console.log(__dirname)
  var newFile=__dirname+"/public/upload/"+des
  //将临时文件移动upload目录下并且改文件名为新的
  fs.renameSync(req.file.path,newFile)
  //假设用户uid=1
  //创建sql 更新头像
  var sql="update music_user set u_pic=? where uid=?"
  //发送sql 语句
  pool.query(sql,[des,1],(err,result)=>{
    if(err) throw err
    res.send({code:1,msg:"上传成功"})
  })
  //如果执行成功返回上传成功消息
  //返回消息上传成功
})
// 显示头像
// server.get('/findInfo',(req,res)=>{
//   //获取uid
//   var uid=1
//   //创建slq 查询指定用户的信息
//   var sql='select * from xz_info where uid=?'
//   //返回
//   pool.query(sql,[uid],(err,result)=>{
//     if(err) throw err
//     if(result.length>0){
//       res.send({code:1,data:result})
//     }else{
//       res.send({code:-1,data:"失败"})
//     }
//   })
// })
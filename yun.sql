SET NAMES UTF8;
DROP DATABASE IF EXISTS yun;
CREATE DATABASE yun CHARSET=UTF8;
USE yun;
CREATE TABLE pic(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  src  VARCHAR(256)
);
INSERT INTO pic VALUES
(null,'http://127.0.0.1:3001/img/banner1.jpg'),
(null,'http://127.0.0.1:3001/img/banner2.jpg'),
(null,'http://127.0.0.1:3001/img/banner3.jpg'),
(null,'http://127.0.0.1:3001/img/banner4.jpg'),
(null,'http://127.0.0.1:3001/img/banner5.jpg');
/*'起风了,写给黄淮,往后余生,告白气球,追梦赤子心,起风了,写给黄淮,往后余生,告白气球,追梦赤子心,起风了,写给黄淮,往后余生,告白气球,追梦赤子心',
'消愁,不染,下坠Falling,飞云之下,没忘,消愁,不染,下坠Falling,飞云之下,没忘,消愁,不染,下坠Falling,飞云之下,没忘',
'形容,我想,喜欢,拥抱,china-x,形容,我想,喜欢,拥抱,china-x,形容,我想,喜欢,拥抱,china-x',*/
/* 歌单歌曲 */
CREATE TABLE music_list(
  mlid INT ,/* 同歌单 mid*/
  sname VARCHAR(32),
  sauthor  VARCHAR(50),
  salbum    VARCHAR(32)
);
INSERT INTO music_list VALUES
(1,'起风了','买辣椒也用券','起风了'),
(1,'写给黄淮','解忧邵帅','写给黄淮'),
(1,'往后余生','王贰浪','往后余生'),
(1,'告白气球','周杰伦','告白气球'),
(1,'追梦赤子心','GALA','追梦痴子心'),
(1,'起风了','买辣椒也用券','起风了'),
(1,'写给黄淮','解忧邵帅','写给黄淮'),
(1,'往后余生','王贰浪','往后余生'),
(1,'告白气球','周杰伦','告白气球'),
(1,'追梦赤子心','GALA','追梦痴子心'),
(1,'起风了','买辣椒也用券','起风了'),
(1,'写给黄淮','解忧邵帅','写给黄淮'),
(1,'往后余生','王贰浪','往后余生'),
(1,'告白气球','周杰伦','告白气球'),
(1,'追梦赤子心','GALA','追梦痴子心'),
(2,'消愁','毛不易','消愁'),
(2,'不染','毛不易','不染'),
(2,'下坠Falling','丁芙妮','下坠'),
(2,'飞云之下','韩红/林俊杰','飞云之下'),
(2,'没忘','陈雪凝','没忘'),
(2,'消愁','毛不易','消愁'),
(2,'不染','毛不易','不染'),
(2,'下坠Falling','丁芙妮','下坠'),
(2,'飞云之下','韩红/林俊杰','飞云之下'),
(2,'没忘','陈雪凝','没忘'),
(2,'消愁','毛不易','消愁'),
(2,'不染','毛不易','不染'),
(2,'下坠Falling','丁芙妮','下坠'),
(2,'飞云之下','韩红/林俊杰','飞云之下'),
(2,'没忘','陈雪凝','没忘'),
(3,'形容','沈以诚','初遇Vol.1'),
(3,'我想','董昱昆','我想'),
(3,'喜欢','阿肆','喜欢'),
(3,'拥抱','五月天','拥抱'),
(3,'china-x','徐梦圆','change'),
(3,'形容','沈以诚','初遇Vol.1'),
(3,'我想','董昱昆','我想'),
(3,'喜欢','阿肆','喜欢'),
(3,'拥抱','五月天','拥抱'),
(3,'china-x','徐梦圆','change'),
(3,'形容','沈以诚','初遇Vol.1'),
(3,'我想','董昱昆','我想'),
(3,'喜欢','阿肆','喜欢'),
(3,'拥抱','五月天','拥抱'),
(3,'china-x','徐梦圆','change'),
(4,'起风了','买辣椒也用券','起风了'),
(4,'写给黄淮','解忧邵帅','写给黄淮'),
(4,'往后余生','王贰浪','往后余生'),
(4,'告白气球','周杰伦','告白气球'),
(4,'追梦赤子心','GALA','追梦痴子心'),
(4,'起风了','买辣椒也用券','起风了'),
(4,'写给黄淮','解忧邵帅','写给黄淮'),
(4,'往后余生','王贰浪','往后余生'),
(4,'告白气球','周杰伦','告白气球'),
(4,'追梦赤子心','GALA','追梦痴子心'),
(4,'起风了','买辣椒也用券','起风了'),
(4,'写给黄淮','解忧邵帅','写给黄淮'),
(4,'往后余生','王贰浪','往后余生'),
(4,'告白气球','周杰伦','告白气球'),
(4,'追梦赤子心','GALA','追梦痴子心'),
(5,'只要有想见的人,就不是孤身一人(电影《夏目友人帐》推广曲)','王源','只要有相见的人,就不是孤身一人'),
(5,'消愁','毛不易','消愁'),
(5,'不染','毛不易','不染'),
(5,'下坠Falling','丁芙妮','下坠'),
(5,'飞云之下','韩红/林俊杰','飞云之下'),
(5,'没忘','陈雪凝','没忘'),
(5,'消愁','毛不易','消愁'),
(5,'不染','毛不易','不染'),
(5,'下坠Falling','丁芙妮','下坠'),
(5,'飞云之下','韩红/林俊杰','飞云之下'),
(5,'没忘','陈雪凝','没忘'),
(5,'消愁','毛不易','消愁'),
(5,'不染','毛不易','不染'),
(5,'下坠Falling','丁芙妮','下坠'),
(5,'飞云之下','韩红/林俊杰','飞云之下'),
(5,'没忘','陈雪凝','没忘'),
(6,'形容','沈以诚','初遇Vol.1'),
(6,'我想','董昱昆','我想'),
(6,'喜欢','阿肆','喜欢'),
(6,'拥抱','五月天','拥抱'),
(6,'china-x','徐梦圆','change'),
(6,'形容','沈以诚','初遇Vol.1'),
(6,'我想','董昱昆','我想'),
(6,'喜欢','阿肆','喜欢'),
(6,'拥抱','五月天','拥抱'),
(6,'china-x','徐梦圆','change'),
(6,'形容','沈以诚','初遇Vol.1'),
(6,'我想','董昱昆','我想'),
(6,'喜欢','阿肆','喜欢'),
(6,'拥抱','五月天','拥抱'),
(6,'china-x','徐梦圆','change');
CREATE TABLE music(
  mid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(56),
  uname VARCHAR(16),
  details VARCHAR(128),
  src VARCHAR(256),
  mtitle VARCHAR(32),
  much  VARCHAR(32),
  user_pic VARCHAR(256)
);
INSERT INTO music VALUES
(null,'或许 生活的本质就是在黑暗中找寻光芒',"窝在被子里哇","生活总在和我们开各种各样的玩笑,让我们不断在获得和失去中行走,就像歌里写道",'http://127.0.0.1:3001/img/songs1.webp',
'华语,流行,浪漫','30.5','http://127.0.0.1:3001/img/user1.webp'),
(null,'春天到了 该谈个甜甜的恋爱了',"窝在被子里哇","春天是一个恋爱的季节，这似乎达成人类共识了，愿你有一个灿烂前程，愿你有情人终成眷属，愿你在尘世获得幸福，愿你的生命中有这样一个人，为你冬日驱寒、夏日遮阳、秋日挡风和春日避光。",'http://127.0.0.1:3001/img/songs7.webp',
'浪漫,爱情,流行','41','http://127.0.0.1:3001/img/user2.webp'),
(null,'或许 生活的本质就是在黑暗中找寻光芒',"窝在被子里哇","生活总在和我们开各种各样的玩笑,让我们不断在获得和失去中行走,就像歌里写道",'http://127.0.0.1:3001/img/songs3.webp',
'电音,流行','109','http://127.0.0.1:3001/img/user3.webp'),
(null,'抖腿风暴：全程无间歇，已躺在轮椅上晒太阳',"苏柒柒1111","花哨的简介毫无意义 一切尽在音乐里",'http://127.0.0.1:3001/img/songs4.webp',
'华语,放松','97.5','http://127.0.0.1:3001/img/user4.webp'),
(null,'只要有想见的人，就不是孤身一人',"橘子觉主","在无数个睡不着的晚上，我相信会有很多人，习惯性的开始闭上眼睛，安静的想念一个人，想念一张脸。愿此刻你爱的人正陪在身边，想念的人都能在梦里出现。",'http://127.0.0.1:3001/img/songs8.webp',
'治愈,华语,放松,流行','26','http://127.0.0.1:3001/img/user1.webp'),
(null,'适合画画肝作业时听的歌',"知世","谢谢大家收听w",'http://127.0.0.1:3001/img/songs6.jpg',
'学习,电音','18','http://127.0.0.1:3001/img/user2.webp');
CREATE TABLE music_talk(
  mtid INT , /*此id 是歌单id    PRIMARY KEY AUTO_INCREMENT*/
  muid INT,   /*评论的用户id*/ 
  act VARCHAR(256),
  num INT,
  uname VARCHAR(32),
  upic VARCHAR(256),
  mtime datetime
);
INSERT INTO music_talk VALUES
(1,1,'11111',10,'往往如你','http://127.0.0.1:3001/img/us2.webp','2018-1-9 10:5'),
(2,3,'22222',95,'初秋柚屿','http://127.0.0.1:3001/img/us1.webp','2015-11-5 10:59'),
(3,5,'想要谈恋爱的同学们请打开手机前置摄像头冷静一下',20,'Ancestries','http://127.0.0.1:3001/img/us2.webp','2018-7-22 10:59'),
(3,8,'春天到了，又到了单身狗春眠的季节。。。',55,'ILLE山吹','http://127.0.0.1:3001/img/us4.webp','2018-1-9 11:55'),
(3,2,'春天到了，又到了单身狗春眠的季节。。。',78,'玉米粒粒_',
'http://127.0.0.1:3001/img/us3.webp','2019-3-13 23:5'),
(4,9,'春天到了，又到了单身狗春眠的季节。。。',78,'枫林染','http://127.0.0.1:3001/img/us1.webp','2018-1-9 19:5'),
(5,15,'春天到了，又到了单身狗春眠的季节。。。',78,'疯子祭酒','http://127.0.0.1:3001/img/us3.webp','2018-1-9 20:5'),
(6,16,'春天到了，又到了单身狗春眠的季节。。。',78,'没忘','http://127.0.0.1:3001/img/us4.webp','2019-2-5 10:5');

CREATE TABLE songs(
  soid INT,
  songs_id  INT PRIMARY KEY AUTO_INCREMENT,
  songs_name  VARCHAR(128),
  songs_author  VARCHAR(50),
  songs_album VARCHAR(50),
  songs_src  VARCHAR(128)
);
INSERT INTO songs VALUES
(null,null,'起风了','买辣椒也用卷','起风了','http://127.0.0.1:3001/img/qifengle.webp'),
(null,null,'起风了','吴青峰','起风了','http://127.0.0.1:3001/img/qifengle2.webp'),
(null,null,'谓风','双笙','谓风','http://127.0.0.1:3001/img/songs6.jpg'),
(null,null,'谓风','双笙&流仙','谓风',null),
(null,null,'abcedfghijklmnopqrstuvwxyz','abcedfghijklmnopqrstuvwxyz','abcedfghijklmnopqrstuvwxyz',null),
(null,null,'追梦赤子心','GALA','追梦痴子心',null),
(null,null,'写给黄淮','解忧邵帅','写给黄淮','http://127.0.0.1:3001/img/huanghuai.jpg'),
(null,null,'写给黄淮','西彬呀','写给黄淮',null),
(null,null,'写给黄淮','我是张怡啊','写给黄淮',null),
(null,null,'往后余生','王贰浪','往后余生',null),
(null,null,'往后余生','马良','往后余生','http://127.0.0.1:3001/img/maliang.jpg'),
(null,null,'往后余生','宋雨','往后余生',null),
(null,null,'不染','毛不易','不染','http://127.0.0.1:3001/img/buran.jpg'),
(null,null,'不染','萨顶顶','不染',null),
(null,null,'不染','河图','不染',null),
(null,null,'消愁','毛不易','消愁','http://127.0.0.1:3001/img/buran.jpg'),
(null,null,'消愁','木头','消愁',null),
(null,null,'消愁','柯泽','消愁',null),
(null,null,'告白气球','周杰伦','告白气球',null),
(null,null,'告白气球','SNH48','告白气球',null),
(null,null,'告白气球','张阿辉','告白气球',null),
(null,null,'下坠Falling','丁芙妮','下坠Falling','http://127.0.0.1:3001/img/22.jpg'),
(null,null,'拥抱','五月天','拥抱',null),
(null,null,'拥抱','CANNIE','拥抱',null),
(null,null,'只要有想见的人,就不是孤身一人(电影《夏目友人帐》推广曲)','王源',
'只要有想见的人,就不是孤身一人',null),
(null,null,'飞云之下','韩红/林俊杰','飞云之下',null),
(null,null,'飞云之下','周晓楠/知何','飞云之下',null),
(null,null,'飞云之下','孙婉','飞云之下',null),
(null,null,'绿色','陈雪凝','绿色',null),
(null,null,'关于孤独我想说的话','隔壁老樊','关于孤独我想说的话',null),
(null,null,'蜂鸟','吴青峰','蜂鸟',null),
(null,null,'形容','沈以诚','初遇Vol.1',null),
(null,null,'你是人间四月天','解忧邵帅','你是人间四月天',null),
(null,null,'单项箭头','双笙','单向箭头',null),
(null,null,'原点-徐梦圆 Remix','徐梦圆','原点',null),
(null,null,'china-x','徐梦圆','change',null),
(null,null,'喜欢','阿肆','喜欢',null),
(null,null,'没忘','陈雪凝','没忘',null),
(null,null,'出山','花粥/emm','出山',null),
(null,null,'我想','董昱昆','我想',null);
CREATE TABLE newsongs(
  soid INT PRIMARY KEY AUTO_INCREMENT,
  songs_name  VARCHAR(128),
  songs_author  VARCHAR(50),
  songs_album VARCHAR(50),
  songs_src  VARCHAR(128),
  rank   VARCHAR(10)
);
INSERT INTO newsongs VALUES
(29,'绿色','陈雪凝','绿色',null,'↑1'),
(30,'关于孤独我想说的话','隔壁老樊','关于孤独我想说的话',null,'↑1'),
(null,'蜂鸟','吴青峰','蜂鸟',null,'-0'),
(null,'形容','沈以诚','初遇Vol.1',null,'↑5'),
(null,'你是人间四月天','解忧邵帅','你是人间四月天',null,'new'),
(null,'单项箭头','双笙','单向箭头',null,'↑1'),
(null,'原点-徐梦圆 Remix','徐梦圆','原点',null,'new'),
(null,'china-x','徐梦圆','china',null,'↓3'),
(null,'喜欢','阿肆','喜欢',null,'↓1'),
(null,'没忘','陈雪凝','没忘',null,'↑2'),
(null,'出山','花粥/emm','出山',null,'↓6'),
(null,'我想','董昱昆','我想',null,'↓1');
CREATE TABLE music_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(18),
  unameu VARCHAR(12),
  num VARCHAR(11),
  upwd VARCHAR(18),
  u_pic VARCHAR(256),/*用户头像*/
  u_img VARCHAR(256)/*用户侧边栏背景*/
);
INSERT INTO music_user VALUES
(1,'18137785593','吴彦祖','18137785593','tc12345','http://127.0.0.1:3001/img/songs6.jpg','http://127.0.0.1:3001/img/66.jpg');
CREATE TABLE u_songslist(
  uid INT,
  sname VARCHAR(20),
  sauthor  VARCHAR(20)
);
INSERT INTO u_songslist VALUES
(1,'写给黄淮','解忧邵帅');
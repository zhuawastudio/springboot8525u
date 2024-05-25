/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot8525u
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot8525u` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot8525u`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620659804520 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-05-10 22:51:04',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-05-10 22:51:04',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-05-10 22:51:04',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-05-10 22:51:04',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-05-10 22:51:04',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-05-10 22:51:04',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1620659804519,'2021-05-10 23:16:43',1620659023042,'河北省石家庄市正定县正定镇幸福小郡','李玉','13132323232','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'kecheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620659697053 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot8525u/upload/1620659546367.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot8525u/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot8525u/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage','http://localhost:8080/springboot8525u/upload/1620659602209.jpg');

/*Table structure for table `discussjiaoshi` */

DROP TABLE IF EXISTS `discussjiaoshi`;

CREATE TABLE `discussjiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620659718835 DEFAULT CHARSET=utf8 COMMENT='教师评论表';

/*Data for the table `discussjiaoshi` */

insert  into `discussjiaoshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-05-10 22:51:04',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjiaoshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (142,'2021-05-10 22:51:04',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjiaoshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (143,'2021-05-10 22:51:04',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjiaoshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (144,'2021-05-10 22:51:04',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjiaoshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (145,'2021-05-10 22:51:04',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjiaoshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (146,'2021-05-10 22:51:04',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussjiaoshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1620659718834,'2021-05-10 23:15:18',1620659488803,1620659023042,'001','这里可以评论老师',NULL);

/*Table structure for table `discusskecheng` */

DROP TABLE IF EXISTS `discusskecheng`;

CREATE TABLE `discusskecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620659667008 DEFAULT CHARSET=utf8 COMMENT='课程评论表';

/*Data for the table `discusskecheng` */

insert  into `discusskecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-05-10 22:51:04',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusskecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-05-10 22:51:04',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusskecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-05-10 22:51:04',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusskecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-05-10 22:51:04',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusskecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-05-10 22:51:04',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusskecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-05-10 22:51:04',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discusskecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1620659665387,'2021-05-10 23:14:24',1620659382289,1620659023042,'001','这里可以评论',NULL);
insert  into `discusskecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1620659667007,'2021-05-10 23:14:26',1620659382289,1620659023042,'001','这里可以评论','恢复');

/*Table structure for table `discussmingshi` */

DROP TABLE IF EXISTS `discussmingshi`;

CREATE TABLE `discussmingshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='名师评论表';

/*Data for the table `discussmingshi` */

insert  into `discussmingshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-05-10 22:51:04',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussmingshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (152,'2021-05-10 22:51:04',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussmingshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (153,'2021-05-10 22:51:04',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussmingshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (154,'2021-05-10 22:51:04',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussmingshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (155,'2021-05-10 22:51:04',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussmingshi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (156,'2021-05-10 22:51:04',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jiangshi` */

DROP TABLE IF EXISTS `jiangshi`;

CREATE TABLE `jiangshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiangshigonghao` varchar(200) NOT NULL COMMENT '讲师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiangshixingming` varchar(200) NOT NULL COMMENT '讲师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiangshiyouxiang` varchar(200) DEFAULT NULL COMMENT '讲师邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiangshigonghao` (`jiangshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620659050955 DEFAULT CHARSET=utf8 COMMENT='讲师';

/*Data for the table `jiangshi` */

insert  into `jiangshi`(`id`,`addtime`,`jiangshigonghao`,`mima`,`jiangshixingming`,`xingbie`,`nianling`,`touxiang`,`lianxidianhua`,`jiangshiyouxiang`,`money`) values (21,'2021-05-10 22:51:04','讲师1','123456','讲师姓名1','男','年龄1','http://localhost:8080/springboot8525u/upload/jiangshi_touxiang1.jpg','13823888881','773890001@qq.com',100);
insert  into `jiangshi`(`id`,`addtime`,`jiangshigonghao`,`mima`,`jiangshixingming`,`xingbie`,`nianling`,`touxiang`,`lianxidianhua`,`jiangshiyouxiang`,`money`) values (22,'2021-05-10 22:51:04','讲师2','123456','讲师姓名2','男','年龄2','http://localhost:8080/springboot8525u/upload/jiangshi_touxiang2.jpg','13823888882','773890002@qq.com',100);
insert  into `jiangshi`(`id`,`addtime`,`jiangshigonghao`,`mima`,`jiangshixingming`,`xingbie`,`nianling`,`touxiang`,`lianxidianhua`,`jiangshiyouxiang`,`money`) values (23,'2021-05-10 22:51:04','讲师3','123456','讲师姓名3','男','年龄3','http://localhost:8080/springboot8525u/upload/jiangshi_touxiang3.jpg','13823888883','773890003@qq.com',100);
insert  into `jiangshi`(`id`,`addtime`,`jiangshigonghao`,`mima`,`jiangshixingming`,`xingbie`,`nianling`,`touxiang`,`lianxidianhua`,`jiangshiyouxiang`,`money`) values (24,'2021-05-10 22:51:04','讲师4','123456','讲师姓名4','男','年龄4','http://localhost:8080/springboot8525u/upload/jiangshi_touxiang4.jpg','13823888884','773890004@qq.com',100);
insert  into `jiangshi`(`id`,`addtime`,`jiangshigonghao`,`mima`,`jiangshixingming`,`xingbie`,`nianling`,`touxiang`,`lianxidianhua`,`jiangshiyouxiang`,`money`) values (25,'2021-05-10 22:51:04','讲师5','123456','讲师姓名5','男','年龄5','http://localhost:8080/springboot8525u/upload/jiangshi_touxiang5.jpg','13823888885','773890005@qq.com',100);
insert  into `jiangshi`(`id`,`addtime`,`jiangshigonghao`,`mima`,`jiangshixingming`,`xingbie`,`nianling`,`touxiang`,`lianxidianhua`,`jiangshiyouxiang`,`money`) values (26,'2021-05-10 22:51:04','讲6','123456','讲6','女','30','http://localhost:8080/springboot8525u/upload/jiangshi_touxiang6.jpg','13823888886','773890006@qq.com',100);
insert  into `jiangshi`(`id`,`addtime`,`jiangshigonghao`,`mima`,`jiangshixingming`,`xingbie`,`nianling`,`touxiang`,`lianxidianhua`,`jiangshiyouxiang`,`money`) values (1620659050954,'2021-05-10 23:04:10','20','20','讲了','男','30','http://localhost:8080/springboot8525u/upload/1620659442267.jpg','13852369852','20@qq.com',0);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiangshigonghao` varchar(200) DEFAULT NULL COMMENT '讲师工号',
  `jiangshixingming` varchar(200) DEFAULT NULL COMMENT '讲师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `huojiangzhengshu` longtext COMMENT '获奖证书',
  `suoshudanwei` varchar(200) DEFAULT NULL COMMENT '所属单位',
  `jiaoshoukecheng` varchar(200) DEFAULT NULL COMMENT '教授课程',
  `xiangxixinxi` longtext COMMENT '详细信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620659488804 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`) values (71,'2021-05-10 22:51:04','讲师工号1','讲师姓名1','性别1','http://localhost:8080/springboot8525u/upload/jiaoshi_touxiang1.jpg','获奖证书1','所属单位1','教授课程1','详细信息1');
insert  into `jiaoshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`) values (72,'2021-05-10 22:51:04','讲师工号2','讲师姓名2','性别2','http://localhost:8080/springboot8525u/upload/jiaoshi_touxiang2.jpg','获奖证书2','所属单位2','教授课程2','详细信息2');
insert  into `jiaoshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`) values (73,'2021-05-10 22:51:04','讲师工号3','讲师姓名3','性别3','http://localhost:8080/springboot8525u/upload/jiaoshi_touxiang3.jpg','获奖证书3','所属单位3','教授课程3','详细信息3');
insert  into `jiaoshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`) values (74,'2021-05-10 22:51:04','讲师工号4','讲师姓名4','性别4','http://localhost:8080/springboot8525u/upload/jiaoshi_touxiang4.jpg','获奖证书4','所属单位4','教授课程4','详细信息4');
insert  into `jiaoshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`) values (75,'2021-05-10 22:51:04','讲师工号5','讲师姓名5','性别5','http://localhost:8080/springboot8525u/upload/jiaoshi_touxiang5.jpg','获奖证书5','所属单位5','教授课程5','详细信息5');
insert  into `jiaoshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`) values (76,'2021-05-10 22:51:04','讲师工号6','讲师姓名6','性别6','http://localhost:8080/springboot8525u/upload/jiaoshi_touxiang6.jpg','获奖证书6','所属单位6','教授课程6','详细信息6');
insert  into `jiaoshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`) values (1620659488803,'2021-05-10 23:11:28','讲6','讲6','女','http://localhost:8080/springboot8525u/upload/jiangshi_touxiang6.jpg','很6的证书','负担大学','语文','<p>十分丰富</p>');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `suoshufenlei` varchar(200) DEFAULT NULL COMMENT '所属分类',
  `keshishu` int(11) DEFAULT NULL COMMENT '课时数',
  `suoshujiangshi` varchar(200) DEFAULT NULL COMMENT '所属讲师',
  `kechengfengmian` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `suoshudaxue` varchar(200) DEFAULT NULL COMMENT '所属大学',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kechengdagang` longtext COMMENT '课程大纲',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620659382290 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`suoshufenlei`,`keshishu`,`suoshujiangshi`,`kechengfengmian`,`suoshudaxue`,`kechengshipin`,`kechengdagang`,`kechengxiangqing`,`clicktime`,`clicknum`,`price`) values (51,'2021-05-10 22:51:04','课程编号1','课程名称1','所属分类1',1,'所属讲师1','http://localhost:8080/springboot8525u/upload/kecheng_kechengfengmian1.jpg','所属大学1','','课程大纲1','课程详情1','2021-05-10 22:51:04',1,99.9);
insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`suoshufenlei`,`keshishu`,`suoshujiangshi`,`kechengfengmian`,`suoshudaxue`,`kechengshipin`,`kechengdagang`,`kechengxiangqing`,`clicktime`,`clicknum`,`price`) values (52,'2021-05-10 22:51:04','课程编号2','课程名称2','所属分类2',2,'所属讲师2','http://localhost:8080/springboot8525u/upload/kecheng_kechengfengmian2.jpg','所属大学2','','课程大纲2','课程详情2','2021-05-10 22:51:04',2,99.9);
insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`suoshufenlei`,`keshishu`,`suoshujiangshi`,`kechengfengmian`,`suoshudaxue`,`kechengshipin`,`kechengdagang`,`kechengxiangqing`,`clicktime`,`clicknum`,`price`) values (53,'2021-05-10 22:51:04','课程编号3','课程名称3','所属分类3',3,'所属讲师3','http://localhost:8080/springboot8525u/upload/kecheng_kechengfengmian3.jpg','所属大学3','','课程大纲3','课程详情3','2021-05-10 22:51:04',3,99.9);
insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`suoshufenlei`,`keshishu`,`suoshujiangshi`,`kechengfengmian`,`suoshudaxue`,`kechengshipin`,`kechengdagang`,`kechengxiangqing`,`clicktime`,`clicknum`,`price`) values (54,'2021-05-10 22:51:04','课程编号4','课程名称4','所属分类4',4,'所属讲师4','http://localhost:8080/springboot8525u/upload/kecheng_kechengfengmian4.jpg','所属大学4','','课程大纲4','课程详情4','2021-05-10 22:51:04',4,99.9);
insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`suoshufenlei`,`keshishu`,`suoshujiangshi`,`kechengfengmian`,`suoshudaxue`,`kechengshipin`,`kechengdagang`,`kechengxiangqing`,`clicktime`,`clicknum`,`price`) values (55,'2021-05-10 22:51:04','课程编号5','课程5','所属分类5',10,'所属讲师5','http://localhost:8080/springboot8525u/upload/kecheng_kechengfengmian5.jpg','所属大学5','','课程大纲5','<p>课程详情5</p>','2021-05-10 23:20:39',10,99.9);
insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`suoshufenlei`,`keshishu`,`suoshujiangshi`,`kechengfengmian`,`suoshudaxue`,`kechengshipin`,`kechengdagang`,`kechengxiangqing`,`clicktime`,`clicknum`,`price`) values (1620659382289,'2021-05-10 23:09:41','1620659278146','语文是怎么炼成的','必修',10,'讲了','http://localhost:8080/springboot8525u/upload/1620659298471.jpg','负担大学','http://localhost:8080/springboot8525u/upload/1620659346202.mp4','语文是怎么炼成的','<p>这里课程详情，可以文字和图片</p><p><img src=\"http://localhost:8080/springboot8525u/upload/1620659378544.jpg\"></p>','2021-05-10 23:20:26',9,66);

/*Table structure for table `kechengfenlei` */

DROP TABLE IF EXISTS `kechengfenlei`;

CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620658898721 DEFAULT CHARSET=utf8 COMMENT='课程分类';

/*Data for the table `kechengfenlei` */

insert  into `kechengfenlei`(`id`,`addtime`,`fenlei`) values (61,'2021-05-10 22:51:04','选修');
insert  into `kechengfenlei`(`id`,`addtime`,`fenlei`) values (62,'2021-05-10 22:51:04','分类2');
insert  into `kechengfenlei`(`id`,`addtime`,`fenlei`) values (63,'2021-05-10 22:51:04','分类3');
insert  into `kechengfenlei`(`id`,`addtime`,`fenlei`) values (64,'2021-05-10 22:51:04','分类4');
insert  into `kechengfenlei`(`id`,`addtime`,`fenlei`) values (65,'2021-05-10 22:51:04','综合科目');
insert  into `kechengfenlei`(`id`,`addtime`,`fenlei`) values (1620658898720,'2021-05-10 23:01:38','必修');

/*Table structure for table `kechengguanliyuan` */

DROP TABLE IF EXISTS `kechengguanliyuan`;

CREATE TABLE `kechengguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengzhanghao` varchar(200) NOT NULL COMMENT '课程账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `kechengxingming` varchar(200) NOT NULL COMMENT '课程姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengzhanghao` (`kechengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620658688499 DEFAULT CHARSET=utf8 COMMENT='课程管理员';

/*Data for the table `kechengguanliyuan` */

insert  into `kechengguanliyuan`(`id`,`addtime`,`kechengzhanghao`,`mima`,`kechengxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (41,'2021-05-10 22:51:04','课程管理员1','123456','课程姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/springboot8525u/upload/kechengguanliyuan_zhaopian1.jpg',100);
insert  into `kechengguanliyuan`(`id`,`addtime`,`kechengzhanghao`,`mima`,`kechengxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (42,'2021-05-10 22:51:04','课程管理员2','123456','课程姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/springboot8525u/upload/kechengguanliyuan_zhaopian2.jpg',100);
insert  into `kechengguanliyuan`(`id`,`addtime`,`kechengzhanghao`,`mima`,`kechengxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (43,'2021-05-10 22:51:04','课程管理员3','123456','课程姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/springboot8525u/upload/kechengguanliyuan_zhaopian3.jpg',100);
insert  into `kechengguanliyuan`(`id`,`addtime`,`kechengzhanghao`,`mima`,`kechengxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (44,'2021-05-10 22:51:04','课程管理员4','123456','课程姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/springboot8525u/upload/kechengguanliyuan_zhaopian4.jpg',100);
insert  into `kechengguanliyuan`(`id`,`addtime`,`kechengzhanghao`,`mima`,`kechengxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (45,'2021-05-10 22:51:04','课程管理员5','123456','课程姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/springboot8525u/upload/kechengguanliyuan_zhaopian5.jpg',100);
insert  into `kechengguanliyuan`(`id`,`addtime`,`kechengzhanghao`,`mima`,`kechengxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (46,'2021-05-10 22:51:04','课程管理员6','123456','课程姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/springboot8525u/upload/kechengguanliyuan_zhaopian6.jpg',100);
insert  into `kechengguanliyuan`(`id`,`addtime`,`kechengzhanghao`,`mima`,`kechengxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (1620658688498,'2021-05-10 22:58:08','80','80','管课','女','13852369852','80@qq.com','http://localhost:8080/springboot8525u/upload/1620658737137.png',0);

/*Table structure for table `mingshi` */

DROP TABLE IF EXISTS `mingshi`;

CREATE TABLE `mingshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiangshigonghao` varchar(200) DEFAULT NULL COMMENT '讲师工号',
  `jiangshixingming` varchar(200) DEFAULT NULL COMMENT '讲师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `huojiangzhengshu` longtext COMMENT '获奖证书',
  `suoshudanwei` varchar(200) DEFAULT NULL COMMENT '所属单位',
  `jiaoshoukecheng` varchar(200) DEFAULT NULL COMMENT '教授课程',
  `xiangxixinxi` longtext COMMENT '详细信息',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620659517296 DEFAULT CHARSET=utf8 COMMENT='名师';

/*Data for the table `mingshi` */

insert  into `mingshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`,`clicktime`) values (81,'2021-05-10 22:51:04','讲师工号1','讲师姓名1','性别1','http://localhost:8080/springboot8525u/upload/mingshi_touxiang1.jpg','获奖证书1','所属单位1','教授课程1','详细信息1','2021-05-10 22:51:04');
insert  into `mingshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`,`clicktime`) values (82,'2021-05-10 22:51:04','讲师工号2','讲师姓名2','性别2','http://localhost:8080/springboot8525u/upload/mingshi_touxiang2.jpg','获奖证书2','所属单位2','教授课程2','详细信息2','2021-05-10 22:51:04');
insert  into `mingshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`,`clicktime`) values (83,'2021-05-10 22:51:04','讲师工号3','讲师姓名3','性别3','http://localhost:8080/springboot8525u/upload/mingshi_touxiang3.jpg','获奖证书3','所属单位3','教授课程3','详细信息3','2021-05-10 22:51:04');
insert  into `mingshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`,`clicktime`) values (84,'2021-05-10 22:51:04','讲师工号4','讲师姓名4','性别4','http://localhost:8080/springboot8525u/upload/mingshi_touxiang4.jpg','获奖证书4','所属单位4','教授课程4','详细信息4','2021-05-10 22:51:04');
insert  into `mingshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`,`clicktime`) values (85,'2021-05-10 22:51:04','讲师工号5','讲师姓名5','性别5','http://localhost:8080/springboot8525u/upload/mingshi_touxiang5.jpg','获奖证书5','所属单位5','教授课程5','详细信息5','2021-05-10 22:51:04');
insert  into `mingshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`,`clicktime`) values (86,'2021-05-10 22:51:04','讲师工号6','讲师姓名6','性别6','http://localhost:8080/springboot8525u/upload/mingshi_touxiang6.jpg','获奖证书6','所属单位6','教授课程6','详细信息6','2021-05-10 22:51:04');
insert  into `mingshi`(`id`,`addtime`,`jiangshigonghao`,`jiangshixingming`,`xingbie`,`touxiang`,`huojiangzhengshu`,`suoshudanwei`,`jiaoshoukecheng`,`xiangxixinxi`,`clicktime`) values (1620659517295,'2021-05-10 23:11:56','20','讲了','男','http://localhost:8080/springboot8525u/upload/1620659442267.jpg','一两本证书','负担大学','数学','<p>平淡</p>','2021-05-10 23:19:21');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'kecheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1620659831792 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1620659818409,'2021-05-10 23:16:58','20215102316591675439','kecheng',1620659023042,1620659382289,'语文是怎么炼成的','http://localhost:8080/springboot8525u/upload/1620659298471.jpg',1,66,66,66,66,1,'已发货','河北省石家庄市正定县正定镇幸福小郡','13132323232','李玉');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1620659831791,'2021-05-10 23:17:10','202151023171150267379','kecheng',1620659023042,55,'课程5','http://localhost:8080/springboot8525u/upload/kecheng_kechengfengmian5.jpg',1,99.9,99.9,99.9,99.9,1,'已退款','河北省石家庄市正定县正定镇幸福小郡','13132323232','李玉');

/*Table structure for table `putongguanliyuan` */

DROP TABLE IF EXISTS `putongguanliyuan`;

CREATE TABLE `putongguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `putongzhanghao` varchar(200) NOT NULL COMMENT '普通账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `putongxingming` varchar(200) NOT NULL COMMENT '普通姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `putongzhanghao` (`putongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620658669372 DEFAULT CHARSET=utf8 COMMENT='普通管理员';

/*Data for the table `putongguanliyuan` */

insert  into `putongguanliyuan`(`id`,`addtime`,`putongzhanghao`,`mima`,`putongxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (31,'2021-05-10 22:51:04','普通管理员1','123456','普通姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/springboot8525u/upload/putongguanliyuan_zhaopian1.jpg',100);
insert  into `putongguanliyuan`(`id`,`addtime`,`putongzhanghao`,`mima`,`putongxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (32,'2021-05-10 22:51:04','普通管理员2','123456','普通姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/springboot8525u/upload/putongguanliyuan_zhaopian2.jpg',100);
insert  into `putongguanliyuan`(`id`,`addtime`,`putongzhanghao`,`mima`,`putongxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (33,'2021-05-10 22:51:04','普通管理员3','123456','普通姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/springboot8525u/upload/putongguanliyuan_zhaopian3.jpg',100);
insert  into `putongguanliyuan`(`id`,`addtime`,`putongzhanghao`,`mima`,`putongxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (34,'2021-05-10 22:51:04','普通管理员4','123456','普通姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/springboot8525u/upload/putongguanliyuan_zhaopian4.jpg',100);
insert  into `putongguanliyuan`(`id`,`addtime`,`putongzhanghao`,`mima`,`putongxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (35,'2021-05-10 22:51:04','普通管理员5','123456','普通姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/springboot8525u/upload/putongguanliyuan_zhaopian5.jpg',100);
insert  into `putongguanliyuan`(`id`,`addtime`,`putongzhanghao`,`mima`,`putongxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (36,'2021-05-10 22:51:04','普通管理员6','123456','普通姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/springboot8525u/upload/putongguanliyuan_zhaopian6.jpg',100);
insert  into `putongguanliyuan`(`id`,`addtime`,`putongzhanghao`,`mima`,`putongxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (1620658669371,'2021-05-10 22:57:49','70','70','管用','男','13752369852','70@qq.com','http://localhost:8080/springboot8525u/upload/1620658722969.png',0);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620659727675 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1620659655480,'2021-05-10 23:14:15',1620659023042,1620659382289,'kecheng','语文是怎么炼成的','http://localhost:8080/springboot8525u/upload/1620659298471.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1620659727674,'2021-05-10 23:15:26',1620659023042,1620659488803,'jiaoshi','讲6','http://localhost:8080/springboot8525u/upload/jiangshi_touxiang6.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','mz4n5yd6c8fewz1lkug0sg0y8ks4jajq','2021-05-10 22:58:15','2021-05-11 00:18:06');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1620659023042,'001','yonghu','用户','xa99zuhm11o0te2m68xdqaq73l2c1at2','2021-05-10 23:04:21','2021-05-11 00:14:00');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1620658669371,'70','putongguanliyuan','普通管理员','bprcuqgw2qvrprawi942ndun90xc2x1j','2021-05-10 23:04:37','2021-05-11 00:04:37');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1620658688498,'80','kechengguanliyuan','课程管理员','x1v4mfspa2cphxabyfszmciozux63m7f','2021-05-10 23:06:55','2021-05-11 00:06:56');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,1620659050954,'20','jiangshi','讲师','8jkmo6c8r8gzzsgacu20jtkqzzeo51jr','2021-05-10 23:18:41','2021-05-11 00:18:42');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-10 22:51:04');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `nicheng` varchar(200) NOT NULL COMMENT '昵称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620659161216 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`nicheng`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (11,'2021-05-10 22:51:04','用户1','123456','昵称1','男','13823888881','773890001@qq.com','http://localhost:8080/springboot8525u/upload/yonghu_zhaopian1.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`nicheng`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (12,'2021-05-10 22:51:04','用户2','123456','昵称2','男','13823888882','773890002@qq.com','http://localhost:8080/springboot8525u/upload/yonghu_zhaopian2.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`nicheng`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (13,'2021-05-10 22:51:04','用户3','123456','昵称3','男','13823888883','773890003@qq.com','http://localhost:8080/springboot8525u/upload/yonghu_zhaopian3.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`nicheng`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (14,'2021-05-10 22:51:04','用户4','123456','昵称4','男','13823888884','773890004@qq.com','http://localhost:8080/springboot8525u/upload/yonghu_zhaopian4.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`nicheng`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (15,'2021-05-10 22:51:04','用户5','123456','昵称5','男','13823888885','773890005@qq.com','http://localhost:8080/springboot8525u/upload/yonghu_zhaopian5.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`nicheng`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (1620659023042,'2021-05-10 23:03:43','001','001','李玉','男','13125896321','001@qq.com','http://localhost:8080/springboot8525u/upload/1620659171327.png',134);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`nicheng`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (1620659161215,'2021-05-10 23:06:01','003','003','里散步','男','13003232323','003@qq.com','http://localhost:8080/springboot8525u/upload/1620659160221.png',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootp0eo6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootp0eo6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootp0eo6`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootp0eo6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootp0eo6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootp0eo6/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jingpaidingdan` */

DROP TABLE IF EXISTS `jingpaidingdan`;

CREATE TABLE `jingpaidingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `chengjiaojiage` int(11) NOT NULL COMMENT '成交价格',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612340689796 DEFAULT CHARSET=utf8 COMMENT='竞拍订单';

/*Data for the table `jingpaidingdan` */

insert  into `jingpaidingdan`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinleixing`,`chengjiaojiage`,`faburiqi`,`yonghuming`,`xingming`,`shouji`,`youxiang`,`dizhi`,`ispay`) values (1612340689795,'2021-02-03 16:24:49','1612340681215','华为手机','手机',2000,'2021-02-01','1','刘倩','15214121411','11212@163.com','上海市','已支付');

/*Table structure for table `lishijingpai` */

DROP TABLE IF EXISTS `lishijingpai`;

CREATE TABLE `lishijingpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612340577250 DEFAULT CHARSET=utf8 COMMENT='历史竞拍';

/*Data for the table `lishijingpai` */

insert  into `lishijingpai`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`riqi`,`jiage`,`yonghuming`,`xingming`,`shouji`,`dizhi`,`sfsh`,`shhf`) values (1612340577249,'2021-02-03 16:22:56','华为手机','手机','2021-01-31 16:00:00',500,'1','刘倩','15214121411','上海市','是','有效');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612340606311 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (71,'2021-02-03 16:07:40',1,'用户名1','留言内容1','回复内容1'),(72,'2021-02-03 16:07:40',2,'用户名2','留言内容2','回复内容2'),(73,'2021-02-03 16:07:40',3,'用户名3','留言内容3','回复内容3'),(74,'2021-02-03 16:07:40',4,'用户名4','留言内容4','回复内容4'),(75,'2021-02-03 16:07:40',5,'用户名5','留言内容5','回复内容5'),(76,'2021-02-03 16:07:40',6,'用户名6','留言内容6','回复内容6'),(1612340606310,'2021-02-03 16:23:26',1612340502319,'1','有什么问题或者意见可以在这里给管理员进行反馈，管路员可以对信息进行回复','好的 感谢反馈');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='竞拍公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-02-03 16:07:40','公告信息','简介11111','http://localhost:8080/springbootp0eo6/upload/news_picture1.jpg','<p>公告信息</p>'),(62,'2021-02-03 16:07:40','竞拍公告','简介2111','http://localhost:8080/springbootp0eo6/upload/news_picture2.jpg','<p>这里可以发布一些公告信息，华为手机以刘倩也2000的价格竞拍成功，恭喜她</p>'),(63,'2021-02-03 16:07:40','标题3','简介3','http://localhost:8080/springbootp0eo6/upload/news_picture3.jpg','内容3'),(64,'2021-02-03 16:07:40','标题4','简介4','http://localhost:8080/springbootp0eo6/upload/news_picture4.jpg','内容4'),(65,'2021-02-03 16:07:40','标题5','简介5','http://localhost:8080/springbootp0eo6/upload/news_picture5.jpg','内容5'),(66,'2021-02-03 16:07:40','标题6','简介6','http://localhost:8080/springbootp0eo6/upload/news_picture6.jpg','内容6');

/*Table structure for table `paimaishangpin` */

DROP TABLE IF EXISTS `paimaishangpin`;

CREATE TABLE `paimaishangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `huodongshijian` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `huodongzhuangtai` varchar(200) DEFAULT NULL COMMENT '活动状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='拍卖商品';

/*Data for the table `paimaishangpin` */

insert  into `paimaishangpin`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`jiage`,`shangpinxiangqing`,`huodongshijian`,`huodongzhuangtai`) values (31,'2021-02-03 16:07:40','索尼照相机','数码','http://localhost:8080/springbootp0eo6/upload/paimaishangpin_tupian1.jpg',2500,'<p>商品详情1</p>','1-10号','竞拍中'),(32,'2021-02-03 16:07:40','耳机','数码','http://localhost:8080/springbootp0eo6/upload/paimaishangpin_tupian2.jpg',200,'<p>商品详情2</p>','活动时间2','竞拍中'),(33,'2021-02-03 16:07:40','华为手机','手机','http://localhost:8080/springbootp0eo6/upload/1612340132053.png',2000,'<p><img src=\"http://localhost:8080/springbootp0eo6/upload/1612340379733.png\"></p><p><br></p><p>这里可以发布一些商品的详情，内容都是用预测是的都可以自行添加修改删除的</p><p><br></p><p>华为MATE30 ，现在可以享受竞拍，以1500低价，竞拍，没有上线</p>','1-10号','已结束'),(34,'2021-02-03 16:07:40','OPPO Reno','手机','http://localhost:8080/springbootp0eo6/upload/1612340153669.png',4000,'<p>商品详情4</p>','活动时间4','竞拍中'),(35,'2021-02-03 16:07:40','精品三国志','书籍','http://localhost:8080/springbootp0eo6/upload/1612340185007.jpg',500,'<p>商品详情5</p>','活动时间5','竞拍中'),(36,'2021-02-03 16:07:40','商品名称6','电器','http://localhost:8080/springbootp0eo6/upload/paimaishangpin_tupian6.jpg',6,'<p>商品详情6</p>','活动时间6','竞拍中');

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612340340507 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (21,'2021-02-03 16:07:40','手机'),(22,'2021-02-03 16:07:40','数码'),(23,'2021-02-03 16:07:40','电器'),(24,'2021-02-03 16:07:40','书籍'),(1612340340506,'2021-02-03 16:18:59','其他');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','77b2gdf2eeeo1xaix43y3it7atm3wxph','2021-02-03 16:09:40','2021-02-03 09:23:46'),(2,11,'001','yonghu','用户','47mt1k61pm88q3au5v4udiaadou1nryj','2021-02-03 16:09:48','2021-02-03 09:18:06'),(3,1612340502319,'1','yonghu','用户','zvrwvzkxhd8p9t253canc34i2nz65uhu','2021-02-03 16:21:50','2021-02-03 09:25:45');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-02-03 16:07:40');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1612340502320 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`,`youxiang`,`dizhi`) values (11,'2021-02-03 16:07:40','001','001','姓名1','男','http://localhost:8080/springbootp0eo6/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881','773890001@qq.com','地址1'),(12,'2021-02-03 16:07:40','用户2','123456','姓名2','男','http://localhost:8080/springbootp0eo6/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882','773890002@qq.com','地址2'),(13,'2021-02-03 16:07:40','用户3','123456','姓名3','男','http://localhost:8080/springbootp0eo6/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883','773890003@qq.com','地址3'),(1612340502319,'2021-02-03 16:21:42','1','1','刘倩','女','http://localhost:8080/springbootp0eo6/upload/1612340525020.png','441214121412141211','15214121411','11212@163.com','上海市');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

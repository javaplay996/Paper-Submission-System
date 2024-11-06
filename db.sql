/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm1n4g0
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm1n4g0` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm1n4g0`;

/*Table structure for table `chugao` */

DROP TABLE IF EXISTS `chugao`;

CREATE TABLE `chugao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `lunwenbiaoti` varchar(200) DEFAULT NULL COMMENT '论文标题',
  `gaiyao` longtext COMMENT '概要',
  `zhengwen` longtext COMMENT '正文',
  `dianzidang` varchar(200) DEFAULT NULL COMMENT '电子档',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618488500479 DEFAULT CHARSET=utf8 COMMENT='初稿';

/*Data for the table `chugao` */

insert  into `chugao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`zhengwen`,`dianzidang`) values (21,'2021-04-15 20:04:11','用户名1','姓名1','编号1','论文标题1','概要1','正文1','');
insert  into `chugao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`zhengwen`,`dianzidang`) values (22,'2021-04-15 20:04:11','用户名2','姓名2','编号2','论文标题2','概要2','正文2','');
insert  into `chugao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`zhengwen`,`dianzidang`) values (23,'2021-04-15 20:04:11','用户名3','姓名3','编号3','论文标题3','概要3','正文3','');
insert  into `chugao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`zhengwen`,`dianzidang`) values (24,'2021-04-15 20:04:11','用户名4','姓名4','编号4','论文标题4','概要4','正文4','');
insert  into `chugao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`zhengwen`,`dianzidang`) values (25,'2021-04-15 20:04:11','用户名5','姓名5','编号5','论文标题5','概要5','正文5','');
insert  into `chugao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`zhengwen`,`dianzidang`) values (26,'2021-04-15 20:04:11','用户名6','姓名6','编号6','论文标题6','概要6','正文6','');
insert  into `chugao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`zhengwen`,`dianzidang`) values (1618488500478,'2021-04-15 20:08:20','01','01','1618488486185','123','123','<p>1<span class=\"ql-size-huge\">23</span></p>','http://localhost:8080/ssm1n4g0/upload/1618488493666.docx');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm1n4g0/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm1n4g0/upload/1618488620577.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm1n4g0/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618488433514 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (51,'2021-04-15 20:04:11','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (52,'2021-04-15 20:04:11','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (53,'2021-04-15 20:04:11','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (54,'2021-04-15 20:04:11','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (55,'2021-04-15 20:04:11','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (56,'2021-04-15 20:04:11','帖子标题6','帖子内容6',6,6,'用户名6','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1618488424632,'2021-04-15 20:07:04','123456','<p>12<span style=\"text-decoration: line-through; font-size: 36pt;\"><span style=\"text-decoration: underline;\"><em><strong><span style=\"color: #fbeeb8; background-color: #bfedd2; text-decoration: underline;\">37465456</span></strong></em></span></span></p>',0,1618488384517,'01','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1618488433513,'2021-04-15 20:07:13',NULL,'45678',1618488424632,1618488384517,'01',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-04-15 20:04:11','标题1','简介1','http://localhost:8080/ssm1n4g0/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (62,'2021-04-15 20:04:11','标题2','简介2','http://localhost:8080/ssm1n4g0/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (63,'2021-04-15 20:04:11','标题3','简介3','http://localhost:8080/ssm1n4g0/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (64,'2021-04-15 20:04:11','标题4','简介4','http://localhost:8080/ssm1n4g0/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (65,'2021-04-15 20:04:11','标题5','简介5','http://localhost:8080/ssm1n4g0/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (66,'2021-04-15 20:04:11','标题6','简介6','http://localhost:8080/ssm1n4g0/upload/news_picture6.jpg','内容6');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','wxqhd84q4nlp0s0d6afd6mg1x8pjw75g','2021-04-15 20:06:06','2021-04-15 21:06:07');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1618488384517,'01','yonghu','用户','krz7qwr5hauhokmt4jpzw5ornj74cisb','2021-04-15 20:06:30','2021-04-15 21:10:33');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'abo','users','管理员','dcwtd9rhz0n1oq3hbbjxqy8vapy36md8','2021-04-15 20:08:47','2021-04-15 21:08:48');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-15 20:04:11');

/*Table structure for table `yingwencailiao` */

DROP TABLE IF EXISTS `yingwencailiao`;

CREATE TABLE `yingwencailiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `yingwenbiaoti` varchar(200) DEFAULT NULL COMMENT '英文标题',
  `yingwenneirong` varchar(200) DEFAULT NULL COMMENT '英文内容',
  `zhengwen` longtext COMMENT '正文',
  `dianzidang` varchar(200) DEFAULT NULL COMMENT '电子档',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618488596758 DEFAULT CHARSET=utf8 COMMENT='英文材料';

/*Data for the table `yingwencailiao` */

insert  into `yingwencailiao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`yingwenbiaoti`,`yingwenneirong`,`zhengwen`,`dianzidang`) values (41,'2021-04-15 20:04:11','用户名1','姓名1','编号1','英文标题1','英文内容1','正文1','');
insert  into `yingwencailiao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`yingwenbiaoti`,`yingwenneirong`,`zhengwen`,`dianzidang`) values (42,'2021-04-15 20:04:11','用户名2','姓名2','编号2','英文标题2','英文内容2','正文2','');
insert  into `yingwencailiao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`yingwenbiaoti`,`yingwenneirong`,`zhengwen`,`dianzidang`) values (43,'2021-04-15 20:04:11','用户名3','姓名3','编号3','英文标题3','英文内容3','正文3','');
insert  into `yingwencailiao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`yingwenbiaoti`,`yingwenneirong`,`zhengwen`,`dianzidang`) values (44,'2021-04-15 20:04:11','用户名4','姓名4','编号4','英文标题4','英文内容4','正文4','');
insert  into `yingwencailiao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`yingwenbiaoti`,`yingwenneirong`,`zhengwen`,`dianzidang`) values (45,'2021-04-15 20:04:11','用户名5','姓名5','编号5','英文标题5','英文内容5','正文5','');
insert  into `yingwencailiao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`yingwenbiaoti`,`yingwenneirong`,`zhengwen`,`dianzidang`) values (46,'2021-04-15 20:04:11','用户名6','姓名6','编号6','英文标题6','英文内容6','正文6','');
insert  into `yingwencailiao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`yingwenbiaoti`,`yingwenneirong`,`zhengwen`,`dianzidang`) values (1618488596757,'2021-04-15 20:09:56','01','01','1618488486185','abc','abc','<p>abc</p>','http://localhost:8080/ssm1n4g0/upload/1618488592185.docx');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618488384518 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-04-15 20:04:11','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssm1n4g0/upload/yonghu_touxiang1.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (12,'2021-04-15 20:04:11','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm1n4g0/upload/yonghu_touxiang2.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (13,'2021-04-15 20:04:11','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm1n4g0/upload/yonghu_touxiang3.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (14,'2021-04-15 20:04:11','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssm1n4g0/upload/yonghu_touxiang4.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (15,'2021-04-15 20:04:11','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssm1n4g0/upload/yonghu_touxiang5.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (16,'2021-04-15 20:04:11','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssm1n4g0/upload/yonghu_touxiang6.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (1618488384517,'2021-04-15 20:06:24','01','01','01','男',22,'','','http://localhost:8080/ssm1n4g0/upload/1618488461662.jpg');

/*Table structure for table `zuizhonggao` */

DROP TABLE IF EXISTS `zuizhonggao`;

CREATE TABLE `zuizhonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `lunwenbiaoti` varchar(200) DEFAULT NULL COMMENT '论文标题',
  `gaiyao` longtext COMMENT '概要',
  `dianzidang` varchar(200) DEFAULT NULL COMMENT '电子档',
  `zhengwen` longtext COMMENT '正文',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618488514558 DEFAULT CHARSET=utf8 COMMENT='最终稿';

/*Data for the table `zuizhonggao` */

insert  into `zuizhonggao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`dianzidang`,`zhengwen`,`shijian`,`sfsh`,`shhf`) values (31,'2021-04-15 20:04:11','用户名1','姓名1','编号1','论文标题1','概要1','','正文1','2021-04-15 20:04:11','是','');
insert  into `zuizhonggao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`dianzidang`,`zhengwen`,`shijian`,`sfsh`,`shhf`) values (32,'2021-04-15 20:04:11','用户名2','姓名2','编号2','论文标题2','概要2','','正文2','2021-04-15 20:04:11','是','');
insert  into `zuizhonggao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`dianzidang`,`zhengwen`,`shijian`,`sfsh`,`shhf`) values (33,'2021-04-15 20:04:11','用户名3','姓名3','编号3','论文标题3','概要3','','正文3','2021-04-15 20:04:11','是','');
insert  into `zuizhonggao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`dianzidang`,`zhengwen`,`shijian`,`sfsh`,`shhf`) values (34,'2021-04-15 20:04:11','用户名4','姓名4','编号4','论文标题4','概要4','','正文4','2021-04-15 20:04:11','是','');
insert  into `zuizhonggao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`dianzidang`,`zhengwen`,`shijian`,`sfsh`,`shhf`) values (35,'2021-04-15 20:04:11','用户名5','姓名5','编号5','论文标题5','概要5','','正文5','2021-04-15 20:04:11','是','');
insert  into `zuizhonggao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`dianzidang`,`zhengwen`,`shijian`,`sfsh`,`shhf`) values (36,'2021-04-15 20:04:11','用户名6','姓名6','编号6','论文标题6','概要6','','正文6','2021-04-15 20:04:11','是','');
insert  into `zuizhonggao`(`id`,`addtime`,`yonghuming`,`xingming`,`bianhao`,`lunwenbiaoti`,`gaiyao`,`dianzidang`,`zhengwen`,`shijian`,`sfsh`,`shhf`) values (1618488514557,'2021-04-15 20:08:34','01','01','1618488486185','123','123','http://localhost:8080/ssm1n4g0/upload/1618488493666.docx','<p>1<span class=\"ql-size-huge\">23</span></p>','2021-04-15 20:08:32','是','通过');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

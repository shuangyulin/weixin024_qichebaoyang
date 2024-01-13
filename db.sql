/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssml5768
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssml5768` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssml5768`;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-02 17:42:47',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-02 17:42:47',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-02 17:42:47',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-02 17:42:47',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-02 17:42:47',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-02 17:42:47',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `baoyangxinxi` */

DROP TABLE IF EXISTS `baoyangxinxi`;

CREATE TABLE `baoyangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoyangbianhao` varchar(200) NOT NULL COMMENT '保养编号',
  `baoyangmingcheng` varchar(200) NOT NULL COMMENT '保养名称',
  `baoyangxinxi` varchar(200) DEFAULT NULL COMMENT '保养信息',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `youxiaoqi` date DEFAULT NULL COMMENT '有效期',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baoyangbianhao` (`baoyangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='保养信息';

/*Data for the table `baoyangxinxi` */

insert  into `baoyangxinxi`(`id`,`addtime`,`baoyangbianhao`,`baoyangmingcheng`,`baoyangxinxi`,`xiangguantupian`,`youxiaoqi`,`mendianmingcheng`,`thumbsupnum`,`crazilynum`,`price`) values (51,'2021-03-02 17:42:47','保养编号1','保养名称1','保养信息1','http://localhost:8080/ssml5768/upload/baoyangxinxi_xiangguantupian1.jpg','2021-03-02','门店名称1',1,1,99.9),(52,'2021-03-02 17:42:47','保养编号2','保养名称2','保养信息2','http://localhost:8080/ssml5768/upload/baoyangxinxi_xiangguantupian2.jpg','2021-03-02','门店名称2',2,2,99.9),(53,'2021-03-02 17:42:47','保养编号3','保养名称3','保养信息3','http://localhost:8080/ssml5768/upload/baoyangxinxi_xiangguantupian3.jpg','2021-03-02','门店名称3',3,3,99.9),(54,'2021-03-02 17:42:47','保养编号4','保养名称4','保养信息4','http://localhost:8080/ssml5768/upload/baoyangxinxi_xiangguantupian4.jpg','2021-03-02','门店名称4',4,4,99.9),(55,'2021-03-02 17:42:47','保养编号5','保养名称5','保养信息5','http://localhost:8080/ssml5768/upload/baoyangxinxi_xiangguantupian5.jpg','2021-03-02','门店名称5',5,5,99.9),(56,'2021-03-02 17:42:47','保养编号6','保养名称6','保养信息6','http://localhost:8080/ssml5768/upload/baoyangxinxi_xiangguantupian6.jpg','2021-03-02','门店名称6',6,6,99.9);

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'baoyangxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

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

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssml5768/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssml5768/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssml5768/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussbaoyangxinxi` */

DROP TABLE IF EXISTS `discussbaoyangxinxi`;

CREATE TABLE `discussbaoyangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='保养信息评论表';

/*Data for the table `discussbaoyangxinxi` */

insert  into `discussbaoyangxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (121,'2021-03-02 17:42:47',1,1,'评论内容1','回复内容1'),(122,'2021-03-02 17:42:47',2,2,'评论内容2','回复内容2'),(123,'2021-03-02 17:42:47',3,3,'评论内容3','回复内容3'),(124,'2021-03-02 17:42:47',4,4,'评论内容4','回复内容4'),(125,'2021-03-02 17:42:47',5,5,'评论内容5','回复内容5'),(126,'2021-03-02 17:42:47',6,6,'评论内容6','回复内容6');

/*Table structure for table `discussmendianxinxi` */

DROP TABLE IF EXISTS `discussmendianxinxi`;

CREATE TABLE `discussmendianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='门店信息评论表';

/*Data for the table `discussmendianxinxi` */

insert  into `discussmendianxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (101,'2021-03-02 17:42:47',1,1,'评论内容1','回复内容1'),(102,'2021-03-02 17:42:47',2,2,'评论内容2','回复内容2'),(103,'2021-03-02 17:42:47',3,3,'评论内容3','回复内容3'),(104,'2021-03-02 17:42:47',4,4,'评论内容4','回复内容4'),(105,'2021-03-02 17:42:47',5,5,'评论内容5','回复内容5'),(106,'2021-03-02 17:42:47',6,6,'评论内容6','回复内容6');

/*Table structure for table `discusspeijianxinxi` */

DROP TABLE IF EXISTS `discusspeijianxinxi`;

CREATE TABLE `discusspeijianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='配件信息评论表';

/*Data for the table `discusspeijianxinxi` */

insert  into `discusspeijianxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (111,'2021-03-02 17:42:47',1,1,'评论内容1','回复内容1'),(112,'2021-03-02 17:42:47',2,2,'评论内容2','回复内容2'),(113,'2021-03-02 17:42:47',3,3,'评论内容3','回复内容3'),(114,'2021-03-02 17:42:47',4,4,'评论内容4','回复内容4'),(115,'2021-03-02 17:42:47',5,5,'评论内容5','回复内容5'),(116,'2021-03-02 17:42:47',6,6,'评论内容6','回复内容6');

/*Table structure for table `mendianxinxi` */

DROP TABLE IF EXISTS `mendianxinxi`;

CREATE TABLE `mendianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mendianbianhao` varchar(200) NOT NULL COMMENT '门店编号',
  `mendianmingcheng` varchar(200) NOT NULL COMMENT '门店名称',
  `mendianfuzeren` varchar(200) DEFAULT NULL COMMENT '门店负责人',
  `mendianweizhi` varchar(200) DEFAULT NULL COMMENT '门店位置',
  `yuangongrenshu` varchar(200) DEFAULT NULL COMMENT '员工人数',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mendianbianhao` (`mendianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='门店信息';

/*Data for the table `mendianxinxi` */

insert  into `mendianxinxi`(`id`,`addtime`,`mendianbianhao`,`mendianmingcheng`,`mendianfuzeren`,`mendianweizhi`,`yuangongrenshu`,`lianxidianhua`,`xiangguantupian`,`thumbsupnum`,`crazilynum`) values (21,'2021-03-02 17:42:47','门店编号1','门店名称1','门店负责人1','门店位置1','员工人数1','13823888881','http://localhost:8080/ssml5768/upload/mendianxinxi_xiangguantupian1.jpg',1,1),(22,'2021-03-02 17:42:47','门店编号2','门店名称2','门店负责人2','门店位置2','员工人数2','13823888882','http://localhost:8080/ssml5768/upload/mendianxinxi_xiangguantupian2.jpg',2,2),(23,'2021-03-02 17:42:47','门店编号3','门店名称3','门店负责人3','门店位置3','员工人数3','13823888883','http://localhost:8080/ssml5768/upload/mendianxinxi_xiangguantupian3.jpg',3,3),(24,'2021-03-02 17:42:47','门店编号4','门店名称4','门店负责人4','门店位置4','员工人数4','13823888884','http://localhost:8080/ssml5768/upload/mendianxinxi_xiangguantupian4.jpg',4,4),(25,'2021-03-02 17:42:47','门店编号5','门店名称5','门店负责人5','门店位置5','员工人数5','13823888885','http://localhost:8080/ssml5768/upload/mendianxinxi_xiangguantupian5.jpg',5,5),(26,'2021-03-02 17:42:47','门店编号6','门店名称6','门店负责人6','门店位置6','员工人数6','13823888886','http://localhost:8080/ssml5768/upload/mendianxinxi_xiangguantupian6.jpg',6,6);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'baoyangxinxi' COMMENT '商品表名',
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `peijianxinxi` */

DROP TABLE IF EXISTS `peijianxinxi`;

CREATE TABLE `peijianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peijianbianhao` varchar(200) NOT NULL COMMENT '配件编号',
  `peijianmingcheng` varchar(200) DEFAULT NULL COMMENT '配件名称',
  `peijianleixing` varchar(200) DEFAULT NULL COMMENT '配件类型',
  `peijianxinxi` varchar(200) DEFAULT NULL COMMENT '配件信息',
  `peijiantupian` varchar(200) DEFAULT NULL COMMENT '配件图片',
  `shengchandi` varchar(200) DEFAULT NULL COMMENT '生产地',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `peijianbianhao` (`peijianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='配件信息';

/*Data for the table `peijianxinxi` */

insert  into `peijianxinxi`(`id`,`addtime`,`peijianbianhao`,`peijianmingcheng`,`peijianleixing`,`peijianxinxi`,`peijiantupian`,`shengchandi`,`mendianmingcheng`,`thumbsupnum`,`crazilynum`,`price`) values (41,'2021-03-02 17:42:47','配件编号1','配件名称1','车身类','配件信息1','http://localhost:8080/ssml5768/upload/peijianxinxi_peijiantupian1.jpg','生产地1','门店名称1',1,1,99.9),(42,'2021-03-02 17:42:47','配件编号2','配件名称2','车身类','配件信息2','http://localhost:8080/ssml5768/upload/peijianxinxi_peijiantupian2.jpg','生产地2','门店名称2',2,2,99.9),(43,'2021-03-02 17:42:47','配件编号3','配件名称3','车身类','配件信息3','http://localhost:8080/ssml5768/upload/peijianxinxi_peijiantupian3.jpg','生产地3','门店名称3',3,3,99.9),(44,'2021-03-02 17:42:47','配件编号4','配件名称4','车身类','配件信息4','http://localhost:8080/ssml5768/upload/peijianxinxi_peijiantupian4.jpg','生产地4','门店名称4',4,4,99.9),(45,'2021-03-02 17:42:47','配件编号5','配件名称5','车身类','配件信息5','http://localhost:8080/ssml5768/upload/peijianxinxi_peijiantupian5.jpg','生产地5','门店名称5',5,5,99.9),(46,'2021-03-02 17:42:47','配件编号6','配件名称6','车身类','配件信息6','http://localhost:8080/ssml5768/upload/peijianxinxi_peijiantupian6.jpg','生产地6','门店名称6',6,6,99.9);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-02 17:42:47');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shenfenzhenghaoma`,`shoujihaoma`,`zhaopian`,`money`) values (11,'2021-03-02 17:42:47','用户1','123456','姓名1','男','440300199101010001','13823888881','http://localhost:8080/ssml5768/upload/yonghu_zhaopian1.jpg',100),(12,'2021-03-02 17:42:47','用户2','123456','姓名2','男','440300199202020002','13823888882','http://localhost:8080/ssml5768/upload/yonghu_zhaopian2.jpg',100),(13,'2021-03-02 17:42:47','用户3','123456','姓名3','男','440300199303030003','13823888883','http://localhost:8080/ssml5768/upload/yonghu_zhaopian3.jpg',100),(14,'2021-03-02 17:42:47','用户4','123456','姓名4','男','440300199404040004','13823888884','http://localhost:8080/ssml5768/upload/yonghu_zhaopian4.jpg',100),(15,'2021-03-02 17:42:47','用户5','123456','姓名5','男','440300199505050005','13823888885','http://localhost:8080/ssml5768/upload/yonghu_zhaopian5.jpg',100),(16,'2021-03-02 17:42:47','用户6','123456','姓名6','男','440300199606060006','13823888886','http://localhost:8080/ssml5768/upload/yonghu_zhaopian6.jpg',100);

/*Table structure for table `yuangongxinxi` */

DROP TABLE IF EXISTS `yuangongxinxi`;

CREATE TABLE `yuangongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `yuangongxingbie` varchar(200) DEFAULT NULL COMMENT '员工性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yuangongtupian` varchar(200) DEFAULT NULL COMMENT '员工图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='员工信息';

/*Data for the table `yuangongxinxi` */

insert  into `yuangongxinxi`(`id`,`addtime`,`mendianmingcheng`,`yuangonggonghao`,`yuangongxingming`,`yuangongxingbie`,`lianxidianhua`,`yuangongtupian`) values (31,'2021-03-02 17:42:47','门店名称1','员工工号1','员工姓名1','男','13823888881','http://localhost:8080/ssml5768/upload/yuangongxinxi_yuangongtupian1.jpg'),(32,'2021-03-02 17:42:47','门店名称2','员工工号2','员工姓名2','男','13823888882','http://localhost:8080/ssml5768/upload/yuangongxinxi_yuangongtupian2.jpg'),(33,'2021-03-02 17:42:47','门店名称3','员工工号3','员工姓名3','男','13823888883','http://localhost:8080/ssml5768/upload/yuangongxinxi_yuangongtupian3.jpg'),(34,'2021-03-02 17:42:47','门店名称4','员工工号4','员工姓名4','男','13823888884','http://localhost:8080/ssml5768/upload/yuangongxinxi_yuangongtupian4.jpg'),(35,'2021-03-02 17:42:47','门店名称5','员工工号5','员工姓名5','男','13823888885','http://localhost:8080/ssml5768/upload/yuangongxinxi_yuangongtupian5.jpg'),(36,'2021-03-02 17:42:47','门店名称6','员工工号6','员工姓名6','男','13823888886','http://localhost:8080/ssml5768/upload/yuangongxinxi_yuangongtupian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

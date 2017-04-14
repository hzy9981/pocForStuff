/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.1.68-community : Database - poc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`poc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `poc`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` varchar(30) NOT NULL,
  `apassword` varchar(30) DEFAULT NULL,
  `aname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

/*Table structure for table `assess` */

DROP TABLE IF EXISTS `assess`;

CREATE TABLE `assess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asid` varchar(30) NOT NULL,
  `caseid` varchar(30) DEFAULT NULL,
  `plate_Number` varchar(30) DEFAULT NULL,
  `sum` varchar(30) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `case_Describe` text,
  `apply_User` varchar(30) DEFAULT NULL,
  `apply_User_Phone` varchar(20) DEFAULT NULL,
  `assessor` varchar(50) DEFAULT NULL,
  `assess_Time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`asid`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `assess` */

insert  into `assess`(`id`,`asid`,`caseid`,`plate_Number`,`sum`,`photo`,`case_Describe`,`apply_User`,`apply_User_Phone`,`assessor`,`assess_Time`) values (1,'as0000001','case0000001','NK3788','5000',NULL,NULL,'20133040','15000426813','1122334','2015-8-5');

/*Table structure for table `assessor` */

DROP TABLE IF EXISTS `assessor`;

CREATE TABLE `assessor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asorid` varchar(30) NOT NULL,
  `aspassword` varchar(100) DEFAULT NULL,
  `asname` varchar(30) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`asorid`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `assessor` */

insert  into `assessor`(`id`,`asorid`,`aspassword`,`asname`,`sex`,`mobile`) values (1,'20133040','00fe16991d98e72f700b2e8f6491df22','徐思喆','男','15000426813');

/*Table structure for table `auditor` */

DROP TABLE IF EXISTS `auditor`;

CREATE TABLE `auditor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auid` varchar(30) NOT NULL,
  `aupassword` varchar(100) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`auid`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `auditor` */

insert  into `auditor`(`id`,`auid`,`aupassword`,`mobile`) values (1,'20133040','00fe16991d98e72f700b2e8f6491df22','15000426813');

/*Table structure for table `claim` */

DROP TABLE IF EXISTS `claim`;

CREATE TABLE `claim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caseid` varchar(30) NOT NULL,
  `a1id` varchar(30) DEFAULT NULL,
  `a2id` varchar(30) DEFAULT NULL,
  `recognizee` varchar(30) DEFAULT NULL,
  `plate_Number` varchar(20) DEFAULT NULL,
  `case_TIme` varchar(30) DEFAULT NULL,
  `case_Place` varchar(30) DEFAULT NULL,
  `report_Time` varchar(30) DEFAULT NULL,
  `report_Person` varchar(30) DEFAULT NULL,
  `report_Person_Mobile` varchar(20) DEFAULT NULL,
  `driver` varchar(30) DEFAULT NULL,
  `driver_Mobile` varchar(20) DEFAULT NULL,
  `claim_Time` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `apply_User` varchar(50) DEFAULT NULL,
  `case_Describe` text,
  `create_Time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`caseid`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `claim` */

insert  into `claim`(`id`,`caseid`,`a1id`,`a2id`,`recognizee`,`plate_Number`,`case_TIme`,`case_Place`,`report_Time`,`report_Person`,`report_Person_Mobile`,`driver`,`driver_Mobile`,`claim_Time`,`status`,`apply_User`,`case_Describe`,`create_Time`) values (6,'22332','23123','21312321','213123','232321','2017-03-08',NULL,NULL,'123123','21312312','123123','13123','2017-03-08','0','20133040','12312312',NULL),(8,'223323','23123','21312321','213123','232321','2017-03-08',NULL,NULL,'123123','21312312','123123','13123','2017-03-08','0','20133040','12312312',NULL);

/*Table structure for table `policy` */

DROP TABLE IF EXISTS `policy`;

CREATE TABLE `policy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `policyid` varchar(30) NOT NULL,
  `policy_Type` varchar(20) DEFAULT NULL,
  `recognizee` varchar(30) DEFAULT NULL,
  `plate_Number` varchar(30) DEFAULT NULL,
  `sum` int(30) DEFAULT NULL,
  `start_Time` varchar(50) DEFAULT NULL,
  `end_Time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`policyid`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `policy` */

/*Table structure for table `tbuser` */

DROP TABLE IF EXISTS `tbuser`;

CREATE TABLE `tbuser` (
  `name` varchar(10) NOT NULL,
  `password` char(20) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbuser` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `upassword` varchar(50) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `account` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`uid`,`upassword`,`name`,`sex`,`mobile`,`email`,`address`,`postcode`,`account`) values (1,'20133040','00fe16991d98e72f700b2e8f6491df22','徐思喆','男','15000426813','xszxsz542156303@qq.com','上海市浦东新区东陆路1268弄1号402室','201206','6222021001106821710');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

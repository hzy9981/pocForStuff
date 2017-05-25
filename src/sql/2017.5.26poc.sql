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
  `apassword` varchar(255) DEFAULT NULL,
  `aname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`aid`,`apassword`,`aname`) values (1,'20133040','00fe16991d98e72f700b2e8f6491df22','xusizhe');

/*Table structure for table `assess` */

DROP TABLE IF EXISTS `assess`;

CREATE TABLE `assess` (
  `asid` int(30) NOT NULL AUTO_INCREMENT,
  `caseid` int(30) DEFAULT NULL,
  `plate_Number` varchar(30) DEFAULT NULL,
  `sum` varchar(30) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `case_Describe` text,
  `apply_User` varchar(30) DEFAULT NULL,
  `apply_User_Phone` varchar(20) DEFAULT NULL,
  `assessor` varchar(50) DEFAULT NULL,
  `assess_Time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`asid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `assess` */

insert  into `assess`(`asid`,`caseid`,`plate_Number`,`sum`,`photo`,`case_Describe`,`apply_User`,`apply_User_Phone`,`assessor`,`assess_Time`) values (1,22333,'NK3788','5000',NULL,'该车右前门出现碰撞,需要更换整个右前门','20133040','15000426813','20133041','2015-8-5'),(2,22332,'NK3788','5000',NULL,'该车右前门出现碰撞,需要更换整个右前门','20133040','15000426813','20133041','2015-8-5');

/*Table structure for table `assessor` */

DROP TABLE IF EXISTS `assessor`;

CREATE TABLE `assessor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asorid` varchar(30) NOT NULL,
  `aspassword` varchar(100) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`asorid`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `assessor` */

insert  into `assessor`(`id`,`asorid`,`aspassword`,`name`,`sex`,`mobile`) values (1,'20133040','00fe16991d98e72f700b2e8f6491df22','徐思喆','男','15000426813'),(4,'20133041','00fe16991d98e72f700b2e8f6491df22','徐思喆2','男','15000426814'),(5,'20133042','00fe16991d98e72f700b2e8f6491df22','徐思喆3','男','15000426815'),(6,'20133043','00fe16991d98e72f700b2e8f6491df22','徐思喆4','男','15000426816'),(7,'20133044','94755bd48e4e9a70b9dd565c6646158f','徐思喆4','男','15000426817');

/*Table structure for table `auditor` */

DROP TABLE IF EXISTS `auditor`;

CREATE TABLE `auditor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auid` varchar(30) NOT NULL,
  `aupassword` varchar(100) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`auid`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `auditor` */

insert  into `auditor`(`id`,`auid`,`aupassword`,`mobile`,`name`) values (2,'20133041','00fe16991d98e72f700b2e8f6491df22','15000426814','徐思喆2'),(3,'20133042','00fe16991d98e72f700b2e8f6491df22','15000426815','徐思喆3'),(4,'20133043','00fe16991d98e72f700b2e8f6491df22','15000426815','徐思喆4'),(6,'20133044','00fe16991d98e72f700b2e8f6491df22','1512345678','徐徐思思');

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
  `reason` varchar(255) DEFAULT '无',
  PRIMARY KEY (`caseid`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `claim` */

insert  into `claim`(`id`,`caseid`,`a1id`,`a2id`,`recognizee`,`plate_Number`,`case_TIme`,`case_Place`,`report_Time`,`report_Person`,`report_Person_Mobile`,`driver`,`driver_Mobile`,`claim_Time`,`status`,`apply_User`,`case_Describe`,`create_Time`,`reason`) values (9,'22333','1','1','20133040','NK3788','2017-05-26','上海','2017-05-19','xsz','15000426813','徐思喆','15000426813','2017-05-06','3','20133041','有人撞我','2017-05-06 21:36:38','妈卖批');

/*Table structure for table `policy` */

DROP TABLE IF EXISTS `policy`;

CREATE TABLE `policy` (
  `policyid` int(30) NOT NULL AUTO_INCREMENT,
  `policy_Type` varchar(20) DEFAULT NULL,
  `recognizee` varchar(30) DEFAULT NULL,
  `plate_Number` varchar(30) DEFAULT NULL,
  `sum` int(30) DEFAULT NULL,
  `start_Time` varchar(50) DEFAULT NULL,
  `end_Time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`policyid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `policy` */

insert  into `policy`(`policyid`,`policy_Type`,`recognizee`,`plate_Number`,`sum`,`start_Time`,`end_Time`) values (2,'a2','徐思喆','NK3788',244,'2017-05-08 12:44:55','2017-05-25 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`uid`,`upassword`,`name`,`sex`,`mobile`,`email`,`address`,`postcode`,`account`) values (1,'20133040','00fe16991d98e72f700b2e8f6491df22','徐思喆','男','15000426813','xszxsz542156303@qq.com','上海市浦东新区东陆路1268弄1号402室','201206','6222021001106821710'),(3,'20133041','00fe16991d98e72f700b2e8f6491df22','徐思喆','男','15000426814','xszxsz542156303@qq.com','上海市浦东新区东陆路1268弄1号402室','201206','6222021001106821710');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

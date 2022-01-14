/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.5.40 : Database - books
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`books` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `books`;

/*Table structure for table `bookorder` */

DROP TABLE IF EXISTS `bookorder`;

CREATE TABLE `bookorder` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `zipcode` varchar(8) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `creditcard` varchar(20) DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `bookorder` */

insert  into `bookorder`(`orderId`,`username`,`zipcode`,`phone`,`creditcard`,`total`) values (1,'admin','226007','8888866666','12345678901',50),(2,'admin','226007','8888866666','12345678901',118.5),(3,'admin','226007','88886666','12345678901',100),(7,'admin','226007','12345678','12345678901',390),(8,'ww','222','333','4444444',86),(9,'ee','ee','ee','ee',88.4000015258789),(10,'123','21','17794027890','11',88),(11,'123','21','17794027890','11',99),(12,'123','123','123','123',49);

/*Table structure for table `titles` */

DROP TABLE IF EXISTS `titles`;

CREATE TABLE `titles` (
  `isbn` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `editionNumber` int(11) DEFAULT NULL,
  `copyright` varchar(4) DEFAULT NULL,
  `publisherID` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `summary` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `titles` */

insert  into `titles`(`isbn`,`title`,`editionNumber`,`copyright`,`publisherID`,`price`,`summary`) values ('1','Java Web整合开发与项目实战',1,'2009',1,49,NULL),('10','精通JavaEE项目案例',1,'2007',1,70,NULL),('2','Flex 3 RIA开发详解与精深实践',1,'2009',1,44,NULL),('3','精通EJB3.0',2,'2006',2,64,NULL),('4','JavaEE编程技术',1,'2222',2,38,NULL),('5','C++ 程序设计',2,'1998',1,50,NULL),('6','Java How to Program',2,'1998',1,50,NULL),('7','The Complete C++ Training Course',3,'2001',2,54,NULL),('8','Web编程技术',1,'2008',1,36,NULL),('9','EJB JPA数据库持久层开发',3,'2008',2,49,NULL);

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

insert  into `userinfo`(`userId`,`loginname`,`password`) values (1,'admin','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

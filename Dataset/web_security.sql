/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - web_security
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `web_security`;

USE `web_security`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `facregister` */

DROP TABLE IF EXISTS `facregister`;

CREATE TABLE `facregister` (
  `facid` varchar(20) NOT NULL,
  `facname` varchar(50) DEFAULT NULL,
  `facemail` varchar(100) NOT NULL,
  `facpswd` varchar(50) DEFAULT NULL,
  `facmno` varchar(20) DEFAULT NULL,
  `facgender` varchar(20) DEFAULT NULL,
  `facreg_date` varchar(20) DEFAULT NULL,
  `facbranch` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`facid`,`facemail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `facregister` */

insert  into `facregister`(`facid`,`facname`,`facemail`,`facpswd`,`facmno`,`facgender`,`facreg_date`,`facbranch`) values ('1','Alisir','alisir@gmail.com','12345','9052830803','Male','03-01-2018','ECE'),('2','swamisir','Swamisir@gmail.com','12345','9014170973','Male','02-01-2018','ECE'),('3','Sajidsir','sajidsir@gmail.com','12345','9985714374','Male','02-01-2018','ECE'),('7','EshwarSir','eshwarsir@gmail.com','12345','9059048087','Male','02-01-2018','CSE');

/*Table structure for table `filedata` */

DROP TABLE IF EXISTS `filedata`;

CREATE TABLE `filedata` (
  `fid` int(10) NOT NULL AUTO_INCREMENT,
  `filename` varchar(1000) DEFAULT NULL,
  `filedata` longblob,
  `facid` varchar(50) DEFAULT NULL,
  `facemail` varchar(100) DEFAULT NULL,
  `facbranch` varchar(20) DEFAULT NULL,
  `fdate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `filedata` */


/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `stuname` varchar(100) DEFAULT NULL,
  `stuemail` varchar(200) DEFAULT NULL,
  `stubranch` varchar(50) DEFAULT NULL,
  `facname` varchar(100) DEFAULT NULL,
  `facemail` varchar(200) DEFAULT NULL,
  `facbranch` varchar(50) DEFAULT NULL,
  `message` varchar(3000) DEFAULT NULL,
  `mreply` varchar(3000) DEFAULT NULL,
  `mstatus` varchar(20) DEFAULT NULL,
  `mdate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `message` */

insert  into `message`(`mid`,`stuname`,`stuemail`,`stubranch`,`facname`,`facemail`,`facbranch`,`message`,`mreply`,`mstatus`,`mdate`) values (9,'venkat','y.venkat0007@gmail.com','ECE','Alisir','alisir@gmail.com','ECE','Hai sir \r\nPlease Upload Project Abstract','Ok sure.\r\ncheck materials i upload now','Reply','03-01-2018'),(10,'Siva','siva07@gmail.com','ECE','Alisir','alisir@gmail.com','ECE','Hai sir\r\nPlease Upload c language material.\r\n','Now it is preparing \r\nI upload after two days ok.','Reply','03-01-2018'),(11,'venkat','y.venkat0007@gmail.com','ECE','Alisir','alisir@gmail.com','ECE','Thank YOu sir',NULL,'Query','03-01-2018'),(12,'Siva','siva07@gmail.com','ECE','Alisir','alisir@gmail.com','ECE','ok sir ',NULL,'Query','03-01-2018');

/*Table structure for table `sturegister` */

DROP TABLE IF EXISTS `sturegister`;

CREATE TABLE `sturegister` (
  `stuid` varchar(20) NOT NULL,
  `stuname` varchar(50) DEFAULT NULL,
  `stuemail` varchar(100) NOT NULL,
  `stupswd` varchar(50) DEFAULT NULL,
  `stumno` varchar(20) DEFAULT NULL,
  `stugender` varchar(20) DEFAULT NULL,
  `stureg_date` varchar(20) DEFAULT NULL,
  `stubranch` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`stuid`,`stuemail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sturegister` */

insert  into `sturegister`(`stuid`,`stuname`,`stuemail`,`stupswd`,`stumno`,`stugender`,`stureg_date`,`stubranch`) values ('13W45A0401','Siva','siva07@gmail.com','12345','8099470563','Male','03-01-2018','ECE'),('13W45A0403','venkat','y.venkat0007@gmail.com','12345','9966143047','Male','03-01-2018','ECE'),('7','yvc','y.venkat07@gmail.com','12345','9966143047','Male','03-01-2018','CSE');

/* Procedure structure for procedure `faclogin` */

/*!50003 DROP PROCEDURE IF EXISTS  `faclogin` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `faclogin`(IN id VARCHAR(100), IN pswd VARCHAR(100))
BEGIN
select * from facregister where facid=id and facpswd=pswd;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `stulogin` */

/*!50003 DROP PROCEDURE IF EXISTS  `stulogin` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `stulogin`(IN id VARCHAR(20), IN pswd VARCHAR(100))
BEGIN
SELECT * FROM STUREGISTER WHERE STUID=ID AND STUPSWD=PSWD;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
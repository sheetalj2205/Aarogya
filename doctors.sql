/*
SQLyog Ultimate v11.33 (32 bit)
MySQL - 5.5.1-m2-community : Database - aarogya
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`aarogya` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `aarogya`;

/*Table structure for table `doctorinfo` */

DROP TABLE IF EXISTS `doctorinfo`;

CREATE TABLE `doctorinfo` (
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `contactNo.` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `cityName` varchar(20) DEFAULT NULL,
  `countryName` varchar(30) DEFAULT NULL,
  `specialization` varchar(30) DEFAULT NULL,
  `lang` varchar(30) DEFAULT NULL,
  `medicalCollege` varchar(30) DEFAULT NULL,
  `medicalID` varchar(30) DEFAULT NULL,
  `aadharCardNumber` varchar(30) DEFAULT NULL,
  `facebook` varchar(125) DEFAULT NULL,
  `linkedin` varchar(125) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `verifyPassword` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doctorinfo` */

insert  into `doctorinfo`(`firstName`,`lastName`,`email`,`contactNo.`,`date`,`month`,`year`,`cityName`,`countryName`,`specialization`,`lang`,`medicalCollege`,`medicalID`,`aadharCardNumber`,`facebook`,`linkedin`,`password`,`verifyPassword`) values ('Sheetal','Jain','sheetalj2205@gmail.com','8225990994','22','05','2000','Indore','India','Medical Gastroenterology','English','MBM','1234','123456','www.facebook.com','https://bit.ly/3v9B253','1234','1234'),('Sheetal','Jain','sheetalj2205@gmail.com','8225990994','22','05','2000','Indore','India','Medical Gastroenterology','English','MBM','1234','12345','www.facebook.com','https://bit.ly/3v9B253','1234','1234'),('Sheetal','Jain','sheetalj2205@gmail.com','8225990994','22','05','2000','Indore','India','Obstetrics and Gynaecology','English','MBM','1234','123455','www.facebook.com','https://bit.ly/3v9B253','1234','1234'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Sheetal','Jain','sheetalj2205@gmail.com','8225990994','22','05','2000','Indore','Nepal','Cardiology','Hindi','MBM','1234','12345','www.facebook.com','https://bit.ly/3v9B253','123','123'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Sheetal','Jain','seetj','8225990994','22','05','2000','Indore','Sri Lanka','Cardiology','Hindi','MBM','1234','246','www.facebook.com','https://bit.ly/3v9B253','1234','1234'),('Sheetal','Jain','seetj','8225990994','22','05','2000','Indore','India','Oncology','English','MBM','1234','1234','www.facebook.com','https://bit.ly/3v9B253','1234','1234'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Sheetal','Jain','sheetalj2205@gmail.com','8225990994','22','05','2000','Indore','India','Obstetrics and Gynaecology','English','MBM','1234','12344','www.facebook.com','https://bit.ly/3v9B253','123','123'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `patientinfo` */

DROP TABLE IF EXISTS `patientinfo`;

CREATE TABLE `patientinfo` (
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `aadhar` varchar(125) DEFAULT NULL,
  `contact` varchar(40) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `specialityReq` varchar(125) DEFAULT NULL,
  `lang` varchar(30) DEFAULT NULL,
  `disease` varchar(30) DEFAULT NULL,
  `bloodGroup` varchar(30) DEFAULT NULL,
  `bloodPressure` varchar(30) DEFAULT NULL,
  `sugarLevel` varchar(20) DEFAULT NULL,
  `bloodLevel` varchar(30) DEFAULT NULL,
  `other` varchar(225) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `verifyPassword` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patientinfo` */

insert  into `patientinfo`(`firstName`,`lastName`,`aadhar`,`contact`,`date`,`month`,`year`,`district`,`city`,`specialityReq`,`lang`,`disease`,`bloodGroup`,`bloodPressure`,`sugarLevel`,`bloodLevel`,`other`,`password`,`verifyPassword`) values ('Sheetal','Jain','12345678','8225990994','22','05','2000','Vidhisha','Sanavad','8','1','cough','o+','78','456','467','ghsjksds','ksaloni1122',NULL),('Sheetal','Jain','12345678','8225990994','22','05','2000','Bhopal','Sanavad','Bone Marrow Transplant','English','cough','o+','446','345','45','no!','123',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

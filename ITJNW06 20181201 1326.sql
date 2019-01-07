-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `power`
--

CREATE DATABASE IF NOT EXISTS `power`;
USE `power`;

--
-- Definition of table `author1`
--

DROP TABLE IF EXISTS `author1`;
CREATE TABLE `author1` (
  `bookname` longtext,
  `authorname` longtext,
  `bookprice` longtext,
  `month` longtext,
  `filename` longtext,
  `filetype` longtext,
  `filecontent` longtext,
  `filesize` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author1`
--

/*!40000 ALTER TABLE `author1` DISABLE KEYS */;
INSERT INTO `author1` (`bookname`,`authorname`,`bookprice`,`month`,`filename`,`filetype`,`filecontent`,`filesize`) VALUES 
 ('Business India','ambani','250','January','Business India-Janu.pdf','application/pdf','Business India-Janu.pdfcom.oreilly.servlet.multipart.FilePart@15f6497','23330291'),
 ('Business India','Ambani','250','February','Business India-Febr.pdf','application/pdf','Business India-Febr.pdfcom.oreilly.servlet.multipart.FilePart@1ed711','15000082');
/*!40000 ALTER TABLE `author1` ENABLE KEYS */;


--
-- Definition of table `author2`
--

DROP TABLE IF EXISTS `author2`;
CREATE TABLE `author2` (
  `bookname` longtext,
  `authorname` longtext,
  `bookprice` longtext,
  `month` longtext,
  `filename` longtext,
  `filetype` longtext,
  `filecontent` longtext,
  `filesize` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author2`
--

/*!40000 ALTER TABLE `author2` DISABLE KEYS */;
INSERT INTO `author2` (`bookname`,`authorname`,`bookprice`,`month`,`filename`,`filetype`,`filecontent`,`filesize`) VALUES 
 ('Digit IT','James Gosling','250','May','Digit IT -May.pdf','application/pdf','Digit IT -May.pdfcom.oreilly.servlet.multipart.FilePart@1986321','21742610'),
 ('Digit IT','James Gosling','250','June','Digit IT - Jun.pdf','application/pdf','Digit IT - Jun.pdfcom.oreilly.servlet.multipart.FilePart@198d967','4577569'),
 ('Digit IT','James Gosling','300','July','Digit IT -Jul.pdf','application/pdf','Digit IT -Jul.pdfcom.oreilly.servlet.multipart.FilePart@a53237','65954'),
 ('Digit IT','James Gosling','250','August','Digit IT - Augu.pdf','application/pdf','Digit IT - Augu.pdfcom.oreilly.servlet.multipart.FilePart@8a1b4e','22003');
/*!40000 ALTER TABLE `author2` ENABLE KEYS */;


--
-- Definition of table `author3`
--

DROP TABLE IF EXISTS `author3`;
CREATE TABLE `author3` (
  `bookname` longtext,
  `authorname` longtext,
  `bookprice` longtext,
  `month` longtext,
  `filename` longtext,
  `filetype` longtext,
  `filecontent` longtext,
  `filesize` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author3`
--

/*!40000 ALTER TABLE `author3` DISABLE KEYS */;
INSERT INTO `author3` (`bookname`,`authorname`,`bookprice`,`month`,`filename`,`filetype`,`filecontent`,`filesize`) VALUES 
 ('Dataquest','Soma Tah','350','September','Dataquest - Sept.pdf','application/pdf','Dataquest - Sept.pdfcom.oreilly.servlet.multipart.FilePart@149ea83','738315'),
 ('Dataquest','Soma Tah','350','October','Dataquest - Octo.pdf','application/pdf','Dataquest - Octo.pdfcom.oreilly.servlet.multipart.FilePart@117c0bd','295159'),
 ('Dataquest','Soma Tah','300','November','Dataquest - Nov.pdf','application/pdf','Dataquest - Nov.pdfcom.oreilly.servlet.multipart.FilePart@17f22a5','428291'),
 ('Dataquest','Soma Tah','300','December','Dataquest - Dece.pdf','application/pdf','Dataquest - Dece.pdfcom.oreilly.servlet.multipart.FilePart@6e67f7','43552');
/*!40000 ALTER TABLE `author3` ENABLE KEYS */;


--
-- Definition of table `authorrege`
--

DROP TABLE IF EXISTS `authorrege`;
CREATE TABLE `authorrege` (
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `cpassword` varchar(45) NOT NULL,
  `book name` varchar(45) NOT NULL,
  `author name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorrege`
--

/*!40000 ALTER TABLE `authorrege` DISABLE KEYS */;
INSERT INTO `authorrege` (`name`,`email`,`phone`,`password`,`cpassword`,`book name`,`author name`) VALUES 
 ('mukesh ambani','ambani@gmail.com','9965727024','123456','123456','Business India','mukesh ambani'),
 ('James Gosling','jamesgosling@gmail.com','9685724520','654321','654321','Digit IT','James Gosling'),
 ('Soma Tah','somatah@gmail.com','9685742542','525252','525252','Dataquest','Soma Tah');
/*!40000 ALTER TABLE `authorrege` ENABLE KEYS */;


--
-- Definition of table `downloads_person`
--

DROP TABLE IF EXISTS `downloads_person`;
CREATE TABLE `downloads_person` (
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `birth` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloads_person`
--

/*!40000 ALTER TABLE `downloads_person` DISABLE KEYS */;
INSERT INTO `downloads_person` (`firstname`,`lastname`,`email`,`phone`,`password`,`birth`,`gender`) VALUES 
 ('anathi','kumari','anath@gmail.com','9685274155','1','2018-11-07','Male'),
 ('anathi','kumari','anath@gmail.com','9685274155','1','2018-11-07','Male'),
 ('anathi','kumari','anath@gmail.com','9685274155','1','2018-11-07','Male'),
 ('anathi','kumari','anath@gmail.com','9685274155','1','2018-11-07','Male'),
 ('anathi','kumari','anath@gmail.com','9685274155','1','2018-11-07','Male');
/*!40000 ALTER TABLE `downloads_person` ENABLE KEYS */;


--
-- Definition of table `facebook`
--

DROP TABLE IF EXISTS `facebook`;
CREATE TABLE `facebook` (
  `first name` varchar(45) DEFAULT NULL,
  `last name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `repassword` varchar(45) DEFAULT NULL,
  `birth` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facebook`
--

/*!40000 ALTER TABLE `facebook` DISABLE KEYS */;
INSERT INTO `facebook` (`first name`,`last name`,`email`,`phone`,`password`,`repassword`,`birth`,`gender`,`photo`) VALUES 
 ('Sai','Krishna','saikrishna@gmail.com','9968524850','123321','123321','1994-12-06','Male','panda.jpg'),
 ('arun','kumar','arunkumar@gmail.com','9652548521','321321','321321','1994-12-02','Male','lotus.jpg');
/*!40000 ALTER TABLE `facebook` ENABLE KEYS */;


--
-- Definition of table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
CREATE TABLE `userdetails` (
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `birth` varchar(45) DEFAULT NULL,
  `filename` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
INSERT INTO `userdetails` (`firstname`,`lastname`,`email`,`phone`,`password`,`birth`,`filename`) VALUES 
 ('arun','kumar','arunkumar@gmail.com','9652548521','321321','1994-12-02','Business India-Febr.pdf'),
 ('arun','kumar','arunkumar@gmail.com','9652548521','321321','1994-12-02','Business India-Febr.pdf'),
 ('arun','kumar','arunkumar@gmail.com','9652548521','321321','1994-12-02','Business India-Febr.pdf'),
 ('arun','kumar','arunkumar@gmail.com','9652548521','321321','1994-12-02','Business India-Febr.pdf');
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

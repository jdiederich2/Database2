CREATE DATABASE  IF NOT EXISTS `training` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `training`;
-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: training
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `EmpID` int(11) NOT NULL,
  `EmpLname` varchar(20) NOT NULL,
  `EmpFname` varchar(20) NOT NULL,
  `Salary` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1200,'Schmidt','Fred',24500),(1300,'Vega','Rosa',35600),(2200,'Lee','Mila',33500),(3300,'Karakas','Nicolas',44680);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor` (
  `InstructorID` int(11) NOT NULL AUTO_INCREMENT,
  `InstLname` varchar(20) NOT NULL,
  `InstFname` varchar(20) NOT NULL,
  `Company` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`InstructorID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (1,'Cramm','Irene','Advance Training, LLC'),(2,'Bootwalla','Bill','Advance Training, LLC'),(3,'Rollwagon','J.C.','PosiTrain Corporation');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainedemployees`
--

DROP TABLE IF EXISTS `trainedemployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainedemployees` (
  `EmpID` int(11) NOT NULL,
  `SessionID` int(11) NOT NULL,
  `DateCompleted` date DEFAULT NULL,
  PRIMARY KEY (`EmpID`,`SessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainedemployees`
--

LOCK TABLES `trainedemployees` WRITE;
/*!40000 ALTER TABLE `trainedemployees` DISABLE KEYS */;
INSERT INTO `trainedemployees` VALUES (1200,1,'2011-12-15'),(1300,2,'2011-10-13'),(1300,3,'2011-11-16'),(2200,1,'2011-12-15'),(2200,2,'2011-10-13'),(2200,3,'2011-11-16'),(3300,1,'2012-01-15'),(3300,4,'2012-01-25');
/*!40000 ALTER TABLE `trainedemployees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trnsession`
--

DROP TABLE IF EXISTS `trnsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trnsession` (
  `SessionID` int(11) NOT NULL AUTO_INCREMENT,
  `Subject` varchar(20) DEFAULT NULL,
  `Title` varchar(20) DEFAULT NULL,
  `SessionDate` date DEFAULT NULL,
  `InstructorID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SessionID`),
  KEY `InstructorID_idx` (`InstructorID`),
  CONSTRAINT `InstructorID` FOREIGN KEY (`InstructorID`) REFERENCES `instructor` (`InstructorID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trnsession`
--

LOCK TABLES `trnsession` WRITE;
/*!40000 ALTER TABLE `trnsession` DISABLE KEYS */;
INSERT INTO `trnsession` VALUES (1,'DB Design','Design Fund.','2011-12-12',3),(2,'SQL','Intro to SQL','2011-10-10',1),(3,'SQL','Adv SQL','2011-11-15',1),(4,'DB Design','Normalization','2012-01-15',2);
/*!40000 ALTER TABLE `trnsession` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-18 10:42:59

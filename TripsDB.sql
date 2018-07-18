CREATE DATABASE  IF NOT EXISTS `trips` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `trips`;
-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: trips
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
-- Table structure for table `condition`
--

DROP TABLE IF EXISTS `condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition` (
  `CondCd` int(11) NOT NULL,
  `CondDescription` varchar(45) NOT NULL,
  PRIMARY KEY (`CondCd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition`
--

LOCK TABLES `condition` WRITE;
/*!40000 ALTER TABLE `condition` DISABLE KEYS */;
INSERT INTO `condition` VALUES (1,'Excellent condition, maintained daily'),(2,'Excellent condition, maintained weekly'),(4,'Very good condition, regular maintenance'),(7,'Adequate condition, low level maintenance');
/*!40000 ALTER TABLE `condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluation` (
  `EvalID` int(11) NOT NULL AUTO_INCREMENT,
  `RideDate` date DEFAULT NULL,
  `RiderID` int(11) NOT NULL,
  `TrailID` int(3) unsigned zerofill NOT NULL,
  `Comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EvalID`,`RiderID`,`TrailID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (1,'2014-05-15',1212,224,'Excellent trip! Trail in great shape. Saw two deer and many grouse.'),(2,'2014-06-10',1212,124,'Nice trail. Tree down across trail, but path cleared around tree to walk bike.'),(3,'2014-06-11',1313,124,'Ok. Lots of branches and a tree partially blocking trail. Nasty potholes.'),(4,'2014-06-16',1319,012,'Great ride! Clean clear trail - great views!!!'),(5,'2014-07-01',1313,124,'Much improved over the last month. Clean and potholes repaired.'),(6,'2014-07-04',4444,022,'In my opinion, it was muddy, with some potholes and rutts... but the rest area was beautiful.');
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership` (
  `OrgID` varchar(5) NOT NULL,
  `RiderID` int(11) NOT NULL,
  `JoinDate` date DEFAULT NULL,
  `OfficeHeld` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`OrgID`,`RiderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
INSERT INTO `membership` VALUES ('ABG',1200,'2013-07-07',NULL),('ABG',1212,'1999-05-04','President'),('HCBA',1313,'2000-06-06',NULL),('HCBA',4444,'2017-07-01',NULL),('RB',1313,'2012-06-01',NULL),('RB',1319,'2007-06-01','Treasurer');
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `OrgID` varchar(5) NOT NULL,
  `OrgName` varchar(45) NOT NULL,
  `Dues` decimal(10,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`OrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES ('ABG','American Biker Group',120.00),('HCBA','Hanes County Bikers Assoc',10.00),('RB','Rec Bikers',600.00);
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rider`
--

DROP TABLE IF EXISTS `rider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rider` (
  `RiderID` int(11) NOT NULL,
  `Lname` varchar(25) DEFAULT NULL,
  `Fname` varchar(15) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  PRIMARY KEY (`RiderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rider`
--

LOCK TABLES `rider` WRITE;
/*!40000 ALTER TABLE `rider` DISABLE KEYS */;
INSERT INTO `rider` VALUES (1200,'Schmidt','Lee','1990-12-12'),(1212,'Schmidt','Kyle','1949-02-04'),(1313,'Tran','Mia','1983-03-13'),(1319,'Djiengel','Fann','1977-05-17'),(4444,'Diederich','Jennifer','1976-08-02');
/*!40000 ALTER TABLE `rider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trail`
--

DROP TABLE IF EXISTS `trail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trail` (
  `TrailID` int(3) unsigned zerofill NOT NULL,
  `TrailName` varchar(25) NOT NULL,
  `Distance` decimal(10,1) DEFAULT NULL,
  `CondCd` int(11) DEFAULT NULL,
  `Surface` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`TrailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trail`
--

LOCK TABLES `trail` WRITE;
/*!40000 ALTER TABLE `trail` DISABLE KEYS */;
INSERT INTO `trail` VALUES (012,'Smokey Bear Trail',7.5,2,'Paved'),(014,'Grinchley Trail',22.5,7,'Crushed Limestone'),(022,'Grapevine Pass',6.0,7,'Gravel'),(124,'Ten Mile Trail',10.0,4,'Paved'),(224,'Pine Pitch Rec Trail',27.0,2,'Crushed Limestone');
/*!40000 ALTER TABLE `trail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-11 13:46:09

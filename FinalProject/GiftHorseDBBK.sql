-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: gifthorse
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
-- Table structure for table `basketcontents`
--

DROP TABLE IF EXISTS `basketcontents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basketcontents` (
  `ProdID` char(3) NOT NULL,
  `ItemID` int(4) unsigned zerofill NOT NULL,
  `ItemQty` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ProdID`,`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basketcontents`
--

LOCK TABLES `basketcontents` WRITE;
/*!40000 ALTER TABLE `basketcontents` DISABLE KEYS */;
INSERT INTO `basketcontents` VALUES ('g01',0004,1.00),('g01',1003,1.00),('g01',2200,1.00),('g01',2201,1.00),('g01',2202,1.00),('g01',2300,1.00),('g01',2400,1.00),('g01',2500,1.00),('g03',0002,1.00),('g03',1000,1.00),('g03',2300,2.00),('g03',2400,2.00),('g03',2500,2.00),('s03',0001,1.00),('s03',1001,1.00),('s03',2600,0.50),('s03',2603,1.00),('s03',2604,0.25),('s04',0002,1.00),('s04',1004,1.00),('s04',2600,0.50),('s04',2601,0.50),('s04',2602,16.00),('s04',2605,6.00),('w01',0003,1.00),('w01',1002,1.00),('w01',2700,2.00),('w01',2800,8.00),('w02',0003,1.00),('w02',1002,1.00),('w02',2701,2.00),('w02',2800,8.00);
/*!40000 ALTER TABLE `basketcontents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CustID` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `CustFname` char(15) NOT NULL,
  `CustLname` char(15) NOT NULL,
  `CustAddr` char(45) NOT NULL,
  `CustCity` char(15) NOT NULL,
  `CustState` char(2) NOT NULL,
  `CustZip` int(5) NOT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (0001,'Jennifer','Diederich','309 Washington St','Stanley','WI',54768),(0002,'Marge','Feigum','15 Bittersweet Way','Englewood','WI',54766),(0003,'Thom','Manion','88 Ridgeway Ct','Chilton','WI',54744),(0004,'Alexandra','Gee','1212 Main St','Wales','WI',54745),(0005,'Christine','Flowers','841 Ribbon Dr','Heartland','WI',55212),(0009,'Anna Louise','Feigum','15 East Main St','Baltimore','MD',45678),(0010,'Bob','Cameron','13556 Shady Pine Dr','Plattville','WI',70098),(0011,'Tamara','Gee','20 Winsor Woods Dr','St. Paul','MN',67033),(0012,'Bernie','Gates','2000 Ironway Rd Apt 12','St. Paull','MN',67000),(0013,'Olya','Diederich','151 Rum River Rd','Planter','WI',52588),(0014,'Heather','Wilkes','1010 Milam St','Houston','TX',46450);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `ItemID` int(4) unsigned zerofill NOT NULL,
  `VendID` int(2) unsigned zerofill NOT NULL,
  `ItemDesc` char(45) NOT NULL,
  `UnitOfMeasure` varchar(3) NOT NULL,
  `ItemPrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ItemID`),
  KEY `VendID` (`VendID`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`VendID`) REFERENCES `vendor` (`VendID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (0001,03,'Small Wicker Basket','ea',2.75),(0002,03,'Medium Wicker Basket','ea',4.50),(0003,03,'Fancy Wicker Basket','ea',5.80),(0004,03,'Large Wicker Basket','ea',6.15),(1000,16,'Medium Fabric Liner','ea',1.39),(1001,16,'Small Satin Liner Green','ea',1.39),(1002,16,'Fancy Linen Red/Blue Plaid','ea',3.27),(1003,16,'Large Wicker Basket Cover','ea',0.50),(1004,16,'Plastic Wrap Items','ea',1.00),(2200,07,'Pictionary','ea',14.99),(2201,07,'Dominos','ea',7.49),(2202,07,'Uno','ea',3.89),(2300,07,'Card Deck','ea',0.99),(2400,07,'Poker Chip Set','ea',3.49),(2500,14,'Cribbage Board','ea',3.65),(2600,14,'Almonds','lb',8.99),(2601,14,'Fresh Blueberries','lb',5.99),(2602,14,'Organic Yogurt','oz',0.69),(2603,14,'Dark Chocolate Fudge','lb',7.99),(2604,14,'Espresso Roast Coffee','lb',10.99),(2605,14,'Bananas','ea',0.16),(2700,02,'Bottle Red Wine','ea',11.99),(2701,02,'Bottle White Wine','ea',11.99),(2800,04,'Colby Cheese Wheel','oz',2.75);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderline` (
  `OrdID` int(11) NOT NULL,
  `ProdID` char(3) NOT NULL,
  `ProdQty` int(3) NOT NULL,
  `UnitPrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrdID`,`ProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderline`
--

LOCK TABLES `orderline` WRITE;
/*!40000 ALTER TABLE `orderline` DISABLE KEYS */;
INSERT INTO `orderline` VALUES (100055,'s03',2,39.99),(100399,'g03',1,65.00),(100399,'w01',1,45.99),(100400,'s04',1,40.00),(100400,'w01',1,45.99),(100422,'g01',1,75.25),(100422,'w02',1,45.99),(100426,'s04',3,40.00),(100500,'s03',1,39.99),(100500,'s04',2,40.00);
/*!40000 ALTER TABLE `orderline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `OrdID` int(11) NOT NULL,
  `CustID` int(4) unsigned zerofill NOT NULL,
  `OrdDate` date NOT NULL,
  `PaidDate` date DEFAULT NULL,
  `ShipDate` date DEFAULT NULL,
  `ShipCoID` int(11) DEFAULT NULL,
  `ShipToCustID` int(4) unsigned zerofill NOT NULL,
  PRIMARY KEY (`OrdID`),
  KEY `ShipToCustID` (`CustID`),
  CONSTRAINT `ShipToCustID` FOREIGN KEY (`CustID`) REFERENCES `customer` (`CustID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `customer` (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (100399,0002,'2013-12-06','2013-12-06','2013-12-07',1,0009),(100400,0003,'2013-12-06','2013-12-06','2013-12-07',1,0012),(100422,0002,'2013-12-11','2013-12-11','2013-12-12',1,0010),(100426,0004,'2013-02-16','2013-02-16','2013-02-17',1,0011),(100500,0001,'2012-04-15','2012-04-15','2012-04-16',2,0014),(100555,0001,'2017-10-19','2017-10-19',NULL,2,0013);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ProdID` char(3) NOT NULL,
  `ProdName` char(45) NOT NULL,
  `ProdDesc` varchar(255) NOT NULL,
  `ProdPrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('g01','Rainy Day Game Collection','Pictionary, Card deck, Poker Chip Set, Dominos, Cribbage Board, and Uno in a large covered wicker basket',75.25),('g03','Card Party','2 Card decks, 2 Poker Chip Sets, and 2 Cribbage Boards in a medium fabric- lined wicker basket',65.00),('s03','Fudge Overboard','1 lb. dark chocolate fudge, ¼ lb. espresso roast coffee, ½ lb. almonds in a small wicker basket lined in green satin',39.99),('s04','Good Four You','½ lb almonds, 6 bananas, ½ pound of fresh blueberries, and 16 oz organic yogurt in a medium wicker basket with contents sealed in plastic',40.00),('w01','Wine with Your Cheese - Red','Two bottles of red wine with an 8 oz. wheel of Colby cheese in a fancy wicker basket lined in red/blue plaid linen',45.99),('w02','Whine with Your Cheese - White','Two bottles of white wine with an 8 oz. wheel of Colby cheese in a fancy wicker basketlined in red/blue plaid linen',45.99);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipper` (
  `ShipCoID` int(2) NOT NULL,
  `ShipCompany` char(30) NOT NULL,
  PRIMARY KEY (`ShipCoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipper`
--

LOCK TABLES `shipper` WRITE;
/*!40000 ALTER TABLE `shipper` DISABLE KEYS */;
INSERT INTO `shipper` VALUES (1,'USPS'),(2,'UPS'),(3,'Fed-Ex');
/*!40000 ALTER TABLE `shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor` (
  `VendID` int(2) unsigned zerofill NOT NULL,
  `VendCompany` char(30) NOT NULL,
  `VendCity` char(15) NOT NULL,
  PRIMARY KEY (`VendID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (02,'Carmen Grocers','Greenville'),(03,'Kateman Basketry','Alma'),(04,'Everything Cheese','Small Town'),(07,'Games Galore, LLC','Greenville'),(10,'Fruit Factory','Sarasota'),(14,'I Love Candy','Green Bay'),(16,'Creative Gifts','Any Where');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-20 22:56:55

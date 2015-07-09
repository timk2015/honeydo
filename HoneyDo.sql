-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 108.167.181.80    Database: timwork_HoneyDo
-- ------------------------------------------------------
-- Server version	5.5.42-37.1

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
-- Current Database: `timwork_HoneyDo`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `timwork_HoneyDo` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `timwork_HoneyDo`;

--
-- Table structure for table `BRAND`
--

DROP TABLE IF EXISTS `BRAND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BRAND` (
  `BrandID` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `Store` int(11) NOT NULL,
  PRIMARY KEY (`BrandID`),
  KEY `fk_Store` (`Store`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BRAND`
--

LOCK TABLES `BRAND` WRITE;
/*!40000 ALTER TABLE `BRAND` DISABLE KEYS */;
INSERT INTO `BRAND` VALUES (1,'Mead',1),(2,'Giant',1),(3,'Pringles',1),(4,'Turkey Hill',1),(5,'Minute Maid',1),(6,'Alcon',1);
/*!40000 ALTER TABLE `BRAND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HOME_ITEM`
--

DROP TABLE IF EXISTS `HOME_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HOME_ITEM` (
  `ItemID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemName` char(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Item Name',
  `BrandID` int(11) NOT NULL,
  `ItemDescription` char(40) COLLATE utf8_unicode_ci DEFAULT 'Item Description',
  `upcNumber` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOME_ITEM`
--

LOCK TABLES `HOME_ITEM` WRITE;
/*!40000 ALTER TABLE `HOME_ITEM` DISABLE KEYS */;
INSERT INTO `HOME_ITEM` VALUES (1,'Quad-Ruled Notebook',1,'80 Sheets','0-43100-59878-7'),(2,'Pacific Blend Ground Coffee',2,'Premium Ground Coffee - Great taste','6-88267-10417-6');
/*!40000 ALTER TABLE `HOME_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PREFERRED_BRAND`
--

DROP TABLE IF EXISTS `PREFERRED_BRAND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PREFERRED_BRAND` (
  `ItemID` int(11) NOT NULL,
  `brandID` int(11) NOT NULL,
  `IsPreferred` tinyint(1) NOT NULL DEFAULT '0',
  `IsAlternate` tinyint(1) NOT NULL DEFAULT '0',
  KEY `ITEM_ID_PK` (`ItemID`),
  KEY `BRAND_ID_PK` (`brandID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PREFERRED_BRAND`
--

LOCK TABLES `PREFERRED_BRAND` WRITE;
/*!40000 ALTER TABLE `PREFERRED_BRAND` DISABLE KEYS */;
/*!40000 ALTER TABLE `PREFERRED_BRAND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STORE`
--

DROP TABLE IF EXISTS `STORE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STORE` (
  `storeID` int(11) NOT NULL AUTO_INCREMENT,
  `storeName` char(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storeStreetAddress` char(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storeCity` char(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storeState` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storeZipCode` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storeWebAddress` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`storeID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STORE`
--

LOCK TABLES `STORE` WRITE;
/*!40000 ALTER TABLE `STORE` DISABLE KEYS */;
INSERT INTO `STORE` VALUES (1,'Giant','4357 West Swamp Road','Doylestown','PA','18902-1039','http://giantfoodstores.com/sto'),(2,'True Value','4373 West Swamp Road','Doylestown','PA','18901','http://ww3.truevalue.com/doyle'),(3,'Walmart','1515 Bethlehem Pike','Hatfield','PA','19440','http://www.walmart.com/store/2'),(4,'Weis Markets','73 Old Dublin Pike','Doylestown','PA','18901','http://weismarkets.mywebgrocer'),(5,'Acme Markets','480 N Main St','Doylestown','PA','18901','http://www.acmemarkets.com/pd/'),(6,'Staples','436 N Main Street','Doylestown','PA','18901','http://storelocator.staples.co');
/*!40000 ALTER TABLE `STORE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-06 23:40:56

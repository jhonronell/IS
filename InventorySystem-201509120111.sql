-- MySQL dump 10.13  Distrib 5.5.41, for Win64 (x86)
--
-- Host: 192.168.56.102    Database: InventorySystem
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `Brand`
--

DROP TABLE IF EXISTS `Brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Brand` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(100) DEFAULT NULL,
  `CountryOfOrigin` varchar(100) DEFAULT NULL,
  `DateAdded` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brand`
--

LOCK TABLES `Brand` WRITE;
/*!40000 ALTER TABLE `Brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `Brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ColorTable`
--

DROP TABLE IF EXISTS `ColorTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ColorTable` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `ColorName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ColorTable`
--

LOCK TABLES `ColorTable` WRITE;
/*!40000 ALTER TABLE `ColorTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `ColorTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Distributor`
--

DROP TABLE IF EXISTS `Distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Distributor` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(100) DEFAULT NULL,
  `ContactInformation` int(100) DEFAULT NULL,
  `DateAdded` int(100) DEFAULT NULL,
  `AddedBy` int(100) DEFAULT NULL,
  `Status` int(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Distributor`
--

LOCK TABLES `Distributor` WRITE;
/*!40000 ALTER TABLE `Distributor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductOption`
--

DROP TABLE IF EXISTS `ProductOption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductOption` (
  `ProductOptionID` int(11) DEFAULT NULL,
  `ProductOptionNameID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductOption`
--

LOCK TABLES `ProductOption` WRITE;
/*!40000 ALTER TABLE `ProductOption` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProductOption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductOptionName`
--

DROP TABLE IF EXISTS `ProductOptionName`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductOptionName` (
  `ProductTypeId` int(11) DEFAULT NULL,
  `ProductOptionName` varchar(100) DEFAULT NULL,
  `ProductOptionNameID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductOptionName`
--

LOCK TABLES `ProductOptionName` WRITE;
/*!40000 ALTER TABLE `ProductOptionName` DISABLE KEYS */;
INSERT INTO `ProductOptionName` VALUES (100,NULL,NULL);
/*!40000 ALTER TABLE `ProductOptionName` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductOptionSelection`
--

DROP TABLE IF EXISTS `ProductOptionSelection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductOptionSelection` (
  `ProductOptionSelectionID` int(11) NOT NULL DEFAULT '0',
  `ProductOptionValue` varchar(100) DEFAULT NULL,
  `ProductOptionID` int(11) DEFAULT NULL,
  `ProductOptionNameID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProductOptionSelectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductOptionSelection`
--

LOCK TABLES `ProductOptionSelection` WRITE;
/*!40000 ALTER TABLE `ProductOptionSelection` DISABLE KEYS */;
INSERT INTO `ProductOptionSelection` VALUES (1,'27.5',NULL,NULL),(2,'25.5',NULL,NULL);
/*!40000 ALTER TABLE `ProductOptionSelection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductPriceTable`
--

DROP TABLE IF EXISTS `ProductPriceTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductPriceTable` (
  `Id` int(11) NOT NULL DEFAULT '0',
  `ProductId` int(11) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Msrp` float DEFAULT NULL,
  `dateAdded` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductPriceTable`
--

LOCK TABLES `ProductPriceTable` WRITE;
/*!40000 ALTER TABLE `ProductPriceTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProductPriceTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductTable`
--

DROP TABLE IF EXISTS `ProductTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductTable` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Weight` float DEFAULT NULL,
  `Height` float DEFAULT NULL,
  `Color` varchar(100) DEFAULT NULL,
  `Code` varchar(100) DEFAULT NULL,
  `Sku` varchar(100) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `DistributorId` int(11) DEFAULT NULL,
  `DatePurchased` varchar(100) DEFAULT NULL,
  `OriginalPrice` float DEFAULT NULL,
  `DateReceived` varchar(100) DEFAULT NULL,
  `Msrp` varchar(100) DEFAULT NULL,
  `ProductType` varchar(100) DEFAULT NULL,
  `DateShipped` varchar(100) DEFAULT NULL,
  `Manufacturer` varchar(100) DEFAULT NULL,
  `Brand` varchar(100) DEFAULT NULL,
  `Model` varchar(100) DEFAULT NULL,
  `YearModel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductTable`
--

LOCK TABLES `ProductTable` WRITE;
/*!40000 ALTER TABLE `ProductTable` DISABLE KEYS */;
INSERT INTO `ProductTable` VALUES (1,'Test','Description',11,1,'111','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Test','111',11,1,'111','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ProductTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductType`
--

DROP TABLE IF EXISTS `ProductType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductType` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(100) DEFAULT NULL,
  `DateAdded` int(100) DEFAULT NULL,
  `AddedBy` int(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductType`
--

LOCK TABLES `ProductType` WRITE;
/*!40000 ALTER TABLE `ProductType` DISABLE KEYS */;
INSERT INTO `ProductType` VALUES (200,'Description',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ProductType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PromoTable`
--

DROP TABLE IF EXISTS `PromoTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PromoTable` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `percentOff` float DEFAULT NULL,
  `DateAdded` varchar(100) DEFAULT NULL,
  `AddedBy` int(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PromoTable`
--

LOCK TABLES `PromoTable` WRITE;
/*!40000 ALTER TABLE `PromoTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `PromoTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaxRateTable`
--

DROP TABLE IF EXISTS `TaxRateTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaxRateTable` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `taxPercent` float DEFAULT NULL,
  `DateAdded` varchar(100) DEFAULT NULL,
  `AddedBy` int(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaxRateTable`
--

LOCK TABLES `TaxRateTable` WRITE;
/*!40000 ALTER TABLE `TaxRateTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `TaxRateTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserTable`
--

DROP TABLE IF EXISTS `UserTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserTable` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Username` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `ContactNo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserTable`
--

LOCK TABLES `UserTable` WRITE;
/*!40000 ALTER TABLE `UserTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-12  1:12:29

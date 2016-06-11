-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: presidents
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Current Database: `presidents`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `presidents` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `presidents`;

--
-- Table structure for table `president`
--

DROP TABLE IF EXISTS `president`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `president` (
  `presidentID` int(11) NOT NULL AUTO_INCREMENT,
  `presidentName` varchar(25) DEFAULT NULL,
  `presidentDescription` varchar(255) DEFAULT NULL,
  `whitehouseID` int(11) DEFAULT NULL,
  PRIMARY KEY (`presidentID`),
  KEY `whitehouseID` (`whitehouseID`),
  CONSTRAINT `president_ibfk_1` FOREIGN KEY (`whitehouseID`) REFERENCES `whitehouse` (`whitehouseID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `president`
--

LOCK TABLES `president` WRITE;
/*!40000 ALTER TABLE `president` DISABLE KEYS */;
INSERT INTO `president` VALUES (1,'',NULL,NULL),(2,'Home',NULL,NULL);
/*!40000 ALTER TABLE `president` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whitehouse`
--

DROP TABLE IF EXISTS `whitehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whitehouse` (
  `whitehouseID` int(11) NOT NULL AUTO_INCREMENT,
  `whitehouseName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`whitehouseID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whitehouse`
--

LOCK TABLES `whitehouse` WRITE;
/*!40000 ALTER TABLE `whitehouse` DISABLE KEYS */;
INSERT INTO `whitehouse` VALUES (1,''),(2,'Home');
/*!40000 ALTER TABLE `whitehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-11 13:20:33

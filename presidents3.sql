-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: Presidents
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
-- Current Database: `Presidents`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Presidents` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `Presidents`;

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `college` (
  `collegeID` int(11) NOT NULL AUTO_INCREMENT,
  `collegeName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`collegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES (1,'Columbia College of Colum'),(2,'Yale University'),(4,'collegeName'),(5,'None');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funding`
--

DROP TABLE IF EXISTS `funding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funding` (
  `presidentID` int(11) DEFAULT NULL,
  `eventID` int(11) DEFAULT NULL,
  `fundingMetadata` blob,
  UNIQUE KEY `pkFunding` (`presidentID`,`eventID`),
  KEY `eventID` (`eventID`),
  CONSTRAINT `funding_ibfk_1` FOREIGN KEY (`presidentID`) REFERENCES `president` (`presidentID`),
  CONSTRAINT `funding_ibfk_2` FOREIGN KEY (`eventID`) REFERENCES `futureevents` (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funding`
--

LOCK TABLES `funding` WRITE;
/*!40000 ALTER TABLE `funding` DISABLE KEYS */;
INSERT INTO `funding` VALUES (1,1,'1.01011E+12'),(2,1,'1.01011E+12'),(2,2,'1.01011E+12');
/*!40000 ALTER TABLE `funding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `futureevents`
--

DROP TABLE IF EXISTS `futureevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `futureevents` (
  `eventID` int(11) NOT NULL AUTO_INCREMENT,
  `eventName` varchar(55) DEFAULT NULL,
  `eventDescription` varchar(255) DEFAULT NULL,
  `eventDate` date DEFAULT NULL,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `futureevents`
--

LOCK TABLES `futureevents` WRITE;
/*!40000 ALTER TABLE `futureevents` DISABLE KEYS */;
INSERT INTO `futureevents` VALUES (1,'eventName','eventDescription','0000-00-00'),(2,'Stanford $450,000','Speech on gun control','0000-00-00'),(3,'Drexel $325,000','Speech on gay rights','0000-00-00'),(4,'Notre Dame $400,000','Speech on the war on drugs','0000-00-00'),(5,'Harvard Law $900,000','Speech on the automation of lawyers','0000-00-00');
/*!40000 ALTER TABLE `futureevents` ENABLE KEYS */;
UNLOCK TABLES;

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
  `collegeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`presidentID`),
  KEY `collegeID` (`collegeID`),
  CONSTRAINT `president_ibfk_1` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `president`
--

LOCK TABLES `president` WRITE;
/*!40000 ALTER TABLE `president` DISABLE KEYS */;
INSERT INTO `president` VALUES (1,'presidentName','presidentDescription',NULL),(2,'Washington','OG',NULL);
/*!40000 ALTER TABLE `president` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-02 12:30:02

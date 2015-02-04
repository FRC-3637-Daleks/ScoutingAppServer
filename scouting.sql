-- MySQL dump 10.13  Distrib 5.6.22, for Win64 (x86_64)
--
-- Host: localhost    Database: scouting
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matchNum` int(11) NOT NULL DEFAULT '0',
  `team` int(11) NOT NULL DEFAULT '0',
  `autoRobot` tinyint(1) NOT NULL DEFAULT '0',
  `autoStack` tinyint(1) NOT NULL DEFAULT '0',
  `autoTote` tinyint(1) NOT NULL DEFAULT '0',
  `autoCont` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`matchNum`,`team`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (6,1,3637,0,0,0,0),(8,2,3637,0,0,0,0),(9,1,1767,0,0,0,0);
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `matchNum` int(11) NOT NULL AUTO_INCREMENT,
  `R1` int(11) DEFAULT NULL,
  `R2` int(11) DEFAULT NULL,
  `R3` int(11) DEFAULT NULL,
  `B1` int(11) DEFAULT NULL,
  `B2` int(11) DEFAULT NULL,
  `B3` int(11) DEFAULT NULL,
  PRIMARY KEY (`matchNum`),
  UNIQUE KEY `matchNum_UNIQUE` (`matchNum`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (2,4,5,6,1,2,3),(4,4,5,6,1,2,3),(5,3637,5,6,1,2,3),(6,6,5,4,3,2,1),(7,1,2,3,4,5,6),(8,1,2,3,4,5,6),(9,1,2,3,4,5,6),(10,1,2,3,4,5,6),(11,1,2,3,4,5,6),(12,6,5,4,3,2,1),(13,1,2,3,4,5,6),(14,1,2,3,4,5,6),(15,1,2,3,4,5,6),(16,1,2,3,4,5,6),(17,1,2,3,4,5,6),(18,1,2,3,4,5,6),(19,1,2,3,4,5,6),(20,1,2,3,4,5,6),(21,1,2,3,4,5,6),(22,1,2,3,4,5,6),(23,1,2,3,4,5,6),(24,1,2,3,4,5,6),(25,1,2,3,4,5,6),(26,1,2,3,4,5,6),(27,1,2,3,4,5,6),(28,1,2,3,4,5,6),(29,1,2,3,4,5,6),(30,1,2,3,4,5,6),(31,1,2,3,4,5,6),(32,1,2,3,4,5,6),(33,1,2,3,4,5,6),(34,1,2,3,4,5,6),(35,1,2,3,4,5,6),(36,1,2,3,4,5,6),(37,1,2,3,4,5,6),(38,1,2,3,4,5,6),(39,1,2,3,4,5,6),(40,1,2,3,4,5,6),(41,1,2,3,4,5,6),(42,1,2,3,4,5,6),(43,1,2,3,4,5,6),(44,1,2,3,4,5,6),(45,1,2,3,4,5,6),(46,1,2,3,4,5,6),(47,1,2,3,4,5,6),(48,1,2,3,4,5,6),(49,1,2,3,4,5,6),(50,1,2,3,4,5,6),(51,1,2,3,4,5,6),(52,1,2,3,4,5,6);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `imageLoc` varchar(100) DEFAULT NULL,
  `wheelNumber` int(11) DEFAULT NULL,
  `wheelType` varchar(50) DEFAULT NULL,
  `liftType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`number`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `number_UNIQUE` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (2,3637,'Daleks','images/3637.jpg',NULL,NULL,NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-03 19:28:33

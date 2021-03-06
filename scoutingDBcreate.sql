-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
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
  `matchNum` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `autoRobot` tinyint(1) DEFAULT NULL,
  `autoTote` tinyint(1) DEFAULT NULL,
  `autoCan` tinyint(1) DEFAULT NULL,
  `startTL` tinyint(1) DEFAULT NULL,
  `startTM` tinyint(1) DEFAULT NULL,
  `startTR` tinyint(1) DEFAULT NULL,
  `startLL` tinyint(1) DEFAULT NULL,
  `startLM` tinyint(1) DEFAULT NULL,
  `startLR` tinyint(1) DEFAULT NULL,
  `styleHS` tinyint(1) DEFAULT NULL,
  `styleTopper` tinyint(1) DEFAULT NULL,
  `styleLitterCan` tinyint(1) DEFAULT NULL,
  `styleLandfill` tinyint(1) DEFAULT NULL,
  `styleThrow` tinyint(1) DEFAULT NULL,
  `styleSingleStack` tinyint(1) DEFAULT NULL,
  `styleMakeAtOnce` tinyint(1) DEFAULT NULL,
  `styleCanFromStep` tinyint(1) DEFAULT NULL,
  `coopTote` tinyint(1) DEFAULT NULL,
  `coopStep` int(11) DEFAULT NULL,
  `knockStack` tinyint(1) DEFAULT NULL,
  `dead` tinyint(1) DEFAULT NULL,
  `unstable` tinyint(1) DEFAULT NULL,
  `tip` tinyint(1) DEFAULT NULL,
  `comment` varchar(255) DEFAULT '',
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`matchNum`,`team`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `matchNum` int(11) NOT NULL AUTO_INCREMENT,
  `B1` int(11) DEFAULT NULL,
  `B2` int(11) DEFAULT NULL,
  `B3` int(11) DEFAULT NULL,
  `R1` int(11) DEFAULT NULL,
  `R2` int(11) DEFAULT NULL,
  `R3` int(11) DEFAULT NULL,
  PRIMARY KEY (`matchNum`),
  UNIQUE KEY `matchNum_UNIQUE` (`matchNum`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-12 23:08:03

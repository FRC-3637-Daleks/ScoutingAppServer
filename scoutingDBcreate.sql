CREATE DATABASE  IF NOT EXISTS `scouting` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `scouting`;
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
  `matchNum` int(11) NOT NULL DEFAULT '0',
  `team` int(11) NOT NULL DEFAULT '0',
  `autoRobot` tinyint(1) DEFAULT '0',
  `autoStack` int(11) DEFAULT '0',
  `autoVision` tinyint(1) DEFAULT '0',
  `autoDeadRec` tinyint(1) DEFAULT '0',
  `autoStep` tinyint(1) DEFAULT '0',
  `autoOverBump` tinyint(1) DEFAULT '0',
  `autoAroundBump` tinyint(1) DEFAULT '0',
  `overBump` tinyint(1) DEFAULT '0',
  `speed` int(11) DEFAULT '0',
  `dropTote` tinyint(1) DEFAULT '0',
  `knockStack` tinyint(1) DEFAULT '0',
  `litterCan` tinyint(1) DEFAULT '0',
  `litterUp` tinyint(1) DEFAULT '0',
  `litterPush` tinyint(1) DEFAULT '0',
  `totesCarried` int(11) DEFAULT '0',
  `diffOps` tinyint(1) DEFAULT '0',
  `upOrFlip` tinyint(1) DEFAULT '0',
  `onTopOf` int(11) DEFAULT '0',
  `pickUpSpeed` int(11) DEFAULT '0',
  `hpTotes` tinyint(1) DEFAULT '0',
  `hpLitter` tinyint(1) DEFAULT '0',
  `hpThrow` tinyint(1) DEFAULT '0',
  `canUp` tinyint(1) DEFAULT '0',
  `downHeight` int(11) DEFAULT '0',
  `takeCanFromStep` tinyint(1) DEFAULT '0',
  `canUpSpeed` int(11) DEFAULT '0',
  `canDiffOps` tinyint(1) DEFAULT '0',
  `canFromStepNoFill` tinyint(1) DEFAULT '0',
  `coopTote` tinyint(1) DEFAULT '0',
  `coopStep` int(11) DEFAULT '0',
  `failFunction` tinyint(1) DEFAULT '0',
  `fouls` tinyint(1) DEFAULT '0',
  `deadOnArrive` tinyint(1) DEFAULT '0',
  `tip` tinyint(1) DEFAULT '0',
  `commError` tinyint(1) DEFAULT '0',
  `shotty` tinyint(1) DEFAULT '0',
  `comment` varchar(200) DEFAULT NULL,
  `score` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`matchNum`,`team`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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

-- Dump completed on 2015-02-21  0:15:33

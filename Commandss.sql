-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: it_accademy
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `Laptops`
--

DROP TABLE IF EXISTS `Laptops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Laptops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devs_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `devs_id` (`devs_id`),
  CONSTRAINT `Laptops_ibfk_1` FOREIGN KEY (`devs_id`) REFERENCES `devs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Laptops`
--

LOCK TABLES `Laptops` WRITE;
/*!40000 ALTER TABLE `Laptops` DISABLE KEYS */;
/*!40000 ALTER TABLE `Laptops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devs`
--

DROP TABLE IF EXISTS `devs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birthday` date DEFAULT NULL,
  `gender` varchar(55) DEFAULT NULL,
  `id_promanag` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `promanag_dev_fk` (`id_promanag`),
  CONSTRAINT `promanag_dev_fk` FOREIGN KEY (`id_promanag`) REFERENCES `promanag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devs`
--

LOCK TABLES `devs` WRITE;
/*!40000 ALTER TABLE `devs` DISABLE KEYS */;
INSERT INTO `devs` VALUES (1,'Arstan','Ivanov','1999-04-08','male',1),(2,'Arman','Sadykov','1998-05-08','male',1),(3,'Jibek','Sadykova','1998-05-08','female',2),(4,'Nuriza','Iminova','1998-05-08','female',3),(6,'Nuriza','Iminova','1999-08-08','female',3),(7,'Cholpon','Shiminova','1995-05-08','female',4),(8,'Rasul','Shiminov','2000-05-08','male',4),(9,'Kristina','Smirnova','1990-05-08','female',4),(10,'Alex','Smirnov','1990-05-08','male',4),(11,'Ivan','Smirnovski','1989-05-08','male',3);
/*!40000 ALTER TABLE `devs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_project` varchar(255) DEFAULT NULL,
  `id_promanager` int(11) NOT NULL,
  `id_project` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_promanager` (`id_promanager`),
  KEY `id_project` (`id_project`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`id_promanager`) REFERENCES `promanag` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promanag`
--

DROP TABLE IF EXISTS `promanag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promanag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birthday` date DEFAULT NULL,
  `gender` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promanag`
--

LOCK TABLES `promanag` WRITE;
/*!40000 ALTER TABLE `promanag` DISABLE KEYS */;
INSERT INTO `promanag` VALUES (1,'Aman','Bekov','1976-02-03','male'),(2,'Bektur','Amanov','1977-05-08','male'),(3,'Aliya','Ivanovna','1999-04-08','female'),(4,'Sooronbai','Amanov','1977-05-08','male');
/*!40000 ALTER TABLE `promanag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-04 12:29:53

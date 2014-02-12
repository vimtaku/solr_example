-- MySQL dump 10.13  Distrib 5.6.16, for osx10.9 (x86_64)
--
-- Host: localhost    Database: solrsample
-- ------------------------------------------------------
-- Server version	5.6.16-log

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
-- Table structure for table `chef_mst`
--

DROP TABLE IF EXISTS `chef_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chef_mst` (
  `chef_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `recipe_id` int(10) NOT NULL DEFAULT '5',
  `json` text,
  PRIMARY KEY (`chef_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_mst`
--

LOCK TABLES `chef_mst` WRITE;
/*!40000 ALTER TABLE `chef_mst` DISABLE KEYS */;
INSERT INTO `chef_mst` VALUES (1,'saaan',1,'{\"key\":\"value\"}'),(2,'saaan',2,'{\"key\":\"value\"}'),(3,'saaan',3,'{\"key\":\"value\"}');
/*!40000 ALTER TABLE `chef_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_mst`
--

DROP TABLE IF EXISTS `genre_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre_mst` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_mst`
--

LOCK TABLES `genre_mst` WRITE;
/*!40000 ALTER TABLE `genre_mst` DISABLE KEYS */;
INSERT INTO `genre_mst` VALUES (1,'もげ'),(2,'洋食'),(3,'中華');
/*!40000 ALTER TABLE `genre_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moge`
--

DROP TABLE IF EXISTS `moge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moge` (
  `recipe_id` int(11) NOT NULL AUTO_INCREMENT,
  `chef_id` int(11) DEFAULT NULL,
  `recipe_name` text,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moge`
--

LOCK TABLES `moge` WRITE;
/*!40000 ALTER TABLE `moge` DISABLE KEYS */;
INSERT INTO `moge` VALUES (1,1,'vim の野菜炒め',980),(2,2,'emacs 焼き',500),(3,3,'sublime 揚げ',250);
/*!40000 ALTER TABLE `moge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_genre_rel`
--

DROP TABLE IF EXISTS `recipe_genre_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_genre_rel` (
  `recipe_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_genre_rel`
--

LOCK TABLES `recipe_genre_rel` WRITE;
/*!40000 ALTER TABLE `recipe_genre_rel` DISABLE KEYS */;
INSERT INTO `recipe_genre_rel` VALUES (1,1),(1,2),(2,1),(2,2),(2,3),(3,1);
/*!40000 ALTER TABLE `recipe_genre_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_mst`
--

DROP TABLE IF EXISTS `recipe_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_mst` (
  `recipe_id` int(11) NOT NULL AUTO_INCREMENT,
  `chef_id` int(11) DEFAULT NULL,
  `recipe_name` text,
  `price` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `genre_json` text,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_mst`
--

LOCK TABLES `recipe_mst` WRITE;
/*!40000 ALTER TABLE `recipe_mst` DISABLE KEYS */;
INSERT INTO `recipe_mst` VALUES (1,1,'vim の野菜炒め',1040,'2014-02-07 14:29:04','2014-02-12 15:43:41','{\"key\":\"value\"}'),(2,2,'emacs 焼き',500,'2014-02-07 14:29:04','2014-02-12 15:43:41','{\"key\":\"value\"}'),(3,3,'sublime 揚げ',250,'2014-02-07 14:29:04','2014-02-12 15:43:41','{\"key\":\"value\"}');
/*!40000 ALTER TABLE `recipe_mst` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-12 16:34:08

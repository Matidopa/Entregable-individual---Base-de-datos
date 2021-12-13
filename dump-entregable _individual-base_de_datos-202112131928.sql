-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: entregable _individual-base_de_datos
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'CSS'),(2,'C++'),(3,'Java'),(4,'Javascript'),(5,'Python'),(6,'PHP'),(7,'C#'),(8,'R'),(9,'Objective-C'),(10,'Swift');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `TITLE` varchar(100) NOT NULL,
  `CREATED` date NOT NULL,
  `MODIFIED` date NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `DELETED` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `notas_FK` (`USER_ID`),
  CONSTRAINT `notas_FK` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (1,2,'mejor programa de programacion','2021-12-12','2021-12-12','programar tiene muchas dificultades ...',0),(2,6,'dificultades de programar','2021-12-12','2021-12-12','programar es algo hermoso ...',0),(3,1,'programar inicio','2021-12-12','2021-12-12','nota siobre porrgamacion ...',0),(4,3,'programar intermedio','2021-12-12','2021-12-12','porgramacion intermedia nota ...',0),(5,9,'programar dificil','2021-12-12','2021-12-12','la programcion nivel dificil es muy divertida ...',0),(6,10,'programar adultos 1','2021-12-12','2021-12-12','esta nota habla sopbre el nivel unop de porgrmacion para dultos...',0),(7,1,'programar adultos 2','2021-12-12','2021-12-12','programcion para dultos 2 es un poco mas dificil que el unio pero no tanto..',0),(8,5,'programar adultos 3','2021-12-12','2021-12-12','programacion para dultos 3 es un poco mas facil que porgrmacion para dultos 2',0),(9,7,'programar adultos 4','2021-12-12','2021-12-12','este lenguaje de programacion es muy divertido, aprender mas sobre el..',0),(10,1,'programar adultos 5','2021-12-12','2021-12-12','la progrmacion puede ser dificil pero nos permite ahcer grandes cosas..',0);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_category`
--

DROP TABLE IF EXISTS `note_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOTED_ID` int(11) NOT NULL,
  `CATEGORY_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `notas_categorias_FK` (`NOTED_ID`),
  KEY `notas_categorias_FK_1` (`CATEGORY_ID`),
  CONSTRAINT `notas_categorias_FK` FOREIGN KEY (`NOTED_ID`) REFERENCES `note` (`id`),
  CONSTRAINT `notas_categorias_FK_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_category`
--

LOCK TABLES `note_category` WRITE;
/*!40000 ALTER TABLE `note_category` DISABLE KEYS */;
INSERT INTO `note_category` VALUES (1,1,5),(2,2,2),(3,3,9),(4,4,3),(5,5,8),(6,6,4),(7,7,7),(8,8,1),(9,9,10),(10,10,5);
/*!40000 ALTER TABLE `note_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(50) NOT NULL,
  `USEREMAIL` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Juan Francisco','Juanfrancisco@gmail.com'),(2,'Lautaro','lautaro@gmail.com'),(3,'Alberto','alberto@gmail.com'),(4,'Monica','monica@gmail.com'),(5,'Catalina','catalina@gmail.com'),(6,'Sol','sol@gmail.com'),(7,'Bautista','bautista@gmail.com'),(8,'Matias','matias@gmail.com'),(9,'Javier','javier@gmail.com'),(10,'Renata','renata@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'entregable_individual-base_de_datos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-13 19:28:50

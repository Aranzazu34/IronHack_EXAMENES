-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: inmobiliaria_aranzazu
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `casas`
--

DROP TABLE IF EXISTS `casas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casas` (
  `id_casa` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(150) NOT NULL,
  `precio` float DEFAULT NULL,
  `anno_construccion` int(11) DEFAULT NULL,
  `id_propietarios` int(11) NOT NULL,
  PRIMARY KEY (`id_casa`,`id_propietarios`),
  KEY `fk_casas_propietarios_idx` (`id_propietarios`),
  CONSTRAINT `fk_casas_propietarios` FOREIGN KEY (`id_propietarios`) REFERENCES `propietarios` (`id_propietarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casas`
--

LOCK TABLES `casas` WRITE;
/*!40000 ALTER TABLE `casas` DISABLE KEYS */;
INSERT INTO `casas` VALUES (1,'C/ Aberastuiri, 23',345000,2010,3),(2,'C/ Amapolas, 2',345000,2010,1),(3,'Av/ La Castellana, 45',500000,2022,3),(4,'C/ Pomer, 4',45000,1998,4),(5,'C/ Tallers, 12',145000,2075,2);
/*!40000 ALTER TABLE `casas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietarios`
--

DROP TABLE IF EXISTS `propietarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propietarios` (
  `id_propietarios` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_propietarios`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietarios`
--

LOCK TABLES `propietarios` WRITE;
/*!40000 ALTER TABLE `propietarios` DISABLE KEYS */;
INSERT INTO `propietarios` VALUES (1,'Andrés','Cuadrado','acuadrado@gmail.com'),(2,'Marga','Rodriguez','mrodriguez@gmail.com'),(3,'Mateo','Sanchís','msanchis@idcat.cat'),(4,'Beatriz','Sopela','bsopela@webex.com'),(5,'Marian','Salmerón','msalmeron@gmail.com');
/*!40000 ALTER TABLE `propietarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-05 17:43:43

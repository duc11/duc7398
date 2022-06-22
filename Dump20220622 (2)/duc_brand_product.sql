-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: duc
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `brand_product`
--

DROP TABLE IF EXISTS `brand_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_product` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `brand_id` bigint NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FKl41292v5s6hyrjaold3j1fu2m` (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_product`
--

LOCK TABLES `brand_product` WRITE;
/*!40000 ALTER TABLE `brand_product` DISABLE KEYS */;
INSERT INTO `brand_product` VALUES (1,4),(2,1),(3,4),(4,4),(5,1),(6,2),(7,3),(8,3),(9,1),(10,4),(11,1),(12,2),(13,4),(14,2),(15,4),(16,2),(17,4),(18,4),(19,4),(20,1),(21,2),(22,2),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,4),(30,4),(31,4),(32,2),(33,2),(34,3),(35,4),(36,4),(37,1),(38,4),(39,4),(40,3),(41,3),(42,2),(43,2),(44,4),(45,4),(46,1),(47,1),(48,1),(49,1),(50,1),(51,4),(52,4),(53,4),(54,3),(55,3),(56,2),(57,2),(58,2),(59,2),(60,3),(61,4),(62,4),(63,4),(64,4);
/*!40000 ALTER TABLE `brand_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-22 15:04:27

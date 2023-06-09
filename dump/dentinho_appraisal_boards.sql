-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dentinho
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `appraisal_boards`
--

DROP TABLE IF EXISTS `appraisal_boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appraisal_boards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appraisal_boards`
--

LOCK TABLES `appraisal_boards` WRITE;
/*!40000 ALTER TABLE `appraisal_boards` DISABLE KEYS */;
INSERT INTO `appraisal_boards` VALUES (1,'Vunesp','2022-08-24 01:07:10.325',NULL,NULL,NULL),(2,'Instituto Zambini','2022-08-24 01:07:10.325',NULL,NULL,NULL),(3,'Publiconsult','2022-08-24 01:07:10.325',NULL,NULL,NULL),(10,'COSEAC - UFF','2022-08-24 01:07:10.325',NULL,NULL,NULL),(15,'RBO','2022-08-24 01:07:10.325',NULL,NULL,NULL),(16,'IBAM','2022-08-24 01:07:10.325',NULL,NULL,NULL),(17,'CONSESP','2022-08-24 01:07:10.325',NULL,NULL,NULL),(18,'PM - SP','2022-08-24 01:07:10.325',NULL,NULL,NULL),(19,'FGV','2022-08-24 01:07:10.325',NULL,NULL,NULL),(20,'FUNDAÇÂO FAFIPA','2022-08-24 01:07:10.325',NULL,NULL,NULL),(21,'CONSULPLAN','2022-08-24 01:07:10.325',NULL,NULL,NULL),(22,'CEPERJ','2022-08-24 01:07:10.325',NULL,NULL,NULL),(23,'IBFC','2022-08-24 01:07:10.325',NULL,NULL,NULL),(29,'SEM BANCA','2022-08-24 01:07:10.325',NULL,NULL,NULL);
/*!40000 ALTER TABLE `appraisal_boards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23 22:12:25

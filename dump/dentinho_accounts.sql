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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'yasmin','yamana@gmail.com',NULL,'oitatanaa','2023-04-08 18:36:25','2023-04-08 18:36:25'),(2,'raphael','rr',NULL,'oitatanaa','2023-04-08 18:36:41','2023-04-09 15:32:35'),(3,'yasmin','yamana@gmail.com',NULL,'oitatanaa','2023-04-08 18:36:42','2023-04-08 18:36:42'),(4,'asdfasf','asda sd asd',NULL,'asdasdasda','2023-04-08 18:50:28','2023-04-08 18:50:28'),(5,'asdfasf','asda sd asd',NULL,'asdasdasda','2023-04-08 18:50:31','2023-04-08 18:50:31'),(6,'yasmin',NULL,NULL,NULL,'2023-04-08 18:57:48','2023-04-08 18:57:48'),(7,'asdfasf','asda sd asd',NULL,'$2b$10$a/0Uz8z9zIaj2Ngk0ATXOe0Tuksr83lnH1YqYn6YNvI3lgfH1X75m','2023-04-09 17:21:32','2023-04-09 17:21:32'),(8,'jorge','jorgelucas',NULL,'$2b$10$ULEaXMOMFh5ztAuSmexaSeLFpmw54nAAii8npjbGwdHkd2iEFXTzW','2023-04-09 17:26:46','2023-04-09 17:26:46'),(9,'raphael','rr@sadfa.com',NULL,'$2b$10$Y16BYjP5dvvoVRiEs5GaUeTGFCULMGnhLwC6dd3pVBwYjZNP9LbAi','2023-04-12 23:46:11','2023-04-12 23:46:11'),(10,'raphae','rr@sada.com',NULL,'$2b$10$2V.d3kaxYjcDvzhOwvx.VueUg75tYgNCQ.w17WQ4AYkc5yrjqKhoe','2023-04-12 23:50:13','2023-04-12 23:50:13');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23 22:12:24

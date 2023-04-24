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
-- Table structure for table `disciplines`
--

DROP TABLE IF EXISTS `disciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL,
  `image` varchar(191) NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplines`
--

LOCK TABLES `disciplines` WRITE;
/*!40000 ALTER TABLE `disciplines` DISABLE KEYS */;
INSERT INTO `disciplines` VALUES (1,'Anatomia','2022-09-19 23:43:31.434',NULL,'/icons/037-tooth.svg',18),(2,'Anestesiologia','2022-09-19 23:43:31.434',NULL,'/icons/008-syringe.svg',15),(3,'Atualidades','2022-09-19 23:43:31.434',NULL,'/icons/042-dental.svg',23),(4,'Biossegurança','2022-09-19 23:43:31.434',NULL,'/icons/016-prevention.svg',10),(5,'Cirurgia','2022-09-19 23:43:31.434',NULL,'/icons/008-syringe.svg',8),(6,'Dentística','2022-09-19 23:43:31.434',NULL,'/icons/013-dentist.svg',7),(7,'DTM','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/050-smile.svg',0),(8,'Endodontia','2022-09-19 23:43:31.434',NULL,'/icons/030-dental.svg',9),(9,'Ergonomia','2022-09-19 23:43:31.434',NULL,'/icons/013-dentist.svg',19),(10,'Estomatologia e Patologia Bucal','2022-09-19 23:43:31.434',NULL,'/icons/040-oral.svg',2),(11,'Farmacologia','2022-09-19 23:43:31.434',NULL,'/icons/038-pain-killer.svg',3),(12,'Imaginologia','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/039-dental.svg',0),(13,'Implantodontia','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/033-veneer.svg',0),(14,'Informática','2022-09-19 23:43:31.434',NULL,'/icons/034-false-teeth.svg',21),(15,'Laser','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/011-dental.svg',0),(16,'Língua Portuguesa','2022-09-19 23:43:31.434',NULL,'/icons/002-dentist.svg',20),(17,'Matemática','2022-09-19 23:43:31.434',NULL,'/icons/Matematica.svg',22),(19,'Odontologia Legal','2022-09-19 23:43:31.434',NULL,'/icons/037-like.svg',14),(20,'Odontologia Preventiva','2022-09-19 23:43:31.434',NULL,'/icons/027-dental.svg',5),(21,'Odontopediatria','2022-09-19 23:43:31.434',NULL,'/icons/032-bacteria.svg',6),(22,'Ortodontia','2022-09-19 23:43:31.434',NULL,'/icons/023-braces.svg',17),(23,'Pacientes Especiais','2022-09-19 23:43:31.434',NULL,'/icons/049-oral.svg',13),(24,'Periodontia','2022-09-19 23:43:31.434',NULL,'/icons/029-healthy-tooth.svg',11),(25,'Prótese','2022-09-19 23:43:31.434',NULL,'/icons/024-bridges.svg',16),(26,'Raciocínio Logico','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/014-dentist.svg',0),(27,'Radiologia','2022-09-19 23:43:31.434',NULL,'/icons/039-dental.svg',12),(28,'Saúde Coletiva','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/025-implant.svg',0),(32,'Anestesiologia e Cirurgia','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/008-syringe.svg',0),(33,'Estomatologia','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/041-prescription.svg',0),(34,'Odontopediatria e Cariologia','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/048-no-sugar.svg',0),(35,'Saúde Pública','2022-09-19 23:43:31.434',NULL,'/icons/014-dental.svg',1),(36,'Raciocínio Lógico e Matemática','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/042-search.svg',0),(38,'Lesões Dentárias não Cariosas','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/029-healthy-tooth.svg',0),(39,'Legislação','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/008-certification.svg',0),(40,'Traumatologia','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/018-caries.svg',0),(41,'Cariologia','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/028-calculus.svg',0),(42,'Legislação Aplicada a EBSERH','2022-09-19 23:43:31.434','2022-09-07 22:05:07.504','/icons/029-certificate.svg',0);
/*!40000 ALTER TABLE `disciplines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23 22:12:26

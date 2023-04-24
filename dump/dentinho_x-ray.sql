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
-- Table structure for table `x-ray`
--

DROP TABLE IF EXISTS `x-ray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x-ray` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discipline_id` int NOT NULL,
  `number_of_questions` int NOT NULL,
  `maximum_duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_percentage_for_approval` int NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_at` datetime(3) DEFAULT NULL,
  `expire_in` datetime(3) DEFAULT NULL,
  `end_at` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL,
  `updated_at` datetime(3) NOT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `player_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x-ray`
--

LOCK TABLES `x-ray` WRITE;
/*!40000 ALTER TABLE `x-ray` DISABLE KEYS */;
INSERT INTO `x-ray` VALUES ('040a60f2-d9db-4f0d-8f58-390b23f796bc',2,30,'120m',1,'DISAPPROVED','2022-09-13 23:24:03.095','2022-09-14 01:23:23.716','2022-09-13 23:27:38.808','2022-09-13 23:23:23.715','2022-09-13 23:27:38.843',NULL,'9MVYxYSmswZaOyOda2ZQdCkmALw1'),('04e55192-4c48-4d3c-a0ee-e3cbc86b4470',2,30,'120m',51,'IN_PROGRESS','2022-09-15 18:20:07.609','2022-09-15 20:20:07.609',NULL,'2022-09-15 18:20:01.310','2022-09-15 18:20:01.310',NULL,'iiq5LZyGF9RSze9TY4XunI2idE03'),('0a2d966b-38fa-4d01-ade0-ab104f2fc063',35,30,'120m',1,'IN_PROGRESS','2022-09-27 13:16:44.768','2022-09-27 15:16:44.768',NULL,'2022-09-27 13:16:39.831','2022-09-27 13:16:39.831',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('10813669-da90-47f4-a723-899dc1bd4b13',1,30,'120m',51,'IN_PROGRESS','2022-09-14 15:52:57.039','2022-09-13 18:57:29.505',NULL,'2022-09-13 16:57:29.505','2022-09-13 16:57:29.505',NULL,'9MVYxYSmswZaOyOda2ZQdCkmALw1'),('11fbbbff-7fdf-447f-a535-60447f58da25',1,30,'120m',51,'WAITING','2022-09-14 15:52:57.039','2022-09-15 20:07:04.230',NULL,'2022-09-15 18:06:59.363','2022-09-15 18:06:59.363',NULL,'iiq5LZyGF9RSze9TY4XunI2idE03'),('13fc1c0d-668a-4a56-8709-39c702ba8488',10,30,'120m',1,'IN_PROGRESS','2022-09-27 01:42:16.506','2022-09-27 03:42:16.506',NULL,'2022-09-27 01:42:09.074','2022-09-27 01:42:09.074',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('22212cf7-6125-47e6-b9b9-6d06ac27a971',2,30,'120m',51,'IN_PROGRESS','2022-09-14 02:28:05.077','2022-09-14 04:27:57.509',NULL,'2022-09-14 02:27:57.509','2022-09-14 02:27:57.509',NULL,'iiq5LZyGF9RSze9TY4XunI2idE03'),('2b0931e6-a611-4d89-a2bd-0d8c2dd63782',3,30,'120m',0,'IN_PROGRESS','2022-09-13 02:11:59.854','2022-09-13 04:11:17.995',NULL,'2022-09-13 02:11:17.995','2022-09-13 02:11:17.995',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('2b9eb0bf-ae0b-4230-a41a-a4f0387b813d',2,30,'120m',51,'IN_PROGRESS','2022-09-15 18:19:22.595','2022-09-15 20:19:22.595',NULL,'2022-09-15 18:19:17.912','2022-09-15 18:19:17.912',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('2d04e5ef-fc7d-45ad-880c-1480ce2746d3',2,30,'120m',1,'APPROVED','2022-09-14 00:15:20.099','2022-09-14 02:15:08.705','2022-09-14 00:18:32.709','2022-09-14 00:15:08.704','2022-09-14 00:18:32.711',NULL,'9MVYxYSmswZaOyOda2ZQdCkmALw1'),('32bb4815-60f1-476e-8557-a77024f14754',10,10,'120m',1,'APPROVED','2022-09-27 23:49:39.366','2022-09-28 01:49:39.366','2022-09-28 00:15:34.256','2022-09-27 23:49:39.256','2022-09-28 00:15:34.256',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('343257fb-1eb2-44a0-a15e-3c6aa9a6515b',1,30,'120m',0,'WAITING',NULL,'2022-09-13 04:11:49.012',NULL,'2022-09-13 02:11:49.012','2022-09-13 02:11:49.012',NULL,'9MVYxYSmswZaOyOda2ZQdCkmALw1'),('3dd90e87-fec4-4089-8f2d-534607e59c91',2,30,'120m',0,'IN_PROGRESS','2022-09-13 02:03:12.840','2022-09-13 04:03:06.515',NULL,'2022-09-13 02:03:06.515','2022-09-13 02:03:06.515',NULL,'iiq5LZyGF9RSze9TY4XunI2idE03'),('3fe53848-6f68-42a4-8894-c8e184a94759',3,30,'120m',51,'IN_PROGRESS','2022-09-14 19:07:02.693','2022-09-14 21:06:51.225',NULL,'2022-09-14 19:06:51.225','2022-09-14 19:06:51.225',NULL,'hjDgzLzid5Uyxk5pVQwNkxAmaiv2'),('4240852b-134a-4863-b1c9-7a6071437eb6',10,10,'120m',1,'IN_PROGRESS','2022-09-27 12:16:04.553','2022-09-27 14:16:04.553',NULL,'2022-09-27 12:16:04.451','2022-09-27 12:16:04.451',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('424ba2c4-4887-4897-a51b-6e3feac4701e',2,30,'120m',0,'WAITING',NULL,'2022-09-13 04:11:13.586',NULL,'2022-09-13 02:11:13.586','2022-09-13 02:11:13.586',NULL,'9MVYxYSmswZaOyOda2ZQdCkmALw1'),('47a22037-13d9-47b7-9f10-e106b9d13a5f',1,30,'120m',51,'APPROVED','2022-09-15 18:39:52.852','2022-09-15 22:39:52.852','2022-09-15 20:48:27.714','2022-09-15 18:39:47.727','2022-09-15 20:48:27.714',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('47e65f18-b34a-4baa-bb51-cb1c61fe0ba5',10,30,'120m',1,'IN_PROGRESS','2022-09-27 13:20:07.320','2022-09-27 15:20:07.320',NULL,'2022-09-27 13:20:02.546','2022-09-27 13:20:02.546',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('4c858278-b5a3-41c0-b007-521bfb7d98f8',3,30,'120m',51,'IN_PROGRESS','2022-09-15 18:21:54.799','2022-09-15 20:21:54.799',NULL,'2022-09-15 18:21:47.497','2022-09-15 18:21:47.497',NULL,'iiq5LZyGF9RSze9TY4XunI2idE03'),('4f64324a-92e9-480f-b434-64d32855937a',3,30,'120m',0,'WAITING',NULL,'2022-09-13 04:10:14.560',NULL,'2022-09-13 02:10:14.560','2022-09-13 02:10:14.560',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('5361dacf-1ebd-4c48-8c2e-4077f6535027',11,30,'120m',1,'APPROVED','2022-09-27 01:38:40.695','2022-09-27 03:38:40.695','2022-09-27 01:40:07.655','2022-09-27 01:38:33.656','2022-09-27 01:40:07.656',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('5533025d-a6de-4264-a83e-d8d489a7c313',3,30,'120m',51,'DISAPPROVED','2022-09-14 01:50:13.712','2022-09-14 03:50:03.635','2022-09-14 01:50:47.144','2022-09-14 01:50:03.635','2022-09-14 01:50:47.144',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('5a615e25-bd52-4f4d-a245-f5dc7efce0bd',2,30,'120m',51,'DISAPPROVED','2022-09-15 18:37:30.237','2022-09-15 20:37:30.237','2022-09-15 18:39:01.775','2022-09-15 18:37:24.604','2022-09-15 18:39:01.776',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('5bad725d-adf0-4f2e-b39d-6c7c841e5dc7',11,30,'120m',1,'APPROVED','2022-09-27 12:28:22.786','2022-09-27 14:28:22.786','2022-09-27 12:29:09.424','2022-09-27 12:28:13.632','2022-09-27 12:29:09.425',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('5ca45236-ab90-4cde-a2de-bc8075d1395d',2,30,'120m',0,'IN_PROGRESS','2022-09-13 02:18:58.941','2022-09-13 04:18:50.365',NULL,'2022-09-13 02:18:50.364','2022-09-13 02:18:50.364',NULL,'iiq5LZyGF9RSze9TY4XunI2idE03'),('6d591b4b-e24c-4e96-8897-2f2ec7cc879c',1,30,'120m',0,'IN_PROGRESS','2022-09-13 01:54:04.975','2022-09-13 03:53:46.746',NULL,'2022-09-13 01:53:46.746','2022-09-13 01:53:46.746',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('6de9dbda-b3b6-4f5b-8768-4408e615d8b9',1,30,'120m',51,'IN_PROGRESS','2022-09-14 18:19:47.760','2022-09-14 20:19:25.171',NULL,'2022-09-14 18:19:25.171','2022-09-14 18:19:25.171',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('7096430d-f7a3-49ef-b8cf-70c2763da276',3,30,'120m',0,'IN_PROGRESS','2022-09-13 02:51:10.685','2022-09-13 04:20:22.034',NULL,'2022-09-13 02:20:22.034','2022-09-13 02:20:22.034',NULL,'iiq5LZyGF9RSze9TY4XunI2idE03'),('7866adc4-be51-423a-9994-676549370612',3,30,'120m',0,'IN_PROGRESS','2022-09-13 02:46:40.087','2022-09-13 04:46:07.138',NULL,'2022-09-13 02:46:07.138','2022-09-13 02:46:07.138',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('78eff131-8f57-41f8-9ea3-b23a2fef1251',3,30,'120m',51,'APPROVED','2022-09-14 01:58:41.760','2022-09-14 03:58:28.806','2022-09-14 02:06:33.391','2022-09-14 01:58:28.806','2022-09-14 02:06:33.392',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('8a90ca93-ef99-423a-a2d9-19acc6c7d217',2,30,'120m',1,'APPROVED','2022-09-13 23:49:25.461','2022-09-14 01:49:17.500','2022-09-13 23:49:36.695','2022-09-13 23:49:17.499','2022-09-13 23:49:36.696',NULL,'9MVYxYSmswZaOyOda2ZQdCkmALw1'),('8b309a85-2f5d-4a08-9c79-0fad1e7951c9',1,30,'120m',0,'IN_PROGRESS','2022-09-13 01:21:13.146','2022-09-13 03:19:55.525',NULL,'2022-09-13 01:19:55.525','2022-09-13 01:19:55.525',NULL,'9MVYxYSmswZaOyOda2ZQdCkmALw1'),('91d2ea57-79ff-4f28-a190-8b8e5db6f61f',2,30,'120m',51,'IN_PROGRESS','2022-09-15 18:24:48.422','2022-09-15 20:24:48.422',NULL,'2022-09-15 18:24:44.179','2022-09-15 18:24:44.179',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('91e95d03-4504-4fef-8694-feb0dc18c981',2,30,'120m',51,'IN_PROGRESS','2022-09-14 19:02:14.657','2022-09-14 21:01:54.328',NULL,'2022-09-14 19:01:54.328','2022-09-14 19:01:54.328',NULL,'hjDgzLzid5Uyxk5pVQwNkxAmaiv2'),('96354397-3b92-4da3-a23a-12f271d4a805',10,30,'120m',1,'IN_PROGRESS','2022-09-27 01:47:30.885','2022-09-27 03:47:30.885',NULL,'2022-09-27 01:47:25.195','2022-09-27 01:47:25.195',NULL,'iiq5LZyGF9RSze9TY4XunI2idE03'),('96e4b6d0-8723-4553-8cc5-b10f62b83107',2,30,'120m',51,'IN_PROGRESS','2022-09-15 03:39:01.106','2022-09-15 05:39:01.106',NULL,'2022-09-15 03:38:55.877','2022-09-15 03:38:55.877',NULL,'9MVYxYSmswZaOyOda2ZQdCkmALw1'),('9aa7e82b-09be-4a39-b02e-9b9db80aedc6',2,30,'120m',1,'APPROVED','2022-09-13 23:33:11.774','2022-09-14 01:33:05.378','2022-09-13 23:36:18.368','2022-09-13 23:33:05.377','2022-09-13 23:36:18.376',NULL,'9MVYxYSmswZaOyOda2ZQdCkmALw1'),('a23851cb-47af-4440-98da-787556b9679b',1,30,'120m',51,'WAITING',NULL,'2022-09-15 20:00:33.202',NULL,'2022-09-15 18:00:26.622','2022-09-15 18:00:26.622',NULL,'iiq5LZyGF9RSze9TY4XunI2idE03'),('b265593f-077b-4a4e-b5eb-61343b286ace',3,30,'120m',51,'DISAPPROVED','2022-09-15 18:26:32.604','2022-09-15 20:26:32.604','2022-09-15 18:30:01.659','2022-09-15 18:26:29.228','2022-09-15 18:30:01.659',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('bc943e6c-0e82-4151-acce-e5f5981eeb2f',3,30,'120m',51,'DISAPPROVED','2022-09-14 17:49:35.788','2022-09-14 19:49:30.635','2022-09-14 17:52:12.449','2022-09-14 17:49:30.635','2022-09-14 17:52:12.450',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('c0c821ed-6dd5-4794-a355-b0bf2626f09a',35,10,'120m',1,'IN_PROGRESS','2022-09-27 23:46:43.811','2022-09-28 01:46:43.811',NULL,'2022-09-27 23:46:43.699','2022-09-27 23:46:43.699',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('c21b7b55-6b5c-4b5c-9c88-61228213a94a',11,30,'120m',1,'APPROVED','2022-09-27 12:24:02.098','2022-09-27 14:24:02.098','2022-09-27 12:24:57.199','2022-09-27 12:23:57.060','2022-09-27 12:24:57.200',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('c6217b9a-f32d-40cc-a2f3-9ab2f2049bcb',11,30,'120m',1,'APPROVED','2022-09-27 12:31:52.046','2022-09-27 14:31:52.046','2022-09-27 12:32:52.317','2022-09-27 12:31:46.611','2022-09-27 12:32:52.317',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('c770e96b-5532-4db0-bbac-7b5368207a84',2,30,'120m',1,'APPROVED','2022-09-13 23:45:08.510','2022-09-14 01:45:03.334','2022-09-13 23:45:33.059','2022-09-13 23:45:03.333','2022-09-13 23:45:33.060',NULL,'9MVYxYSmswZaOyOda2ZQdCkmALw1'),('cc1e287a-5c0c-497b-9098-83e2c44c78cc',2,30,'120m',51,'DISAPPROVED','2022-09-15 03:49:25.137','2022-09-15 05:49:25.137','2022-09-15 03:49:44.159','2022-09-15 03:49:19.164','2022-09-15 03:49:44.160',NULL,'9MVYxYSmswZaOyOda2ZQdCkmALw1'),('d583abbd-aa7d-4489-9901-e04ed149922a',2,30,'120m',51,'IN_PROGRESS','2022-09-15 18:06:49.026','2022-09-15 20:06:49.026',NULL,'2022-09-15 18:06:42.220','2022-09-15 18:06:42.220',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('d7aa4d1f-7fff-42db-92e8-190abdaf3a38',3,30,'120m',51,'IN_PROGRESS','2022-09-14 17:51:35.098','2022-09-14 19:51:29.192',NULL,'2022-09-14 17:51:29.192','2022-09-14 17:51:29.192',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('dc0e4dd2-5746-4e63-bf2b-6a42d95afd3b',35,30,'120m',1,'APPROVED','2022-09-30 14:36:33.785','2022-09-30 16:36:33.785','2022-09-30 15:24:15.240','2022-09-30 14:36:25.775','2022-09-30 15:24:15.240',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('e4e6aefd-a58a-40d8-b30a-ab10a2e2e35a',3,30,'120m',0,'WAITING',NULL,'2022-09-13 04:19:57.284',NULL,'2022-09-13 02:19:57.284','2022-09-13 02:19:57.284',NULL,'iiq5LZyGF9RSze9TY4XunI2idE03'),('e6352be4-19bc-4201-9304-5e4f8cb70d3f',2,30,'120m',0,'IN_PROGRESS','2022-09-13 02:35:37.506','2022-09-13 04:32:50.969',NULL,'2022-09-13 02:32:50.968','2022-09-13 02:32:50.968',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('e8a386c6-ff36-4a79-8ced-debea51f8bc5',1,30,'120m',0,'IN_PROGRESS','2022-09-13 02:00:55.180','2022-09-13 04:00:36.207',NULL,'2022-09-13 02:00:36.206','2022-09-13 02:00:36.206',NULL,'iiq5LZyGF9RSze9TY4XunI2idE03'),('eb030eb5-ad38-4796-b5df-02c286f82a8d',11,30,'120m',1,'APPROVED','2022-09-30 00:50:31.181','2022-09-30 02:50:31.181','2022-09-30 00:51:39.934','2022-09-30 00:50:24.898','2022-09-30 00:51:39.934',NULL,'q2jkf9rORIaprFTL3KVh1QALotV2'),('f2a63937-913d-48a4-b564-0e139e947a35',1,30,'120m',0,'IN_PROGRESS','2022-09-13 02:44:08.219','2022-09-13 04:33:50.461',NULL,'2022-09-13 02:33:50.461','2022-09-13 02:33:50.461',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23'),('f4a26516-7881-44f3-8132-fc4048a921a8',10,30,'120m',1,'APPROVED','2022-09-30 15:13:28.785','2022-09-30 17:13:28.785','2022-09-30 15:14:07.864','2022-09-30 15:13:23.041','2022-09-30 15:14:07.865',NULL,'9MVYxYSmswZaOyOda2ZQdCkmALw1'),('fab2c41d-1c0d-45dd-afca-7f5ff41b88da',2,30,'120m',0,'IN_PROGRESS','2022-09-13 01:51:48.171','2022-09-13 03:51:40.261',NULL,'2022-09-13 01:51:40.261','2022-09-13 01:51:40.261',NULL,'xgZ6DiR0aGadJMNPujyKRpYVXY23');
/*!40000 ALTER TABLE `x-ray` ENABLE KEYS */;
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

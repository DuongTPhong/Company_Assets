-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlytaisan
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `asset_category_id` bigint DEFAULT NULL,
  `cate_money` int NOT NULL,
  `condition_asset` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `deleted_by_id` bigint NOT NULL,
  `department_id` bigint DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group_assets_id` bigint DEFAULT NULL,
  `is_deleted` int NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `price` bigint NOT NULL,
  `sell_price` bigint NOT NULL,
  `staff_id` bigint DEFAULT NULL,
  `status` int NOT NULL,
  `supplier_id` bigint DEFAULT NULL,
  `updated_by_id` bigint NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `code_asset` varchar(255) DEFAULT NULL,
  `path_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhex163c5x3iubsgrhq3icywuw` (`asset_category_id`),
  KEY `FKo2ce8qana1xg2p4s6pwo4li2h` (`department_id`),
  KEY `FKo8eo4makc1nvrp3m6l1kid4ya` (`group_assets_id`),
  KEY `FK4csbpm96u6x7xo9qnafo0l5vy` (`staff_id`),
  KEY `FKjtcbqjrb4ra8u6bywccygcro8` (`supplier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_suppliers`
--

DROP TABLE IF EXISTS `categories_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_suppliers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_deleted` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_suppliers`
--

LOCK TABLES `categories_suppliers` WRITE;
/*!40000 ALTER TABLE `categories_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_assets`
--

DROP TABLE IF EXISTS `category_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_assets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_deleted` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_assets`
--

LOCK TABLES `category_assets` WRITE;
/*!40000 ALTER TABLE `category_assets` DISABLE KEYS */;
INSERT INTO `category_assets` VALUES (10,0,'Máy tính'),(11,0,'Bàn ghế');
/*!40000 ALTER TABLE `category_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) DEFAULT NULL,
  `is_deleted` int NOT NULL,
  `parent_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Phòng nhân sự',0,0),(2,'Phòng hành chính',0,0),(3,'Phòng kỹ thuật',0,0);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_assets`
--

DROP TABLE IF EXISTS `group_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_assets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  `is_deleted` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_assets`
--

LOCK TABLES `group_assets` WRITE;
/*!40000 ALTER TABLE `group_assets` DISABLE KEYS */;
INSERT INTO `group_assets` VALUES (8,'Tài sản cố định',0),(9,'Tài sản A',0);
/*!40000 ALTER TABLE `group_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persistent_logins` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `last_used` varchar(255) DEFAULT NULL,
  `series` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair_histories`
--

DROP TABLE IF EXISTS `repair_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_histories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `asset_id` bigint DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `is_deleted` int DEFAULT NULL,
  `staff_id` bigint DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKasd551npm66i4aa0qljv5cdtk` (`asset_id`),
  KEY `FKijuv9r585jlsj9jvvuwcm18ms` (`department_id`),
  KEY `FKhgohmp8ud38l7j3il1bhjx5rj` (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_histories`
--

LOCK TABLES `repair_histories` WRITE;
/*!40000 ALTER TABLE `repair_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `repair_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revoke_histories`
--

DROP TABLE IF EXISTS `revoke_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revoke_histories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `asset_id` bigint DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `is_deleted` int NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `revoke_date` datetime DEFAULT NULL,
  `staff_id` bigint DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1xolbbt6uso6llksltvlopfs3` (`asset_id`),
  KEY `FKi4da21m7to01ds83tbhone7et` (`department_id`),
  KEY `FKd8so2k5t1o7huxon8q1siaxve` (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revoke_histories`
--

LOCK TABLES `revoke_histories` WRITE;
/*!40000 ALTER TABLE `revoke_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `revoke_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'USER'),(2,'ADMIN'),(3,'ADMIN'),(4,'ADMIN'),(5,'USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sell_asset`
--

DROP TABLE IF EXISTS `sell_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sell_asset` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `asset_id` bigint DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `is_deleted` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `phone_number` varchar(11) DEFAULT NULL,
  `price_sell` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKryqbvc9529yg0peofbf285k0u` (`asset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sell_asset`
--

LOCK TABLES `sell_asset` WRITE;
/*!40000 ALTER TABLE `sell_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `sell_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `is_deleted` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `images_id` bigint DEFAULT NULL,
  `path_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKouoblokv0eayi6fn8sw0r74wt` (`images_id`),
  KEY `FK1fvbesq01b23ayv2ksysfhf6j` (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffs`
--

LOCK TABLES `staffs` WRITE;
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;
INSERT INTO `staffs` VALUES (61,'Hà Tây','1998-09-19 17:00:00',3,1,'Bùi Tuấn Anh','0354122468',NULL,'http://localhost:8080/avatar/Annotation 2020-05-15 205502.png'),(60,'Hà nội','2020-07-17 17:00:00',3,1,'Hội Nguyen','0354122468',NULL,'http://localhost:8080/avatar/106720106_278062653639209_2504112925332855287_n.jpg'),(73,'Hà Tây','2020-07-24 17:00:00',3,1,'Bùi Tuấn Anh','0354122468',NULL,'http://localhost:8080/avatar/september-20-2019-goods-south-field.jpg'),(74,'123231123123','2020-07-10 17:00:00',1,1,'1222222222222','123312123123231',NULL,'http://localhost:8080/avatar/Annotation 2020-05-12 150256.png'),(75,'33333333333333','2020-07-08 17:00:00',1,1,'nhân viên 2','4444444444444444444444',NULL,'http://localhost:8080/avatar/Capture.PNG'),(76,'Hà Tây','2020-07-10 17:00:00',1,1,'Bùi Tuấn Anh','123312',NULL,'http://localhost:8080/avatar/Capture.PNG'),(77,'Hà Tây','2020-07-17 17:00:00',2,1,'Test2222222222','0354122468',NULL,'http://localhost:8080/avatar/IU 아이유 Desktop Wallpaper HD 1920x1080 Sony MDR.jpg'),(78,'Hà Tây','2020-07-24 17:00:00',2,1,'tên nv222222222','0354122468',NULL,'http://localhost:8080/avatar/iu-08.jpg'),(79,'Hà Tây','2020-07-25 17:00:00',3,0,'Bùi Tuấn Anh','0354122468',NULL,'http://localhost:8080/avatar/iu-08.jpg'),(80,'333333333333333','2020-07-24 17:00:00',1,0,'Bùi Tuấn Anh2222222','3333333333333333',NULL,'http://localhost:8080/avatar/iu-08.jpg'),(81,'Hà Tây','2020-07-17 17:00:00',1,0,'444444444444','0354122468',NULL,'D:/Download/qlts/uploads/Ánh sáng của Đảng búa liềm.jpg'),(82,'aaaaaaa','2020-07-07 17:00:00',1,0,'aaaaaaaa','sssssssssss',NULL,'http://localhost:8080/avatar/logo_byt.png'),(83,'333333333333','2020-07-17 17:00:00',1,0,'Bùi Tuấn Anh','33333333333',NULL,'192.168.12.68:8080/avatar/iu-08.jpg'),(84,'Hà nội','2020-07-25 17:00:00',1,0,'Bùi Tuấn Anh','0354122468',NULL,'http://localhost:8080/avatar/iu-08.jpg');
/*!40000 ALTER TABLE `staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `is_deleted` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `supplier_category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt3pi73b42d7tkx1hhrafvh0bh` (`supplier_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (6,'Hà Nội',0,'Samsung','0354122468',4),(7,'Bắc Ninh',0,'LG','035',5);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_histories`
--

DROP TABLE IF EXISTS `transfer_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer_histories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `asset_id` bigint DEFAULT NULL,
  `department_id_new` bigint DEFAULT NULL,
  `department_id_old` bigint DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_deleted` int NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `staff_id_new` bigint DEFAULT NULL,
  `staff_id_old` bigint DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpe5kkt2qb77kr92ex89ajax8q` (`asset_id`),
  KEY `FKhh66lepy8e9cb0ek47qxu56w3` (`department_id_new`),
  KEY `FKijk66frs8rucis699j9p58o38` (`department_id_old`),
  KEY `FK3efpbmhnquew7hfexct86aci5` (`staff_id_new`),
  KEY `FKr0481ojjdv9pc1df5shuf52lg` (`staff_id_old`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_histories`
--

LOCK TABLES `transfer_histories` WRITE;
/*!40000 ALTER TABLE `transfer_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pass_word` varchar(255) DEFAULT NULL,
  `re_password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'$10$EJh1uHM3wFCKCf3duynJYOnQ5Im5a9Rprkfk7nBk20Mup7H1PAdeC',NULL,'user'),(3,'$2a$10$EJh1uHM3wFCKCf3duynJYOnQ5Im5a9Rprkfk7nBk20Mup7H1PAdeC',NULL,'admin'),(4,'$2a$10$gvOWjK1zPNooCQQ0fsjo7OHp8VI/uGITobTySJa4RIFSuBBpA48Za',NULL,'buituananh2098'),(5,'$2a$10$QKM37fZqcEGLXSGZGXfG2u3QPAqD8CvklcPQ4YREKoM49jN5wYMrq',NULL,'admin2'),(6,'$2a$10$3xfxFDDx8H0YMIrLY6R7tOW/6UHTeib0IkjnK.XIOEomMZvzuyIk6',NULL,'admin3');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  KEY `FK2o0jvgh89lemvvo17cbqvdxaa` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1),(3,2),(4,3),(5,4),(6,5);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-07  9:49:44

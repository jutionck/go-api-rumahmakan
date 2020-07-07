-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: db_kedaimakan
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
-- Table structure for table `m_categories`
--

DROP TABLE IF EXISTS `m_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_categories` (
  `id` varchar(50) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `food_status` varchar(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_categories`
--

LOCK TABLES `m_categories` WRITE;
/*!40000 ALTER TABLE `m_categories` DISABLE KEYS */;
INSERT INTO `m_categories` VALUES ('3de4e2c8-bff4-11ea-bdc5-2536a289c646','Food','1','2020-07-07 08:50:31',NULL),('3de57ea4-bff4-11ea-bdc5-2536a289c646','Drink','1','2020-07-07 08:50:31',NULL),('3de58458-bff4-11ea-bdc5-2536a289c646','Dessert','1','2020-07-07 08:50:31',NULL);
/*!40000 ALTER TABLE `m_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_food_addtionals`
--

DROP TABLE IF EXISTS `m_food_addtionals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_food_addtionals` (
  `id` varchar(50) NOT NULL,
  `food_add` varchar(30) NOT NULL,
  `price_add` int DEFAULT '0',
  `food_status` varchar(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_food_addtionals`
--

LOCK TABLES `m_food_addtionals` WRITE;
/*!40000 ALTER TABLE `m_food_addtionals` DISABLE KEYS */;
INSERT INTO `m_food_addtionals` VALUES ('90a1dbba-bff4-11ea-bdc5-2536a289c646','Extra Pedas',1500,'1','2020-07-07 08:52:50','2020-07-07 09:13:45'),('90a1dd33-bff4-11ea-bdc5-2536a289sc46','-',0,'1','2020-07-07 09:13:45','2020-07-07 09:13:45'),('90a1dd33-cff4-11ea-bdc5-2233a289sc46','Peralatan Makanan',2000,'1','2020-07-07 09:13:45',NULL);
/*!40000 ALTER TABLE `m_food_addtionals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_foods`
--

DROP TABLE IF EXISTS `m_foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_foods` (
  `id` varchar(50) NOT NULL,
  `food_name` varchar(20) DEFAULT NULL,
  `food_price` int DEFAULT NULL,
  `cetegory_id` varchar(50) DEFAULT NULL,
  `food_stock` int DEFAULT NULL,
  `food_status` varchar(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cetegory_id` (`cetegory_id`),
  CONSTRAINT `m_foods_ibfk_1` FOREIGN KEY (`cetegory_id`) REFERENCES `m_categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_foods`
--

LOCK TABLES `m_foods` WRITE;
/*!40000 ALTER TABLE `m_foods` DISABLE KEYS */;
INSERT INTO `m_foods` VALUES ('1a410254-0aac-441b-8a46-95ec330f9a3b','',0,'3de4e2c8-bff4-11ea-bdc5-2536a289c646',50,'1','2020-07-07 12:59:03','2020-07-07 12:59:03'),('476501f6-bff5-11ea-bdc5-2536a289c646','Nasi Putih',5000,'3de4e2c8-bff4-11ea-bdc5-2536a289c646',50,'1','2020-07-07 08:57:57','2020-07-07 08:57:57'),('476522c6-bff5-11ea-bdc5-2536a289c646','Nasi Tambah',3000,'3de4e2c8-bff4-11ea-bdc5-2536a289c646',25,'1','2020-07-07 08:57:57','2020-07-07 08:57:57'),('476524c4-bff5-11ea-bdc5-2536a289c646','Ayam Goreng',10000,'3de4e2c8-bff4-11ea-bdc5-2536a289c646',20,'1','2020-07-07 08:57:57','2020-07-07 08:57:57'),('476525dc-bff5-11ea-bdc5-2536a289c646','Jus Mangga',10000,'3de57ea4-bff4-11ea-bdc5-2536a289c646',5,'1','2020-07-07 08:57:57','2020-07-07 08:57:57'),('56968927-fec9-4019-bad3-831a75283ecf','Rendang',10000,'3de4e2c8-bff4-11ea-bdc5-2536a289c646',0,'1','2020-07-07 10:11:16','2020-07-07 10:11:16'),('5f173083-101c-410c-86eb-5ffea310bd2a','Nasi Putih',5000,'3de4e2c8-bff4-11ea-bdc5-2536a289c646',50,'1','2020-07-07 12:41:08','2020-07-07 12:41:08'),('674bef26-74b3-4036-998e-8ff3f3713695','',0,'3de4e2c8-bff4-11ea-bdc5-2536a289c646',50,'1','2020-07-07 12:57:36','2020-07-07 12:57:36'),('de4ea823-8dd5-4577-8b7f-58aecb443374','',0,'3de4e2c8-bff4-11ea-bdc5-2536a289c646',50,'1','2020-07-07 12:41:25','2020-07-07 12:41:25');
/*!40000 ALTER TABLE `m_foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_transaction_details`
--

DROP TABLE IF EXISTS `t_transaction_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_transaction_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nota_number` varchar(15) NOT NULL,
  `food_id` varchar(50) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `additional_food` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_transaction_details`
--

LOCK TABLES `t_transaction_details` WRITE;
/*!40000 ALTER TABLE `t_transaction_details` DISABLE KEYS */;
INSERT INTO `t_transaction_details` VALUES (7,'S20200707','476524c4-bff5-11ea-bdc5-2536a289c646',3,'90a1dbba-bff4-11ea-bdc5-2536a289c646','2020-07-07 10:29:52','2020-07-07 10:29:52'),(8,'S20200707001','476525dc-bff5-11ea-bdc5-2536a289c646',3,'90a1dd33-bff4-11ea-bdc5-2536a289sc46','2020-07-07 11:12:58','2020-07-07 10:29:52'),(9,'S20200708001','476525dc-bff5-11ea-bdc5-2536a289c646',1,'90a1dd33-cff4-11ea-bdc5-2233a289sc46','2020-07-07 11:54:37','2020-07-07 11:54:37'),(10,'S20200709001','476525dc-bff5-11ea-bdc5-2536a289c646',1,'90a1dd33-cff4-11ea-bdc5-2233a289sc46','2020-07-07 11:57:25','2020-07-07 11:57:25');
/*!40000 ALTER TABLE `t_transaction_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_transactions`
--

DROP TABLE IF EXISTS `t_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_transactions` (
  `nota_number` varchar(15) NOT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `customer_name` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`nota_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_transactions`
--

LOCK TABLES `t_transactions` WRITE;
/*!40000 ALTER TABLE `t_transactions` DISABLE KEYS */;
INSERT INTO `t_transactions` VALUES ('S20200707','2020-07-07 00:00:00','Jution Candra Kirana','2020-07-07 10:29:52','2020-07-07 10:29:52'),('S20200707001','2020-07-07 11:12:58','Sugeng Halu','2020-07-07 11:12:58','2020-07-07 11:12:58'),('S20200708001','2020-07-07 11:54:37','Dewi Kania W','2020-07-07 11:54:37',NULL),('S20200709001','2020-07-07 11:57:25','Zuriati','2020-07-07 11:57:25',NULL);
/*!40000 ALTER TABLE `t_transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-07 13:55:35

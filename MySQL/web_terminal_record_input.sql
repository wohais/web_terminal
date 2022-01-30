-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: web_terminal
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
-- Table structure for table `record_input`
--

DROP TABLE IF EXISTS `record_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record_input` (
  `input_id` varchar(45) NOT NULL,
  `id` varchar(40) NOT NULL,
  `goods_name` varchar(100) NOT NULL,
  `input_num` int NOT NULL,
  `input_time` timestamp NOT NULL,
  `make_time` timestamp NULL DEFAULT NULL,
  `expiration_data` int DEFAULT NULL,
  PRIMARY KEY (`input_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_input`
--

LOCK TABLES `record_input` WRITE;
/*!40000 ALTER TABLE `record_input` DISABLE KEYS */;
INSERT INTO `record_input` VALUES ('ID20112401','0003','“可口可乐”雪碧',1300,'2020-11-24 08:42:00','2020-11-12 16:00:00',180),('ID20112402','0005','统一老坛酸菜牛肉面',500,'2020-11-24 11:11:00','2020-11-01 16:00:00',180),('ID20112501','0002','农夫山泉矿泉水',1000,'2020-11-25 00:30:00','2020-10-29 16:00:00',360),('ID20112601','0013','大白兔奶糖',400,'2020-11-25 23:21:00','2020-11-19 16:00:00',180),('ID20112602','0001','娃哈哈矿泉水',1500,'2020-11-26 06:32:00','2020-11-04 16:00:00',360),('ID20112701','0010','云南鲜花饼',200,'2020-11-27 07:44:00','2020-11-25 16:00:00',28),('ID20112702','0014','旺旺雪饼',800,'2020-11-27 12:22:00','2020-11-11 16:00:00',180),('ID20112703','0011','蓝月亮洗衣液',300,'2020-11-27 13:40:00','2020-10-20 16:00:00',720),('ID20112801','004','康师傅红烧牛肉面',746,'2020-11-28 09:14:00','2020-11-22 16:00:00',180);
/*!40000 ALTER TABLE `record_input` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 17:28:59

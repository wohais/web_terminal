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
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id` varchar(40) NOT NULL,
  `goods_name` varchar(100) NOT NULL,
  `good_price_input` varchar(100) DEFAULT NULL,
  `good_price_output` varchar(100) DEFAULT NULL,
  `good_stock` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES ('0001','娃哈哈矿泉水','1元/瓶','1.5元/瓶',6732),('0002','农夫山泉矿泉水','1.5元/瓶','2元/瓶',1284),('0003','“可口可乐”雪碧','1.5元/瓶','2.5元/瓶',4234),('0004','康师傅红烧牛肉面','3.5元/盒','4元/盒',6332),('0005','统一老坛酸菜牛肉面','3.5元/盒','4元/盒',5245),('0006','山东红富士','7.98元/斤','8.98元/斤',134),('0007','新西兰奇异果','9.82元/斤','12.2元/斤',312),('0008','日本北海道三文鱼','17.6元/盒','20元/盒',124),('0009','新西兰车厘子','11.5元/斤','13.4元/斤',422),('0010','云南鲜花饼','5.74元/盒','6.99元/盒',321),('0011','蓝月亮洗衣液','17.4元/瓶','19.8元/瓶',4234),('0012','东北大米','54元/袋','62元/袋',2334),('0013','大白兔奶糖','9.8元/袋','11.5元/袋',4342),('0014','旺旺雪饼','14.9元/袋','17.3元/袋',4533),('0015','康师傅香辣牛肉面','3元/盒','4元/盒',1372),('0016','“星火英语”全真试题（四级）','28元/册','30元/册',198);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 17:29:00

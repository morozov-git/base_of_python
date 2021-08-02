-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: bakery
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `Products_for_all_Yandex_ordes`
--

DROP TABLE IF EXISTS `Products_for_all_Yandex_ordes`;
/*!50001 DROP VIEW IF EXISTS `Products_for_all_Yandex_ordes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Products_for_all_Yandex_ordes` AS SELECT 
 1 AS `№ Заказа`,
 1 AS `Каталог`,
 1 AS `Название товара`,
 1 AS `Количество`,
 1 AS `Вес товара, КГ`,
 1 AS `Статус заказ`,
 1 AS `Тип Доставки`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_current_ordes`
--

DROP TABLE IF EXISTS `all_current_ordes`;
/*!50001 DROP VIEW IF EXISTS `all_current_ordes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_current_ordes` AS SELECT 
 1 AS `Номер заказа`,
 1 AS `Статус заказа`,
 1 AS `First name`,
 1 AS `Last name`,
 1 AS `Phone`,
 1 AS `Тип доставки`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogs` (
  `id` int unsigned NOT NULL COMMENT 'Идентификатор',
  `name` varchar(255) DEFAULT NULL COMMENT 'Название раздела',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Каталог продукции';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (1,'Хлеб'),(2,'Десерты'),(3,'Пироги');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` bigint unsigned DEFAULT NULL COMMENT 'Ссылка на покупателя',
  `order_id` bigint unsigned DEFAULT NULL COMMENT 'Ссылка на заказ',
  `product_id` bigint unsigned DEFAULT NULL COMMENT 'Ссылка на товар',
  `body` text NOT NULL COMMENT 'Текст сообщения',
  `rating` int unsigned DEFAULT NULL COMMENT 'Оценка',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Комментарии-Оценки-Пожелания';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,NULL,27,'Proin dolor. Nulla semper',2,'2017-11-20 20:00:00','2006-05-20 21:00:00'),(2,13,NULL,28,'enim. Etiam imperdiet',5,'2019-06-20 20:00:00','2021-11-20 20:00:00'),(3,5,NULL,5,'mattis. Cras eget',5,'2030-12-20 20:00:00','2004-12-20 20:00:00'),(4,14,NULL,21,'vitae velit egestas lacinia. Sed congue, elit sed consequat',3,'2006-10-20 20:00:00','2025-02-20 21:00:00'),(5,9,NULL,26,'posuere vulputate, lacus.',3,'2001-07-20 20:00:00','2013-10-20 20:00:00'),(6,11,NULL,32,'quis lectus. Nullam suscipit, est ac facilisis',1,'2013-09-20 20:00:00','2001-03-20 21:00:00'),(7,16,NULL,6,'gravida.',5,'2018-01-20 21:00:00','2011-05-20 21:00:00'),(8,7,NULL,15,'mauris id sapien.',4,'2025-08-20 20:00:00','2016-03-20 21:00:00'),(9,15,NULL,21,'orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero',3,'2027-05-20 21:00:00','2009-02-20 21:00:00'),(10,18,NULL,24,'et pede. Nunc sed orci lobortis augue scelerisque mollis.',3,'2010-10-20 20:00:00','2019-04-20 21:00:00'),(11,19,NULL,30,'pede. Cras vulputate velit eu sem. Pellentesque ut',3,'2026-12-20 20:00:00','2023-11-20 20:00:00'),(12,10,NULL,32,'risus. Morbi metus. Vivamus euismod',2,'2004-03-20 21:00:00','2025-08-20 20:00:00'),(13,19,NULL,3,'Sed neque. Sed eget lacus. Mauris non dui nec',4,'2008-08-20 20:00:00','2014-09-20 20:00:00'),(14,13,NULL,14,'Pellentesque ut ipsum ac mi eleifend egestas. Sed',4,'2011-01-20 21:00:00','2022-04-20 21:00:00'),(15,4,NULL,32,'rutrum.',5,'2013-03-20 21:00:00','2011-06-20 21:00:00'),(16,16,NULL,24,'Praesent luctus. Curabitur egestas nunc sed libero. Proin',5,'2003-11-20 20:00:00','2021-06-20 20:00:00'),(17,7,NULL,17,'vel, vulputate eu, odio. Phasellus at augue id',4,'2024-03-20 21:00:00','2001-01-20 21:00:00'),(18,8,NULL,32,'ultricies ligula. Nullam enim. Sed nulla ante, iaculis',4,'2002-11-20 20:00:00','2022-11-20 20:00:00'),(19,19,NULL,27,'erat, in consectetuer ipsum nunc id enim. Curabitur',4,'2010-08-20 20:00:00','2013-02-20 21:00:00'),(20,1,NULL,33,'urna. Ut tincidunt vehicula risus. Nulla eget',2,'2007-12-20 20:00:00','2018-09-20 20:00:00'),(21,1,NULL,27,'Proin dolor. Nulla semper',2,'2017-11-20 20:00:00','2006-05-20 21:00:00'),(22,13,NULL,28,'enim. Etiam imperdiet',5,'2019-06-20 20:00:00','2021-11-20 20:00:00'),(23,5,NULL,5,'mattis. Cras eget',5,'2030-12-20 20:00:00','2004-12-20 20:00:00'),(24,14,NULL,21,'vitae velit egestas lacinia. Sed congue, elit sed consequat',3,'2006-10-20 20:00:00','2025-02-20 21:00:00'),(25,9,NULL,26,'posuere vulputate, lacus.',3,'2001-07-20 20:00:00','2013-10-20 20:00:00'),(26,11,NULL,32,'quis lectus. Nullam suscipit, est ac facilisis',1,'2013-09-20 20:00:00','2001-03-20 21:00:00'),(27,16,NULL,6,'gravida.',5,'2018-01-20 21:00:00','2011-05-20 21:00:00'),(28,7,NULL,15,'mauris id sapien.',4,'2025-08-20 20:00:00','2016-03-20 21:00:00'),(29,15,NULL,21,'orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero',3,'2027-05-20 21:00:00','2009-02-20 21:00:00'),(30,18,NULL,24,'et pede. Nunc sed orci lobortis augue scelerisque mollis.',3,'2010-10-20 20:00:00','2019-04-20 21:00:00'),(31,19,NULL,30,'pede. Cras vulputate velit eu sem. Pellentesque ut',3,'2026-12-20 20:00:00','2023-11-20 20:00:00'),(32,10,NULL,32,'risus. Morbi metus. Vivamus euismod',2,'2004-03-20 21:00:00','2025-08-20 20:00:00'),(33,19,NULL,3,'Sed neque. Sed eget lacus. Mauris non dui nec',4,'2008-08-20 20:00:00','2014-09-20 20:00:00'),(34,13,NULL,14,'Pellentesque ut ipsum ac mi eleifend egestas. Sed',4,'2011-01-20 21:00:00','2022-04-20 21:00:00'),(35,4,NULL,32,'rutrum.',5,'2013-03-20 21:00:00','2011-06-20 21:00:00'),(36,16,NULL,24,'Praesent luctus. Curabitur egestas nunc sed libero. Proin',5,'2003-11-20 20:00:00','2021-06-20 20:00:00'),(37,7,NULL,17,'vel, vulputate eu, odio. Phasellus at augue id',4,'2024-03-20 21:00:00','2001-01-20 21:00:00'),(38,8,NULL,32,'ultricies ligula. Nullam enim. Sed nulla ante, iaculis',4,'2002-11-20 20:00:00','2022-11-20 20:00:00'),(39,19,NULL,27,'erat, in consectetuer ipsum nunc id enim. Curabitur',4,'2010-08-20 20:00:00','2013-02-20 21:00:00'),(40,1,NULL,33,'urna. Ut tincidunt vehicula risus. Nulla eget',2,'2007-12-20 20:00:00','2018-09-20 20:00:00'),(41,5,NULL,18,'euismod urna. Nullam lobortis quam a',1,'2007-03-20 21:00:00','2003-03-20 21:00:00'),(42,13,NULL,4,'lorem. Donec elementum, lorem ut aliquam',5,'2027-04-20 21:00:00','2007-05-20 21:00:00'),(43,17,NULL,21,'dictum placerat, augue. Sed molestie. Sed id risus',3,'2022-05-20 21:00:00','2013-09-20 20:00:00'),(44,1,NULL,18,'dictum placerat, augue. Sed molestie.',1,'2003-09-20 20:00:00','2011-07-20 20:00:00'),(45,14,NULL,22,'ac metus vitae',4,'2004-08-20 20:00:00','2009-06-20 21:00:00'),(46,4,NULL,14,'pellentesque, tellus sem mollis dui, in sodales elit erat',2,'2014-10-20 20:00:00','2023-09-20 20:00:00'),(47,15,NULL,16,'in molestie tortor nibh sit',1,'2004-08-20 20:00:00','2015-05-20 21:00:00'),(48,19,NULL,9,'Nulla tempor augue ac ipsum. Phasellus vitae',3,'2009-06-20 21:00:00','2027-08-20 20:00:00'),(49,9,NULL,25,'velit. Cras lorem lorem,',5,'2012-04-20 21:00:00','2006-04-20 21:00:00'),(50,1,NULL,21,'dui augue eu tellus. Phasellus elit pede, malesuada',1,'2007-08-20 20:00:00','2030-09-20 20:00:00'),(51,14,NULL,11,'malesuada',1,'2018-01-20 21:00:00','2017-01-20 21:00:00'),(52,11,NULL,18,'urna. Ut tincidunt vehicula risus.',2,'2026-08-20 20:00:00','2013-11-20 20:00:00'),(53,12,NULL,15,'elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu',5,'2003-04-20 21:00:00','2027-10-20 20:00:00'),(54,3,NULL,19,'Morbi neque tellus,',2,'2009-05-20 21:00:00','2022-11-20 20:00:00'),(55,3,NULL,9,'Donec sollicitudin adipiscing',5,'2024-12-20 20:00:00','2011-02-20 21:00:00'),(56,4,NULL,21,'Etiam ligula tortor, dictum eu, placerat eget, venenatis a,',4,'2019-11-20 20:00:00','2024-02-20 21:00:00'),(57,1,NULL,1,'lobortis ultrices.',5,'2006-09-20 20:00:00','2016-03-20 21:00:00'),(58,16,NULL,2,'commodo ipsum. Suspendisse non leo. Vivamus nibh dolor,',2,'2014-01-20 21:00:00','2026-07-20 20:00:00'),(59,15,NULL,21,'id magna et ipsum cursus vestibulum.',5,'2007-07-20 20:00:00','2007-01-20 21:00:00'),(60,11,NULL,25,'pharetra. Nam ac nulla. In tincidunt congue',1,'2023-11-20 20:00:00','2019-08-20 20:00:00'),(61,14,NULL,6,'Donec egestas. Duis ac arcu. Nunc mauris. Morbi',5,'2015-12-20 20:00:00','2012-11-20 20:00:00'),(62,5,NULL,2,'ornare. Fusce mollis. Duis sit amet diam',2,'2012-08-20 20:00:00','2011-01-20 21:00:00'),(63,6,NULL,2,'nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus.',1,'2015-09-20 20:00:00','2006-11-20 20:00:00'),(64,19,NULL,32,'Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in',3,'2028-04-20 21:00:00','2029-06-20 20:00:00'),(65,8,NULL,23,'dictum. Phasellus in felis. Nulla tempor augue ac',4,'2014-12-20 20:00:00','2019-01-20 21:00:00'),(66,10,NULL,14,'eu, ultrices sit amet, risus. Donec nibh enim, gravida sit',1,'2022-09-20 20:00:00','2021-02-20 21:00:00'),(67,16,NULL,26,'Aenean gravida nunc sed pede. Cum',3,'2024-01-20 21:00:00','2018-11-20 20:00:00'),(68,20,NULL,1,'consequat auctor, nunc nulla vulputate dui, nec tempus',4,'2022-11-20 20:00:00','2025-03-20 21:00:00'),(69,18,NULL,19,'nisl',2,'2013-07-20 20:00:00','2019-09-20 20:00:00'),(70,4,NULL,3,'faucibus orci luctus et',1,'2022-03-20 21:00:00','2008-12-20 20:00:00'),(71,7,NULL,23,'dolor dapibus',4,'2015-11-20 20:00:00','2005-01-20 21:00:00'),(72,13,NULL,33,'risus. Quisque libero',1,'2002-07-20 20:00:00','2015-03-20 21:00:00'),(73,13,NULL,20,'libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit',5,'2011-07-20 20:00:00','2017-04-20 21:00:00'),(74,10,NULL,28,'vulputate velit eu sem. Pellentesque',1,'2016-01-20 21:00:00','2015-04-20 21:00:00'),(75,3,NULL,28,'condimentum.',3,'2003-06-20 21:00:00','2021-02-20 21:00:00'),(76,5,NULL,15,'Proin dolor. Nulla semper tellus id nunc interdum',3,'2003-11-20 20:00:00','2021-12-20 20:00:00'),(77,1,NULL,21,'rutrum non,',5,'2011-01-20 21:00:00','2005-06-20 21:00:00'),(78,17,NULL,8,'felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla.',1,'2007-07-20 20:00:00','2007-12-20 20:00:00'),(79,6,NULL,20,'sagittis placerat. Cras dictum ultricies ligula.',5,'2002-12-20 20:00:00','2010-06-20 21:00:00'),(80,14,NULL,3,'Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis',3,'2022-02-20 21:00:00','2005-01-20 21:00:00'),(81,16,NULL,21,'fringilla ornare placerat, orci',1,'2016-10-20 20:00:00','2008-11-20 20:00:00'),(82,6,NULL,25,'enim. Mauris quis turpis vitae',5,'2025-02-20 21:00:00','2030-10-20 20:00:00'),(83,19,NULL,27,'aliquet, metus urna convallis erat, eget tincidunt',5,'2028-03-20 21:00:00','2009-01-20 21:00:00'),(84,16,NULL,18,'diam nunc, ullamcorper eu,',3,'2028-08-20 20:00:00','2027-06-20 20:00:00'),(85,7,NULL,4,'ligula. Aenean gravida nunc sed pede. Cum sociis natoque',4,'2007-10-20 20:00:00','2014-01-20 21:00:00'),(86,5,NULL,19,'aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque',5,'2001-05-20 21:00:00','2002-06-20 21:00:00'),(87,20,NULL,8,'Ut sagittis lobortis mauris. Suspendisse aliquet',3,'2005-08-20 20:00:00','2022-04-20 21:00:00'),(88,9,NULL,33,'sem elit, pharetra ut, pharetra sed, hendrerit a, arcu.',2,'2004-06-20 21:00:00','2023-09-20 20:00:00'),(89,14,NULL,6,'Donec nibh enim, gravida sit amet, dapibus',5,'2019-06-20 20:00:00','2022-03-20 21:00:00'),(90,1,NULL,16,'lorem, auctor quis, tristique',2,'2030-06-20 20:00:00','2015-08-20 20:00:00'),(91,19,NULL,10,'eu dolor',4,'2031-01-20 21:00:00','2028-07-20 20:00:00'),(92,19,NULL,5,'fermentum vel, mauris. Integer sem elit, pharetra',5,'2001-02-20 21:00:00','2005-02-20 21:00:00'),(93,15,NULL,23,'Sed nec',3,'2019-06-20 20:00:00','2001-02-20 21:00:00'),(94,15,NULL,31,'Maecenas libero est, congue a, aliquet',2,'2025-01-20 21:00:00','2019-04-20 21:00:00'),(95,8,NULL,34,'dui. Suspendisse ac metus',1,'2009-12-20 20:00:00','2022-11-20 20:00:00'),(96,5,NULL,32,'commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus',1,'2015-08-20 20:00:00','2014-06-20 21:00:00'),(97,5,NULL,33,'neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede',1,'2001-05-20 21:00:00','2013-02-20 21:00:00'),(98,18,NULL,27,'volutpat. Nulla facilisis. Suspendisse',2,'2021-01-20 21:00:00','2028-09-20 20:00:00'),(99,3,NULL,16,'est. Nunc ullamcorper,',3,'2013-08-20 20:00:00','2004-08-20 20:00:00'),(100,17,NULL,22,'aliquet magna',3,'2023-02-20 21:00:00','2027-07-20 20:00:00'),(101,15,NULL,15,'tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et,',2,'2029-04-20 21:00:00','2016-10-20 20:00:00'),(102,13,NULL,17,'sit amet, consectetuer',3,'2027-03-20 21:00:00','2017-02-20 21:00:00'),(103,14,NULL,34,'Pellentesque',5,'2018-11-20 20:00:00','2013-07-20 20:00:00'),(104,15,NULL,18,'ac mattis semper, dui lectus rutrum urna, nec luctus',4,'2029-11-20 20:00:00','2026-10-20 20:00:00'),(105,13,NULL,25,'nec tempus scelerisque, lorem ipsum sodales purus, in molestie',5,'2017-12-20 20:00:00','2009-02-20 21:00:00'),(106,1,NULL,20,'mattis ornare, lectus',5,'2013-06-20 21:00:00','2021-04-20 21:00:00'),(107,15,NULL,22,'at, velit. Pellentesque ultricies dignissim lacus.',5,'2008-01-20 21:00:00','2017-05-20 21:00:00'),(108,2,NULL,3,'penatibus et magnis dis parturient montes, nascetur ridiculus',3,'2021-02-20 21:00:00','2013-05-20 21:00:00'),(109,1,NULL,9,'ipsum nunc id enim. Curabitur massa.',1,'2017-12-20 20:00:00','2006-09-20 20:00:00'),(110,11,NULL,34,'egestas lacinia.',3,'2028-11-20 20:00:00','2011-11-20 20:00:00'),(111,3,NULL,32,'Integer',2,'2010-03-20 21:00:00','2021-05-20 21:00:00'),(112,5,NULL,30,'enim. Etiam gravida molestie arcu. Sed',4,'2027-01-20 21:00:00','2009-05-20 21:00:00'),(113,19,NULL,21,'tellus eu',4,'2026-11-20 20:00:00','2003-07-20 20:00:00'),(114,14,NULL,6,'odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu.',2,'2030-08-20 20:00:00','2002-03-20 21:00:00'),(115,19,NULL,1,'adipiscing elit. Aliquam auctor, velit eget laoreet posuere,',1,'2012-12-20 20:00:00','2025-09-20 20:00:00'),(116,15,NULL,28,'pharetra nibh. Aliquam ornare, libero at auctor',5,'2022-10-20 20:00:00','2010-03-20 21:00:00'),(117,14,NULL,34,'sit amet, consectetuer adipiscing',1,'2031-12-20 20:00:00','2030-09-20 20:00:00'),(118,11,NULL,25,'Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc',3,'2023-05-20 21:00:00','2018-01-20 21:00:00'),(119,3,NULL,28,'Ut',3,'2008-01-20 21:00:00','2014-06-20 20:00:00'),(120,1,NULL,12,'elementum, dui quis accumsan convallis, ante lectus convallis',4,'2016-03-20 21:00:00','2019-11-20 20:00:00');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_type`
--

DROP TABLE IF EXISTS `delivery_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_type` (
  `id` int NOT NULL COMMENT 'Идентификатор',
  `delivery_name` varchar(255) NOT NULL COMMENT 'Вид доставки',
  `delivery_price` decimal(11,1) DEFAULT NULL COMMENT 'Цена доставки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Тип доставки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_type`
--

LOCK TABLES `delivery_type` WRITE;
/*!40000 ALTER TABLE `delivery_type` DISABLE KEYS */;
INSERT INTO `delivery_type` VALUES (1,'Самовывоз из пекарни',0.0),(2,'Доставка курьером - адрес 1',500.0),(3,'Доставка курьером - адрес 2',500.0),(4,'Яндекс Еда',200.0),(5,'Яндекс Доставка',500.0);
/*!40000 ALTER TABLE `delivery_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descr_prod`
--

DROP TABLE IF EXISTS `descr_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descr_prod` (
  `products_id` bigint unsigned NOT NULL COMMENT 'Ссылка на товар',
  `description` text COMMENT 'Описание',
  `contain` text COMMENT 'Состав',
  `weight` decimal(15,0) DEFAULT NULL COMMENT 'Вес-Объем',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`products_id`),
  CONSTRAINT `descr_prod_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Описание продукции';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descr_prod`
--

LOCK TABLES `descr_prod` WRITE;
/*!40000 ALTER TABLE `descr_prod` DISABLE KEYS */;
INSERT INTO `descr_prod` VALUES (1,'Ремесленный Хлеб на закваске','мука ржаная цельнозерновая, вода артезианская, закваска ржаная (мука ржаная цельнозерновая, вода), соль',750,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(2,'Ремесленный Хлеб на закваске','Мука пшеничная, масло сливочное, вода артезианская, закваска пшеничная (мука пшеничная, вода артезианская), соль, сахар',610,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(3,'Ремесленный Хлеб на закваске','мука ржаная цельнозерновая, вода артезианская, закваска ржаная (мука ржаная цельнозерновая, вода), солод ржаной, семена подсолнечника, соль, сахар',400,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(4,'Ремесленный Хлеб на закваске','мука ржаная цельнозерновая, вода артезианская, закваска ржаная (мука ржаная цельнозерновая, вода), солод ржаной, семена подсолнечника, соль, сахар',750,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(5,'Ремесленный Хлеб на закваске','Мука пшеничная цельнозерновая, мука ржаная цельнозерновая, закваска пшеничная (мука пшеничная, вода артезианская), вода артезианская, масло подсолнечное, соль, мед',520,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(6,'Ремесленный Хлеб на закваске','Мука пшеничная цельнозерновая, мука гречневая цельнозерновая, мука пшеничная, мука ржаная цельнозерновая, закваска пшеничная (мука пшеничная, вода артезианская), вода артезианская, соль, мед',520,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(7,'Ремесленный Хлеб на закваске','Мука пшеничная вода артезианская, закваска пшеничная (мука пшеничная, вода артезианская), соль',620,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(8,'Ремесленный Хлеб на закваске','Мука пшеничная цельнозерновая, мука пшеничная, закваска пшеничная (мука пшеничная, вода артезианская), вода артезианская, соль',510,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(9,'Ремесленный Хлеб на закваске','Мука пшеничная цельнозерновая, мука ржаная цельнозерновая, закваска ржаная (мука ржаная цельнозерновая, вода), вода артезианская, повидло яблочное, солод ржаной, сахар, соль, тмин, кориандр',510,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(10,'Ремесленный Хлеб на закваске','Мука ржаная цельнозерновая, мука пшеничная цельнозерновая, крупа ржаная, зерно ржи, зерно полбы, кунжут золотой, кунжут черный, семена подсолнечника, семена тыквы, лен черный, черносливзакваска ржаная (мука ржаная цельнозерновая, вода) вода артезианская, солод ржаной, соль',480,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(11,'Ремесленный Хлеб на закваске','Мука пшеничная цельнозерновая, мука ржаная цельнозерновая, закваска пшеничная (мука пшеничная, вода артезианская), вода артезианская, масло подсолнечное, соль',510,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(12,'Ремесленный Хлеб на закваске','Мука пшеничная цельнозерновая, вода артезианская, закваска пшеничная (мука пшеничная, вода артезианская), масло подсолнечное, соль',510,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(13,'Ремесленный Хлеб на закваске','Мука ржаная цельнозерновая, закваска ржаная (мука ржаная цельнозерновая, вода), мука пшеничная цельнозерновая, мука пшеничная, вода артезианская, солод ржаной, мед, кориандр, тмин, соль',500,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(14,'Ремесленный Хлеб на закваске','мука ржаная цельнозерновая, вода артезианская, изюм, солод ржаной, кунжут, кардамон, соль, сахар',510,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(15,'Ремесленный Хлеб на закваске','Мука пшеничная, мука пшеничная цельнозерновая, закваска пшеничная (мука пшеничная, вода артезианская), вода артезианская, мука ржаная цельнозерновая, солод ржаной, тмин, сахар, соль',520,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(16,'Ремесленный Хлеб на закваске','Мука пшеничная, вода артезианская, закваска пшеничная (мука пшеничная, вода артезианская), масло подсолнечное, яйца, соль, сахар, кунжут',480,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(17,'Ремесленный Хлеб на закваске','Мука пшеничная цельнозерновая, мука пшеничная, закваска пшеничная (мука пшеничная, вода артезианская), мука ржаная цельнозерновая, мед, вода артезианская, лук репчатый пассированный, соль',520,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(18,'Ремесленный Хлеб на закваске','Мука пшеничная цельнозерновая, вода артезианская, закваска пшеничная (мука пшеничная, вода артезианская), семена льна, кунжута, подсолнечника, мука пшеничная, соль, мед',520,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(19,'Ремесленный Хлеб на закваске','мука пшеничная, молоко коровье пастеризованное, закваска пшеничная (мука пшеничная, вода артезианская), масло сливочное, соль, сахар, куркума',520,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(20,'Ремесленный Хлеб на закваске','Мука пшеничная цельнозерновая, мука ржаная цельнозерновая, клюква, грецкий орех, мука пшеничная, закваска пшеничная (мука пшеничная, вода артезианская), вода артезианская, соль',600,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(21,'Кекс творожный','Яйца, Лимон, Сахар, Сливочное масло, Творог(не зерновой), Сода, Мука, Цукаты',1000,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(22,'Маффины Хлебомолы','Ц/з пш. мука, Какао, Закваска, Кофе, Растительное масло, Сахар, Бананы, Изюм, Соль, Сода,Упаковка приблизительно 49шт.',4000,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(23,'Бельгийское печенье','Шоколад темный, Шоколад молочный, Сливочное масло, Яйца, Сахар, Ванилин, Мука, Разрыхлитель',1300,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(24,'Пахлава','Сливочное масло, Сметана 20%, Сода, Яйца, Мука, Сахарная пудра, Грецкие орехи, Мёд, Кардамон, Сахар',1600,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(25,'Торт Медовик','Мёд, Сахар, Сливочное масло, Яйца, Мука, Вода, Соль, Сода, Яйца, Молоко, Сливочное масло, Сахар, Ванилин, Грецкие орехи',1850,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(26,'Торт Наполеон','Сливочное маслоб Мука, Сметана, Яйца, Сливки 35%, Сахар, Кукурузный крахмал, Мука, Ванилин, Желтки, Сливочное масло, Сгущенное молоко, Соль',2000,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(27,'Имбирные пряники','Сахар, Вода, Сливочное масло, Соль, Сода, Желток, Мука, Пряности (корица, мускатный орех, имбирь, кардамон)',800,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(28,'Тарт Апельсин','Мука, Сливочное масло, Яйца, Сливочное масло, Сахар, Цедра апельсина, Яйца, Соль, Кукурузный крахмал, Цедра лимона, Сок апелельсина, Сок лимона',800,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(29,'Шантильи','Мука, Какао, Сода, Разрыхрытель, Соль, Сахар, Сметана, Яйца, Растительное масло, Кофе, Слики 35%, Сахарная пудра, Голубика',840,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(30,'Банановый тарт','Сливочное масло, Сахар, Ванилин, Яйца, Сметана, Мука, Разрыхрытель, Бананы, Сливочное масло, Сливки 35%, Сахар, Вода',1500,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(31,'Киш жульен','Мука, Сливочное масло, Яйца, Шампиньоны, Куриная грудка, Лук, Сметана, Сливки 35%, Яйца, Сыр твердый',1100,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(32,'Меренга','Яйца, Сахарная пудра, Крахмал кукупузный',400,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(33,'Пирог с капустой','Капуста, Сахар, Сливочное масло, Молоко, Яйца, Укроп, Мука, Вода, Яйца, Молоко, Сахар, Сливочное масло, Соль',3000,'2021-06-14 21:10:39','2021-06-14 21:10:39'),(34,'Пирог с мясом','Фарш говяжий, Сельдерей, Морковь, Лук, Мука, Вода, Яйца, Молоко, Сахар, Сливочное масло, Соль',2500,'2021-06-14 21:10:39','2021-06-14 21:10:39');
/*!40000 ALTER TABLE `descr_prod` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dmitry`@`%`*/ /*!50003 TRIGGER `descr_prod_log` AFTER INSERT ON `descr_prod` FOR EACH ROW BEGIN
  	INSERT INTO products_archive (name_table, product_id, description , contain , weight)
  		SELECT
  			'descr_prod' AS name_table,
  			NEW.products_id AS product_id,
  			NEW.description AS description,
  			NEW.contain AS contain,
  			NEW.weight AS weight
  		;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` bigint unsigned DEFAULT NULL COMMENT 'Ссылка на покупателя',
  `product_id` bigint unsigned DEFAULT NULL COMMENT 'Ссылка на товар',
  `discount` float unsigned DEFAULT NULL COMMENT 'Величина скидки',
  `finished_at` date DEFAULT NULL COMMENT 'Срок действия',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_user_id` (`user_id`),
  KEY `index_of_product_id` (`product_id`),
  CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `discounts_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Скидки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,NULL,29,1,'2015-09-20','2030-12-20 20:00:00','2005-08-20 20:00:00'),(2,NULL,22,1,'2014-09-20','2019-11-20 20:00:00','2004-03-20 21:00:00'),(4,NULL,34,3,'2012-08-20','2022-12-20 20:00:00','2016-12-20 20:00:00'),(5,NULL,24,5,'2020-07-20','2014-06-20 21:00:00','2001-01-20 21:00:00'),(6,NULL,20,3,'2028-07-20','2004-01-20 21:00:00','2016-01-20 21:00:00'),(7,NULL,32,7,'2007-09-20','2021-04-20 21:00:00','2010-06-20 21:00:00'),(8,NULL,7,0,'2002-09-20','2027-05-20 21:00:00','2030-04-20 21:00:00'),(9,NULL,21,7,'2017-08-20','2004-06-20 21:00:00','2009-07-20 20:00:00'),(11,NULL,13,4,'2003-08-20','2028-06-20 20:00:00','2016-11-20 20:00:00'),(12,NULL,28,2,'2019-07-20','2007-06-20 21:00:00','2009-11-20 20:00:00'),(13,NULL,9,1,'2029-08-20','2025-08-20 20:00:00','2005-01-20 21:00:00'),(14,NULL,16,1,'2024-09-20','2002-09-20 20:00:00','2011-11-20 20:00:00'),(16,NULL,16,6,'2020-06-20','2015-01-20 21:00:00','2015-07-20 20:00:00'),(18,NULL,23,6,'2009-09-20','2007-05-20 21:00:00','2017-09-20 20:00:00'),(19,NULL,26,6,'2028-09-20','2029-12-20 20:00:00','2024-04-20 21:00:00'),(20,NULL,24,7,'2020-09-20','2006-03-20 21:00:00','2016-10-20 20:00:00');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `id` int NOT NULL COMMENT 'Идентификатор',
  `order_status` varchar(255) NOT NULL COMMENT 'Статус заказа',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_status` (`order_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Статус заказа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (6,'Выполнен'),(1,'Новый'),(0,'Отменен'),(5,'Отправлен'),(2,'Подтвержден'),(3,'Подтвержден ЯндексЕда'),(4,'Собран');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `user_id` bigint unsigned NOT NULL COMMENT 'Ссылка на покупателя',
  `payment_status_id` int NOT NULL COMMENT 'Ссылка на статус оплаты',
  `delivery_type_id` int NOT NULL COMMENT 'Ссылка на тип доставки',
  `order_status_id` int NOT NULL COMMENT 'Ссылка на статус заказа',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_user_id` (`user_id`),
  KEY `payment_status_id` (`payment_status_id`),
  KEY `delivery_type_id` (`delivery_type_id`),
  KEY `order_status_id` (`order_status_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_status` (`id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`delivery_type_id`) REFERENCES `delivery_type` (`id`),
  CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Заказы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,4,2,1,4,'2001-03-20 21:00:00','2021-06-15 04:49:56'),(2,4,1,3,4,'2015-06-20 20:00:00','2010-12-20 21:00:00'),(3,1,2,4,3,'2010-07-20 20:00:00','2019-02-20 21:00:00'),(4,7,4,4,6,'2005-12-20 20:00:00','2031-08-20 21:00:00'),(5,1,3,1,4,'2018-05-20 21:00:00','2021-06-15 04:49:56'),(6,2,1,2,6,'2023-03-20 21:00:00','2026-10-20 21:00:00'),(7,6,5,4,0,'2008-12-20 20:00:00','2026-09-20 21:00:00'),(8,3,2,1,0,'2011-10-20 20:00:00','2013-04-20 21:00:00'),(9,4,4,3,4,'2002-12-20 20:00:00','2004-06-20 22:00:00'),(10,2,3,1,4,'2003-10-20 20:00:00','2021-06-15 04:49:56'),(11,6,3,2,1,'2023-07-20 20:00:00','2023-10-20 20:00:00'),(12,3,1,4,0,'2022-10-20 20:00:00','2018-12-20 20:00:00'),(13,7,1,2,2,'2003-06-20 21:00:00','2021-07-20 20:00:00'),(14,7,1,3,5,'2022-03-20 21:00:00','2018-01-20 22:00:00'),(15,5,5,1,4,'2028-09-20 20:00:00','2021-06-15 04:50:34'),(16,3,2,4,2,'2003-10-20 20:00:00','2021-12-20 20:00:00'),(17,2,1,3,6,'2029-05-20 21:00:00','2014-10-20 21:00:00'),(18,7,3,1,4,'2011-11-20 20:00:00','2021-06-15 04:49:56'),(19,1,4,2,3,'2024-07-20 20:00:00','2027-09-20 21:00:00'),(20,4,5,4,0,'2007-12-20 20:00:00','2017-02-20 22:00:00'),(21,3,1,1,4,'2016-06-20 20:00:00','2021-06-15 04:49:56'),(22,6,3,2,6,'2010-04-20 21:00:00','2005-05-20 21:00:00'),(23,4,5,4,2,'2018-07-20 20:00:00','2016-04-20 22:00:00'),(24,6,3,4,3,'2019-03-20 21:00:00','2001-06-20 21:00:00'),(25,5,2,2,5,'2027-02-20 21:00:00','2016-08-20 21:00:00'),(26,1,2,1,6,'2010-05-20 21:00:00','2021-08-20 21:00:00'),(27,6,2,4,0,'2018-07-20 20:00:00','2005-06-20 21:00:00'),(28,4,1,2,3,'2011-10-20 20:00:00','2010-05-20 22:00:00'),(29,4,1,4,1,'2022-07-20 20:00:00','2018-02-20 21:00:00'),(30,2,3,1,4,'2019-08-20 20:00:00','2021-06-15 04:49:56'),(31,4,3,4,1,'2029-10-20 20:00:00','2021-04-20 22:00:00'),(32,4,4,3,4,'2018-01-20 21:00:00','2016-03-20 21:00:00'),(33,1,5,3,6,'2018-09-20 20:00:00','2015-04-20 22:00:00'),(34,7,1,4,2,'2019-08-20 20:00:00','2020-06-20 20:00:00'),(35,7,4,4,3,'2012-01-20 21:00:00','2015-02-20 21:00:00'),(36,6,4,3,2,'2007-11-20 20:00:00','2024-11-20 21:00:00'),(37,6,2,2,6,'2027-09-20 20:00:00','2023-07-20 20:00:00'),(38,5,2,1,0,'2007-02-20 21:00:00','2015-03-20 22:00:00'),(39,2,1,3,5,'2029-12-20 20:00:00','2002-01-20 22:00:00'),(40,3,2,1,4,'2021-09-20 20:00:00','2021-06-15 04:49:56');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_products` (
  `id` int NOT NULL COMMENT 'Идентификатор',
  `order_id` bigint unsigned NOT NULL COMMENT 'Ссылка на заказ',
  `product_id` bigint unsigned NOT NULL COMMENT 'Ссылка на товар',
  `total` int unsigned DEFAULT '1' COMMENT 'Количество заказанных товарных позиций',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_products_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `orders_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Состав заказа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
INSERT INTO `orders_products` VALUES (1,25,31,1,'2029-12-20 20:00:00','2001-08-20 20:00:00'),(2,37,31,3,'2002-01-20 21:00:00','2014-06-20 20:00:00'),(3,1,20,3,'2021-02-20 21:00:00','2025-08-20 20:00:00'),(4,23,19,3,'2003-04-20 21:00:00','2024-12-20 20:00:00'),(5,11,28,3,'2018-12-20 20:00:00','2018-03-20 21:00:00'),(6,17,9,2,'2010-02-20 21:00:00','2016-09-20 20:00:00'),(7,31,19,3,'2015-09-20 20:00:00','2001-12-20 20:00:00'),(8,34,3,2,'2011-01-20 21:00:00','2013-10-20 20:00:00'),(9,31,4,2,'2024-07-20 20:00:00','2021-08-20 20:00:00'),(10,19,7,2,'2030-03-20 21:00:00','2002-11-20 20:00:00'),(11,21,13,3,'2030-09-20 20:00:00','2018-10-20 20:00:00'),(12,27,1,1,'2015-11-20 20:00:00','2005-10-20 20:00:00'),(13,31,2,1,'2011-01-20 21:00:00','2001-03-20 21:00:00'),(14,28,8,2,'2026-06-20 20:00:00','2012-09-20 20:00:00'),(15,28,22,1,'2002-08-20 20:00:00','2013-03-20 21:00:00'),(16,16,18,3,'2027-02-20 21:00:00','2023-08-20 20:00:00'),(17,23,18,3,'2025-10-20 20:00:00','2028-05-20 21:00:00'),(18,31,1,2,'2012-03-20 21:00:00','2023-02-20 21:00:00'),(19,29,16,2,'2018-11-20 20:00:00','2015-06-20 20:00:00'),(20,2,20,2,'2004-09-20 20:00:00','2014-10-20 20:00:00'),(21,23,32,3,'2020-11-20 20:00:00','2010-07-20 20:00:00'),(22,37,18,2,'2005-10-20 20:00:00','2018-01-20 21:00:00'),(23,12,25,3,'2017-02-20 21:00:00','2027-09-20 20:00:00'),(24,29,32,1,'2014-10-20 20:00:00','2020-01-20 21:00:00'),(25,40,9,3,'2023-11-20 20:00:00','2013-12-20 20:00:00'),(26,39,25,2,'2006-08-20 20:00:00','2012-08-20 20:00:00'),(27,30,31,1,'2001-03-20 21:00:00','2015-12-20 20:00:00'),(28,26,6,3,'2031-07-20 20:00:00','2023-02-20 21:00:00'),(29,19,1,3,'2012-05-20 21:00:00','2028-02-20 21:00:00'),(30,6,12,3,'2027-05-20 21:00:00','2011-09-20 20:00:00'),(31,38,2,3,'2015-10-20 20:00:00','2030-10-20 20:00:00'),(32,33,29,1,'2020-10-20 20:00:00','2015-03-20 21:00:00'),(33,14,1,3,'2020-03-20 21:00:00','2028-09-20 20:00:00'),(34,29,29,1,'2007-01-20 21:00:00','2009-11-20 20:00:00'),(35,4,19,2,'2027-04-20 21:00:00','2019-03-20 21:00:00'),(36,39,1,2,'2012-05-20 21:00:00','2003-05-20 21:00:00'),(37,14,18,2,'2021-04-20 21:00:00','2005-03-20 21:00:00'),(38,2,33,2,'2006-01-20 21:00:00','2030-03-20 21:00:00'),(39,6,3,2,'2011-12-20 20:00:00','2022-10-20 20:00:00'),(40,8,14,3,'2014-10-20 20:00:00','2031-07-20 20:00:00'),(41,19,28,3,'2013-09-20 20:00:00','2016-09-20 20:00:00'),(42,25,23,3,'2016-08-20 20:00:00','2012-05-20 21:00:00'),(43,3,19,3,'2004-06-20 21:00:00','2023-08-20 20:00:00'),(44,25,12,2,'2030-12-20 20:00:00','2016-12-20 20:00:00'),(45,25,4,1,'2006-05-20 21:00:00','2011-11-20 20:00:00'),(46,4,30,3,'2015-08-20 20:00:00','2011-04-20 21:00:00'),(47,21,11,2,'2025-03-20 21:00:00','2007-12-20 20:00:00'),(48,7,31,2,'2008-05-20 21:00:00','2001-05-20 21:00:00'),(49,22,24,2,'2008-05-20 21:00:00','2019-03-20 21:00:00'),(50,20,22,2,'2013-09-20 20:00:00','2008-04-20 21:00:00'),(51,31,14,3,'2008-12-20 20:00:00','2025-07-20 20:00:00'),(52,14,9,1,'2010-06-20 21:00:00','2001-08-20 20:00:00'),(53,1,7,3,'2010-03-20 21:00:00','2015-02-20 21:00:00'),(54,8,15,2,'2003-09-20 20:00:00','2014-09-20 20:00:00'),(55,28,28,2,'2004-09-20 20:00:00','2002-07-20 20:00:00'),(56,32,17,3,'2027-10-20 20:00:00','2012-05-20 21:00:00'),(57,24,16,2,'2002-01-20 21:00:00','2026-04-20 21:00:00'),(58,9,34,3,'2014-12-20 20:00:00','2001-12-20 20:00:00'),(59,9,22,3,'2029-04-20 21:00:00','2022-05-20 21:00:00'),(60,4,29,2,'2026-01-20 21:00:00','2027-10-20 20:00:00'),(61,8,20,1,'2008-04-20 21:00:00','2005-01-20 21:00:00'),(62,32,20,2,'2017-11-20 20:00:00','2008-07-20 20:00:00'),(63,32,7,2,'2018-04-20 21:00:00','2003-02-20 21:00:00'),(64,12,30,3,'2003-10-20 20:00:00','2019-04-20 21:00:00'),(65,14,8,2,'2031-07-20 20:00:00','2008-10-20 20:00:00'),(66,6,14,2,'2007-03-20 21:00:00','2008-02-20 21:00:00'),(67,34,26,1,'2028-12-20 20:00:00','2030-08-20 20:00:00'),(68,33,11,1,'2024-10-20 20:00:00','2012-11-20 20:00:00'),(69,1,2,2,'2002-10-20 20:00:00','2008-12-20 20:00:00'),(70,17,6,3,'2003-09-20 20:00:00','2028-04-20 21:00:00'),(71,25,34,1,'2018-04-20 21:00:00','2023-11-20 20:00:00'),(72,19,11,3,'2008-03-20 21:00:00','2007-11-20 20:00:00'),(73,27,22,1,'2027-07-20 20:00:00','2010-11-20 20:00:00'),(74,14,14,2,'2029-07-20 20:00:00','2026-03-20 21:00:00'),(75,29,17,2,'2025-08-20 20:00:00','2002-02-20 21:00:00'),(76,32,15,2,'2031-07-20 20:00:00','2020-05-20 21:00:00'),(77,7,15,3,'2017-08-20 20:00:00','2029-06-20 20:00:00'),(78,22,6,2,'2005-02-20 21:00:00','2026-05-20 21:00:00'),(79,13,33,1,'2005-11-20 20:00:00','2022-05-20 21:00:00'),(80,37,34,2,'2009-05-20 21:00:00','2023-05-20 21:00:00'),(81,1,9,1,'2012-02-20 21:00:00','2016-07-20 20:00:00'),(82,13,2,2,'2017-04-20 21:00:00','2024-04-20 21:00:00'),(83,19,23,1,'2012-06-20 21:00:00','2010-10-20 20:00:00'),(84,39,31,1,'2026-02-20 21:00:00','2028-03-20 21:00:00'),(85,33,27,3,'2019-04-20 21:00:00','2008-04-20 21:00:00'),(86,10,17,3,'2023-10-20 20:00:00','2004-04-20 21:00:00'),(87,16,2,2,'2017-03-20 21:00:00','2009-07-20 20:00:00'),(88,21,11,2,'2027-03-20 21:00:00','2021-10-20 20:00:00'),(89,1,16,2,'2011-08-20 20:00:00','2031-03-20 21:00:00'),(90,31,21,1,'2022-09-20 20:00:00','2010-04-20 21:00:00'),(91,26,4,2,'2008-07-20 20:00:00','2015-01-20 21:00:00'),(92,6,21,1,'2010-09-20 20:00:00','2009-07-20 20:00:00'),(93,15,22,3,'2009-01-20 21:00:00','2007-05-20 21:00:00'),(94,7,34,1,'2010-08-20 20:00:00','2012-05-20 21:00:00'),(95,9,29,3,'2014-02-20 21:00:00','2025-06-20 20:00:00'),(96,3,23,1,'2004-02-20 21:00:00','2020-09-20 20:00:00'),(97,32,12,1,'2011-03-20 21:00:00','2018-04-20 21:00:00'),(98,6,18,3,'2007-06-20 21:00:00','2019-09-20 20:00:00'),(99,14,18,2,'2011-11-20 20:00:00','2005-12-20 20:00:00'),(100,36,24,2,'2011-02-20 21:00:00','2012-10-20 20:00:00');
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_status`
--

DROP TABLE IF EXISTS `payment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_status` (
  `id` int NOT NULL COMMENT 'Идентификатор',
  `payment_status` varchar(255) NOT NULL COMMENT 'Статус/Вид оплаты',
  PRIMARY KEY (`id`),
  UNIQUE KEY `payment_status` (`payment_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Статус оплаты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_status`
--

LOCK TABLES `payment_status` WRITE;
/*!40000 ALTER TABLE `payment_status` DISABLE KEYS */;
INSERT INTO `payment_status` VALUES (1,'Не оплачен'),(2,'Оплата при получении, Яндекс Еда'),(3,'Оплачен'),(4,'Оплачен картой на сайте'),(5,'Оплачен, Яндекс Еда');
/*!40000 ALTER TABLE `payment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_media`
--

DROP TABLE IF EXISTS `prod_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `product_id` bigint unsigned NOT NULL COMMENT 'Ссылка на товар',
  `file` varchar(255) NOT NULL COMMENT 'Путь к файлу',
  `size` int NOT NULL COMMENT 'Размер файла',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `prod_media_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Медиафайлы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_media`
--

LOCK TABLES `prod_media` WRITE;
/*!40000 ALTER TABLE `prod_media` DISABLE KEYS */;
INSERT INTO `prod_media` VALUES (1,12,'bakery/products/images/ 0549eb07.jpeg',257,'2001-09-20 20:00:00','2021-06-15 00:53:57'),(2,30,'bakery/products/images/ 0549f061.jpeg',216,'2019-03-20 21:00:00','2021-06-15 00:53:57'),(3,26,'bakery/products/images/ 0549f192.jpeg',235,'2001-01-20 21:00:00','2021-06-15 00:53:57'),(4,11,'bakery/products/images/ 0549f271.jpeg',282,'2012-09-20 20:00:00','2021-06-15 00:53:57'),(5,27,'bakery/products/images/ 0549f334.jpeg',260,'2001-08-20 20:00:00','2021-06-15 00:53:57'),(6,24,'bakery/products/images/ 0549f3f2.jpeg',230,'2007-09-20 20:00:00','2021-06-15 00:53:57'),(7,30,'bakery/products/images/ 0549f4ae.jpeg',300,'2017-09-20 20:00:00','2021-06-15 00:53:57'),(8,26,'bakery/products/images/ 0549f578.jpeg',211,'2019-01-20 21:00:00','2021-06-15 00:53:57'),(9,14,'bakery/products/images/ 0549f631.jpeg',208,'2003-11-20 20:00:00','2021-06-15 00:53:57'),(10,28,'bakery/products/images/ 0549f6f9.jpeg',213,'2020-02-20 21:00:00','2021-06-15 00:53:57'),(11,2,'bakery/products/images/ 0549f7b4.jpeg',255,'2004-10-20 20:00:00','2021-06-15 00:53:57'),(12,26,'bakery/products/images/ 0549f86e.jpeg',252,'2018-06-20 20:00:00','2021-06-15 00:53:57'),(13,34,'bakery/products/images/ 054a013c.jpeg',208,'2006-08-20 20:00:00','2021-06-15 00:53:57'),(14,32,'bakery/products/images/ 054a0386.jpeg',220,'2008-09-20 20:00:00','2021-06-15 00:53:57'),(15,7,'bakery/products/images/ 054a047a.jpeg',260,'2002-07-20 20:00:00','2021-06-15 00:53:57'),(16,25,'bakery/products/images/ 054a0541.jpeg',265,'2011-06-20 21:00:00','2021-06-15 00:53:57'),(17,7,'bakery/products/images/ 054a0601.jpeg',225,'2001-03-20 21:00:00','2021-06-15 00:53:57'),(18,32,'bakery/products/images/ 054a06cd.jpeg',240,'2006-09-20 20:00:00','2021-06-15 00:53:57'),(19,20,'bakery/products/images/ 054a078c.jpeg',272,'2013-10-20 20:00:00','2021-06-15 00:53:57'),(20,5,'bakery/products/images/ 054a0844.jpeg',214,'2022-09-20 20:00:00','2021-06-15 00:53:57'),(21,5,'bakery/products/images/ 054a08fc.jpeg',274,'2030-08-20 20:00:00','2021-06-15 00:53:57'),(22,33,'bakery/products/images/ 054a09b5.jpeg',269,'2026-02-20 21:00:00','2021-06-15 00:53:57'),(23,4,'bakery/products/images/ 054a0a6d.jpeg',244,'2028-08-20 20:00:00','2021-06-15 00:53:57'),(24,34,'bakery/products/images/ 054a0b23.jpeg',206,'2014-12-20 20:00:00','2021-06-15 00:53:57'),(25,23,'bakery/products/images/ 054a0bd8.jpeg',297,'2023-07-20 20:00:00','2021-06-15 00:53:57'),(26,2,'bakery/products/images/ 054a0c90.jpeg',210,'2026-12-20 20:00:00','2021-06-15 00:53:57'),(27,22,'bakery/products/images/ 054a0d48.jpeg',253,'2014-06-20 21:00:00','2021-06-15 00:53:57'),(28,24,'bakery/products/images/ 054a0dfe.jpeg',234,'2022-02-20 21:00:00','2021-06-15 00:53:57'),(29,30,'bakery/products/images/ 054a0eb2.jpeg',216,'2028-02-20 21:00:00','2021-06-15 00:53:57'),(30,6,'bakery/products/images/ 054a0f67.jpeg',265,'2009-01-20 21:00:00','2021-06-15 00:53:57'),(31,16,'bakery/products/images/ 054a101b.jpeg',285,'2003-02-20 21:00:00','2021-06-15 00:53:57'),(32,1,'bakery/products/images/ 054a10ce.jpeg',267,'2006-07-20 20:00:00','2021-06-15 00:53:57'),(33,14,'bakery/products/images/ 054a1216.jpeg',279,'2001-02-20 21:00:00','2021-06-15 00:53:57'),(34,4,'bakery/products/images/ 054a12f4.jpeg',217,'2005-09-20 20:00:00','2021-06-15 00:53:57'),(35,8,'bakery/products/images/ 054a13af.jpeg',240,'2009-06-20 21:00:00','2021-06-15 00:53:57'),(36,23,'bakery/products/images/ 054a1463.jpeg',227,'2008-02-20 21:00:00','2021-06-15 00:53:57'),(37,21,'bakery/products/images/ 054a151e.jpeg',275,'2012-02-20 21:00:00','2021-06-15 00:53:57'),(38,23,'bakery/products/images/ 054a15d6.jpeg',286,'2001-03-20 21:00:00','2021-06-15 00:53:57'),(39,32,'bakery/products/images/ 054a1689.jpeg',216,'2025-10-20 20:00:00','2021-06-15 00:53:57'),(40,32,'bakery/products/images/ 054a1740.jpeg',263,'2011-03-20 21:00:00','2021-06-15 00:53:57'),(41,23,'bakery/products/images/ 054a184b.jpeg',295,'2014-08-20 20:00:00','2021-06-15 00:53:57'),(42,23,'bakery/products/images/ 054a1902.jpeg',299,'2031-05-20 21:00:00','2021-06-15 00:53:57'),(43,34,'bakery/products/images/ 054a19b6.jpeg',261,'2029-03-20 21:00:00','2021-06-15 00:53:57'),(44,19,'bakery/products/images/ 054a1a69.jpeg',236,'2030-10-20 20:00:00','2021-06-15 00:53:57'),(45,12,'bakery/products/images/ 054a1b1d.jpeg',296,'2004-06-20 21:00:00','2021-06-15 00:53:57'),(46,21,'bakery/products/images/ 054a2115.jpeg',293,'2002-07-20 20:00:00','2021-06-15 00:53:57'),(47,18,'bakery/products/images/ 054a2267.jpeg',220,'2029-05-20 21:00:00','2021-06-15 00:53:57'),(48,10,'bakery/products/images/ 054a232e.jpeg',272,'2004-01-20 21:00:00','2021-06-15 00:53:57'),(49,10,'bakery/products/images/ 054a23e4.jpeg',200,'2011-12-20 20:00:00','2021-06-15 00:53:57'),(50,1,'bakery/products/images/ 054a249c.jpeg',243,'2001-12-20 20:00:00','2021-06-15 00:53:57'),(51,27,'bakery/products/images/ 054a2552.jpeg',228,'2029-01-20 21:00:00','2021-06-15 00:53:57'),(52,5,'bakery/products/images/ 054a2609.jpeg',208,'2018-03-20 21:00:00','2021-06-15 00:53:57'),(53,21,'bakery/products/images/ 054a273f.jpeg',235,'2018-04-20 21:00:00','2021-06-15 00:53:57'),(54,17,'bakery/products/images/ 054a2803.jpeg',268,'2005-11-20 20:00:00','2021-06-15 00:53:57'),(55,26,'bakery/products/images/ 054a28b9.jpeg',243,'2022-12-20 20:00:00','2021-06-15 00:53:57'),(56,31,'bakery/products/images/ 054a296f.jpeg',217,'2010-06-20 21:00:00','2021-06-15 00:53:57'),(57,31,'bakery/products/images/ 054a2a25.jpeg',272,'2025-10-20 20:00:00','2021-06-15 00:53:57'),(58,16,'bakery/products/images/ 054a2adb.jpeg',253,'2003-12-20 20:00:00','2021-06-15 00:53:57'),(59,21,'bakery/products/images/ 054a2cce.jpeg',238,'2028-07-20 20:00:00','2021-06-15 00:53:57'),(60,26,'bakery/products/images/ 054a2f45.jpeg',213,'2008-12-20 20:00:00','2021-06-15 00:53:57'),(61,1,'bakery/products/images/ 054a3019.jpeg',265,'2023-07-20 20:00:00','2021-06-15 00:53:57'),(62,9,'bakery/products/images/ 054a30c7.jpeg',219,'2023-03-20 21:00:00','2021-06-15 00:53:57'),(63,12,'bakery/products/images/ 054a316b.jpeg',200,'2019-06-20 20:00:00','2021-06-15 00:53:57'),(64,13,'bakery/products/images/ 054a320e.jpeg',234,'2017-11-20 20:00:00','2021-06-15 00:53:57'),(65,14,'bakery/products/images/ 054a32ae.jpeg',300,'2010-06-20 21:00:00','2021-06-15 00:53:57'),(66,11,'bakery/products/images/ 054a33b6.jpeg',260,'2022-02-20 21:00:00','2021-06-15 00:53:57'),(67,14,'bakery/products/images/ 054a3467.jpeg',226,'2023-02-20 21:00:00','2021-06-15 00:53:57'),(68,19,'bakery/products/images/ 054a3516.jpeg',212,'2024-12-20 20:00:00','2021-06-15 00:53:57'),(69,2,'bakery/products/images/ 054a35bb.jpeg',203,'2029-05-20 21:00:00','2021-06-15 00:53:57'),(70,14,'bakery/products/images/ 054a365d.jpeg',261,'2007-08-20 20:00:00','2021-06-15 00:53:57'),(71,14,'bakery/products/images/ 054a36fe.jpeg',289,'2021-07-20 20:00:00','2021-06-15 00:53:57'),(72,18,'bakery/products/images/ 054a37a4.jpeg',294,'2025-10-20 20:00:00','2021-06-15 00:53:57'),(73,8,'bakery/products/images/ 054a388a.jpeg',259,'2030-11-20 20:00:00','2021-06-15 00:53:57'),(74,15,'bakery/products/images/ 054a3935.jpeg',295,'2010-01-20 21:00:00','2021-06-15 00:53:57'),(75,21,'bakery/products/images/ 054a39d8.jpeg',210,'2019-07-20 20:00:00','2021-06-15 00:53:57'),(76,21,'bakery/products/images/ 054a3a7a.jpeg',266,'2028-07-20 20:00:00','2021-06-15 00:53:57'),(77,10,'bakery/products/images/ 054a3b1c.jpeg',252,'2001-09-20 20:00:00','2021-06-15 00:53:57'),(78,11,'bakery/products/images/ 054a3bbc.jpeg',201,'2007-09-20 20:00:00','2021-06-15 00:53:57'),(79,25,'bakery/products/images/ 054a3c5e.jpeg',220,'2012-01-20 21:00:00','2021-06-15 00:53:57'),(80,30,'bakery/products/images/ 054a3cfd.jpeg',288,'2016-08-20 20:00:00','2021-06-15 00:53:57'),(81,10,'bakery/products/images/ 054a3d9d.jpeg',285,'2026-11-20 20:00:00','2021-06-15 00:53:57'),(82,23,'bakery/products/images/ 054a3e43.jpeg',223,'2023-07-20 20:00:00','2021-06-15 00:53:57'),(83,11,'bakery/products/images/ 054a3ee6.jpeg',233,'2031-07-20 20:00:00','2021-06-15 00:53:57'),(84,7,'bakery/products/images/ 054a3f87.jpeg',265,'2014-04-20 21:00:00','2021-06-15 00:53:57'),(85,33,'bakery/products/images/ 054a4028.jpeg',260,'2028-02-20 21:00:00','2021-06-15 00:53:57'),(86,3,'bakery/products/images/ 054a40c8.jpeg',220,'2006-02-20 21:00:00','2021-06-15 00:53:57'),(87,4,'bakery/products/images/ 054a4168.jpeg',239,'2024-04-20 21:00:00','2021-06-15 00:53:57'),(88,13,'bakery/products/images/ 054a4208.jpeg',215,'2015-12-20 20:00:00','2021-06-15 00:53:57'),(89,8,'bakery/products/images/ 054a42a7.jpeg',262,'2027-05-20 21:00:00','2021-06-15 00:53:57'),(90,2,'bakery/products/images/ 054a4348.jpeg',275,'2017-01-20 21:00:00','2021-06-15 00:53:57'),(91,31,'bakery/products/images/ 054a43e8.jpeg',237,'2011-04-20 21:00:00','2021-06-15 00:53:57'),(92,1,'bakery/products/images/ 054a4488.jpeg',246,'2030-03-20 21:00:00','2021-06-15 00:53:57'),(93,11,'bakery/products/images/ 054a4558.jpeg',219,'2001-05-20 21:00:00','2021-06-15 00:53:57'),(94,15,'bakery/products/images/ 054a4600.jpeg',289,'2011-01-20 21:00:00','2021-06-15 00:53:57'),(95,17,'bakery/products/images/ 054a46a2.jpeg',203,'2017-01-20 21:00:00','2021-06-15 00:53:57'),(96,34,'bakery/products/images/ 054a4743.jpeg',288,'2016-07-20 20:00:00','2021-06-15 00:53:57'),(97,9,'bakery/products/images/ 054a47e7.jpeg',220,'2022-04-20 21:00:00','2021-06-15 00:53:57'),(98,8,'bakery/products/images/ 054a4897.jpeg',228,'2030-03-20 21:00:00','2021-06-15 00:53:57'),(99,12,'bakery/products/images/ 054a4944.jpeg',225,'2013-09-20 20:00:00','2021-06-15 00:53:57'),(100,21,'bakery/products/images/ 054a49e7.jpeg',256,'2026-05-20 21:00:00','2021-06-15 00:53:57');
/*!40000 ALTER TABLE `prod_media` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dmitry`@`%`*/ /*!50003 TRIGGER `prod_media_log` AFTER INSERT ON `prod_media` FOR EACH ROW BEGIN
  	INSERT INTO products_archive (name_table, prod_media_id, product_id, file)
  		SELECT
  			'prod_media' AS name_table,
  			NEW.id AS prod_media_id ,
  			NEW.product_id AS product_id,
  			NEW.file AS file
  		;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `name` varchar(255) DEFAULT NULL COMMENT 'Название товара',
  `price` decimal(11,1) DEFAULT NULL COMMENT 'Цена',
  `catalog_id` int unsigned DEFAULT NULL COMMENT 'Ссылка на каталог',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_catalog_id` (`catalog_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Товары и Цена';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Финский',190.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(2,'Французская Булка',195.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(3,'Силуановский',195.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(4,'Силуановский большой',255.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(5,'Цельнозерновои',195.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(6,'Гречневый',195.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(7,'Волжский',175.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(8,'Ремесленный',200.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(9,'Литовский',210.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(10,'Немецкий',260.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(11,'Польский',190.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(12,'Деревенский',195.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(13,'Бородинский',200.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(14,'Капрановский',210.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(15,'Сретенский',190.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(16,'Хала традиционная',200.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(17,'Луковый',200.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(18,'Злаковый',195.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(19,'Пшеничный с куркумои',195.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(20,'Воронцовский',210.0,1,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(21,'Кекс творожный',196.0,2,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(22,'Маффины Хлебомолы',660.0,2,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(23,'Бельгийское печенье',639.0,2,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(24,'Пахлава',1116.0,2,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(25,'Медовик',453.0,2,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(26,'Наполеон',752.0,2,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(27,'Имбирные пряники',92.0,2,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(28,'Тарт Апельсин',251.0,2,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(29,'Шантильи',275.0,2,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(30,'Банановый тарт',435.0,2,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(31,'Киш жульен',413.0,3,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(32,'Меренга',51.0,2,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(33,'Пирог с капустой',261.0,3,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(34,'Пирог с мясом',587.0,3,'2021-06-14 21:10:05','2021-06-14 21:10:05'),(38,'Финский',190.0,1,'2021-06-15 05:21:48','2021-06-15 05:21:48');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dmitry`@`%`*/ /*!50003 TRIGGER `products_log` AFTER INSERT ON `products` FOR EACH ROW BEGIN
  	INSERT INTO products_archive (name_table, product_id, product_name, price, catalog_id)
  		SELECT
  			'products' AS name_table,
  			NEW.id AS product_id,
  			NEW.name AS product_name,
  			NEW.price AS price,
  			NEW.catalog_id AS catalog_id
  		;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `products_archive`
--

DROP TABLE IF EXISTS `products_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_archive` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name_table` varchar(255) DEFAULT NULL COMMENT 'название таблицы',
  `catalog_id` int unsigned NOT NULL COMMENT 'Ссылка на каталог',
  `catalog_name` varchar(255) DEFAULT NULL COMMENT 'Название раздела',
  `product_id` int unsigned NOT NULL COMMENT 'Ссылка на товар',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Название товара',
  `description` text COMMENT 'Описание товара',
  `contain` text COMMENT 'Состав товара',
  `weight` decimal(15,0) DEFAULT NULL COMMENT 'Вес-Объем товара',
  `price` decimal(11,1) DEFAULT NULL COMMENT 'Цена',
  `prod_media_id` int unsigned DEFAULT NULL COMMENT 'Ссылка на media',
  `file` varchar(255) NOT NULL COMMENT 'Путь к файлу',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Архивная таблица для товаров';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_archive`
--

LOCK TABLES `products_archive` WRITE;
/*!40000 ALTER TABLE `products_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` bigint unsigned NOT NULL COMMENT 'Ссылка на покупателя',
  `first_name` varchar(100) NOT NULL COMMENT 'Имя покупателя',
  `last_name` varchar(100) NOT NULL COMMENT 'Фамилия покупателя',
  `phone` varchar(100) NOT NULL COMMENT 'Телефон',
  `email` varchar(100) NOT NULL COMMENT 'Почта',
  `current_discount` int unsigned DEFAULT '0' COMMENT 'Текущая скидка в %',
  `address_1` text COMMENT 'Адрес доставки 1',
  `address_2` text COMMENT 'Адрес доставки 2',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Профили покупателей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Paloma','Benjamin','7-990-543-5941','nisl@Nunc.net',4,'P.O. Box 116, 725 Consectetuer Street','Ap #677-8414 Sed Rd.','2024-08-20 20:00:00','2006-06-20 22:00:00'),(2,'Kasper','Cruz','7-992-503-6302','mauris.blandit.mattis@fermentumconvallis.net',7,'Ap #430-4892 Nascetur Av.','4082 Et Ave','2012-05-20 21:00:00','2014-01-20 21:00:00'),(3,'Erasmus','Murphy','7-942-101-5264','elit.Aliquam@Namtempordiam.net',1,'164-5934 Velit Rd.','828-536 Fringilla. St.','2007-02-20 21:00:00','2025-11-20 20:00:00'),(4,'Linus','Potts','7-976-943-4497','Donec.dignissim.magna@sodalesat.ca',7,'5916 Sed St.','P.O. Box 819, 2683 Cras Ave','2008-02-20 21:00:00','2025-06-20 21:00:00'),(5,'Sandra','Lewis','7-958-288-5928','orci.luctus.et@eget.edu',0,'736-3635 Nam Rd.','Ap #866-5512 Sem St.','2024-11-20 20:00:00','2018-03-20 21:00:00'),(6,'Jack','Britt','7-923-414-2197','nonummy@orciPhasellus.net',4,'Ap #412-4839 Aliquam Ave','8100 Urna Avenue','2021-01-20 21:00:00','2019-11-20 21:00:00'),(7,'Troy','Curtis','7-901-720-1855','a.malesuada@fringillamilacinia.net',4,'427-7481 Lorem, St.','Ap #396-2630 Pretium Rd.','2023-05-20 21:00:00','2008-12-20 20:00:00'),(8,'Jana','Trujillo','7-968-739-0522','Duis.mi.enim@habitantmorbi.net',1,'5498 Imperdiet Road','4110 Dignissim St.','2027-02-20 21:00:00','2020-09-20 21:00:00'),(9,'Quentin','Colon','7-971-605-0662','dis.parturient@lectus.edu',0,'678-4165 Vivamus Rd.','158-9425 A Road','2022-09-20 20:00:00','2002-12-20 21:00:00'),(10,'Shafira','Tate','7-989-101-9600','lacus.Nulla.tincidunt@ametrisusDonec.net',4,'5357 Est Rd.','Ap #925-6504 Tincidunt Rd.','2007-04-20 21:00:00','2021-04-20 22:00:00'),(11,'Georgia','Mcgowan','7-918-295-0466','eget.lacus.Mauris@risusquis.net',1,'Ap #883-3053 Scelerisque St.','875-6773 Tempus Ave','2003-03-20 21:00:00','2031-03-20 21:00:00'),(12,'Leilani','Simpson','7-948-933-5166','amet.nulla@sagittis.org',7,'2080 Integer Avenue','Ap #756-7292 Luctus. St.','2023-07-20 20:00:00','2015-11-20 20:00:00'),(13,'Sydney','Pena','7-954-836-7593','rutrum.non.hendrerit@duiquis.edu',3,'1995 Faucibus St.','P.O. Box 615, 3157 Semper Rd.','2011-07-20 20:00:00','2025-08-20 21:00:00'),(14,'Fiona','Kaufman','7-933-148-0218','Suspendisse.tristique@Namconsequat.edu',7,'P.O. Box 263, 6867 Lorem, Road','P.O. Box 321, 9499 Lacus. Street','2007-12-20 20:00:00','2021-09-20 21:00:00'),(15,'Rana','Joyner','7-997-860-3097','eros.Nam.consequat@netus.net',4,'9021 Sed St.','8315 Sapien, Rd.','2029-03-20 21:00:00','2005-08-20 21:00:00'),(16,'Kylee','Woodward','7-919-344-5502','aliquam.eros.turpis@auguescelerisque.ca',7,'799-9354 Molestie Road','875-1673 Dui, Rd.','2008-01-20 21:00:00','2017-01-20 22:00:00'),(17,'Alan','Church','7-942-435-1130','consectetuer@SedmolestieSed.com',3,'Ap #986-6817 Lorem Rd.','928-2044 Eu Av.','2016-09-20 20:00:00','2025-04-20 22:00:00'),(18,'Bertha','Beach','7-903-329-1238','tristique.senectus@nuncrisusvarius.ca',5,'Ap #535-2793 Amet St.','260-4326 Pede. St.','2018-12-20 20:00:00','2001-10-20 21:00:00'),(19,'Cedric','Perry','7-987-719-4906','Fusce@lectus.org',5,'P.O. Box 215, 3235 Diam Street','Ap #417-6080 Lobortis St.','2008-11-20 20:00:00','2021-03-20 21:00:00'),(20,'Sage','Osborne','7-948-843-9786','Nunc@Suspendissealiquet.com',4,'2140 Convallis Rd.','Ap #148-1866 Luctus Av.','2026-08-20 20:00:00','2008-10-20 20:00:00');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dmitry`@`%`*/ /*!50003 TRIGGER `profiles_log` AFTER INSERT ON `profiles` FOR EACH ROW BEGIN
  	INSERT INTO users_archive (name_table, user_id, first_name, last_name, phone, 
  		email, current_discount, address_1, address_2)
	  		SELECT
	  			'profiles' AS name_table,
	  			NEW.user_id AS user_id,
	  			NEW.first_name AS first_name,
	  			NEW.last_name AS last_name,
	  			NEW.phone AS phone,
	  			NEW.email AS email,
	  			NEW.current_discount AS current_discount,
	  			NEW.address_1 AS address_1,
	  			NEW.address_2 AS address_2 
	  		;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор покупателя',
  `name` varchar(100) NOT NULL COMMENT 'Имя покупателя',
  `login` varchar(100) NOT NULL COMMENT 'Логин покупателя',
  `phone` varchar(100) NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Покупатели';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Burke','tempus','7-918-342-6445','2003-08-20 20:00:00','2002-11-20 20:00:00'),(2,'Laurel','Fusce','7-599-663-9871','2018-04-20 21:00:00','2021-09-20 20:00:00'),(3,'Tanner','Class','7-616-489-0380','2010-11-20 20:00:00','2028-08-20 20:00:00'),(4,'Constance','purus','7-951-375-5351','2017-05-20 21:00:00','2020-04-20 21:00:00'),(5,'Abraham','magna','7-124-945-0591','2005-07-20 20:00:00','2021-06-20 20:00:00'),(6,'Carolyn','sit','7-403-963-8431','2027-01-20 21:00:00','2009-04-20 21:00:00'),(7,'Ronan','neque','7-815-402-6275','2016-08-20 20:00:00','2028-10-20 20:00:00'),(8,'Hermione','consectetuer,','7-992-302-4470','2027-03-20 21:00:00','2019-12-20 20:00:00'),(9,'Selma','purus.','7-864-959-8051','2026-03-20 21:00:00','2020-01-20 21:00:00'),(10,'Nolan','a','7-558-295-6195','2004-02-20 21:00:00','2026-07-20 20:00:00'),(11,'Igor','gravida','7-414-745-0849','2018-02-20 21:00:00','2027-06-20 20:00:00'),(12,'Kay','natoque','7-178-850-8680','2007-06-20 21:00:00','2017-11-20 20:00:00'),(13,'Emerald','magnis','7-728-227-9685','2017-09-20 20:00:00','2017-01-20 21:00:00'),(14,'Joshua','lectus,','7-336-639-5170','2031-12-20 20:00:00','2003-05-20 21:00:00'),(15,'Burton','eget,','7-996-943-8799','2003-04-20 21:00:00','2014-12-20 20:00:00'),(16,'Alyssa','Etiam','7-292-198-7463','2022-04-20 21:00:00','2008-05-20 21:00:00'),(17,'Vaughan','id,','7-134-125-1391','2029-05-20 21:00:00','2015-04-20 21:00:00'),(18,'Lacey','eleifend,','7-707-606-2127','2018-05-20 21:00:00','2025-03-20 21:00:00'),(19,'Leah','eget','7-478-535-9650','2024-12-20 20:00:00','2014-07-20 20:00:00'),(20,'Lani','quam','7-171-578-5961','2002-11-20 20:00:00','2019-08-20 20:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dmitry`@`%`*/ /*!50003 TRIGGER `users_log` AFTER INSERT ON `users` FOR EACH ROW BEGIN
  	INSERT INTO users_archive (name_table, user_id, login, first_name, phone)
  		SELECT
  			'users' AS name_table,
  			NEW.id AS user_id,
  			NEW.login AS login,
  			NEW.name AS first_name,
  			NEW.phone AS phone 
  		;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users_archive`
--

DROP TABLE IF EXISTS `users_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_archive` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name_table` varchar(255) DEFAULT NULL COMMENT 'название таблицы',
  `user_id` int NOT NULL COMMENT 'ID покупателя',
  `login` varchar(255) DEFAULT NULL COMMENT 'login покупателя',
  `first_name` varchar(255) DEFAULT NULL COMMENT 'Имя покупателя',
  `last_name` varchar(255) DEFAULT NULL COMMENT 'фамилия товара',
  `phone` varchar(100) DEFAULT NULL COMMENT 'Телефон',
  `email` varchar(100) DEFAULT NULL COMMENT 'Почта',
  `current_discount` int unsigned DEFAULT '0' COMMENT 'Текущая скидка в %',
  `address_1` text COMMENT 'Адрес доставки 1',
  `address_2` text COMMENT 'Адрес доставки 2',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Архивная таблица для товаров';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_archive`
--

LOCK TABLES `users_archive` WRITE;
/*!40000 ALTER TABLE `users_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `Products_for_all_Yandex_ordes`
--

/*!50001 DROP VIEW IF EXISTS `Products_for_all_Yandex_ordes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dmitry`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Products_for_all_Yandex_ordes` AS select `op`.`order_id` AS `№ Заказа`,`c`.`name` AS `Каталог`,`p`.`name` AS `Название товара`,`op`.`total` AS `Количество`,((`op`.`total` * `dp`.`weight`) / 1000) AS `Вес товара, КГ`,`os`.`order_status` AS `Статус заказ`,`dt`.`delivery_name` AS `Тип Доставки` from ((((((`orders_products` `op` join `products` `p` on((`op`.`product_id` = `p`.`id`))) join `orders` `o` on((`o`.`id` = `op`.`order_id`))) join `delivery_type` `dt` on((`dt`.`id` = `o`.`delivery_type_id`))) join `order_status` `os` on((`os`.`id` = `o`.`order_status_id`))) join `catalogs` `c` on((`c`.`id` = `p`.`catalog_id`))) join `descr_prod` `dp` on((`dp`.`products_id` = `p`.`id`))) where ((`o`.`order_status_id` <> 0) and (`o`.`order_status_id` <> 6) and (`o`.`delivery_type_id` = 4)) order by `o`.`order_status_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_current_ordes`
--

/*!50001 DROP VIEW IF EXISTS `all_current_ordes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dmitry`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `all_current_ordes` AS select `o`.`id` AS `Номер заказа`,`os`.`order_status` AS `Статус заказа`,`p`.`first_name` AS `First name`,`p`.`last_name` AS `Last name`,`p`.`phone` AS `Phone`,(select `dt`.`delivery_name` from `delivery_type` `dt` where (`dt`.`id` = `o`.`delivery_type_id`)) AS `Тип доставки` from ((`profiles` `p` join `orders` `o` on((`o`.`user_id` = `p`.`user_id`))) join `order_status` `os` on((`o`.`order_status_id` = `os`.`id`))) where ((`os`.`order_status` <> 'Отменен') and (`os`.`order_status` <> 'Выполнен')) order by `o`.`order_status_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-15 14:47:07

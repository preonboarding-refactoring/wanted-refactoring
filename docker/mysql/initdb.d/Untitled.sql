-- MySQL dump 10.13  Distrib 8.0.27, for macos11.6 (x86_64)
--
-- Host: localhost    Database: wantedlab
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_at` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_at` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,NULL,NULL),(2,NULL,NULL),(3,NULL,NULL),(4,NULL,NULL),(5,NULL,NULL),(6,NULL,NULL),(7,NULL,NULL),(8,NULL,NULL),(9,NULL,NULL),(10,NULL,NULL),(11,NULL,NULL),(12,NULL,NULL),(13,NULL,NULL),(14,NULL,NULL),(15,NULL,NULL),(16,NULL,NULL),(17,NULL,NULL),(18,NULL,NULL),(19,NULL,NULL),(20,NULL,NULL),(21,NULL,NULL),(22,NULL,NULL),(23,NULL,NULL),(24,NULL,NULL),(25,NULL,NULL),(26,NULL,NULL),(27,NULL,NULL),(28,NULL,NULL),(29,NULL,NULL),(30,NULL,NULL),(31,NULL,NULL),(32,NULL,NULL),(33,NULL,NULL),(34,NULL,NULL),(35,NULL,NULL),(36,NULL,NULL),(37,NULL,NULL),(38,NULL,NULL),(39,NULL,NULL),(40,NULL,NULL),(41,NULL,NULL),(42,NULL,NULL),(43,NULL,NULL),(44,NULL,NULL),(45,NULL,NULL),(46,NULL,NULL),(47,NULL,NULL),(48,NULL,NULL),(49,NULL,NULL),(50,NULL,NULL),(51,NULL,NULL),(52,NULL,NULL),(53,NULL,NULL),(54,NULL,NULL),(55,NULL,NULL),(56,NULL,NULL),(57,NULL,NULL),(58,NULL,NULL),(59,NULL,NULL),(60,NULL,NULL),(61,NULL,NULL),(62,NULL,NULL),(63,NULL,NULL),(64,NULL,NULL),(65,NULL,NULL),(66,NULL,NULL),(67,NULL,NULL),(68,NULL,NULL),(69,NULL,NULL),(70,NULL,NULL),(71,NULL,NULL),(72,NULL,NULL),(73,NULL,NULL),(74,NULL,NULL),(75,NULL,NULL),(76,NULL,NULL),(77,NULL,NULL),(78,NULL,NULL),(79,NULL,NULL),(80,NULL,NULL),(81,NULL,NULL),(82,NULL,NULL),(83,NULL,NULL),(84,NULL,NULL),(85,NULL,NULL),(86,NULL,NULL),(87,NULL,NULL),(88,NULL,NULL),(89,NULL,NULL),(90,NULL,NULL),(91,NULL,NULL),(92,NULL,NULL),(93,NULL,NULL),(94,NULL,NULL),(95,NULL,NULL),(96,NULL,NULL),(97,NULL,NULL),(98,NULL,NULL),(99,NULL,NULL),(100,NULL,NULL);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_language_name`
--

DROP TABLE IF EXISTS `company_language_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_language_name` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `language_id` int NOT NULL,
  `company_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`company_id`,`language_id`),
  KEY `fk_company_language_company1_idx` (`company_id`),
  KEY `fk_company_language_language1_idx` (`language_id`),
  CONSTRAINT `fk_company_language_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `fk_company_language_language1` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_language_name`
--

LOCK TABLES `company_language_name` WRITE;
/*!40000 ALTER TABLE `company_language_name` DISABLE KEYS */;
INSERT INTO `company_language_name` VALUES (1,1,1,'원티드랩'),(2,1,2,'Wantedlab'),(3,2,2,'OKAY.com'),(4,3,1,'이상한마케팅'),(5,4,1,'인포뱅크'),(6,4,2,'infobank'),(7,5,1,'아이씨그룹'),(8,6,1,'딤딤섬 대구점'),(9,7,1,'파운데이션엑스'),(10,8,1,'엣지랭크'),(11,9,1,'커넥티어'),(12,10,1,'자버(Jober)'),(13,11,1,'앨리스헬스케어'),(14,12,1,'(주)몬스터스튜디오'),(15,13,1,'SM Entertainment Japan'),(16,13,3,'株式会社SM Entertainment Japan'),(17,14,1,'쿠차'),(18,15,1,'ZMP'),(19,15,3,'株式会社ZMP'),(20,16,1,'몽키랩'),(21,17,1,'와이케이비앤씨'),(22,18,1,'코츠테크놀로지'),(23,19,1,'비고라이브'),(24,20,1,'크로싱'),(25,21,1,'트리노드'),(26,22,1,'와이즈키즈(wisekids)'),(27,23,1,'Obelab'),(28,24,2,'Foodpanda'),(29,25,1,'웹티즌'),(30,26,1,'마이셀럽스'),(31,27,1,'데이터얼라이언스(DataAlliance)'),(32,28,1,'쿼드자산운용'),(33,28,2,'쿼드자산운용'),(34,29,1,'주식회사 링크드코리아'),(35,30,1,'주렁주렁(zoolungzoolung)'),(36,31,2,'Amore Pacific_TEST'),(37,32,2,'Luna Marketing Group'),(38,33,1,'동신항운'),(39,34,1,'히숲'),(40,35,1,'COVENANT'),(41,35,2,'COVENANT'),(42,36,1,'젠틀파이'),(43,37,1,'아크로고스'),(44,38,1,'페르소나미디어'),(45,38,2,'Persona Media'),(46,39,2,'Rejoice Pregnancy'),(47,40,2,'The Wave'),(48,41,2,'CoCoon Foundation'),(49,42,1,'스트라다월드와이드(Strada)'),(50,43,1,'도빗(Dobbit)'),(51,44,1,'지란지교시큐리티'),(52,45,1,'캠퍼스멘토'),(53,46,1,'삼일제약'),(54,47,1,'제이에이치개발'),(55,48,1,'오케이코인코리아'),(56,49,1,'그릿연구소'),(57,50,1,'세계정부 世界政府'),(58,51,1,'투게더앱스'),(59,52,1,'Dream Agility'),(60,52,2,'Dream Agility'),(61,53,1,'대성시스템'),(62,54,1,'바이럴네이션'),(63,55,1,'오가나셀'),(64,56,1,'디토나인'),(65,57,2,'Haulio'),(66,58,1,'대상홀딩스(주) - existing'),(67,59,1,'만나씨이에이'),(68,60,1,'지오코리아(페루관광청)'),(69,60,2,'GEOCM Co.'),(70,60,3,'GEOCM'),(71,61,1,'KFC Korea'),(72,62,1,'까브드뱅(Cave de Vin)'),(73,63,1,'홈스토리생활'),(74,64,1,'아이엠에이치씨(IMHC)'),(75,65,1,'플라이트그래프-탈퇴'),(76,66,1,'YG PLUS'),(77,67,1,'우리말소프트'),(78,68,1,'아로마티카'),(79,69,2,'Private Organization'),(80,70,1,'스피링크'),(81,71,1,'Onion Ground'),(82,72,1,'브레이브팝스'),(83,73,1,'Bidalgo'),(84,74,1,'티엠씨케이'),(85,75,1,'(주) 휴톰-중복'),(86,76,2,'Chengbao'),(87,77,1,'헬프미'),(88,78,1,'(주) 새론다이내믹스'),(89,79,1,'마상소프트'),(90,80,1,'(주)아임블록'),(91,81,1,'(주)이모션글로벌-중복'),(92,82,1,'Altagram'),(93,83,1,'이베스트투자증권'),(94,84,1,'소굿마케팅'),(95,85,2,'Grab'),(96,86,2,'HK Yau'),(97,87,1,'더락포트컴퍼니코리아-중복'),(98,88,1,'휴마트컴퍼니'),(99,89,1,'디센터'),(100,90,1,'컬쳐히어로'),(101,91,1,'보비어스코리아'),(102,92,1,'베이글랩스'),(103,93,2,'Katalis Digital'),(104,94,1,'애디터(Additor)'),(105,95,2,'Avanade Asia Pte Ltd'),(106,96,1,'500V2'),(107,97,1,'플라이앤컴퍼니(푸드플라이)'),(108,98,1,'영우디지탈-중복'),(109,99,2,'Machipopo Inc.'),(110,100,1,'시니어벤처스');
/*!40000 ALTER TABLE `company_language_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_tag`
--

DROP TABLE IF EXISTS `company_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_id` int NOT NULL,
  `company_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_company_tag_tag1_idx` (`tag_id`),
  KEY `fk_company_tag_company1_idx` (`company_id`),
  CONSTRAINT `fk_company_tag_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `fk_company_tag_tag1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_tag`
--

LOCK TABLES `company_tag` WRITE;
/*!40000 ALTER TABLE `company_tag` DISABLE KEYS */;
INSERT INTO `company_tag` VALUES (1,4,1),(2,16,1),(3,20,1),(4,4,2),(5,24,2),(6,27,2),(7,25,3),(8,6,3),(9,14,3),(10,9,3),(11,25,4),(12,1,5),(13,23,5),(14,28,5),(15,14,5),(16,22,6),(17,29,6),(18,2,6),(19,13,6),(20,8,7),(21,5,8),(22,11,8),(23,26,8),(24,1,8),(25,11,9),(26,21,9),(27,2,10),(28,16,10),(29,13,11),(30,5,11),(31,12,11),(32,19,12),(33,23,13),(34,11,13),(35,15,13),(36,27,14),(37,5,14),(38,26,14),(39,10,15),(40,2,15),(41,21,15),(42,24,15),(43,7,16),(44,23,16),(45,28,16),(46,14,17),(47,29,17),(48,6,17),(49,12,18),(50,2,18),(51,13,19),(52,19,19),(53,21,20),(54,30,20),(55,12,20),(56,28,20),(57,7,21),(58,19,21),(59,12,21),(60,17,21),(61,1,22),(62,9,22),(63,17,22),(64,14,22),(65,6,23),(66,26,24),(67,28,25),(68,25,25),(69,7,25),(70,13,25),(71,2,26),(72,8,26),(73,22,26),(74,27,26),(75,27,27),(76,6,27),(77,11,27),(78,24,28),(79,23,28),(80,26,28),(81,29,28),(82,12,29),(83,6,29),(84,8,29),(85,30,30),(86,17,30),(87,18,30),(88,17,31),(89,27,31),(90,28,31),(91,2,32),(92,18,32),(93,26,33),(94,11,34),(95,17,34),(96,7,34),(97,14,34),(98,10,35),(99,3,35),(100,18,36),(101,17,36),(102,4,36),(103,14,36),(104,15,37),(105,29,37),(106,27,37),(107,26,38),(108,13,38),(109,22,39),(110,30,39),(111,7,39),(112,4,39),(113,3,40),(114,26,41),(115,9,42),(116,14,42),(117,11,42),(118,13,42),(119,29,43),(120,18,43),(121,21,43),(122,26,44),(123,24,44),(124,10,44),(125,27,44),(126,29,45),(127,2,46),(128,22,46),(129,27,47),(130,25,47),(131,6,47),(132,14,47),(133,3,48),(134,25,48),(135,25,49),(136,15,50),(137,19,50),(138,11,50),(139,22,51),(140,10,51),(141,4,51),(142,28,51),(143,19,52),(144,2,53),(145,19,53),(146,8,54),(147,6,54),(148,20,54),(149,26,54),(150,11,55),(151,1,55),(152,25,56),(153,29,56),(154,14,56),(155,3,57),(156,23,58),(157,15,59),(158,28,60),(159,17,60),(160,17,61),(161,19,61),(162,2,62),(163,10,62),(164,21,62),(165,7,63),(166,20,63),(167,4,64),(168,30,64),(169,19,64),(170,28,64),(171,30,65),(172,17,65),(173,9,65),(174,1,66),(175,16,66),(176,5,66),(177,13,67),(178,27,67),(179,24,67),(180,29,68),(181,24,69),(182,19,70),(183,9,70),(184,6,71),(185,2,71),(186,28,72),(187,3,73),(188,13,73),(189,1,74),(190,26,74),(191,19,74),(192,17,74),(193,14,75),(194,15,75),(195,24,76),(196,16,76),(197,19,76),(198,29,76),(199,26,77),(200,11,77),(201,16,77),(202,15,78),(203,14,78),(204,30,78),(205,29,78),(206,12,79),(207,25,80),(208,13,81),(209,21,81),(210,28,81),(211,25,82),(212,26,82),(213,1,83),(214,20,83),(215,9,84),(216,10,84),(217,5,84),(218,1,85),(219,30,86),(220,7,87),(221,16,88),(222,29,89),(223,11,90),(224,11,91),(225,8,91),(226,3,91),(227,4,91),(228,8,92),(229,18,92),(230,16,92),(231,2,93),(232,6,93),(233,16,93),(234,18,93),(235,2,94),(236,11,94),(237,8,95),(238,11,95),(239,15,95),(240,29,95),(241,11,96),(242,27,96),(243,29,97),(244,14,98),(245,15,98),(246,7,98),(247,11,98),(248,4,99),(249,10,99),(250,19,99),(251,20,99),(252,6,100),(253,20,100),(254,21,100);
/*!40000 ALTER TABLE `company_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'ko'),(2,'en'),(3,'ja');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_language_name`
--

DROP TABLE IF EXISTS `tag_language_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_language_name` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`id`,`tag_id`),
  KEY `fk_company_language_name_copy1_language1_idx` (`language_id`),
  KEY `fk_company_language_name_copy1_tag1_idx` (`tag_id`),
  CONSTRAINT `fk_company_language_name_copy1_language1` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `fk_company_language_name_copy1_tag1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_language_name`
--

LOCK TABLES `tag_language_name` WRITE;
/*!40000 ALTER TABLE `tag_language_name` DISABLE KEYS */;
INSERT INTO `tag_language_name` VALUES (1,'태그_1',1,1),(2,'태그_2',1,2),(3,'태그_3',1,3),(4,'태그_4',1,4),(5,'태그_5',1,5),(6,'태그_6',1,6),(7,'태그_7',1,7),(8,'태그_8',1,8),(9,'태그_9',1,9),(10,'태그_10',1,10),(11,'태그_11',1,11),(12,'태그_12',1,12),(13,'태그_13',1,13),(14,'태그_14',1,14),(15,'태그_15',1,15),(16,'태그_16',1,16),(17,'태그_17',1,17),(18,'태그_18',1,18),(19,'태그_19',1,19),(20,'태그_20',1,20),(21,'태그_21',1,21),(22,'태그_22',1,22),(23,'태그_23',1,23),(24,'태그_24',1,24),(25,'태그_25',1,25),(26,'태그_26',1,26),(27,'태그_27',1,27),(28,'태그_28',1,28),(29,'태그_29',1,29),(30,'태그_30',1,30),(31,'tag_1',2,1),(32,'tag_2',2,2),(33,'tag_3',2,3),(34,'tag_4',2,4),(35,'tag_5',2,5),(36,'tag_6',2,6),(37,'tag_7',2,7),(38,'tag_8',2,8),(39,'tag_9',2,9),(40,'tag_10',2,10),(41,'tag_11',2,11),(42,'tag_12',2,12),(43,'tag_13',2,13),(44,'tag_14',2,14),(45,'tag_15',2,15),(46,'tag_16',2,16),(47,'tag_17',2,17),(48,'tag_18',2,18),(49,'tag_19',2,19),(50,'tag_20',2,20),(51,'tag_21',2,21),(52,'tag_22',2,22),(53,'tag_23',2,23),(54,'tag_24',2,24),(55,'tag_25',2,25),(56,'tag_26',2,26),(57,'tag_27',2,27),(58,'tag_28',2,28),(59,'tag_29',2,29),(60,'tag_30',2,30),(61,'タグ_1',3,1),(62,'タグ_2',3,2),(63,'タグ_3',3,3),(64,'タグ_4',3,4),(65,'タグ_5',3,5),(66,'タグ_6',3,6),(67,'タグ_7',3,7),(68,'タグ_8',3,8),(69,'タグ_9',3,9),(70,'タグ_10',3,10),(71,'タグ_11',3,11),(72,'タグ_12',3,12),(73,'タグ_13',3,13),(74,'タグ_14',3,14),(75,'タグ_15',3,15),(76,'タグ_16',3,16),(77,'タグ_17',3,17),(78,'タグ_18',3,18),(79,'タグ_19',3,19),(80,'タグ_20',3,20),(81,'タグ_21',3,21),(82,'タグ_22',3,22),(83,'タグ_23',3,23),(84,'タグ_24',3,24),(85,'タグ_25',3,25),(86,'タグ_26',3,26),(87,'タグ_27',3,27),(88,'タグ_28',3,28),(89,'タグ_29',3,29),(90,'タグ_30',3,30);
/*!40000 ALTER TABLE `tag_language_name` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-09 22:54:10

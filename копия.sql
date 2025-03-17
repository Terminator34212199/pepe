-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: clinic
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `timeeeeeeeeee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time` (
  `id` int NOT NULL AUTO_INCREMENT,
  `specialnost` varchar(50) NOT NULL,
  `dataa` date NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `status` enum('свободен','занят') DEFAULT 'свободен',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES (1,'Педиатр','2024-10-01','09:00:00','12:00:00','свободен'),(2,'Педиатр','2024-10-01','13:00:00','16:00:00','занят'),(3,'Акушер-гинеколог','2024-10-02','09:00:00','12:00:00','свободен'),(4,'Акушер-гинеколог','2024-10-02','13:00:00','16:00:00','занят'),(5,'Терапевт','2024-10-03','09:00:00','12:00:00','свободен'),(6,'Терапевт','2024-10-03','13:00:00','16:00:00','занят'),(7,'Офтальмолог','2024-10-04','09:00:00','12:00:00','свободен'),(8,'Офтальмолог','2024-10-04','13:00:00','16:00:00','занят'),(9,'Невролог','2024-10-05','09:00:00','12:00:00','свободен'),(10,'Невролог','2024-10-05','13:00:00','16:00:00','занят'),(11,'Стоматолог','2024-10-06','09:00:00','12:00:00','свободен'),(12,'Стоматолог','2024-10-06','13:00:00','16:00:00','занят'),(13,'Онколог','2024-10-07','09:00:00','12:00:00','свободен'),(14,'Онколог','2024-10-07','13:00:00','16:00:00','занят'),(15,'Врач общей практики','2024-10-08','09:00:00','12:00:00','свободен'),(16,'Врач общей практики','2024-10-08','13:00:00','16:00:00','занят'),(17,'Педиатр','2024-10-09','09:00:00','12:00:00','свободен'),(18,'Акушер-гинеколог','2024-10-09','13:00:00','16:00:00','занят'),(19,'Терапевт','2024-10-10','09:00:00','12:00:00','свободен'),(20,'Офтальмолог','2024-10-10','13:00:00','16:00:00','занят'),(21,'Невролог','2024-10-11','09:00:00','12:00:00','свободен'),(22,'Стоматолог','2024-10-11','13:00:00','16:00:00','занят'),(23,'Онколог','2024-10-12','09:00:00','12:00:00','свободен'),(24,'Врач общей практики','2024-10-12','13:00:00','16:00:00','занят'),(25,'Уролог','2024-10-13','09:00:00','10:00:00','занят');
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imya` varchar(255) NOT NULL,
  `familiya` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `medkarta` varchar(255) NOT NULL,
  `parol` varchar(255) NOT NULL,
  `kodovoeslovo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'вйцвй','шапалах','998881228','343434','22121','Пациент'),(2,'Наталья','Черная','99988821','-','77788899910','Администратор'),(3,'Вова','Кукумбер','998345','12345','0023','Пациент'),(4,'Чепчик','Санаров','12131244141','1111','2222','Пациент'),(6,'Никита','Старков','89845882391','998','111','Пациент'),(7,'Степ','Куркума','23456789','2343','1223','Пациент'),(8,'Ольга','Кекекек','3221321','-','123456','Регистратор');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrachi`
--

DROP TABLE IF EXISTS `vrachi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vrachi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `familiya` varchar(255) NOT NULL,
  `imya` varchar(255) NOT NULL,
  `otchestvo` varchar(255) NOT NULL,
  `specialnost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrachi`
--

LOCK TABLES `vrachi` WRITE;
/*!40000 ALTER TABLE `vrachi` DISABLE KEYS */;
INSERT INTO `vrachi` VALUES (1,'Иванов','Иван','Иванович','Педиатр'),(2,'Петрова','Мария','Алексеевна','Терапевт'),(3,'Сидоров','Алексей','Петрович','Офтальмолог'),(4,'Козлова','Ольга','Сергеевна','Невролог'),(5,'Смирнов','Дмитрий','Владимирович','Стоматолог'),(6,'Кузнецова','Екатерина','Андреевна','Онколог'),(7,'Соколов','Сергей','Николаевич','Врач общей практики'),(8,'Васильева','Анна','Васильевна','Акушер-гинеколог');
/*!40000 ALTER TABLE `vrachi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zapis`
--

DROP TABLE IF EXISTS `zapis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zapis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fio` varchar(255) NOT NULL,
  `dataa` varchar(255) NOT NULL,
  `vremya` varchar(255) NOT NULL,
  `vrach` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zapis`
--

LOCK TABLES `zapis` WRITE;
/*!40000 ALTER TABLE `zapis` DISABLE KEYS */;
INSERT INTO `zapis` VALUES (2,'Старков Никита','10-10-2024','09:00','Невролог'),(5,'','','',''),(6,'','','','');
/*!40000 ALTER TABLE `zapis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 18:21:25

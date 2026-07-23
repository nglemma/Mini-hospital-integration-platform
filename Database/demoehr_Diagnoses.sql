-- MySQL dump 10.13  Distrib 8.0.46, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: demoehr
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `Diagnoses`
--

DROP TABLE IF EXISTS `Diagnoses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Diagnoses` (
  `diagnosisid` int NOT NULL,
  `visitid` int DEFAULT NULL,
  `diagnosis_code` varchar(20) DEFAULT NULL,
  `diagnosis_description` varchar(150) DEFAULT NULL,
  `diagnosis_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`diagnosisid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Diagnoses`
--

LOCK TABLES `Diagnoses` WRITE;
/*!40000 ALTER TABLE `Diagnoses` DISABLE KEYS */;
INSERT INTO `Diagnoses` VALUES (5001,5001,'I10','Hypertension','Working'),(5002,5002,'J18.9','Pneumonia','Final'),(5003,5003,'R07.9','Chest pain','Working'),(5004,5004,'E11.9','Type 2 diabetes mellitus','Final'),(5005,5005,'K21.9','Gastro-oesophageal reflux disease','Working'),(5006,5006,'G43.9','Migraine','Final'),(5007,5007,'R51','Headache','Working'),(5008,5008,'J45.9','Asthma','Final'),(5009,5009,'N39.0','Urinary tract infection','Working'),(5010,5010,'F41.9','Anxiety disorder','Final');
/*!40000 ALTER TABLE `Diagnoses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-23  5:26:23

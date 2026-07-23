-- MySQL dump 10.13  Distrib 8.0.46, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: demoehr_receiver
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
-- Table structure for table `Encounters`
--

DROP TABLE IF EXISTS `Encounters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Encounters` (
  `visitid` int NOT NULL,
  `patientid` int DEFAULT NULL,
  `encountertype` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `admitdate` datetime DEFAULT NULL,
  `dischargedate` datetime DEFAULT NULL,
  `provider` varchar(100) DEFAULT NULL,
  `processed` tinyint DEFAULT '0',
  PRIMARY KEY (`visitid`),
  KEY `patientid` (`patientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Encounters`
--

LOCK TABLES `Encounters` WRITE;
/*!40000 ALTER TABLE `Encounters` DISABLE KEYS */;
INSERT INTO `Encounters` VALUES (5002,1002,'E','Emergency Department','2026-07-22 13:54:31',NULL,'Dr Brown',1),(5003,1003,'E','Emergency Department','2026-07-22 13:54:31',NULL,'Dr Roberts',1),(5004,1004,'O','Diabetes Clinic','2026-07-22 13:54:32',NULL,'Dr Green',1),(5005,1005,'I','Ward B','2026-07-22 13:54:32',NULL,'Dr White',1),(5006,1006,'O','Neurology Clinic','2026-07-22 13:54:33',NULL,'Dr Black',1),(5007,1007,'I','Ward C','2026-07-22 13:54:34',NULL,'Dr Roberts',1),(5008,1008,'E','Emergency Department','2026-07-22 13:54:34',NULL,'Dr Lee',1),(5009,1009,'I','Ward D','2026-07-22 13:54:35',NULL,'Dr Khan',1),(5010,1010,'O','Mental Health Clinic','2026-07-22 13:54:35',NULL,'Dr Young',1);
/*!40000 ALTER TABLE `Encounters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-23  5:26:20

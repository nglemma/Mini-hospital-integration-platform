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
  `retry_count` int NOT NULL DEFAULT '0',
  `dlq_flag` tinyint NOT NULL DEFAULT '0',
  `last_error` text,
  `last_attempt_at` datetime DEFAULT NULL,
  `processing_status` varchar(30) NOT NULL DEFAULT 'NEW',
  `next_retry_at` datetime DEFAULT NULL,
  PRIMARY KEY (`visitid`),
  KEY `patientid` (`patientid`),
  CONSTRAINT `encounters_ibfk_1` FOREIGN KEY (`patientid`) REFERENCES `PatientDemographics` (`patientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Encounters`
--

LOCK TABLES `Encounters` WRITE;
/*!40000 ALTER TABLE `Encounters` DISABLE KEYS */;
INSERT INTO `Encounters` VALUES (5001,1001,'X','Ward A','2026-07-07 09:00:00',NULL,'Dr Adams',0,3,1,'An Error Occurred Processing Message.','2026-07-23 03:38:55','DEAD_LETTER',NULL),(5002,1002,'Emergency','Emergency Department','2026-07-07 09:10:00',NULL,'Dr Brown',1,0,0,NULL,'2026-07-22 13:54:31','COMPLETED',NULL),(5003,1003,'Emergency','Emergency Department','2026-07-07 09:20:00',NULL,'Dr Roberts',1,0,0,NULL,'2026-07-22 13:54:31','COMPLETED',NULL),(5004,1004,'Outpatient','Diabetes Clinic','2026-07-07 09:30:00',NULL,'Dr Green',1,0,0,NULL,'2026-07-22 13:54:32','COMPLETED',NULL),(5005,1005,'Inpatient','Ward B','2026-07-07 09:40:00',NULL,'Dr White',1,0,0,NULL,'2026-07-22 13:54:32','COMPLETED',NULL),(5006,1006,'Outpatient','Neurology Clinic','2026-07-07 09:50:00',NULL,'Dr Black',1,0,0,NULL,'2026-07-22 13:54:33','COMPLETED',NULL),(5007,1007,'Inpatient','Ward C','2026-07-07 10:00:00',NULL,'Dr Roberts',1,0,0,NULL,'2026-07-22 13:54:33','COMPLETED',NULL),(5008,1008,'Emergency','Emergency Department','2026-07-07 10:10:00',NULL,'Dr Lee',1,0,0,NULL,'2026-07-22 13:54:34','COMPLETED',NULL),(5009,1009,'Inpatient','Ward D','2026-07-07 10:20:00',NULL,'Dr Khan',1,0,0,NULL,'2026-07-22 13:54:34','COMPLETED',NULL),(5010,1010,'Outpatient','Mental Health Clinic','2026-07-07 10:30:00',NULL,'Dr Young',1,0,0,NULL,'2026-07-22 13:54:35','COMPLETED',NULL);
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

-- Dump completed on 2026-07-23  5:26:21

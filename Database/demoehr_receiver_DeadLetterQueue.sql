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
-- Table structure for table `DeadLetterQueue`
--

DROP TABLE IF EXISTS `DeadLetterQueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DeadLetterQueue` (
  `dlq_id` bigint NOT NULL AUTO_INCREMENT,
  `message_control_id` varchar(100) DEFAULT NULL,
  `message_type` varchar(50) DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `visit_id` int DEFAULT NULL,
  `raw_message` longtext NOT NULL,
  `failure_reason` text,
  `retry_count` int DEFAULT '0',
  `source_channel` varchar(100) DEFAULT NULL,
  `destination_name` varchar(100) DEFAULT NULL,
  `dlq_status` varchar(30) DEFAULT 'PENDING',
  `failed_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `replayed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`dlq_id`),
  UNIQUE KEY `uq_dlq_message_control_id` (`message_control_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DeadLetterQueue`
--

LOCK TABLES `DeadLetterQueue` WRITE;
/*!40000 ALTER TABLE `DeadLetterQueue` DISABLE KEYS */;
INSERT INTO `DeadLetterQueue` VALUES (1,'RTY20260723033855077','ADT^A04',NULL,5001,'MSH|^~\\&|MYSQL|DEMOEHR|MIRTH|HL7|undefined||ADT^A04|RTY20260723033855077|P|2.5|\rEVN|A04|20260723033855|\rPID|1||1001^^^DEMOEHR^MR||Smith^John||19800115|M|||||\rPV1|1|X|Ward A||||^Dr Adams||||||||||||5001\rNK1|1|Smith^Jane|Wife|123 Oak Street|07222222222\rAL1|1|DA|ASP^Aspirin|Moderate|Rash\rDG1|1||I10^Hypertension|||Working\r','AE: An Error Occurred Processing Message.',3,'Retry_Manager','Destination 1','PENDING','2026-07-23 03:38:55',NULL);
/*!40000 ALTER TABLE `DeadLetterQueue` ENABLE KEYS */;
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

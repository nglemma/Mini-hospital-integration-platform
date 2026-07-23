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
-- Table structure for table `NextOfKin`
--

DROP TABLE IF EXISTS `NextOfKin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NextOfKin` (
  `kinid` int NOT NULL,
  `patientid` int DEFAULT NULL,
  `relationship` varchar(50) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`kinid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NextOfKin`
--

LOCK TABLES `NextOfKin` WRITE;
/*!40000 ALTER TABLE `NextOfKin` DISABLE KEYS */;
INSERT INTO `NextOfKin` VALUES (5002,1002,'Brother','Tom','Jones','07333333333','45 Pine Road'),(5003,1003,'Wife','Aisha','Khan','07944444444','35 King Street'),(5004,1004,'Husband','Mark','Taylor','07455555555','9 River Avenue'),(5005,1005,'Daughter','Sarah','Brown','07566666666','88 Hill Road'),(5006,1006,'Father','Paul','Wilson','07677777777','14 Lake Drive'),(5007,1007,'Brother','Test','Evans','07911110008','22 Test Street'),(5008,1008,'Mother','Chris','Thomas','07899999999','77 Park Lane'),(5009,1009,'Wife','Fatima','Ali','07787654321','6 High Street'),(5010,1010,'Father','Peter','Green','07000000011','55 Elm Street');
/*!40000 ALTER TABLE `NextOfKin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-23  5:26:19

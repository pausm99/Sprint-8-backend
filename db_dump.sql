-- MySQL dump 10.13  Distrib 8.2.0, for macos13 (arm64)
--
-- Host: localhost    Database: crud
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `citypoints`
--

DROP TABLE IF EXISTS `citypoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citypoints` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citypoints`
--

LOCK TABLES `citypoints` WRITE;
/*!40000 ALTER TABLE `citypoints` DISABLE KEYS */;
INSERT INTO `citypoints` VALUES (1,'Millennium Park','Park','41.8826','-87.6226','201 E Randolph St'),(2,'Navy Pier','Entertainment','41.8917','-87.6086','600 E Grand Ave'),(3,'Art Institute of Chicago','Museum','41.8796','-87.6237','111 S Michigan Ave'),(4,'The Field Museum','Museum','41.8663','-87.6170','1400 S Lake Shore Dr'),(5,'Willis Tower','Landmark','41.8789','-87.6359','233 S Wacker Dr'),(6,'Cloud Gate (The Bean)','Landmark','41.8827','-87.6233','201 E Randolph St'),(7,'Shedd Aquarium','Entertainment','41.8676','-87.6140','1200 S Lake Shore Dr'),(8,'Wrigley Field','Sports','41.9484','-87.6553','1060 W Addison St'),(9,'Magnificent Mile','Shopping','41.8969','-87.6240','875 N Michigan Ave'),(10,'Lincoln Park Zoo','Entertainment','41.9187','-87.6326','2001 N Clark St'),(11,'Chicago Riverwalk','Landmark','41.8889','-87.6269','Chicago Riverwalk'),(12,'Museum of Science and Industry','Museum','41.7910','-87.5839','5700 S Lake Shore Dr'),(13,'Grant Park','Park','41.8765','-87.6200','337 E Randolph St'),(14,'Lincoln Park','Park','41.9245','-87.6335','2045 N Lincoln Park W'),(15,'Water Tower Place','Shopping','41.8976','-87.6237','835 N Michigan Ave'),(16,'State Street','Shopping','41.8757','-87.6278','1 N State St');
/*!40000 ALTER TABLE `citypoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `start` timestamp NOT NULL,
  `end` timestamp NOT NULL,
  `color` varchar(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (6,'Sant Esteve','2023-12-25 23:00:00','2023-12-26 22:59:00','#26d123','2023-12-26 21:48:56'),(10,'Acampada','2023-12-03 05:00:00','2023-12-06 13:00:00','#c33232','2023-12-26 21:52:53'),(12,'Cumple Lucas','2023-12-27 23:00:00','2023-12-28 22:59:00','#e2f109','2023-12-26 21:55:46');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graphics`
--

DROP TABLE IF EXISTS `graphics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `graphics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `month` varchar(50) NOT NULL,
  `temperature` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graphics`
--

LOCK TABLES `graphics` WRITE;
/*!40000 ALTER TABLE `graphics` DISABLE KEYS */;
INSERT INTO `graphics` VALUES (1,'January',0.40),(2,'February',-0.20),(3,'March',4.40),(4,'April',11.20),(5,'May',17.30),(6,'June',24.00),(7,'July',28.10),(8,'August',27.20),(9,'September',22.20),(10,'October',13.90),(11,'November',7.20),(12,'December',1.70);
/*!40000 ALTER TABLE `graphics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Windy City Hotel','123 Magnolia Ave, Chicago, IL','41.8781','-87.6298'),(2,'Lakefront Suites','456 Riverside Dr, Chicago, IL','41.8882','-87.6367'),(3,'Metropolitan Hotel','789 State St, Chicago, IL','41.8781','-87.6255'),(4,'Downtown Residences','101 Lakeview St, Chicago, IL','41.8850','-87.6218'),(5,'Riverwalk Inn','202 Riverfront St, Chicago, IL','41.8842','-87.6324');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `guest_name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `check_in` timestamp NOT NULL,
  `check_out` timestamp NOT NULL,
  `hotel_id` int NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `hotel_id` (`hotel_id`),
  CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (22,'Pau Sàbat','pausm99@gmail.com','2023-12-30 21:46:00','2023-12-31 21:46:00',1,'608839721','2023-12-26 21:46:16'),(23,'Barack Obama','barack.obama@gmail.com','2023-12-08 21:46:00','2023-12-10 21:46:00',3,'619234567','2023-12-26 21:46:54'),(24,'Aina López','ainalopezolive@gmail.com','2023-12-18 21:47:00','2023-12-21 21:47:00',3,'934516587','2023-12-26 21:47:29'),(25,'Pau Sàbat Martí','pausm99@gmail.com','2023-12-14 21:47:00','2023-12-15 21:47:00',2,'608839721','2023-12-26 21:47:47');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-26 23:02:50

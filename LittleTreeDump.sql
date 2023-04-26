CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CUS_ID` int NOT NULL,
  `CUS_FNAME` varchar(45) DEFAULT NULL,
  `CUS_LNAME` varchar(45) DEFAULT NULL,
  `CUS_EMAIL` varchar(45) DEFAULT NULL,
  `CUS_PHONENUM` varchar(13) DEFAULT NULL,
  `CUS_ADDRESS` varchar(45) DEFAULT NULL,
  `CUS_CITY` varchar(45) DEFAULT NULL,
  `CUS_STATE` varchar(2) DEFAULT NULL,
  `CUS_ZIPCODE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John','Doe','johndoe@gmail.com','210-555-1234','123 Main St','San Antonio','TX','78201'),(2,'Jane','Smith','janesmith@yahoo.com','210-555-2345','456 Elm St','Austin','TX','78702'),(3,'Mike','Johnson','mikejohnson@hotmail.com','210-555-3456','789 Oak St','Houston','TX','77003'),(4,'Amy','Lee','amylee@gmail.com','210-555-4567','321 Maple Ave','Chicago','IL','60601'),(5,'Chris','Brown','chrisbrown@yahoo.com','210-555-5678','654 Pine St','New York','NY','10001'),(6,'Linda','Davis','lindadavis@hotmail.com','210-555-6789','987 Cedar Ln','Los Angeles','CA','90001'),(7,'Mark','Taylor','marktaylor@gmail.com','210-555-7890','246 Oak St','San Francisco','CA','94101'),(8,'Emily','Wilson','emilywilson@yahoo.com','210-555-8901','369 Main St','Las Vegas','NV','89101'),(9,'Robert','Martinez','robertmartinez@hotmail.com','210-555-9012','852 Pine St','Miami','FL','33101'),(10,'Jessica','Garcia','jessicagarcia@gmail.com','210-555-0123','753 Oak St','Phoenix','AZ','85001'),(11,'David','Rodriguez','davidrodriguez@yahoo.com','210-555-1234','159 Maple Ave','Albuquerque','NM','87101'),(12,'Karen','Hernandez','karenhernandez@hotmail.com','210-555-2345','357 Cedar Ln','Denver','CO','80201'),(13,'William','Lopez','williamlopez@gmail.com','210-555-3456','753 Pine St','Atlanta','GA','30301'),(14,'Amanda','Gonzalez','amandagonzalez@yahoo.com','210-555-4567','852 Maple Ave','Charlotte','NC','28201'),(15,'Michael','Perez','michaelperez@hotmail.com','210-555-5678','951 Oak St','Nashville','TN','37201'),(16,'Ashley','Torres','ashleytorres@gmail.com','210-555-6789','852 Pine St','Portland','OR','97201'),(17,'Aaliyah','Garcia','aaliyah.garcia96@gmail.com','210-555-2596','123 Main St','San Antonio','TX','78209'),(18,'Keenan','Nguyen','knguyen22@gmail.com','210-555-2622','456 Oak St','Houston','TX','77002'),(19,'Makayla','Jackson','makayla.jackson99@gmail.com','210-555-2699','789 Elm St','San Diego','CA','92101'),(20,'Jorge','Alvarez','jorgealvarez92@gmail.com','210-555-2692','321 Walnut St','Los Angeles','CA','90001'),(21,'Yara','Choi','yara.choi91@gmail.com','210-555-2791','555 Pine St','Seattle','WA','98101'),(22,'Trevon','Jones','trevonjones95@gmail.com','210-555-2595','777 Oak St','Portland','OR','97201'),(23,'Samantha','Kim','sam.kim93@gmail.com','210-555-2793','111 Main St','New York','NY','10001'),(24,'Devon','Patel','devon.patel96@yahoo.com','210-555-2696','222 Elm St','Jersey City','NJ','07097'),(25,'Maria','Hernandez','mariahernandez99@gmail.com','210-555-2799','333 Walnut St','Miami','FL','33101'),(26,'Cameron','Scott','cameron.scott94@gmail.com','210-555-2594','444 Pine St','Chicago','IL','60601'),(27,'Amirah','Ali','amirah.ali97@gmail.com','210-555-2697','555 Oak St','Atlanta','GA','30301'),(28,'Dante','Gonzalez','dgonzalez92@gmail.com','210-555-2792','666 Walnut St','Denver','CO','80201'),(29,'Madison','Taylor','madison.taylor91@gmail.com','210-555-2591','777 Pine St','Las Vegas','NV','89101'),(30,'Santiago','Rodriguez','santiago.rodriguez94@gmail.com','210-555-2694','888 Main St','Phoenix','AZ','85001'),(31,'Ashley','Brown','ashley.brown95@gmail.com','210-555-2595','999 Elm St','Philadelphia','PA','19019'),(32,'Isabella','Smith','isabella.smith98@gmail.com','210-555-2698','111 Walnut St','Washington','DC','18420');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer order lines`
--

DROP TABLE IF EXISTS `customer order lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer order lines` (
  `LINE_NUM` int NOT NULL,
  `ORDER_ID` int NOT NULL,
  `PROD_ID` int DEFAULT NULL,
  `LINE_QTY` int DEFAULT NULL,
  `LINE_PRICE` float DEFAULT NULL,
  `STORE_ID` int DEFAULT NULL,
  PRIMARY KEY (`LINE_NUM`),
  KEY `ORDER_ID` (`ORDER_ID`),
  KEY `PROD_ID` (`PROD_ID`),
  KEY `STORE_ID` (`STORE_ID`),
  CONSTRAINT `customer order lines_ibfk_1` FOREIGN KEY (`ORDER_ID`) REFERENCES `customer orders` (`ORDER_ID`),
  CONSTRAINT `customer order lines_ibfk_2` FOREIGN KEY (`PROD_ID`) REFERENCES `products` (`PROD_ID`),
  CONSTRAINT `customer order lines_ibfk_3` FOREIGN KEY (`STORE_ID`) REFERENCES `store location` (`STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer order lines`
--

LOCK TABLES `customer order lines` WRITE;
/*!40000 ALTER TABLE `customer order lines` DISABLE KEYS */;
INSERT INTO `customer order lines` VALUES (1,1000,22,1,4.25,NULL),(2,1000,23,1,0.4,NULL),(3,1001,23,1,2.68,NULL),(4,1001,10,1,4.98,NULL),(5,1002,11,2,2.52,12),(6,1002,2,1,15.36,12),(7,1002,3,1,7.17,12),(8,1002,5,3,56.4,12),(9,1002,6,4,11.92,12),(10,1003,7,2,21.94,NULL),(11,1003,8,1,14.99,NULL),(12,1004,9,5,14.95,NULL),(13,1005,10,1,4.98,NULL),(14,1006,13,1,3.96,NULL),(15,1007,14,10,9.9,NULL),(16,1007,15,1,7.15,NULL),(17,1007,16,1,5.99,NULL),(18,1008,17,1,5.99,NULL),(19,1008,18,1,2.89,NULL),(20,1009,22,1,6.98,NULL),(21,1010,19,7,8.68,NULL),(22,1010,20,4,11.92,NULL),(23,1011,22,1,6.98,NULL),(24,1011,24,1,3.47,NULL);
/*!40000 ALTER TABLE `customer order lines` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `UpdateItemQuantity` AFTER INSERT ON `customer order lines` FOR EACH ROW UPDATE `mydb`.`Store Inventory`
SET `Store Inventory`.`PROD_QTY` = `Store Inventory`.`PROD_QTY` - new.LINE_QTY WHERE `Store Inventory`.`STORE_ID` = new.`STORE_ID` AND `Store Inventory`.`PROD_ID` = new.`PROD_ID` */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customer orders`
--

DROP TABLE IF EXISTS `customer orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer orders` (
  `ORDER_ID` int NOT NULL,
  `ORDER_DATE` date DEFAULT NULL,
  `ORDER_TIME` time DEFAULT NULL,
  `CUS_ID` int DEFAULT NULL,
  `STORE_ID` int DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  KEY `CUS_ID_idx` (`CUS_ID`),
  KEY `STORE_ID` (`STORE_ID`),
  CONSTRAINT `CUS_ID` FOREIGN KEY (`CUS_ID`) REFERENCES `customer` (`CUS_ID`),
  CONSTRAINT `customer orders_ibfk_1` FOREIGN KEY (`STORE_ID`) REFERENCES `store location` (`STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer orders`
--

LOCK TABLES `customer orders` WRITE;
/*!40000 ALTER TABLE `customer orders` DISABLE KEYS */;
INSERT INTO `customer orders` VALUES (1000,'2023-05-02','10:30:40',4,NULL),(1001,'2023-05-02','14:20:21',7,NULL),(1002,'2023-05-02','16:12:24',6,NULL),(1003,'2023-05-02','18:21:11',11,NULL),(1004,'2023-05-02','19:11:22',14,NULL),(1005,'2023-05-02','20:12:09',10,NULL),(1006,'2023-05-03','07:08:45',12,NULL),(1007,'2023-05-03','09:09:22',23,NULL),(1008,'2023-05-03','10:23:54',19,NULL),(1009,'2023-05-03','12:43:53',15,NULL),(1010,'2023-05-03','14:30:22',7,NULL),(1011,'2023-05-03','16:00:00',1,NULL),(1012,'2023-05-03','17:07:43',19,NULL),(1013,'2023-05-03','19:55:21',20,NULL),(1014,'2023-05-03','20:34:41',17,NULL),(1015,'2023-05-04','08:21:52',21,NULL),(1016,'2023-05-04','09:10:13',2,NULL),(1017,'2023-05-04','10:26:14',4,NULL),(1018,'2023-05-05','14:33:02',6,NULL),(1019,'2023-05-05','17:32:56',1,NULL),(1020,'2023-05-05','17:55:18',3,NULL),(1021,'2023-05-05','18:30:01',9,NULL),(1022,'2023-05-05','20:21:21',14,NULL),(1023,'2023-05-06','07:09:29',5,NULL),(1024,'2023-05-06','11:11:11',23,NULL);
/*!40000 ALTER TABLE `customer orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `DEPT_ID` int NOT NULL,
  `DEPT_NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Food'),(2,'Beverages'),(3,'Snacks'),(4,'Candy'),(5,'Canned Goods'),(6,'Frozen Food'),(7,'Dairy'),(8,'Meat and poultry'),(9,'Produce'),(10,'Bakery'),(11,'Cleaning Supplies'),(12,'Paper Products'),(13,'Laundry and storage'),(14,'Personal care'),(15,'Health and beauty'),(16,'Baby care'),(17,'Pet care'),(18,'Home decor'),(19,'Kitchen and dining'),(20,'Bed and bath'),(21,'Clothing and shoes'),(22,'Toys and games'),(23,'Office and school'),(24,'Automotive'),(25,'Hardware and tools');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EMP_ID` int NOT NULL,
  `EMP_FNAME` varchar(45) DEFAULT NULL,
  `EMP_LNAME` varchar(45) DEFAULT NULL,
  `EMP_JOB` varchar(45) DEFAULT NULL,
  `EMP_HRWAGE` float DEFAULT NULL,
  `EMP_STARTDATE` date DEFAULT NULL,
  `STORE_ID` int DEFAULT NULL,
  `EMP_PHONENUM` char(10) DEFAULT NULL,
  `EMP_ADDRESS` varchar(45) DEFAULT NULL,
  `EMP_CITY` varchar(45) DEFAULT NULL,
  `EMP_STATE` varchar(2) DEFAULT NULL,
  `EMP_ZIPCODE` varchar(5) DEFAULT NULL,
  `EMP_EMAIL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`),
  KEY `STORE_ID_idx` (`STORE_ID`),
  CONSTRAINT `STORE_ID` FOREIGN KEY (`STORE_ID`) REFERENCES `store location` (`STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Ashley','Smith','Sales Associate',13.5,'2018-05-15',12,'2668547932','12 Ford St','Seattle','WY','91737','ashley.smith@gmail.com'),(2,'John','Jackson','Cashier',12,'2018-05-09',12,'2665553333','','','','',''),(3,'Phillip','Richardson','Stocker',14,'2019-04-12',12,'2665553334','','','','',''),(4,'Sarah','McGarvey','Manager',17.5,'2020-12-23',12,'2665553344','','','','',''),(5,'Amy','McAllen','Sales Associate',13.5,'2020-02-21',12,'2665553232','','','','',''),(6,'Oliver','Carter','Cashier',12,'2021-11-22',2,'','','','','',''),(7,'Brandon','Johnson','Stocker',13,'2021-04-24',2,'','','','','',''),(8,'Jacob','Ortega','Manager',18,'2021-04-12',4,'','','','','',''),(9,'Gabriel','Martinez','Cashier',12,'2022-11-10',4,'','','','','',''),(10,'Christine','Mueller','Stocker',15,'2021-07-15',4,'','','','','',''),(11,'Tammy','Jacobs','Manager',17.5,'2021-08-28',3,'','','','','',''),(12,'Emily','Watson','Sales Associate',15,'2021-04-03',3,'','','','','',''),(13,'Susan','Stanson','Cashier',14,'2020-04-21',5,'','','','','',''),(14,'Matthew','Deville','Stocker',13,'2022-02-28',5,'','','','','',''),(15,'Rashawn','Williams','Cashier',15,'2017-07-03',5,'','','','','',''),(16,'Pedro','Hernandez','Stocker',13,'2017-03-02',5,'','','','','',''),(17,'Jane','White','Manager',17.5,'2018-02-09',5,'','','','','',''),(18,'Jill','Anderson','Sales Associate',16,'2019-09-02',7,'','','','','',''),(19,'Maria','Lopez','Cashier',13,'2020-08-22',7,'','','','','',''),(20,'Martin','Washington','Stocker',14,'2022-11-11',7,'','','','','',''),(21,'Harvey','Livingston','Manager',19,'2022-06-22',7,'','','','','',''),(22,'Michael','Houston','Sales Associate',12,'2020-01-01',7,'','','','','',''),(23,'Lily','Hill','Cashier',12,'2020-02-11',8,'','','','','',''),(24,'Logan','Jones','Manager',13,'2021-11-03',8,'','','','','','');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `northeastbuyers`
--

DROP TABLE IF EXISTS `northeastbuyers`;
/*!50001 DROP VIEW IF EXISTS `northeastbuyers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `northeastbuyers` AS SELECT 
 1 AS `CUS_LNAME`,
 1 AS `CUS_FNAME`,
 1 AS `CUS_STATE`,
 1 AS `CUS_EMAIL`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `PROD_ID` int NOT NULL,
  `PROD_NAME` varchar(45) DEFAULT NULL,
  `DEPT_ID` int DEFAULT NULL,
  `PROD_SALEPRICE` float DEFAULT NULL,
  `PROD_STOCKPRICE` float DEFAULT NULL,
  `SUP_ID` int DEFAULT NULL,
  `PROD_DESCRIPTION` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`PROD_ID`),
  KEY `DEPT_ID` (`DEPT_ID`),
  KEY `SUP_ID` (`SUP_ID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `department` (`DEPT_ID`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`SUP_ID`) REFERENCES `supplier` (`SUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Palmolive Dish Soap, 10 oz',10,2.99,1.25,16,'Soap for cleaning dishes.'),(2,'Dove Body Wash, 12 oz',19,15.36,7.35,9,'Soap for self care.'),(3,'Bic Pens, 10 pack',22,7.17,4.2,20,'A set of 10 black pens.'),(4,'Hanes Mens White T-Shirt, Large',20,18.86,12,23,'A plain white T-shirt.'),(5,'Tide Laundry Detergent, 40 oz',12,18.8,5,2,'Detergent capable of removing stains from clothes.'),(6,'Ritz Crackers, 13.7 oz',3,2.98,2.5,5,'Salty crackers.'),(7,'Huggies Diapers, Size 3, 36 count',15,10.97,7.2,6,'36 white huggies diapers.'),(8,'Charmin Toilet Paper, 12 rolls',11,14.99,8.99,22,'12 rolls of toilet paper.'),(9,'Bounty Paper Towels, 6 rolls',11,2.99,1.99,22,'6 rolls of paper towels packaged in plastic wrap.'),(10,'Kelloggs Frosted Flakes Cereal, 15 oz',1,4.98,2.5,14,'A cardboard box with yellow print.'),(11,'Campbells Tomato Soup, 10.75 oz can',4,1.26,9.6,6,'A 10.75 oz can of red soup in a tin can.'),(12,'Dial Antibacterial Hand Soap, 7.5 oz',18,3.89,1.99,24,'A bottle of hand soap 7.5 oz.'),(13,'Speed Stick Deodorant, 3 oz',13,3.96,1.59,23,'A white stick of deoderant with green tinted lid.'),(14,'Colgate Toothbrush',13,0.99,0.49,17,'A single packaged toothbrush.'),(15,'Arm & Hammer Baking Soda, 16 oz',12,7.15,4.99,1,'An orange carboard box filled with baking powder.'),(16,'Duracell AA Batteries, 4 pack',24,5.34,2.45,23,'Four pack of black cylindrical batteries.'),(17,'Lysol Disinfectant Spray, 12.5 oz',10,5.99,4.22,16,'A light blue with white capped spray can.'),(18,'Purell Hand Sanitizer, 8 oz',10,2.89,1.59,2,'A clear bottle of clear hand sanitizer.'),(19,'Reeses Peanut Butter Cups, 2 pack',1,1.24,0.8,4,'A orange container of candy.'),(20,'Fritos Corn Chips, 9.25 oz',3,2.98,2,9,'A foiled bag yellow and red with pictures of chips.'),(21,'Jif Creamy Peanut Butter, 16 oz',4,3.02,2.42,3,'A jar of peanut butter with the big letters JIF.'),(22,'Heinz Ketchup, 32 oz',1,6.98,4.25,3,'A red container of ketchup.'),(23,'Coca-Cola, 2 liter bottle',2,2.68,0.4,7,'A can of dark carbonized liquid.'),(24,'Pringles Potato Chips, 5.5 oz',3,3.47,2.4,9,'A cylindrical can filled with flavored crisps.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store inventory`
--

DROP TABLE IF EXISTS `store inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store inventory` (
  `STORE_ID` int NOT NULL,
  `PROD_ID` int DEFAULT NULL,
  `PROD_QTY` int DEFAULT NULL,
  KEY `STORE_ID` (`STORE_ID`),
  KEY `PROD_ID` (`PROD_ID`),
  CONSTRAINT `store inventory_ibfk_1` FOREIGN KEY (`STORE_ID`) REFERENCES `store location` (`STORE_ID`),
  CONSTRAINT `store inventory_ibfk_2` FOREIGN KEY (`PROD_ID`) REFERENCES `products` (`PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store inventory`
--

LOCK TABLES `store inventory` WRITE;
/*!40000 ALTER TABLE `store inventory` DISABLE KEYS */;
INSERT INTO `store inventory` VALUES (1,1,50),(1,2,50),(1,3,50),(1,4,50),(1,5,50),(1,6,50),(1,7,50),(1,8,50),(1,9,50),(1,10,50),(1,11,50),(1,12,50),(1,13,50),(1,14,50),(1,15,50),(1,16,50),(1,17,50),(1,18,50),(1,19,50),(1,20,50),(1,21,50),(1,22,50),(1,23,50),(1,24,50),(2,1,50),(2,2,50),(2,3,50),(2,4,50),(2,5,50),(2,6,50),(2,7,50),(2,8,50),(2,9,50),(2,10,50),(2,11,50),(2,12,50),(2,13,50),(2,14,50),(2,15,50),(2,16,50),(2,17,50),(2,18,50),(2,19,50),(2,20,50),(2,21,50),(2,22,50),(2,23,50),(2,24,50),(3,1,50),(3,2,50),(3,3,50),(3,4,50),(3,5,50),(3,6,50),(3,7,50),(3,8,50),(3,9,50),(3,10,50),(3,11,50),(3,12,50),(3,13,50),(3,14,50),(3,15,50),(3,16,50),(3,17,50),(3,18,50),(3,19,50),(3,20,50),(3,21,50),(3,22,50),(3,23,50),(3,24,50),(4,1,50),(4,2,50),(4,3,50),(4,4,50),(4,5,50),(4,6,50),(4,7,50),(4,8,50),(4,9,50),(4,10,50),(4,11,50),(4,12,50),(4,13,50),(4,14,50),(4,15,50),(4,16,50),(4,17,50),(4,18,50),(4,19,50),(4,20,50),(4,21,50),(4,22,50),(4,23,50),(4,24,50),(5,1,50),(5,2,50),(5,3,50),(5,4,50),(5,5,50),(5,6,50),(5,7,50),(5,8,50),(5,9,50),(5,10,50),(5,11,50),(5,12,50),(5,13,50),(5,14,50),(5,15,50),(5,16,50),(5,17,50),(5,18,50),(5,19,50),(5,20,50),(5,21,50),(5,22,50),(5,23,50),(5,24,50),(6,1,50),(6,2,50),(6,3,50),(6,4,50),(6,5,50),(6,6,50),(6,7,50),(6,8,50),(6,9,50),(6,10,50),(6,11,50),(6,12,50),(6,13,50),(6,14,50),(6,15,50),(6,16,50),(6,17,50),(6,18,50),(6,19,50),(6,20,50),(6,21,50),(6,22,50),(6,23,50),(6,24,50),(7,1,50),(7,2,50),(7,3,50),(7,4,50),(7,5,50),(7,6,50),(7,7,50),(7,8,50),(7,9,50),(7,10,50),(7,11,50),(7,12,50),(7,13,50),(7,14,50),(7,15,50),(7,16,50),(7,17,50),(7,18,50),(7,19,50),(7,20,50),(7,21,50),(7,22,50),(7,23,50),(7,24,50),(8,1,50),(8,2,50),(8,3,50),(8,4,50),(8,5,50),(8,6,50),(8,7,50),(8,8,50),(8,9,50),(8,10,50),(8,11,50),(8,12,50),(8,13,50),(8,14,50),(8,15,50),(8,16,50),(8,17,50),(8,18,50),(8,19,50),(8,20,50),(8,21,50),(8,22,50),(8,23,50),(8,24,50),(9,1,50),(9,2,50),(9,3,50),(9,4,50),(9,5,50),(9,6,50),(9,7,50),(9,8,50),(9,9,50),(9,10,50),(9,11,50),(9,12,50),(9,13,50),(9,14,50),(9,15,50),(9,16,50),(9,17,50),(9,18,50),(9,19,50),(9,20,50),(9,21,50),(9,22,50),(9,23,50),(9,24,50),(10,1,50),(10,2,50),(10,3,50),(10,4,50),(10,5,50),(10,6,50),(10,7,50),(10,8,50),(10,9,50),(10,10,50),(10,11,50),(10,12,50),(10,13,50),(10,14,50),(10,15,50),(10,16,50),(10,17,50),(10,18,50),(10,19,50),(10,20,50),(10,21,50),(10,22,50),(10,23,50),(10,24,50),(11,1,50),(11,2,50),(11,3,50),(11,4,50),(11,5,50),(11,6,50),(11,7,50),(11,8,50),(11,9,50),(11,10,50),(11,11,50),(11,12,50),(11,13,50),(11,14,50),(11,15,50),(11,16,50),(11,17,50),(11,18,50),(11,19,50),(11,20,50),(11,21,50),(11,22,50),(11,23,50),(11,24,50),(12,1,50),(12,2,50),(12,3,50),(12,4,50),(12,5,50),(12,6,50),(12,7,50),(12,8,50),(12,9,50),(12,10,50),(12,11,50),(12,12,50),(12,13,50),(12,14,50),(12,15,50),(12,16,50),(12,17,50),(12,18,50),(12,19,50),(12,20,50),(12,21,50),(12,22,50),(12,23,50),(12,24,50),(13,1,50),(13,2,50),(13,3,50),(13,4,50),(13,5,50),(13,6,50),(13,7,50),(13,8,50),(13,9,50),(13,10,50),(13,11,50),(13,12,50),(13,13,50),(13,14,50),(13,15,50),(13,16,50),(13,17,50),(13,18,50),(13,19,50),(13,20,50),(13,21,50),(13,22,50),(13,23,50),(13,24,50),(14,1,50),(14,2,50),(14,3,50),(14,4,50),(14,5,50),(14,6,50),(14,7,50),(14,8,50),(14,9,50),(14,10,50),(14,11,50),(14,12,50),(14,13,50),(14,14,50),(14,15,50),(14,16,50),(14,17,50),(14,18,50),(14,19,50),(14,20,50),(14,21,50),(14,22,50),(14,23,50),(14,24,50),(15,1,50),(15,2,50),(15,3,50),(15,4,50),(15,5,50),(15,6,50),(15,7,50),(15,8,50),(15,9,50),(15,10,50),(15,11,50),(15,12,50),(15,13,50),(15,14,50),(15,15,50),(15,16,50),(15,17,50),(15,18,50),(15,19,50),(15,20,50),(15,21,50),(15,22,50),(15,23,50),(15,24,50),(16,1,50),(16,2,50),(16,3,50),(16,4,50),(16,5,50),(16,6,50),(16,7,50),(16,8,50),(16,9,50),(16,10,50),(16,11,50),(16,12,50),(16,13,50),(16,14,50),(16,15,50),(16,16,50),(16,17,50),(16,18,50),(16,19,50),(16,20,50),(16,21,50),(16,22,50),(16,23,50),(16,24,50),(17,1,50),(17,2,50),(17,3,50),(17,4,50),(17,5,50),(17,6,50),(17,7,50),(17,8,50),(17,9,50),(17,10,50),(17,11,50),(17,12,50),(17,13,50),(17,14,50),(17,15,50),(17,16,50),(17,17,50),(17,18,50),(17,19,50),(17,20,50),(17,21,50),(17,22,50),(17,23,50),(17,24,50),(18,1,50),(18,2,50),(18,3,50),(18,4,50),(18,5,50),(18,6,50),(18,7,50),(18,8,50),(18,9,50),(18,10,50),(18,11,50),(18,12,50),(18,13,50),(18,14,50),(18,15,50),(18,16,50),(18,17,50),(18,18,50),(18,19,50),(18,20,50),(18,21,50),(18,22,50),(18,23,50),(18,24,50),(19,1,50),(19,2,50),(19,3,50),(19,4,50),(19,5,50),(19,6,50),(19,7,50),(19,8,50),(19,9,50),(19,10,50),(19,11,50),(19,12,50),(19,13,50),(19,14,50),(19,15,50),(19,16,50),(19,17,50),(19,18,50),(19,19,50),(19,20,50),(19,21,50),(19,22,50),(19,23,50),(19,24,50),(20,1,50),(20,2,50),(20,3,50),(20,4,50),(20,5,50),(20,6,50),(20,7,50),(20,8,50),(20,9,50),(20,10,50),(20,11,50),(20,12,50),(20,13,50),(20,14,50),(20,15,50),(20,16,50),(20,17,50),(20,18,50),(20,19,50),(20,20,50),(20,21,50),(20,22,50),(20,23,50),(20,24,50),(21,1,50),(21,2,50),(21,3,50),(21,4,50),(21,5,50),(21,6,50),(21,7,50),(21,8,50),(21,9,50),(21,10,50),(21,11,50),(21,12,50),(21,13,50),(21,14,50),(21,15,50),(21,16,50),(21,17,50),(21,18,50),(21,19,50),(21,20,50),(21,21,50),(21,22,50),(21,23,50),(21,24,50),(22,1,50),(22,2,50),(22,3,50),(22,4,50),(22,5,50),(22,6,50),(22,7,50),(22,8,50),(22,9,50),(22,10,50),(22,11,50),(22,12,50),(22,13,50),(22,14,50),(22,15,50),(22,16,50),(22,17,50),(22,18,50),(22,19,50),(22,20,50),(22,21,50),(22,22,50),(22,23,50),(22,24,50),(23,1,50),(23,2,50),(23,3,50),(23,4,50),(23,5,50),(23,6,50),(23,7,50),(23,8,50),(23,9,50),(23,10,50),(23,11,50),(23,12,50),(23,13,50),(23,14,50),(23,15,50),(23,16,50),(23,17,50),(23,18,50),(23,19,50),(23,20,50),(23,21,50),(23,22,50),(23,23,50),(23,24,50),(24,1,50),(24,2,50),(24,3,50),(24,4,50),(24,5,50),(24,6,50),(24,7,50),(24,8,50),(24,9,50),(24,10,50),(24,11,50),(24,12,50),(24,13,50),(24,14,50),(24,15,50),(24,16,50),(24,17,50),(24,18,50),(24,19,50),(24,20,50),(24,21,50),(24,22,50),(24,23,50),(24,24,50);
/*!40000 ALTER TABLE `store inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store location`
--

DROP TABLE IF EXISTS `store location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store location` (
  `STORE_ID` int NOT NULL,
  `STORE_REGION` varchar(45) DEFAULT NULL,
  `SUP_ID` int DEFAULT NULL,
  `STORE_ADDRESS` varchar(45) DEFAULT NULL,
  `STORE_CITY` varchar(45) DEFAULT NULL,
  `STORE_STATE` varchar(45) DEFAULT NULL,
  `STORE_ZIPCODE` char(5) DEFAULT NULL,
  PRIMARY KEY (`STORE_ID`),
  KEY `SUP_ID_idx` (`SUP_ID`),
  CONSTRAINT `SUP_ID` FOREIGN KEY (`SUP_ID`) REFERENCES `supplier` (`SUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store location`
--

LOCK TABLES `store location` WRITE;
/*!40000 ALTER TABLE `store location` DISABLE KEYS */;
INSERT INTO `store location` VALUES (1,'West Coast',4,'153 Main St','Los Angeles','CA','90001'),(2,'Mountain',9,'466 Oak Ave','Denver','CO','80202'),(3,'Southwest',14,'889 Pine Rd','Phoenix','AZ','85001'),(4,'Midwest',19,'1081 Maple Blvd','Chicago','IL','60601'),(5,'Southeast',1,'1713 Elm St','Atlanta','GA','30301'),(6,'Northeast',6,'1815 Birch Ln','New York','NY','10001'),(7,'West Coast',11,'1217 Cedar Dr','Seattle','WA','98101'),(8,'Mountain',16,'1813 Walnut St','Salt Lake City','UT','84101'),(9,'Southwest',21,'2051 Cherry Ln','Dallas','TX','75201'),(10,'Midwest',2,'2723 Oak St','Detroit','MI','48201'),(11,'Southeast',7,'2725 Maple Ave','Miami','FL','33101'),(12,'Northeast',12,'2727 Pine St','Boston','MA','02101'),(13,'West Coast',17,'2729 Elm Rd','San Francisco','CA','94101'),(14,'Mountain',22,'3031 Cedar Ave','Albuquerque','NM','87101'),(15,'Southwest',3,'3233 Walnut Blvd','Las Vegas','NV','89101'),(16,'Midwest',8,'3435 Cherry St','St. Louis','MO','63101'),(17,'Southeast',13,'3637 Pine Dr','Charlotte','NC','28201'),(18,'Northeast',18,'3839 Maple Ln','Philadelphia','PA','19101'),(19,'West Coast',23,'4041 Cedar Rd','Portland','OR','97201'),(20,'Mountain',4,'4243 Oak Ave','Boise','ID','83701'),(21,'Southwest',9,'4445 Pine Rd','Tucson','AZ','85701'),(22,'Midwest',14,'4647 Maple Blvd','Minneapolis','MN','55401'),(23,'Southeast',19,'4849 Elm St','Nashville','TN','37201'),(24,'Northeast',1,'5051 Birch Ln','Washington','DC','20001');
/*!40000 ALTER TABLE `store location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `SUP_ID` int NOT NULL,
  `SUP_NAME` varchar(45) DEFAULT NULL,
  `DEPT_ID` int DEFAULT NULL,
  PRIMARY KEY (`SUP_ID`),
  KEY `DEPT_ID_idx` (`DEPT_ID`),
  CONSTRAINT `DEPT_ID` FOREIGN KEY (`DEPT_ID`) REFERENCES `department` (`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Procter & Gamble',1),(2,'Johnson & Johnson',1),(3,'Kraft Heinz',2),(4,'Nestle',2),(5,'General Mills',2),(6,'Conagra Brands',2),(7,'PepsiCo',3),(8,'Coca-Cola',3),(9,'Frito-Lay',3),(10,'Keebler',4),(11,'Hershey Company',4),(12,'Mars, Inc.',4),(13,'Nabisco',4),(14,'Kellogg Company',5),(15,'Quaker Oats Company',5),(16,'Clorox',6),(17,'SC Johnson',6),(18,'3M',6),(19,'Georgia-Pacific',6),(20,'BIC',7),(21,'Sharpie',7),(22,'Paper Mate',7),(23,'Newell Brands',7),(24,'Gojo Industries',8);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP PROCEDURE IF EXISTS `averageLineQuantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `averageLineQuantity`()
BEGIN
    SELECT AVG(LINE_QTY) AS 'Average Line Quantity' FROM `Customer Order Lines`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTotalRevenue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTotalRevenue`(INOUT sales FLOAT)
BEGIN
	DECLARE finished INTEGER DEFAULT 0;
	DECLARE totalSum FLOAT DEFAULT 0;
    DECLARE currentPrice FLOAT DEFAULT 0;
	DECLARE totalSales 
		CURSOR FOR 
			SELECT `LINE_PRICE` FROM `Customer Order Lines`;

	-- declare NOT FOUND handler
	DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;

	OPEN totalSales;

	label: LOOP
		FETCH totalSales INTO currentPrice;
        SET totalSum = totalSum + currentPrice;
		IF finished = 1 THEN 
			LEAVE label;
		END IF;
		SET sales = totalSum;
	END LOOP label;
	CLOSE totalSales;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `northeastbuyers`
--

/*!50001 DROP VIEW IF EXISTS `northeastbuyers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `northeastbuyers` AS select `customer`.`CUS_LNAME` AS `CUS_LNAME`,`customer`.`CUS_FNAME` AS `CUS_FNAME`,`customer`.`CUS_STATE` AS `CUS_STATE`,`customer`.`CUS_EMAIL` AS `CUS_EMAIL` from `customer` where ((`customer`.`CUS_ZIPCODE` like '0%') or (`customer`.`CUS_ZIPCODE` like '1%')) */;
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

-- Dump completed on 2023-04-26 10:36:24

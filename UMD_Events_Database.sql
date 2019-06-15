CREATE DATABASE  IF NOT EXISTS `UMD_events` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `UMD_events`;
-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: UMD_events
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `all_non_causal_events_and_what_to_wear`
--

DROP TABLE IF EXISTS `all_non_causal_events_and_what_to_wear`;
/*!50001 DROP VIEW IF EXISTS `all_non_causal_events_and_what_to_wear`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `all_non_causal_events_and_what_to_wear` AS SELECT 
 1 AS `Events`,
 1 AS `Dress Code`,
 1 AS `Description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Dresscode`
--

DROP TABLE IF EXISTS `Dresscode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Dresscode` (
  `Dress_code_id` int(11) NOT NULL,
  `Type_of_dress_code` varchar(45) DEFAULT NULL,
  `Dress_code_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Dress_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dresscode`
--

LOCK TABLES `Dresscode` WRITE;
/*!40000 ALTER TABLE `Dresscode` DISABLE KEYS */;
INSERT INTO `Dresscode` VALUES (1,'No dresscode','Go crazy'),(2,'Casual','Avoid sweats or your gym clothes and opt for a nice pair of jeans and a daytime top.'),(3,'Black Tie','Evening gowns, tuxedos and traditional black bow ties are what organizers have in mind for a black tie event and it is usually accompanied by cuff linked shirts, cummerbunds for the boys and heels for the ladies. '),(4,'Business Casual','Business casual is an ambiguously defined dress code adopted by some white-collar workplaces in Western countries, comprising more casual wear than informal wear, but less casual than smart casual.'),(5,'Semi-Formal','This suits afternoon or corporate events and comprises of short afternoon dresses, business suits with shirts and ties.'),(6,'Cocktail Dress','Cocktail dress needs some effort to be put in terms of appearance and presentation, but isn’t as strict as Black Tie dress codes.'),(7,'White Tie','The most formal of them all this involves long evening gowns, white gloves, tailcoats and single (or double) striped matching trousers along with the obvious white tie.');
/*!40000 ALTER TABLE `Dresscode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Events`
--

DROP TABLE IF EXISTS `Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Events` (
  `Event_id` int(11) NOT NULL,
  `Event_name` varchar(255) DEFAULT NULL,
  `Event_date` date DEFAULT NULL,
  `Event_time` time DEFAULT NULL,
  `Food` tinyint(4) NOT NULL,
  `Eventype_id` int(11) NOT NULL,
  `Dresscode_Dress_code_id` int(11) NOT NULL,
  `RSVP` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Event_id`),
  KEY `fk_Events_Dresscode1_idx` (`Dresscode_Dress_code_id`),
  KEY `fk_Events_EventType1_idx` (`Eventype_id`),
  CONSTRAINT `fk_Events_Dresscode1` FOREIGN KEY (`Dresscode_Dress_code_id`) REFERENCES `dresscode` (`dress_code_id`),
  CONSTRAINT `fk_Events_EventType1` FOREIGN KEY (`Eventype_id`) REFERENCES `eventtype` (`eventype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Events`
--

LOCK TABLES `Events` WRITE;
/*!40000 ALTER TABLE `Events` DISABLE KEYS */;
INSERT INTO `Events` VALUES (1,'Certificate in Applied Positive Psychology ','2018-10-29','17:00:00',0,3,1,0),(2,'Maryland Christian Fellowship Sunday Service','2018-10-28','18:45:00',1,2,5,0),(3,'Students Helping Honduras Thrift Shop','2018-10-29','19:00:00',0,3,1,0),(4,'FREE: Aletheia at University of Maryland','2018-10-30','20:00:00',0,4,1,0),(5,'Veterans Reception','2018-10-31','09:00:00',0,5,4,0),(6,'Sigma Alpha Hot Chocolate and Cider Fundraiser','2018-11-01','17:00:00',1,2,1,0),(7,'SEE Escape Room','2018-11-01','07:00:00',0,7,1,0),(8,'\"What Matters Now\"\"\"','2018-10-29','07:30:00',0,3,2,0),(9,'Tianyi Halloween Bake Sale','2018-10-29','09:00:00',1,2,1,0),(10,'Be The Match Bone Marrow Registry','2018-10-29','09:00:00',0,6,1,1),(11,'Petey Greene Panel','2018-10-29','18:00:00',0,3,1,0),(12,'Palestine Information Panel','2018-11-01','18:45:00',0,3,1,0),(13,'Hillel Candlelight Vigil for Pittsburg Shooting Victims','2018-10-29','19:00:00',0,4,1,0),(14,'Free: Pre-Pharmacy Society GBM ','2018-10-29','20:00:00',0,5,4,0),(15,'Terps For Change Dialouge','2018-10-28','09:00:00',0,5,1,0),(16,'Coffee House Debate','2018-10-31','12:00:00',0,6,1,1),(17,'Bhakti Yoga and Meditation','2018-10-28','18:00:00',0,4,1,0),(18,'Price Alliance Hald Practicas Fall 2018','2018-10-31','18:45:00',0,7,1,0),(19,'Salvation and Praise Campus Church Meeting ','2018-10-31','19:00:00',1,4,5,0),(20,'Cold Fusion ','2018-10-27','20:00:00',1,6,6,1),(21,'Fall Ball','2018-10-31','21:00:00',1,6,6,1),(22,'Crimson and creme','2018-10-28','19:00:00',1,6,7,1),(23,'Black and Gold Pageant ','2018-10-25','19:00:00',1,6,3,1);
/*!40000 ALTER TABLE `Events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Events_Location`
--

DROP TABLE IF EXISTS `Events_Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Events_Location` (
  `Events_Event_id` int(11) NOT NULL,
  `Location_Location_id` int(11) NOT NULL,
  `Room_number` int(11) DEFAULT NULL,
  KEY `fk_Events_has_Location_Location1_idx` (`Location_Location_id`),
  KEY `fk_Events_has_Location_Events1_idx` (`Events_Event_id`),
  CONSTRAINT `fk_Events_has_Location_Events1` FOREIGN KEY (`Events_Event_id`) REFERENCES `events` (`event_id`),
  CONSTRAINT `fk_Events_has_Location_Location1` FOREIGN KEY (`Location_Location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Events_Location`
--

LOCK TABLES `Events_Location` WRITE;
/*!40000 ALTER TABLE `Events_Location` DISABLE KEYS */;
INSERT INTO `Events_Location` VALUES (1,1,2212),(2,2,2203),(3,3,1107),(4,4,2113),(5,5,1238),(6,6,1),(7,7,1),(8,1,2212),(9,8,110),(10,6,7901),(11,5,1238),(12,10,2208),(13,10,1103),(14,9,1310),(15,5,7891),(16,3,1000),(17,3,3010),(18,3,3001),(19,5,6137),(20,10,1111),(21,3,2100),(22,3,2000),(23,3,2000);
/*!40000 ALTER TABLE `Events_Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `events_per_day`
--

DROP TABLE IF EXISTS `events_per_day`;
/*!50001 DROP VIEW IF EXISTS `events_per_day`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `events_per_day` AS SELECT 
 1 AS `Date`,
 1 AS `# of Events`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `EventType`
--

DROP TABLE IF EXISTS `EventType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `EventType` (
  `Eventype_id` int(11) NOT NULL,
  `Event_type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Eventype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventType`
--

LOCK TABLES `EventType` WRITE;
/*!40000 ALTER TABLE `EventType` DISABLE KEYS */;
INSERT INTO `EventType` VALUES (1,'Fundraiser'),(2,'Info Seesions/Panels'),(3,'General Body Meeting'),(4,'Religious/Spiritual'),(5,'Charity'),(6,'Social '),(7,'Cultural');
/*!40000 ALTER TABLE `EventType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `find_all_professionals_and_if_they_have_food`
--

DROP TABLE IF EXISTS `find_all_professionals_and_if_they_have_food`;
/*!50001 DROP VIEW IF EXISTS `find_all_professionals_and_if_they_have_food`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `find_all_professionals_and_if_they_have_food` AS SELECT 
 1 AS `organization_name`,
 1 AS `Organization_description`,
 1 AS `Food`,
 1 AS `COUNT(UMD_events.Organization.organization_name)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `find_events_and_orgs`
--

DROP TABLE IF EXISTS `find_events_and_orgs`;
/*!50001 DROP VIEW IF EXISTS `find_events_and_orgs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `find_events_and_orgs` AS SELECT 
 1 AS `event_name`,
 1 AS `organization_name`,
 1 AS `date_format(event_date,"%Y/%d/%m")`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Items_to_bring`
--

DROP TABLE IF EXISTS `Items_to_bring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Items_to_bring` (
  `Items_id` int(11) NOT NULL,
  `is_items` tinyint(4) DEFAULT NULL,
  `Items` varchar(45) DEFAULT NULL,
  `Events_id` int(11) NOT NULL,
  PRIMARY KEY (`Items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Items_to_bring`
--

LOCK TABLES `Items_to_bring` WRITE;
/*!40000 ALTER TABLE `Items_to_bring` DISABLE KEYS */;
INSERT INTO `Items_to_bring` VALUES (1,0,'Nothing required',8),(2,1,'Resume',2),(3,0,'Nothing required',5),(4,1,'Donation',6),(5,0,'Nothing required',3),(6,1,'Food',3),(7,1,'Student ID',12),(8,0,'Nothing required',10),(9,0,'Nothing required',15),(10,0,'Nothing required',14),(11,1,'Laptop',4),(12,1,'Pen and Pencil',1),(13,1,'Headphones',11),(14,1,'Cellphone',9),(15,1,'Candle',7);
/*!40000 ALTER TABLE `Items_to_bring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Location`
--

DROP TABLE IF EXISTS `Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Location` (
  `Location_id` int(11) NOT NULL,
  `Building_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Location`
--

LOCK TABLES `Location` WRITE;
/*!40000 ALTER TABLE `Location` DISABLE KEYS */;
INSERT INTO `Location` VALUES (1,'Benjamin Banneker A '),(2,'Art-Socy '),(3,'Adele Stamp Student Union'),(4,'Thurgood Marshall'),(5,'McKeldin '),(6,'Hornbake Plaza'),(7,'Juan Ramon Jimenez '),(8,'Susquehanna'),(9,'Armory'),(10,'Jeong H. Kim Engineering ');
/*!40000 ALTER TABLE `Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Org_Events`
--

DROP TABLE IF EXISTS `Org_Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Org_Events` (
  `Event_id` int(11) NOT NULL,
  `Organization_id` int(11) NOT NULL,
  PRIMARY KEY (`Event_id`,`Organization_id`),
  KEY `fk_Org_Events_Organization1_idx` (`Organization_id`),
  KEY `fk_Org_Events_Events1_idx` (`Event_id`),
  CONSTRAINT `fk_Org_Events_Events1` FOREIGN KEY (`Event_id`) REFERENCES `events` (`event_id`),
  CONSTRAINT `fk_Org_Events_Organization1` FOREIGN KEY (`Organization_id`) REFERENCES `organization` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Org_Events`
--

LOCK TABLES `Org_Events` WRITE;
/*!40000 ALTER TABLE `Org_Events` DISABLE KEYS */;
INSERT INTO `Org_Events` VALUES (2,2),(19,2),(3,3),(4,4),(5,5),(10,5),(6,6),(7,7),(8,8),(9,9),(17,9),(14,11),(15,11),(16,11),(18,11),(11,12),(12,13),(13,15),(21,16),(22,17),(23,18),(23,19),(22,20),(20,21),(21,22);
/*!40000 ALTER TABLE `Org_Events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organization`
--

DROP TABLE IF EXISTS `Organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Organization` (
  `organization_id` int(11) NOT NULL,
  `organization_name` varchar(255) DEFAULT NULL,
  `Organization_description` text,
  `Org_President` varchar(45) DEFAULT NULL,
  `Meeting_time` time DEFAULT NULL,
  `OrganizationType_id` int(11) NOT NULL,
  PRIMARY KEY (`organization_id`),
  KEY `fk_Organization_Organization_Type1_idx` (`OrganizationType_id`),
  CONSTRAINT `fk_Organization_Organization Type1` FOREIGN KEY (`OrganizationType_id`) REFERENCES `organization_type` (`organizationtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization`
--

LOCK TABLES `Organization` WRITE;
/*!40000 ALTER TABLE `Organization` DISABLE KEYS */;
INSERT INTO `Organization` VALUES (1,'The Phoenix Nest','none ','Coby Holmes ','20:00:00',3),(2,'Maryland Christian Fellowship','Christian fellowship group ','Ruben Dumey ','17:00:00',10),(3,'Students Helping Honduras','Club travels and helps build houses for honduras. ','Tom Joner ','20:00:00',5),(4,'Aletheia at University of Maryland','faith-based, student led organization that exists to allow students a safe place to learn the truths of the Bible and to serve the University of Maryland campus.','Kobe Mason ','19:00:00',3),(5,'The Stamp: ENGA: Veteran Student Life','To build and maintain a community of veteran and military-connected students, staff, faculty, and alumni at the University of Maryland. ','John Doe ','19:00:00',5),(6,'Sigma Alpha Agricultural Sorority','Sigma Alpha is a professional agricultural sorority that promotes scholarship, leadership, service and fellowship among its members. ','Alyssa Thomas','16:00:00',6),(7,'The Stamp: ACTI: Student Ent. Events (SEE)','SEE is UMD\'s primary event programming board on campus, putting on a diverse mix of events throughout the year for the campus community. ','Jeff Mathiews ','18:00:00',9),(8,'UMCP, College of Education','The College of Education will be a premier center for interdisciplinary research and innovation engaged with the most vital education issues of the 21st century. ','Brock Sassler ','20:00:00',8),(9,'Tianyi Dance Team','Traditional Chinese dance team at the University of Maryland, College Park.','Kim Son ','20:00:00',2),(10,'Alpha Phi Omega, National Co-Ed Service Fraternity','Alpha Phi Omega will be the premier, inclusive campus-based leadership development organization through the provision of service to others. ','Robert Martin ','20:00:00',6),(11,'The Stamp: LCSL: Leadership Programs','LCSL engages students in leadership development and service-learning opportunities that foster transformative learning and social change. ','Mark Jones ','17:00:00',3),(12,'The Petey Greene Program','The Petey Greene Program supplements correctional education systems by providing individualized tutoring for incarcerated people. ','Pam Oliver ','18:00:00',8),(13,'UMD Students for Justice in Palestine','Organization based on democratic principles to raise awareness about the human rights violations committed by Israel against the Palestinian people. ','Jim Washington ','20:00:00',11),(14,'Terrapin Trail Club','University of Maryland\'s student outdoors club. ','Brain Shaub ','19:00:00',1),(15,'Maryland Hillel','Maryland Hillel is an affiliate of Hillel International and a beneficiary of The Associated: Jewish Community Federation of Baltimore and The Federation of Greater Washington.','Luke Skywalker ','20:00:00',10),(16,'ASA African Student Association','We are devoted to propagating the positivism of African culture through programs as well as collaborations with other on-campus student organizations.','Sean Davis ','19:00:00',2),(17,'Kappa Alpha Psi Fraternity','Kappa Alpha Psi, Incorporated, a college fraternity, now comprised of functioning Undergraduate and Alumni Chapters on major campuses and in cities throughout the country. ','Shelton Eley ','19:11:00',12),(18,'Alpha Phi Alpha Fraternity ','Alpha Phi Alpha Fraternity develops leaders, promotes brotherhood and academic excellence, while providing service and advocacy for our communities. ','Tre  Waston ','19:06:00',12),(19,'Alpha Kappa Alpha Sorority ','Alpha Kappa Alpha, Incorporated, is a college Sorority that main mission is community service and shaping the next leaders of the world. ','Chandler Jones ','20:00:00',12),(20,'Delta Sigma Theta Sorority ','Delta Sigma Theta, Incorporated, is a college Sorority that is committed in establishing strong black women of tomorrow. ','Imani Reeves ','18:00:00',12),(21,'Black Engineering Society ',' Mission is to recruit, retain, and release qualified minorities in the fields of computer science, engineering, mathematics, and physical sciences. ','Favour Johnson ','16:00:00',3),(22,'CSA Caribbean Student Association ','Caribbean students uniting together to provided a community between each student. ','Yvonne Cruz ','17:00:00',2);
/*!40000 ALTER TABLE `Organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organization Type`
--

DROP TABLE IF EXISTS `Organization Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Organization Type` (
  `OrganizationType_id` int(11) NOT NULL,
  `OrganizationType_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OrganizationType_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization Type`
--

LOCK TABLES `Organization Type` WRITE;
/*!40000 ALTER TABLE `Organization Type` DISABLE KEYS */;
INSERT INTO `Organization Type` VALUES (1,'Sports'),(2,'Cultural'),(3,'Professional'),(4,'Technology '),(5,'Community Service '),(6,'Social '),(7,'Art'),(8,'Academic'),(9,'Entertainment'),(10,'Religious/Spiritual'),(11,'Political/Activist'),(12,'Greek'),(13,'Media '),(14,'Performing Groups '),(15,'Service ');
/*!40000 ALTER TABLE `Organization Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organization_Type`
--

DROP TABLE IF EXISTS `Organization_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Organization_Type` (
  `OrganizationType_id` int(11) NOT NULL,
  `OrganizationType_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OrganizationType_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization_Type`
--

LOCK TABLES `Organization_Type` WRITE;
/*!40000 ALTER TABLE `Organization_Type` DISABLE KEYS */;
INSERT INTO `Organization_Type` VALUES (1,'Sports'),(2,'Cultural'),(3,'Professional'),(4,'Technology '),(5,'Community Service '),(6,'Social '),(7,'Art'),(8,'Academic'),(9,'Entertainment'),(10,'Religious/Spiritual'),(11,'Political/Activist'),(12,'Greek'),(13,'Media '),(14,'Performing Groups '),(15,'Service ');
/*!40000 ALTER TABLE `Organization_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Speaker`
--

DROP TABLE IF EXISTS `Speaker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Speaker` (
  `idSpeaker` int(11) NOT NULL,
  `Speaker_name` varchar(45) DEFAULT NULL,
  `Event_id` int(11) NOT NULL,
  PRIMARY KEY (`idSpeaker`),
  KEY `fk_Speaker_Events1_idx` (`Event_id`),
  CONSTRAINT `fk_Speaker_Events1` FOREIGN KEY (`Event_id`) REFERENCES `events` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Speaker`
--

LOCK TABLES `Speaker` WRITE;
/*!40000 ALTER TABLE `Speaker` DISABLE KEYS */;
INSERT INTO `Speaker` VALUES (1,'Jonh Doe',1),(2,'Jonh Doe',2),(3,'Dr. Elanor Grossman',3),(4,'Mike Brown',4),(5,'J.W. Hamstead',5),(6,'Dr. Elanor Grossman',6),(7,'Chad Mcfly',7),(8,'Janel Olson',8),(9,'Tamera Croft',9),(10,'Zach Sneak',10),(11,'Tom Buckanon',23),(12,'Lezly Shop',20),(13,'Tanner Nine',16),(14,'Pam Gresher',12),(15,'Elen Atilope',5);
/*!40000 ALTER TABLE `Speaker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `what_items_to_bring`
--

DROP TABLE IF EXISTS `what_items_to_bring`;
/*!50001 DROP VIEW IF EXISTS `what_items_to_bring`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `what_items_to_bring` AS SELECT 
 1 AS `Event_name`,
 1 AS `Items`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `what_items_to_bring_no_need_to_bring_item`
--

DROP TABLE IF EXISTS `what_items_to_bring_no_need_to_bring_item`;
/*!50001 DROP VIEW IF EXISTS `what_items_to_bring_no_need_to_bring_item`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `what_items_to_bring_no_need_to_bring_item` AS SELECT 
 1 AS `event_name`,
 1 AS `items`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `all_non_causal_events_and_what_to_wear`
--

/*!50001 DROP VIEW IF EXISTS `all_non_causal_events_and_what_to_wear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_non_causal_events_and_what_to_wear` AS select `temp`.`event_name` AS `Events`,`dresscode`.`Type_of_dress_code` AS `Dress Code`,`dresscode`.`Dress_code_description` AS `Description` from ((select `events`.`Event_name` AS `event_name`,`events`.`Dresscode_Dress_code_id` AS `Dresscode_Dress_code_id` from `events` where (`events`.`Dresscode_Dress_code_id` > 2)) `temp` left join `dresscode` on((`temp`.`Dresscode_Dress_code_id` = `dresscode`.`Dress_code_id`))) order by `dresscode`.`Dress_code_description` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `events_per_day`
--

/*!50001 DROP VIEW IF EXISTS `events_per_day`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `events_per_day` AS select `events`.`Event_date` AS `Date`,count(`events`.`Event_id`) AS `# of Events` from `events` group by `events`.`Event_date` order by `events`.`Event_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `find_all_professionals_and_if_they_have_food`
--

/*!50001 DROP VIEW IF EXISTS `find_all_professionals_and_if_they_have_food`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `find_all_professionals_and_if_they_have_food` AS select `organization`.`organization_name` AS `organization_name`,`organization`.`Organization_description` AS `Organization_description`,`events`.`Food` AS `Food`,count(`organization`.`organization_name`) AS `COUNT(UMD_events.Organization.organization_name)` from (((`events` join `org_events` on((`events`.`Event_id` = `org_events`.`Event_id`))) join `organization` on((`org_events`.`Organization_id` = `organization`.`organization_id`))) join `organization` `Type` on((`organization`.`OrganizationType_id` = `Type`.`OrganizationType_id`))) where ((`organization`.`OrganizationType_id` = 3) and (`events`.`Food` = TRUE)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `find_events_and_orgs`
--

/*!50001 DROP VIEW IF EXISTS `find_events_and_orgs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `find_events_and_orgs` AS select `events`.`Event_name` AS `event_name`,`organization`.`organization_name` AS `organization_name`,date_format(`events`.`Event_date`,'%Y/%d/%m') AS `date_format(event_date,"%Y/%d/%m")` from ((`events` join `org_events` on((`events`.`Event_id` = `org_events`.`Event_id`))) join `organization` on((`org_events`.`Organization_id` = `organization`.`organization_id`))) where (`events`.`Dresscode_Dress_code_id` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `what_items_to_bring`
--

/*!50001 DROP VIEW IF EXISTS `what_items_to_bring`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `what_items_to_bring` AS select `events`.`Event_name` AS `Event_name`,`items_to_bring`.`Items` AS `Items` from (`items_to_bring` join `events` on((`items_to_bring`.`Events_id` = `events`.`Event_id`))) where (`items_to_bring`.`is_items` = TRUE) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `what_items_to_bring_no_need_to_bring_item`
--

/*!50001 DROP VIEW IF EXISTS `what_items_to_bring_no_need_to_bring_item`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `what_items_to_bring_no_need_to_bring_item` AS select `events`.`Event_name` AS `event_name`,`items_to_bring`.`Items` AS `items` from (`items_to_bring` join `events` on((`items_to_bring`.`Events_id` = `events`.`Event_id`))) where (`items_to_bring`.`is_items` = FALSE) */;
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

-- Dump completed on 2018-12-05 21:00:00
-- MySQL dump 10.13  Distrib 5.7.29, for Win64 (x86_64)
--
-- Host: localhost    Database: batch2_ipldb
-- ------------------------------------------------------
-- Server version	5.7.29-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `batch2_ipldb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `batch2_ipldb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `batch2_ipldb`;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKdvd6ljes11r44igawmpm1mc5s` (`team_id`),
  CONSTRAINT `FKdvd6ljes11r44igawmpm1mc5s` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Ambati Rayadu (R)',22000000,2,'BATSMAN'),(2,'Monu Singh (R)',2000000,2,'BATSMAN'),(3,'Murali Vijay (R)',20000000,2,'BATSMAN'),(4,'Ruturaj Gaikwad (R)',2000000,2,'BATSMAN'),(5,'Suresh Raine (R)',110000000,2,'BATSMAN'),(6,'MS Dhoni (R)',150000000,2,'WKEEPER'),(7,'Jagadeesan Narayan (R)',2000000,2,'WKEEPER'),(8,'Asif K M (R)',4000000,2,'ALLROUNDER'),(9,'Dwayne Bravo (R)',64000000,2,'ALLROUNDER'),(10,'Faf du Plessis (R)',16000000,2,'ALLROUNDER'),(11,'Karn Sharma (R)',50000000,2,'ALLROUNDER'),(12,'Kedar Jadhav (R)',78000000,2,'ALLROUNDER'),(13,'Ravindra jadeja (R)',70000000,2,'ALLROUNDER'),(14,'Shane Watson (R)',40000000,2,'ALLROUNDER'),(15,'Sam Curran',55000000,2,'ALLROUNDER'),(16,'Deepak Chahar (R)',8000000,2,'BOWLER'),(17,'Harbhajan Singh (R)',20000000,2,'BOWLER'),(18,'Imran Tahir (R)',10000000,2,'BOWLER'),(19,'Lungisani Ngidi (R)',5000000,2,'BOWLER'),(20,'Mitchell Santner (R)',5000000,2,'BOWLER'),(21,'Shardul Thakur (R)',26000000,2,'BOWLER'),(22,'Piyush Chawla',67500000,2,'BOWLER'),(23,'Josh Hazlewood',20000000,2,'BOWLER'),(24,'R. Sai Kishore',2000000,2,'BOWLER'),(25,'Shreyas Iyer (R)',70000000,3,'BATSMAN'),(26,'Ajinkya Rahane (R)',52500000,3,'BATSMAN'),(27,'Avesh Khan (R)',7000000,3,'BATSMAN'),(28,'Keemo Paul (R)',5000000,3,'BATSMAN'),(29,'Prithvi Shaw (R)',12000000,3,'BATSMAN'),(30,'Shikhar Dhawan (R)',52000000,3,'BATSMAN'),(31,'Shimron Heymyer',77500000,3,'BATSMAN'),(32,'Jason Roy',15000000,3,'BATSMAN'),(33,'Rishabh Pant (R)',150000000,3,'WKEEPER'),(34,'Alex Carey',24000000,3,'WKEEPER'),(35,'Marcus Stoinis',48000000,3,'ALLROUNDER'),(36,'Lalit Yadav',2000000,3,'ALLROUNDER'),(37,'Chris Woakes',15000000,3,'ALLROUNDER'),(38,'Ravichandran Ashwin (R)',76000000,3,'BOWLER'),(39,'Sandeep Lamichhane (R)',2000000,3,'BOWLER'),(40,'Axax Patel (R)',50000000,3,'BOWLER'),(41,'Harshal Patel (R)',2000000,3,'BOWLER'),(42,'Ishant Sharma (R)',11000000,3,'BOWLER'),(43,'Kagiso Rabada (R)',42000000,3,'BOWLER'),(44,'Mohit Sharma',5000000,3,'BOWLER'),(45,'Tushar Deshpande',2000000,3,'BOWLER'),(46,'Amit Mishra (R)',40000000,3,'BOWLER'),(47,'Virat Kohli (R)',170000000,7,'BATSMAN'),(48,'AB de Villiers (R)',110000000,7,'BATSMAN'),(49,'Devdutt Padikkal (R)',2000000,7,'BATSMAN'),(50,'Gurkeerat Singh (R)',5000000,7,'BATSMAN'),(51,'Aaron Finch',44000000,7,'BATSMAN'),(52,'Shahbaz Ahamad',2000000,7,'WKEEPER'),(53,'Joshua Philippe',2000000,7,'WKEEPER'),(54,'Pathiv Patel (R)',17000000,7,'WKEEPER'),(55,'Pawan Negi (R)',10000000,7,'ALLROUNDER'),(56,'Shivam Dube (R)',50000000,7,'ALLROUNDER'),(57,'Moeen Ali (R)',17000000,7,'ALLROUNDER'),(58,'Isuru Udana',5000000,7,'ALLROUNDER'),(59,'Pavan Deshpande',2000000,7,'ALLROUNDER'),(60,'Christopher Morris',100000000,7,'ALLROUNDER'),(61,'Kane Richardson',40000000,7,'BOWLER'),(62,'Dale Steyn',20000000,7,'BOWLER'),(63,'Mohammaed Siraj (R)',26000000,7,'BOWLER'),(64,'Navdeep Saini (R)',30000000,7,'BOWLER'),(65,'Umesh Yadav (R)',42000000,7,'BOWLER'),(66,'Washington Sundar (R)',32000000,7,'BOWLER'),(67,'Yuzvendra Chahal (R)',60000000,7,'BOWLER'),(68,'Karun Nair (R)',56000000,4,'BATSMAN'),(69,'Arshdeep Singh (R)',2000000,4,'BATSMAN'),(70,'Chris Gayle (R)',20000000,4,'BATSMAN'),(71,'Darshan Nalkande (R)',3000000,4,'BATSMAN'),(72,'Gowtham Krishnappa (R)',62000000,4,'BATSMAN'),(73,'Hardus Viljoen (R)',7500000,4,'BATSMAN'),(74,'Harpreet Brar (R)',2000000,4,'BATSMAN'),(75,'Mayank Agarwal (R)',10000000,4,'BATSMAN'),(76,'Nicholas Pooran (R)',42000000,4,'BATSMAN'),(77,'Sarfaraz Khan (R)',2500000,4,'BATSMAN'),(78,'Prabhsimran Singh',5500000,4,'WKEEPER'),(79,'KL Rahul (R)',110000000,4,'WKEEPER'),(80,'Mandeep Singh (R)',14000000,4,'ALLROUNDER'),(81,'Glenn Maxwell',107500000,4,'ALLROUNDER'),(82,'Chris Jordan',30000000,4,'ALLROUNDER'),(83,'Deepak Hooda',5000000,4,'ALLROUNDER'),(84,'James Neesham',5000000,4,'ALLROUNDER'),(85,'Tajinder Dhillon',2000000,4,'ALLROUNDER'),(86,'Ishan Patel',2000000,4,'BOWLER'),(87,'Jagadeesha Suchith (R)',2000000,4,'BOWLER'),(88,'Mohammad Shami (R)',48000000,4,'BOWLER'),(89,'Ravi Bishnoi',20000000,4,'BOWLER'),(90,'Sheldon Cottrell',85000000,4,'BOWLER'),(91,'Murugan Ashwin (R)',2000000,4,'BOWLER'),(92,'Riyan Parag (R)',2000000,6,'BATSMAN'),(93,'Shashank Singh (R)',3000000,6,'BATSMAN'),(94,'Steve Smith (R)',125000000,6,'BATSMAN'),(95,'Robin Uthappa',30000000,6,'BATSMAN'),(96,'David Miller',7500000,6,'BATSMAN'),(97,'Manan Vohra (R)',0,6,'BATSMAN'),(98,'Jos Butler (R)',44000000,6,'WKEEPER'),(99,'Sanju Samson (R)',80000000,6,'WKEEPER'),(100,'Anuj Rawat',8000000,6,'WKEEPER'),(101,'Ben Stokes (R)',125000000,6,'ALLROUNDER'),(102,'Mahipal Lmoror (R)',2000000,6,'ALLROUNDER'),(103,'Shreyas Gopal (R)',2000000,6,'ALLROUNDER'),(104,'Yashasvi Jaiswal',24000000,6,'ALLROUNDER'),(105,'Tom Curran',10000000,6,'ALLROUNDER'),(106,'Ankit Rajpoot (R)',30000000,6,'BOWLER'),(107,'Jofra Archer (R)',72000000,6,'BOWLER'),(108,'Mayank Markande (R)',20000000,6,'BOWLER'),(109,'Rahul Tweatia (R)',30000000,6,'BOWLER'),(110,'Varun Aaron (R)',24000000,6,'BOWLER'),(111,'Jaydev Unadkat',30000000,6,'BOWLER'),(112,'Kartik Tyagi',13000000,6,'BOWLER'),(113,'Andrew Tye',10000000,6,'BOWLER'),(114,'Oshane Thomas',5000000,6,'BOWLER'),(115,'Anirudha Ashok Joshi',2000000,6,'ALLROUNDER'),(116,'Akash Singh',2000000,6,'BOWLER'),(117,'Andre Russell (R)',85000000,5,'BATSMAN'),(118,'Harry Gurney (R)',7500000,5,'BATSMAN'),(119,'Kamlesh Nagarkoti (R)',32000000,5,'BATSMAN'),(120,'Lockie Ferguson (R)',16000000,5,'BATSMAN'),(121,'Nitish Rana (R)',34000000,5,'BATSMAN'),(122,'Prasidh Krishna (R)',2000000,5,'BATSMAN'),(123,'Rinku Singh (R)',8000000,5,'BATSMAN'),(124,'Shubham Gill (R)',18000000,5,'BATSMAN'),(125,'Siddhesh Lad (R)',2000000,5,'BATSMAN'),(126,'Eoin Morgan',52500000,5,'BATSMAN'),(127,'Tom Banton',10000000,5,'BATSMAN'),(128,'Rahul Tripathi',6000000,5,'BATSMAN'),(129,'Dinesh Karthik (R)',74000000,5,'WKEEPER'),(130,'Nikhil Shankar Naik',2000000,5,'WKEEPER'),(131,'Sunil Narine (R)',125000000,5,'ALLROUNDER'),(132,'Pat Cummins',155000000,5,'ALLROUNDER'),(133,'Shivam Mavi (R)',30000000,5,'ALLROUNDER'),(134,'Varun Chakaravarthy',40000000,5,'ALLROUNDER'),(135,'Chris Green',2000000,5,'ALLROUNDER'),(136,'Kuldeep Yadav (R)',58000000,5,'BOWLER'),(137,'Sandeep Warrier (R)',2000000,5,'BOWLER'),(138,'Pravin Tambe',2000000,5,'BOWLER'),(139,'M Siddharth',2000000,5,'BOWLER'),(140,'Rohit Sharma (R)',150000000,1,'BATSMAN'),(141,'Anmolpreet Singh (R)',8000000,1,'BATSMAN'),(142,'Ankul Roy (R)',2000000,1,'BATSMAN'),(143,'Sherfane Rutherford (R)',20000000,1,'BATSMAN'),(144,'Suryakumar Yadav (R)',32000000,1,'BATSMAN'),(145,'Chris Lynn',20000000,1,'BATSMAN'),(146,'Saurabh Tiwary',5000000,1,'BATSMAN'),(147,'Aditya Tare (R)',2000000,1,'WKEEPER'),(148,'Ishan Kishan (R)',62000000,1,'WKEEPER'),(149,'Quinton de Kock (R)',28000000,1,'WKEEPER'),(150,'Hardik Pandya (R)',110000000,1,'ALLROUNDER'),(151,'Kieron Pollard (R)',54000000,1,'ALLROUNDER'),(152,'Krunal Pandya (R)',88000000,1,'ALLROUNDER'),(153,'Rahul Chahar (R)',19000000,1,'ALLROUNDER'),(154,'Digvijay Deshmukh',2000000,1,'ALLROUNDER'),(155,'Prince Balwant Rai Singh',2000000,1,'ALLROUNDER'),(156,'Dhawal Kulkarni (R)',7500000,1,'BOWLER'),(157,'Jasprit Bumrah (R)',70000000,1,'BOWLER'),(158,'Jayant Yadav (R)',5000000,1,'BOWLER'),(159,'Lasith Malinga (R)',20000000,1,'BOWLER'),(160,'Mitchell McClenaghan (R)',10000000,1,'BOWLER'),(161,'Trent Boult (R)',32000000,1,'BOWLER'),(162,'Nathan Coulter-Nile',80000000,1,'BOWLER'),(163,'Mohsin Khan',2000000,1,'BOWLER'),(164,'Kane Williamson',30000000,8,'BATSMAN'),(165,'Abhishek Sharma (R)',5500000,8,'BATSMAN'),(166,'David Warner (R)',125000000,8,'BATSMAN'),(167,'Manish Pandey (R)',110000000,8,'BATSMAN'),(168,'Priyam Garg',19000000,8,'BATSMAN'),(169,'Virat Singh',19000000,8,'BATSMAN'),(170,'Jonny Bairstow (R)',22000000,8,'WKEEPER'),(171,'Shreevats Goswami (R)',10000000,8,'WKEEPER'),(172,'Wridhhiman Saha (R)',12000000,8,'WKEEPER'),(173,'Vijay Shankar (R)',32000000,8,'ALLROUNDER'),(174,'Mitchell Marsh',20000000,8,'ALLROUNDER'),(175,'Mohammad Nabi (R)',10000000,8,'ALLROUNDER'),(176,'Fabian Allen',5000000,8,'ALLROUNDER'),(177,'Sandeep Bavanaka',2000000,8,'ALLROUNDER'),(178,'Sanjay Yadav',2000000,8,'ALLROUNDER'),(179,'Abdul Samad',2000000,8,'ALLROUNDER'),(180,'Basil Thampi (R)',9500000,8,'BOWLER'),(181,'Bhuvneshwar Kumar (R)',85000000,8,'BOWLER'),(182,'Billy Stanlake (R)',5000000,8,'BOWLER'),(183,'Rashid Khan (R)',90000000,8,'BOWLER'),(184,'Sandeep Sharma (R)',30000000,8,'BOWLER'),(185,'Shahbaz Nadeem (R)',32000000,8,'BOWLER'),(186,'Siddarth Kaul (R)',38000000,8,'BOWLER'),(187,'Syed Khaleel Ahmed (R)',30000000,8,'BOWLER'),(188,'T Natarajan (R)',4000000,8,'BOWLER');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `coach` varchar(255) DEFAULT NULL,
  `home_ground` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Mumbai,Maharashtra','Mahela Jaywardene','Wankhede Stadium Mumbai','MI','Mumbai Indians'),(2,'Chennai,Tamil Nadu','Stephen Fleming','M.A. Chidambaram Stadium','CSK','Chennai Chennai Super Kings'),(3,'Delhi, NCR','Ricky Ponting','Feroz Shah Kotla Ground','DC','Delhi Capitals'),(4,'Mohali, Punjab','Anil Kumble','IS Bindra Stadium','KXIP','Kings XI Punjab'),(5,'Kolkata, West Bengal','Brendon McCullum','Eden Gardens','KKR','Kolkata Knight Riders'),(6,'Jaipur Rajasthan','Andrew McDonald','Sawai Mansingh Stadium','RR','Rajasthan Royals'),(7,'Bengaluru, Karnataka','Simon Katich','M. Chinnaswamy Stadium','RCB','Royal Challengers Bangalore'),(8,'Hyderabad, Telengana','Trevor Bayliss','Rajiv Gandhi International Cricket Stadium','SRH','Sunrisers Hyderabad');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-21 23:13:25

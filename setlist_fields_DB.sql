-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: setlist
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `idAlbum` int NOT NULL AUTO_INCREMENT,
  `AlbumName` varchar(45) NOT NULL,
  `YearAlbum` int NOT NULL,
  `Artist` int NOT NULL,
  PRIMARY KEY (`idAlbum`),
  UNIQUE KEY `NombreAlbum_UNIQUE` (`AlbumName`),
  KEY `FK_AL_AR_idx` (`Artist`),
  CONSTRAINT `FK_AL_AR` FOREIGN KEY (`Artist`) REFERENCES `artists` (`idArtist`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Shakira: BZRP Sessions, Vol. 53',2023,1),(2,'Quevedo: BZRP Sessions, Vol. 52',2022,1),(3,'Villano Antillano: BZRP Sessions, Vol. 51',2022,1),(4,'Duki: BZRP Music Sessions, Vol. 50',2022,1),(5,'Residente: BZRP Music Sessions, Vol. 49',2022,1),(6,'Recuerdos',2019,2),(7,'Parte de Mí',2021,2),(8,'Súper Sangre Joven',2018,3),(9,'Desde el Fin del Mundo',2020,3),(10,'It\'s Time',2005,4),(11,'To Be Loved',2013,4),(12,'After Hours',2020,5),(13,'Starboy',2016,5),(14,'My World 2.0',2010,6),(15,'Purpose',2015,6),(16,'Pies Descalzos',1995,7),(17,'Fijación Oral, Vol. 1',2005,7),(18,'Vibras',2018,8),(19,'Colores',2020,8),(20,'F.A.M.E.',2018,9),(21,'11:11',2019,9),(22,'Zaz',2010,10),(23,'Paris',2014,10),(24,'Nothing But the Beat',2011,11),(25,'Listen',2014,11),(26,'Eternelle',1987,12),(27,'La Môme De Paris',2003,12),(28,'Forever Young',1984,13),(29,'Afternoons in Utopia',1986,13),(30,'Sehnsucht',1997,14),(31,'Mutter',2001,14),(32,'Prayer',2014,15),(33,'Sugar',2015,15),(34,'Abbey Road',1969,16),(35,'1',1970,16),(36,'Whenever You Need Somebody',1987,17),(37,'Hold Me in Your Arms',1988,17),(38,'A Rush of Blood to the Head',2002,18),(39,'Viva la Vida or Death and All His Friends',2008,18),(40,'The Joshua Tree',1987,19),(41,'Achtung Baby',1991,19),(42,'Everybody Else Is Doing It, So Why Can\'t We?',1993,20),(43,'No Need to Argue',1994,20),(44,'Science & Faith',2010,21),(45,'No Sound Without Silence',2014,21),(46,'Romanza',1996,22),(47,'Sogno',1999,22),(48,'Laura Pausini',1993,23),(49,'Mi respuesta',1998,23),(50,'Raffaella Carrà',2017,24),(51,'iCollection',2016,24),(52,'¿Dónde Jugarán Los Niños?',1992,25),(53,'Revolución De Amor',2002,25),(54,'Si',2003,26),(55,'Limón y Sal',2006,26),(56,'Paulina',2000,27),(57,'Amanda',2006,27),(58,'Hunting High and Low',1985,28),(59,'Scoundrel Days',1986,28),(60,'Different World',2018,29),(61,'World Of Walker',2021,29),(62,'Cloud Nine',2016,30),(63,'Kids in Love',2017,30),(64,'X 100PRE',2018,31),(65,'YHLQMDLG',2020,31),(66,'Amor secreto',2002,32),(67,'VIDA',2019,32),(68,'Barrio Fino',2004,33),(69,'Prestige',2012,33),(70,'Map of the Soul: Persona',2019,34),(71,'BE',2020,34),(72,'To Anyone',2010,35),(73,'CRUSH',2014,35),(74,'BORN PINK',2022,36),(75,'THE ALBUM',2020,36),(76,'Aprendiz',1998,37),(77,'Guerra Fría',2010,37),(78,'De niña a mujer',1981,38),(79,'Mi Vida: Grandes Exitos',1978,38),(80,'Corazón Latino',2002,39),(81,'Bulería',2004,39),(82,'Super Trouper',1980,40),(83,'ABBA Gold',2008,40),(84,'True',2013,41),(85,'Stories',2015,41),(86,'So Good',2017,42),(87,'Poster Girl',2021,42),(88,'1989',2014,43),(89,'Red',2012,43),(90,'Thriller',1982,44),(91,'Bad',1987,44),(92,'It Might as Well Be Swing',1964,45),(93,'Strangers in the Night',1966,45);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `idArtist` int NOT NULL AUTO_INCREMENT,
  `ArtistName` varchar(45) NOT NULL,
  `ArtistCountry` char(3) NOT NULL,
  PRIMARY KEY (`idArtist`),
  UNIQUE KEY `Nombre_UNIQUE` (`ArtistName`),
  KEY `FK_AR_PA_idx` (`ArtistCountry`),
  CONSTRAINT `FK_AR_PA` FOREIGN KEY (`ArtistCountry`) REFERENCES `country` (`idCountry`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Bizarrap','ARG'),(2,'Nicki Nicole','ARG'),(3,'Duki','ARG'),(4,'Michael Bublé','CAN'),(5,'The Weeknd','CAN'),(6,'Justin Bieber','CAN'),(7,'Shakira','COL'),(8,'J Balvin','COL'),(9,'Maluma','COL'),(10,'Zaz','FRA'),(11,'David Guetta','FRA'),(12,'Edith Piaf','FRA'),(13,'Alphaville','GER'),(14,'Rammstein','GER'),(15,'Robin Schulz','GER'),(16,'The Beatles','GRE'),(17,'Rick Astley','GRE'),(18,'Coldplay','GRE'),(19,'U2','IRE'),(20,'The Cranberries','IRE'),(21,'The Script','IRE'),(22,'Andrea Bocelli','ITA'),(23,'Laura Pausini','SPA'),(24,'Raffaella Carrà','ITA'),(25,'Maná','MEX'),(26,'Julieta Venegas','MEX'),(27,'Paulina Rubio','MEX'),(28,'A-ha','NOR'),(29,'Alan Walker','NOR'),(30,'Kygo','NOR'),(31,'Bad Bunny','PUE'),(32,'Luis Fonsi','PUE'),(33,'Daddy Yankee','PUE'),(34,'BTS','SOU'),(35,'2NE1','SOU'),(36,'BLACKPINK','SOU'),(37,'Malú','SPA'),(38,'Julio Iglesias','SPA'),(39,'David Bisbal','SPA'),(40,'ABBA','SWE'),(41,'Avicii','SWE'),(42,'Zara Larsson','SWE'),(43,'Taylor Swift','UNI'),(44,'Michael Jackson','UNI'),(45,'Frank Sinatra','UNI');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concerts`
--

DROP TABLE IF EXISTS `concerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concerts` (
  `idConcert` int NOT NULL AUTO_INCREMENT,
  `Artist` int NOT NULL,
  `Venue` int NOT NULL,
  `ConcertDate` date NOT NULL,
  PRIMARY KEY (`idConcert`),
  KEY `FK_CO_AR_idx` (`Artist`),
  KEY `FK_CO_SI_idx` (`Venue`),
  CONSTRAINT `FK_CO_AR` FOREIGN KEY (`Artist`) REFERENCES `artists` (`idArtist`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_CO_SI` FOREIGN KEY (`Venue`) REFERENCES `venues` (`idVenue`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concerts`
--

LOCK TABLES `concerts` WRITE;
/*!40000 ALTER TABLE `concerts` DISABLE KEYS */;
INSERT INTO `concerts` VALUES (1,6,67,'2022-11-15'),(2,40,8,'2021-08-30'),(3,20,33,'2019-03-22'),(4,7,16,'2017-10-05'),(5,45,55,'2023-01-26'),(6,18,11,'2022-12-02'),(7,26,26,'2023-04-12'),(8,11,51,'2021-07-19'),(9,22,81,'2023-02-20'),(10,12,20,'2007-06-29'),(11,10,75,'2015-11-18'),(12,36,83,'2018-03-14'),(13,23,74,'2023-01-07'),(14,43,10,'2019-10-24'),(15,17,78,'2021-10-18'),(16,24,43,'2015-06-09'),(17,4,65,'2021-08-19'),(18,14,29,'2020-09-15'),(19,8,85,'2021-12-17'),(20,1,73,'2023-07-01'),(21,41,39,'2014-03-05'),(22,27,14,'2019-09-05'),(23,42,45,'2022-08-24'),(24,39,76,'2023-08-11'),(25,13,35,'2021-04-14'),(26,19,19,'2012-02-15'),(27,30,16,'2019-10-11'),(28,25,49,'2021-05-27'),(29,15,82,'2021-04-14'),(30,5,90,'2023-07-20'),(31,2,77,'2023-10-20'),(32,29,25,'2021-09-18'),(33,33,54,'2019-11-06'),(34,21,20,'2022-01-04'),(35,9,15,'2024-03-20'),(36,34,12,'2018-10-18'),(37,28,59,'2016-08-28'),(38,16,33,'2023-04-30'),(39,35,67,'2018-04-18'),(40,44,78,'2007-05-18'),(41,3,5,'2023-07-19'),(42,32,76,'2018-06-10'),(43,38,49,'2017-07-07'),(44,14,29,'2013-02-19'),(45,31,75,'2023-08-25'),(46,7,77,'2015-06-20'),(47,31,13,'2023-04-12'),(48,4,11,'2021-04-06'),(49,37,73,'2023-05-17'),(50,17,42,'2013-02-12'),(51,16,87,'1969-04-15'),(52,44,87,'2008-09-07'),(53,22,23,'2020-12-29'),(54,6,8,'2019-08-08'),(55,2,1,'2023-10-10'),(56,11,33,'2022-11-09'),(57,39,74,'2020-02-19'),(58,39,65,'2020-11-24'),(59,37,44,'2023-04-13'),(60,16,31,'1993-07-07'),(61,42,80,'2023-10-25'),(62,21,38,'2021-08-20'),(63,45,85,'1992-11-04'),(64,40,83,'2004-02-17'),(66,31,49,'2023-08-18'),(67,41,80,'2016-07-02'),(68,41,32,'2014-04-05'),(69,18,38,'2023-02-21'),(70,1,3,'2023-10-05'),(71,28,87,'2005-07-23');
/*!40000 ALTER TABLE `concerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `idCountry` char(3) NOT NULL,
  `CountryName` varchar(45) NOT NULL,
  PRIMARY KEY (`idCountry`),
  UNIQUE KEY `NombrePais_UNIQUE` (`CountryName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('ARG','Argentina'),('AUS','Austria'),('CAN','Canada'),('COL','Colombia'),('FRA','France'),('GER','Germany'),('GRE','Great Britain'),('IRE','Ireland'),('ITA','Italy'),('LAP','Laponia'),('MEX','Mexico'),('MON','Monaco'),('NOR','Norway'),('PUE','Puerto Rico'),('SOU','South Korea'),('SPA','Spain'),('SWE','Sweden'),('UNI','United States');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setlists`
--

DROP TABLE IF EXISTS `setlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setlists` (
  `Concert` int NOT NULL,
  `Song` int NOT NULL,
  `OrderInSetlist` int NOT NULL,
  PRIMARY KEY (`Concert`,`Song`),
  KEY `FK_SE_CO_idx` (`Concert`),
  KEY `FK_SE_CA_idx` (`Song`),
  CONSTRAINT `FK_SE_CA` FOREIGN KEY (`Song`) REFERENCES `songs` (`idSong`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_SE_CO` FOREIGN KEY (`Concert`) REFERENCES `concerts` (`idConcert`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setlists`
--

LOCK TABLES `setlists` WRITE;
/*!40000 ALTER TABLE `setlists` DISABLE KEYS */;
INSERT INTO `setlists` VALUES (1,46,2),(1,47,5),(1,48,6),(1,49,7),(1,50,8),(1,51,3),(1,52,4),(1,53,1),(1,54,9),(1,55,10),(2,386,1),(2,390,2),(2,391,3),(2,393,4),(2,395,5),(3,187,1),(3,188,2),(3,189,3),(3,190,4),(3,192,5),(3,194,6),(3,195,7),(4,56,1),(4,57,2),(4,58,3),(4,59,4),(4,60,5),(4,61,6),(4,62,7),(4,63,8),(4,64,9),(4,65,10),(5,436,1),(5,437,2),(5,438,3),(5,439,4),(5,440,5),(5,441,6),(5,442,7),(5,443,8),(5,444,9),(5,445,10),(6,166,1),(6,167,2),(6,168,3),(6,169,4),(6,173,5),(6,175,6),(7,246,1),(7,248,2),(7,249,3),(7,252,4),(7,253,5),(7,254,6),(8,96,1),(8,97,2),(8,99,3),(8,100,4),(8,101,5),(8,103,6),(8,105,7),(9,206,1),(9,207,2),(9,208,3),(9,209,4),(9,210,5),(9,211,6),(9,212,7),(9,213,8),(9,214,9),(9,215,10),(10,106,1),(10,108,2),(10,110,3),(10,113,4),(10,114,5),(10,115,6),(11,87,1),(11,90,2),(11,91,3),(11,94,4),(11,95,5),(12,346,1),(12,347,2),(12,348,3),(12,349,4),(12,350,5),(12,351,6),(12,352,7),(12,353,8),(12,354,9),(12,355,10),(13,216,1),(13,217,2),(13,218,3),(13,219,4),(13,220,5),(13,221,6),(13,222,7),(13,223,8),(13,224,9),(13,225,10),(14,416,1),(14,417,2),(14,418,3),(14,420,4),(14,421,5),(14,422,6),(14,423,7),(14,424,8),(15,156,1),(15,157,2),(15,158,3),(15,159,4),(15,160,5),(15,161,6),(15,162,7),(15,163,8),(16,226,1),(16,227,2),(16,229,3),(16,231,4),(16,232,5),(16,234,6),(17,26,1),(17,27,2),(17,28,3),(17,29,4),(17,30,5),(17,31,6),(17,32,7),(17,33,8),(17,34,9),(17,35,10),(18,126,1),(18,128,2),(18,130,3),(18,132,4),(18,133,5),(18,135,6),(19,66,1),(19,67,2),(19,68,3),(19,69,4),(19,70,5),(19,71,6),(19,72,7),(19,73,8),(19,74,9),(19,75,10),(20,1,1),(20,2,2),(20,3,3),(20,4,4),(20,5,5),(21,396,1),(21,397,2),(21,398,3),(21,401,4),(21,403,5),(21,404,6),(22,256,1),(22,257,2),(22,258,3),(22,259,4),(22,260,5),(22,261,6),(22,262,7),(22,263,8),(22,264,9),(22,265,10),(23,406,1),(23,408,2),(23,410,3),(23,412,4),(23,413,5),(23,414,6),(24,376,1),(24,377,2),(24,378,3),(24,379,4),(24,380,5),(24,381,6),(24,383,7),(25,116,1),(25,117,2),(25,118,3),(25,119,4),(25,120,5),(25,121,6),(25,122,7),(25,123,8),(25,124,9),(25,125,10),(26,176,1),(26,177,2),(26,178,3),(26,180,4),(26,183,5),(26,184,6),(27,286,1),(27,289,2),(27,291,3),(27,292,4),(27,293,5),(27,294,6),(27,295,7),(28,236,1),(28,239,2),(28,240,3),(28,241,4),(28,243,5),(28,245,6),(29,136,1),(29,138,2),(29,139,3),(29,140,4),(29,142,5),(29,144,6),(30,36,1),(30,37,2),(30,38,3),(30,39,4),(30,40,5),(30,41,6),(30,42,7),(30,43,8),(30,44,9),(30,45,10),(31,6,1),(31,7,2),(31,8,3),(31,10,4),(31,12,5),(31,13,6),(31,14,7),(32,276,1),(32,277,2),(32,278,3),(32,279,4),(32,280,5),(32,283,6),(32,284,7),(33,316,1),(33,317,2),(33,319,3),(33,320,4),(33,322,5),(33,324,6),(34,196,1),(34,198,2),(34,199,3),(34,201,4),(34,202,5),(34,203,6),(34,204,7),(35,76,1),(35,77,2),(35,78,3),(35,79,4),(35,80,5),(35,81,6),(35,82,7),(35,85,8),(36,326,1),(36,328,2),(36,329,3),(36,331,4),(36,332,5),(36,333,6),(36,334,7),(36,335,8),(37,266,1),(37,268,2),(37,269,3),(37,270,4),(37,272,5),(37,273,6),(37,275,7),(38,146,8),(38,147,9),(38,148,10),(38,149,3),(38,150,6),(38,151,1),(38,152,4),(38,153,5),(38,154,7),(38,155,2),(39,336,1),(39,337,2),(39,338,3),(39,340,4),(39,341,5),(39,342,6),(39,343,7),(39,344,8),(39,345,9),(40,426,1),(40,427,2),(40,429,3),(40,431,4),(40,432,5),(40,433,6),(40,434,7),(41,21,1),(41,22,2),(41,23,3),(41,24,4),(41,25,5),(42,311,1),(42,312,2),(42,313,3),(42,314,4),(42,315,5),(43,371,1),(43,372,2),(43,373,3),(43,374,4),(43,375,5),(44,126,1),(44,127,2),(44,128,3),(44,129,4),(44,130,5),(45,296,1),(45,297,2),(45,298,3),(45,299,4),(45,300,5),(46,56,1),(46,57,2),(46,58,3),(46,61,4),(46,62,5),(46,63,6),(46,64,7),(47,296,1),(47,298,2),(47,300,3),(47,302,4),(47,304,5),(48,26,1),(48,28,2),(48,31,3),(48,33,4),(48,35,5),(49,356,1),(49,358,2),(49,361,3),(49,363,4),(49,365,5),(50,156,1),(50,158,2),(50,160,3),(50,162,4),(50,165,5),(51,146,1),(51,149,2),(51,151,3),(51,152,4),(51,153,5),(51,154,6),(51,155,7),(52,427,1),(52,429,2),(52,431,3),(52,432,4),(52,434,5),(53,206,1),(53,208,2),(53,210,3),(53,212,4),(53,214,5),(53,215,6),(54,46,1),(54,51,2),(54,52,3),(54,53,4),(54,54,5),(54,55,6),(55,6,1),(55,7,2),(55,8,3),(55,10,4),(55,12,5),(55,14,6),(56,96,1),(56,98,2),(56,100,3),(56,101,4),(56,103,5),(56,105,6),(57,376,1),(57,378,2),(57,380,3),(57,381,4),(57,383,5),(57,384,6),(58,376,1),(58,378,2),(58,379,3),(58,380,4),(58,385,5),(59,358,1),(59,360,2),(59,361,3),(59,362,4),(59,363,5),(59,364,6),(59,365,7),(60,146,1),(60,149,2),(60,151,3),(60,152,4),(60,154,5),(60,155,6),(61,406,1),(61,409,2),(61,410,3),(61,413,4),(61,415,5),(62,196,1),(62,198,2),(62,201,3),(62,202,4),(62,203,5),(62,204,6),(62,205,7),(63,436,1),(63,438,2),(63,441,3),(63,442,4),(63,443,5),(63,444,6),(63,445,7),(64,386,1),(64,387,2),(64,391,3),(64,393,4),(64,395,5),(66,296,1),(66,297,2),(66,300,3),(66,302,4),(66,304,5),(67,396,1),(67,398,2),(67,401,3),(67,403,4),(67,405,5),(68,396,1),(68,398,2),(68,401,3),(68,403,4),(68,404,5),(68,405,6),(69,166,1),(69,167,2),(69,168,3),(69,173,4),(70,1,2),(70,2,3),(70,3,1),(71,266,1),(71,268,2),(71,270,3),(71,273,4);
/*!40000 ALTER TABLE `setlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `idSong` int NOT NULL AUTO_INCREMENT,
  `SongName` varchar(45) NOT NULL,
  `SongLength` int NOT NULL,
  `Album` int NOT NULL,
  `SongOrder` int NOT NULL,
  PRIMARY KEY (`idSong`),
  UNIQUE KEY `NombreCancion_UNIQUE` (`SongName`),
  KEY `FK_CA_AL_idx` (`Album`),
  CONSTRAINT `FK_CA_AL` FOREIGN KEY (`Album`) REFERENCES `albums` (`idAlbum`)
) ENGINE=InnoDB AUTO_INCREMENT=446 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Shakira: BZRP Sessions, Vol. 53',214,1,1),(2,'Quevedo: BZRP Sessions, Vol. 52',198,2,1),(3,'Villano Antillano: BZRP Sessions, Vol. 51',187,3,1),(4,'Duki: BZRP Sessions, Vol. 50',221,4,1),(5,'Residente: BZRP Sessions, Vol. 49',519,5,1),(6,'Recuerdos',170,6,7),(7,'Me Gusta',188,6,8),(8,'Plegarias',198,6,9),(9,'Wapo Traketero',181,6,10),(10,'Años Luz',193,6,11),(11,'Sabe',177,7,3),(12,'Verte',157,7,6),(13,'Colocao',179,7,8),(14,'Toa La Vida',218,7,9),(15,'Mala Vida',160,7,14),(16,'It\'s a Vibe',220,8,2),(17,'Hitboy',178,8,3),(18,'Me Gusta Lo Simple',196,8,5),(19,'A Punta de Espada',202,8,7),(20,'Goteo',164,8,10),(21,'Pintao',167,9,2),(22,'Chico Estrella',170,9,3),(23,'Malbec',175,9,10),(24,'Cascada',192,9,14),(25,'Muriéndome',159,9,16),(26,'Feeling Good',237,10,1),(27,'You Don\'t Know Me',253,10,3),(28,'Quando, Quando, Quando…',284,10,4),(29,'Home',225,10,5),(30,'Try a Little Tenderness',245,10,9),(31,'It\'s a Beautiful Day',199,11,2),(32,'To Love Somebody',195,11,3),(33,'Something Stupid',177,11,5),(34,'Close Your Eyes',213,11,7),(35,'You\'ve Got a Friend in Me',205,11,11),(36,'Heartless',198,12,7),(37,'Blinding Lights',200,12,9),(38,'In Your Eyes',237,12,10),(39,'Save Your Tears',215,12,11),(40,'After Hours',361,12,13),(41,'Starboy',230,13,1),(42,'Secrets',265,13,6),(43,'Sidewalks',231,13,9),(44,'Die For You',260,13,17),(45,'I Feel It Coming',269,13,18),(46,'Baby',214,14,1),(47,'Somebody To Love',220,14,2),(48,'U Smile',196,14,4),(49,'Eenie Meenie',202,14,8),(50,'That Should Be Me',232,14,10),(51,'What Do You Mean?',205,15,3),(52,'Sorry',200,15,4),(53,'Love Yourself',233,15,5),(54,'Where Are Ü Now',242,15,11),(55,'Purpose',210,15,13),(56,'Estoy Aquí',232,16,1),(57,'Antología',254,16,2),(58,'Un Poco de Amor',241,16,3),(59,'Pies Descalzos, Sueños Blancos',205,16,8),(60,'Dónde Estás Corazón',231,16,10),(61,'La Pared',199,17,2),(62,'La Tortura (feat. Alejandro Sanz)',212,17,3),(63,'No (feat. Gustavo Cerati)',285,17,7),(64,'Las de la Intuición',220,17,8),(65,'Día de Enero',173,17,9),(66,'Mi Gente',185,18,2),(67,'Ambiente',248,18,3),(68,'No es Justo',250,18,5),(69,'Brillo',159,18,7),(70,'Peligrosa',202,18,10),(71,'Amarillo',157,19,1),(72,'Azul',205,19,2),(73,'Rojo',150,19,3),(74,'Morado',200,19,5),(75,'Blanco',145,19,10),(76,'Corazón',184,20,2),(77,'El Préstamo',219,20,3),(78,'Hangover',241,20,5),(79,'Marinero',189,20,8),(80,'Felices Los 4',230,20,14),(81,'11 PM',175,21,1),(82,'HP',184,21,2),(83,'No Se Me Quita',219,21,3),(84,'Dispuesto',162,21,4),(85,'Instinto Natural',194,21,12),(86,'Les passants',213,22,1),(87,'Je veux',215,22,2),(88,'Le long de la route',206,22,3),(89,'La fée',245,22,4),(90,'Éblouie par la nuit',163,22,11),(91,'Paris sera toujours Paris',178,23,1),(92,'La parisienne',181,23,3),(93,'Dans mon Paris',197,23,4),(94,'Champs-Elysées',175,23,5),(95,'J\'ai deux amours',197,23,13),(96,'Titanium (feat. Sia)',245,24,1),(97,'Turn Me On (feat. Nicki Minaj)',199,24,2),(98,'Without You (feat. Usher)',208,24,4),(99,'Play Hard (feat. Ne-Yo)',201,24,6),(100,'Where Them Girls At (feat. Nicki Minaj)',194,24,10),(101,'Dangerous (feat. Sam Martin)',203,25,1),(102,'What I Did for Love (feat. Emeli Sandé)',263,25,2),(103,'Hey Mama',192,25,10),(104,'Bad (feat. Vassy)',170,25,15),(105,'Shot Me Down',191,25,17),(106,'La Vie en rose',187,26,1),(107,'Hymne à l\'amour',209,26,3),(108,'Padam padam',197,26,6),(109,'Sous le ciel de Paris',213,26,13),(110,'Non, je regrette rien',142,26,19),(111,'Les Amants de Paris',192,27,3),(112,'Paris',162,27,5),(113,'La Valse de l\'amour',140,27,8),(114,'La Rue aux chansons',174,27,9),(115,'Notre Dame de Paris',187,27,10),(116,'A Victory of Love',257,28,1),(117,'Summer in Berlin',284,28,2),(118,'Big in Japan',286,28,3),(119,'Forever Young',226,28,6),(120,'Sounds Like a Melody',285,28,8),(121,'Fantastic Dream',237,29,2),(122,'Dance With Me',240,29,4),(123,'Afternoons in Utopia',186,29,5),(124,'The Voyager',279,29,8),(125,'Universal Daddy',244,29,10),(126,'Sehnsucht',244,30,1),(127,'Engel',264,30,2),(128,'Tier',226,30,3),(129,'Du hast',234,30,5),(130,'Bück dich',201,30,6),(131,'Mein Herz brennt',279,31,1),(132,'Sonne',272,31,3),(133,'Ich will',217,31,4),(134,'Feuer frei!',188,31,5),(135,'Mutter',268,31,6),(136,'Prayer in C',189,32,1),(137,'Willst du',190,32,2),(138,'Sun Goes Down',179,32,3),(139,'Rather Be',192,32,5),(140,'Waves',207,32,11),(141,'Headlights',209,33,1),(142,'Sugar',219,33,2),(143,'Heatwave',187,33,3),(144,'Yellow',216,33,4),(145,'Show Me Love',255,33,5),(146,'Come Together',259,34,1),(147,'Something',182,34,2),(148,'Oh! Darling',207,34,4),(149,'Here Comes The Sun',185,34,7),(150,'Because',165,34,8),(151,'Yesterday',125,35,11),(152,'Elleanor Rigby',125,35,16),(153,'All You Need Is Love',227,35,18),(154,'Hey Jude',425,35,21),(155,'Let It Be',230,35,26),(156,'Never Gonna Give You Up',213,36,1),(157,'Whenever You Need Somebody',233,36,2),(158,'Together Forever',205,36,3),(159,'Don\'t Say Goodbye',249,36,6),(160,'When I Fall in Love',183,36,10),(161,'She Wants to Dance with Me',196,37,1),(162,'Take Me to Your Heart',209,37,2),(163,'I Don\'t Want To Lose Her',213,37,3),(164,'Ain\'t Too Proud to Beg',258,37,5),(165,'Hold Me In Your Arms',273,37,10),(166,'In My Place',226,38,2),(167,'The Scientist',309,38,4),(168,'Clocks',307,38,5),(169,'Green Eyes',223,38,7),(170,'Warning Sign',331,38,8),(171,'Lost!',236,39,3),(172,'Lovers in Japan',411,39,5),(173,'Viva La Vida',242,39,7),(174,'Violet Hill',222,39,8),(175,'Strawberry Swing',249,39,9),(176,'Where The Streets Have No Name',336,40,1),(177,'I Still Haven\'t Found What I\'m Looking For',277,40,2),(178,'With Or Without You',295,40,3),(179,'Bullet The Blue Sky',271,40,4),(180,'Running To Stand Still',257,40,5),(181,'Even Better Than The Real Thing',221,41,2),(182,'One',276,41,3),(183,'Until The End Of The World',278,41,4),(184,'The Fly',269,41,7),(185,'Mysterious Ways',243,41,8),(186,'I Still Do',196,42,1),(187,'Dreams',271,42,2),(188,'Sunday',211,42,3),(189,'Pretty',136,42,4),(190,'Linger',274,42,7),(191,'Ode to My Family',271,43,1),(192,'I Can\'t Be With You',187,43,2),(193,'Twenty One',187,43,3),(194,'Zombie',306,43,4),(195,'Dreaming My Dreams',217,43,10),(196,'For the First Time',252,44,2),(197,'Nothing',271,44,3),(198,'Science & Faith',259,44,4),(199,'If You Ever Come Back',241,44,5),(200,'Dead Man Walking',234,44,7),(201,'No Good in Goodbye',307,45,1),(202,'Superheroes',245,45,2),(203,'Man on a Wire',245,45,3),(204,'Flares',229,45,6),(205,'Paint the Town Green',211,45,9),(206,'Con te partirò',251,46,1),(207,'Caruso',317,46,5),(208,'Vivo per lei',264,46,8),(209,'Romanza',223,46,9),(210,'Time To Say Goodbye',245,46,15),(211,'Canto Della Terra',241,47,1),(212,'The Prayer',266,47,2),(213,'Sogno',243,47,3),(214,'O mare e tu',273,47,4),(215,'Nel cuore lei',223,47,9),(216,'Gente',274,48,2),(217,'Lui non sta con te',227,48,3),(218,'Strani amori',255,48,4),(219,'Non c\'e',278,48,8),(220,'La solitudine',240,48,11),(221,'Mi respuesta',223,49,1),(222,'Quédate esta noche',267,49,2),(223,'Emergencia de amor',273,49,3),(224,'En ausencia de ti',268,49,8),(225,'Looking for an Angel',253,49,13),(226,'A far l\'amore comincia tu',161,50,1),(227,'Tanti auguri',226,50,3),(228,'Rumore',188,50,4),(229,'Pedro',199,50,6),(230,'Festa',197,50,8),(231,'Caliente, caliente',155,51,1),(232,'Qué dolor',206,51,4),(233,'Cuando calienta el sol',286,51,5),(234,'Mamá dame cien pesetas',174,51,9),(235,'Adiós amigo',169,51,17),(236,'De Pies A Cabeza',276,52,1),(237,'Oye Mi Amor',263,52,2),(238,'Vivir Sin Aire',291,52,4),(239,'Cómo Te Deseo',269,52,8),(240,'Te Lloré Un Río',292,52,9),(241,'Sábanas Frías',319,53,4),(242,'Mariposa Traicionera',264,53,7),(243,'Sin Tu Cariño',298,53,8),(244,'Eres Mi Religión',327,53,9),(245,'Ángel De Amor',295,53,11),(246,'Lento',239,54,1),(247,'Andar Conmigo',193,54,2),(248,'Algo Está Cambiando',240,54,3),(249,'Mala Memoria',182,54,6),(250,'Oleada',193,54,10),(251,'Canciones de Amor',172,55,1),(252,'Me Voy',187,55,2),(253,'Limón y Sal',205,55,4),(254,'Eres para Mí',192,55,11),(255,'Sin Documentos',228,55,14),(256,'Lo Haré Por Ti',281,56,1),(257,'El Último Adiós',285,56,2),(258,'Tal Vez Quizás',274,56,3),(259,'Y Yo Sigo Aquí',254,56,4),(260,'Yo No Soy Esa Mujer',224,56,10),(261,'Ni Una Sola Palabra',224,57,1),(262,'Nada Puede Cambiarme',218,57,2),(263,'Ayúdame',236,57,3),(264,'Que Me Voy A Quedar',200,57,5),(265,'Aunque No Sea Conmigo',219,57,6),(266,'Take On Me',225,58,1),(267,'Train of Thought',254,58,2),(268,'Hunting High and Low',228,58,3),(269,'The Blue Sky',156,58,4),(270,'The Sun Always Shines on T.V.',302,58,6),(271,'Scoundrel Days',242,59,1),(272,'The Swing of Things',254,59,2),(273,'I\'ve Been Losing You',266,59,3),(274,'Cry Wolf',246,59,6),(275,'Maybe, Maybe',156,59,9),(276,'Lost Control',222,60,2),(277,'Sing Me to Sleep',187,60,9),(278,'All Falls Down',198,60,10),(279,'Alone',160,60,12),(280,'Faded',212,60,15),(281,'Time',146,61,1),(282,'Alone, Pt. II',179,61,3),(283,'Fake A Smile',165,61,8),(284,'On My Way',193,61,9),(285,'Heading Home',187,61,12),(286,'Stole the Snow',223,62,2),(287,'Raging',224,62,4),(288,'Firestone',271,62,5),(289,'Stay',239,62,11),(290,'Nothing Left',236,62,12),(291,'Never Let You Go',232,63,1),(292,'Sunrise',214,63,2),(293,'Riding Shotgun',198,63,3),(294,'Stranger Things',221,63,4),(295,'Remind Me to Forget',217,63,9),(296,'NI BIEN NI MAL',236,64,1),(297,'Caro',229,64,4),(298,'Otra Noche en Miami',233,64,6),(299,'Solo de Mi',197,64,9),(300,'MIA',210,64,15),(301,'Si Veo a Tu Mamá',170,65,1),(302,'La Difícil',163,65,2),(303,'La Santa',206,65,4),(304,'Yo Perreo Sola',172,65,5),(305,'Vete',192,65,10),(306,'Imagíname Sin Ti',247,66,3),(307,'Quisiera Poder Olvidarme De Ti',262,66,6),(308,'¿Quién Te Dijo Eso?',271,66,9),(309,'Nada Es Para Siempre',240,66,11),(310,'No Me Doy Por Vencido',237,66,14),(311,'Sola',205,67,1),(312,'Imposible',164,67,4),(313,'Échame La Culpa',173,67,7),(314,'Despacito',229,67,9),(315,'Calypso',200,67,11),(316,'No Me Dejes Solo',170,68,4),(317,'Gasolina',192,68,5),(318,'Lo Que Pasó, Pasó',210,68,8),(319,'Tu Príncipe',205,68,9),(320,'Salud y Vida',206,68,15),(321,'El Amante',220,69,4),(322,'Pasarela',193,69,5),(323,'Llegamos A La Disco',453,69,8),(324,'Limbo',224,69,10),(325,'Lovumba',218,69,16),(326,'Persona',171,70,1),(327,'Boy With Luv',229,70,2),(328,'Mikrokosmos',224,70,3),(329,'Make It Right',226,70,4),(330,'Jamais Vu',227,70,6),(331,'Life Goes On',207,71,1),(332,'Blue & Grey',254,71,3),(333,'Telepathy',202,71,5),(334,'Dis-ease',239,71,6),(335,'Dynamite',199,71,8),(336,'Can\'t Nobody',208,72,1),(337,'Go Away',219,72,2),(338,'It Hurts',256,72,5),(339,'You and I',234,72,7),(340,'Kiss',213,72,9),(341,'CRUSH',194,73,1),(342,'COME BACK HOME',229,73,2),(343,'GOTTA BE YOU',231,73,3),(344,'IF I WERE YOU',210,73,4),(345,'CL SOLO',195,73,6),(346,'Pink Venom',186,74,1),(347,'Shut Down',175,74,2),(348,'Typa Girl',179,74,3),(349,'Yeah Yeah Yeah',178,74,4),(350,'Hard to Love',162,74,5),(351,'How You Like That',182,75,1),(352,'Ice Cream',177,75,2),(353,'Pretty Savage',201,75,3),(354,'Lovesick Girls',194,75,5),(355,'Love To Hate Me',171,75,7),(356,'Aprendiz',287,76,1),(357,'Si Tú Me Dejas',362,76,3),(358,'Donde Quiera Que Estés',309,76,4),(359,'Antes Que Amantes Amigos',257,76,5),(360,'Como una Flor',302,76,8),(361,'Ahora Tu',224,77,2),(362,'Quien',207,77,3),(363,'Blanco y Negro',233,77,4),(364,'Ni un Segundo',216,77,5),(365,'Guerra Fría',240,77,9),(366,'De Niña a Mujer',198,78,1),(367,'Volver a Empezar',282,78,2),(368,'Que Nadie Sepa Mi Sufrir',202,78,4),(369,'Grande, Grande, Grande',227,78,9),(370,'Como Tú',210,78,10),(371,'Soy un Truhán, Soy un Señor',183,79,2),(372,'Me Olvidé De Vivir',292,79,3),(373,'La Vida Sigue Igual',135,79,22),(374,'Manuela',217,79,26),(375,'Me Va, Me Va',358,79,38),(376,'Ave María',209,80,1),(377,'Dígale',262,80,2),(378,'Lloraré Las Penas',238,80,5),(379,'Quiero Perderme En Tu Cuerpo',236,80,6),(380,'Corazón Latino',175,80,11),(381,'Buleria',251,81,1),(382,'Oye El Boom',266,81,3),(383,'Esta Ausencia',275,81,4),(384,'Como Olvidar',272,81,5),(385,'Desnúdate Mujer',279,81,10),(386,'Super Trouper',252,82,1),(387,'The Winner Takes It All',294,82,2),(388,'Happy New Year',263,82,6),(389,'Our Last Summer',259,82,7),(390,'Lay All Your Love On Me',274,82,9),(391,'Dancing Queen',231,83,1),(392,'Mamma Mia',210,83,4),(393,'Gimme! Gimme! Gimme!',289,83,14),(394,'Thank You For The Music',228,83,18),(395,'Waterloo',165,83,19),(396,'Wake Me Up',247,84,1),(397,'You Make Me',233,84,2),(398,'Hey Brother',255,84,3),(399,'Addicted To You',148,84,4),(400,'Dear Boy',479,84,5),(401,'Waiting For Love',230,85,1),(402,'For A Better Day',206,85,5),(403,'Broken Arrows',266,85,6),(404,'Pure Grinding',171,85,9),(405,'Gonna Love Ya',215,85,14),(406,'Lush Life',201,86,2),(407,'I Would Like',226,86,3),(408,'So Good',166,86,4),(409,'Never Forget You',213,86,7),(410,'Symphony',214,86,15),(411,'Love Me Land',160,87,1),(412,'WOW',179,87,5),(413,'Poster Girl',177,87,6),(414,'Look What You\'ve Done',181,87,8),(415,'Ruin My Life',190,87,9),(416,'Blank Space',231,88,2),(417,'Style',231,88,3),(418,'Shake It Off',219,88,6),(419,'Bad Blood',211,88,8),(420,'Wildest Dreams',220,88,9),(421,'Red',223,89,2),(422,'I Knew You Were Trouble',219,89,4),(423,'22',232,89,6),(424,'We Are Never Ever Getting Back Together',193,89,8),(425,'Everything Has Changed',245,89,14),(426,'Wanna Be Startin\' Somethin\'',363,90,1),(427,'Thriller',357,90,4),(428,'Beat It',258,90,5),(429,'Billie Jean',294,90,6),(430,'P.Y.T. (Pretty Young Thing)',239,90,8),(431,'Bad',247,91,1),(432,'The Way You Make Me Feel',298,91,2),(433,'Man in the Mirror',318,91,7),(434,'I Just Can\'t Stop Loving You',251,91,8),(435,'Smooth Criminal',257,91,10),(436,'Fly Me To The Moon',149,92,1),(437,'I Wish You Love',175,92,2),(438,'I Believe In You',140,92,3),(439,'More',183,92,4),(440,'The Best Is Yet To Come',174,92,8),(441,'Strangers In The Night',157,93,1),(442,'Summer Wind',178,93,2),(443,'All or Nothing at All',239,93,3),(444,'Downtown',130,93,8),(445,'Yes Sir, That\'s My Baby',128,93,9);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venues`
--

DROP TABLE IF EXISTS `venues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venues` (
  `idVenue` int NOT NULL AUTO_INCREMENT,
  `VenueName` varchar(45) NOT NULL,
  `VenueCountry` char(3) NOT NULL,
  `VenueType` enum('hall','pavilion','stadium','festival') NOT NULL,
  PRIMARY KEY (`idVenue`),
  UNIQUE KEY `NombreSitio_UNIQUE` (`VenueName`),
  KEY `FK_SI_PA_idx` (`VenueCountry`),
  CONSTRAINT `FK_SI_PA` FOREIGN KEY (`VenueCountry`) REFERENCES `country` (`idCountry`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venues`
--

LOCK TABLES `venues` WRITE;
/*!40000 ALTER TABLE `venues` DISABLE KEYS */;
INSERT INTO `venues` VALUES (1,'Teatro Colón','ARG','hall'),(2,'DirecTV Arena','ARG','pavilion'),(3,'Estadio Monumental','ARG','stadium'),(4,'Tecnópolis','ARG','festival'),(5,'Movistar Arena','ARG','pavilion'),(6,'Luna Park','ARG','stadium'),(7,'Massey Hall','CAN','hall'),(8,'Budweiser Stage','CAN','pavilion'),(9,'Rogers Centre','CAN','stadium'),(10,'Festival d\'été de Québec','CAN','festival'),(11,'Scotiabank Arena','CAN','pavilion'),(12,'Four Seasons Centre','CAN','hall'),(13,'Royal Center','COL','hall'),(14,'Centro de Eventos Autopista Norte','COL','pavilion'),(15,'Estadio Atanasio Girardot','COL','stadium'),(16,'Festival Internacional Altavoz','COL','festival'),(17,'Pabellón Américas Corferias','COL','pavilion'),(18,'Centro de eventos La Macarena','COL','pavilion'),(19,'L\'Olympia','FRA','hall'),(20,'Zénith de Paris','FRA','pavilion'),(21,'Stade de France','FRA','stadium'),(22,'Festival de Nîmes','FRA','festival'),(23,'Philharmonie de Paris','FRA','hall'),(24,'Les Vieilles Charrues','FRA','festival'),(25,'Mercedes-Benz Arena','GER','hall'),(26,'Tempodrom','GER','pavilion'),(27,'Olympiastadion','GER','stadium'),(28,'Rock am Ring','GER','festival'),(29,'Allianz Arena','GER','stadium'),(30,'Berliner Philharmonie','GER','hall'),(31,'Royal Albert Hall','GRE','hall'),(32,'The O2 Arena','GRE','pavilion'),(33,'Wembley Stadium','GRE','stadium'),(34,'Glastonbury Festival','GRE','festival'),(35,'Electric Brixton','GRE','hall'),(36,'Royal Opera House','GRE','hall'),(37,'National Concert Hall','IRE','hall'),(38,'3Arena','IRE','pavilion'),(39,'Aviva Stadium','IRE','stadium'),(40,'Electric Picnic','IRE','festival'),(41,'All Together Now','IRE','festival'),(42,'Olympia Theatre','IRE','hall'),(43,'Teatro dal Verme','ITA','hall'),(44,'Mediolanum Forum','ITA','pavilion'),(45,'Stadio Giuseppe Meazza','ITA','stadium'),(46,'Festival di Sanremo','ITA','festival'),(47,'Stadio Olimpico','ITA','stadium'),(48,'Lucca Summer Festival','ITA','festival'),(49,'Auditorio Nacional','MEX','hall'),(50,'Palacio de los Deportes','MEX','pavilion'),(51,'Estadio Azteca','MEX','stadium'),(52,'Festival Vive Latino','MEX','festival'),(53,'Palacio de Bellas Artes','MEX','hall'),(54,'Estadio BBVA','MEX','stadium'),(55,'Oslo Konserthus','NOR','hall'),(56,'Oslo Spektrum','NOR','pavilion'),(57,'Ullevaal Stadion','NOR','stadium'),(58,'Øyafestivalen','NOR','festival'),(59,'Oslo Concert Hall','NOR','hall'),(60,'Bergenfest','NOR','festival'),(61,'Centro de Bellas Artes','PUE','hall'),(62,'Coliseo de Puerto Rico','PUE','pavilion'),(63,'Estadio Hiram Bithorn','PUE','stadium'),(64,'Urban Fiesta Weekend','PUE','festival'),(65,'Coca-Cola Music Hall','PUE','hall'),(66,'Teatro Tapia','PUE','hall'),(67,'Sejong Center','SOU','hall'),(68,'Olympic Gymnastics Arena','SOU','pavilion'),(69,'Seoul World Cup Stadium','SOU','stadium'),(70,'Ultra Korea','SOU','festival'),(71,'Seoul Arts Center','SOU','hall'),(72,'Jamsil Sports Complex','SOU','festival'),(73,'Cívitas Metropolitano','SPA','stadium'),(74,'Teatro Quijano','SPA','hall'),(75,'Santiago Bernabéu','SPA','stadium'),(76,'Primavera Sound','SPA','festival'),(77,'Camp Nou','SPA','stadium'),(78,'WiZink Center','SPA','pavilion'),(79,'Göteborg Concert Hall','SWE','hall'),(80,'Avicii Arena','SWE','pavilion'),(81,'Friends Arena','SWE','stadium'),(82,'Way Out West','SWE','festival'),(83,'Tele2 Arena','SWE','stadium'),(84,'Annexet','SWE','pavilion'),(85,'Carnegie Hall','UNI','hall'),(86,'Red Rocks Amphitheatre','UNI','pavilion'),(87,'Madison Square Garden','UNI','stadium'),(88,'Coachella Festival','UNI','festival'),(89,'The Kennedy Center','UNI','hall'),(90,'AT&T Stadium','UNI','stadium');
/*!40000 ALTER TABLE `venues` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23  1:29:36

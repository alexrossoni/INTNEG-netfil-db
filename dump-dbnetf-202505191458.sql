-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: dbnetf
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `idArtista` int NOT NULL,
  `nmArtista` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idArtista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'Taylor Bowers'),(2,'Amy Miller'),(3,'Thomas Olson'),(4,'Julie Byrd'),(5,'Maria Smith MD'),(6,'Dawn Hill'),(7,'David Potter'),(8,'Justin Miller'),(9,'Danny Cunningham'),(10,'Stephanie Nguyen'),(11,'Steven Evans'),(12,'Mrs. Cynthia Lewis MD'),(13,'Daniel Lopez'),(14,'Jacob Rose'),(15,'Steven Clark'),(16,'Stephen Woods'),(17,'Carlos Krueger'),(18,'Tanya Williams'),(19,'Laurie Davis'),(20,'Julie Vasquez'),(21,'Robert Rios'),(22,'Rickey Martin'),(23,'Julie Gross'),(24,'Cory May'),(25,'Chelsea Jenkins'),(26,'Jonathan Ware'),(27,'Melissa Taylor'),(28,'Kelly Norris'),(29,'Timothy Peck'),(30,'Sarah Lowery');
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artistaconteudo`
--

DROP TABLE IF EXISTS `artistaconteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artistaconteudo` (
  `Artista_idArtista` int NOT NULL,
  `Conteudo_idConteudo` bigint unsigned NOT NULL,
  `Funcao_id_Funcao` int NOT NULL,
  PRIMARY KEY (`Artista_idArtista`,`Conteudo_idConteudo`),
  KEY `fk_Artista_has_Conteudo_Conteudo1_idx` (`Conteudo_idConteudo`),
  KEY `fk_Artista_has_Conteudo_Artista1_idx` (`Artista_idArtista`),
  KEY `fk_ArtistaConteudo_Papel1_idx` (`Funcao_id_Funcao`),
  CONSTRAINT `fk_Artista_has_Conteudo_Artista1` FOREIGN KEY (`Artista_idArtista`) REFERENCES `artista` (`idArtista`),
  CONSTRAINT `fk_Artista_has_Conteudo_Conteudo1` FOREIGN KEY (`Conteudo_idConteudo`) REFERENCES `conteudo` (`idConteudo`),
  CONSTRAINT `fk_ArtistaConteudo_Papel1` FOREIGN KEY (`Funcao_id_Funcao`) REFERENCES `função` (`idFuncao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistaconteudo`
--

LOCK TABLES `artistaconteudo` WRITE;
/*!40000 ALTER TABLE `artistaconteudo` DISABLE KEYS */;
INSERT INTO `artistaconteudo` VALUES (3,17,1),(3,67,1),(5,64,1),(5,71,1),(6,92,1),(7,48,1),(11,2,1),(11,80,1),(11,82,1),(11,98,1),(12,14,1),(15,94,1),(17,81,1),(17,85,1),(18,6,1),(19,9,1),(20,3,1),(25,33,1),(27,37,1),(27,42,1),(29,82,1),(30,51,1),(30,79,1),(30,94,1),(1,2,2),(1,61,2),(5,35,2),(5,92,2),(6,22,2),(8,39,2),(8,60,2),(8,88,2),(10,49,2),(10,80,2),(12,21,2),(12,32,2),(13,66,2),(14,32,2),(15,39,2),(16,97,2),(18,48,2),(19,56,2),(20,6,2),(20,65,2),(22,63,2),(24,8,2),(26,7,2),(26,40,2),(28,37,2),(29,43,2),(29,54,2),(30,17,2),(30,50,2),(30,64,2),(30,96,2),(30,100,2),(2,86,3),(2,95,3),(6,31,3),(6,85,3),(7,23,3),(8,49,3),(8,89,3),(9,92,3),(14,12,3),(14,42,3),(16,35,3),(16,91,3),(20,72,3),(20,98,3),(23,34,3),(28,27,3),(29,17,3),(2,4,4),(4,36,4),(5,45,4),(10,85,4),(12,7,4),(17,27,4),(18,77,4),(20,45,4),(21,38,4),(23,13,4),(24,13,4),(24,40,4),(25,82,4),(26,10,4),(29,63,4),(1,29,5),(7,5,5),(8,28,5),(11,45,5),(11,54,5),(11,68,5),(12,35,5),(15,56,5),(18,97,5),(22,15,5),(24,47,5),(25,79,5);
/*!40000 ALTER TABLE `artistaconteudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assinatura`
--

DROP TABLE IF EXISTS `assinatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assinatura` (
  `idAssinatura` bigint unsigned NOT NULL AUTO_INCREMENT,
  `dtInicio` date DEFAULT NULL,
  `dtFim` date DEFAULT NULL,
  `Usuario_idUsuario` bigint unsigned NOT NULL,
  `Plano_idPlano` int NOT NULL,
  `SituacaoAssinatura_idSituacao` smallint NOT NULL,
  PRIMARY KEY (`idAssinatura`),
  UNIQUE KEY `idAssinatura` (`idAssinatura`),
  KEY `fk_Assinatura_Usuario1_idx` (`Usuario_idUsuario`),
  KEY `fk_Assinatura_Plano1_idx` (`Plano_idPlano`),
  KEY `fk_Assinatura_SituacaoAssinatura1_idx` (`SituacaoAssinatura_idSituacao`),
  CONSTRAINT `fk_Assinatura_Plano1` FOREIGN KEY (`Plano_idPlano`) REFERENCES `plano` (`idPlano`),
  CONSTRAINT `fk_Assinatura_SituacaoAssinatura1` FOREIGN KEY (`SituacaoAssinatura_idSituacao`) REFERENCES `situacaoassinatura` (`idSituacao`),
  CONSTRAINT `fk_Assinatura_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assinatura`
--

LOCK TABLES `assinatura` WRITE;
/*!40000 ALTER TABLE `assinatura` DISABLE KEYS */;
INSERT INTO `assinatura` VALUES (1,'2024-11-09','2025-08-19',1,3,3),(2,'2024-10-13','2025-05-23',2,3,1),(3,'2024-08-12','2025-06-09',3,3,2),(4,'2025-03-16','2025-07-31',4,1,2),(5,'2025-03-08','2025-04-16',5,2,3),(6,'2024-06-02','2025-02-09',6,2,1),(7,'2024-10-01','2025-09-03',7,3,2),(8,'2025-03-23','2026-03-02',8,3,2),(9,'2024-08-30','2025-06-23',9,2,2),(10,'2024-11-15','2025-10-31',10,2,2),(11,'2024-06-09','2025-01-11',11,2,3),(12,'2024-12-16','2025-04-27',12,1,3),(13,'2024-10-30','2025-01-22',13,2,1),(14,'2025-04-10','2025-07-01',14,3,1),(15,'2024-08-24','2025-04-13',15,2,2),(16,'2024-09-16','2024-12-29',16,3,2),(17,'2024-10-26','2025-04-21',17,2,1),(18,'2024-12-14','2025-07-15',18,2,1),(19,'2024-08-19','2024-10-10',19,2,1),(20,'2025-03-26','2025-08-09',20,3,1),(21,'2025-04-07','2025-10-26',21,1,2),(22,'2025-01-14','2025-11-01',22,3,3),(23,'2025-05-06','2025-08-22',23,1,3),(24,'2024-07-07','2025-05-25',24,1,3),(25,'2025-02-02','2025-06-08',25,3,1),(26,'2024-05-20','2024-10-24',26,1,3),(27,'2024-11-21','2025-06-07',27,3,3),(28,'2025-05-14','2025-09-02',28,1,1),(29,'2025-03-03','2025-08-25',29,1,2),(30,'2025-01-18','2025-11-06',30,2,3),(31,'2024-05-22','2024-08-27',31,3,1),(32,'2024-06-29','2025-03-01',32,3,2),(33,'2025-04-22','2026-04-04',33,3,1),(34,'2024-09-07','2025-08-09',34,1,1),(35,'2025-03-05','2025-10-11',35,3,1),(36,'2024-08-23','2024-11-03',36,2,3),(37,'2025-05-07','2026-04-23',37,2,3),(38,'2024-07-03','2025-03-31',38,1,1),(39,'2025-01-19','2025-11-11',39,1,1),(40,'2025-01-08','2025-05-25',40,1,2),(41,'2025-04-16','2026-02-13',41,3,1),(42,'2024-07-27','2025-01-29',42,2,2),(43,'2024-09-26','2025-06-05',43,2,2),(44,'2024-12-08','2025-07-20',44,2,3),(45,'2025-01-29','2025-12-12',45,2,1),(46,'2024-09-04','2025-03-12',46,1,2),(47,'2024-05-28','2024-11-15',47,2,2),(48,'2025-04-02','2025-11-11',48,3,3),(49,'2024-06-23','2024-10-18',49,1,3),(50,'2024-12-07','2025-09-12',50,2,3);
/*!40000 ALTER TABLE `assinatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacao` (
  `id_avaliacao` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint DEFAULT NULL,
  `id_conteudo` bigint DEFAULT NULL,
  `nota` int DEFAULT NULL,
  `data_avaliacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Usuario_idUsuario` bigint unsigned NOT NULL,
  `Conteudo_idConteudo` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_avaliacao`),
  UNIQUE KEY `id_avaliacao` (`id_avaliacao`),
  KEY `fk_Avaliacao_Usuario1_idx` (`Usuario_idUsuario`),
  KEY `fk_Avaliacao_Conteudo1_idx` (`Conteudo_idConteudo`),
  CONSTRAINT `fk_Avaliacao_Conteudo1` FOREIGN KEY (`Conteudo_idConteudo`) REFERENCES `conteudo` (`idConteudo`),
  CONSTRAINT `fk_Avaliacao_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
INSERT INTO `avaliacao` VALUES (1,NULL,NULL,4,'2025-05-17 21:35:11',36,65),(2,NULL,NULL,4,'2025-05-17 21:35:11',48,30),(3,NULL,NULL,2,'2025-05-17 21:35:11',31,66),(4,NULL,NULL,1,'2025-05-17 21:35:11',28,2),(5,NULL,NULL,5,'2025-05-17 21:35:11',3,79),(6,NULL,NULL,1,'2025-05-17 21:35:11',7,24),(7,NULL,NULL,4,'2025-05-17 21:35:11',31,29),(8,NULL,NULL,4,'2025-05-17 21:35:11',8,64),(9,NULL,NULL,3,'2025-05-17 21:35:11',23,22),(10,NULL,NULL,2,'2025-05-17 21:35:11',4,55),(11,NULL,NULL,3,'2025-05-17 21:35:11',8,26),(12,NULL,NULL,4,'2025-05-17 21:35:11',46,92),(13,NULL,NULL,4,'2025-05-17 21:35:11',22,11),(14,NULL,NULL,4,'2025-05-17 21:35:11',5,90),(15,NULL,NULL,4,'2025-05-17 21:35:11',37,1),(16,NULL,NULL,5,'2025-05-17 21:35:11',17,54),(17,NULL,NULL,5,'2025-05-17 21:35:11',6,28),(18,NULL,NULL,1,'2025-05-17 21:35:11',21,93),(19,NULL,NULL,2,'2025-05-17 21:35:11',7,53),(20,NULL,NULL,4,'2025-05-17 21:35:11',47,71),(21,NULL,NULL,5,'2025-05-17 21:35:11',27,42),(22,NULL,NULL,4,'2025-05-17 21:35:11',30,86),(23,NULL,NULL,2,'2025-05-17 21:35:11',40,9),(24,NULL,NULL,2,'2025-05-17 21:35:11',27,89),(25,NULL,NULL,5,'2025-05-17 21:35:11',7,90),(26,NULL,NULL,1,'2025-05-17 21:35:11',50,33),(27,NULL,NULL,1,'2025-05-17 21:35:11',43,81),(28,NULL,NULL,3,'2025-05-17 21:35:11',26,37),(29,NULL,NULL,3,'2025-05-17 21:35:11',10,66),(30,NULL,NULL,4,'2025-05-17 21:35:11',29,79),(31,NULL,NULL,5,'2025-05-17 21:35:11',27,79),(32,NULL,NULL,2,'2025-05-17 21:35:11',20,86),(33,NULL,NULL,2,'2025-05-17 21:35:11',46,20),(34,NULL,NULL,4,'2025-05-17 21:35:11',38,54),(35,NULL,NULL,5,'2025-05-17 21:35:11',34,28),(36,NULL,NULL,1,'2025-05-17 21:35:11',14,46),(37,NULL,NULL,4,'2025-05-17 21:35:11',9,80),(38,NULL,NULL,3,'2025-05-17 21:35:11',14,60),(39,NULL,NULL,2,'2025-05-17 21:35:11',12,37),(40,NULL,NULL,2,'2025-05-17 21:35:11',43,79),(41,NULL,NULL,1,'2025-05-17 21:35:11',18,8),(42,NULL,NULL,3,'2025-05-17 21:35:11',48,21),(43,NULL,NULL,3,'2025-05-17 21:35:11',33,74),(44,NULL,NULL,5,'2025-05-17 21:35:11',28,58),(45,NULL,NULL,2,'2025-05-17 21:35:11',8,21),(46,NULL,NULL,3,'2025-05-17 21:35:11',16,65),(47,NULL,NULL,4,'2025-05-17 21:35:11',42,13),(48,NULL,NULL,5,'2025-05-17 21:35:11',43,74),(49,NULL,NULL,5,'2025-05-17 21:35:11',22,65),(50,NULL,NULL,2,'2025-05-17 21:35:11',39,76),(51,NULL,NULL,1,'2025-05-17 21:35:11',46,17),(52,NULL,NULL,2,'2025-05-17 21:35:11',40,9),(53,NULL,NULL,3,'2025-05-17 21:35:11',9,35),(54,NULL,NULL,4,'2025-05-17 21:35:11',42,51),(55,NULL,NULL,5,'2025-05-17 21:35:11',27,23),(56,NULL,NULL,4,'2025-05-17 21:35:11',8,18),(57,NULL,NULL,2,'2025-05-17 21:35:11',49,90),(58,NULL,NULL,5,'2025-05-17 21:35:11',40,73),(59,NULL,NULL,1,'2025-05-17 21:35:11',38,63),(60,NULL,NULL,2,'2025-05-17 21:35:11',24,43),(61,NULL,NULL,2,'2025-05-17 21:35:11',15,97),(62,NULL,NULL,4,'2025-05-17 21:35:11',2,20),(63,NULL,NULL,1,'2025-05-17 21:35:11',22,36),(64,NULL,NULL,1,'2025-05-17 21:35:11',18,4),(65,NULL,NULL,1,'2025-05-17 21:35:11',23,57),(66,NULL,NULL,3,'2025-05-17 21:35:11',48,62),(67,NULL,NULL,5,'2025-05-17 21:35:11',9,30),(68,NULL,NULL,2,'2025-05-17 21:35:11',32,88),(69,NULL,NULL,1,'2025-05-17 21:35:11',42,36),(70,NULL,NULL,1,'2025-05-17 21:35:11',35,51),(71,NULL,NULL,4,'2025-05-17 21:35:11',36,62),(72,NULL,NULL,5,'2025-05-17 21:35:11',20,6),(73,NULL,NULL,3,'2025-05-17 21:35:11',24,80),(74,NULL,NULL,3,'2025-05-17 21:35:11',32,52),(75,NULL,NULL,2,'2025-05-17 21:35:11',24,32),(76,NULL,NULL,1,'2025-05-17 21:35:11',5,7),(77,NULL,NULL,4,'2025-05-17 21:35:11',2,83),(78,NULL,NULL,4,'2025-05-17 21:35:11',15,7),(79,NULL,NULL,3,'2025-05-17 21:35:11',40,28),(80,NULL,NULL,2,'2025-05-17 21:35:11',25,96),(81,NULL,NULL,3,'2025-05-17 21:35:11',6,14),(82,NULL,NULL,2,'2025-05-17 21:35:11',17,68),(83,NULL,NULL,5,'2025-05-17 21:35:11',16,53),(84,NULL,NULL,1,'2025-05-17 21:35:11',37,19),(85,NULL,NULL,3,'2025-05-17 21:35:11',6,93),(86,NULL,NULL,4,'2025-05-17 21:35:11',12,20),(87,NULL,NULL,4,'2025-05-17 21:35:11',35,27),(88,NULL,NULL,3,'2025-05-17 21:35:11',27,56),(89,NULL,NULL,1,'2025-05-17 21:35:11',22,92),(90,NULL,NULL,3,'2025-05-17 21:35:11',47,1),(91,NULL,NULL,1,'2025-05-17 21:35:11',39,61),(92,NULL,NULL,2,'2025-05-17 21:35:11',2,26),(93,NULL,NULL,3,'2025-05-17 21:35:11',14,2),(94,NULL,NULL,3,'2025-05-17 21:35:11',44,27),(95,NULL,NULL,4,'2025-05-17 21:35:11',45,17),(96,NULL,NULL,1,'2025-05-17 21:35:11',42,68),(97,NULL,NULL,4,'2025-05-17 21:35:11',8,70),(98,NULL,NULL,3,'2025-05-17 21:35:11',36,71),(99,NULL,NULL,2,'2025-05-17 21:35:11',49,18),(100,NULL,NULL,2,'2025-05-17 21:35:11',19,60),(101,NULL,NULL,4,'2025-05-17 21:35:11',45,80),(102,NULL,NULL,3,'2025-05-17 21:35:11',8,87),(103,NULL,NULL,1,'2025-05-17 21:35:11',25,74),(104,NULL,NULL,5,'2025-05-17 21:35:11',17,87),(105,NULL,NULL,4,'2025-05-17 21:35:11',37,96),(106,NULL,NULL,3,'2025-05-17 21:35:11',25,87),(107,NULL,NULL,4,'2025-05-17 21:35:11',46,26),(108,NULL,NULL,2,'2025-05-17 21:35:11',16,80),(109,NULL,NULL,3,'2025-05-17 21:35:11',1,27),(110,NULL,NULL,5,'2025-05-17 21:35:11',6,77),(111,NULL,NULL,2,'2025-05-17 21:35:11',20,20),(112,NULL,NULL,5,'2025-05-17 21:35:11',36,71),(113,NULL,NULL,3,'2025-05-17 21:35:11',23,25),(114,NULL,NULL,3,'2025-05-17 21:35:11',1,93),(115,NULL,NULL,2,'2025-05-17 21:35:11',9,93),(116,NULL,NULL,4,'2025-05-17 21:35:11',13,66),(117,NULL,NULL,3,'2025-05-17 21:35:11',31,59),(118,NULL,NULL,4,'2025-05-17 21:35:11',18,89),(119,NULL,NULL,5,'2025-05-17 21:35:11',22,89),(120,NULL,NULL,3,'2025-05-17 21:35:11',42,85),(121,NULL,NULL,2,'2025-05-17 21:35:11',50,23),(122,NULL,NULL,4,'2025-05-17 21:35:11',24,95),(123,NULL,NULL,3,'2025-05-17 21:35:11',8,51),(124,NULL,NULL,2,'2025-05-17 21:35:11',44,88),(125,NULL,NULL,2,'2025-05-17 21:35:11',38,56),(126,NULL,NULL,3,'2025-05-17 21:35:11',40,37),(127,NULL,NULL,4,'2025-05-17 21:35:11',32,45),(128,NULL,NULL,5,'2025-05-17 21:35:11',4,67),(129,NULL,NULL,2,'2025-05-17 21:35:11',32,23),(130,NULL,NULL,5,'2025-05-17 21:35:11',46,4),(131,NULL,NULL,5,'2025-05-17 21:35:11',43,77),(132,NULL,NULL,5,'2025-05-17 21:35:11',10,96),(133,NULL,NULL,4,'2025-05-17 21:35:11',2,31),(134,NULL,NULL,2,'2025-05-17 21:35:11',45,93),(135,NULL,NULL,3,'2025-05-17 21:35:11',45,27),(136,NULL,NULL,2,'2025-05-17 21:35:11',6,81),(137,NULL,NULL,1,'2025-05-17 21:35:11',9,52),(138,NULL,NULL,2,'2025-05-17 21:35:11',44,78),(139,NULL,NULL,2,'2025-05-17 21:35:11',12,62),(140,NULL,NULL,3,'2025-05-17 21:35:11',43,89),(141,NULL,NULL,1,'2025-05-17 21:35:11',7,68),(142,NULL,NULL,3,'2025-05-17 21:35:11',36,60),(143,NULL,NULL,4,'2025-05-17 21:35:11',3,34),(144,NULL,NULL,4,'2025-05-17 21:35:11',8,69),(145,NULL,NULL,3,'2025-05-17 21:35:11',25,8),(146,NULL,NULL,2,'2025-05-17 21:35:11',27,34),(147,NULL,NULL,5,'2025-05-17 21:35:11',7,7),(148,NULL,NULL,2,'2025-05-17 21:35:11',33,65),(149,NULL,NULL,2,'2025-05-17 21:35:11',29,69),(150,NULL,NULL,2,'2025-05-17 21:35:11',41,30),(151,NULL,NULL,4,'2025-05-17 21:35:11',3,43),(152,NULL,NULL,1,'2025-05-17 21:35:11',49,17),(153,NULL,NULL,5,'2025-05-17 21:35:11',25,53),(154,NULL,NULL,3,'2025-05-17 21:35:11',17,14),(155,NULL,NULL,4,'2025-05-17 21:35:11',43,18),(156,NULL,NULL,2,'2025-05-17 21:35:11',31,99),(157,NULL,NULL,4,'2025-05-17 21:35:11',46,84),(158,NULL,NULL,2,'2025-05-17 21:35:11',10,64),(159,NULL,NULL,2,'2025-05-17 21:35:11',7,79),(160,NULL,NULL,4,'2025-05-17 21:35:11',14,11),(161,NULL,NULL,3,'2025-05-17 21:35:11',18,81),(162,NULL,NULL,3,'2025-05-17 21:35:11',44,52),(163,NULL,NULL,5,'2025-05-17 21:35:11',22,94),(164,NULL,NULL,1,'2025-05-17 21:35:11',44,81),(165,NULL,NULL,5,'2025-05-17 21:35:11',8,12),(166,NULL,NULL,2,'2025-05-17 21:35:11',40,16),(167,NULL,NULL,2,'2025-05-17 21:35:11',38,54),(168,NULL,NULL,2,'2025-05-17 21:35:11',9,62),(169,NULL,NULL,2,'2025-05-17 21:35:11',22,88),(170,NULL,NULL,1,'2025-05-17 21:35:11',19,11),(171,NULL,NULL,3,'2025-05-17 21:35:11',23,34),(172,NULL,NULL,1,'2025-05-17 21:35:11',21,19),(173,NULL,NULL,4,'2025-05-17 21:35:11',45,57),(174,NULL,NULL,4,'2025-05-17 21:35:11',33,1),(175,NULL,NULL,5,'2025-05-17 21:35:11',29,68),(176,NULL,NULL,2,'2025-05-17 21:35:11',36,62),(177,NULL,NULL,4,'2025-05-17 21:35:11',48,99),(178,NULL,NULL,2,'2025-05-17 21:35:11',3,21),(179,NULL,NULL,3,'2025-05-17 21:35:11',16,21),(180,NULL,NULL,3,'2025-05-17 21:35:11',9,31),(181,NULL,NULL,3,'2025-05-17 21:35:11',17,65),(182,NULL,NULL,5,'2025-05-17 21:35:11',6,33),(183,NULL,NULL,3,'2025-05-17 21:35:11',15,42),(184,NULL,NULL,4,'2025-05-17 21:35:11',40,10),(185,NULL,NULL,4,'2025-05-17 21:35:11',7,28),(186,NULL,NULL,3,'2025-05-17 21:35:11',6,35),(187,NULL,NULL,3,'2025-05-17 21:35:11',38,78),(188,NULL,NULL,4,'2025-05-17 21:35:11',2,86),(189,NULL,NULL,2,'2025-05-17 21:35:11',20,48),(190,NULL,NULL,5,'2025-05-17 21:35:11',46,64),(191,NULL,NULL,1,'2025-05-17 21:35:11',21,2),(192,NULL,NULL,3,'2025-05-17 21:35:11',17,23),(193,NULL,NULL,2,'2025-05-17 21:35:11',24,61),(194,NULL,NULL,4,'2025-05-17 21:35:11',43,97),(195,NULL,NULL,3,'2025-05-17 21:35:11',9,42),(196,NULL,NULL,2,'2025-05-17 21:35:11',40,67),(197,NULL,NULL,4,'2025-05-17 21:35:11',8,25),(198,NULL,NULL,4,'2025-05-17 21:35:11',30,80),(199,NULL,NULL,2,'2025-05-17 21:35:11',7,23),(200,NULL,NULL,5,'2025-05-17 21:35:11',21,47);
/*!40000 ALTER TABLE `avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `idCidade` int NOT NULL,
  `nmCidade` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idCidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'São Paulo'),(2,'Campinas'),(3,'Santos'),(4,'Sorocaba'),(5,'Rio de Janeiro'),(6,'Niterói'),(7,'Petrópolis'),(8,'Angra dos Reis'),(9,'Los Angeles'),(10,'San Francisco'),(11,'San Diego'),(12,'Sacramento'),(13,'Houston'),(14,'Dallas'),(15,'Austin'),(16,'San Antonio'),(17,'Toronto'),(18,'Ottawa'),(19,'Mississauga'),(20,'Brampton'),(21,'Montreal'),(22,'Quebec City'),(23,'Laval'),(24,'Gatineau'),(25,'Munich'),(26,'Nuremberg'),(27,'Augsburg'),(28,'Regensburg'),(29,'Berlim'),(30,'Pankow'),(31,'Charlottenburg'),(32,'Kreuzberg'),(33,'Sydney'),(34,'Newcastle'),(35,'Wollongong'),(36,'Coffs Harbour'),(37,'Brisbane'),(38,'Gold Coast'),(39,'Cairns'),(40,'Townsville');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classindicativa`
--

DROP TABLE IF EXISTS `classindicativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classindicativa` (
  `idClassIndicativa` smallint NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idClassIndicativa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classindicativa`
--

LOCK TABLES `classindicativa` WRITE;
/*!40000 ALTER TABLE `classindicativa` DISABLE KEYS */;
INSERT INTO `classindicativa` VALUES (1,'Livre'),(2,'10+'),(3,'12+'),(4,'14+'),(5,'16+'),(6,'18+');
/*!40000 ALTER TABLE `classindicativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conteudo`
--

DROP TABLE IF EXISTS `conteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conteudo` (
  `idConteudo` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) DEFAULT NULL,
  `duracao` int DEFAULT NULL,
  `ano_lancamento` int DEFAULT NULL,
  `TipoConteudo_idTipoConteudo` smallint NOT NULL,
  `TipoConteudo_idTipoConteudo1` smallint NOT NULL,
  `ClassIndicativa_idClassIndicativa` smallint NOT NULL,
  `GeneroConteudo_idGenero` smallint NOT NULL,
  PRIMARY KEY (`idConteudo`),
  UNIQUE KEY `idConteudo` (`idConteudo`),
  KEY `fk_Conteudo_TipoConteudo1_idx` (`TipoConteudo_idTipoConteudo`),
  KEY `fk_Conteudo_TipoConteudo2_idx` (`TipoConteudo_idTipoConteudo1`),
  KEY `fk_Conteudo_ClassIndicativa1_idx` (`ClassIndicativa_idClassIndicativa`),
  KEY `fk_Conteudo_GeneroConteudo1_idx` (`GeneroConteudo_idGenero`),
  CONSTRAINT `fk_Conteudo_ClassIndicativa1` FOREIGN KEY (`ClassIndicativa_idClassIndicativa`) REFERENCES `classindicativa` (`idClassIndicativa`),
  CONSTRAINT `fk_Conteudo_GeneroConteudo1` FOREIGN KEY (`GeneroConteudo_idGenero`) REFERENCES `generoconteudo` (`idGenero`),
  CONSTRAINT `fk_Conteudo_TipoConteudo1` FOREIGN KEY (`TipoConteudo_idTipoConteudo`) REFERENCES `tipoconteudo` (`idTipoConteudo`),
  CONSTRAINT `fk_Conteudo_TipoConteudo2` FOREIGN KEY (`TipoConteudo_idTipoConteudo1`) REFERENCES `tipoconteudo` (`idTipoConteudo`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteudo`
--

LOCK TABLES `conteudo` WRITE;
/*!40000 ALTER TABLE `conteudo` DISABLE KEYS */;
INSERT INTO `conteudo` VALUES (1,'Grow just stay leg',31,2005,4,4,2,8),(2,'Girl indeed black',57,2019,3,3,6,20),(3,'Development south popular',149,2001,1,1,2,20),(4,'Race outside up',69,2012,4,4,3,15),(5,'Huge away',68,2016,1,1,4,9),(6,'General break lawyer economy',45,2001,5,5,1,4),(7,'Option',163,2025,6,6,3,12),(8,'Every look win',82,2009,7,7,3,18),(9,'Measure cold democratic',94,2020,3,3,2,7),(10,'Market indicate fish',131,2010,4,4,4,4),(11,'Far point none',103,2004,7,7,1,3),(12,'Ready',146,2001,6,6,5,5),(13,'Product thought follow',138,2013,4,4,4,7),(14,'Before where',84,2004,3,3,1,14),(15,'Anything',33,2020,5,5,1,17),(16,'Strategy staff and',111,2005,3,3,1,18),(17,'Perform and',135,2023,1,1,1,19),(18,'Radio response',79,2005,1,1,5,13),(19,'Fund walk detail',42,2006,5,5,4,10),(20,'Including fall',104,2020,2,2,2,3),(21,'Deal I film',82,2011,1,1,4,16),(22,'Car small use',68,2013,5,5,3,20),(23,'Enough step unit about',150,2022,1,1,3,7),(24,'On perhaps material',76,2003,1,1,5,5),(25,'Tv between mention',166,2010,6,6,1,16),(26,'Television read',111,2001,4,4,5,7),(27,'Tend they',58,2021,1,1,5,15),(28,'Involve may',99,2002,3,3,4,6),(29,'There',111,2000,2,2,1,12),(30,'Month success',81,2004,4,4,6,5),(31,'Course man nation',147,2017,6,6,6,2),(32,'Traditional more',108,2002,3,3,4,7),(33,'Education must until',170,2018,1,1,2,6),(34,'Who watch',138,2001,1,1,2,10),(35,'Upon investment',88,2017,5,5,1,17),(36,'Read evidence',98,2007,1,1,3,9),(37,'Pull camera same',128,2000,4,4,5,8),(38,'Material fill defense',80,2017,3,3,6,18),(39,'Describe want',118,2007,6,6,4,13),(40,'Beautiful',157,2011,3,3,6,2),(41,'Strategy huge market',34,2014,1,1,6,19),(42,'Poor choose together',67,2014,2,2,5,11),(43,'These same career',93,2013,5,5,2,4),(44,'Second center',40,2023,4,4,4,20),(45,'Practice plan civil film',32,2018,1,1,2,14),(46,'Later kid',168,2016,3,3,6,11),(47,'Magazine expect',103,2011,4,4,3,16),(48,'Several threat',121,2024,4,4,2,4),(49,'Range star exist',77,2005,6,6,3,8),(50,'Involve decision',154,2020,7,7,2,14),(51,'Last rich trade',164,2011,3,3,2,13),(52,'Record common',105,2023,4,4,6,1),(53,'Seek wish',64,2000,7,7,4,4),(54,'Learn as',164,2017,7,7,1,1),(55,'Hard evidence store',102,2010,5,5,4,10),(56,'Perhaps design stuff',134,2002,4,4,4,9),(57,'Her should',58,2012,2,2,1,1),(58,'Trial Mrs whose middle',100,2016,4,4,3,11),(59,'Possible day sell',49,2019,3,3,1,17),(60,'Hand hear',175,2022,1,1,4,15),(61,'West wonder',86,2005,4,4,2,1),(62,'On base',156,2010,1,1,2,5),(63,'Job event detail',116,2006,2,2,1,17),(64,'Group local',55,2020,6,6,3,10),(65,'Yeah daughter would',173,2005,4,4,2,7),(66,'Large after',114,2006,1,1,5,7),(67,'Too peace claim',169,2002,3,3,6,7),(68,'Push successful far',142,2020,5,5,4,13),(69,'Star bag',111,2019,3,3,5,5),(70,'Way development deal',42,2009,6,6,4,16),(71,'Mrs win among',34,2012,3,3,6,18),(72,'Amount area student',152,2001,6,6,1,12),(73,'Collection serious',113,2009,2,2,2,18),(74,'Matter receive wide',124,2017,1,1,2,3),(75,'Around dog third',59,2013,4,4,4,7),(76,'Score language',36,2016,4,4,4,5),(77,'Family relate continue',147,2002,2,2,5,11),(78,'Specific city president',33,2011,7,7,1,17),(79,'Military social',36,2018,6,6,3,3),(80,'Performance themselves',33,2003,6,6,2,6),(81,'Social eye dog',143,2006,4,4,6,10),(82,'Family religious',119,2024,2,2,5,1),(83,'Standard reason',108,2017,1,1,5,17),(84,'Note lot better about',108,2004,2,2,5,19),(85,'Several after',98,2010,1,1,1,11),(86,'Week floor American',40,2020,4,4,2,10),(87,'Size talk down',136,2016,6,6,5,18),(88,'Social',88,2009,5,5,3,6),(89,'Apply mean',75,2015,5,5,2,13),(90,'Fish rise memory',96,2022,7,7,5,19),(91,'True civil',76,2001,3,3,4,2),(92,'Song parent organization',145,2020,7,7,5,12),(93,'Cell two',123,2023,4,4,1,18),(94,'Item',119,2007,1,1,6,2),(95,'Enjoy right',163,2000,1,1,3,20),(96,'Development',138,2006,6,6,5,2),(97,'For doctor stop',48,2005,2,2,4,14),(98,'Growth environmental yourself',158,2001,4,4,1,20),(99,'Reach add per',78,2001,6,6,3,6),(100,'Until word',125,2009,6,6,6,18);
/*!40000 ALTER TABLE `conteudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispositivo`
--

DROP TABLE IF EXISTS `dispositivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dispositivo` (
  `idDispositivo` smallint NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `SistemaOperacional_idSistemaOperacional` smallint NOT NULL,
  PRIMARY KEY (`idDispositivo`),
  KEY `fk_Dispositivo_SistemaOperacional1_idx` (`SistemaOperacional_idSistemaOperacional`),
  CONSTRAINT `fk_Dispositivo_SistemaOperacional1` FOREIGN KEY (`SistemaOperacional_idSistemaOperacional`) REFERENCES `sistemaoperacional` (`idSistemaOperacional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispositivo`
--

LOCK TABLES `dispositivo` WRITE;
/*!40000 ALTER TABLE `dispositivo` DISABLE KEYS */;
INSERT INTO `dispositivo` VALUES (1,'Celular',3),(2,'Smart TV',4),(3,'Tablet',3),(4,'PC',3),(5,'Console',2);
/*!40000 ALTER TABLE `dispositivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodio`
--

DROP TABLE IF EXISTS `episodio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodio` (
  `idConteudo` bigint unsigned NOT NULL,
  `idSeriado` bigint unsigned NOT NULL,
  `temporada` int DEFAULT NULL,
  `numero_episodio` int DEFAULT NULL,
  PRIMARY KEY (`idConteudo`),
  KEY `fk_Episodio_Conteudo1_idx` (`idConteudo`),
  KEY `fk_Episodio_Conteudo2_idx` (`idSeriado`),
  CONSTRAINT `fk_Episodio_Conteudo1` FOREIGN KEY (`idConteudo`) REFERENCES `conteudo` (`idConteudo`),
  CONSTRAINT `fk_Episodio_Conteudo2` FOREIGN KEY (`idSeriado`) REFERENCES `conteudo` (`idConteudo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodio`
--

LOCK TABLES `episodio` WRITE;
/*!40000 ALTER TABLE `episodio` DISABLE KEYS */;
INSERT INTO `episodio` VALUES (2,21,3,7),(4,92,5,6),(6,14,2,1),(7,21,5,9),(8,21,1,1),(10,63,1,6),(12,86,1,6),(13,55,5,10),(15,32,2,6),(17,55,3,5),(18,14,1,8),(20,55,5,7),(23,32,3,4),(24,14,4,6),(25,55,1,10),(31,3,5,4),(35,32,3,9),(37,21,4,9),(39,21,2,1),(42,86,4,6),(43,32,4,9),(44,14,2,1),(46,21,3,7),(48,32,2,1),(54,63,5,3),(56,3,4,1),(59,14,2,3),(66,3,5,2),(69,86,4,6),(70,32,4,9),(71,32,4,1),(76,26,3,6),(80,92,1,1),(87,32,3,5),(88,21,3,4),(89,73,1,4),(91,92,5,8),(96,73,1,1),(98,3,5,10);
/*!40000 ALTER TABLE `episodio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `idEstado` int NOT NULL,
  `nmEstado` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'São Paulo'),(2,'Rio de Janeiro'),(3,'California'),(4,'Texas'),(5,'Ontario'),(6,'Quebec'),(7,'Baviera'),(8,'Berlim'),(9,'Nova Gales do Sul'),(10,'Queensland');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `função`
--

DROP TABLE IF EXISTS `função`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `função` (
  `idFuncao` int NOT NULL,
  `descFuncao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFuncao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `função`
--

LOCK TABLES `função` WRITE;
/*!40000 ALTER TABLE `função` DISABLE KEYS */;
INSERT INTO `função` VALUES (1,'Ator'),(2,'Diretor'),(3,'Roteirista'),(4,'Figurante'),(5,'Produtor');
/*!40000 ALTER TABLE `função` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generoconteudo`
--

DROP TABLE IF EXISTS `generoconteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generoconteudo` (
  `idGenero` smallint NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generoconteudo`
--

LOCK TABLES `generoconteudo` WRITE;
/*!40000 ALTER TABLE `generoconteudo` DISABLE KEYS */;
INSERT INTO `generoconteudo` VALUES (1,'Ação'),(2,'Comédia'),(3,'Drama'),(4,'Terror'),(5,'Suspense'),(6,'Ficção Científica'),(7,'Fantasia'),(8,'Romance'),(9,'Aventura'),(10,'Animação'),(11,'Documentário'),(12,'Musical'),(13,'Crime'),(14,'Mistério'),(15,'Guerra'),(16,'Histórico'),(17,'Esporte'),(18,'Biografia'),(19,'Infantil'),(20,'Erótico');
/*!40000 ALTER TABLE `generoconteudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `idPagamento` int NOT NULL,
  `dtPagamento` varchar(45) DEFAULT NULL,
  `vlrRecebido` varchar(45) DEFAULT NULL,
  `Assinatura_idAssinatura` bigint unsigned NOT NULL,
  PRIMARY KEY (`idPagamento`),
  KEY `fk_Pagamento_Assinatura1_idx` (`Assinatura_idAssinatura`),
  CONSTRAINT `fk_Pagamento_Assinatura1` FOREIGN KEY (`Assinatura_idAssinatura`) REFERENCES `assinatura` (`idAssinatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,'2025-05-03','44.26',1),(2,'2025-04-03','19.88',2),(3,'2025-02-27','27.89',3),(4,'2025-03-23','33.96',4),(5,'2025-04-15','29.07',5),(6,'2025-04-27','45.13',6),(7,'2025-01-11','27.81',7),(8,'2025-01-22','17.25',8),(9,'2025-03-25','12.15',9),(10,'2025-01-20','43.49',10),(11,'2025-04-01','38.0',11),(12,'2025-04-27','30.31',12),(13,'2025-05-12','40.13',13),(14,'2025-02-02','24.73',14),(15,'2025-04-18','40.28',15),(16,'2025-01-12','29.7',16),(17,'2025-02-24','12.24',17),(18,'2025-04-18','47.72',18),(19,'2025-02-13','50.92',19),(20,'2025-01-29','55.03',20),(21,'2025-01-11','32.04',21),(22,'2025-02-05','54.52',22),(23,'2025-04-27','53.38',23),(24,'2025-02-13','23.56',24),(25,'2025-02-15','55.36',25),(26,'2025-01-02','58.11',26),(27,'2025-02-09','55.11',27),(28,'2025-03-04','55.88',28),(29,'2025-05-05','34.19',29),(30,'2025-04-25','36.96',30),(31,'2025-05-11','23.8',31),(32,'2025-03-31','38.88',32),(33,'2025-02-09','16.13',33),(34,'2025-01-22','56.45',34),(35,'2025-02-28','42.44',35),(36,'2025-04-04','14.04',36),(37,'2025-03-01','16.07',37),(38,'2025-01-21','48.3',38),(39,'2025-04-29','36.01',39),(40,'2025-01-26','22.88',40),(41,'2025-04-27','19.34',41),(42,'2025-02-27','58.02',42),(43,'2025-01-31','31.52',43),(44,'2025-02-05','20.48',44),(45,'2025-03-30','12.64',45),(46,'2025-04-04','21.24',46),(47,'2025-02-06','52.37',47),(48,'2025-02-08','51.69',48),(49,'2025-02-07','53.82',49),(50,'2025-01-18','35.03',50);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `idPais` int NOT NULL,
  `nmPais` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Brasil'),(2,'Estados Unidos'),(3,'Canadá'),(4,'Alemanha'),(5,'Austrália');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plano`
--

DROP TABLE IF EXISTS `plano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plano` (
  `idPlano` int NOT NULL,
  `nmPlano` varchar(50) DEFAULT NULL,
  `precoMensal` decimal(10,2) DEFAULT NULL,
  `numTelas` int DEFAULT NULL,
  `Qualidadevideo_idQualidade` smallint NOT NULL,
  PRIMARY KEY (`idPlano`),
  KEY `fk_plano_Qualidadevideo1_idx` (`Qualidadevideo_idQualidade`),
  CONSTRAINT `fk_plano_Qualidadevideo1` FOREIGN KEY (`Qualidadevideo_idQualidade`) REFERENCES `qualidadevideo` (`idQualidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plano`
--

LOCK TABLES `plano` WRITE;
/*!40000 ALTER TABLE `plano` DISABLE KEYS */;
INSERT INTO `plano` VALUES (1,'Plano 1',49.96,3,2),(2,'Plano 2',10.75,4,1),(3,'Plano 3',20.02,3,4);
/*!40000 ALTER TABLE `plano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualidadevideo`
--

DROP TABLE IF EXISTS `qualidadevideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualidadevideo` (
  `idQualidade` smallint NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idQualidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualidadevideo`
--

LOCK TABLES `qualidadevideo` WRITE;
/*!40000 ALTER TABLE `qualidadevideo` DISABLE KEYS */;
INSERT INTO `qualidadevideo` VALUES (1,'SD'),(2,'HD'),(3,'Full HD'),(4,'4K');
/*!40000 ALTER TABLE `qualidadevideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistemaoperacional`
--

DROP TABLE IF EXISTS `sistemaoperacional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sistemaoperacional` (
  `idSistemaOperacional` smallint NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idSistemaOperacional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistemaoperacional`
--

LOCK TABLES `sistemaoperacional` WRITE;
/*!40000 ALTER TABLE `sistemaoperacional` DISABLE KEYS */;
INSERT INTO `sistemaoperacional` VALUES (1,'Windows'),(2,'Android'),(3,'iOS'),(4,'macOS'),(5,'Linux');
/*!40000 ALTER TABLE `sistemaoperacional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situacaoassinatura`
--

DROP TABLE IF EXISTS `situacaoassinatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `situacaoassinatura` (
  `idSituacao` smallint NOT NULL,
  `descricao` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idSituacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacaoassinatura`
--

LOCK TABLES `situacaoassinatura` WRITE;
/*!40000 ALTER TABLE `situacaoassinatura` DISABLE KEYS */;
INSERT INTO `situacaoassinatura` VALUES (1,'Ativa'),(2,'Cancelada'),(3,'Pendente');
/*!40000 ALTER TABLE `situacaoassinatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoconteudo`
--

DROP TABLE IF EXISTS `tipoconteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoconteudo` (
  `idTipoConteudo` smallint NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idTipoConteudo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoconteudo`
--

LOCK TABLES `tipoconteudo` WRITE;
/*!40000 ALTER TABLE `tipoconteudo` DISABLE KEYS */;
INSERT INTO `tipoconteudo` VALUES (1,'Filme'),(2,'Série'),(3,'Documentário'),(4,'Reality Show'),(5,'Minissérie'),(6,'Curta-metragem'),(7,'Show de Stand-up');
/*!40000 ALTER TABLE `tipoconteudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dtNascimento` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `pais_idPais` int NOT NULL,
  `cidade_idCidade` int NOT NULL,
  `estado_idEstado` int NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario` (`idUsuario`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_usuario_pais_idx` (`pais_idPais`),
  KEY `fk_usuario_cidade1_idx` (`cidade_idCidade`),
  KEY `fk_usuario_estado1_idx` (`estado_idEstado`),
  CONSTRAINT `fk_usuario_cidade1` FOREIGN KEY (`cidade_idCidade`) REFERENCES `cidade` (`idCidade`),
  CONSTRAINT `fk_usuario_estado1` FOREIGN KEY (`estado_idEstado`) REFERENCES `estado` (`idEstado`),
  CONSTRAINT `fk_usuario_pais` FOREIGN KEY (`pais_idPais`) REFERENCES `pais` (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Kimberly Phillips','lcooper@example.com','1957-12-20','M',1,4,1),(2,'Teresa Owen','zvasquez@example.org','1945-10-14','F',5,38,10),(3,'Emily Casey','kpotts@example.com','1947-03-25','M',1,4,1),(4,'Joshua Long','crystal04@example.net','2004-02-05','F',1,3,1),(5,'Alexandra Friedman','ojones@example.net','1963-07-15','M',4,29,8),(6,'Austin Aguilar','nielsenmargaret@example.com','2004-06-16','F',2,11,3),(7,'Michael Diaz','rosskatherine@example.com','1955-09-01','M',3,17,5),(8,'Zoe Hendrix','jennifer62@example.net','2004-07-30','M',3,23,6),(9,'Mary Anderson','nrusso@example.com','1967-04-22','F',2,15,4),(10,'Aaron Bauer','jonathan82@example.org','1973-08-08','F',4,30,8),(11,'James Osborne','pameladorsey@example.net','1980-07-22','M',1,6,2),(12,'Angelica Lynch','vhernandez@example.com','1957-06-09','M',3,20,5),(13,'Louis Ryan','nancyjimenez@example.com','1988-11-24','M',2,13,4),(14,'Misty Hanson','melaniecunningham@example.com','1991-07-22','M',2,10,3),(15,'Jennifer Smith','andrew46@example.net','1944-12-31','F',3,22,6),(16,'Andrea Arias','cfernandez@example.net','1956-04-07','M',3,20,5),(17,'Mark Gilbert','qespinoza@example.net','1985-04-23','M',4,26,7),(18,'Jennifer Myers','fbeasley@example.org','1998-05-07','M',1,5,2),(19,'Megan Burgess','ipowell@example.com','2000-01-24','M',3,18,5),(20,'Ashley Morales DVM','williamwilson@example.com','1957-12-13','M',4,29,8),(21,'Morgan Andrews','garyblair@example.net','1960-12-23','F',5,34,9),(22,'Mary Scott','anitalittle@example.org','1956-08-08','F',2,11,3),(23,'Nichole Williams','ugomez@example.com','1949-07-14','M',2,11,3),(24,'Nicholas Padilla','adriennegreen@example.com','1987-03-11','M',5,40,10),(25,'Joshua Austin','younglawrence@example.net','1954-10-22','F',4,27,7),(26,'Beth Brown','richardmendoza@example.net','1994-10-24','M',5,33,9),(27,'James Sanchez','aaron32@example.net','2000-12-09','M',2,14,4),(28,'Michelle Garcia','williamjames@example.org','1955-09-21','F',1,7,2),(29,'Hannah Gonzalez','ericsmith@example.org','1965-10-13','F',1,7,2),(30,'Sherry Stevens','raytravis@example.net','1993-08-30','M',3,21,6),(31,'Dr. Teresa Evans','umathews@example.com','1992-07-13','F',4,26,7),(32,'Christopher Edwards','graycourtney@example.org','1973-03-14','F',5,34,9),(33,'Jaclyn Ramirez','vaughanjohn@example.com','1946-04-01','F',1,6,2),(34,'Mark Schwartz','karen19@example.net','1979-05-20','M',1,3,1),(35,'Brian Fisher','caitlyn76@example.com','1951-08-25','M',3,22,6),(36,'Susan Stewart','robertwood@example.com','1970-12-22','F',5,36,9),(37,'Nichole Newman','william09@example.net','1975-03-09','M',5,38,10),(38,'Gary Hess','craig44@example.net','1993-02-23','F',2,16,4),(39,'Melissa Ramirez','bfuentes@example.net','1954-12-14','M',2,15,4),(40,'Sarah Mccoy','vmartinez@example.org','1955-09-01','M',3,23,6),(41,'Laura Herman','zsanders@example.com','1997-10-24','F',2,11,3),(42,'Paul Wallace','heather11@example.org','1994-03-07','M',4,28,7),(43,'Jonathan Long','tannerkelly@example.com','1965-02-27','F',3,18,5),(44,'Zachary Harris','angie59@example.net','1944-09-25','M',3,22,6),(45,'Heather Hawkins','qwilliams@example.net','1991-05-29','M',1,4,1),(46,'John Williams','lcollins@example.com','1955-02-21','M',2,14,4),(47,'Angela Smith','karen65@example.com','2004-10-08','M',4,29,8),(48,'Megan Harris','lauren24@example.com','1964-08-22','M',1,1,1),(49,'Tonya Long','kdavis@example.net','1973-12-18','M',4,28,7),(50,'Sharon Taylor','samuel10@example.com','1958-06-15','M',3,20,5);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visualizacao`
--

DROP TABLE IF EXISTS `visualizacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visualizacao` (
  `id_visualizacao` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data_hora_inicio` timestamp NULL DEFAULT NULL,
  `duracao_visualizacao` int DEFAULT NULL,
  `Usuario_idUsuario` bigint unsigned NOT NULL,
  `Conteudo_idConteudo` bigint unsigned NOT NULL,
  `Dispositivo_idDispositivo` smallint NOT NULL,
  PRIMARY KEY (`id_visualizacao`),
  UNIQUE KEY `id_visualizacao` (`id_visualizacao`),
  KEY `fk_Visualizacao_Usuario1_idx` (`Usuario_idUsuario`),
  KEY `fk_Visualizacao_Conteudo1_idx` (`Conteudo_idConteudo`),
  KEY `fk_Visualizacao_Dispositivo1_idx` (`Dispositivo_idDispositivo`),
  CONSTRAINT `fk_Visualizacao_Conteudo1` FOREIGN KEY (`Conteudo_idConteudo`) REFERENCES `conteudo` (`idConteudo`),
  CONSTRAINT `fk_Visualizacao_Dispositivo1` FOREIGN KEY (`Dispositivo_idDispositivo`) REFERENCES `dispositivo` (`idDispositivo`),
  CONSTRAINT `fk_Visualizacao_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visualizacao`
--

LOCK TABLES `visualizacao` WRITE;
/*!40000 ALTER TABLE `visualizacao` DISABLE KEYS */;
INSERT INTO `visualizacao` VALUES (1,'2025-03-23 05:06:53',115,39,90,4),(2,'2025-03-29 11:37:20',140,44,32,5),(3,'2025-03-28 03:32:18',149,15,25,2),(4,'2025-02-10 04:00:55',96,33,34,5),(5,'2025-02-23 22:39:53',58,6,75,3),(6,'2025-03-14 10:23:58',143,46,55,4),(7,'2025-01-21 05:38:23',125,4,96,2),(8,'2025-05-10 11:19:31',36,2,71,2),(9,'2025-04-04 08:35:38',70,43,82,5),(10,'2025-05-08 14:38:03',61,10,21,2),(11,'2025-04-17 17:40:48',48,7,90,5),(12,'2025-02-05 21:42:07',51,19,55,4),(13,'2025-04-06 04:15:31',87,28,20,4),(14,'2025-01-16 22:45:57',141,48,32,1),(15,'2025-02-21 19:04:59',178,5,1,2),(16,'2025-05-04 20:24:53',147,14,53,3),(17,'2025-01-24 03:32:39',50,36,41,5),(18,'2025-02-23 22:17:35',178,13,68,2),(19,'2025-03-10 12:30:26',101,48,70,4),(20,'2025-02-14 23:15:23',161,9,86,4),(21,'2025-05-09 18:24:19',54,2,38,1),(22,'2025-01-01 18:02:20',24,43,10,3),(23,'2025-01-17 15:01:09',75,18,89,2),(24,'2025-01-16 23:58:28',5,7,31,3),(25,'2025-01-15 13:00:40',16,20,55,4),(26,'2025-04-08 09:40:56',77,32,62,3),(27,'2025-02-16 05:38:38',43,9,64,3),(28,'2025-01-15 08:01:02',92,14,78,3),(29,'2025-01-15 20:23:59',22,22,27,4),(30,'2025-01-07 00:54:50',138,22,10,2),(31,'2025-01-04 15:29:53',15,22,41,2),(32,'2025-02-20 19:39:01',110,22,1,2),(33,'2025-04-13 21:38:28',143,21,14,1),(34,'2025-02-03 19:24:23',86,19,95,5),(35,'2025-04-02 06:12:38',89,24,44,3),(36,'2025-03-10 08:11:10',87,16,69,1),(37,'2025-04-26 20:51:31',58,35,83,1),(38,'2025-03-06 04:04:18',64,34,8,3),(39,'2025-03-13 09:35:46',39,45,67,5),(40,'2025-04-05 03:33:04',173,18,92,2),(41,'2025-02-17 18:40:43',110,17,39,1),(42,'2025-05-06 21:45:13',162,19,19,1),(43,'2025-02-19 04:06:02',149,18,99,4),(44,'2025-01-18 09:58:02',62,41,4,5),(45,'2025-04-07 21:10:04',22,45,6,5),(46,'2025-04-01 12:00:41',146,16,52,3),(47,'2025-05-06 20:15:20',77,28,40,1),(48,'2025-03-25 11:53:41',41,37,70,5),(49,'2025-05-03 04:25:12',52,15,94,1),(50,'2025-03-04 01:11:15',92,2,50,3),(51,'2025-05-10 23:45:08',49,17,19,3),(52,'2025-03-22 12:21:55',165,20,35,1),(53,'2025-04-12 12:26:08',24,19,16,5),(54,'2025-02-06 12:35:23',78,8,14,5),(55,'2025-04-09 06:31:00',16,1,22,3),(56,'2025-03-22 23:21:57',106,10,74,2),(57,'2025-04-26 19:50:46',177,1,74,5),(58,'2025-04-06 06:47:50',40,37,80,5),(59,'2025-04-04 19:03:00',76,32,56,3),(60,'2025-04-08 02:21:54',76,14,51,3),(61,'2025-04-06 11:09:09',89,45,17,4),(62,'2025-03-13 03:03:15',44,17,53,2),(63,'2025-03-26 09:22:05',95,31,60,2),(64,'2025-02-10 01:40:12',30,48,28,4),(65,'2025-03-24 22:03:32',11,38,3,5),(66,'2025-02-25 21:29:42',124,24,72,2),(67,'2025-04-05 05:52:57',57,42,12,5),(68,'2025-03-12 11:25:49',62,15,2,5),(69,'2025-05-01 06:47:24',24,47,12,1),(70,'2025-04-05 02:59:27',46,38,29,5),(71,'2025-02-09 19:13:03',121,17,49,1),(72,'2025-04-17 13:37:31',93,19,49,1),(73,'2025-04-09 22:21:14',130,4,1,4),(74,'2025-05-01 21:10:00',148,47,11,5),(75,'2025-03-02 16:27:12',111,39,63,3),(76,'2025-04-19 08:45:57',96,43,71,4),(77,'2025-04-30 02:26:42',133,46,42,4),(78,'2025-02-13 23:40:04',94,28,28,1),(79,'2025-05-13 12:31:08',74,38,96,3),(80,'2025-04-07 10:48:24',75,14,26,2),(81,'2025-02-24 22:16:16',58,24,94,2),(82,'2025-04-24 10:17:03',134,11,36,4),(83,'2025-04-15 21:34:31',99,27,97,5),(84,'2025-05-07 13:56:54',132,36,96,1),(85,'2025-01-07 19:43:45',32,34,98,2),(86,'2025-02-24 13:55:44',122,6,94,2),(87,'2025-04-13 16:45:37',50,6,49,2),(88,'2025-05-15 11:22:22',15,29,28,2),(89,'2025-05-12 08:40:12',8,41,34,3),(90,'2025-04-04 18:51:15',137,45,86,3),(91,'2025-04-13 17:26:24',57,37,4,2),(92,'2025-02-13 01:13:38',124,9,93,1),(93,'2025-02-07 07:51:57',27,28,22,4),(94,'2025-03-07 00:35:46',43,16,53,3),(95,'2025-03-04 10:47:22',26,49,6,5),(96,'2025-01-14 05:27:06',161,16,80,1),(97,'2025-03-01 04:47:04',25,11,24,3),(98,'2025-04-24 18:14:04',75,35,27,4),(99,'2025-01-15 11:42:03',45,38,71,3),(100,'2025-03-18 04:59:20',137,45,1,2),(101,'2025-03-30 06:49:44',51,44,43,3),(102,'2025-02-10 10:40:47',49,30,8,4),(103,'2025-03-27 21:57:05',69,40,12,1),(104,'2025-05-12 23:27:14',164,39,56,2),(105,'2025-04-01 01:11:16',142,34,85,3),(106,'2025-05-17 15:48:57',137,42,73,3),(107,'2025-04-27 16:20:20',68,26,64,3),(108,'2025-02-02 22:26:32',30,17,89,4),(109,'2025-01-13 01:09:55',64,36,22,5),(110,'2025-02-05 19:53:57',94,44,97,4),(111,'2025-04-01 06:03:33',70,25,57,4),(112,'2025-05-03 03:02:47',59,49,62,4),(113,'2025-03-05 19:24:38',97,13,10,2),(114,'2025-05-02 20:36:43',139,14,34,4),(115,'2025-02-14 19:26:27',8,12,5,1),(116,'2025-02-06 08:49:05',18,46,4,1),(117,'2025-03-02 00:32:02',114,38,32,1),(118,'2025-04-27 01:28:42',21,24,72,5),(119,'2025-01-16 23:05:07',137,23,26,3),(120,'2025-03-17 19:06:39',77,11,56,4),(121,'2025-03-15 15:00:36',62,10,72,4),(122,'2025-02-03 09:20:57',164,30,69,4),(123,'2025-01-17 19:24:41',116,17,17,2),(124,'2025-04-04 06:33:56',89,39,82,2),(125,'2025-02-03 08:02:43',96,25,11,3),(126,'2025-01-02 09:13:00',104,32,35,4),(127,'2025-04-29 08:48:31',13,22,10,1),(128,'2025-02-15 09:00:32',154,23,24,1),(129,'2025-04-23 18:49:43',133,6,34,5),(130,'2025-03-26 22:13:43',46,31,50,1),(131,'2025-02-14 21:49:09',41,30,57,3),(132,'2025-05-02 21:22:26',7,26,99,3),(133,'2025-01-08 14:33:20',174,43,92,4),(134,'2025-01-01 15:23:18',145,40,12,2),(135,'2025-04-25 14:05:28',38,43,43,4),(136,'2025-03-15 10:01:57',97,27,7,2),(137,'2025-05-05 09:22:05',132,40,61,3),(138,'2025-03-03 10:39:53',121,35,14,3),(139,'2025-03-23 16:30:28',167,22,74,4),(140,'2025-04-15 18:03:40',157,23,6,3),(141,'2025-03-19 07:49:58',26,46,54,1),(142,'2025-04-21 13:12:15',62,37,78,5),(143,'2025-01-06 02:55:19',64,28,14,1),(144,'2025-01-05 15:33:23',117,8,16,2),(145,'2025-01-27 08:58:18',120,7,86,4),(146,'2025-04-11 21:32:23',93,42,61,2),(147,'2025-01-18 18:33:20',138,31,66,5),(148,'2025-01-09 07:00:47',167,26,82,4),(149,'2025-04-14 19:31:41',42,20,16,1),(150,'2025-05-14 17:51:14',15,32,81,1),(151,'2025-01-02 05:23:26',165,46,34,2),(152,'2025-02-23 20:45:35',49,34,5,2),(153,'2025-03-01 16:28:59',48,46,99,5),(154,'2025-01-03 22:36:15',81,50,27,3),(155,'2025-02-13 09:07:22',136,13,4,2),(156,'2025-02-05 05:13:52',104,42,49,1),(157,'2025-01-09 06:45:21',105,6,4,1),(158,'2025-01-28 19:14:55',73,21,40,3),(159,'2025-03-30 22:02:10',175,8,64,5),(160,'2025-04-11 12:28:38',98,31,64,4),(161,'2025-04-07 21:12:00',31,29,91,1),(162,'2025-03-09 08:42:36',121,33,21,1),(163,'2025-04-24 02:15:31',172,38,45,1),(164,'2025-01-25 23:57:52',15,26,6,5),(165,'2025-04-16 03:17:24',66,50,86,2),(166,'2025-04-25 08:00:11',121,33,86,1),(167,'2025-04-11 14:36:21',169,29,51,2),(168,'2025-03-15 20:24:24',13,7,96,3),(169,'2025-05-05 08:03:31',165,30,38,5),(170,'2025-04-12 05:53:36',143,33,53,3),(171,'2025-02-13 02:04:58',130,33,42,3),(172,'2025-04-21 06:05:49',86,1,28,3),(173,'2025-01-27 17:32:10',29,43,61,4),(174,'2025-03-14 22:29:03',180,40,86,4),(175,'2025-01-26 05:58:53',126,32,80,2),(176,'2025-02-22 16:03:18',109,49,97,4),(177,'2025-04-09 05:11:40',16,39,2,3),(178,'2025-04-14 00:57:16',10,44,82,4),(179,'2025-04-29 22:19:45',170,31,95,3),(180,'2025-04-02 09:44:11',174,10,18,4),(181,'2025-04-27 23:19:35',167,21,57,4),(182,'2025-05-09 15:23:54',145,10,49,2),(183,'2025-03-29 19:24:20',137,26,44,5),(184,'2025-02-10 15:45:42',100,21,23,2),(185,'2025-03-10 16:06:29',67,18,12,4),(186,'2025-01-31 03:44:17',152,50,9,5),(187,'2025-01-12 00:48:27',57,17,27,4),(188,'2025-02-04 10:19:56',35,19,3,4),(189,'2025-03-05 11:52:44',123,9,39,3),(190,'2025-02-03 17:36:58',121,13,57,4),(191,'2025-04-04 14:10:12',126,18,84,3),(192,'2025-01-25 13:13:25',85,46,12,5),(193,'2025-05-01 11:17:10',167,14,12,3),(194,'2025-03-21 18:00:45',14,24,60,4),(195,'2025-02-15 10:41:13',117,28,3,5),(196,'2025-01-16 01:30:27',157,36,93,2),(197,'2025-03-23 17:53:08',106,49,25,4),(198,'2025-04-24 02:39:22',30,40,50,3),(199,'2025-04-08 02:14:57',173,42,2,2),(200,'2025-03-22 22:32:04',178,12,77,2),(201,'2025-05-10 14:05:27',179,5,97,3),(202,'2025-02-13 16:31:17',124,18,86,5),(203,'2025-01-08 03:54:02',72,48,28,4),(204,'2025-04-09 16:26:23',160,3,47,5),(205,'2025-01-16 22:20:48',154,38,59,2),(206,'2025-04-22 05:23:35',141,36,68,4),(207,'2025-01-14 12:55:46',17,17,59,4),(208,'2025-03-07 05:45:26',51,38,100,5),(209,'2025-03-18 23:11:58',133,46,41,3),(210,'2025-01-07 00:47:04',73,3,60,1),(211,'2025-03-11 21:23:01',97,13,94,1),(212,'2025-03-01 13:33:28',178,49,22,4),(213,'2025-02-19 07:50:23',33,8,24,4),(214,'2025-01-25 17:22:49',124,7,40,2),(215,'2025-05-07 23:50:13',109,44,17,4),(216,'2025-04-11 06:10:25',173,6,85,3),(217,'2025-01-20 14:12:26',88,14,73,3),(218,'2025-01-31 03:18:15',160,16,48,4),(219,'2025-05-08 15:25:09',126,21,67,1),(220,'2025-02-23 17:56:29',147,47,35,4),(221,'2025-05-14 20:05:52',107,38,76,1),(222,'2025-03-21 23:17:28',58,15,55,5),(223,'2025-02-03 17:26:31',32,8,46,2),(224,'2025-03-06 11:26:57',84,11,50,4),(225,'2025-01-09 02:06:25',26,47,95,3),(226,'2025-02-20 05:40:50',159,16,100,2),(227,'2025-02-13 15:07:42',44,10,49,4),(228,'2025-02-20 05:35:07',99,8,70,4),(229,'2025-03-29 10:15:28',135,50,55,1),(230,'2025-01-03 16:06:44',113,28,64,3),(231,'2025-01-17 11:34:03',144,44,68,3),(232,'2025-03-16 21:28:13',50,50,25,1),(233,'2025-04-30 00:54:21',38,19,8,1),(234,'2025-04-21 01:53:39',86,8,65,4),(235,'2025-05-01 11:22:19',112,36,17,2),(236,'2025-04-08 01:36:33',11,30,89,2),(237,'2025-05-14 02:18:27',97,1,99,5),(238,'2025-03-25 03:12:27',57,15,86,2),(239,'2025-03-18 05:29:24',141,50,19,1),(240,'2025-02-26 02:09:41',173,43,23,5),(241,'2025-01-26 15:58:10',8,44,3,2),(242,'2025-04-15 06:42:13',38,27,56,3),(243,'2025-03-12 22:36:25',49,16,50,4),(244,'2025-05-14 11:11:14',135,27,49,1),(245,'2025-02-17 03:20:41',71,9,32,2),(246,'2025-02-05 21:35:22',29,3,97,5),(247,'2025-04-09 13:07:31',120,38,47,4),(248,'2025-04-11 05:37:35',114,21,72,2),(249,'2025-01-14 16:33:51',65,14,28,1),(250,'2025-02-13 02:18:54',56,38,26,1),(251,'2025-04-01 13:25:01',139,38,57,4),(252,'2025-04-13 20:33:05',31,14,74,4),(253,'2025-03-25 18:55:38',28,12,100,4),(254,'2025-02-18 10:21:03',93,40,96,4),(255,'2025-01-25 00:03:47',35,10,2,5),(256,'2025-01-08 17:52:17',96,44,85,2),(257,'2025-05-02 05:11:59',26,41,20,3),(258,'2025-04-13 01:52:55',168,10,37,3),(259,'2025-01-02 02:36:00',165,37,85,5),(260,'2025-01-24 01:41:31',130,17,88,4),(261,'2025-01-22 05:42:05',34,18,74,4),(262,'2025-04-18 18:55:49',127,50,84,1),(263,'2025-02-19 03:12:35',141,43,65,5),(264,'2025-01-26 22:04:04',140,34,65,5),(265,'2025-05-04 12:16:14',157,18,14,3),(266,'2025-04-26 22:06:33',32,20,63,1),(267,'2025-04-13 12:49:54',166,19,1,5),(268,'2025-01-26 18:15:46',42,23,70,3),(269,'2025-03-28 01:56:02',113,16,97,4),(270,'2025-02-10 18:30:00',65,9,31,1),(271,'2025-03-18 03:26:53',79,49,82,2),(272,'2025-01-15 09:06:11',133,9,7,5),(273,'2025-01-28 11:16:41',95,48,39,4),(274,'2025-04-18 11:25:19',44,43,98,3),(275,'2025-04-16 08:17:28',160,46,96,4),(276,'2025-03-16 04:14:01',165,22,83,2),(277,'2025-05-10 20:34:46',134,9,67,1),(278,'2025-03-09 09:01:28',75,17,90,1),(279,'2025-01-10 03:39:39',16,31,50,1),(280,'2025-03-28 22:48:50',15,22,27,1),(281,'2025-01-26 08:36:00',174,39,59,1),(282,'2025-03-14 21:19:26',71,43,78,5),(283,'2025-04-14 10:19:03',133,7,90,1),(284,'2025-02-20 12:15:16',113,9,86,3),(285,'2025-04-27 07:55:13',9,50,26,5),(286,'2025-03-20 21:28:08',68,46,98,3),(287,'2025-04-18 00:10:01',69,17,35,4),(288,'2025-04-11 09:16:40',117,49,20,2),(289,'2025-05-04 19:00:29',115,25,46,2),(290,'2025-02-27 02:33:20',5,40,12,4),(291,'2025-04-18 04:39:44',78,22,21,1),(292,'2025-01-04 23:19:17',123,26,36,2),(293,'2025-02-13 17:10:01',105,29,98,5),(294,'2025-03-15 12:04:27',30,45,92,2),(295,'2025-05-06 20:59:21',164,25,3,1),(296,'2025-03-15 07:36:09',107,48,50,2),(297,'2025-03-06 17:05:00',53,12,70,1),(298,'2025-01-07 09:59:49',131,45,76,3),(299,'2025-01-08 08:29:10',174,41,1,5),(300,'2025-01-26 14:55:50',143,17,43,1),(301,'2025-02-21 22:19:01',138,42,85,2),(302,'2025-02-19 02:12:04',160,50,59,4),(303,'2025-01-28 14:54:53',155,24,10,3),(304,'2025-03-28 10:57:19',125,36,16,4),(305,'2025-04-10 19:52:21',75,32,63,4),(306,'2025-05-10 22:21:00',61,17,66,4),(307,'2025-02-11 05:13:34',5,42,73,3),(308,'2025-04-14 13:13:46',26,28,93,4),(309,'2025-04-04 02:08:23',74,36,80,5),(310,'2025-04-13 18:29:09',168,22,66,5),(311,'2025-04-26 12:53:20',152,2,13,3),(312,'2025-01-18 03:16:35',136,46,65,3),(313,'2025-02-08 02:17:38',49,15,10,5),(314,'2025-01-14 06:59:03',146,6,25,2),(315,'2025-01-27 12:48:28',16,43,74,5),(316,'2025-01-29 15:33:08',162,23,41,4),(317,'2025-03-01 12:37:57',145,49,40,2),(318,'2025-02-10 09:24:50',47,39,44,1),(319,'2025-05-04 21:40:44',145,28,80,1),(320,'2025-01-25 12:31:36',94,10,67,1),(321,'2025-01-12 17:13:54',51,30,48,4),(322,'2025-03-04 12:25:57',41,21,6,5),(323,'2025-02-21 22:04:45',76,26,100,1),(324,'2025-05-04 07:18:25',61,43,28,5),(325,'2025-04-12 19:33:10',129,21,58,3),(326,'2025-02-10 10:45:18',36,1,35,3),(327,'2025-05-06 16:46:55',66,20,13,1),(328,'2025-01-01 03:12:33',114,44,17,1),(329,'2025-04-12 22:36:13',18,4,36,2),(330,'2025-03-05 03:07:32',129,48,56,1),(331,'2025-02-11 09:39:54',121,29,52,2),(332,'2025-03-14 12:15:45',15,24,100,3),(333,'2025-04-08 07:38:38',53,45,71,1),(334,'2025-02-07 16:59:00',87,27,91,2),(335,'2025-05-10 06:44:41',99,30,100,2),(336,'2025-01-07 16:28:41',66,39,98,2),(337,'2025-02-17 09:14:25',175,11,87,3),(338,'2025-04-03 08:43:47',81,47,79,2),(339,'2025-02-26 19:39:30',40,9,31,3),(340,'2025-02-03 15:49:47',58,2,48,5),(341,'2025-01-05 18:26:50',158,20,94,4),(342,'2025-01-19 13:50:21',17,19,2,1),(343,'2025-05-08 07:35:16',14,8,89,1),(344,'2025-03-23 01:51:57',49,26,87,3),(345,'2025-01-10 00:26:30',7,19,90,1),(346,'2025-03-29 23:59:49',142,34,86,3),(347,'2025-04-05 21:55:14',129,15,8,1),(348,'2025-01-07 08:33:25',57,40,43,3),(349,'2025-02-16 03:12:51',102,8,66,3),(350,'2025-02-28 22:16:03',48,14,28,3),(351,'2025-04-28 04:53:39',55,17,84,1),(352,'2025-02-14 02:29:23',152,24,67,1),(353,'2025-05-11 17:54:58',7,32,10,1),(354,'2025-03-28 16:50:56',144,2,22,3),(355,'2025-01-29 03:51:18',32,41,7,4),(356,'2025-02-16 11:55:33',140,25,79,5),(357,'2025-01-24 14:36:30',15,19,31,5),(358,'2025-01-09 16:07:37',42,12,41,1),(359,'2025-04-09 07:04:39',31,48,75,3),(360,'2025-02-10 23:09:08',24,33,25,1),(361,'2025-02-14 13:32:56',96,36,86,4),(362,'2025-05-17 14:26:53',61,11,85,4),(363,'2025-03-07 09:06:49',22,28,35,5),(364,'2025-03-23 21:50:52',40,49,37,1),(365,'2025-05-02 04:46:38',158,33,71,3),(366,'2025-01-11 16:22:57',140,32,30,4),(367,'2025-01-04 05:09:14',57,18,68,1),(368,'2025-01-13 23:13:32',122,44,53,1),(369,'2025-04-23 07:02:07',170,22,2,2),(370,'2025-01-15 18:50:14',134,23,63,1),(371,'2025-05-02 02:21:26',149,50,33,2),(372,'2025-03-22 22:51:20',13,33,16,3),(373,'2025-04-10 15:53:57',140,29,89,2),(374,'2025-03-29 01:43:22',87,16,63,4),(375,'2025-04-10 19:30:46',136,30,84,5),(376,'2025-01-25 08:50:08',152,13,1,1),(377,'2025-02-16 20:44:24',78,11,36,3),(378,'2025-02-10 03:42:12',107,8,59,4),(379,'2025-02-19 20:50:59',34,34,36,2),(380,'2025-03-31 16:27:07',75,23,75,5),(381,'2025-02-04 06:40:56',119,15,33,1),(382,'2025-02-21 16:52:48',166,8,11,1),(383,'2025-03-02 04:46:27',71,37,67,2),(384,'2025-03-31 16:08:21',17,50,88,3),(385,'2025-01-27 19:46:39',48,2,19,4),(386,'2025-05-13 09:16:58',89,19,40,4),(387,'2025-01-24 00:44:09',88,48,20,5),(388,'2025-01-04 01:04:50',132,50,96,3),(389,'2025-05-07 01:39:41',15,32,44,1),(390,'2025-04-02 19:40:18',125,29,56,5),(391,'2025-02-20 12:14:48',14,20,6,3),(392,'2025-03-15 22:28:17',43,13,92,1),(393,'2025-01-25 01:04:33',42,42,62,4),(394,'2025-03-28 22:21:33',27,23,73,2),(395,'2025-02-11 09:54:57',171,10,68,4),(396,'2025-01-12 10:37:21',155,47,57,5),(397,'2025-02-06 03:55:17',92,26,31,4),(398,'2025-02-25 00:19:52',126,26,95,4),(399,'2025-04-18 22:53:29',162,4,88,2),(400,'2025-01-27 04:59:53',85,32,4,4);
/*!40000 ALTER TABLE `visualizacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbnetf'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-19 14:58:51

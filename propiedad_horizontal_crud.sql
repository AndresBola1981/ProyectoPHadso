-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: propiedad_horizontal_crud
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administradores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `correo` varchar(70) DEFAULT NULL,
  `contraseña` varchar(70) DEFAULT NULL,
  `conjunto_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_UNIQUE` (`correo`),
  KEY `fk_administradores_conjunto1_idx` (`conjunto_id`),
  CONSTRAINT `fk_administradores_conjunto1` FOREIGN KEY (`conjunto_id`) REFERENCES `conjuntos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` VALUES (16,'Carlos Fabian','Cardenas Ramos','cfcr2584@gmail.com','$2y$10$JIPGX6mE3N/WFGTII.90k.QXdBzz1GqrXVQ.GWUR4X47iq5/rVoya',1),(17,' Jeimmy','Cardenas','Jeimmy@gmail.com','$2y$10$3Jj7T67EvJo6I9g0T7vlMe3jz80T4wGwjHQnQMSCEYCKTrr4PI0Ru',2),(18,' Jeimmy','Cardenas','Jeimmy45@gmail.com','1234',6);
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `año`
--

DROP TABLE IF EXISTS `año`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `año` (
  `año` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `año`
--

LOCK TABLES `año` WRITE;
/*!40000 ALTER TABLE `año` DISABLE KEYS */;
INSERT INTO `año` VALUES ('2024'),('2025'),('2026'),('2027'),('2028'),('2029'),('2030');
/*!40000 ALTER TABLE `año` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conjuntos`
--

DROP TABLE IF EXISTS `conjuntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conjuntos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombreconjunto` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conjuntos`
--

LOCK TABLES `conjuntos` WRITE;
/*!40000 ALTER TABLE `conjuntos` DISABLE KEYS */;
INSERT INTO `conjuntos` VALUES (1,'Cuidad Naranja','Calle 63 # 32 - 42 ','6017007777'),(2,'Cuidad Verde','Kr 2 # 100 10','3133113333'),(6,' Cuidad Gris','Kr 8 este # 112 14 sur','7311303 ');
/*!40000 ALTER TABLE `conjuntos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactenos`
--

DROP TABLE IF EXISTS `contactenos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactenos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `nombredelconjunto` varchar(100) DEFAULT NULL,
  `ayudarlo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactenos`
--

LOCK TABLES `contactenos` WRITE;
/*!40000 ALTER TABLE `contactenos` DISABLE KEYS */;
INSERT INTO `contactenos` VALUES (6,' Andres','Bolaños','andres@gmail.com','3057895387','Soacha Resort','Soacha ResortSoacha ResortSoacha Resort '),(7,' Andres','Bolaños','andres@gmail.com','3057895387','Soacha Resort','Soacha ResortSoacha ResortSoacha Resort '),(8,' Andres','Bolaños','andres@gmail.com','3057895387','Soacha Resort','Soacha ResortSoacha ResortSoacha Resort '),(9,' Andres','Bolaños','andres@gmail.com','3057895387','puerta al llano','puerta al llanopuerta al llanopuerta al llano '),(10,' carlos','cardenas','cfcr2584@gmail.com','3057895386','puerta al llano','quiero saber del sofwares ');
/*!40000 ALTER TABLE `contactenos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `estado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES ('DEBE'),('PAGO');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes`
--

DROP TABLE IF EXISTS `mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes` (
  `mes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes`
--

LOCK TABLES `mes` WRITE;
/*!40000 ALTER TABLE `mes` DISABLE KEYS */;
INSERT INTO `mes` VALUES ('Enero'),('Febrero'),('Marzo'),('Abril'),('Mayo'),('Junio'),('Julio'),('Agosto'),('Septiembre'),('Octubre'),('Noviembre'),('Diciembre');
/*!40000 ALTER TABLE `mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `año` varchar(45) DEFAULT NULL,
  `mes` varchar(45) DEFAULT NULL,
  `valor` int DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `residentes_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pagos_residentes_FK` (`residentes_id`),
  CONSTRAINT `pagos_residentes_FK` FOREIGN KEY (`residentes_id`) REFERENCES `residentes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,'2025','Junio',2500,'PAGO',5),(4,'2024','Julio',25000,'DEBE',4),(5,'2024','Agosto',30000,'DEBE',4),(6,'2024','Septiembre',550000,'DEBE',4),(9,' 2024','Agosto',3000,'DEBE',11),(10,' 2024','Julio',550000,'DEBE',5);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residentes`
--

DROP TABLE IF EXISTS `residentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residentes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `correo` varchar(70) DEFAULT NULL,
  `contraseña` varchar(70) DEFAULT NULL,
  `conjunto_id` int NOT NULL,
  `apartamento` varchar(45) DEFAULT NULL,
  `parqueadero` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cuota` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_UNIQUE` (`correo`),
  UNIQUE KEY `celular_UNIQUE` (`celular`),
  KEY `fk_residentes_conjunto1_idx` (`conjunto_id`),
  CONSTRAINT `fk_residentes_conjunto1` FOREIGN KEY (`conjunto_id`) REFERENCES `conjuntos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residentes`
--

LOCK TABLES `residentes` WRITE;
/*!40000 ALTER TABLE `residentes` DISABLE KEYS */;
INSERT INTO `residentes` VALUES (4,'Andres','Bolaños','3132805139','andres@gmail.com','$2y$10$0QzV0aRQGzYn481o4bh9XuA1vLzXpEA7Ln0ZiGpFYlIk6Djw1mZlK',2,'101',NULL,NULL),(5,'Juan','Perez','3132805138','Juan@gmail.com','$2y$10$8mLpcQ31DOuagjTsiXf41.GsI9mZ4j1PQs5JoW4TS25gQqosY34pC',1,'102','201',30),(6,'Edier','Ramos','3132805137','edier@gmail.com','$2y$10$kvZl5bSeJjPTmg5thyV5me4ySIUWKFceDIqXAhNSS742hiD72lRJW',2,'120',NULL,NULL),(7,' Jeimmy','Cardenas','3057895386','jeimmy@gmail.com','$2y$10$NNgc6zypLNYSjtNkG1xAd.NeCsUdsXygbTBxwzEjpoFHmsJv017Ai',6,'200','200',10),(10,' Fabian','Cardenas','3057895385','fabian@gmail.com','$2y$10$j78Ds929QJV0.JLB82Fd3uPTeiS7ZZUl.MldGXzJSyS2roVec/CnS',6,'201','201',25000),(11,' Angela Liliana','Peña','3057895384','angela@gmail.com','$2y$10$U3fOYTDjd1y/nB7cx8ErfeypUW8nmGidYTh1b2pkqgI1WFPsrOCZ6',1,'200','201',4);
/*!40000 ALTER TABLE `residentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `superadministradores`
--

DROP TABLE IF EXISTS `superadministradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `superadministradores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(60) DEFAULT NULL,
  `apellidos` varchar(60) DEFAULT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `contraseña` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_UNIQUE` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superadministradores`
--

LOCK TABLES `superadministradores` WRITE;
/*!40000 ALTER TABLE `superadministradores` DISABLE KEYS */;
INSERT INTO `superadministradores` VALUES (1,'Carlos Fabian','Cardenas Ramos','cfcr2584@gmail.com','$2y$10$uqEfDf6iN0TsAdNeokyWJO/Ls.gT61Vc5xUMZFwPqRhOFNm4n75xS'),(8,' Jeimmy','Cardenas','Jeimmy@gmail.com','1234 ');
/*!40000 ALTER TABLE `superadministradores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-19 20:03:58

-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: almingo
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Table structure for table `cliente_empresa`
--

DROP TABLE IF EXISTS `cliente_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_empresa` (
  `id_empresa` int NOT NULL AUTO_INCREMENT,
  `NIF` varchar(10) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `ciudad` varchar(60) NOT NULL,
  `CP` varchar(10) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_empresa`
--

LOCK TABLES `cliente_empresa` WRITE;
/*!40000 ALTER TABLE `cliente_empresa` DISABLE KEYS */;
INSERT INTO `cliente_empresa` VALUES (1,'A-58963578','Good Apps S.A.','Calle Principal, 15','Madrid','28001','España','912345672','info@goodapps.com'),(2,'B-65789236','Info Techs S.L.','Avenida Central, 28','Barcelona','08005','España','934567890','contact@infotechs.com'),(3,'A-15698788','Corporación Tecnológica S.A.','Plaza Central, 3','Sevilla','41001','España','955678901','contact@corporaciontecno.com'),(4,'B-88965423','Innovations S.L.','Avenida del Norte, 25','San Sebastián','20001','España','943234567','contacto@innovations.com'),(5,'B-85696324','Mobile Apps S.L.','Calle Sabino Arana, 1','Bilbao','48001','España','944123456','info@mobapps.com'),(6,'A-65789884','New Techs S.A.','Calle Lehendakari Aguirre, 8','Vitoria-Gasteiz','01001','España','945345678','info@newtechs.com');
/*!40000 ALTER TABLE `cliente_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_particular`
--

DROP TABLE IF EXISTS `cliente_particular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_particular` (
  `id_particular` int NOT NULL AUTO_INCREMENT,
  `DNI` varchar(10) NOT NULL,
  `nombre_particular` varchar(45) NOT NULL,
  `apellido_1` varchar(45) NOT NULL,
  `apellido_2` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) NOT NULL,
  `ciudad` varchar(60) NOT NULL,
  `CP` varchar(10) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_particular`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_particular`
--

LOCK TABLES `cliente_particular` WRITE;
/*!40000 ALTER TABLE `cliente_particular` DISABLE KEYS */;
INSERT INTO `cliente_particular` VALUES (1,'12345678A','Juan','Pérez','Gómez','Calle Mayor, 3','Madrid','28001','España','+34 611223344','juanperez@gmail.com'),(2,'23456789B','María','López','García','Avenida Libertad, 5','Barcelona','08005','España','+34 622334455','marialopez@hotmail.com'),(3,'34567890C','Antonio','Martínez','Rodríguez','Plaza del Sol, 2','Sevilla','41001','España','+34 633445566','antoniomartinez@yahoo.com'),(4,'1234567AB','Liam','Murphy',NULL,'12 Main Street','Dublín','D01X4C','Irlanda','+353 658742023','liammurphy@email.com'),(5,'2345678BC','Michelle','Kelly',NULL,'45 Park Avenue','Cork','T12Y6F','Irlanda','+353 630156789','michellekelly@email.com'),(6,'56789012E','Ane','Etxebarria','Escudero','Euskalduna Etorb., 5','Bilbao','48009','España','+34 689566300','aneetxebarria@gmail.com');
/*!40000 ALTER TABLE `cliente_particular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `id_contrato` int NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `salario` decimal(6,2) NOT NULL,
  `id_tipo_contrato` int NOT NULL,
  `id_trabajador` int NOT NULL,
  PRIMARY KEY (`id_contrato`),
  KEY `id_tipo_contrato` (`id_tipo_contrato`),
  KEY `id_trabajador` (`id_trabajador`),
  CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`id_tipo_contrato`) REFERENCES `tipo_contrato` (`id_tipo_contrato`),
  CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajador` (`id_trabajador`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,'2023-04-01','2024-04-30',1700.00,2,1),(2,'2023-01-15','2024-01-14',1700.00,2,2),(3,'2022-11-10','2023-12-09',1700.00,6,3),(4,'2021-02-01',NULL,1800.00,1,4),(5,'2020-03-15',NULL,2000.00,1,5),(6,'2022-06-13',NULL,1800.00,1,6),(7,'2020-07-18',NULL,1800.00,1,7),(8,'2022-09-26',NULL,1800.00,1,8),(9,'2022-12-26',NULL,1800.00,1,9);
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id_departamento` int NOT NULL AUTO_INCREMENT,
  `nombre_departamento` varchar(45) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Departamento de Ventas','941862543','ventas@almingo.com'),(2,'Departamento de Desarrollo Móvil','945681269','desarrollo_movil@almingo.com'),(3,'Departamento de Desarrollo Web','943578621','desarrollo_web@almingo.com'),(4,'Departamento de Calidad de Software','948753621','calidad_software@almingo.com'),(5,'Departamento de Soporte Técnico','946621458','soporte_tecnico@almingo.com'),(6,'Departamento de Recursos Humanos','948668427','rrhh@almingo.com'),(7,'Departamento de Finanzas','948862318','finanzas@almingo.com'),(8,'Departamento de Marketing','942741332','marketing@almingo.com'),(9,'Departamento de Atención al Cliente','945226789','atencion_cliente@almingo.com');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo_trabajo`
--

DROP TABLE IF EXISTS `equipo_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo_trabajo` (
  `id_equipo_trabajo` int NOT NULL AUTO_INCREMENT,
  `nombre_equipo_trabajo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_equipo_trabajo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo_trabajo`
--

LOCK TABLES `equipo_trabajo` WRITE;
/*!40000 ALTER TABLE `equipo_trabajo` DISABLE KEYS */;
INSERT INTO `equipo_trabajo` VALUES (1,'Equipo A'),(2,'Equipo B'),(3,'Equipo C'),(4,'Equipo D'),(5,'Equipo E'),(6,'Equipo F'),(7,'Equipo G');
/*!40000 ALTER TABLE `equipo_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenador`
--

DROP TABLE IF EXISTS `ordenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenador` (
  `id_ordenador` int NOT NULL AUTO_INCREMENT,
  `modelo_ordenador` varchar(50) NOT NULL,
  `memoria_RAM` varchar(40) NOT NULL,
  `procesador` varchar(50) NOT NULL,
  `tarjeta_grafica` varchar(50) NOT NULL,
  `almacenamiento` varchar(40) NOT NULL,
  `stock` int NOT NULL,
  `precio` decimal(9,2) NOT NULL,
  `id_sistema_operativo` int NOT NULL,
  PRIMARY KEY (`id_ordenador`),
  KEY `id_sistema_operativo` (`id_sistema_operativo`),
  CONSTRAINT `ordenador_ibfk_1` FOREIGN KEY (`id_sistema_operativo`) REFERENCES `sistema_operativo` (`id_sistema_operativo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenador`
--

LOCK TABLES `ordenador` WRITE;
/*!40000 ALTER TABLE `ordenador` DISABLE KEYS */;
INSERT INTO `ordenador` VALUES (1,'Dell XPS 15','16 GB','Intel Core i7-11800H','NVIDIA GeForce RTX 3050 Ti','512 GB SSD',25,1399.99,1),(2,'MacBook Pro 16\"','32 GB','Apple M1 Max','AMD Radeon Pro 6600M','1 TB SSD',15,2499.99,5),(3,'Lenovo ThinkPad X1 Carbon','16 GB','Intel Core i7-1165G7','Intel Iris Xe Graphics','512 GB SSD',30,1199.99,1),(4,'HP Spectre x360','16 GB','Intel Core i7-1165G7','Intel Iris Xe Graphics','1 TB SSD',25,1499.99,1),(5,'Asus ROG Zephyrus G14','16 GB','AMD Ryzen 9 5900HS','NVIDIA GeForce RTX 3060','1 TB SSD',10,1799.99,1),(6,'System76 Oryx Pro','32 GB','Intel Core i7-10875H','NVIDIA GeForce RTX 3080','2 TB SSD',12,2999.99,2),(7,'MacBook Air','8 GB','Apple M1','Integrada en Apple M1','256 GB SSD',40,999.99,5),(8,'System76 Galago Pro','32 GB','Intel Core i7-1165G7','Intel Iris Xe Graphics','1 TB SSD',15,1599.99,4),(9,'Dell XPS 13','16 GB','Intel Core i5-1135G7','Intel Iris Xe Graphics','512 GB SSD',20,1399.99,3),(10,'HP Elite Dragonfly','16 GB','Intel Core i7-10610U','Intel UHD Graphics','512 GB SSD',10,1699.99,3);
/*!40000 ALTER TABLE `ordenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periferico`
--

DROP TABLE IF EXISTS `periferico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `periferico` (
  `id_periferico` int NOT NULL AUTO_INCREMENT,
  `modelo_periferico` varchar(45) NOT NULL,
  `stock` int NOT NULL,
  `precio` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_periferico`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periferico`
--

LOCK TABLES `periferico` WRITE;
/*!40000 ALTER TABLE `periferico` DISABLE KEYS */;
INSERT INTO `periferico` VALUES (1,'Teclado Logitech K750',50,45.99),(2,'Ratón Microsoft Surface',80,34.50),(3,'Monitor Samsung Odyssey',30,249.99),(4,'Auriculares Razer Nari',60,89.99),(5,'Teclado Logitech Pro',50,129.99),(6,'Apple Magic Mouse 2',50,79.99),(7,'Monitor Dell UltraSharp U2720Q',50,599.99);
/*!40000 ALTER TABLE `periferico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `id_proyecto` int NOT NULL AUTO_INCREMENT,
  `nombre_proyecto` varchar(50) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `precio` decimal(9,2) NOT NULL,
  `id_servicio` int NOT NULL,
  PRIMARY KEY (`id_proyecto`),
  KEY `fk_servicio` (`id_servicio`),
  CONSTRAINT `fk_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,'Aplicación de Redes Sociales','2023-03-10','2023-09-30',45000.00,3),(2,'Sistema de Gestión de Ventas','2023-01-15','2023-06-30',35000.00,1),(3,'Plataforma de Comercio Electrónico','2023-05-01','2023-11-30',55000.00,1),(4,'Aplicación de Salud y Bienestar','2023-02-20','2023-08-15',40000.00,2),(5,'Software de Gestión de Proyectos','2023-04-05','2023-10-31',50000.00,1),(6,'Aplicación de Bingo Folingo','2023-11-02',NULL,20000.00,3);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto`
--

DROP TABLE IF EXISTS `puesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puesto` (
  `id_puesto` int NOT NULL AUTO_INCREMENT,
  `nombre_puesto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_puesto`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto`
--

LOCK TABLES `puesto` WRITE;
/*!40000 ALTER TABLE `puesto` DISABLE KEYS */;
INSERT INTO `puesto` VALUES (1,'Desarrollador de Software Front-end'),(2,'Desarrollador de Software Back-end'),(3,'Diseñador de UX/UI'),(4,'Ingeniero DevOps'),(5,'Ingeniero de Bases de Datos'),(6,'Desarrollador de Aplicaciones Móviles'),(7,'Especialista en IA'),(8,'Ingeniero Full Stack'),(9,'Gerente de Ventas'),(10,'Analista de Datos de Ventas'),(11,'Especialista en Soporte Técnico'),(12,'Técnico de Servicio al Cliente'),(13,'Gerente de Recursos Humanos'),(14,'Gerente de Finanzas'),(15,'Analista Financiero'),(16,'Gerente de Marketing'),(17,'Coordinador de Redes Sociales'),(18,'Especialista en Marketing Digital'),(19,'Especialista en Experiencia del Cliente');
/*!40000 ALTER TABLE `puesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurso`
--

DROP TABLE IF EXISTS `recurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recurso` (
  `id_recurso` int NOT NULL AUTO_INCREMENT,
  `id_ordenador` int DEFAULT NULL,
  `id_periferico` int DEFAULT NULL,
  PRIMARY KEY (`id_recurso`),
  KEY `fk_ordenador` (`id_ordenador`),
  KEY `fk_periferico` (`id_periferico`),
  CONSTRAINT `fk_ordenador` FOREIGN KEY (`id_ordenador`) REFERENCES `ordenador` (`id_ordenador`),
  CONSTRAINT `fk_periferico` FOREIGN KEY (`id_periferico`) REFERENCES `periferico` (`id_periferico`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurso`
--

LOCK TABLES `recurso` WRITE;
/*!40000 ALTER TABLE `recurso` DISABLE KEYS */;
INSERT INTO `recurso` VALUES (1,1,NULL),(2,2,NULL),(3,3,NULL),(4,4,NULL),(5,5,NULL),(6,6,NULL),(7,7,NULL),(8,8,NULL),(9,9,NULL),(10,10,NULL),(11,NULL,1),(12,NULL,2),(13,NULL,3),(14,NULL,4),(15,NULL,5),(16,NULL,6),(17,NULL,7);
/*!40000 ALTER TABLE `recurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurso_proyecto`
--

DROP TABLE IF EXISTS `recurso_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recurso_proyecto` (
  `id_recurso_proyecto` int NOT NULL AUTO_INCREMENT,
  `id_recurso` int NOT NULL,
  `id_proyecto` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id_recurso_proyecto`),
  KEY `id_recurso` (`id_recurso`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `recurso_proyecto_ibfk_1` FOREIGN KEY (`id_recurso`) REFERENCES `recurso` (`id_recurso`),
  CONSTRAINT `recurso_proyecto_ibfk_2` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurso_proyecto`
--

LOCK TABLES `recurso_proyecto` WRITE;
/*!40000 ALTER TABLE `recurso_proyecto` DISABLE KEYS */;
INSERT INTO `recurso_proyecto` VALUES (1,5,1,2),(2,5,1,3),(3,3,2,4),(4,1,2,1),(5,10,3,6),(6,11,3,6),(7,7,3,6),(8,7,4,8),(9,16,4,8),(10,1,5,5),(11,17,5,5),(12,6,5,4),(13,2,6,4),(14,16,6,4),(15,8,6,5),(16,4,6,12);
/*!40000 ALTER TABLE `recurso_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `denominacion_servicio` varchar(50) NOT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Desarrollo de Software'),(2,'Desarrollo de Aplicaciones Móviles'),(3,'Desarrollo de Aplicaciones Web');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistema_operativo`
--

DROP TABLE IF EXISTS `sistema_operativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sistema_operativo` (
  `id_sistema_operativo` int NOT NULL AUTO_INCREMENT,
  `nombre_sistema_operativo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_sistema_operativo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistema_operativo`
--

LOCK TABLES `sistema_operativo` WRITE;
/*!40000 ALTER TABLE `sistema_operativo` DISABLE KEYS */;
INSERT INTO `sistema_operativo` VALUES (1,'Windows'),(2,'Ubuntu'),(3,'Fedora'),(4,'Debian'),(5,'macOs');
/*!40000 ALTER TABLE `sistema_operativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ternaria_proyecto`
--

DROP TABLE IF EXISTS `ternaria_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ternaria_proyecto` (
  `id_ternaria_proyecto` int NOT NULL AUTO_INCREMENT,
  `inicio_trabajador_proyecto` date NOT NULL,
  `fin_trabajador_proyecto` date DEFAULT NULL,
  `inicio_trabajador_equipo` date NOT NULL,
  `fin_trabajador_equipo` date DEFAULT NULL,
  `id_trabajador` int NOT NULL,
  `id_equipo_trabajo` int NOT NULL,
  `id_proyecto` int NOT NULL,
  PRIMARY KEY (`id_ternaria_proyecto`),
  KEY `id_trabajador` (`id_trabajador`),
  KEY `id_equipo_trabajo` (`id_equipo_trabajo`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `ternaria_proyecto_ibfk_1` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajador` (`id_trabajador`),
  CONSTRAINT `ternaria_proyecto_ibfk_2` FOREIGN KEY (`id_equipo_trabajo`) REFERENCES `equipo_trabajo` (`id_equipo_trabajo`),
  CONSTRAINT `ternaria_proyecto_ibfk_3` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ternaria_proyecto`
--

LOCK TABLES `ternaria_proyecto` WRITE;
/*!40000 ALTER TABLE `ternaria_proyecto` DISABLE KEYS */;
INSERT INTO `ternaria_proyecto` VALUES (1,'2023-03-10','2023-09-30','2023-01-08',NULL,1,1,1),(2,'2023-03-10','2023-07-30','2023-01-08',NULL,2,1,1),(3,'2023-01-15','2023-06-30','2023-02-02',NULL,3,2,2),(4,'2023-01-15','2023-05-18','2023-02-02','2023-05-18',4,2,2),(5,'2023-07-31','2023-10-31','2023-07-31',NULL,2,5,2),(6,'2023-05-01','2023-11-30','2023-01-18',NULL,5,3,3),(7,'2023-05-01','2023-11-30','2022-12-23','2023-12-01',6,4,3),(8,'2023-02-20','2023-08-15','2022-12-23',NULL,7,4,4),(9,'2023-04-05','2023-10-31','2023-01-10',NULL,8,5,5),(10,'2023-10-01','2023-10-31','2023-01-08',NULL,1,1,5),(11,'2023-11-02',NULL,'2023-02-06',NULL,9,6,6),(12,'2023-11-02',NULL,'2023-02-02',NULL,3,2,6);
/*!40000 ALTER TABLE `ternaria_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_contrato`
--

DROP TABLE IF EXISTS `tipo_contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_contrato` (
  `id_tipo_contrato` int NOT NULL AUTO_INCREMENT,
  `denominacion_tipo_contrato` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipo_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_contrato`
--

LOCK TABLES `tipo_contrato` WRITE;
/*!40000 ALTER TABLE `tipo_contrato` DISABLE KEYS */;
INSERT INTO `tipo_contrato` VALUES (1,'Contrato Indefinido'),(2,'Contrato Temporal'),(3,'Contrato de Formación y Aprendizaje'),(4,'Contrato en Prácticas'),(5,'Contrato a Tiempo Parcial'),(6,'Contrato de Relevo'),(7,'Contrato de Interinidad');
/*!40000 ALTER TABLE `tipo_contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajador`
--

DROP TABLE IF EXISTS `trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajador` (
  `id_trabajador` int NOT NULL AUTO_INCREMENT,
  `DNI` varchar(10) NOT NULL,
  `nombre_trabajador` varchar(45) NOT NULL,
  `apellido_1` varchar(45) NOT NULL,
  `apellido_2` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) NOT NULL,
  `ciudad` varchar(60) NOT NULL,
  `CP` varchar(10) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `id_departamento` int NOT NULL,
  PRIMARY KEY (`id_trabajador`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `trabajador_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajador`
--

LOCK TABLES `trabajador` WRITE;
/*!40000 ALTER TABLE `trabajador` DISABLE KEYS */;
INSERT INTO `trabajador` VALUES (1,'95685201V','Aitor','Etxebarria','Gómez','Calle Mayor, 10','Bilbao','48001','España','+34 623589514','aitor.etxebarria@gmail.com',2),(2,'58963020Z','Maite','Mendizabal','Landa','Avenida Libertad, 25','San Sebastián','20001','España','+34 612345679','maite.mendizabal@gmail.com',4),(3,'96305668L','Nerea','Zubizarreta','Etxeberria','Plaza Central, 5','Vitoria-Gasteiz','01001','España','+34 612345670','nerea.zubizarreta@gmail.com',4),(4,'75230148P','Jon','Urrutia','García','Calle Gran Vía, 12','Bilbao','48002','España','+34 612345671','jon.urrutia@gmail.com',3),(5,'89630024Y','Iñaki','Pérez','Gómez','Avenida Libertad, 18','Barakaldo','48901','España','+34 612345672','inaki.perez@gmail.com',3),(6,'96322014T','Ane','Garmendia','Sánchez','Plaza del Mar, 5','Getxo','48991','España','+34 612345673','ane.garmendia@email.com',3),(7,'69855320S','Maider','Ortega','Etxebarria','Avenida de la Libertad, 35','Leioa','48940','España','+34 612345675','maider.ortega@gmail.com',2),(8,'12698548D','Jorge','Fernández','Zubizarreta','Calle Mayor, 8','Portugalete','48920','España','+34 612345674','jorge.f@gmail.com',8),(9,'98566356R','Sofía','Vergara','Rodríguez','Plaza Central, 1','Mungia','48100','España','+34 612345676','sofia.vrod@gmail.com',6);
/*!40000 ALTER TABLE `trabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajador_puesto`
--

DROP TABLE IF EXISTS `trabajador_puesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajador_puesto` (
  `id_trabajador_puesto` int NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `id_trabajador` int NOT NULL,
  `id_puesto` int NOT NULL,
  PRIMARY KEY (`id_trabajador_puesto`),
  KEY `id_trabajador` (`id_trabajador`),
  KEY `id_puesto` (`id_puesto`),
  CONSTRAINT `trabajador_puesto_ibfk_1` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajador` (`id_trabajador`),
  CONSTRAINT `trabajador_puesto_ibfk_2` FOREIGN KEY (`id_puesto`) REFERENCES `puesto` (`id_puesto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajador_puesto`
--

LOCK TABLES `trabajador_puesto` WRITE;
/*!40000 ALTER TABLE `trabajador_puesto` DISABLE KEYS */;
INSERT INTO `trabajador_puesto` VALUES (1,'2023-04-01','2024-04-30',1,6),(2,'2023-01-15','2024-01-14',2,8),(3,'2022-11-10','2023-12-09',3,2),(4,'2021-02-01',NULL,4,3),(5,'2020-03-15',NULL,5,1),(6,'2022-06-13',NULL,6,3),(7,'2020-07-18',NULL,7,6),(8,'2022-09-26',NULL,8,16),(9,'2022-12-26',NULL,9,13);
/*!40000 ALTER TABLE `trabajador_puesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_empresa`
--

DROP TABLE IF EXISTS `venta_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_empresa` (
  `id_venta_empresa` int NOT NULL AUTO_INCREMENT,
  `precio_final` decimal(9,2) NOT NULL,
  `fecha_venta` date NOT NULL,
  `id_proyecto` int NOT NULL,
  `id_empresa` int NOT NULL,
  PRIMARY KEY (`id_venta_empresa`),
  KEY `id_proyecto` (`id_proyecto`),
  KEY `id_empresa` (`id_empresa`),
  CONSTRAINT `venta_empresa_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`),
  CONSTRAINT `venta_empresa_ibfk_2` FOREIGN KEY (`id_empresa`) REFERENCES `cliente_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_empresa`
--

LOCK TABLES `venta_empresa` WRITE;
/*!40000 ALTER TABLE `venta_empresa` DISABLE KEYS */;
INSERT INTO `venta_empresa` VALUES (1,45000.00,'2023-10-01',1,1),(2,35000.00,'2023-07-01',2,2),(3,55000.00,'2023-12-01',3,3),(4,40000.00,'2023-08-16',4,5),(5,50000.00,'2023-11-02',5,4),(6,50000.00,'2023-12-13',5,6),(7,40000.00,'2023-08-24',4,1),(8,45000.00,'2023-10-26',1,5);
/*!40000 ALTER TABLE `venta_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_particular`
--

DROP TABLE IF EXISTS `venta_particular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_particular` (
  `id_venta_particular` int NOT NULL AUTO_INCREMENT,
  `id_proyecto` int NOT NULL,
  `id_particular` int NOT NULL,
  `precio_final` decimal(9,2) NOT NULL,
  `fecha_venta` date NOT NULL,
  PRIMARY KEY (`id_venta_particular`),
  KEY `id_proyecto` (`id_proyecto`),
  KEY `id_particular` (`id_particular`),
  CONSTRAINT `venta_particular_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`),
  CONSTRAINT `venta_particular_ibfk_2` FOREIGN KEY (`id_particular`) REFERENCES `cliente_particular` (`id_particular`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_particular`
--

LOCK TABLES `venta_particular` WRITE;
/*!40000 ALTER TABLE `venta_particular` DISABLE KEYS */;
INSERT INTO `venta_particular` VALUES (1,1,6,45000.00,'2023-10-21'),(2,2,5,35000.00,'2023-07-13'),(3,3,4,55000.00,'2023-12-21'),(4,4,3,40000.00,'2023-11-18'),(5,5,2,50000.00,'2023-12-08'),(6,4,1,40000.00,'2023-10-08');
/*!40000 ALTER TABLE `venta_particular` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-14 14:17:30

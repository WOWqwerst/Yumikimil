CREATE DATABASE  IF NOT EXISTS `yumkimil` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `yumkimil`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: yumkimil
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `acceso`
--

DROP TABLE IF EXISTS `acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acceso` (
  `idAcceso` int NOT NULL AUTO_INCREMENT,
  `alumno` varchar(5) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`idAcceso`),
  UNIQUE KEY `idAcceso` (`idAcceso`),
  KEY `fk_acceso_alumno` (`alumno`),
  CONSTRAINT `fk_acceso_alumno` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `control` varchar(5) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `paterno` varchar(45) NOT NULL,
  `materno` varchar(45) DEFAULT '-',
  `passwd` varchar(64) NOT NULL,
  PRIMARY KEY (`control`),
  UNIQUE KEY `control` (`control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alumnocurso`
--

DROP TABLE IF EXISTS `alumnocurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnocurso` (
  `idAlumnoCurso` int NOT NULL AUTO_INCREMENT,
  `alumno` varchar(5) NOT NULL,
  `curso` int NOT NULL,
  PRIMARY KEY (`idAlumnoCurso`,`alumno`,`curso`),
  UNIQUE KEY `idAlumnoCurso` (`idAlumnoCurso`),
  KEY `fk_alumnocurso_alumno` (`alumno`),
  KEY `fk_alumnocurso_curso` (`curso`),
  CONSTRAINT `fk_alumnocurso_alumno` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`control`),
  CONSTRAINT `fk_alumnocurso_curso` FOREIGN KEY (`curso`) REFERENCES `curso` (`idCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `clave` varchar(8) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `carrera` varchar(7) NOT NULL,
  PRIMARY KEY (`clave`),
  UNIQUE KEY `clave` (`clave`),
  KEY `fk_asignatura_carrera` (`carrera`),
  CONSTRAINT `fk_asignatura_carrera` FOREIGN KEY (`carrera`) REFERENCES `carrera` (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera` (
  `clave` varchar(7) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`clave`),
  UNIQUE KEY `clave` (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cuatrimestre`
--

DROP TABLE IF EXISTS `cuatrimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuatrimestre` (
  `clave` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(6) NOT NULL,
  PRIMARY KEY (`clave`),
  UNIQUE KEY `clave` (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `idCurso` int NOT NULL AUTO_INCREMENT,
  `grupo` varchar(10) NOT NULL,
  `cuatrimestre` int NOT NULL,
  `turno` int NOT NULL,
  `asignatura` varchar(8) NOT NULL,
  PRIMARY KEY (`idCurso`),
  UNIQUE KEY `idCurso` (`idCurso`),
  KEY `fk_curso_grupo` (`grupo`),
  KEY `fk_curso_cuatrimestre` (`cuatrimestre`),
  KEY `fk_curso_turno` (`turno`),
  KEY `fk_curso_asignatura` (`asignatura`),
  CONSTRAINT `fk_curso_asignatura` FOREIGN KEY (`asignatura`) REFERENCES `asignatura` (`clave`),
  CONSTRAINT `fk_curso_cuatrimestre` FOREIGN KEY (`cuatrimestre`) REFERENCES `cuatrimestre` (`clave`),
  CONSTRAINT `fk_curso_grupo` FOREIGN KEY (`grupo`) REFERENCES `grupo` (`clave`),
  CONSTRAINT `fk_curso_turno` FOREIGN KEY (`turno`) REFERENCES `turno` (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `evaluacion`
--

DROP TABLE IF EXISTS `evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluacion` (
  `idEvaluacion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(7) NOT NULL,
  PRIMARY KEY (`idEvaluacion`),
  UNIQUE KEY `idEvaluacion` (`idEvaluacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `clave` varchar(10) NOT NULL,
  `descripcion` varchar(150) DEFAULT '-',
  PRIMARY KEY (`clave`),
  UNIQUE KEY `clave` (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seguridad`
--

DROP TABLE IF EXISTS `seguridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguridad` (
  `idSeguridad` int NOT NULL AUTO_INCREMENT,
  `alumno` varchar(5) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `llave` varchar(64) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `evaluacion` int NOT NULL,
  PRIMARY KEY (`idSeguridad`),
  UNIQUE KEY `idSeguridad` (`idSeguridad`),
  KEY `fk_seguridad_alumno` (`alumno`),
  KEY `fk_seguridad_evaluacion` (`evaluacion`),
  CONSTRAINT `fk_seguridad_alumno` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`control`),
  CONSTRAINT `fk_seguridad_evaluacion` FOREIGN KEY (`evaluacion`) REFERENCES `evaluacion` (`idEvaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turno` (
  `clave` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`clave`),
  UNIQUE KEY `clave` (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-16  0:15:32

-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.34 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for cms
CREATE DATABASE IF NOT EXISTS `cms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cms`;

-- Dumping structure for table cms.catergory
CREATE TABLE IF NOT EXISTS `catergory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cms.catergory: ~2 rows (approximately)
INSERT INTO `catergory` (`id`, `name`) VALUES
	(1, 'Tea'),
	(2, 'Coffee');

-- Dumping structure for table cms.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `catergory` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cms.product: ~2 rows (approximately)
INSERT INTO `product` (`id`, `name`, `catergory`, `price`) VALUES
	(1, 'Black', 'Coffee', '250'),
	(2, 'Cappuchino', 'Coffee', '550');

-- Dumping structure for table cms.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `securityQuestion` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cms.user: ~3 rows (approximately)
INSERT INTO `user` (`id`, `name`, `email`, `mobileNumber`, `address`, `password`, `securityQuestion`, `answer`, `status`) VALUES
	(1, 'Eshan Dissanayake', 'solidstufs@gmail.com', '0771523689', 'no 358 dasymount,pilessa', 'eshan10540', 'What is your pet name ?', 'tyson', 'false'),
	(2, 'Admin', 'admin@gmail.com', '1234567890', 'srilanka', 'admin1', 'What is your favourite colour?', 'blue', 'true'),
	(4, 'Anushka', 'car@gmail.com', '0771482530', 'SriLanka', '123', 'What is you nick name ?', 'tom', 'true');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
catergorycatergorycatergory
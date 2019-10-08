-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 08, 2019 at 02:40 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Logo` varchar(50) NOT NULL,
  `Video` varchar(50) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Description` text NOT NULL,
  `Picture1` varchar(50) NOT NULL,
  `Picture2` varchar(50) NOT NULL,
  `Picture3` varchar(50) NOT NULL,
  `Picture4` varchar(50) NOT NULL,
  `Picture5` varchar(50) NOT NULL,
  `Picture6` varchar(50) NOT NULL,
  `technical` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`ID`, `Logo`, `Video`, `Price`, `Description`, `Picture1`, `Picture2`, `Picture3`, `Picture4`, `Picture5`, `Picture6`, `technical`) VALUES
(1, 'images/thermoSecurity_logo.svg', 'video/thermoSecurityRender.mp4', '$ 250.00', 'HouseCom™ ThermoSecurity™ System is a fully digital, hardwired and wireless (WiFi, Bluetooth)\r\n					enabled home personal and secure environment control system. All communications with the central\r\n					system are accessible and controlled through the wall unit, product app. and the secured portal on the parent\r\n					website. The HouseCom™ ThermoSecurity™ System App. is available on both iOS and Android devices.\r\n					Whether you wish to adjust the temperature of your home from your Android or iPhone watch or access\r\n					the home security system on your phone to check in on the house occupancy through the remote, portable\r\n					cameras. You may wish to look for independent room temperatures, smoke and carbon monoxide status or\r\n					just open windows and unlocked doors for your return home.\r\n					All of this functionality and more are part of the capabilities of the HouseCom™ ThermoSecurity™ security\r\n					and environment system.', '/images/Smart Thermostat 1.jpg', '/images/Smart Thermostat 2.jpg', '/images/Smart Thermostat 3.jpg', '/images/Smart Thermostat 4.jpg', '/images/Smart Thermostat 6.jpg', '/images/Smart Thermostat 7.jpg', 'Here are a few features of HouseCom™ ThermoSecurity™ System.</br>\r\n					Proximity sensor: Actives system to on state when viewer is close.</br>\r\n					Facial recognition camera: To allow admin users to manipulate settings (child proofing)</br>\r\n					GUI: The ability increase/decrease the temperature difference between my heat/cool set-points.</br>\r\n					Comes with built-in Amazon Alexa Voice Service Regulates indoor humidity to prevent frost buildup on\r\n					outside windows. The ability to view Current indoor temperature, outdoor temperature, daily forecast, weekly\r\n					forecast.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

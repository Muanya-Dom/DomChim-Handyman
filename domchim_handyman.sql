-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 24, 2021 at 03:23 PM
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
-- Database: `domchim_handyman`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE IF NOT EXISTS `contactus` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `Message` varchar(20000) NOT NULL,
  `Email` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Email` varchar(250) NOT NULL,
  `Username` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `ServiceType` varchar(250) NOT NULL,
  `Postcode` varchar(100) NOT NULL,
  `Phonenumber` varchar(50) NOT NULL,
  `WhenToCallOption` varchar(100) NOT NULL,
  `Comment` varchar(10000) NOT NULL,
  `Email` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

DROP TABLE IF EXISTS `tools`;
CREATE TABLE IF NOT EXISTS `tools` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `Tool` varchar(250) NOT NULL,
  `Price` varchar(100) NOT NULL,
  `StartDate` varchar(50) NOT NULL,
  `EndDate` varchar(50) NOT NULL,
  `ToolOption` varchar(50) NOT NULL,
  `Postcode` varchar(50) NOT NULL,
  `Email` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

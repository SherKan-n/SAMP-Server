-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 19, 2016 at 07:49 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `redline`
--

CREATE DATABASE IF NOT EXISTS `redline` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `redline`;

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

DROP TABLE IF EXISTS `adminlog`;
CREATE TABLE IF NOT EXISTS `adminlog` (
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `entryTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tickcount` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `aplications`
--

DROP TABLE IF EXISTS `aplications`;
CREATE TABLE IF NOT EXISTS `aplications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `intrebarea1` varchar(255) NOT NULL,
  `status` int(69) NOT NULL DEFAULT '0',
  `factionid` int(69) NOT NULL DEFAULT '0',
  `playerid` int(69) NOT NULL,
  `intrebarea2` varchar(255) NOT NULL,
  `intrebarea3` varchar(255) NOT NULL,
  `intrebarea4` varchar(255) NOT NULL,
  `intrebarea5` varchar(255) NOT NULL,
  `intrebarea6` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `atms`
--

DROP TABLE IF EXISTS `atms`;
CREATE TABLE IF NOT EXISTS `atms` (
  `atmId` int(11) NOT NULL AUTO_INCREMENT,
  `atmPosX` float NOT NULL,
  `atmPosY` float NOT NULL,
  `atmPosZ` float NOT NULL,
  `atmPosRotX` float NOT NULL,
  `atmPosRotY` float NOT NULL,
  `atmPosRotZ` float NOT NULL,
  PRIMARY KEY (`atmId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Salvarea datelor din tabel `atms`
--

INSERT INTO `atms` (`atmId`, `atmPosX`, `atmPosY`, `atmPosZ`, `atmPosRotX`, `atmPosRotY`, `atmPosRotZ`) VALUES
(1, 1260.88, 209.302, 19.1976, 0, 0, 65.5046),
(2, 2303.46, -13.5396, 26.1273, 0, 0, 272.435),
(3, 2316.1, -88.5226, 26.1273, 0, 0, 0),
(4, 1155.62, -1464.91, 15.4432, 0, 0, 290.21),
(5, 387.166, -1816.05, 7.48341, 0, 0, 272.48),
(6, -24.385, -92.0011, 1003.19, 0, 0, 180.541),
(7, -31.8112, -58.106, 1003.19, 0, 0, 181.216),
(8, 1212.78, 2.45176, 1000.56, 0, 0, 0),
(9, 2324.4, -1644.94, 14.4699, 0, 0, 0),
(10, 651.193, -520.488, 15.9788, 0, 0, 0),
(11, 691.082, -618.562, 15.9788, 0, 0, 268.691),
(12, 45.7804, -291.809, 1.5024, 0, 0, 182.934),
(13, 173.235, -155.076, 1.22102, 0, 0, 89.73),
(14, 2065.44, -1897.55, 13.1967, 0, 0, 0),
(15, 2093.51, -1359.55, 23.6273, 0, 0, 0),
(16, 2139.45, -1164.08, 23.6351, 0, 0, 91.3095),
(17, 1482.78, -1010.34, 26.4866, 0, 0, 0),
(18, -1835.6, 63.2456, 1054.83, 0, 0, 270),
(19, 1275.8, 368.315, 19.1976, 0, 0, 73.7599);

-- --------------------------------------------------------

--
-- Table structure for table `banksuspensions`
--

DROP TABLE IF EXISTS `banksuspensions`;
CREATE TABLE IF NOT EXISTS `banksuspensions` (
  `transactionID` int(32) NOT NULL AUTO_INCREMENT,
  `suspendeeID` int(32) NOT NULL,
  `playerID` int(32) NOT NULL,
  `suspensionReason` varchar(128) NOT NULL,
  PRIMARY KEY (`transactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
CREATE TABLE IF NOT EXISTS `bans` (
  `banID` int(12) NOT NULL AUTO_INCREMENT,
  `playerNameBanned` varchar(24) NOT NULL,
  `playerBanReason` varchar(512) NOT NULL,
  `playerBanDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IPBanned` varchar(32) NOT NULL,
  `playerBannedBy` varchar(24) NOT NULL DEFAULT 'System',
  PRIMARY KEY (`banID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
CREATE TABLE IF NOT EXISTS `business` (
  `bizzID` int(12) NOT NULL AUTO_INCREMENT,
  `bExteriorPosX` float NOT NULL DEFAULT '0.0',
  `bExteriorPosY` float NOT NULL DEFAULT '0.0',
  `bExteriorPosZ` float NOT NULL DEFAULT '0.0',
  `bInteriorPosX` float NOT NULL DEFAULT '0.0',
  `bInteriorPosY` float NOT NULL DEFAULT '0.0',
  `bInteriorPosZ` float NOT NULL DEFAULT '0.0',
  `bInteriorID` int(4) NOT NULL DEFAULT '0',
  `bLevel` int(4) NOT NULL DEFAULT '7',
  `bOwned` int(2) NOT NULL DEFAULT '0',
  `bOwner` varchar(32) NOT NULL DEFAULT 'The State',
  `bName` varchar(65) NOT NULL DEFAULT 'De vanzare!',
  `bPrice` int(12) NOT NULL DEFAULT '0',
  `bEntranceCost` int(4) NOT NULL DEFAULT '0',
  `bLocked` int(2) NOT NULL DEFAULT '0',
  `bMoney` int(12) NOT NULL DEFAULT '0',
  `bType` int(3) NOT NULL DEFAULT '0',
  `bLocation` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bizzID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`bizzID`, `bExteriorPosX`, `bExteriorPosY`, `bExteriorPosZ`, `bInteriorPosX`, `bInteriorPosY`, `bInteriorPosZ`, `bInteriorID`, `bLevel`, `bOwned`, `bOwner`, `bName`, `bPrice`, `bEntranceCost`, `bLocked`, `bMoney`, `bType`, `bLocation`) VALUES
(1, 1791.21, -1164.63, 23.8281, 286.149, -40.6444, 1001.52, 1, 10, 1, 'The State', 'Gun Shop LS', 10000000, 500, 0, 94411, 2, 1),
(2, 460.670, -1500.95, 31.0577, 207.738, -109.02, 1005.13, 15, 10, 1, 'The State', 'Clothing Store', 10000000, 500, 0, 0, 11, 1),
(3, 1568.55, -1690.8, 5.89062, 246.376, 109.246, 1003.22, 10, 10, 1, 'The State', 'Cop Armour', 10000000, 500, 0, 0, 0, 1),
(4, 1462.4, -1012.39, 26.8438, 2305.69, -16.0881, 26.7496, 0, 10, 1, 'The State', 'Banca LS', 10000000, 500, 0, 0, 1, 1),
(5, 1836.36, -1682.38, 13.4331, 493.391, -22.7228, 1000.68, 17, 10, 1, 'The State', 'Alhambra', 10000000, 500, 0, 1400, 3, 1),
(6, 2166.39, -1671.58, 15.074, 318.52, 1115.75, 1083.88, 5, 10, 1, 'The State', 'Crack House', 10000000, 500, 0, 0, 0, 1),
(7, 811.202, -1616.2, 13.5469, 363.643, -74.4432, 1001.51, 10, 10, 1, 'The State', 'Burger Shot', 10000000, 500, 0, 0, 7, 1),
(8, 1199.41, -918.779, 43.1174, 363.643, -74.4432, 1001.51, 10, 10, 1, 'The State', 'Burger Shot', 10000000, 500, 0, 0, 7, 1),
(9, 1000.09, -919.953, 42.3281, 6.09118, -29.2719, 1003.55, 10, 10, 1, 'The State', 'Magazin 24/7', 10000000, 500, 0, 500, 6, 1),
(10, 1352.4, -1758.74, 13.5078, 6.09118, -29.2719, 1003.55, 10, 10, 1, 'The State', 'Magazin 24/7', 10000000, 500, 0, 17000, 6, 1),
(11, 1832.84, -1842.57, 13.5781, 6.09118, -29.2719, 1003.55, 10, 10, 1, 'The State', 'Magazin 24/7', 10000000, 500, 0, 0, 6, 1),
(12, 2104.85, -1806.47, 13.5547, 372.355, -132.817, 1001.49, 5, 10, 1, 'The State', 'Pizza House', 10000000, 500, 0, 1700, 9, 1),
(13, 2695.61, -1704.57, 11.8438, -1443.33, 932.679, 1036.49, 15, 10, 1, 'The State', 'Arena de Evenimente', 10000000, 500, 0, 0, 0, 1),
(14, 2244.49, -1665.11, 15.4766, 207.738, -109.02, 1005.13, 15, 10, 1, 'The State', 'Clothing Store', 10000000, 500, 0, 0, 11, 1),
(15, 862.039, -1636.13, 14.9297, -2026.96, -104.824, 1035.17, 3, 10, 1, 'The State', 'Licente si Pasaport', 10000000, 500, 0, 12000, 0, 1),
(16, 2398.53, -1898.71, 13.5469, 364.788, -9.804, 1001.85, 9, 10, 1, 'The State', 'Cluckin` bell', 10000000, 500, 0, 0, 14, 1),
(17, 2420.66, -1508.95, 24, 364.788, -9.804, 1001.85, 9, 10, 1, 'The State', 'Cluckin` bell', 10000000, 500, 0, 0, 14, 1),
(18, 2229.9, -1721.26, 13.5613, 772.287, -4.2203, 1000.73, 5, 10, 1, 'The State', 'Gym LS', 10000000, 500, 0, 0, 8, 1),
(19, 562.405, -1290, 17.2482, 562.405, -1290, 17.2482, 0, 10, 1, 'The State', 'Rent LS', 10000000, 500, 0, 0, 10, 1),
(20, 1396.91, -1570.82, 14.271, 1396.91, -1570.82, 14.271, 5, 10, 1, 'The State', 'Vama LS', 10000000, 500, 0, 4500, 0, 1),
(21, 1111.25, -1795.53, 16.5938, 1111.25, -1795.53, 16.5938, 5, 10, 1, 'The State', 'Arena de Paintball', 10000000, 500, 0, 0, 15, 1),
(22, 1081.27, -1697.77, 13.5469, 1081.27, -1697.77, 13.5469, 5, 10, 1, 'The State', 'CNN Los Santos', 10000000, 500, 0, 0, 16, 1),
(23, 928.05, -1352.854, 13.3438, 364.788, -9.804, 1001.85, 9, 10, 1, 'The State', 'Cluckin` bell', 10000000, 500, 0, 0, 14, 1),
(24, 1929.4, -1776.29, 13.5469, 1929.4, -1776.29, 13.5469, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 352, 12, 1),
(25, 1012.05, -935.76, 42.3281, 1012.05, -935.76, 42.3281, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 1),
(26, 660.93, -573.412, 16.3359, 660.93, -573.412, 16.3359, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 1),
(27, -78.9678, -1169.61, 2.1516, -78.9678, -1169.61, 2.1516, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 1),
(28, 2073.3, -1831.12, 13.5469, 2073.3, -1831.12, 13.5469, 5, 10, 1, 'The State', 'Pay`n Spray', 10000000, 500, 0, 1500, 13, 1),
(29, 1024.98, -1030.79, 32.0257, 1024.98, -1030.79, 32.0257, 5, 10, 1, 'The State', 'Pay`n Spray', 10000000, 500, 0, 500, 13, 1),
(30, 488.382, -1733.06, 11.1752, 488.382, -1733.06, 11.1752, 5, 10, 1, 'The State', 'Pay`n Spray', 10000000, 500, 0, 0, 13, 1),
(31, 719.894, -464.827, 16.3359, 719.894, -464.827, 16.3359, 5, 10, 1, 'The State', 'Pay`n Spray', 10000000, 500, 0, 0, 13, 1),
(32, 847.515, -1717.21, 14.9297, -2634.78, 1409.58, 906.465, 3, 10, 1, 'The State', 'Spawn Civil', 10000000, 1, 0, 489, 17, 1),
(33, 1383.0155, 464.8217, 20.2008, 1383.0155, 464.8217, 20.2008, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 1),
(34, 2546.55, 1971.97, 10.8203, -31.0246, -91.3283, 1003.55, 18, 10, 1, 'The State', 'Magazin 24/7', 10000000, 500, 0, 34, 6, 3),
(35, 2472.48, 2034.19, 11.0625, 363.134, -74.8469, 1001.51, 10, 10, 1, 'The State', 'Burger Shot', 10000000, 500, 0, 35, 7, 3),
(36, 2420.34, 2064.58, 10.8203, -100.403, -24.3921, 1000.72, 3, 10, 1, 'The State', 'Sex Shop', 10000000, 500, 0, 36, 4, 3),
(37, 2556.93, 2064.62, 11.0995, 315.612, -143.346, 999.602, 7, 10, 1, 'The State', 'Gun Shop LV', 10000000, 500, 0, 0, 2, 3),
(38, 2194.46, 1991, 12.2969, -31.0246, -91.3283, 1003.55, 18, 10, 1, 'The State', 'Magazin 24/7', 10000000, 500, 0, 0, 6, 3),
(39, 2083.35, 2224.24, 11.0234, 372.54, -133.009, 1001.49, 5, 10, 1, 'The State', 'Pizza House', 10000000, 500, 0, 0, 9, 3),
(40, 1872.79, 2071.87, 11.0625, 363.134, -74.8469, 1001.51, 10, 10, 1, 'The State', 'Burger Shot', 10000000, 500, 0, 0, 7, 3),
(41, 1693.97, 2208.23, 11.0692, -31.0246, -91.3283, 1003.55, 18, 10, 1, 'The State', 'Magazin 24/7', 10000000, 500, 0, 0, 6, 3),
(42, 2169.94, 2795.85, 10.8203, 363.134, -74.8469, 1001.51, 10, 10, 1, 'The State', 'Burger Shot', 10000000, 500, 0, 0, 7, 3),
(43, 777.144, 1871.41, 4.90664, 315.856, -143.099, 999.602, 7, 10, 1, 'The State', 'Gun Shop LV', 10000000, 500, 0, 0, 2, 3),
(44, -315.652, 829.865, 14.2422, 315.745, -143.503, 999.602, 7, 10, 1, 'The State', 'Gun Shop LV', 10000000, 500, 0, 0, 2, 3),
(45, 1968.81, 2295.02, 16.4559, 772.112, -3.89865, 1000.73, 5, 10, 1, 'The State', 'Gym LV', 10000000, 500, 0, 0, 8, 3),
(46, 2226.71, 1838.67, 10.8203, -794.942, 490.782, 1376.2, 1, 10, 1, 'The State', 'Bars', 10000000, 500, 0, 0, 3, 3),
(47, 2196.35, 1677.19, 12.3672, 2306, -16, 27, 0, 10, 1, 'The State', 'Banca LV', 10000000, 500, 0, 0, 1, 3),
(48, 2102.64, 2257.38, 11.0234, 207.738, -109.02, 1005.13, 15, 10, 1, 'The State', 'Clothing Store', 10000000, 500, 0, 0, 11, 3),
(49, 1656.64, 1733.32, 10.8281, 207.738, -109.02, 1005.13, 15, 10, 1, 'The State', 'Clothing Store', 10000000, 500, 0, 0, 11, 3),
(50, 172.682, 1176.69, 14.7645, 364.942, -11.0787, 1001.85, 9, 10, 1, 'The State', 'Cluckin` bell', 10000000, 500, 0, 0, 14, 3),
(51, 2158.78, 943.222, 10.8203, 316.424, -169.22, 999.594, 6, 10, 1, 'The State', 'Gun Shop LV', 10000000, 500, 0, 0, 2, 3),
(52, 2079.53, 2045.8, 11.0579, -2649.51, 370.857, 6.15925, 5, 10, 1, 'The State', 'CNN Las Venturas', 10000000, 500, 0, 0, 16, 3),
(53, 2020.03, 1007.75, 10.8203, 2018.13, 1017.84, 996.875, 10, 10, 1, 'The State', 'Casino', 10000000, 500, 0, 533, 5, 3),
(54, -1320.2073, 2698.1479, 50.2663, -1320.2073, 2698.1479, 50.2663, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 3),
(55, 638.8571,1683.5969,7.1875, 638.8571,1683.5969,7.1875, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 3),
(56, 1599.5873,2221.3770,11.0625, 1599.5873,2221.3770,11.0625, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 3),
(57, 150.7778,2734.4814,11.1763, 150.7778,2734.4814,11.1763, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 3),
(58, 2188.4817,2469.6702,11.2422, 2188.4817,2469.6702,11.2422, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 3),
(59, 2637.2659,1129.0726,11.1797, 2637.2659,1129.0726,11.1797, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 3),
(60, 2117.4355,897.1556,11.1797, 2117.4355,897.1556,11.1797, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 3),
(61, -1465.7155,1872.9127,32.6328, -1465.7155,1872.9127,32.6328, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 3),
(62, -1675.7346, 431.7090, 7.1797, -1675.7346, 431.7090, 7.1797, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 2),
(63, -2419.2642,969.9187,45.2969, -2419.2642,969.9187,45.2969, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 2),
(64, -2232.2471,-2557.8140,31.9219, -2232.2471,-2557.8140,31.9219, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 2),
(65, -1562.0172,-2733.4775,48.7435, -1562.0172,-2733.4775,48.7435, 5, 10, 1, 'The State', 'Benzinarie', 10000000, 500, 0, 0, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
CREATE TABLE IF NOT EXISTS `bugs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Text` varchar(255) NOT NULL DEFAULT '0',
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `playerName` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bugscomments`
--

DROP TABLE IF EXISTS `bugscomments`;
CREATE TABLE IF NOT EXISTS `bugscomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `bugid` int(11) NOT NULL,
  `playerid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `carID` int(11) NOT NULL AUTO_INCREMENT,
  `Model` int(11) NOT NULL,
  `Locationx` float NOT NULL,
  `Locationy` float NOT NULL,
  `Locationz` float NOT NULL,
  `Angle` float NOT NULL,
  `ColorOne` int(4) NOT NULL DEFAULT '1',
  `ColorTwo` int(4) NOT NULL DEFAULT '1',
  `Owner` varchar(25) NOT NULL DEFAULT 'Dealership',
  `Value` int(20) NOT NULL,
  `License` varchar(32) NOT NULL DEFAULT 'Dealership',
  `Name` varchar(64) NOT NULL,
  `Lock` int(3) NOT NULL DEFAULT '0',
  `Inscarprice` int(11) NOT NULL DEFAULT '5000',
  `Insurancecar` int(3) NOT NULL DEFAULT '10',
  `KM` float NOT NULL DEFAULT '0.0',
  `Owned` int(2) NOT NULL,
  `Mods` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `PaintJ` int(3) NOT NULL DEFAULT '6',
  `Health` float NOT NULL DEFAULT '999.9',
  `Fuel` float NOT NULL DEFAULT '100.9',
  `Neon` int(10) NOT NULL DEFAULT '0',
  `Days` int(5) NOT NULL DEFAULT '0',
  `Damage` varchar(128) NOT NULL DEFAULT '0|0|0|0',
  `Type` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`carID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `playerid` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `clans`
--

DROP TABLE IF EXISTS `clans`;
CREATE TABLE IF NOT EXISTS `clans` (
  `clanID` int(12) NOT NULL AUTO_INCREMENT,
  `clanName` varchar(64) NOT NULL,
  `clanOwner` varchar(42) NOT NULL,
  `clanMOTD` varchar(128) NOT NULL,
  `clanTag` varchar(10) NOT NULL DEFAULT '[NONE]',
  `clanRankName1` varchar(32) NOT NULL DEFAULT 'Newbie',
  `clanRankName2` varchar(32) DEFAULT 'Member',
  `clanRankName3` varchar(32) NOT NULL DEFAULT 'Advanced',
  `clanRankName4` varchar(32) NOT NULL DEFAULT 'Expert',
  `clanRankName5` varchar(32) NOT NULL DEFAULT 'Legend',
  `clanRankName6` varchar(32) NOT NULL DEFAULT 'Manager',
  `clanRankName7` varchar(32) NOT NULL DEFAULT 'Owner',
  `clanColor` varchar(16) NOT NULL DEFAULT '0xffffff',
  `clanMembers` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`clanID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
CREATE TABLE IF NOT EXISTS `complaints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalii` varchar(255) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `creatorid` int(11) NOT NULL,
  `againstid` int(11) NOT NULL,
  `motiv` varchar(255) NOT NULL,
  `dovezi` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL,
  `factionid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `complaintscomments`
--

DROP TABLE IF EXISTS `complaintscomments`;
CREATE TABLE IF NOT EXISTS `complaintscomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaintid` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `playerid` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `playerid` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creator` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

DROP TABLE IF EXISTS `factions`;
CREATE TABLE IF NOT EXISTS `factions` (
  `factionID` int(3) NOT NULL AUTO_INCREMENT,
  `fRankName1` varchar(32) NOT NULL,
  `fRankName2` varchar(32) NOT NULL,
  `fRankName3` varchar(32) NOT NULL,
  `fRankName4` varchar(32) NOT NULL,
  `fRankName5` varchar(32) NOT NULL,
  `fRankName6` varchar(32) NOT NULL,
  `fName` varchar(64) NOT NULL,
  `fHQExteriorPosX` float NOT NULL,
  `fHQExteriorPosY` float NOT NULL,
  `fHQExteriorPosZ` float NOT NULL,
  `fHQInteriorPosX` float NOT NULL,
  `fHQInteriorPosY` float NOT NULL,
  `fHQInteriorPosZ` float NOT NULL,
  `fHQInteriorID` int(4) NOT NULL,
  `fHQLockStatus` int(2) NOT NULL,
  `fMOTD` varchar(255) NOT NULL,
  `fSafePosX` float NOT NULL,
  `fSafePosY` float NOT NULL,
  `fSafePosZ` float NOT NULL,
  `fSafeMoney` int(11) NOT NULL DEFAULT '1',
  `fSafeMats` int(11) NOT NULL DEFAULT '1',
  `fSafeDrugs` int(11) NOT NULL DEFAULT '1',
  `fMembers` int(6) NOT NULL DEFAULT '0',
  `fLeader` varchar(24) NOT NULL DEFAULT 'None',
  `fAplication` int(2) NOT NULL DEFAULT '0',
  `fSlots` int(3) NOT NULL DEFAULT '0',
  `fType` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`factionID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`factionID`, `fRankName1`, `fRankName2`, `fRankName3`, `fRankName4`, `fRankName5`, `fRankName6`, `fName`, `fHQExteriorPosX`, `fHQExteriorPosY`, `fHQExteriorPosZ`, `fHQInteriorPosX`, `fHQInteriorPosY`, `fHQInteriorPosZ`, `fHQInteriorID`, `fHQLockStatus`, `fMOTD`, `fSafePosX`, `fSafePosY`, `fSafePosZ`, `fSafeMoney`, `fSafeMats`, `fSafeDrugs`, `fMembers`, `fLeader`, `fAplication`, `fSlots`, `fType`) VALUES
(1, 'LSPD Officer', 'LSPD Inspector', 'LSPD Lieutenant', 'LSPD Sergeant', 'LSPD Vice Director', 'LSPD Chief', 'Los Santos Police Departament', 1554.25, -1675.59, 16.1953, 247, 64.4625, 1003.64, 6, 0, 'Momentan nu se face raport in factiune.', 226.342, 123.616, 999.04, 0, 50000, 0, 3, 'None', 0, 10, 1),
(2, 'F.B.I Secretar', 'F.B.I Agent Pietonal', 'F.B.I Agent Omucideri', 'F.B.I Agent Secret', 'F.B.I Vice-Director', 'F.B.I Director', 'Federal Bureau Of Investigation', 325.587, -1515.01, 36.0325, 288.729, 168.538, 1007.17, 3, 1, 'Momentan nu se face raport in factiune.', 300.901, 187.942, 1007.17, 0, 50000, 0, 0, 'None', 0, 10, 1),
(3, 'Soldat', 'Plutonier', 'Caporal', 'Capitan', 'Locotenent', 'General', 'San Andreas Government', 2730.03, -2451.29, 17.5937, 288.729, 168.538, 1007.17, 3, 1, 'Momentan nu se face raport in factiune.', 300.901, 187.942, 1007.17, 400000, 50000, 0, 0, 'None', 0, 10, 1),
(4, 'Medic Incepãtor', 'Medic Rezident', 'Medic Specialist', 'Medic Primar', 'Vice - Director', 'Director', 'Los Santos Paramedic Departament', 1173.24, -1323.35, 15.3945, 288.729, 168.538, 1007.17, 3, 1, 'Momentan nu se face raport in factiune.', 300.901, 187.942, 1007.17, 0, 50000, 0, 0, 'None', 0, 10, 2),
(5, 'Incepãtor', 'Avansat', 'Mafiot', 'Profesionist', 'Sub-Sef', 'Don Aztecas', 'Los Aztecas', 2232.82, -1159.69, 25.8906, 1701.98, -1667.74, 20.2188, 18, 1, 'Momentan nu se face raport in factiune.', 1722.62, -1673.34, 20.2231, 0, 50000, 0, 0, 'None', 0, 10, 6),
(6, 'Incepãtor', 'Avansat', 'Mafiot', 'Profesionist', 'Sub-Sef', 'Don Russian', 'The Russian Mafia', 1457.12, 2773.43, 10.8203, 1701.98, -1667.74, 20.2188, 18, 1, 'Momentan nu se face raport in factiune.', 1722.62, -1673.34, 20.2231, 0, 50000, 0, 0, 'None', 0, 10, 0),
(7, '-', '-', '-', '-', '-', 'Primar', 'Mayor', 1479.56, -1785.43, 15.4578, 389.5257, 173.8173, 1008.3828, 3, 0, '-', 354.946, 160.025, 1008.38, 1940194, 50000, 0, 0, 'None', 0, 1, 0),
(8, 'Novice', 'Avansat', 'Asasin Specialist', 'Asasin Profesionist', 'Vice - Director', 'Director', 'The Hitman Agency', -49.8544, -269.731, 6.6332, 1494.33, 1304.94, 1093.29, 3, 1, 'Momentan nu se face raport in factiune.', 1488.99, 1307.89, 1093.29, 0, 50000, 0, 0, 'None', 0, 10, 0),
(9, 'Intern Reporter', 'Local Reporter', 'Local Editor', 'Network Editor', 'Network Manager', 'Director', 'News Reporter', 1219.22, -1811.94, 16.5938, 288.729, 168.538, 1007.17, 3, 1, 'Momentan nu se face raport in factiune.', 300.901, 187.942, 1007.17, 0, 50000, 0, 0, 'None', 0, 10, 0),
(10, 'Incepãtor', 'Rezident', 'Specialist', 'Profesionist', 'Sub-Sef', 'Director', 'Los Santos Taxi Company', 1753.62, -1894.07, 13.5571, 288.729, 168.538, 1007.17, 3, 1, 'Momentan nu se face raport in factiune.', 300.901, 187.942, 1007.17, 0, 50000, 0, 0, 'None', 0, 10, 0),
(11, 'Incepãtor', 'Avansat', 'Mafiot', 'Profesionist', 'Sub-Sef', 'Don Grove', 'Grove Street', 2495.22, -1690.06, 14.7656, 1701.98, -1667.74, 20.2188, 18, 1, 'Momentan nu se face raport in factiune.', 1722.62, -1673.34, 20.2231, 0, 50000, 0, 0, 'None', 0, 10, 4),
(12, 'Incepãtor', 'Avansat', 'Mafiot', 'Profesionist', 'Sub-Sef', 'Don Vagos', 'Los Vagos', 1123.5, -2036.99, 69.8869, 1701.98, -1667.74, 20.2188, 18, 1, 'Momentan nu se face raport in factiune.', 1722.62, -1673.34, 20.2231, 0, 50000, 0, 0, 'None', 0, 10, 3),
(13, 'Incepãtor', 'Avansat', 'Mafiot', 'Profesionist', 'Sub-Sef', 'Don Ballas', 'The Ballas Family', 689.445, -1275.63, 13.5592, 1701.98, -1667.74, 20.2188, 18, 1, 'Momentan nu se face raport in factiune.', 1722.62, -1673.34, 20.2231, 0, 50000, 0, 0, 'None', 0, 10, 5),
(14, 'Boboc', 'Avansat', 'Asasin', 'Lunetist', 'Agent', 'Boss', 'Blood Mafia', 870.388, -25.1683, 63.966, 940.932, -17.6382, 1000.93, 3, 1, 'Momentan nu se face raport in factiune.', 946.765, 7.2304, 1000.93, 0, 50000, 0, 0, 'None', 0, 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `faction_logs`
--

DROP TABLE IF EXISTS `faction_logs`;
CREATE TABLE IF NOT EXISTS `faction_logs` (
  `Id` int(255) NOT NULL AUTO_INCREMENT,
  `Text` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `playerID` int(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `flogs`
--

DROP TABLE IF EXISTS `flogs`;
CREATE TABLE IF NOT EXISTS `flogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `playerID` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `faction` int(25) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `giftbox`
--

DROP TABLE IF EXISTS `giftbox`;
CREATE TABLE IF NOT EXISTS `giftbox` (
  `id` int(1) NOT NULL,
  `Open` int(2) NOT NULL,
  `LocationX` float NOT NULL,
  `LocationY` float NOT NULL,
  `LocationZ` float NOT NULL,
  `Days` int(5) NOT NULL,
  `Month` int(5) NOT NULL,
  `Year` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

--
-- Salvarea datelor din tabel `giftbox`
--

INSERT INTO `giftbox` (`id`, `Open`, `LocationX`, `LocationY`, `LocationZ`, `Days`, `Month`, `Year`) VALUES
(1, 1, 1477.4, -1633.5, 23, 6, 6, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `helperlogs`
--

DROP TABLE IF EXISTS `helperlogs`;
CREATE TABLE IF NOT EXISTS `helperlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `playerid` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text2` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

DROP TABLE IF EXISTS `house`;
CREATE TABLE IF NOT EXISTS `house` (
  `houseID` int(12) NOT NULL AUTO_INCREMENT,
  `hExteriorPosX` float NOT NULL,
  `hExteriorPosY` float NOT NULL,
  `hExteriorPosZ` float NOT NULL,
  `hInteriorPosX` float NOT NULL,
  `hInteriorPosY` float NOT NULL,
  `hInteriorPosZ` float NOT NULL,
  `hInteriorID` int(4) NOT NULL DEFAULT '0',
  `hLevel` int(4) NOT NULL DEFAULT '7',
  `hOwned` int(2) NOT NULL DEFAULT '0',
  `hOwner` varchar(24) NOT NULL DEFAULT 'The State',
  `hDiscription` varchar(65) NOT NULL DEFAULT 'De vanzare',
  `hPrice` int(12) NOT NULL DEFAULT '0',
  `hLocked` int(2) NOT NULL DEFAULT '0',
  `hMoney` int(12) NOT NULL DEFAULT '0',
  `hHeall` int(12) NOT NULL DEFAULT '0',
  `hArmor` int(12) NOT NULL DEFAULT '0',
  `hRent` int(12) NOT NULL DEFAULT '1',
  `hRentabil` int(2) NOT NULL DEFAULT '1',
  `hRadioLink` varchar(255) NOT NULL DEFAULT 'Stopped',
  `hRadio` int(2) NOT NULL DEFAULT '0',
  `hRenters` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`houseID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`houseID`, `hExteriorPosX`, `hExteriorPosY`, `hExteriorPosZ`, `hInteriorPosX`, `hInteriorPosY`, `hInteriorPosZ`, `hInteriorID`, `hLevel`, `hOwned`, `hOwner`, `hDiscription`, `hPrice`, `hLocked`, `hMoney`, `hHeall`, `hArmor`, `hRent`, `hRentabil`, `hRadioLink`, `hRadio`, `hRenters`) VALUES
(1, 980.412, -677.297, 121.976, 2324.52, -1148.29, 1050.71, 12, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(2, 1468.58, -905.851, 54.836, 223.36, 1287.08, 1082.14, 1, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(3, 1535.04, -799.991, 72.849, 234.235, 1063.72, 1084.21, 6, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(4, 1535.8, -885.328, 57.657, 327.746, 1478.08, 1084.44, 15, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(5, 1540.31, -851.389, 64.336, 226.3, 1114.24, 1080.99, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(6, 1527.83, -772.596, 80.578, 2270.38, -1210.09, 1047.56, 10, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(7, 1496.98, -687.892, 95.563, 234.19, 1063.73, 1084.21, 6, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(8, 1442.58, -629.073, 95.719, -283.586, 1471.12, 1084.38, 15, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(9, 1112.57, -742.055, 100.133, 140.378, 1366.23, 1083.86, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(10, 1093.89, -807.092, 107.42, 2269.94, -1210.52, 1047.56, 10, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 1, 0),
(11, -814.397, 1425.87, 13.9453, 234.048, 1063.72, 1084.21, 6, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(12, -799.325, 1425.57, 13.9453, 299.78, 309.89, 1003.3, 4, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(13, -786.173, 1425.74, 13.9453, 2283.31, -1140.24, 1050.9, 11, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(14, -775.914, 1448.19, 13.9453, 299.78, 309.89, 1003.3, 4, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(15, -788.334, 1448.37, 13.9453, 2233.64, -1115.26, 1050.88, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(16, -773.383, 1425.44, 13.9453, 299.783, 309.833, 1003.3, 4, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(17, -802.993, 1448.69, 13.9453, 343.81, 304.86, 999.148, 6, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(18, -816.666, 1448.81, 13.9453, 2259.38, -1135.77, 1050.64, 10, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(19, 692.881, -1602.77, 15.0469, 2196.85, -1204.25, 1049.02, 6, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(20, 300.354, -1154.56, 81.3913, 140.17, 1366.07, 1083.86, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 1, 5),
(21, 251.48, -1220.18, 76.1024, 225.68, 1021.45, 1084.02, 7, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(22, 252.931, -1270, 74.3597, 234.19, 1063.73, 1084.21, 6, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(23, 657.225, -1652.7, 15.4062, 2218.4, -1076.18, 1050.48, 1, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(24, 937.875, -848.711, 93.5772, 2283.04, -1140.28, 1050.9, 11, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(25, 835.784, -894.737, 68.7689, -261.466, 1456.7, 1084.37, 4, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(26, 298.598, -1338.68, 53.4414, 24.04, 1340.17, 1084.38, 10, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(27, 254.381, -1367.13, 53.1094, -260.49, 1456.75, 1084.37, 4, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(28, 653.411, -1714.25, 14.7648, 2259.38, -1135.77, 1050.64, 10, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(29, 652.474, -1693.81, 14.5552, 2259.38, -1135.77, 1050.64, 10, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(30, 1421.81, -885.701, 50.6669, 140.17, 1366.07, 1083.86, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(31, 219.218, -1249.82, 78.3365, 225.68, 1021.45, 1084.02, 7, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(32, 795.165, -506.69, 18.0129, 234.19, 1063.73, 1084.21, 6, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(33, 768.201, -503.481, 18.0129, 266.667, 305.109, 999.148, 2, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(34, 2018.24, -1703.31, 14.2344, 223.2, 1287.08, 1082.14, 1, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(35, 2016.2, -1717, 14.125, 2283.04, -1140.28, 1050.9, 11, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(36, 2015.17, -1732.65, 14.2344, 2233.64, -1115.26, 1050.88, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(37, 315.807, -1769.43, 4.62173, 2218.4, -1076.18, 1050.48, 1, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(38, 2013.57, -1656.42, 14.1363, 223.2, 1287.08, 1082.14, 1, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(39, 1980.38, -1718.84, 17.0302, 24.04, 1340.17, 1084.38, 10, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(40, 1980.99, -1682.82, 17.0537, 83.03, 1322.28, 1083.87, 9, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(41, 1094.85, -647.913, 113.648, 24.04, 1340.17, 1084.38, 10, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(42, 2016.54, -1641.84, 14.1129, 2218.4, -1076.18, 1050.48, 1, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(43, 743.252, -509.323, 18.0129, 2218.17, -1075.96, 1050.48, 1, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(44, 818.21, -509.318, 18.0129, 2283.04, -1140.28, 1050.9, 11, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(45, 1183.48, -1099.07, 28.2578, 235.34, 1186.68, 1080.26, 3, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(46, 1142.12, -1092.73, 28.1875, 234.19, 1063.73, 1084.21, 6, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(47, 1183.47, -1076.29, 31.6789, 24.04, 1340.17, 1084.38, 10, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(48, 1141.97, -1069.91, 31.7656, 2807.48, -1174.76, 1025.57, 8, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(49, 827.778, -858.006, 70.3308, 140.17, 1366.07, 1083.86, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(50, 167.898, -1308.39, 70.3513, 234.19, 1063.73, 1084.21, 6, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(51, -881.417, 1562.42, 25.9114, 223.212, 1287.39, 1082.14, 1, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(52, -883.982, 1552.74, 26.0624, 2309.07, -1212.52, 1049.02, 6, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(53, -879.676, 1538.68, 26.0311, 2218.15, -1076.01, 1050.48, 1, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(54, -881.783, 1531.74, 26.0624, 2259.65, -1136.38, 1050.63, 10, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(55, -886.458, 1514.1, 26.0311, 266.698, 304.338, 999.148, 2, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(56, -905.446, 1528.58, 26.078, 243.846, 305.162, 999.148, 1, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(57, -906.4, 1514.63, 26.3168, 2233.41, -1115.04, 1050.88, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(58, -905.54, 1542.8, 26.0624, -42.835, 1405.78, 1084.43, 8, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(59, 1332.25, -633.456, 109.135, 2270.42, -1210.25, 1047.56, 10, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(60, 1298.42, -798.06, 84.1406, 2324.43, -1149.55, 1050.71, 12, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(61, 1045.12, -642.38, 120.117, 140.378, 1366.23, 1083.86, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(62, 946.168, -710.383, 122.62, 140.378, 1366.23, 1083.86, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(63, 898.318, -677.429, 116.89, 140.378, 1366.23, 1083.86, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(64, 416.451, -1154.46, 76.6876, 140.378, 1366.23, 1083.86, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(65, 1034.67, -812.526, 101.852, 140.378, 1366.23, 1083.86, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(66, 989.799, -828.656, 95.4686, 140.378, 1366.23, 1083.86, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 1, 'Stopped.', 0, 0),
(67, 190.246, -1308.2, 70.2623, 225.68, 1021.45, 1084.02, 7, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 0, 'Stopped', 0, 0),
(68, 228.139, -1405.23, 51.6094, 225.68, 1021.45, 1084.02, 7, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 0, 'Stopped', 0, 0),
(69, 770.218, -506.552, 18.0129, 140.17, 1366.07, 1083.65, 5, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 0, 'Stopped', 0, 0),
(70, 2126.69, -1320.3, 26.6241, 235.34, 1186.68, 1080.26, 3, 10, 1, 'The State', 'De Vanzare', 15000000, 0, 0, 0, 0, 1, 0, 'Stopped', 0, 0);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `iplogger`
--

DROP TABLE IF EXISTS `iplogger`;
CREATE TABLE IF NOT EXISTS `iplogger` (
  `Name` varchar(30) NOT NULL,
  `IP` varchar(17) NOT NULL,
  `Connected` varchar(32) NOT NULL,
  `Disconnected` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `jobID` int(11) NOT NULL AUTO_INCREMENT,
  `jobName` varchar(64) NOT NULL,
  `jobPosX` float NOT NULL,
  `jobPosY` float NOT NULL,
  `jobPosZ` float NOT NULL,
  `jobType` int(2) NOT NULL,
  PRIMARY KEY (`jobID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Salvarea datelor din tabel `jobs`
--

INSERT INTO `jobs` (`jobID`, `jobName`, `jobPosX`, `jobPosY`, `jobPosZ`, `jobType`) VALUES
(1, 'Detectiv', 1154.0543, -1771.7386, 16.5992, 0),
(2, 'Tractorist', -85.2614, 2.3655, 3.1172, 0),
(3, 'Pescar', 2161.9080, -101.9052, 2.7500, 0),
(4, 'Mecanic', 918.6163, -1252.1884, 16.2109, 0),
(5, 'Livrator de pizza', 2122.2207, -1789.4568, 13.5547, 0),
(6, 'Sofer de tir', -77.3988, -1136.4534, 1.0781, 0),
(7, 'Distribuitor de droguri', 2178.7761, -1660.5298, 14.9555, 1),
(8, 'Hot de masini', 2770.7529, -1627.7509, 12.1775, 1),
(9, 'Distribuitor de arme', 1366.3065, -1275.6580, 13.5469, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lastpunish`
--

DROP TABLE IF EXISTS `lastpunish`;
CREATE TABLE IF NOT EXISTS `lastpunish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `playerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `propuneri`
--

DROP TABLE IF EXISTS `propuneri`;
CREATE TABLE IF NOT EXISTS `propuneri` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Text` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `playerName` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `staticveh`
--

DROP TABLE IF EXISTS `staticveh`;
CREATE TABLE IF NOT EXISTS `staticveh` (
  `svID` int(11) NOT NULL AUTO_INCREMENT,
  `Model` int(4) NOT NULL DEFAULT '0',
  `Locationx` float NOT NULL,
  `Locationy` float NOT NULL,
  `Locationz` float NOT NULL,
  `Angle` float NOT NULL,
  `ColorOne` int(4) NOT NULL DEFAULT '1',
  `ColorTwo` int(4) NOT NULL DEFAULT '1',
  `RespawnDelay` int(7) NOT NULL DEFAULT '0',
  `Faction` int(3) NOT NULL DEFAULT '0',
  `Rank` int(2) NOT NULL DEFAULT '0',
  `Sirena` int(2) NOT NULL DEFAULT '0',
  `License` varchar(32) NOT NULL DEFAULT '-',
  PRIMARY KEY (`svID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=311 ;

--
-- Dumping data for table `staticveh`
--

INSERT INTO `staticveh` (`svID`, `Model`, `Locationx`, `Locationy`, `Locationz`, `Angle`, `ColorOne`, `ColorTwo`, `RespawnDelay`, `Faction`, `Rank`, `Sirena`, `License`) VALUES
(1, 426, -2134.37, -113.23, 35.4211, 269.045, 114, 114, 1500, 0, 0, 0, 'Rent'),
(2, 426, -2132.24, -117.263, 35.4173, 270.404, 95, 95, 1500, 0, 0, 0, 'Rent'),
(3, 426, -2132.01, -121.39, 35.413, 270.719, 61, 61, 1500, 0, 0, 0, 'Rent'),
(4, 434, 557.753, -1288.63, 17.2159, 0.1252, 0, 2, 1500, 0, 0, 0, 'Rent'),
(5, 429, 552.914, -1288.78, 16.9279, 1.2892, 1, 2, 1500, 0, 0, 0, 'Rent'),
(6, 477, 547.914, -1288.48, 17.0032, 0.3534, 3, 2, 1500, 0, 0, 0, 'Rent'),
(7, 540, 542.7, -1288.4, 17.1059, 0.983, 5, 2, 1500, 0, 0, 0, 'Rent'),
(8, 545, 538.297, -1288.51, 17.0533, 357.879, 2, 2, 1500, 0, 0, 0, 'Rent'),
(9, 558, 533.968, -1288.02, 16.8722, 356.657, 93, 1, 1500, 0, 0, 0, 'Rent'),
(10, 575, 528.785, -1286.79, 16.8441, 315.52, 53, 1, 1500, 0, 0, 0, 'Rent'),
(11, 587, 526.213, -1283.13, 16.97, 294.545, 43, 1, 1500, 0, 0, 0, 'Rent'),
(12, 404, -2114.59, -112.36, 35.0524, 90.7024, 123, 92, 1500, 0, 0, 0, 'Rent'),
(13, 404, -2114.64, -115.537, 35.0534, 89.7089, 83, 110, 1500, 0, 0, 0, 'Rent'),
(14, 404, -2114.86, -118.836, 35.0514, 88.2207, 101, 101, 1500, 0, 0, 0, 'Rent'),
(15, 401, -2114.76, -122.647, 35.0997, 92.6487, 74, 74, 1500, 0, 0, 0, 'Rent'),
(16, 401, -2114.92, -126.558, 35.0997, 89.5126, 41, 41, 1500, 0, 0, 0, 'Rent'),
(17, 401, -2115.23, -130.727, 35.0997, 88.8504, 91, 91, 1500, 0, 0, 0, 'Rent'),
(18, 410, -2115.2, -134.773, 34.9771, 89.2681, 10, 1, 1500, 0, 0, 0, 'Rent'),
(19, 410, -2115.53, -138.715, 34.9736, 89.6901, 36, 1, 1500, 0, 0, 0, 'Rent'),
(20, 410, -2115.44, -142.827, 34.9739, 90.4001, 45, 1, 1500, 0, 0, 0, 'Rent'),
(21, 400, 1062.51, -1743.15, 13.555, 90.341, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(22, 426, 1180.97, -926.191, 42.9754, 279.565, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(23, 475, 980.121, -915.647, 41.3939, 186.727, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(24, 400, 1069.79, -1109.23, 24.4922, 269.825, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(25, 400, 340.601, -1809.23, 4.6119, 0.6416, -1, -1, 1500, 0, 0, 0, 'Examen'),
(26, 471, 453.847, -1779.38, 5.0297, 358.016, -1, -1, 1500, 0, 0, 0, 'Examen'),
(27, 471, 458.582, -1779.54, 5.0297, 358.016, -1, -1, 1500, 0, 0, 0, 'Examen'),
(28, 487, 1789, -2632.53, 13.7157, 356.456, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(29, 487, 1721.33, -2633.05, 13.7148, 1.5962, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(30, 522, 856.759, -1638.89, 15.4791, 179.675, 249, 249, 1500, 0, 0, 0, 'Rent'),
(31, 522, 860.116, -1638.88, 15.4822, 179.159, 249, 249, 1500, 0, 0, 0, 'Rent'),
(32, 462, 1836.75, -1853.6, 12.9883, 177.956, 249, 249, 1500, 0, 0, 0, 'Rent'),
(33, 462, 1839.87, -1853.75, 12.9846, 178.602, 249, 249, 1500, 0, 0, 0, 'Rent'),
(34, 462, 1842.11, -1853.91, 12.9798, 180.311, 249, 249, 1500, 0, 0, 0, 'Rent'),
(35, 462, 1844.46, -1872.63, 12.9903, 356.865, 249, 249, 1500, 0, 0, 0, 'Rent'),
(36, 462, -1982.09, 159.056, 27.2856, 88.7929, 249, 249, 1500, 0, 0, 0, 'Rent'),
(37, 462, -1982.06, 160.792, 27.2879, 88.5886, 249, 249, 1500, 0, 0, 0, 'Rent'),
(38, 462, -1981.97, 162.467, 27.2883, 89.0866, 249, 249, 1500, 0, 0, 0, 'Rent'),
(39, 462, 1834.27, -1853.36, 12.9893, 179.01, 249, 249, 1500, 0, 0, 0, 'Rent'),
(40, 462, -1981.93, 164.355, 27.2863, 91.7713, 249, 249, 1500, 0, 0, 0, 'Rent'),
(41, 462, -1981.77, 166.294, 27.2955, 89.9973, 249, 249, 1500, 0, 0, 0, 'Rent'),
(42, 462, -1981.85, 168.098, 27.2956, 87.4998, 249, 249, 1500, 0, 0, 0, 'Rent'),
(43, 581, 851.933, -1673.81, 14.9746, 269.423, 249, 249, 1500, 0, 0, 0, 'Rent'),
(44, 581, 851.936, -1675.83, 14.9735, 269.546, 249, 249, 1500, 0, 0, 0, 'Rent'),
(45, 461, 851.959, -1677.95, 14.9659, 266.898, 249, 249, 1500, 0, 0, 0, 'Rent'),
(46, 461, 851.949, -1679.87, 14.9695, 271.153, 249, 249, 1500, 0, 0, 0, 'Rent'),
(47, 521, 851.944, -1681.6, 14.984, 266.201, 249, 249, 1500, 0, 0, 0, 'Rent'),
(48, 521, 851.971, -1683.67, 14.9833, 267.935, 249, 249, 1500, 0, 0, 0, 'Rent'),
(49, 522, 851.757, -1695.02, 15.5081, 270.668, 249, 249, 1500, 0, 0, 0, 'Rent'),
(50, 522, 851.768, -1691.49, 15.5056, 268.251, 249, 249, 1500, 0, 0, 0, 'Rent'),
(51, 523, 1585.06, -1667.53, 5.464, 268.482, 1, 1, -1, 1, 0, 0, 'LSPD'),
(52, 523, 1585.11, -1671.74, 5.461, 266.23, 1, 1, -1, 1, 0, 0, 'LSPD'),
(53, 596, 1548.81, -1669.76, 13.285, 90.503, 0, 1, -1, 1, 0, 0, 'LSPD'),
(54, 596, 1548.78, -1681.37, 13.276, 90.773, 0, 1, -1, 1, 0, 0, 'LSPD'),
(55, 596, 1601.53, -1684, 5.612, 90.643, 0, 1, -1, 1, 0, 0, 'LSPD'),
(56, 596, 1601.67, -1688.03, 5.611, 90.892, 0, 1, -1, 1, 0, 0, 'LSPD'),
(57, 596, 1601.79, -1692.04, 5.612, 90.277, 0, 1, -1, 1, 0, 0, 'LSPD'),
(58, 596, 1601.88, -1696.03, 5.61, 90.755, 0, 1, -1, 1, 0, 0, 'LSPD'),
(59, 596, 1602.01, -1700.19, 5.611, 90.069, 0, 1, -1, 1, 0, 0, 'LSPD'),
(60, 596, 1602.17, -1704.28, 5.611, 91.713, 0, 1, -1, 1, 0, 0, 'LSPD'),
(61, 411, 1595.4, -1710.84, 5.618, 359.98, 1, 1, -1, 1, 0, 1, 'LSPD'),
(62, 411, 1591.39, -1710.91, 5.618, 359.849, 1, 1, -1, 1, 0, 1, 'LSPD'),
(63, 411, 1587.51, -1710.9, 5.618, 358.765, 1, 1, -1, 1, 4, 1, 'LSPD'),
(64, 411, 1583.52, -1710.92, 5.618, 359.685, 1, 1, -1, 1, 5, 1, 'LSPD'),
(65, 596, 1530.53, -1644.92, 5.612, 180.438, 0, 1, -1, 1, 0, 0, 'LSPD'),
(66, 596, 1544.82, -1651.03, 5.612, 90.118, 0, 1, -1, 1, 0, 0, 'LSPD'),
(67, 596, 1544.97, -1655.13, 5.612, 90.171, 0, 1, -1, 1, 0, 0, 'LSPD'),
(68, 596, 1545.03, -1659.01, 5.611, 89.998, 0, 1, -1, 1, 0, 0, 'LSPD'),
(69, 523, 1545.26, -1684.44, 5.458, 90.975, 1, 1, -1, 1, 0, 0, 'LSPD'),
(70, 523, 1545.37, -1680.11, 5.458, 90.533, 1, 1, -1, 1, 0, 0, 'LSPD'),
(71, 523, 1545.42, -1676.2, 5.458, 88.362, 1, 1, -1, 1, 0, 0, 'LSPD'),
(72, 497, 1565.17, -1648.65, 28.578, 93.025, 0, 1, -1, 1, 4, 0, 'LSPD'),
(73, 497, 1565.78, -1697.24, 28.563, 90.07, 0, 1, -1, 1, 4, 0, 'LSPD'),
(74, 497, 349.982, -1486.13, 76.713, 216.27, 0, 0, -1, 2, 0, 0, 'F.B.I'),
(75, 497, 320.775, -1510.61, 76.715, 232.238, 0, 0, -1, 2, 0, 0, 'F.B.I'),
(76, 497, 299.801, -1544.56, 76.716, 243.039, 0, 0, -1, 2, 0, 0, 'F.B.I'),
(77, 523, 298.223, -1536.2, 24.165, 53.206, 0, 0, -1, 2, 0, 0, 'F.B.I'),
(78, 523, 295.156, -1540.6, 24.163, 57.023, 0, 0, -1, 2, 0, 0, 'F.B.I'),
(79, 523, 291.827, -1545.12, 24.165, 55.728, 0, 0, -1, 2, 0, 0, 'F.B.I'),
(80, 528, 306.206, -1481.27, 24.636, 233.324, 0, 0, -1, 2, 0, 0, 'F.B.I'),
(81, 528, 303.024, -1486.04, 24.637, 236.103, 0, 0, -1, 2, 0, 0, 'F.B.I'),
(82, 528, 299.776, -1490.36, 24.637, 233.013, 0, 0, -1, 2, 0, 0, 'F.B.I'),
(83, 541, 294.074, -1513.16, 24.219, 236.245, 0, 0, -1, 2, 0, 1, 'F.B.I'),
(84, 541, 296.993, -1508.84, 24.219, 234.921, 0, 0, -1, 2, 0, 1, 'F.B.I'),
(85, 541, 300.274, -1504.11, 24.222, 234.731, 0, 0, -1, 2, 0, 1, 'F.B.I'),
(86, 411, 287.921, -1522.22, 24.321, 234.709, 0, 0, -1, 2, 0, 1, 'F.B.I'),
(87, 411, 291.028, -1517.95, 24.321, 235.979, 0, 0, -1, 2, 0, 1, 'F.B.I'),
(88, 490, 278.973, -1535.74, 24.724, 234.25, 0, 0, -1, 2, 0, 0, 'F.B.I'),
(89, 490, 281.895, -1531.27, 24.72, 235.015, 0, 0, -1, 2, 0, 0, 'F.B.I'),
(90, 490, 284.917, -1526.36, 24.722, 235.276, 0, 0, -1, 2, 0, 0, 'F.B.I'),
(91, 470, 2776.66, -2431.98, 13.626, 89.021, 1, 1, -1, 3, 0, 0, 'Government'),
(92, 470, 2776.69, -2441.59, 13.632, 89.447, 1, 1, -1, 3, 0, 0, 'Government'),
(93, 470, 2745.09, -2431.74, 13.634, 269.959, 1, 1, -1, 3, 0, 0, 'Government'),
(94, 470, 2776.66, -2403.64, 13.631, 90.222, 1, 1, -1, 3, 0, 0, 'Government'),
(95, 470, 2756.26, -2381.13, 13.625, 181.522, 1, 1, -1, 3, 0, 0, 'Government'),
(96, 425, 2789.62, -2520.78, 14.174, 1.244, 1, 1, -1, 3, 0, 0, 'Government'),
(97, 425, 2744.16, -2465.6, 14.214, 269.122, 1, 1, -1, 3, 0, 0, 'Government'),
(98, 432, 2758.29, -2518.84, 13.647, 2.26, 1, 1, -1, 3, 0, 0, 'Government'),
(99, 432, 2780.71, -2474.78, 13.643, 89.33, 1, 1, -1, 3, 0, 0, 'Government'),
(100, 433, 2781.12, -2455.78, 14.072, 89.157, 1, 1, -1, 3, 0, 0, 'Government'),
(101, 433, 2780.76, -2493.86, 14.095, 88.967, 1, 1, -1, 3, 0, 0, 'Government'),
(102, 433, 2782.57, -2418.05, 14.072, 89.514, 1, 1, -1, 3, 0, 0, 'Government'),
(103, 416, 1177.44, -1339.1, 14.064, 272.025, 1, 3, -1, 4, 0, 0, 'Paramedic'),
(104, 416, 1176.88, -1308.46, 14.025, 268.229, 1, 3, -1, 4, 0, 0, 'Paramedic'),
(105, 416, 1190.16, -1360.46, 13.613, 180.161, 1, 3, -1, 4, 0, 0, 'Paramedic'),
(106, 416, 1211.68, -1311.4, 13.616, 0.928, 1, 3, -1, 4, 0, 0, 'Paramedic'),
(107, 599, 1211.34, -1363.97, 13.615, 1.137, 3, 1, -1, 4, 0, 0, 'Paramedic'),
(108, 599, 1211.33, -1355.68, 13.664, 0.046, 3, 1, -1, 4, 0, 0, 'Paramedic'),
(109, 599, 1211.4, -1348.47, 13.667, 356.85, 3, 1, -1, 4, 0, 0, 'Paramedic'),
(110, 416, 1211.42, -1328.09, 13.621, 1.476, 1, 3, -1, 4, 0, 0, 'Paramedic'),
(111, 487, 1181.15, -1379.08, 24.182, 321.271, 1, 3, -1, 4, 0, 0, 'Paramedic'),
(112, 560, 2228.71, -1177.19, 25.432, 90.238, 155, 115, -1, 5, 0, 0, 'Aztecas'),
(113, 560, 2228.69, -1173.66, 25.437, 90.178, 155, 5, -1, 5, 0, 0, 'Aztecas'),
(114, 560, 2228.64, -1170.1, 25.447, 90.727, 155, 155, -1, 5, 0, 0, 'Aztecas'),
(115, 521, 2228.1, -1152.88, 25.409, 88.911, 155, 155, -1, 5, 0, 0, 'Aztecas'),
(116, 521, 2228.11, -1156.13, 25.384, 91.595, 155, 155, -1, 5, 0, 0, 'Aztecas'),
(117, 579, 2205.75, -1177.11, 25.659, 270.089, 155, 155, -1, 5, 0, 0, 'Aztecas'),
(118, 579, 2205.81, -1172.99, 25.657, 270.427, 155, 155, -1, 5, 0, 0, 'Aztecas'),
(119, 567, 2217.13, -1157.21, 25.596, 270.482, 155, 155, -1, 5, 0, 0, 'Aztecas'),
(120, 567, 2217.07, -1161.7, 25.595, 270.401, 155, 155, -1, 5, 0, 0, 'Aztecas'),
(121, 581, 2205.5, -1157.07, 25.335, 269.416, 155, 155, -1, 5, 0, 0, 'Aztecas'),
(122, 581, 2205.57, -1160.91, 25.331, 269.135, 155, 155, -1, 5, 0, 0, 'Aztecas'),
(123, 409, 2206.84, -1152.81, 25.538, 270.718, 155, 155, -1, 5, 0, 0, 'Aztecas'),
(124, 487, 2239.95, -1156.53, 33.703, 52.082, 155, 155, -1, 5, 0, 0, 'Aztecas'),
(125, 521, 1460.54, 2765.13, 10.3893, 267.262, 129, 129, -1, 6, 0, 0, 'Russian'),
(126, 521, 1460.52, 2767.8, 10.3906, 270.691, 129, 129, -1, 6, 0, 0, 'Russian'),
(127, 560, 1471.08, 2800.44, 10.4482, 303.246, 129, 129, -1, 6, 0, 0, 'Russian'),
(128, 560, 1464.02, 2789.68, 10.449, 337.111, 129, 129, -1, 6, 0, 0, 'Russian'),
(129, 560, 1466.76, 2795.62, 10.4489, 329.916, 129, 129, -1, 6, 0, 0, 'Russian'),
(130, 567, 1479.87, 2839.29, 10.6884, 0.654036, 129, 129, -1, 6, 0, 0, 'Russian'),
(131, 567, 1484.76, 2839.29, 10.689, 0.094875, 129, 129, -1, 6, 0, 0, 'Russian'),
(132, 487, 1466.94, 2816.3, 10.9976, 269.165, 129, 129, -1, 6, 0, 0, 'Russian'),
(133, 581, 1460.49, 2779.93, 10.4171, 272.235, 129, 129, -1, 6, 0, 0, 'Russian'),
(134, 581, 1460.54, 2782.51, 10.4141, 273.506, 129, 129, -1, 6, 0, 0, 'Russian'),
(135, 409, 1472.78, 2773.1, 10.5425, 359.851, 129, 129, -1, 6, 0, 0, 'Russian'),
(136, 579, 1464.97, 2847.76, 10.7471, 181.622, 129, 129, -1, 6, 0, 0, 'Russian'),
(137, 579, 1470.29, 2847.47, 10.7469, 180.737, 129, 129, -1, 6, 0, 0, 'Russian'),
(138, 409, 1416.77, -1775.52, 13.347, 209.657, 241, 241, -1, 7, 0, 0, 'Mayor'),
(139, 409, 1422.67, -1775.54, 13.347, 209.208, 241, 241, -1, 7, 0, 0, 'Mayor'),
(140, 405, 1433.75, -1775.09, 13.422, 210.796, 241, 241, -1, 7, 0, 0, 'Mayor'),
(141, 405, 1427.97, -1775.13, 13.422, 212.299, 241, 241, -1, 7, 0, 0, 'Mayor'),
(142, 402, -31.503, -276.794, 5.258, 270.766, 45, 121, -1, 8, 0, 0, 'Hitman'),
(143, 402, -31.443, -283.51, 5.258, 270.68, 45, 45, -1, 8, 0, 0, 'Hitman'),
(144, 402, -31.489, -280.165, 5.258, 271.353, 45, 45, -1, 8, 0, 0, 'Hitman'),
(145, 402, -31.417, -286.88, 5.26, 270.316, 45, 45, -1, 8, 0, 0, 'Hitman'),
(146, 415, -62.472, -303.927, 5.201, 269.352, 45, 45, -1, 8, 0, 0, 'Hitman'),
(147, 415, -62.452, -300.614, 5.201, 269.374, 45, 45, -1, 8, 0, 0, 'Hitman'),
(148, 469, -41.115, -322.729, 5.441, 358.239, 45, 45, -1, 8, 0, 0, 'Hitman'),
(149, 469, -61.531, -338.575, 5.424, 181.178, 45, 45, -1, 8, 0, 0, 'Hitman'),
(150, 469, -52.226, -333.995, 5.442, 2.871, 45, 45, -1, 8, 0, 0, 'Hitman'),
(151, 487, -4.052, -280.603, 5.606, 177.549, 45, 45, -1, 8, 0, 0, 'Hitman'),
(152, 487, -14.999, -280.32, 5.606, 180.185, 45, 45, -1, 8, 0, 0, 'Hitman'),
(153, 488, 1240.4, -1818.95, 13.588, 180.191, 176, 176, -1, 9, 0, 0, 'News Reporter'),
(154, 488, 1250.02, -1812.16, 13.586, 181.337, 176, 176, -1, 9, 0, 0, 'News Reporter'),
(155, 582, 1199.73, -1835.53, 13.458, 270.298, 176, 176, -1, 9, 0, 0, 'News Reporter'),
(156, 582, 1199.66, -1828.16, 13.465, 269.566, 176, 176, -1, 9, 0, 0, 'News Reporter'),
(157, 582, 1228.64, -1836.86, 13.558, 269.167, 176, 176, -1, 9, 0, 0, 'News Reporter'),
(158, 582, 1239.36, -1836.99, 13.564, 269.22, 176, 176, -1, 9, 0, 0, 'News Reporter'),
(159, 582, 1249.42, -1837.02, 13.56, 270.173, 176, 176, -1, 9, 0, 0, 'News Reporter'),
(160, 560, 1776.11, -1932.04, 13.091, 0.672, 6, 6, -1, 10, 0, 0, 'Taxi LS'),
(161, 560, 1779.76, -1932.02, 13.092, 0.754, 6, 6, -1, 10, 0, 0, 'Taxi LS'),
(162, 560, 1783.22, -1931.97, 13.093, 1.2, 6, 6, -1, 10, 0, 0, 'Taxi LS'),
(163, 560, 1786.73, -1932.01, 13.092, 359.45, 6, 6, -1, 10, 0, 0, 'Taxi LS'),
(164, 438, 1804.56, -1931.94, 13.39, 359.923, 6, 6, -1, 10, 0, 0, 'Taxi LS'),
(165, 438, 1800.73, -1931.82, 13.389, 359.309, 6, 6, -1, 10, 0, 0, 'Taxi LS'),
(166, 438, 1797, -1931.77, 13.39, 358.008, 6, 6, -1, 10, 0, 0, 'Taxi LS'),
(167, 438, 1793.07, -1931.8, 13.39, 358.77, 6, 6, -1, 10, 0, 0, 'Taxi LS'),
(168, 420, 1807.41, -1884.27, 13.271, 270.955, 6, 6, -1, 10, 0, 0, 'Taxi LS'),
(169, 420, 1806.51, -1904.92, 13.262, 359.151, 6, 6, -1, 10, 0, 0, 'Taxi LS'),
(170, 420, 1799.69, -1884.48, 13.265, 271.174, 6, 6, -1, 10, 0, 0, 'Taxi LS'),
(171, 420, 1792.12, -1884.4, 13.26, 271.008, 6, 6, -1, 10, 0, 0, 'Taxi LS'),
(172, 560, 2509.81, -1686.87, 13.266, 47.669, 86, 1, -1, 11, 0, 0, 'Grove'),
(173, 521, 2508.08, -1651.65, 13.29, 139.531, 86, 1, -1, 11, 0, 0, 'Grove'),
(174, 560, 2505.66, -1694.96, 13.262, 1.535, 86, 86, -1, 11, 0, 0, 'Grove'),
(175, 521, 2506.22, -1650.03, 13.311, 134.943, 86, 86, -1, 11, 0, 0, 'Grove'),
(176, 567, 2485.82, -1653.64, 13.268, 90.129, 86, 86, -1, 11, 0, 0, 'Grove'),
(177, 567, 2478.24, -1653.6, 13.26, 90.279, 86, 86, -1, 11, 0, 0, 'Grove'),
(178, 581, 2516.01, -1663.35, 13.451, 97.57, 86, 86, -1, 11, 0, 0, 'Grove'),
(179, 581, 2516.2, -1666.08, 13.436, 94.155, 86, 86, -1, 11, 0, 0, 'Grove'),
(180, 409, 2473.19, -1693.42, 13.315, 0.292, 86, 86, -1, 11, 0, 0, 'Grove'),
(181, 560, 2481.99, -1692.46, 13.224, 352.843, 86, 86, -1, 11, 0, 0, 'Grove'),
(182, 579, 2509.77, -1672.47, 13.338, 348.919, 86, 86, -1, 11, 0, 0, 'Grove'),
(183, 579, 2489.57, -1684.21, 13.351, 269.223, 86, 86, -1, 11, 0, 0, 'Grove'),
(184, 487, 2528.07, -1678.74, 20.107, 76.37, 86, 86, -1, 11, 0, 0, 'Grove'),
(185, 521, 1237.04, -2041.1, 60.602, 269.333, 219, 65, -1, 12, 0, 0, 'Vagos'),
(186, 521, 1236.99, -2042.96, 60.6, 268.643, 219, 219, -1, 12, 0, 0, 'Vagos'),
(187, 581, 1237.03, -2030.83, 60.627, 273.649, 219, 219, -1, 12, 0, 0, 'Vagos'),
(188, 581, 1237.09, -2032.7, 60.629, 268.879, 219, 219, -1, 12, 0, 0, 'Vagos'),
(189, 560, 1245.64, -2045.52, 59.635, 270.062, 219, 219, -1, 12, 0, 0, 'Vagos'),
(190, 560, 1275.53, -2046.22, 58.866, 268.276, 219, 219, -1, 12, 0, 0, 'Vagos'),
(191, 560, 1254.17, -2045.43, 59.386, 269.324, 219, 219, -1, 12, 0, 0, 'Vagos'),
(192, 579, 1244.7, -2010.94, 59.791, 180.236, 219, 219, -1, 12, 0, 0, 'Vagos'),
(193, 579, 1249.81, -2010.96, 59.645, 179.99, 219, 219, -1, 12, 0, 0, 'Vagos'),
(194, 567, 1276.11, -2009.54, 58.828, 90.518, 219, 219, -1, 12, 0, 0, 'Vagos'),
(195, 567, 1276.06, -2014.29, 58.828, 89.648, 219, 219, -1, 12, 0, 0, 'Vagos'),
(196, 409, 1248.02, -2060.64, 59.652, 268.434, 219, 219, -1, 12, 0, 0, 'Vagos'),
(197, 487, 1275.88, -2032.9, 59.009, 0, 219, 219, -1, 12, 0, 0, 'Vagos'),
(198, 560, 670.254, -1283.58, 13.25, 359.969, 136, 136, -1, 13, 0, 0, 'Ballas'),
(199, 560, 670.405, -1303.4, 13.248, 2.308, 136, 136, -1, 13, 0, 0, 'Ballas'),
(200, 560, 670.126, -1293.26, 13.249, 359.917, 136, 136, -1, 13, 0, 0, 'Ballas'),
(201, 521, 687.454, -1285.85, 13.144, 87.552, 136, 136, -1, 13, 0, 0, 'Ballas'),
(202, 521, 687.504, -1281.4, 13.136, 89.738, 136, 136, -1, 13, 0, 0, 'Ballas'),
(203, 581, 687.755, -1265.4, 13.153, 89.771, 136, 136, -1, 13, 0, 0, 'Ballas'),
(204, 581, 687.656, -1270.13, 13.156, 90.187, 136, 136, -1, 13, 0, 0, 'Ballas'),
(205, 487, 680.119, -1259.39, 13.765, 88.876, 136, 136, -1, 13, 0, 0, 'Ballas'),
(206, 579, 659.813, -1258.12, 13.476, 359.259, 136, 136, -1, 13, 0, 0, 'Ballas'),
(207, 579, 659.845, -1267.16, 13.48, 359.453, 136, 136, -1, 13, 0, 0, 'Ballas'),
(208, 567, 670.106, -1259.08, 13.402, 0.787, 136, 136, -1, 13, 0, 0, 'Ballas'),
(209, 567, 670.299, -1268.18, 13.411, 1.634, 136, 136, -1, 13, 0, 0, 'Ballas'),
(210, 409, 659.694, -1293.02, 13.342, 0.242, 136, 136, -1, 13, 0, 0, 'Ballas'),
(211, 541, 879.489, -28.094, 62.821, 153.244, 3, 3, -1, 14, 0, 0, 'Blood Mafia'),
(212, 541, 876.377, -26.439, 62.82, 154.109, 3, 3, -1, 14, 0, 0, 'Blood Mafia'),
(213, 560, 892.56, -24.965, 62.973, 157.924, 3, 3, -1, 14, 0, 0, 'Blood Mafia'),
(214, 560, 885.747, -22.336, 63.007, 159.481, 3, 3, -1, 14, 0, 0, 'Blood Mafia'),
(215, 560, 889.193, -23.664, 62.955, 158.672, 3, 3, -1, 14, 0, 0, 'Blood Mafia'),
(216, 469, 844.9, -16.626, 64.496, 177.006, 3, 3, -1, 14, 0, 0, 'Blood Mafia'),
(217, 411, 858.489, -23.653, 62.987, 159.045, 3, 3, -1, 14, 0, 0, 'Blood Mafia'),
(218, 468, -2286.68, -1667.46, 482.182, 73.742, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(219, 468, -2286.14, -1660.88, 482.426, 83.096, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(220, 468, -2285.85, -1658.06, 482.529, 83.907, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(221, 468, -2285.2, -1654.6, 482.649, 79.511, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(222, 468, -2286.39, -1664.3, 482.298, 85.729, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(223, 556, -2355.23, -1633.42, 484.072, 258.051, -2, -2, -1, 0, 0, 0, 'RL-RPG'),
(224, 557, -2353.02, -1620.84, 484.033, 254.621, -2, -2, -1, 0, 0, 0, 'RL-RPG'),
(225, 557, -2354.54, -1627.34, 484.052, 258.532, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(226, 568, -2340.84, -1583.29, 483.405, 243.8, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(227, 568, -2343.69, -1588.38, 483.424, 247.841, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(228, 568, -2338.48, -1578.5, 483.39, 249.544, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(229, 513, 1898.88, -2625.89, 14.092, 0.667, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(230, 479, 1098.66, -1766.79, 13.143, 90.625, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(231, 521, 1761.87, -1061.99, 23.534, 0, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(232, 581, 956.184, -1504.63, 13.121, 0, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(233, 402, 2052.6, -1904.07, 13.379, 0.608, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(234, 404, 2297.47, -1636.84, 14.453, 267.965, -1, -1, -1, 0, 0, 0, 'RL-RPG'),
(235, 434, 1077.56, -1208.71, 17.6674, 88.4489, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(236, 519, 1806.11, -2406.81, 14.4731, 220.19, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(237, 519, 1851.09, -2397.08, 14.4738, 221.078, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(238, 519, 1881.29, -2364.67, 14.476, 231.693, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(239, 593, 1991.94, -2377.57, 14.0096, 111.982, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(240, 593, 1994.23, -2329.92, 14.0074, 123.692, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(241, 593, 1993.04, -2307.15, 14.0073, 121.483, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(242, 553, 1944.52, -2639.15, 14.8823, 28.0299, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(243, 553, 1984.28, -2637.76, 14.8831, 9.0602, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(244, 553, 2019.76, -2642.58, 14.8759, 318.326, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(245, 476, 2124.74, -2418.3, 14.2641, 205.462, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(246, 476, 2142.87, -2434.31, 14.2587, 144.214, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(247, 476, 2107.14, -2417.16, 14.2647, 150.974, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(248, 476, 2083.02, -2429.49, 14.2543, 182.997, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(249, 510, 2081.99, -2359.72, 13.1551, 64.1485, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(250, 510, 1866.61, -2660.46, 13.1552, 18.6151, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(251, 513, 1881.03, -2632.33, 14.0996, 40.9586, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(252, 593, 1840.43, -2631.85, 14.008, 319.203, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(253, 593, 1806.71, -2630.32, 14.0037, 32.0461, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(254, 487, 1716.04, -2437.58, 13.7316, 148.79, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(255, 487, 1737.48, -2432.7, 13.734, 192.033, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(256, 487, 1752.56, -2452.23, 13.7322, 147.203, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(257, 466, 594.693, -1519.67, 14.8586, 178.984, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(258, 567, 1725.05, -2130.47, 13.4259, 180.754, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(259, 475, 1981.17, -1985.42, 13.3487, 0.0153, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(260, 554, 1928.45, -1795.03, 13.4708, 269.166, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(261, 542, 863.273, -1375.02, 13.3187, 85.7265, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(262, 561, 903.895, -1454.93, 12.8651, 270.786, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(263, 496, 821.603, -1473.72, 12.5756, 357.501, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(264, 418, 1005.01, -1461.34, 13.6427, 183.026, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(265, 405, 1109.03, -1225.88, 15.6987, 181.534, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(266, 542, 1061.25, -1665.26, 13.4966, 91.912, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(267, 546, 1536.66, -1846.78, 13.2712, 0.818499, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(268, 496, 1938.16, -2141.81, 13.2781, 179.782, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(269, 536, 1834.78, -1871.97, 13.0925, 179.243, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(270, 463, 1981.69, -1274.19, 23.3606, 179.987, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(271, 439, 311.723, -1809.86, 4.3552, 179.975, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(272, 496, 334.388, -1788.6, 4.7803, 358.117, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(273, 467, 740.437, -1793.55, 12.918, 349.209, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(274, 473, 823.759, -2066.27, -0.1017, 112.638, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(275, 467, 944.914, -1813.56, 13.0146, 350.061, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(276, 404, 767.179, -1030.71, 23.8089, 183.982, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(277, 439, 783.375, -1356.82, 13.4354, 272.475, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(278, 463, 733.638, -1347.56, 13.0519, 258.914, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(279, 534, 2284.06, -1681.72, 13.8912, 0.362899, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(280, 426, 2500.29, -1755.73, 13.1737, 179.594, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(281, 475, 2498.79, -1953.69, 13.2268, 180.076, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(282, 475, 2731.43, -1937.16, 13.3474, 270.949, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(283, 463, 2757.83, -1878.89, 9.2421, 331.154, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(284, 466, 2829.76, -1699.74, 9.7443, 256.398, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(285, 463, 2696.42, -1669.26, 9.0249, 152.71, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(286, 546, 2792.7, -1432.13, 19.9428, 95.9562, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(287, 536, 2570.64, -1101.57, 65.9616, 224.281, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(288, 478, 2492.57, -951.868, 82.2364, 268.917, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(289, 478, 2368.48, -651.113, 127.642, 221.506, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(290, 475, 2431.32, -1241.57, 24.1538, 177.577, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(291, 536, 2520.14, -1480.91, 23.7363, 1.3232, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(292, 536, 2411.66, -1390.65, 24.0787, 268.819, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(293, 496, 1809.47, -1432.13, 13.0139, 274.771, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(294, 518, 1629.47, -1103.32, 23.576, 268.526, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(295, 484, 2947.81, -2052.64, 0.4738, 359.414, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(296, 422, 2203.6, -2595.36, 13.5221, 87.9727, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(297, 422, 2206.77, -2527.81, 13.5299, 94.0067, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(298, 422, 2516.47, -2452.89, 13.6216, 44.3283, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(299, 422, 2428.15, -2492.56, 13.6317, 45.6813, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(300, 439, 1373.67, -1634.17, 13.279, 271.5, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(301, 475, 1359.67, -1749.62, 13.1843, 0.096199, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(302, 439, 1401.36, -1507.12, 13.4834, 163.415, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(303, 542, 1797.13, -1701.11, 13.2757, 179.534, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(304, 475, 1277.55, -1610.12, 13.3511, 90.3928, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(305, 439, 1670.62, -1886.9, 13.4429, 2.8833, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(306, 475, 1145.15, -1366.74, 13.5456, 184.417, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(307, 418, 2090.48, -1556.8, 13.2113, 181.818, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(308, 554, 2224.82, -2211.07, 13.6286, 314.528, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(309, 439, 1398.16, -2225.49, 13.4427, 179.626, -1, -1, 1500, 0, 0, 0, 'RL-RPG'),
(310, 496, 1391.52, -2364.21, 13.2633, 179.705, -1, -1, 1500, 0, 0, 0, 'RL-RPG');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Stock` int(11) NOT NULL,
  `Price` int(20) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Model` int(4) NOT NULL,
  `Type` int(2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`ID`, `Stock`, `Price`, `Name`, `Model`, `Type`) VALUES
(1, 30, 250000, 'Bike', 509, 1),
(2, 30, 500000, 'Faggio', 462, 1),
(3, 30, 550000, 'Mountain Bike', 510, 1),
(4, 30, 750000, 'Perennial', 404, 1),
(5, 30, 930000, 'Rumpo', 440, 1),
(6, 30, 1200000, 'Camper', 483, 1),
(7, 30, 1100000, 'Moonbeam', 418, 1),
(8, 30, 1300000, 'Sadler', 543, 1),
(9, 30, 1250000, 'Walton', 478, 1),
(10, 30, 1300000, 'Regina', 479, 1),
(11, 30, 1450000, 'Oceanic', 467, 1),
(12, 30, 1470000, 'Glendale', 466, 1),
(13, 30, 1570000, 'Bravura', 401, 1),
(14, 30, 1700000, 'Hermes', 474, 1),
(15, 30, 1750000, 'Manana', 410, 1),
(16, 30, 2000000, 'Intruder', 546, 1),
(17, 30, 2100000, 'Berkley''s RC Van', 459, 1),
(18, 30, 2500000, 'Sunrise', 550, 1),
(19, 30, 2500000, 'Previon', 436, 1),
(20, 30, 2400000, 'Fortune', 526, 1),
(21, 30, 2600000, 'Primo', 547, 1),
(22, 30, 2500000, 'Majestic', 517, 1),
(23, 30, 2450000, 'Virgo', 491, 1),
(24, 30, 2500000, 'Bobcat', 422, 1),
(25, 30, 2900000, 'Quad', 471, 1),
(26, 30, 3500000, 'Burrito', 482, 1),
(27, 30, 3500000, 'Solair', 458, 1),
(28, 30, 3200000, 'Cadrona', 527, 1),
(29, 30, 3350000, 'Mesa', 500, 1),
(30, 30, 3550000, 'Journey', 508, 1),
(31, 30, 3550000, 'Merit', 551, 1),
(32, 30, 3850000, 'Landstalker', 400, 1),
(33, 30, 4500000, 'Nebula', 516, 1),
(34, 30, 4300000, 'Emperor', 585, 1),
(35, 30, 4400000, 'Esperanto', 419, 1),
(36, 30, 4300000, 'Willard', 529, 1),
(37, 30, 4500000, 'Stallion', 439, 1),
(38, 30, 4500000, 'Clover', 542, 1),
(39, 30, 4500000, 'Stafford', 580, 1),
(40, 30, 4500000, 'Tampa', 549, 1),
(41, 30, 4700000, 'Picador', 600, 1),
(42, 30, 4800000, 'Hustler', 545, 1),
(43, 30, 5000000, 'Greenwood', 492, 1),
(44, 30, 5000000, 'Hotknife', 434, 1),
(45, 30, 5000000, 'Stratum', 561, 1),
(46, 30, 5000000, 'Vincent', 540, 1),
(47, 30, 5200000, 'Elegant', 507, 1),
(48, 30, 5200000, 'Washington', 421, 1),
(49, 30, 5400000, 'Broadway', 575, 1),
(50, 30, 5700000, 'Tahoma', 566, 1),
(51, 30, 5800000, 'Savanna', 567, 1),
(52, 30, 6000000, 'Blista Compact', 496, 1),
(53, 30, 6500000, 'Slamvan', 535, 1),
(54, 30, 6600000, 'Tornado', 576, 1),
(55, 30, 6500000, 'Buccaneer', 518, 1),
(56, 30, 7000000, 'Yosemite', 554, 1),
(57, 30, 7200000, 'Windsor', 555, 1),
(58, 30, 7300000, 'Remington', 534, 1),
(59, 30, 7500000, 'Wayfarer', 586, 1),
(60, 30, 8000000, 'Bloodring Banger', 504, 1),
(61, 30, 8300000, 'Premier', 426, 1),
(62, 30, 8500000, 'Club', 589, 1),
(63, 30, 9000000, 'Phoenix', 603, 1),
(64, 30, 10000000, 'Freeway', 463, 1),
(65, 30, 11000000, 'Sabre', 475, 1),
(66, 30, 11000000, 'Rancher', 489, 1),
(67, 30, 12000000, 'Blade', 536, 1),
(68, 30, 12000000, 'Sentinel', 405, 1),
(69, 30, 12000000, 'Euros', 587, 1),
(70, 30, 12500000, 'Feltzer', 533, 1),
(71, 30, 12500000, 'Admiral', 445, 1),
(72, 30, 13000000, 'Voodoo', 412, 1),
(73, 30, 14000000, 'Sanchez', 468, 1),
(74, 30, 14000000, 'Alpha', 602, 1),
(75, 30, 14800000, 'Huntley', 579, 1),
(76, 30, 15000000, 'Flash', 565, 1),
(77, 30, 20000000, 'Uranus', 558, 1),
(78, 30, 23000000, 'Comet', 480, 1),
(79, 30, 24000000, 'BF-400', 581, 1),
(80, 30, 27000000, 'Super GT', 506, 1),
(81, 30, 29000000, 'PCJ-600', 461, 1),
(82, 30, 30000000, 'FCR-900', 521, 1),
(83, 30, 31000000, 'Sandking', 495, 1),
(84, 30, 41000000, 'ZR-350', 477, 1),
(85, 30, 41300000, 'Jester', 559, 1),
(86, 30, 41500000, 'Elegy', 562, 1),
(87, 30, 42500000, 'Buffalo', 402, 1),
(88, 30, 52000000, 'Cheetah', 415, 1),
(89, 29, 54500000, 'Banshee', 429, 1),
(90, 30, 56000000, 'Sultan', 560, 1),
(91, 30, 65000000, 'Turismo', 451, 1),
(92, 30, 75000000, 'NRG-500', 522, 1),
(93, 30, 82000000, 'Bullet', 541, 1),
(94, 30, 87000000, 'Infernus', 411, 1),
(95, 30, 2500, 'Monster', 444, 2),
(96, 30, 2500, 'Monster A', 556, 2),
(97, 30, 2500, 'Monster B', 557, 2),
(98, 30, 2800, 'Hotring Racer', 494, 2),
(99, 30, 2800, 'Hotring Racer A', 502, 2),
(100, 30, 2800, 'Hotring Racer B', 503, 2),
(101, 30, 2700, 'Sparrow', 469, 2),
(102, 30, 3100, 'Maverick', 487, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ticketcomments`
--

DROP TABLE IF EXISTS `ticketcomments`;
CREATE TABLE IF NOT EXISTS `ticketcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `playerid` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `text` varchar(255) NOT NULL,
  `status` int(69) NOT NULL DEFAULT '0',
  `playerid` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

DROP TABLE IF EXISTS `turfs`;
CREATE TABLE IF NOT EXISTS `turfs` (
  `turfID` int(3) NOT NULL AUTO_INCREMENT,
  `Owned` int(11) NOT NULL DEFAULT '0',
  `MinX` float NOT NULL,
  `MinY` float NOT NULL,
  `MaxX` float NOT NULL,
  `MaxY` float NOT NULL,
  PRIMARY KEY (`turfID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Salvarea datelor din tabel `turfs`
--

INSERT INTO `turfs` (`turfID`, `Owned`, `MinX`, `MinY`, `MaxX`, `MaxY`) VALUES
(1, 13, 114.21, -1364.93, 506.54, -912.91),
(2, 13, 506.54, -1364.93, 899.25, -912.91),
(3, 13, 899.25, -1313.7, 1313.58, -912.91),
(4, 13, 1313.58, -1364.93, 1727.49, -912.91),
(5, 13, 1727.49, -1364.93, 2108.13, -912.91),
(6, 5, 2108.13, -1364.93, 2499.38, -912.91),
(7, 6, 2499.38, -1313.7, 2916.17, -912.91),
(8, 5, 114.21, -1821.03, 506.54, -1364.93),
(9, 5, 506.54, -1821.03, 899.25, -1364.93),
(10, 5, 899.25, -1721.9, 1313.58, -1313.7),
(11, 5, 1313.58, -1821.03, 1727.49, -1364.93),
(12, 5, 1727.49, -1821.03, 2108.13, -1364.93),
(13, 11, 2108.13, -1821.03, 2499.38, -1364.93),
(14, 11, 2499.38, -1737.65, 2916.17, -1313.7),
(15, 12, 899.25, -2131.32, 1313.58, -1721.9),
(16, 12, 899.25, -2489.99, 1313.58, -2131.32),
(17, 12, 1313.58, -2250.92, 1727.49, -1821.03),
(18, 12, 1727.49, -2250.92, 2108.13, -1821.03),
(19, 12, 2108.13, -2250.92, 2499.38, -1821.03),
(20, 12, 2499.38, -2172.41, 2916.17, -1737.65),
(21, 6, 1313.58, -2690.47, 1727.49, -2250.92),
(22, 6, 1727.49, -2690.47, 2108.13, -2250.92),
(23, 6, 2108.13, -2690.47, 2499.38, -2250.92),
(24, 6, 2499.38, -2567.91, 2916.17, -2172.41),
(25, 6, 2200.2, -143.555, 2478.52, 193.359),
(26, 6, 1215.82, 146.484, 1385.74, 366.211),
(27, 6, 593.75, -605.469, 833.984, -482.422),
(28, 13, 140.625, -210.938, 335.938, -19.5312),
(29, 13, -2242.19, -2542.97, -2074.22, -2253.91),
(30, 13, -336.914, 1025.39, 61.5234, 1201.17),
(31, 13, -328.125, 2636.72, -140.625, 2768.55),
(32, 13, -2636.72, 2226.56, -2246.09, 2515.62),
(33, 13, -1621.09, 2511.72, -1355.47, 2722.66),
(34, 13, -898.438, 1449.22, -734.375, 1613.28),
(35, 13, 1114.47, 2444.49, 1478.16, 2901.03),
(36, 5, 1478.16, 2444.49, 1828.16, 2901.03),
(37, 5, 2150.16, 2444.49, 2528.16, 2901.03),
(38, 5, 1828.16, 2444.49, 2150.16, 2901.03),
(39, 5, 2528.16, 2444.49, 2878.16, 2901.03),
(40, 5, 901.16, 1980.34, 1307.16, 2444.49),
(41, 11, 1307.16, 1980.34, 1677.16, 2444.49),
(42, 11, 1677.16, 1980.34, 2076.16, 2444.49),
(43, 11, 2076.16, 1980.34, 2482, 2444.49),
(44, 11, 2482, 1980.34, 2878.16, 2444.49),
(45, 11, 901.16, 1528.09, 1307.16, 1980.34),
(46, 11, 1307.16, 1528.09, 1677.16, 1980.34),
(47, 11, 1677.16, 1528.09, 2076.16, 1980.34),
(48, 12, 2076.16, 1528.09, 2482, 1980.34),
(49, 12, 2482, 1528.09, 2878.16, 1980.34),
(50, 12, 901.16, 1074.9, 1307.16, 1528.09),
(51, 12, 1307.16, 1074.9, 1677.16, 1528.09),
(52, 5, 1677.16, 1074.9, 2076.16, 1528.09),
(53, 5, 2076.16, 1074.9, 2482, 1528.09),
(54, 6, 2482, 1074.9, 2878.16, 1528.09),
(55, 12, 1307.16, 663.83, 1677.16, 1074.9),
(56, 11, 1677.16, 663.83, 2076.16, 1074.9),
(57, 13, 2076.16, 663.83, 2482, 1074.9),
(58, 5, 2482, 663.83, 2878.16, 1074.9),
(59, 13, -2795.03, 1129.25, -2385.03, 1411.25),
(60, 13, -2385.03, 1129.25, -1988.03, 1411.25),
(61, 13, -1988.03, 1129.25, -1591.03, 1411.25),
(62, 13, -2894.03, 847.25, -2497.03, 1129.25),
(63, 5, -2497.03, 847.25, -2100.03, 1129.25),
(64, 5, -2100.03, 847.25, -1703.03, 1129.25),
(65, 5, -1703.03, 847.25, -1511.03, 1129.25),
(66, 5, -2894.03, 565.25, -2497.03, 847.25),
(67, 6, -2497.03, 565.25, -2100.03, 847.25),
(68, 6, -2100.03, 565.25, -1703.03, 847.25),
(69, 6, -2894.03, 283.25, -2497.03, 565.25),
(70, 6, -2497.03, 283.25, -2100.03, 565.25),
(71, 11, -2100.03, 283.25, -1703.03, 565.25),
(72, 11, -1703.03, 565.25, -1511.03, 847.25),
(73, 11, -1703.03, 283.25, -1511.03, 565.25),
(74, 11, -2894.03, 1.25, -2497.03, 283.25),
(75, 12, -2497.03, 1.25, -2100.03, 283.25),
(76, 12, -2100.03, 1.25, -1703.03, 283.25),
(77, 12, -2894.03, -280.75, -2497.03, 1.25),
(78, 12, -2497.03, -280.75, -2100.03, 1.25),
(79, 5, -2100.03, -280.75, -1703.03, 1.25),
(80, 6, -2894.03, -562.75, -2497.03, -280.75),
(81, 11, -2497.03, -562.75, -2100.03, -280.75),
(82, 13, -2100.03, -562.75, -1703.03, -280.75);

-- --------------------------------------------------------

--
-- Table structure for table `unbancomments`
--

DROP TABLE IF EXISTS `unbancomments`;
CREATE TABLE IF NOT EXISTS `unbancomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unbanid` int(69) NOT NULL,
  `text` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `playerid` int(69) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unbans`
--

DROP TABLE IF EXISTS `unbans`;
CREATE TABLE IF NOT EXISTS `unbans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(69) NOT NULL DEFAULT '0',
  `text` varchar(255) NOT NULL,
  `playerid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `PlayerID` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL,
  `password` varchar(128) NOT NULL,
  `Ip` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `Level` int(6) NOT NULL DEFAULT '1',
  `Admin` int(6) NOT NULL DEFAULT '0',
  `Helper` int(6) NOT NULL DEFAULT '0',
  `Premium` int(6) NOT NULL DEFAULT '0',
  `ConnectedTime` varchar(6) NOT NULL DEFAULT '0.0',
  `Registered` int(6) NOT NULL DEFAULT '0',
  `Tutorial` int(6) NOT NULL DEFAULT '0',
  `Sex` int(6) NOT NULL DEFAULT '0',
  `Muted` int(6) NOT NULL DEFAULT '0',
  `MuteTime` int(11) NOT NULL DEFAULT '0',
  `Respect` int(11) NOT NULL DEFAULT '0',
  `Money` int(11) NOT NULL DEFAULT '100000',
  `Bank` int(11) NOT NULL DEFAULT '15000',
  `Gold` int(11) NOT NULL DEFAULT '0',
  `GiftPoint` int(11) NOT NULL DEFAULT '0',
  `Phonebook` int(6) NOT NULL DEFAULT '0',
  `WantedLevel` int(2) NOT NULL DEFAULT '0',
  `WantedTime` int(11) NOT NULL DEFAULT '0',
  `Job` int(6) NOT NULL DEFAULT '0',
  `Jailed` int(6) NOT NULL DEFAULT '0',
  `JailTime` int(11) NOT NULL DEFAULT '0',
  `Materials` int(11) NOT NULL DEFAULT '0',
  `Drugs` int(11) NOT NULL DEFAULT '0',
  `Leader` int(6) NOT NULL DEFAULT '0',
  `Member` int(6) NOT NULL DEFAULT '0',
  `FactionRank` int(6) NOT NULL DEFAULT '0',
  `Skin` int(6) NOT NULL DEFAULT '289',
  `FWarn` int(6) NOT NULL DEFAULT '0',
  `FPunish` int(6) NOT NULL DEFAULT '0',
  `RobSkill` int(6) NOT NULL DEFAULT '1',
  `RobRem` int(11) NOT NULL DEFAULT '6',
  `RobTimes` int(11) NOT NULL DEFAULT '0',
  `FarmSkill` int(6) NOT NULL DEFAULT '1',
  `FarmTimes` int(11) NOT NULL DEFAULT '0',
  `FarmRem` int(11) NOT NULL DEFAULT '16',
  `TruckSkill` int(6) NOT NULL DEFAULT '1',
  `TruckTimes` int(11) NOT NULL DEFAULT '0',
  `TruckRem` int(11) NOT NULL DEFAULT '16',
  `PizzaSkill` int(6) NOT NULL DEFAULT '1',
  `PizzaTimes` int(11) NOT NULL DEFAULT '0',
  `PizzaRem` int(11) NOT NULL DEFAULT '16',
  `MatsSkill` int(11) NOT NULL DEFAULT '1',
  `MatsTimes` int(11) NOT NULL DEFAULT '0',
  `MatsRem` int(11) NOT NULL DEFAULT '16',
  `PhoneNr` int(6) NOT NULL DEFAULT '-1',
  `House` int(6) NOT NULL DEFAULT '255',
  `Bizz` int(6) NOT NULL DEFAULT '255',
  `RobPoint` int(11) NOT NULL DEFAULT '0',
  `CarLic` int(11) NOT NULL DEFAULT '0',
  `FlyLic` int(11) NOT NULL DEFAULT '0',
  `BoatLic` int(11) NOT NULL DEFAULT '0',
  `FishLic` int(11) NOT NULL DEFAULT '0',
  `GunLic` int(11) NOT NULL DEFAULT '0',
  `Passport` int(11) NOT NULL DEFAULT '0',
  `Warnings` int(6) NOT NULL DEFAULT '0',
  `Rented` int(6) NOT NULL DEFAULT '-2',
  `Fuel` int(6) NOT NULL DEFAULT '0',
  `Email` varchar(50) NOT NULL,
  `RegisterDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastOn` varchar(50) NOT NULL,
  `Banned` int(6) NOT NULL DEFAULT '0',
  `MP3` int(6) NOT NULL DEFAULT '0',
  `Hidden` int(3) NOT NULL DEFAULT '0',
  `Phone` int(6) NOT NULL DEFAULT '0',
  `Cars` varchar(255) NOT NULL DEFAULT '0|0|0|0|-1|-1|-1|-1|-1|-1',
  `Canistra` int(6) NOT NULL DEFAULT '0',
  `Glasses` int(11) NOT NULL DEFAULT '-1',
  `Hat` int(11) NOT NULL DEFAULT '-1',
  `Spawn` int(6) NOT NULL DEFAULT '0',
  `ShowHealth` tinyint(2) NOT NULL DEFAULT '0',
  `ShowFPS` tinyint(2) NOT NULL DEFAULT '0',
  `Undita` int(6) NOT NULL DEFAULT '0',
  `Momeala` int(6) NOT NULL DEFAULT '0',
  `FightStyle` int(11) NOT NULL DEFAULT '0',
  `Status` int(2) NOT NULL DEFAULT '0',
  `HeadValue` int(11) NOT NULL DEFAULT '0',
  `HitT` int(5) NOT NULL DEFAULT '0',
  `Contracts` int(3) NOT NULL DEFAULT '0',
  `FactionDays` int(11) NOT NULL DEFAULT '0',
  `PlayerFaction` int(6) NOT NULL DEFAULT '0',
  `ClanRank` int(6) NOT NULL DEFAULT '0',
  `ClanWarn` int(2) NOT NULL DEFAULT '0',
  `Clan` int(6) NOT NULL DEFAULT '0',
  `ClanTagType` int(6) NOT NULL DEFAULT '0',
  `ClanDays` int(11) NOT NULL DEFAULT '0',
  `FreePoint` int(11) NOT NULL DEFAULT '0',
  `rpgon` int(10) NOT NULL DEFAULT '0',
  `Aproove` int(69) NOT NULL DEFAULT '0',
  `Request` int(69) NOT NULL DEFAULT '0',
  `newemail` int(69) NOT NULL DEFAULT '0',
  `deconnect` int(11) NOT NULL DEFAULT '0',
  `AdminDays` int(11) NOT NULL DEFAULT '0',
  `AdminHours` int(11) NOT NULL DEFAULT '0',
  `HelperDays` int(11) NOT NULL DEFAULT '0',
  `HelperHours` int(11) NOT NULL DEFAULT '0',
  `Color` int(3) NOT NULL DEFAULT '0',
  `Colors` varchar(32) NOT NULL DEFAULT 'ffffff',
  `Fireworks` int(5) NOT NULL DEFAULT '0',
  `Voted` int(2) NOT NULL DEFAULT '0',
  `Propose` int(2) NOT NULL DEFAULT '0',
  `LeaderHours` int(11) NOT NULL DEFAULT '0',
  `Pin` varchar(6) NOT NULL DEFAULT '0',
  `Frequence` varchar(16) NOT NULL DEFAULT '0.0',
  `Seconds` varchar(16) NOT NULL DEFAULT '0',
  `TempPremiumDay` int(3) NOT NULL DEFAULT '0',
  `TempPremiumMonth` int(3) NOT NULL DEFAULT '0',
  `TempPremiumYear` int(5) NOT NULL DEFAULT '0',
  `TempBanDay` int(3) NOT NULL DEFAULT '0',
  `TempBanMonth` int(3) NOT NULL DEFAULT '0',
  `TempBanYear` int(5) NOT NULL DEFAULT '0',
  `LastDayLogs` int(5) NOT NULL DEFAULT '0',
  `Quest` varchar(16) NOT NULL DEFAULT '0|0',
  `QuestProgress` varchar(16) NOT NULL DEFAULT '0|0',
  `NeedProgress` varchar(16) NOT NULL DEFAULT '0|0',
  PRIMARY KEY (`PlayerID`),
  UNIQUE KEY `id_2` (`PlayerID`),
  KEY `PlayerID` (`PlayerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

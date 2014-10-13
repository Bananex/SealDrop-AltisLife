-- phpMyAdmin SQL Dump
-- version 4.2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 10. Okt 2014 um 21:17
-- Server Version: 5.1.73
-- PHP-Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `*DB_NAME*`
--

DELIMITER $$
--
-- Prozeduren
--
CREATE DEFINER=`*DB_NAME*`@`localhost` PROCEDURE `deleteDeadVehicles`()
    NO SQL
DELETE FROM `vehicles` WHERE `alive` = 0$$

CREATE DEFINER=`*DB_NAME*`@`localhost` PROCEDURE `deleteEconomyPrices`()
    NO SQL
TRUNCATE `economy`$$

CREATE DEFINER=`*DB_NAME*`@`localhost` PROCEDURE `deleteOldGangs`()
DELETE FROM `gangs` WHERE `active` = 0$$

CREATE DEFINER=`*DB_NAME*`@`localhost` PROCEDURE `deleteOldMessages`()
TRUNCATE TABLE `messages`$$

CREATE DEFINER=`*DB_NAME*`@`localhost` PROCEDURE `deleteSelledHouses`()
DELETE FROM `houses` WHERE `owned` = 0$$

CREATE DEFINER=`*DB_NAME*`@`localhost` PROCEDURE `resetLifeVehicles`()
    NO SQL
UPDATE vehicles SET `active`= 0$$

CREATE DEFINER=`*DB_NAME*`@`localhost` PROCEDURE `setEconomyPrices`()
    NO SQL
INSERT INTO `economy` (`numero`, `ressource`, `sellprice`, `buyprice`, `varprice`, `minprice`, `maxprice`, `factor`, `shoptype`) VALUES
(1, 'apple', 50, 65, 1, 1, 60, '1', 'market'),
(2, 'heroinu', 2250, 0, 5, 1, 4000, '0', 'heroin'),
(3, 'heroinp', 4500, 0, 10, 1, 5000, '2', 'heroin'),
(4, 'salema', 45, 55, 1, 1, 100, '4', 'fishmarket'),
(5, 'ornate', 40, 50, 1, 1, 100, '4', 'fishmarket'),
(6, 'mackerel', 175, 200, 1, 1, 1000, '4', 'fishmarket'),
(7, 'tuna', 700, 900, 1, 1, 2000, '4', 'fishmarket'),
(8, 'mullet', 250, 300, 1, 1, 1000, '4', 'fishmarket'),
(9, 'catshark', 300, 350, 1, 1, 1000, '4', 'fishmarket'),
(10, 'rabbit', 65, 75, 1, 1, 500, '0', 'market'),
(11, 'oilp', 2250, 0, 2, 1, 3500, '3', 'oil'),
(12, 'turtle', 5750, 15000, 10, 1, 8000, '0', 'wongs'),
(13, 'water', 0, 10, 0, 1, 25, '0', 'market'),
(14, 'coffee', 0, 10, 0, 1, 75, '0', 'cop'),
(15, 'turtlesoup', 4500, 15000, 0, 1, 5000, '0', 'wongs'),
(16, 'donuts', 0, 10, 0, 1, 200, '0', 'cop'),
(17, 'marijuana', 3000, 0, 10, 1, 6000, '2', 'heroin'),
(18, 'tbacon', 25, 75, 0, 1, 75, '0', 'market'),
(19, 'lockpick', 750, 4000, 0, 1, 4100, '0', 'market'),
(20, 'redgull', 750, 1000, 0, 1, 1200, '0', 'market'),
(21, 'peach', 65, 70, 1, 1, 100, '1', 'market'),
(22, 'cocaine', 2500, 0, 5, 1, 4500, '0', 'heroin'),
(23, 'cocainep', 5000, 0, 10, 1, 8000, '2', 'heroin'),
(24, 'diamond', 1500, 0, 3, 1, 2000, '3', 'diamond'),
(25, 'diamondc', 3000, 0, 3, 1, 6000, '3', 'diamond'),
(26, 'iron_r', 1500, 0, 3, 1, 3000, '3', 'iron'),
(27, 'copper_r', 1000, 0, 3, 1, 1500, '3', 'iron'),
(28, 'salt_r', 2500, 0, 3, 1, 5000, '3', 'salt'),
(29, 'glass', 1500, 0, 3, 1, 3000, '3', 'glass'),
(30, 'fuelF', 10, 500, 0, 1, 1500, '0', 'market'),
(31, 'spikeStrip', 0, 10, 0, 1, 2000, '0', 'cop'),
(32, 'cement', 1000, 0, 3, 1, 8000, '3', 'cement'),
(33, 'goldbar', 90000, 0, 0, 1, 180000, '0', 'goldbar'),
(34, 'blastingcharge', 10000, 50000, 0, 1, 50000, '0', 'market'),
(35, 'boltcutter', 5000, 8000, 0, 1, 5000, '0', 'market'),
(36, 'defusekit', 0, 10, 0, 1, 2500, '0', 'cop'),
(37, 'storagesmall', 10, 125000, 0, 1, 10, '0', 'market'),
(38, 'storagebig', 10, 250000, 0, 1, 10, '0', 'market'),
(39, 'pickaxe', 700, 1200, 0, 1, 750, '0', 'market'),
(40, 'methu', 1875, 3750, 5, 1, 3600, '2', 'heroin'),
(41, 'methp', 3750, 0, 10, 1, 6500, '2', 'heroin'),
(42, 'bottledwhiskey', 5500, 3750, 5, 1, 6000, '2', 'speakeasy'),
(43, 'bottledbeer', 750, 1250, 5, 1, 1450, '2', 'speakeasy'),
(44, 'whiskey', 1250, 5500, 4, 1, 2500, '2', 'speakeasy'),
(45, 'wine', 1000, 4000, 2, 1, 4500, '2', 'beer'),
(46, 'grapes', 70, 95, 2, 1, 140, '2', 'market'),
(47, 'battery', 50, 100, 0, 1, 100, '2', 'market'),
(48, 'painkillers', 250, 500, 0, 1, 500, '2', 'pharmacy'),
(49, 'mash', 500, 2500, 1, 1, 1500, '2', 'bar'),
(50, 'rye', 2000, 0, 2, 1, 3500, '2', 'bar'),
(51, 'morphium', 100, 1500, 0, 1, 1500, '2', 'pharmacy'),
(52, 'yeast', 2000, 0, 2, 1, 3500, '2', 'pharmacy'),
(53, 'cornmeal', 200, 500, 2, 1, 750, '2', 'bar'),
(54, 'bottles', 50, 100, 1, 1, 100, '2', 'bar'),
(55, 'uranium', 10000, 0, 8, 1, 12500, '2', 'uranium'),
(56, 'kidney', 9000, 15000, 0, 1, 16750, '2', 'pharmacy'),
(57, 'scalpel', 1000, 7500, 0, 1, 7500, '2', 'pharmacy'),
(58, 'beerp', 550, 3750, 3, 1, 1500, '2', 'speakeasy'),
(59, 'mauer', 5, 10, 0, 1, 10, '2', 'cop'),
(60, 'zipties', 5, 500, 0, 1, 500, '2', 'market'),
(61, 'puranium', 250, 1000, 0, 1, 1000, '2', 'uranium'),
(62, 'ipuranium', 3500, 9000, 0, 1, 9000, '2', 'uranium')$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `economy`
--

CREATE TABLE IF NOT EXISTS `economy` (
`numero` int(12) NOT NULL,
  `ressource` varchar(32) NOT NULL,
  `sellprice` int(100) NOT NULL DEFAULT '0',
  `buyprice` int(100) NOT NULL DEFAULT '0',
  `varprice` int(100) NOT NULL,
  `minprice` int(100) NOT NULL,
  `maxprice` int(100) NOT NULL,
  `factor` enum('0','1','2','3','4','5','6','7') NOT NULL DEFAULT '0',
  `shoptype` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gangs`
--

CREATE TABLE IF NOT EXISTS `gangs` (
`id` int(11) NOT NULL,
  `owner` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `members` text,
  `maxmembers` int(2) DEFAULT '8',
  `bank` int(100) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
`id` int(11) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `inventory` text,
  `containers` text,
  `owned` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`uid` int(12) NOT NULL,
  `fromID` varchar(50) NOT NULL,
  `toID` varchar(50) NOT NULL,
  `message` text,
  `fromName` varchar(32) NOT NULL,
  `toName` varchar(32) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `players`
--

CREATE TABLE IF NOT EXISTS `players` (
`uid` int(12) NOT NULL,
  `name` varchar(32) NOT NULL,
  `playerid` varchar(50) NOT NULL,
  `cash` int(100) NOT NULL DEFAULT '0',
  `bankacc` int(100) NOT NULL DEFAULT '0',
  `coplevel` enum('0','1','2','3','4','5','6','7') NOT NULL DEFAULT '0',
  `cop_licenses` text,
  `civ_licenses` text,
  `med_licenses` text,
  `cop_gear` text NOT NULL,
  `med_gear` text NOT NULL,
  `mediclevel` enum('0','1','2') NOT NULL DEFAULT '0',
  `arrested` tinyint(1) NOT NULL DEFAULT '0',
  `aliases` text NOT NULL,
  `adminlevel` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `donatorlvl` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `civ_gear` text NOT NULL,
  `blacklist` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10283 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
`id` int(12) NOT NULL,
  `side` varchar(15) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `type` varchar(12) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `plate` int(20) NOT NULL,
  `color` int(20) NOT NULL,
  `inventory` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1132 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `economy`
--
ALTER TABLE `economy`
 ADD PRIMARY KEY (`numero`), ADD UNIQUE KEY `ressource` (`ressource`);

--
-- Indexes for table `gangs`
--
ALTER TABLE `gangs`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
 ADD PRIMARY KEY (`id`,`pid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
 ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `playerid` (`playerid`), ADD KEY `name` (`name`), ADD KEY `blacklist` (`blacklist`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
 ADD PRIMARY KEY (`id`), ADD KEY `side` (`side`), ADD KEY `pid` (`pid`), ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `economy`
--
ALTER TABLE `economy`
MODIFY `numero` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `gangs`
--
ALTER TABLE `gangs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `uid` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
MODIFY `uid` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10283;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1132;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

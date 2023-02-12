-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2023 at 12:31 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(140) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `amount`) VALUES
(1, 'Ibrahim Ahmad', 'ak.ibrahim@gmail.com', 9961000),
(2, 'waqquas', 'waqquas@gmail.com', 880000),
(3, 'wahid', 'wahid@gmail.com', 5007378),
(4, 'Shahrayar', 'shahrayar@gmail.com', 69470000),
(5, 'ayan', 'ayan@gmail.com', 10),
(6, 'shoib khan', 'shoib@gmail.com', 9378830),
(7, 'qamruzama', 'qammu@gmail.com', 7865800),
(8, 'amaan', 'amaan@gmail.com', 1602782),
(9, 'shifat', 'shifat@gmail.com', 20002730),
(10, 'Mujtaba', 'mujtaba@gmail.com', 40238432);

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `fromuser` varchar(140) NOT NULL,
  `touser` varchar(140) NOT NULL,
  `transamount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `fromuser`, `touser`, `transamount`) VALUES
(7, 'ayan', 'Ibrahim Ahmad', 2000),
(8, 'Ibrahim Ahmad', 'Ibrahim Ahmad', 19000),
(9, 'ayan', 'amaan', 19000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

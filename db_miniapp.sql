-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 24, 2015 at 03:33 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_miniapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
`contact_id` tinyint(2) unsigned NOT NULL,
  `contact_img` varchar(250) NOT NULL,
  `contact_name` varchar(300) NOT NULL,
  `contact_title` varchar(200) NOT NULL,
  `contact_company` varchar(200) NOT NULL,
  `contact_cell` int(20) NOT NULL,
  `contact_office` int(20) NOT NULL,
  `contact_email` varchar(250) NOT NULL,
  `contact_website` varchar(200) NOT NULL,
  `contact_address` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `contact_img`, `contact_name`, `contact_title`, `contact_company`, `contact_cell`, `contact_office`, `contact_email`, `contact_website`, `contact_address`) VALUES
(1, 'user.png', 'Jon Smith', 'General Manager', 'Smith & Doe', 2147483647, 2147483647, 'jon@smithanddoe.com', 'smithanddoe.com', '890 Oxford St'),
(2, 'user.png', 'Bob Marley', 'Singer', 'Tuff Gong Studios', 1366896779, 2147483647, 'bob@tuffgong.com', 'bobmarley.com', '123 Duff St, Kingston, Jamaica'),
(3, 'user.png', 'Paul Rudd', 'Actor', 'Acting House', 123441, 2341414, 'paul@acting.com', 'paulrudd.com', '810 Hamilton Rd'),
(4, 'user.png', 'Kris Jenner', 'Momager', 'Kardashian Inc', 1234567, 1234567, 'kris@kardashianinc.com', 'krisjenner.com', '100 Main St, Calabasas, CA'),
(5, 'user.png', 'Kim Kardashian', 'Reality TV Star', 'Kardashians Inc', 1234567, 1234567, 'kim@kardashianinc.com', 'kimkardashian.com', '100 Main St, Calabasas, CA'),
(6, 'user.png', 'Kylie Jenner', 'Reality TV Star', 'Kardashians Inc', 7654321, 7654321, 'kylie@kardashianinc.com', 'kyliejenner.com', '100 Main St, Calabasas, CA'),
(7, 'user.png', 'Kendal Jenner', 'Model', 'Balmain', 12345678, 12345678, 'kjenner@balmain.com', 'kendaljenner.com', '123 Dontknow, Calabasas, CA'),
(8, 'user.png', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', 'undefined', 'undefined'),
(9, 'user.png', 'Khloe Kardashian', 'Reality TV Star', 'Kardashians Inc', 12345678, 12345678, 'koko@kardashianinc.com', 'khloe.com', '123 buttonmash, Calabasas, CA'),
(10, 'user.png', 'Kanye West', 'Rapper', 'Yeezy', 987654, 98765, 'kanye@kanye.com', 'kanyewest.com', '900 West St, Los Angeles, CA'),
(11, 'user.png', 'North West', 'Baby', 'West Inc', 224234234, 234324321, 'nwest@kanye.com', 'northwest.com', '900'),
(12, 'user.png', 'Nene Leaks', 'Another Reality Star', 'Leaks Inc', 2147483647, 2147483647, 'nene@neneleaks.com', 'neneleaks.com', '134 Peachtree Dr, Atlanta, GA'),
(13, 'user.png', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', 'undefined', 'undefined'),
(14, 'user.png', 'Kourtney Kardashian', 'Reality TV Star', 'Kardashians Inc', 131231231, 124123123, 'kourtney@kardashianinc.com', 'kourtneykardashian.com', '134 Last St, Calabasas, CA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
 ADD PRIMARY KEY (`contact_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
MODIFY `contact_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

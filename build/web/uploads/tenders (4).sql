-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2017 at 07:07 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tenders`
--

-- --------------------------------------------------------

--
-- Table structure for table `acceptedtenders`
--

CREATE TABLE `acceptedtenders` (
  `sno` int(11) NOT NULL,
  `companyRegsiterNumber` int(11) NOT NULL,
  `pancard` int(11) NOT NULL,
  `QuoteAmount` decimal(11,0) NOT NULL,
  `AcceptedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acceptedtenders`
--

INSERT INTO `acceptedtenders` (`sno`, `companyRegsiterNumber`, `pancard`, `QuoteAmount`, `AcceptedTime`, `tenderId`) VALUES
(1, 12345, 0, '250000', '2017-01-28 13:44:58', 1),
(2, 4569, 46598624, '980000', '2017-02-07 05:07:00', 3),
(3, 4785963, 7412369, '800000', '2017-02-07 05:28:46', 4),
(4, 12345, 32145, '500000', '2017-02-07 07:06:25', 6),
(5, 78945, 1234569, '650000', '2017-02-07 07:41:41', 6);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(40) NOT NULL,
  `MobileNumber` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `Desig` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `MobileNumber`, `email`, `password`, `Desig`) VALUES
('a', '9652239271', 'a@gmail.com', 'a', 'user'),
('admin', '8977663166', 'admin@gmail.com', 'admin', 'admin'),
('b', '9652314569', 'b@gmail.com', 'b', 'user'),
('k', '8977552233', 'k@gmail.com', 'k', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tenderannouncement`
--

CREATE TABLE `tenderannouncement` (
  `sno` int(10) NOT NULL,
  `tenderId` int(20) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `fileName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenderannouncement`
--

INSERT INTO `tenderannouncement` (`sno`, `tenderId`, `startDate`, `endDate`, `fileName`) VALUES
(1, 1, '2017-01-28', '2017-02-21', 'EAadhaar_527941164870_18012017112013_343805.pdf'),
(2, 3, '2017-02-10', '2017-02-20', 'AMCU & Milk Analyzer(1).pdf'),
(3, 4, '2017-02-16', '2017-02-18', 'Untitled.jpg'),
(4, 6, '2017-02-10', '2017-02-25', 'UML diagrams.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tenderform`
--

CREATE TABLE `tenderform` (
  `TenderId` int(20) NOT NULL,
  `CompanyName` varchar(40) NOT NULL,
  `CompanyRegisterNumber` int(25) NOT NULL,
  `Location` varchar(25) NOT NULL,
  `Pincode` int(11) NOT NULL,
  `PanNumber` varchar(20) NOT NULL,
  `Experience` int(11) NOT NULL,
  `QuoteAmount` double(20,0) NOT NULL,
  `clear` varchar(20) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenderform`
--

INSERT INTO `tenderform` (`TenderId`, `CompanyName`, `CompanyRegisterNumber`, `Location`, `Pincode`, `PanNumber`, `Experience`, `QuoteAmount`, `clear`, `Time`) VALUES
(1, 'MTS', 12345, 'vijayawada', 522501, 'AKF5236974', 5, 250000, '', '2017-02-07 04:57:25'),
(3, 'dfgb', 4569, 'nellore', 522507, '46598624', 8, 980000, 'yes', '2017-02-07 05:07:00'),
(4, 'gtdfvc', 4785963, 'vijayawada', 522598, '7412369', 5, 800000, 'yes', '2017-02-07 05:28:46'),
(6, 'xxx', 12345, 'vijayawada', 522506, '32145', 6, 500000, 'yes', '2017-02-07 07:06:25'),
(6, 'kveninar', 78945, 'vijayawada', 522506, '1234569', 5, 650000, 'yes', '2017-02-07 07:41:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceptedtenders`
--
ALTER TABLE `acceptedtenders`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tenderannouncement`
--
ALTER TABLE `tenderannouncement`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acceptedtenders`
--
ALTER TABLE `acceptedtenders`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tenderannouncement`
--
ALTER TABLE `tenderannouncement`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

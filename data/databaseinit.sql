-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2017 at 02:26 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

CREATE DATABASE tenders;
USE tenders;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--

-- --------------------------------------------------------

--
-- Table structure for table `acceptedtenders`
--

CREATE TABLE `acceptedtenders` (
                                   `sno` int(11) NOT NULL,
                                   `companyRegsiterNumber` varchar(30) NOT NULL,
                                   `pancard` varchar(30) NOT NULL,
                                   `QuoteAmount` decimal(11,0) NOT NULL,
                                   `AcceptedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                   `tenderId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acceptedtenders`
--

INSERT INTO `acceptedtenders` (`sno`, `companyRegsiterNumber`, `pancard`, `QuoteAmount`, `AcceptedTime`, `tenderId`) VALUES
    (5, 'm123', '123ASD567', '1000000', '2017-03-02 12:45:23', 'AD123');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
                        `sno` int(11) NOT NULL,
                        `companyRegisterNumber` varchar(20) NOT NULL,
                        `story` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`sno`, `companyRegisterNumber`, `story`) VALUES
    (1, 'm123', 'hai hashfdsnvhnfncpocvhdgjfofjudhdhdhdhdhdhdhdhdhdhdhdhbogog');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
                            `name` varchar(40) NOT NULL,
                            `companyName` varchar(30) NOT NULL,
                            `registerId` varchar(20) NOT NULL,
                            `MobileNumber` varchar(20) NOT NULL,
                            `city` varchar(20) NOT NULL,
                            `state` varchar(20) NOT NULL,
                            `pinCode` varchar(20) NOT NULL,
                            `panNumber` varchar(15) NOT NULL,
                            `estYear` date NOT NULL,
                            `radioopt` varchar(20) NOT NULL,
                            `radioopt1` varchar(20) NOT NULL,
                            `file1` varchar(20) NOT NULL,
                            `email` varchar(30) NOT NULL,
                            `password` varchar(20) NOT NULL,
                            `check` varchar(100) NOT NULL,
                            `Desig` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `companyName`, `registerId`, `MobileNumber`, `city`, `state`, `pinCode`, `panNumber`, `estYear`, `radioopt`, `radioopt1`, `file1`, `email`, `password`, `check`, `Desig`) VALUES
                                                                                                                                                                                                              ('', '', '', '', '', '', '', '', '0000-00-00', '', '', '', 'admin@gmail.com', 'admin', '', 'admin'),
                                                                                                                                                                                                              ('ram', 'xx', 'x123', '8977663155', 'Vijayawada', 'ANDHRA PRADESH', '522509', 'ABC1234F56', '0000-00-00', 'indian', 'no', 'noImage', 'ram@gmail.com', '987654', 'on', 'user'),
                                                                                                                                                                                                              ('seetharam', 'mts', 'm123', '8977663166', 'Hyderabad', 'TELANGANA', '522503', '123ASD567', '0000-00-00', 'indian', 'yes', 'Android.docx', 'see@gmail.com', '123456', 'on', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tenderannouncement`
--

CREATE TABLE `tenderannouncement` (
                                      `sno` int(10) NOT NULL,
                                      `tenderId` varchar(30) NOT NULL,
                                      `startDate` date NOT NULL,
                                      `endDate` date NOT NULL,
                                      `fileName` varchar(80) NOT NULL,
                                      `department` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenderannouncement`
--

INSERT INTO `tenderannouncement` (`sno`, `tenderId`, `startDate`, `endDate`, `fileName`, `department`) VALUES
    (17, 'AD123', '2017-03-02', '2017-03-24', 'Tender.txt', 'road');

-- --------------------------------------------------------

--
-- Table structure for table `tenderform`
--

CREATE TABLE `tenderform` (
                              `TenderId` varchar(20) NOT NULL,
                              `CompanyName` varchar(40) NOT NULL,
                              `CompanyRegisterNumber` varchar(25) NOT NULL,
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
                                                                                                                                                                    ('AD123', 'mts', 'm123', 'Hyderabad', 522503, '123ASD567', 10, 1000000, 'yes', '2017-03-02 12:45:33'),
                                                                                                                                                                    ('AD123', 'xx', 'x123', 'Vijayawada', 522509, 'ABC1234F56', 6, 200000, 'yes', '2017-03-02 12:45:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceptedtenders`
--
ALTER TABLE `acceptedtenders`
    ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
    ADD PRIMARY KEY (`companyRegisterNumber`),
  ADD UNIQUE KEY `sno` (`sno`);

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
-- Indexes for table `tenderform`
--
ALTER TABLE `tenderform`
    ADD UNIQUE KEY `CompanyRegisterNumber` (`CompanyRegisterNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acceptedtenders`
--
ALTER TABLE `acceptedtenders`
    MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
    MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tenderannouncement`
--
ALTER TABLE `tenderannouncement`
    MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
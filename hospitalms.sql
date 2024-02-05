-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2024 at 02:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(12, 14, 'Ashwin', 'R', 'Male', 'ash@gmail.com', '7412225680', 'Ragul', 435, '2024-01-24', '10:00:00', 1, 1),
(1, 15, 'Thamarai', 'Selvan E', 'Male', 'thamarai@gmail.com', '7410000010', 'Lavanya', 450, '2024-07-14', '14:00:00', 0, 1),
(1, 16, 'Thamarai', 'Selvan E', 'Male', 'thamarai@gmail.com', '7410000010', 'Lavanya', 450, '2024-07-20', '10:00:00', 1, 1),
(11, 17, 'Kaviya', 'A', 'Female', 'kavi@gmail.com', '7850002580', 'Anusha', 500, '2024-07-22', '10:00:00', 1, 1),
(13, 18, 'Prakash', 'Raj', 'Male', 'pr@gmail.com', '7012569999', 'Sivabala', 400, '2024-07-22', '08:00:00', 1, 1),
(14, 19, 'Sathish', 'Kumar', 'Male', 'user@gmail.com', '1578946233', 'lavilavi', 450, '2024-01-22', '10:00:00', 1, 1),
(14, 20, 'Sathish', 'Kumar', 'Male', 'user@gmail.com', '1578946233', 'anusha', 500, '2024-01-23', '12:00:00', 1, 1),
(14, 21, 'Sathish', 'Kumar', 'Male', 'user@gmail.com', '1578946233', 'jananikumar', 480, '2024-01-23', '12:00:00', 1, 1),
(14, 22, 'Sathish', 'Kumar', 'Male', 'user@gmail.com', '1578946233', 'sivabala', 400, '2024-01-25', '14:00:00', 1, 1),
(14, 23, 'Sathish', 'Kumar', 'Male', 'user@gmail.com', '1578946233', 'ragulraj', 435, '2024-01-30', '10:00:00', 1, 1),
(14, 24, 'Sathish', 'Kumar', 'Male', 'user@gmail.com', '1578946233', 'janani priya', 0, '2024-01-24', '12:00:00', 0, 1),
(16, 25, 'Dinesh', 'R', 'Male', 'dinesh@gmail.com', '5789461235', 'lavilavi', 450, '2024-01-23', '12:00:00', 0, 1),
(16, 26, 'Dinesh', 'R', 'Male', 'dinesh@gmail.com', '5789461235', 'lavilavi', 450, '2024-01-23', '16:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Demo', 'demo@demail.com', '7014500000', 'this is a demo test');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `doctorname` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `doctorname`, `email`, `spec`, `docFees`) VALUES
('anusha', 'anu1234@r', 'Anusha', 'anushar@gmail.com', 'Cardiologist', 500),
('lavilavi', 'lavi@1234', 'Lavanya', 'laviabi@gmail.com', 'Neurologist', 450),
('sivabala', 'siva@1234', 'Sivabala', 'siva@gmail.com', 'Oncologist', 400),
('Janani', 'janani@1234', 'Janani', 'janani@gmail.com', 'Pediatrician', 450);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(14, 'Sathish', 'Kumar', 'Male', 'user@gmail.com', '1578946233', 'user@1234', 'user@1234'),
(15, 'Sathishkumar', 's', 'Male', 'user1@gmail.com', '5478945412', 'user1@1234', 'user1@1234'),
(16, 'Dinesh', 'R', 'Male', 'dinesh@gmail.com', '5789461235', 'user2@12', 'user2@12');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2026 at 06:34 AM
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
-- Database: `malaysian_election`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `Candidate_ID` varchar(10) NOT NULL,
  `Candidate_Name` varchar(100) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Party_ID` varchar(10) NOT NULL,
  `Constituency_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`Candidate_ID`, `Candidate_Name`, `Date_Of_Birth`, `Party_ID`, `Constituency_ID`) VALUES
('C01', 'Ahmad Amzad Hashim', '1970-01-15', 'PT02', 'P036'),
('C02', 'Abdul Hadi Awang', '1947-10-20', 'PT02', 'P037'),
('C03', 'Rosol Wahid', '1964-07-10', 'PT04', 'P038'),
('C04', 'Wong Chen', '1968-12-05', 'PT03', 'P104'),
('C05', 'Lee Chean Chung', '1981-06-22', 'PT03', 'P105'),
('C06', 'Fahmi Fadzil', '1981-02-04', 'PT03', 'P121'),
('C07', 'Zaliha Mustafa', '1964-06-28', 'PT03', 'P141'),
('C08', 'Pang Hok Liong', '1957-04-30', 'PT03', 'P142'),
('C09', 'Muhyiddin Yassin', '1947-05-15', 'PT04', 'P143'),
('C10', 'Mumtaz Md Nawi', '1963-10-12', 'PT02', 'P019'),
('C11', 'Ahmad Marzuk Shaary', '1975-12-07', 'PT02', 'P020'),
('C12', 'Takiyuddin Hassan', '1961-11-24', 'PT02', 'P021'),
('C13', 'Khairil Nizam Khirudin', '1979-03-18', 'PT04', 'P081'),
('C14', 'Mohd Azis Jamman', '1974-11-03', 'PT06', 'P171'),
('C15', 'Chan Foong Hin', '1978-02-25', 'PT03', 'P172'),
('C16', 'Jasmira Othman', '1972-05-14', 'PT01', 'P037'),
('C17', 'Ramlan Askolani', '1961-08-09', 'PT01', 'P121');

-- --------------------------------------------------------

--
-- Table structure for table `constituency`
--

CREATE TABLE `constituency` (
  `Constituency_ID` varchar(10) NOT NULL,
  `Constituency_Name` varchar(100) NOT NULL,
  `State_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constituency`
--

INSERT INTO `constituency` (`Constituency_ID`, `Constituency_Name`, `State_ID`) VALUES
('P019', 'Tumpat', 'ST04'),
('P020', 'Pengkalan Chepa', 'ST04'),
('P021', 'Kota Bharu', 'ST04'),
('P036', 'Kuala Terengganu', 'ST01'),
('P037', 'Marang', 'ST01'),
('P038', 'Hulu Terengganu', 'ST01'),
('P081', 'Jerantut', 'ST05'),
('P104', 'Subang', 'ST02'),
('P105', 'Petaling Jaya', 'ST02'),
('P121', 'Lembah Pantai', 'ST02'),
('P141', 'Sekijang', 'ST03'),
('P142', 'Labis', 'ST03'),
('P143', 'Pagoh', 'ST03'),
('P171', 'Sepanggar', 'ST06'),
('P172', 'Kota Kinabalu', 'ST06'),
('P195', 'Bandar Kuching', 'ST07'),
('P196', 'Stampin', 'ST07');

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE `election` (
  `Election_ID` varchar(10) NOT NULL,
  `Election_Name` varchar(50) NOT NULL,
  `Election_Type` varchar(20) NOT NULL,
  `Election_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`Election_ID`, `Election_Name`, `Election_Type`, `Election_Date`) VALUES
('EL01', 'PRU-15', 'PRU', '2022-11-19'),
('EL02', 'PRN Terengganu 2023', 'PRN', '2023-08-12'),
('EL03', 'PRN Selangor 2023', 'PRN', '2023-08-12'),
('EL04', 'PRN Kelantan 2023', 'PRN', '2023-08-12'),
('EL05', 'PRU-14', 'PRU', '2018-05-09'),
('EL06', 'PRN Sabah 2020', 'PRN', '2020-09-26'),
('EL07', 'PRN Sarawak 2021', 'PRN', '2021-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `political_party`
--

CREATE TABLE `political_party` (
  `Party_ID` varchar(10) NOT NULL,
  `Party_Name` varchar(100) NOT NULL,
  `Party_Acronym` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `political_party`
--

INSERT INTO `political_party` (`Party_ID`, `Party_Name`, `Party_Acronym`) VALUES
('PT01', 'Barisan Nasional', 'BN'),
('PT02', 'Parti Islam Se-Malaysia', 'PAS'),
('PT03', 'Pakatan Harapan', 'PH'),
('PT04', 'Perikatan Nasional', 'PN'),
('PT05', 'Gabungan Parti Sarawak', 'GPS'),
('PT06', 'Parti Warisan Sabah', 'WARISAN'),
('PT07', 'Parti Pribumi Bersatu Malaysia', 'BERSATU');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `State_ID` varchar(10) NOT NULL,
  `State_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`State_ID`, `State_Name`) VALUES
('ST01', 'Terengganu'),
('ST02', 'Selangor'),
('ST03', 'Johor'),
('ST04', 'Kelantan'),
('ST05', 'Pahang'),
('ST06', 'Sabah'),
('ST07', 'Sarawak');

-- --------------------------------------------------------

--
-- Table structure for table `turnout_record`
--

CREATE TABLE `turnout_record` (
  `TurnOut_ID` varchar(10) NOT NULL,
  `Total_Registered` int(11) NOT NULL,
  `Total_Votes` int(11) NOT NULL,
  `Turnout_Percent` decimal(5,2) NOT NULL,
  `Election_ID` varchar(10) NOT NULL,
  `Constituency_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `turnout_record`
--

INSERT INTO `turnout_record` (`TurnOut_ID`, `Total_Registered`, `Total_Votes`, `Turnout_Percent`, `Election_ID`, `Constituency_ID`) VALUES
('TR01', 133000, 105000, 78.95, 'EL02', 'P036'),
('TR02', 131000, 107000, 81.68, 'EL02', 'P037'),
('TR03', 88000, 71000, 80.68, 'EL02', 'P038'),
('TR04', 230000, 178000, 77.39, 'EL03', 'P104'),
('TR05', 140000, 103000, 73.57, 'EL03', 'P105'),
('TR06', 101000, 76000, 75.25, 'EL03', 'P121'),
('TR07', 63000, 47000, 74.60, 'EL01', 'P141'),
('TR08', 49000, 36000, 73.47, 'EL01', 'P142'),
('TR09', 69000, 54000, 78.26, 'EL01', 'P143'),
('TR10', 136000, 95000, 69.85, 'EL04', 'P019'),
('TR11', 107000, 80000, 74.77, 'EL04', 'P020'),
('TR12', 115000, 86000, 74.78, 'EL04', 'P021'),
('TR13', 87000, 66000, 75.86, 'EL01', 'P081'),
('TR14', 108000, 70000, 64.81, 'EL06', 'P171'),
('TR15', 74000, 50000, 67.57, 'EL06', 'P172'),
('TR16', 85000, 55000, 64.71, 'EL07', 'P195'),
('TR17', 99000, 71000, 71.72, 'EL07', 'P196');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`Candidate_ID`),
  ADD KEY `Party_ID` (`Party_ID`),
  ADD KEY `Constituency_ID` (`Constituency_ID`);

--
-- Indexes for table `constituency`
--
ALTER TABLE `constituency`
  ADD PRIMARY KEY (`Constituency_ID`),
  ADD KEY `State_ID` (`State_ID`);

--
-- Indexes for table `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`Election_ID`);

--
-- Indexes for table `political_party`
--
ALTER TABLE `political_party`
  ADD PRIMARY KEY (`Party_ID`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`State_ID`);

--
-- Indexes for table `turnout_record`
--
ALTER TABLE `turnout_record`
  ADD PRIMARY KEY (`TurnOut_ID`),
  ADD KEY `Election_ID` (`Election_ID`),
  ADD KEY `Constituency_ID` (`Constituency_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidate`
--
ALTER TABLE `candidate`
  ADD CONSTRAINT `candidate_ibfk_1` FOREIGN KEY (`Party_ID`) REFERENCES `political_party` (`Party_ID`),
  ADD CONSTRAINT `candidate_ibfk_2` FOREIGN KEY (`Constituency_ID`) REFERENCES `constituency` (`Constituency_ID`);

--
-- Constraints for table `constituency`
--
ALTER TABLE `constituency`
  ADD CONSTRAINT `constituency_ibfk_1` FOREIGN KEY (`State_ID`) REFERENCES `state` (`State_ID`);

--
-- Constraints for table `turnout_record`
--
ALTER TABLE `turnout_record`
  ADD CONSTRAINT `turnout_record_ibfk_1` FOREIGN KEY (`Election_ID`) REFERENCES `election` (`Election_ID`),
  ADD CONSTRAINT `turnout_record_ibfk_2` FOREIGN KEY (`Constituency_ID`) REFERENCES `constituency` (`Constituency_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

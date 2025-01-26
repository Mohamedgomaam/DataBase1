-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 03:53 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `Dname` varchar(100) DEFAULT NULL,
  `Dnum` int(11) NOT NULL,
  `MGRSSN` int(11) DEFAULT NULL,
  `MGRStartDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`Dname`, `Dnum`, `MGRSSN`, `MGRStartDate`) VALUES
('DP1', 10, 223344, '2005-01-01'),
('DP2', 20, 968574, '2006-01-03'),
('DP3', 30, 512463, '2006-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE `dependent` (
  `Essn` int(11) NOT NULL,
  `Dependent_name` varchar(100) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `Bdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dependent`
--

INSERT INTO `dependent` (`Essn`, `Dependent_name`, `gender`, `Bdate`) VALUES
(123456, 'Hala Saied Ali', 'F', '1970-10-18'),
(223344, 'Ahmed Kamel', 'M', '1998-03-27'),
(223344, 'Mona Adel Mo', 'F', '1975-04-25'),
(321654, 'Omar Amr Omran', 'M', '1993-03-30'),
(321654, 'Ramy Amr Omran', 'M', '1990-01-26'),
(321654, 'Sanaa Gawish', 'F', '1973-05-16'),
(512463, 'Nora Ghaly', 'F', '1976-06-22'),
(512463, 'Sara Edward', 'F', '2001-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `SSN` int(11) NOT NULL,
  `Bdate` date DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Superssn` int(11) DEFAULT NULL,
  `Dno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Fname`, `Lname`, `SSN`, `Bdate`, `Address`, `gender`, `Salary`, `Superssn`, `Dno`) VALUES
('Ahmed', 'Ali', 112233, '1965-01-01', '15 Ali fahmy St.Giza', 'M', 1300, 223344, 10),
('Hanaa', 'Sobhy', 123456, '1973-03-18', '38 Abdel Khalik Tharwat St.Downtown.Cairo', 'F', 800, 223344, 10),
('Kamel', 'Mohamed', 223344, '1970-10-15', '38 Mohy el dien abo el Ezz St.Cairo', 'M', 1800, 321654, 10),
('Amr', 'Omran', 321654, '1963-09-14', '44 Hilopolis.Cairo', 'M', 2500, NULL, NULL),
('Edward', 'Hanna', 512463, '1972-08-19', '18 Abaas El 3akaad St. Nasr City.Cairo', 'M', 1500, 321654, 30),
('Maged', 'Raoof', 521634, '1980-06-04', '18 kholosi st.Shobra.Cairo', 'M', 1000, 968574, 30),
('Mariam', 'Adel', 669955, '1982-12-06', '269 El-Haram st.Giza', 'F', 750, 512463, 20),
('Noha', 'Mohamed', 968574, '1975-01-02', '55 Orabi St.El Mohandiseen.Cairo', 'F', 1600, 321654, 20);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `Pname` varchar(100) DEFAULT NULL,
  `Pnumber` int(11) NOT NULL,
  `Plocation` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Dnum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Pname`, `Pnumber`, `Plocation`, `City`, `Dnum`) VALUES
('AL Solimaniah', 100, 'Cairo_Alex Road', 'Alex', 10),
('AL Rabwah', 200, '6th of October', 'Giza', 10),
('AL Rabwah', 300, 'Zaied City', 'Giza', 10),
('AL Rowad', 400, 'Cairo_Faiyom Road', 'Giza', 20),
('AL Rehab', 500, 'Nasr City', 'Cairo', 30),
('Pitcho america', 600, 'Maady', 'Cairo', 30),
('Ebad El Rahma', 700, 'Ring Road', 'Cairo', 20);

-- --------------------------------------------------------

--
-- Table structure for table `works_for`
--

CREATE TABLE `works_for` (
  `ESSN` int(11) NOT NULL,
  `Pno` int(11) NOT NULL,
  `Hours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works_for`
--

INSERT INTO `works_for` (`ESSN`, `Pno`, `Hours`) VALUES
(112233, 100, 40),
(223344, 100, 10),
(223344, 200, 10),
(223344, 300, 10),
(223344, 500, 10),
(512463, 500, 10),
(512463, 600, 25),
(521634, 300, 6),
(521634, 400, 4),
(521634, 500, 10),
(521634, 600, 20),
(669955, 300, 10),
(669955, 400, 20),
(669955, 700, 7),
(968574, 300, 10),
(968574, 400, 15),
(968574, 700, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`Dnum`),
  ADD KEY `MGRSSN` (`MGRSSN`);

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD PRIMARY KEY (`Essn`,`Dependent_name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `Dno` (`Dno`),
  ADD KEY `Superssn` (`Superssn`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Pnumber`),
  ADD KEY `Dnum` (`Dnum`);

--
-- Indexes for table `works_for`
--
ALTER TABLE `works_for`
  ADD PRIMARY KEY (`ESSN`,`Pno`),
  ADD KEY `Pno` (`Pno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`MGRSSN`) REFERENCES `employees` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dependent`
--
ALTER TABLE `dependent`
  ADD CONSTRAINT `dependent_ibfk_1` FOREIGN KEY (`Essn`) REFERENCES `employees` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`Dno`) REFERENCES `departments` (`Dnum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`Superssn`) REFERENCES `employees` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`Dnum`) REFERENCES `departments` (`Dnum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `works_for`
--
ALTER TABLE `works_for`
  ADD CONSTRAINT `works_for_ibfk_1` FOREIGN KEY (`Pno`) REFERENCES `project` (`Pnumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `works_for_ibfk_2` FOREIGN KEY (`ESSN`) REFERENCES `employees` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

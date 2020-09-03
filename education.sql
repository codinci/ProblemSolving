-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2020 at 01:22 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `education`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `instituition` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `name`, `instituition`) VALUES
(1, 'Bsc.Acturial Science', 1),
(2, 'MPhil Genomics', 2);

-- --------------------------------------------------------

--
-- Table structure for table `instituition`
--

CREATE TABLE `instituition` (
  `instituitionid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instituition`
--

INSERT INTO `instituition` (`instituitionid`, `name`) VALUES
(1, 'University College Dublin'),
(2, 'University College London');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `name`, `course`) VALUES
(1881, 'John', 1),
(1882, 'William', 1),
(1883, 'James', 1),
(1884, 'Charles', 1),
(1885, 'George', 1),
(1886, 'Frank', 1),
(1887, 'Joseph', 1),
(1888, 'Henry', 1),
(1889, 'Thomas', 1),
(1890, 'Robert', 1),
(1891, 'Edward', 1),
(1892, 'Harry', 1),
(1893, 'Walter', 1),
(1894, 'Lilian', 1),
(1980, 'Fred', 2),
(1981, 'Fridah', 2),
(1982, 'Samuel', 2),
(1983, 'David', 2),
(1984, 'Louis', 2),
(1985, 'Joe', 2),
(1986, 'Charlie', 2),
(1987, 'Clarence', 2),
(1988, 'Richard', 2),
(1989, 'Andrew', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`),
  ADD KEY `instituition` (`instituition`);

--
-- Indexes for table `instituition`
--
ALTER TABLE `instituition`
  ADD PRIMARY KEY (`instituitionid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`),
  ADD KEY `course` (`course`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`instituition`) REFERENCES `instituition` (`instituitionid`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`course`) REFERENCES `course` (`courseid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

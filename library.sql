-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2022 at 06:36 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bid` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `authors` text DEFAULT NULL,
  `edition` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `department` text DEFAULT NULL,
  `topic` text DEFAULT NULL,
  `publication` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bid`, `name`, `authors`, `edition`, `status`, `quantity`, `department`, `topic`, `publication`) VALUES
(9, 'pyhon', 'Mr. Rahim', '4th', 'available', 6, 'CSE', 'programming', 'M'),
(11, 'sad', 'Mr. Rahim', '4th', 'available', 4, 'cse', 'math', 'hhhh'),
(22, 'pyhon', 'Mr. X', '7th', 'available', 10, 'CSE', 'programming', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `book_request`
--

CREATE TABLE `book_request` (
  `Student_id` int(10) NOT NULL,
  `Email` char(50) DEFAULT NULL,
  `Book_name` char(30) DEFAULT NULL,
  `Author_name` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_request`
--

INSERT INTO `book_request` (`Student_id`, `Email`, `Book_name`, `Author_name`) VALUES
(1589, 'tt@gmail.com', 'new book', 'RR khan'),
(171171, 'troy@gmail.com', 'Quantitive Apptitude', 'RS Agarwal'),
(171175, 'saem@gmail.com', 'English Grammar', 'PC Das'),
(171179, 'shakik@gmail.com', 'Cliffs Toefl', 'MA Pyle'),
(171190, 'amit@gmail.com', 'GRE Manhattan', 'Manhattan Prep');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Student_id` int(10) NOT NULL,
  `Email` char(30) DEFAULT NULL,
  `Phone` int(30) DEFAULT NULL,
  `Opinion` char(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Student_id`, `Email`, `Phone`, `Opinion`) VALUES
(171178, 'new@gmail.com', 2147483645, 'The return process is not good.'),
(172156, 'abc@gmail.com', 1458974, 'Slow process'),
(172589, 'uiu@gmail.com', 9875462, 'Not satisfactory'),
(175986, 'recent@gmail.com', 985462, 'Giving the Ebook service will be a good option.');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`first`, `last`, `id`, `email`, `contact`) VALUES
('Rahim', 'Ahmed', 324, 'Rahim@gmail.com', '53454111111'),
('hhh', 'aaa', 1777, 'g@gmail.com', '123456'),
('sajib', 'ahmed', 3456, 's@gmail.com', '1234567'),
('Sadia', 'Akter', 1510016, 'Sadiaakter@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

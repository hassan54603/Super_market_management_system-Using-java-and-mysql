-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2023 at 04:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_detailes`
--

CREATE TABLE `book_detailes` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(250) DEFAULT NULL,
  `author` varchar(250) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_detailes`
--

INSERT INTO `book_detailes` (`book_id`, `book_name`, `author`, `quantity`) VALUES
(1, 'java', 'eng dayax', 3),
(2, 'python', 'Professor mohamed ali osmaan', 3),
(3, 'php', 'eng Abdiraxman', 2),
(4, 'VB.net', 'Eng dhaqane', 1),
(5, 'Html and Css', 'john wick', 0),
(6, 'oracle', 'eng Hassan', 3);

-- --------------------------------------------------------

--
-- Table structure for table `issue_book_detailes`
--

CREATE TABLE `issue_book_detailes` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `book_name` varchar(150) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_book_detailes`
--

INSERT INTO `issue_book_detailes` (`id`, `book_id`, `book_name`, `student_id`, `student_name`, `issue_date`, `due_date`, `status`) VALUES
(5, 1, 'java', 2, 'Hassan timajilac', '2022-07-01', '2023-02-24', 'Return'),
(12, 3, 'php', 1, 'Ilyaas', '2022-07-06', '2022-07-29', 'Return'),
(13, 4, 'VB.net', 5, 'daahir', '2022-07-02', '2022-07-20', 'Return'),
(14, 2, 'python', 4, 'asha', '2022-07-13', '2022-07-19', 'Return'),
(15, 4, 'VB.net', 6, 'mahad', '2022-07-03', '2022-07-12', 'Return'),
(16, 2, 'python', 6, 'mahad', '2022-07-02', '2022-07-19', 'Return'),
(17, 1, 'java', 5, 'daahir', '2022-07-02', '2022-07-02', 'Return'),
(18, 1, 'java', 3, 'Mohamed ali osmaan', '2022-07-02', '2022-07-03', 'pending'),
(19, 4, 'VB.net', 7, 'Salmaan', '2022-07-03', '2022-07-20', 'pending'),
(20, 2, 'python', 8, 'abuukar', '2022-07-03', '2022-07-03', 'Return'),
(21, 1, 'java', 8, 'abuukar', '2021-07-08', '2021-07-31', 'Return'),
(22, 3, 'php', 3, 'Mohamed ali osmaan', '2022-07-24', '2022-08-19', 'pending'),
(23, 5, 'Html and Css', 2, 'Hassan timajilac', '2022-07-24', '2022-07-29', 'pending'),
(24, 5, 'Html and Css', 5, 'daahir', '2022-07-24', '2022-07-29', 'pending'),
(25, 5, 'Html and Css', 9, 'jaykey', '2022-08-09', '2022-09-30', 'pending'),
(26, 5, 'Html and Css', 1, 'Ilyaas', '2022-08-09', '2022-08-24', 'pending'),
(27, 6, 'oracle', 2, 'Hassan timajilac', '2022-12-02', '2022-12-30', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `student_detailes`
--

CREATE TABLE `student_detailes` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_detailes`
--

INSERT INTO `student_detailes` (`student_id`, `name`, `course`, `branch`) VALUES
(1, 'Ilyaas', 'Bsc', 'IT'),
(2, 'Hassan timajilac', 'MSC', 'ENGINERING'),
(3, 'Mohamed ali osmaan', 'MSC', 'ENGINERING'),
(4, 'asha', 'PHD', 'IT'),
(5, 'daahir', 'BSC', 'CS'),
(6, 'mahad', 'PHD', 'BIT'),
(7, 'Salmaan', 'BSC', 'IT'),
(8, 'abuukar', 'PHD', 'ENGINERING'),
(9, 'jaykey', 'MSC', 'ENGINERING');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `password`, `email`, `contact`) VALUES
(2, 'xasan', '1234', 'yarexasan@gmail.com', '79896'),
(3, 'mohamed', '1234', 'mohamed@gmail.com', '5444689'),
(8, 'admin', '123', 'test@gmail.com', '644'),
(9, 'sadaam', '2022', 'test123@gmail.com', '456444'),
(10, 'mohmed clai', 'maxamed', 'hello@gmail.com', '615415503'),
(11, 'carays', 'admin', 'mohamed@gmail.com', '615415503');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_detailes`
--
ALTER TABLE `book_detailes`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `issue_book_detailes`
--
ALTER TABLE `issue_book_detailes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_detailes`
--
ALTER TABLE `student_detailes`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_detailes`
--
ALTER TABLE `book_detailes`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `issue_book_detailes`
--
ALTER TABLE `issue_book_detailes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `student_detailes`
--
ALTER TABLE `student_detailes`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

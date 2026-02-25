-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 09:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Aburaka_oryx`
--

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'Rother aburaka', '2026-02-12', 500000, 1),
(2, 'Mr.goodman', '2026-02-12', 50000, 1),
(3, 'Sarah ann connor', '2026-02-12', 200000, 2),
(4, 'rother', '2026-02-12', 6000, 2),
(6, 'mr goodman', '2025-02-01', 20000, 2),
(7, 'royalman', '2025-02-01', 10000, 3),
(8, 'martine', '2024-02-01', 30000, 4),
(9, 'weinelaw', '2023-05-01', 50000, 5),
(10, 'Juan onyango', '2019-09-08', 50000, 6),
(11, 'poolman', '2021-07-03', 40000, 7),
(13, 'emanuel', '2026-06-12', 560000, 1),
(14, 'zulfa', '2026-06-13', 460000, 2),
(16, 'cate', '2026-06-12', 120000, 3),
(17, 'Brandol', '2026-06-13', 140000, 4),
(19, 'Randy', '2026-06-17', 160000, 7),
(20, 'valentine', '2026-06-18', 210000, 8),
(21, 'Blessing', '2026-06-19', 110000, 9),
(22, 'stinger', '2026-06-20', 350000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(1, 'atomotive', 'worldclass', 2000, 'car-2209439_1920.png'),
(2, 'watch', 'quick', 100000, 'wrist-watch-2159351_1920.jpg'),
(3, 'M3', 'german', 100000, 'ken-block-cars-lead.jpg'),
(4, 'shose', 'paries', 20000, 'shoes-6701631_1920.jpg'),
(5, 'shose', 'paries', 20000, 'shoes-6701631_1920.jpg'),
(6, 'shose', 'paries', 20000, 'shoes-6701631_1920.jpg'),
(7, 'shose', 'paries', 20000, 'shoes-6701631_1920.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(1, 'rother', '1234', 'douglasaburaka@gmail.com', '0724081213'),
(2, 'Mr tourist', '2544', 'Tourist@gmail.com', '0724081217'),
(3, 'Maxwell', '3544', 'Maxwell@gmail.com', '0724890000'),
(4, 'Phill', '4544', 'phill@gmail.com', '0724890032'),
(5, 'Ian', '2544', 'Ian@gmail.com', '0708890032'),
(6, 'LPBA', '3755', 'lpba@gmail.com', '0724619919'),
(7, 'LPBA', '3755', 'lpba@gmail.com', '0724619919');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

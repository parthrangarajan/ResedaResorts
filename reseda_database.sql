-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 07:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'Arsenio Leach', 'toduwaxobi', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(9, 'Sasha Mendez', 'goxemyde', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(10, 'Dalia Dipolitto', 'dallidips', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(12, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `location_table`
--

CREATE TABLE `location_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location_table`
--

INSERT INTO `location_table` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Coorg', 'coorg.jpg', 'Yes', 'Yes'),
(5, 'Goa', 'goa.jpg', 'Yes', 'Yes'),
(6, 'Jaipur', 'jaipur.jpg', 'Yes', 'Yes'),
(8, 'Manali', 'manali.jpg', 'No', 'Yes')
(7, 'Sikkim', 'sikkim.jpg', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `resorts_table`
--

CREATE TABLE `resorts_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resorts_table`
--

INSERT INTO `resorts_table` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(3, 'Resort3', 'Stay within the walls that quarded Maharajas.', '1500', 'jaipur_res1.jpg', 6, 'Yes', 'Yes'),
(4, 'Resort2', 'Beach, sea, mountains. Best of all worlds.', '1402', 'goa_res.jpg', 5, 'Yes', 'Yes'),
(5, 'Resort1', 'Enoy tea from the best of calming Coorg.', '2100', 'coorg_res.jpg', 4, 'No', 'Yes'),
(6, 'Resort4', 'Live in suites that housed the cast of YJHD.', '2600', 'jaipur_res1.jpg', 6, 'Yes', 'Yes'),
(7, 'Resort6', 'Enjoy the moutains while living in its valleys. ', '1700', 'sikkim_res1.jpg', 7, 'Yes', 'Yes'),
(8, 'Resort5', 'Sit on a yak and spin around the tallest moutains in the world.', '1520', 'manali_res.jpg', 8, 'No', 'No');
(7, 'Resort7', 'Trek up the moutains while we carter to you when you return tired.', '1790', 'sikkim_res2.jpg', 7, 'Yes', 'Yes'),

-- --------------------------------------------------------

--
-- Table structure for table `bookings_table`
--

CREATE TABLE `bookings_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `location` varchar(150) NOT NULL,
  `resort` varchar(150) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `checkin_date` datetime NOT NULL,
  `checkout_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookings_table`
--

INSERT INTO `bookings_table` (`id`, `location`, `resort`, `price`, `checkin_date`, `checkout_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Manali', 'Resort5', '1800', '2020-11-28 12:00:00','2020-11-30 03:49:48', 'Checkout', 'Bradley Farrell', '+1 (576) 504-4657', 'zuhafiq@mailinator.com', 'Duis aliqua Qui lor'),
(2, 'Coorg', 'Resort1', '8200', '2020-11-28 12:00:00','2020-12-3 08:10:28', 'InSuite', 'Kelly Dillard', '+1 (908) 914-3106', 'fexekihor@mailinator.com', 'Incidunt ipsum ad d'),
(3, 'Jaipur', 'Resort3', '8200', '2020-11-28 12:00:00','2020-12-3 08:10:28', 'InSuite', 'Jana Dillard', '+1 (562) 101-2028', 'tydujy@mailinator.com', 'Minima iure ducimus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_table`
--
ALTER TABLE `location_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resorts_table`
--
ALTER TABLE `resorts_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings_table`
--
ALTER TABLE `bookings_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `location_table`
--
ALTER TABLE `location_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `resorts_table`
--
ALTER TABLE `resorts_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bookings_table`
--
ALTER TABLE `bookings_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

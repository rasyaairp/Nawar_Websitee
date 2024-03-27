-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 13, 2024 at 12:42 AM
-- Server version: 8.0.35
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nawar_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `pid` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `number` varchar(12) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `number` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `total_products` varchar(1000) DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `placed_on` varchar(50) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_type` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Achmad Daniel', 'wkwkwwk@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'user'),
(2, 'admin', 'admin123@gmail.com', '6fb42da0e32e07b61c9f0251fe627a9c', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `whislist`
--

CREATE TABLE `whislist` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `pid` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whislist`
--
ALTER TABLE `whislist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `whislist`
--
ALTER TABLE `whislist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2021 at 10:38 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_date`, `updated_date`) VALUES
(2, 'Phone', 'good', '2021-10-09 09:30:24', '2021-10-09 09:30:24'),
(3, 'Computer', 'new', '2021-10-05 00:31:57', '2021-10-05 00:31:57'),
(6, 'Accessories', 'new', '2021-10-05 00:32:20', '2021-10-05 00:32:20'),
(7, 'Game', 'game', '2021-10-05 00:32:30', '2021-10-05 00:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` int(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_date`, `updated_date`) VALUES
(1, 'koko', 'koko@gmail.com', '54544654', 'ygn', 0, '2021-10-08 22:13:54', '2021-10-08 22:13:54'),
(2, 'koko', 'koko@gmail.com', '09738383', 'dfesrf', 0, '2021-10-09 09:21:13', '2021-10-09 09:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `qty`) VALUES
(1, 2, 0, 1),
(2, 3, 0, 1),
(3, 4, 1, 2),
(4, 3, 1, 2),
(5, 1, 2, 1),
(6, 3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(10) NOT NULL,
  `description` text NOT NULL,
  `model` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `description`, `model`, `price`, `photo`, `created_date`, `updated_date`) VALUES
(1, 'dell computer', 3, 'dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb ', '2020', 500, 'download (2).jpg', '2021-10-10 09:58:54', '2021-10-10 09:58:54'),
(2, 'phone', 2, 'dsfdsfdddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb dddddfdgfdgfddsgb ', '2020', 500, 'download (1).jpg', '2021-10-10 09:59:19', '2021-10-10 09:59:19'),
(3, 'computer', 3, 'of the last occurrence of a string within another string, and returns all characters from this position to the end of the string.The strrchr() function finds the position of the last occurrence of a string within another string, and returns all characters from this position to the end of the string.', '2020', 500, 'download (5).jpg', '2021-10-10 09:59:49', '2021-10-10 09:59:49'),
(5, 'game2', 7, 'squid game hjdsgf kidsgfj dsogfds gfdpo0sgfi dsgfids gdfig dfsquid game hjdsgf kidsgfj dsogfds gfdpo0sgfi dsgfids gdfig dfsquid game hjdsgf kidsgfj dsogfds gfdpo0sgfi dsgfids gdfig dfsquid game hjdsgf kidsgfj dsogfds gfdpo0sgfi dsgfids gdfig dfsquid game hjdsgf kidsgfj dsogfds gfdpo0sgfi dsgfids gdfig df', '2021', 5000, 'download (5).jpg', '2021-10-09 23:16:52', '2021-10-09 23:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `phone`, `address`, `password`, `created_date`) VALUES
(1, 'bobo', 'bobo@gmail.com', '54544654', '0000-00-00 00:00:00', '698d51a19d8a121ce581499d7b701668', '2021-10-04 13:51:12'),
(2, 'koko', 'koko@gmail.com', '5454465422', '0000-00-00 00:00:00', '698d51a19d8a121ce581499d7b701668', '2021-10-04 13:53:52'),
(3, 'user', 'user@gmail.com', '545446541', '0000-00-00 00:00:00', '698d51a19d8a121ce581499d7b701668', '2021-10-04 13:54:55'),
(4, 'user2', 'user2@gmail.com', '222', '0000-00-00 00:00:00', '698d51a19d8a121ce581499d7b701668', '2021-10-04 13:56:52'),
(5, 'test', 'test@gmail.com', '09345678', '0000-00-00 00:00:00', 'bcbe3365e6ac95ea2c0343a2395834dd', '2021-10-04 14:00:46'),
(6, 'koko', 'koko5@gmail.com', '545446543334', '0000-00-00 00:00:00', '698d51a19d8a121ce581499d7b701668', '2021-10-09 10:51:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
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
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

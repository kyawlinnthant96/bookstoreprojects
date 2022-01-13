-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2022 at 06:38 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `price` float NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `summary`, `price`, `category_id`, `cover`, `created_date`, `modified_date`) VALUES
(5, 'English Collocations In Use', 'Michael McCarthy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia quod id accusantium assumenda, qui, dolor aliquam saepe cumque molestias corporis sed asperiores. Quaerat eveniet tempore excepturi nostrum eum quisquam sed, corporis quae commodi natus laborum ducimus numquam esse asperiores est! Quisquam quae temporibus minima quam vitae ut inventore doloremque doloribus.', 14.99, 13, 'English_collocations_in_use.png', '2022-01-12 00:24:42', '2022-01-12 00:24:42'),
(6, 'Introduction To Algorithms', 'Kyaw Gyi', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia quod id accusantium assumenda, qui, dolor aliquam saepe cumque molestias corporis sed asperiores. Quaerat eveniet tempore excepturi nostrum eum quisquam sed, corporis quae commodi natus laborum ducimus numquam esse asperiores est! Quisquam quae temporibus minima quam vitae ut inventore doloremque doloribus.', 30, 11, 'Introduction_to_Algorithms.jpg', '2022-01-12 00:25:37', '2022-01-12 00:25:37'),
(7, 'World History', 'Krishna Reddy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia quod id accusantium assumenda, qui, dolor aliquam saepe cumque molestias corporis sed asperiores. Quaerat eveniet tempore excepturi nostrum eum quisquam sed, corporis quae commodi natus laborum ducimus numquam esse asperiores est! Quisquam quae temporibus minima quam vitae ut inventore doloremque doloribus.', 23.99, 3, 'Wrold_History.jpg', '2022-01-12 00:26:25', '2022-01-12 00:26:25'),
(8, 'Psychology For Beginner', 'Max Krone', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia quod id accusantium assumenda, qui, dolor aliquam saepe cumque molestias corporis sed asperiores. Quaerat eveniet tempore excepturi nostrum eum quisquam sed, corporis quae commodi natus laborum ducimus numquam esse asperiores est! Quisquam quae temporibus minima quam vitae ut inventore doloremque doloribus.', 11.99, 10, 'Psychology_for_beginner.jpg', '2022-01-12 00:27:17', '2022-01-12 00:27:17'),
(9, 'Manual of OBJECTIVE MATHEMATICS', 'Sulta Chand', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia quod id accusantium assumenda, qui, dolor aliquam saepe cumque molestias corporis sed asperiores. Quaerat eveniet tempore excepturi nostrum eum quisquam sed, corporis quae commodi natus laborum ducimus numquam esse asperiores est! Quisquam quae temporibus minima quam vitae ut inventore doloremque doloribus.', 24.99, 4, 'Objective_mathematics.jpg', '2022-01-12 00:28:24', '2022-01-12 00:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `remark` text NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `remark`, `created_date`, `modified_date`) VALUES
(3, 'History', 'More Remark', '2021-12-26 13:29:37', '2021-12-26 13:29:37'),
(4, 'Mathematics', 'This is math', '2021-12-26 13:36:48', '2021-12-26 13:36:48'),
(5, 'Biology', 'is the study of living things', '2021-12-26 13:39:03', '2022-01-10 17:14:58'),
(10, 'Psychology', 'This is Psychological', '2022-01-08 04:23:49', '2022-01-10 17:14:26'),
(11, 'Information Technology', 'Tech .....', '2022-01-08 06:41:56', '2022-01-10 23:53:14'),
(13, 'Language', 'Try to new language', '2022-01-10 23:53:53', '2022-01-10 23:53:53'),
(14, 'Development', 'This is Web Development', '2022-01-11 23:48:50', '2022-01-11 23:48:50'),
(15, 'Aerospace Technology', 'This is Aerospace Technology', '2022-01-12 15:01:25', '2022-01-12 15:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` int(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_date`, `modified_date`) VALUES
(2, 'John Doe', 'alic@gmail.com', '2342344234', 'Yangon', 0, '2022-01-13 23:58:31', '2022-01-14 00:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `book_id`, `order_id`, `qty`) VALUES
(4, 6, 0, 1),
(5, 9, 0, 1),
(6, 6, 0, 1),
(7, 7, 0, 1),
(17, 5, 2, 1),
(18, 6, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

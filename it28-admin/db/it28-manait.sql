-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 04:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it28-ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `rrp` decimal(10,0) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(10, 'Nike Air Force 1 High', 'Colour Shown: Multi-Colour/Multi-Colour/Multi-Colour\r\nStyle: DZ3635-900', 8999, 1, 10, 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/67031162-9cc5-481d-8ffe-7ada8f3d78bd/custom-nike-air-force-1-high-by-you-shoes.png', '2024-05-24 22:50:26'),
(11, 'Nike Dunk High', 'Colour Shown: White/University Red/Black\r\nStyle: DD1869-103', 6395, 6395, 10, 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/ec602aa2-b8e6-4a6e-97fe-9ed8e7febb87/dunk-high-shoes-n3vgBk.png', '2024-05-24 22:52:27'),
(12, 'Nike Waffle Debut', 'Colour Shown: White/Summit White/White/Blue Tint\r\nStyle: DH9523-105', 2799, 2799, 10, 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/1b629b25-26ec-4d73-a330-da71843d3018/waffle-debut-shoes-hbBJtw.png', '2024-05-24 22:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$kGp4g1TjBK4XwLIwRbBHSeZ4W5FpPbYoB1ap5NfFUjUPAcE3KR5QG', '2024-04-29 16:39:58'),
(0, 'jimjim', '$2y$10$MBe5y9.ZFkpJZnLImk8VoODPlNAHmLo4bACZtk/kdyqsixB7nU3hC', '2024-05-24 22:15:50'),
(0, 'jim', '$2y$10$X//sBW8xjgFshs3GOfJAbeeGoufNHrBJUIZzmsIJkaeKqMTt3KnWq', '2024-05-24 22:17:14'),
(0, 'admin11', '$2y$10$vrDO0OMbqLTT6MsAvo4rrO/4KgWmKCFzNDML9ZDISOEApzUpPPkny', '2024-05-24 22:18:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

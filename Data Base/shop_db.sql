-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Feb 26, 2023 at 03:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(57, 34, 38, 'Hazel nut', 225, 2, 'Nuts.webp');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(9, 35, 'vardhaman bethmutha', 'abb123@gmail.com', '1234567890', 'very nice web site\r\n'),
(10, 36, 'Prakash Dighe ', 'psd123@gmail.com', '923564780', 'Very nice web site');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(13, 34, 'Gaurav Gardi', '123456789', 'asd123@gmail.com', 'cash on delivery', 'flat no. 8456 ambi Pune maharashtra india - 412305', ', Scale ( 5 )', 75, '23-Feb-2023', 'completed'),
(14, 34, 'Gaurav Gardi', '123456789', 'asd123@gmail.com', 'paypal', 'flat no. 8456 ambi Pune maharashtra india - 142503', ', Pen ( 1 )', 10, '23-Feb-2023', 'completed'),
(15, 34, 'Gaurav Gardi', '1234567890', 'asd123@gmail.com', 'cash on delivery', 'flat no. 8456 ambi Pune maharashtra india - 412305', ', Gel Pen ( 1 )', 50, '23-Feb-2023', 'completed'),
(16, 35, 'Gaurav Gardi', '25354618', 'asd123@gmail.com', 'cash on delivery', 'flat no. 8456 ambi Pune maharashtra india - 412350', ', Project paper ( 10 )', 500, '23-Feb-2023', 'pending'),
(17, 36, 'Prakash Dighe ', '9235468970', 'psd123@gmail.com', 'cash on delivery', 'flat no. 001 mazeri Phaltan maharashtra India - 1234556', ', Chooclete ( 2 )', 998, '26-Feb-2023', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(29, 'Pen', 'Stationary', 'PARKER Vector Special Edition Ball Pen Chrome Trim+Free Parker Key Chain Gift Set Ball Pen  (Blue)', 150, 'pen.jpg'),
(30, ' Pen', 'Stationary', 'Paperkraft Gift Set Ball Pen  (Pack of 2, Blue)', 350, 'pen2.jpg'),
(31, 'Ruler', 'Stationary', 'DOMS Q 30cm Ruler  (Set of 10, White)', 102, 'Scale.jpg'),
(32, 'NoteBook', 'Stationary', 'Classmate Pulse A4 Notebook Unruled 300 Pages  (Multicolor)', 150, 'nootbook.jpg'),
(33, 'Notebooks', 'Stationary', 'Sons  Notebook Regular Notebook Single Line 172 Pages  (Multicolor, Pack of 12)', 450, 'nootbook1.jpg'),
(34, 'Project paper', 'Stationary', 'ESCAPER Designer Ruled A4 70 gsm Project Paper  (Set of 1, Multicolor)', 304, 'project paper.jpg'),
(35, 'Chooclete', 'Dairy Products', 'SurpriseForU Chocolate Gift | Surprise Gift For Girls Combo  (Metalcart-DarkFantasy-Dairy-Snicker-Kitkat-BarOne-SnickerAlmond-Perk)', 499, 'dairy combo.webp'),
(36, 'Chana Dal', 'Grocery', 'Goshudh Premium Quality Arhar And Chana Dal Combo (750 g each) Combo  (Arhar Dal 750 gm, Chana Dal 750 gm)', 339, 'chana dal'),
(37, 'Lassi', 'Dairy Products', 'Govind Milk and milk products Tetra Lassi  (NA, 15 x 200 ml)', 375, 'amul lassi.webp'),
(38, 'Hazel nut', 'Dairy Products', 'Nutritius Hazelnut Butter Chikki-Starter Pack Box  (3 x 125 g)', 225, 'Nuts.webp'),
(39, 'Amul Koko Can ', 'Dairy Products', 'Amul Amul Koko Can 200 Ml. (Pack of 6)  (koko)', 492, 'coco can.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(31, 'Omkar Bhujbal', 'bhujbalomkar2003@gmail.com', '7815696ecbf1c96e6894b779456d330e', 'admin', 'pic-3.png'),
(34, 'Gaurav Gardi', 'asd123@gmail.com', '7815696ecbf1c96e6894b779456d330e', 'user', 'pic-1.png'),
(35, 'Vardhman Bethmutha', 'abb123@gmail.com', '7815696ecbf1c96e6894b779456d330e', 'user', 'pic-5.png'),
(36, 'Prakash Dighe ', 'psd123@gmail.com', '7815696ecbf1c96e6894b779456d330e', 'user', 'pic-3.png');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(53, 36, 33, 'Notebooks', 450, 'nootbook1.jpg'),
(54, 36, 29, 'Pen', 150, 'pen.jpg'),
(55, 36, 31, 'Ruler', 102, 'Scale.jpg'),
(56, 36, 38, 'Hazel nut', 225, 'Nuts.webp'),
(57, 36, 39, 'Amul Koko Can ', 492, 'coco can.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2025 at 05:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(5, 1, 'Kshirja', 'kshirja@gmail.com', '99008877', 'Hello, The Football - Orange was amazing'),
(7, 1, 'mahi', 'mahinazir@gmail.com', '99008877', 'There seems to be some problem with basketball.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `placed_on` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 3, 'Kshirja', '88997700', 'kshirja@gmail.com', 'paytm', 'sector 34, belscot tower, delhi-19', '3', '80', '13/12/2022', 'complete'),
(5, 3, ' Jasmine Carter', '(312) 555-8492', ' jasmine.carter24@gmail.com', 'Paypal', '748 Willow Creek Dr, Portland, OR 97229, USA', '3', '50', '13/12/2022', 'complete'),
(7, 6, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cradit card', 'flat no. 507A,24 back side,Delhi,new delhi,india,110019', '', '100', '25-Dec-2022', 'pending'),
(11, 7, 'Ishita Khandelwal', '7564343222', 'ish2k21989@gmail.com', '', 'flat no. 1403, belscot tower, lokhandwala corporate housing, Andheri west,,Mumbai Suburban,Maharashtra,India,400053', '', '25', '20-May-2025', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `product_detail` varchar(1000) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `product_detail`, `image`) VALUES
(2, 'Football -Orange', '25', 'Description:\r\nA high-visibility orange football built for durability and consistent performance on the field, perfect for training and match play.\r\n\r\nProperties:\r\n\r\nColor: Bright orange for enhanced visibility\r\n\r\nMaterial: Durable synthetic leather\r\n\r\nSize: Standard (11 inches long, 22 inches circumference)\r\n\r\nGrip: Textured surface for better control\r\n\r\nUse: Suitable for outdoor play\r\n\r\nStitching: Reinforced for long-lasting use\r\n\r\nAir retention: Butyl bladder for optimal shape and pressureIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search fo', '01_football.jpg'),
(3, 'Football -black', '30', 'Description:\r\nA sleek black football designed for both style and performance, offering excellent grip, durability, and control on any field.\r\n\r\nProperties:\r\n\r\nColor: Matte black finish for a bold look\r\n\r\nMaterial: Durable synthetic leather\r\n\r\nSize: Standard (11 inches long, 22 inches circumference)\r\n\r\nGrip: Textured surface for enhanced handling\r\n\r\nUse: Ideal for training and match play\r\n\r\nStitching: Reinforced for long-term durability\r\n\r\nAir retention: High-quality butyl bladder for consistent pressure', '04_football.jpg'),
(4, 'Football -White', '25', 'Description:\r\nA clean, modern white football crafted for precision and visibility, ideal for both practice and competitive play.\r\n\r\nProperties:\r\n\r\nColor: Classic white for high visibility and a sleek look\r\n\r\nMaterial: Durable synthetic leather\r\n\r\nSize: Standard (11 inches long, 22 inches circumference)\r\n\r\nGrip: Textured surface for improved control\r\n\r\nUse: Suitable for all field types\r\n\r\nStitching: Reinforced for durability\r\n\r\nAir retention: Butyl bladder to maintain shape and pressure', '03_football.jpg'),
(5, 'Basketball -Multicolor ', '30', 'A vibrant multicolor basketball designed to stand out on the court while delivering excellent bounce, grip, and durability for both indoor and outdoor play.\r\n\r\nProperties:\r\n\r\nColor: Eye-catching multicolor design\r\n\r\nMaterial: Durable rubber or composite leather\r\n\r\nSize: Standard size 7 (29.5 inches circumference)\r\n\r\nGrip: Deep channel design for better ball control\r\n\r\nUse: Suitable for indoor and outdoor courts\r\n\r\nBounce: Consistent and responsive rebound\r\n\r\nAir retention: High-quality bladder for long-lasting inflation', '01_basketball.jpg'),
(6, 'Basketball -Multicolor', '15', 'A vibrant multicolor basketball designed to stand out on the court while delivering excellent bounce, grip, and durability for both indoor and outdoor play.\r\n\r\nProperties:\r\n\r\nColor: Eye-catching multicolor design\r\n\r\nMaterial: Durable rubber or composite leather\r\n\r\nSize: Standard size 7 (29.5 inches circumference)\r\n\r\nGrip: Deep channel design for better ball control\r\n\r\nUse: Suitable for indoor and outdoor courts\r\n\r\nBounce: Consistent and responsive rebound\r\n\r\nAir retention: High-quality bladder for long-lasting inflation', '02_basketball.jpg'),
(7, 'Basketball -Orange', '25', 'A classic orange basketball built for reliable performance and visibility, perfect for players of all levels on indoor or outdoor courts.\r\n\r\nProperties:\r\n\r\nColor: Traditional bright orange for high visibility\r\n\r\nMaterial: Durable composite leather or rubber\r\n\r\nSize: Standard size 7 (29.5 inches circumference)\r\n\r\nGrip: Pebbled texture with deep channels for enhanced control\r\n\r\nUse: Ideal for both indoor and outdoor play\r\n\r\nBounce: Consistent and responsive performance\r\n\r\nAir retention: Butyl bladder for superior shape and pressure retention', '03_basketball.jpg'),
(8, 'Basketball -Green ', '30', 'A fun color twist on classic basketball built for reliable performance and visibility, perfect for players of all levels on indoor or outdoor courts.\r\n\r\nProperties:\r\n\r\nColor: Green-Blue\r\n\r\nMaterial: Durable composite leather or rubber\r\n\r\nSize: Standard size 7 (29.5 inches circumference)\r\n\r\nGrip: Pebbled texture with deep channels for enhanced control\r\n\r\nUse: Ideal for both indoor and outdoor play\r\n\r\nBounce: Consistent and responsive performance\r\n\r\nAir retention: Butyl bladder for superior shape and pressure retention', '04_basketball.jpg'),
(9, 'Volleyball -Multicolor', '20', 'Description:\r\nA stylish blue and yellow volleyball designed for precision, comfort, and durability—ideal for both training and competitive play.\r\n\r\nProperties:\r\n\r\nColor: Vibrant blue and yellow panel design for easy tracking\r\n\r\nMaterial: Soft-touch synthetic leather for comfort and control\r\n\r\nSize: Standard size 5 (65–67 cm circumference)\r\n\r\nWeight: 260–280 grams (official match weight)\r\n\r\nGrip: Textured surface for improved handling\r\n\r\nUse: Suitable for indoor and outdoor play\r\n\r\nConstruction: Machine-stitched or hand-sewn for durability\r\n\r\nAir retention: High-quality bladder for consistent pressure', '01_volleyball.jpg'),
(10, 'Volleyball -Yellow', '15', 'Description:\r\nA bold bright yellow volleyball made for high visibility and reliable performance, perfect for all skill levels in both indoor and outdoor games.\r\n\r\nProperties:\r\n\r\nColor: Bright yellow for excellent visibility\r\n\r\nMaterial: Soft synthetic leather for comfort and control\r\n\r\nSize: Standard size 5 (65–67 cm circumference)\r\n\r\nWeight: 260–280 grams (official match weight)\r\n\r\nGrip: Lightly textured surface for enhanced handling\r\n\r\nUse: Great for indoor and outdoor play <br>\r\n\r\nConstruction: Durable stitching for long-lasting use <br>\r\n\r\nAir retention: Quality bladder for stable shape and pressure', '02_volleyball.jpg'),
(11, 'Volleyball -Multicolor', '25', 'Description:\r\nA unique green and purple volleyball that combines standout style with performance, perfect for players who want both flair and function on the court.\r\n\r\nProperties:\r\n\r\nColor: Bold multicolor design in green and purple\r\n\r\nMaterial: Soft-touch synthetic leather for comfort and durability\r\n\r\nSize: Standard size 5 (65–67 cm circumference)\r\n\r\nWeight: 260–280 grams (official match weight)\r\n\r\nGrip: Textured surface for better control and feel\r\n\r\nUse: Suitable for both indoor and outdoor volleyball\r\n\r\nConstruction: Strong stitching for long-lasting play\r\n\r\nAir retention: High-quality bladder to maintain shape and pressure', '03_volleyball.jpg'),
(12, 'Volleyball -Green', '20', 'Description:\r\nA sleek green volleyball designed for high visibility and consistent performance, ideal for indoor and outdoor matches or training sessions.\r\n\r\nProperties:\r\n\r\nColor: Solid green for a fresh, modern look\r\n\r\nMaterial: Soft-touch synthetic leather for comfort and durability\r\n\r\nSize: Standard size 5 (65–67 cm circumference)\r\n\r\nWeight: 260–280 grams (official match weight)\r\n\r\nGrip: Lightly textured surface for improved control\r\n\r\nUse: Suitable for both indoor and outdoor play\r\n\r\nConstruction: Reinforced stitching for extended durability\r\n\r\nAir retention: Butyl bladder for consistent air pressure', '04_volleyball.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `thumb3` varchar(255) NOT NULL,
  `thumb4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `thumb1`, `thumb2`, `thumb3`, `thumb4`) VALUES
(1, '8.webp', '9.webp', '10.webp', '11.webp'),
(2, 'product-1-2.png', 'product-1-3.png', 'product-1-6.png', 'product-1-7.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(3, 'Ishita', 'ishita@gmail.com', 'ishita1234', 'admin'),
(6, 'mahi', 'mahinazir@gmail.com', '12345', 'user'),
(7, 'Ishita Khandelwal', 'ish@gmail.com', 'hellothere', 'user'),
(8, 'Jasmine Carter', ' jasmine.carter24@gmail.com', 'jasmine', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(9, 7, 4, 'Football -White', '25', '03_football.jpg');

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
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

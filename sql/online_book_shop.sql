-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2025 at 06:50 AM
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
-- Database: `online_book_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`name`, `image`) VALUES
('Kazi Nazrul Islam', 'kazi_nazrul_islam.jpg'),
('Rabindranath Tagore', 'rabindranath_tagore.jpg'),
('Humayun Ahmed', 'humayun_ahmed.jpg'),
('Stephen King', 'stephen_king.jpg'),
('Orhan Pamuk', 'orhan_pamuk.jpg'),
('Colleen Hoover', 'colleen_hoover.jpg'),
('Harper Lee', 'harper_lee.jpg'),
('Ana Huang', 'ana_huang.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `publication_year` year(4) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`title`, `description`, `author`, `publisher`, `publication_year`, `price`, `image`, `id`) VALUES
('It Starts with Us', 'The sequel to “It Ends with Us,” offering closure and hope.', 'Colleen Hoover', 'Atria Books', '2022', 990.00, 'it_starts_with_us.jpg', 2),
('Twisted Love', 'First in the Twisted series; a romance with dark secrets.', 'Ana Huang', 'Independently Published', '2021', 267.00, 'twisted_love.jpg', 3),
('Twisted Games', 'Forbidden romance between a princess and her bodyguard.', 'Ana Huang', 'Independently Published', '2021', 347.00, 'twisted_games.jpg', 4),
('Twisted Lies', 'A fake relationship romance with danger and suspense.', 'Ana Huang', 'Independently Published', '2022', 383.00, 'twisted_lies.jpg', 5),
('Twisted Hate', 'Enemies-to-lovers romance in the Twisted series.', 'Ana Huang', 'Independently Published', '2022', 369.00, 'twisted_hate.jpg', 6),
('Never Flinch', 'Upcoming thriller from Stephen King, shrouded in mystery.', 'Stephen King', 'Scribner', '2025', 950.00, 'never_flinch.jpg', 7),
('Ekjon Mayabati', 'A beloved Bangladeshi novel with romance and drama.', 'Humayun Ahmed', 'Annyaprokash', '2002', 270.00, 'ekjon_mayabati.jpg', 8),
('Rich Dad Poor Dad', 'Bestselling personal finance guide contrasting two approaches to money.', 'Robert T. Kiyosaki', 'Plata Publishing', '1997', 600.00, 'rich_dad_poor_dad.jpg', 9),
('1984', 'Dystopian classic exploring surveillance and totalitarianism.', 'George Orwell', 'Secker & Warburg', '1949', 600.00, '1984.jpg', 10),
('Harry Potter and the Sorcerer\'s Stone', 'The first book in the Harry Potter series, introducing the wizarding world.', 'J.K. Rowling', 'Bloomsbury', '1997', 1000.00, 'harry_potter1.jpg', 11),
('To Kill a Mockingbird', 'A profound story on racial injustice and moral growth in the American South.', 'Harper Lee', 'J.B. Lippincott & Co.', '1960', 700.00, 'to_kill_a_mockingbird.jpg', 12),
('The New Life', 'A philosophical novel about a mysterious book that changes lives.', 'Orhan Pamuk', 'Knopf', '1994', 750.00, 'the_new_life.jpg', 13),
('If We Ever Meet Again', 'Romantic contemporary fiction exploring love and fate.', 'Ananya Bhattacharya', 'Not Specified', '2020', 225.00, 'if_we_ever_meet_again.jpg', 14),
('If The Sun Never Sets', 'Sequel to “If We Ever Meet Again,” continuing the love story.', 'Ananya Bhattacharya', 'Not Specified', '2020', 225.00, 'if_the_sun_never_sets.jpg', 15),
('King of Wrath', 'Billionaire romance full of power, passion, and secrets.', 'Ana Huang', 'Independently Published', '2023', 1100.00, 'king_of_wrath.jpg', 16),
('Gitanjali', 'Collection of poems that won the Nobel Prize for Literature in 1913.', 'Rabindranath Tagore', 'Various', '1912', 576.00, 'gitanjali.jpg', 17),
('Ami Topu', 'A nostalgic coming-of-age novel cherished in Bangladesh.', 'Humayun Ahmed', 'Annyaprokash', '1990', 260.00, 'ami_topu.jpg', 18),
('Sesher Kobita', 'A lyrical romantic novel blending poetry and prose.', 'Rabindranath Tagore', 'Various', '1929', 156.00, 'sesher_kobita.jpg', 19),
('Agnibeena', 'The first poetry collection by Kazi Nazrul Islam, the Rebel Poet of Bengal.', 'Kazi Nazrul Islam', 'Various', '1922', 172.00, 'agnibeena.jpg', 20),
('Mrityukshuda', 'A revolutionary novel depicting class struggle and human suffering.', 'Kazi Nazrul Islam', 'Various', '1930', 188.00, 'mrityukshuda.jpg', 21),
('Chokher Bali', 'A story of love, betrayal, and societal norms in Bengal.', 'Rabindranath Tagore', 'Various', '1903', 258.00, 'chokher_bali.jpg', 22),
('It Ends with Us', 'It Ends with Us is a romance novel by Colleen Hoover, published by Atria Books on August 2, 2016. The story follows florist Lily Bloom, whose abusive relationship with neurosurgeon Ryle Kincaid is compounded when her high school boyfriend Atlas Corrigan re-enters her life.', 'Colleen Hoover', NULL, NULL, 780.00, 'it_ends_with_us.jpg', 23);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT 1,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `book_id`, `quantity`, `added_at`) VALUES
(6, 2, 2, 4, '2025-08-15 18:58:13'),
(8, 2, 13, 1, '2025-08-15 18:58:28'),
(9, 2, 9, 2, '2025-08-15 18:59:46'),
(10, 2, 8, 1, '2025-08-15 20:26:48'),
(11, 2, 12, 1, '2025-08-15 20:26:53'),
(12, 2, 16, 1, '2025-08-16 14:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `payment_method` enum('COD','Online') DEFAULT NULL,
  `status` enum('Pending','Confirmed','Delivered') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `book_id`, `quantity`, `total_price`, `address`, `phone`, `payment_method`, `status`, `created_at`) VALUES
(1, 2, 10, 1, 600.00, 'Dhaka', '+880 1111-111111', 'COD', 'Confirmed', '2025-08-15 18:38:30'),
(2, 2, 18, 1, 260.00, 'Dhaka', '+880 1111-111111', 'Online', 'Confirmed', '2025-08-15 18:49:00'),
(3, 2, 2, 1, 990.00, 'Dhaka', '+880 1111-222222', 'COD', 'Confirmed', '2025-08-15 18:49:53'),
(4, 2, 9, 3, 1800.00, 'Dhaka', '+880 1879-789456', 'COD', 'Confirmed', '2025-08-15 18:56:43'),
(5, 2, 4, 1, 347.00, 'Dhaka', '+880 1879-789456', 'COD', 'Confirmed', '2025-08-15 18:56:43'),
(6, 2, 11, 1, 1000.00, 'Dhaka', '+880 1879-789456', 'COD', 'Confirmed', '2025-08-15 18:56:43'),
(7, 2, 10, 1, 600.00, 'Dhaka', '+880 1879-888888', 'Online', 'Confirmed', '2025-08-15 20:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_type` enum('COD','Online') DEFAULT NULL,
  `payment_status` enum('Pending','Completed') DEFAULT 'Pending',
  `paid_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `paid_at`) VALUES
(1, 1, 'COD', 'Completed', NULL),
(2, 2, 'Online', 'Completed', NULL),
(3, 3, 'COD', 'Completed', NULL),
(4, 4, 'COD', 'Completed', NULL),
(5, 5, 'COD', 'Completed', NULL),
(6, 6, 'COD', 'Completed', NULL),
(7, 7, 'Online', 'Completed', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Admin', 'admin@bookbazaar.com', 'admin123', 'admin', '2025-08-15 09:50:27'),
(2, 'Maimuna Maliha', 'maliha@gmail.com', 'm111', 'user', '2025-08-15 10:00:10'),
(3, 'Anika S', 'anika@gmail.com', 'a2025', 'user', '2025-08-15 10:00:10'),
(4, 'Iffat Z', 'iffat@gmail.com', 'i2025', 'user', '2025-08-15 15:24:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

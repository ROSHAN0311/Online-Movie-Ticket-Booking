-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 11:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_movie`
--

CREATE TABLE `add_movie` (
  `id` int(25) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `directer` varchar(100) NOT NULL,
  `release_date` varchar(100) NOT NULL,
  `categroy` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `you_tube_link` varchar(250) NOT NULL,
  `show` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `decription` varchar(300) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_movie`
--

INSERT INTO `add_movie` (`id`, `movie_name`, `directer`, `release_date`, `categroy`, `language`, `you_tube_link`, `show`, `action`, `decription`, `image`, `status`) VALUES
(19, 'Pashupati Prasad', 'Dipendra K Khanal', '2023-05-23', 'Comedy', 'Nepali', 'https://www.youtube.com/embed/O3GRxW9IkTg', '21:00,18:15', 'running', '                                                                                                                The film features the struggle of a poor guy who lost his parents in an earthquake; he then travels to Kathmandu to earn his living and pay off his late father\'s debt. The story is based o', 'pashupati.jpg', 1),
(20, 'Jaari', 'Jai Basantu Singh', 'Baisakh 1, 2080 B.S.', 'Comedy,Drama', 'Nepali', 'https://www.youtube.com/embed/4sx0nvVDYA8', '21:00,15:00,21:15', 'running', '                                                Based on the love story of the Limbu community and will show the struggle of a man to bring back his wife.', 'jaari.jpg', 1),
(21, 'Fast And Furious 10', 'Louis Leterrier', 'May 19, 2023 ', 'Action', 'English', 'https://www.youtube.com/embed/1Yk8eRtlG44', '21:00,15:00,18:00,18:15,15:15,21:15', 'upcoming', '                                                Over many missions and against impossible odds, Dom Toretto and his family have outsmarted and outdriven every foe in their path. Now, they must confront the most lethal opponent they\'ve ever faced. Fueled by revenge, a terrifying threat emerges from t', 'fast.jpg', 1),
(22, 'Pathan', 'Siddharth Anand', ' January 25, 2023 ', 'Action', 'Hindi ', 'https://www.youtube.com/embed/vqu4z34wENw', '21:00,15:00,18:15,15:15', 'running', '                              An Indian spy battles against the leader of a gang of mercenaries who have a heinous plot for his homeland.  ', 'pathan.jpg', 1),
(23, 'Spiderman', 'Jon Watts', 'December 17, 2023', 'Action', 'English', 'https://www.youtube.com/embed/TYMMOjBUPMM', '21:00,18:15', 'upcoming', '', 'spider.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'Roshan', 'roshan@gmail.com', '12345', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `show_time` varchar(100) NOT NULL,
  `seat` varchar(100) NOT NULL,
  `totalseat` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `payment_date` varchar(100) NOT NULL,
  `booking_date` varchar(100) NOT NULL,
  `card_name` varchar(100) NOT NULL,
  `card_number` varchar(25) NOT NULL,
  `ex_date` varchar(100) NOT NULL,
  `cvv` int(5) NOT NULL,
  `custemer_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `uid`, `movie`, `show_time`, `seat`, `totalseat`, `price`, `payment_date`, `booking_date`, `card_name`, `card_number`, `ex_date`, `cvv`, `custemer_id`) VALUES
(10, 7, 'Pashupati Prasad', '21:00', 'D2,D3,D4,D5', '4', '600', 'Sat-04-23 ', 'Sun-04-23 ', 'Bidur', '123', '2023-04-22', 1, 537390583),
(11, 7, 'Jaari', '15:00', 'D7,D8', '2', '300', 'Sat-04-23 ', 'Sun-04-23 ', 'Bidur', '123', '2023-04-21', 1, 2125102106),
(12, 8, 'Jaari', '21:00', '2', '2', '100', 'Sat-04-23 ', 'Sun-04-23 ', '', '', '', 0, 1713227192),
(13, 7, 'Jaari', '15:00', 'F8,F9', '2', '300', 'Sat-04-23 ', 'Sun-04-23 ', 'Bidur', '1212', '2023-04-22', 11, 1461342837),
(14, 7, 'Jaari', '15:00', 'D7,D9', '2', '300', 'Sat-04-23 ', 'Sun-04-23 ', 'Bidur', '1919191919', '2023-04-27', 3, 1467385522),
(15, 7, 'Jaari', '21:00', 'D1,D2,D3,D4', '4', '600', 'Sat-04-23 ', 'Sun-04-23 ', 'Bidur', '123456789', '2023-04-23', 3, 355163228),
(16, 7, 'Jaari', '15:00', 'D1,D2,D3', '3', '450', 'Sat-04-23 ', 'Sun-04-23 ', 'Bidur', '12345678', '2023-04-26', 3, 1182314029),
(17, 14, 'Jaari', '21:00', 'G10', '1', '100', 'Sun-04-23 ', 'Mon-05-23 ', 'Roshan', '123456', '2023-05-12', 1, 874138708),
(18, 14, 'Pathan', '18:15', 'E7,E8', '2', '300', 'Sun-04-23 ', 'Mon-05-23 ', 'ram', '12345', '2023-04-21', 123, 222780098),
(19, 14, 'Pathan', '18:15', 'E7', '1', '150', 'Sun-04-23 ', 'Mon-05-23 ', 'roshan', '1234', '2023-05-10', 1, 1567188358),
(20, 14, 'Pathan', '15:00', 'C7', '1', '150', 'Sun-04-23 ', 'Mon-05-23 ', 'Roshan', '12345', '2023-05-05', 2, 1935133073),
(21, 15, 'Pashupati Prasad', '18:15', 'C7,C8', '2', '300', 'Sun-04-23 ', 'Mon-05-23 ', 'Ram', '123456', '2023-05-03', 1, 1662994675);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `massage` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `massage`) VALUES
(59, 'Bidur', 'bidur@gmail.com', 'Your  service is ver nice .I got my ticket instantly.');

-- --------------------------------------------------------

--
-- Table structure for table `theater_show`
--

CREATE TABLE `theater_show` (
  `id` int(25) NOT NULL,
  `show` varchar(100) NOT NULL,
  `theater` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theater_show`
--

INSERT INTO `theater_show` (`id`, `show`, `theater`) VALUES
(1, '21:00', '1'),
(2, '15:00', '1'),
(3, '18:00', '1'),
(4, '18:15', '2'),
(5, '15:15', '2'),
(6, '21:15', '2');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(10) NOT NULL,
  `city` varchar(25) NOT NULL,
  `password` varchar(12) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `mobile`, `city`, `password`, `image`) VALUES
(12, 'roshan', 'roshan@gmail.com', 2147483647, 'Ktm', '12345', ''),
(13, 'roshan', 'roshan@gmail.com', 1212121212, 'ktm', '12345', ''),
(14, 'roshan', 'roshan@gmail.com', 1212121212, 'ktm', '12345', ''),
(15, 'bidur', 'bidur@gmail.com', 2147483647, 'ktm', '12345', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_movie`
--
ALTER TABLE `add_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theater_show`
--
ALTER TABLE `theater_show`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_movie`
--
ALTER TABLE `add_movie`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `theater_show`
--
ALTER TABLE `theater_show`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

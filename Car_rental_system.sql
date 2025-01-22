-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 01:37 PM
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
-- Database: `car_rental_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `transmission` varchar(50) NOT NULL,
  `fuel` varchar(50) NOT NULL,
  `seats` int(11) NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `brand`, `price`, `image_path`, `transmission`, `fuel`, `seats`, `imagePath`) VALUES
(1, 'Car A', 'Honda Civic', 1000, 'images/CarA.jpg', 'Automatic', 'Gasoline', 5, NULL),
(2, 'Car B', 'Toyota Hilux', 1500, 'images/CarB.jpg', 'Manual', 'Diesel', 5, NULL),
(3, 'Car C', 'Ford Van', 1800, 'images/CarC.jpg', 'Manual', 'Diesel', 12, NULL),
(4, 'Car D', 'Ford Ranger Raptor', 2000, 'images/CarD.jpg', 'Automatic', 'Diesel', 5, NULL),
(5, 'Car E', 'Mitsubishi Montero', 2500, 'images/CarE.jpg', 'Automatic', 'Diesel', 7, NULL),
(6, 'Car F', 'Nissan Navarra 4x4', 3000, 'images/CarF.jpg', 'Manual', 'Diesel', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `id` int(11) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `rental_days` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `rental_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `returned` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rentals`
--

INSERT INTO `rentals` (`id`, `car_id`, `rental_days`, `total_price`, `rental_date`, `returned`) VALUES
(1, 1, 12, 12000, '2024-12-11 02:03:07', 1),
(2, 2, 3, 4500, '2024-12-11 06:34:57', 0),
(3, 2, 4, 6000, '2024-12-12 13:32:07', 0),
(4, 6, 8, 24000, '2024-12-12 13:32:32', 0),
(5, 2, 12, 18000, '2024-12-12 13:37:10', 0),
(6, 1, 10, 10000, '2024-12-12 13:44:04', 1),
(7, 6, 14, 42000, '2024-12-12 13:57:56', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

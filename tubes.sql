-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2019 at 03:00 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(10) NOT NULL,
  `hotel_id` varchar(10) NOT NULL,
  `judul_hotel` varchar(255) NOT NULL,
  `tanggal_id` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `hotel_id`, `judul_hotel`, `tanggal_id`) VALUES
(1, '4', 'Suite Room', '2017-06-17'),
(2, '2', 'Family Room', '2019-06-19'),
(3, '8', 'Family Room', '2019-06-19'),
(4, '9', 'Deluxe Room', '2019-10-11'),
(5, '5', 'Suite Room', '2017-06-17'),
(6, '8', 'Family Room', '2019-06-19'),
(7, '4', 'Deluxe Room', '2017-06-17'),
(8, '9', 'Suite Room', '2019-06-19'),
(9, '4', 'Suite Room', '2019-10-11'),
(10, '4', 'Suite Room', '2019-06-19'),
(11, '5', 'Family Room', '2019-06-19'),
(12, '4', 'Suite Room', '2017-06-17'),
(13, '5', 'Suite Room', '2019-10-11'),
(14, '3', 'Suite Room', '2017-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id` int(10) NOT NULL,
  `kamar` varchar(10) NOT NULL,
  `status` int(1) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id`, `kamar`, `status`, `harga`) VALUES
(1, '1', 1, ''),
(2, '2', 1, ''),
(3, '3', 1, ''),
(4, '4', 1, ''),
(5, '5', 1, ''),
(6, '6', 1, ''),
(7, '7', 1, ''),
(8, '8', 1, ''),
(9, '9', 1, ''),
(10, '10', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `level`) VALUES
(1, 'luis', 'luis123', 0),
(2, 'betty', 'admin', 1),
(3, 'Ridwan', 'ridwan123', 0),
(4, 'Admin', 'admin123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_client`
--

CREATE TABLE `login_client` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_client`
--

INSERT INTO `login_client` (`username`, `password`) VALUES
('Luis', 'luis123'),
('Ridwan', 'ridwan123');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `date`, `time`) VALUES
(1, '2019-06-14 03:09:15', '01.00'),
(2, '2019-06-14 03:09:27', '02.00'),
(3, '2019-06-14 03:09:39', '03.00');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `title`, `harga`, `tanggal`) VALUES
(1, 'Suite Room', 'IDR 1.500.000', '2017-06-17'),
(2, 'Family Room', 'IDR 2.500.000', '2019-10-11'),
(3, 'Deluxe Room', 'IDR 5.000.000', '2019-06-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

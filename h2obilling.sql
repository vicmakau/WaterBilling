-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2019 at 10:16 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `h2obilling`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins_tbl`
--

CREATE TABLE `admins_tbl` (
  `admin_unique_id` int(255) NOT NULL,
  `admin_fname` varchar(300) NOT NULL,
  `admin_lname` varchar(300) NOT NULL,
  `admin_number` varchar(300) NOT NULL,
  `admin_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins_tbl`
--

INSERT INTO `admins_tbl` (`admin_unique_id`, `admin_fname`, `admin_lname`, `admin_number`, `admin_date_added`) VALUES
(1, 'Joshua', 'Muuo', '000001', '2019-02-13 04:29:19'),
(2, 'Victor', 'Makau', '000002', '2019-02-13 04:29:19'),
(3, 'Grace', 'Malkia', '000003', '2019-02-13 04:55:23'),
(4, 'Greene', 'Sams', '000004', '2019-02-13 04:55:23'),
(5, 'Reeds', 'Cook', '000005', '2019-02-13 04:55:23'),
(6, 'Sean', 'Luke', '000006', '2019-02-13 04:55:23'),
(7, 'Cynthia', 'Reds', '000007', '2019-02-13 04:55:23'),
(8, 'Common', 'Jack', '000008', '2019-02-13 04:55:23'),
(9, 'Ruth', 'Youth', '000009', '2019-02-13 04:55:23'),
(10, 'Kevin', 'Redhook', '0000010', '2019-02-13 04:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `clients_tbl`
--

CREATE TABLE `clients_tbl` (
  `client_unique_id` int(255) NOT NULL,
  `client_fname` varchar(300) NOT NULL,
  `client_lname` varchar(300) NOT NULL,
  `client_uname` varchar(300) NOT NULL,
  `client_national_id` varchar(300) NOT NULL,
  `client_phone_number` varchar(300) NOT NULL,
  `client_email` varchar(300) NOT NULL,
  `client_ward` varchar(300) NOT NULL,
  `client_estate` varchar(300) NOT NULL,
  `client_metre_number` varchar(300) NOT NULL,
  `client_password` varchar(300) NOT NULL,
  `client_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wards_tbl`
--

CREATE TABLE `wards_tbl` (
  `ward_unique_id` int(255) NOT NULL,
  `ward_name` varchar(300) NOT NULL,
  `ward_constituency` varchar(300) NOT NULL,
  `ward_date-added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wards_tbl`
--

INSERT INTO `wards_tbl` (`ward_unique_id`, `ward_name`, `ward_constituency`, `ward_date-added`) VALUES
(1, 'Kitisuru', 'Westlands', '2019-02-13 04:37:16'),
(2, 'Parklands/Highridge', 'Westlands', '2019-02-13 04:37:16'),
(3, 'Karura', 'Westlands', '2019-02-13 04:37:16'),
(4, 'Kangemi', 'Westlands', '2019-02-13 04:37:16'),
(5, 'Mountain View', 'Westlands', '2019-02-13 04:37:16'),
(6, 'Kilimani', 'Dagoretti North', '2019-02-13 04:37:16'),
(7, 'Kawangware', 'Dagoretti North', '2019-02-13 04:37:16'),
(8, 'Gatina', 'Dagoretti North', '2019-02-13 04:37:16'),
(9, 'Kileleshwa', 'Dagoretti North', '2019-02-13 04:37:16'),
(10, 'Kabiro', 'Dagoretti North', '2019-02-13 04:37:16'),
(11, 'Mutu-imituni', 'Dagoretti Southâ€ƒ', '2019-02-13 04:37:16'),
(12, 'Ngando', 'Dagoretti Southâ€ƒ', '2019-02-13 04:37:16'),
(13, 'Riruta', 'Dagoretti Southâ€ƒ', '2019-02-13 04:37:16'),
(14, 'Uthiru/Ruthi', 'Dagoretti Southâ€ƒ', '2019-02-13 04:37:16'),
(15, 'Waithaka', 'Dagoretti Southâ€ƒ', '2019-02-13 04:37:16'),
(16, 'Karen', 'Langata', '2019-02-13 04:37:16'),
(17, 'Nairobi West', 'Langata', '2019-02-13 04:37:16'),
(18, 'Mugumu-Ini', 'Langata', '2019-02-13 04:37:16'),
(19, 'South C', 'Langata', '2019-02-13 04:37:16'),
(20, 'Nyayo Highrise', 'Langata', '2019-02-13 04:37:16'),
(21, 'Laini saba', 'Kibra', '2019-02-13 04:37:16'),
(22, 'Lindi Makina', 'Kibra', '2019-02-13 04:37:16'),
(23, 'Woodley /Kenyatta', 'Kibra', '2019-02-13 04:37:16'),
(24, 'Golf Course', 'Kibra', '2019-02-13 04:37:16'),
(25, 'Sarangombe', 'Kibra', '2019-02-13 04:37:16'),
(32, 'Githurai', 'Roysambu', '2019-02-13 04:50:07'),
(33, 'Kahawa West', 'Roysambu', '2019-02-13 04:50:07'),
(34, 'Zimmerman', 'Roysambu', '2019-02-13 04:50:07'),
(36, 'Kahawa', 'Roysambu', '2019-02-13 04:50:07'),
(37, 'Clay City', 'Kasarani', '2019-02-13 04:50:07'),
(38, 'Mwiki', 'Kasarani', '2019-02-13 04:50:07'),
(39, 'Kasarani', 'Kasarani', '2019-02-13 04:50:07'),
(40, 'Njiru', 'Kasarani', '2019-02-13 04:50:07'),
(41, 'Ruai', 'Kasarani', '2019-02-13 04:50:07'),
(42, 'Baba Dogo', 'Ruaraka', '2019-02-13 04:50:07'),
(43, 'Utalii', 'Ruaraka', '2019-02-13 04:50:07'),
(44, 'Mathare North', 'Ruaraka', '2019-02-13 04:50:07'),
(45, 'Lucky Summer', 'Ruaraka', '2019-02-13 04:50:07'),
(46, 'Korogocho', 'Ruaraka', '2019-02-13 04:50:07'),
(47, 'Imara Daima', 'Embakasi South', '2019-02-13 04:50:07'),
(48, 'Kwa Njenga', 'Embakasi South', '2019-02-13 04:50:07'),
(49, 'Kwa Ruben', 'Embakasi South', '2019-02-13 04:50:07'),
(50, 'Pipeline', 'Embakasi South', '2019-02-13 04:50:07'),
(51, 'Kware', 'Embakasi South', '2019-02-13 04:50:07'),
(52, 'Kariobangi North', 'Embakasi North', '2019-02-13 04:50:07'),
(53, 'Dandora Area I', 'Embakasi North', '2019-02-13 04:50:07'),
(54, 'Dandora Area II', 'Embakasi North', '2019-02-13 04:50:07'),
(55, 'Dandora Area III', 'Embakasi North', '2019-02-13 04:50:07'),
(56, 'Dandora Area IV', 'Embakasi North', '2019-02-13 04:50:07'),
(57, 'Kayole North', 'Embakasi Central', '2019-02-13 04:50:07'),
(58, 'Kayole Central', 'Embakasi Central', '2019-02-13 04:50:07'),
(59, 'Kayole South', 'Embakasi Central', '2019-02-13 04:50:07'),
(60, 'Komarock', 'Embakasi Central', '2019-02-13 04:50:07'),
(61, 'Matopeni/Spring Valley', 'Embakasi Central', '2019-02-13 04:50:07'),
(62, 'Upper Savannah', 'Embakasi East ', '2019-02-13 04:50:07'),
(63, 'Lower Savannah', 'Embakasi East ', '2019-02-13 04:50:07'),
(64, 'Embakasi', 'Embakasi East ', '2019-02-13 04:50:07'),
(65, 'Utawala', 'Embakasi East ', '2019-02-13 04:50:07'),
(66, 'Mihango', 'Embakasi East ', '2019-02-13 04:50:07'),
(67, 'Umoja I', 'Embakasi West', '2019-02-13 04:50:07'),
(68, 'Umoja II', 'Embakasi West', '2019-02-13 04:50:07'),
(69, 'Mowlem', 'Embakasi West', '2019-02-13 04:50:07'),
(70, 'Kariobangi South', 'Embakasi West', '2019-02-13 04:50:07'),
(71, 'Maringo/Hamza', 'Embakasi West', '2019-02-13 04:50:07'),
(74, 'Makongeni', 'Makadara ', '2019-02-13 04:50:07'),
(75, 'Pumwani', 'Makadara ', '2019-02-13 04:50:07'),
(76, 'Eastleigh North', 'Makadara ', '2019-02-13 04:50:07'),
(77, 'Eastleigh South', 'Kamukunji', '0000-00-00 00:00:00'),
(78, 'Airbase', 'Kamukunji', '0000-00-00 00:00:00'),
(79, 'California', 'Kamukunji', '0000-00-00 00:00:00'),
(80, 'Ngara', 'Kamukunji', '0000-00-00 00:00:00'),
(81, 'Nairobi Central', 'Kamukunji', '0000-00-00 00:00:00'),
(82, 'Pangani', 'Starehe ', '2019-02-13 04:50:07'),
(83, 'Ziwani/Kariokor', 'Starehe ', '2019-02-13 04:50:07'),
(84, 'Mabatini', 'Mathare ', '2019-02-13 04:50:07'),
(85, 'Huruma', 'Mathare ', '2019-02-13 04:50:07'),
(86, 'Ngei', 'Mathare ', '2019-02-13 04:50:07'),
(87, 'Mlango Kubwa', 'Mathare ', '2019-02-13 04:50:07'),
(88, 'Kiamaiko', 'Mathare ', '2019-02-13 04:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `water_meters_tbl`
--

CREATE TABLE `water_meters_tbl` (
  `meter_unique_id` int(255) NOT NULL,
  `meter_number` varchar(300) NOT NULL,
  `meter_ward` varchar(300) NOT NULL,
  `meter_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins_tbl`
--
ALTER TABLE `admins_tbl`
  ADD PRIMARY KEY (`admin_unique_id`);

--
-- Indexes for table `clients_tbl`
--
ALTER TABLE `clients_tbl`
  ADD PRIMARY KEY (`client_unique_id`);

--
-- Indexes for table `wards_tbl`
--
ALTER TABLE `wards_tbl`
  ADD PRIMARY KEY (`ward_unique_id`);

--
-- Indexes for table `water_meters_tbl`
--
ALTER TABLE `water_meters_tbl`
  ADD PRIMARY KEY (`meter_unique_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins_tbl`
--
ALTER TABLE `admins_tbl`
  MODIFY `admin_unique_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clients_tbl`
--
ALTER TABLE `clients_tbl`
  MODIFY `client_unique_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wards_tbl`
--
ALTER TABLE `wards_tbl`
  MODIFY `ward_unique_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `water_meters_tbl`
--
ALTER TABLE `water_meters_tbl`
  MODIFY `meter_unique_id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 10, 2025 at 07:37 AM
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
-- Database: `hospital_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('e958ea1f970b');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `check_in_time` datetime DEFAULT NULL,
  `check_out_time` datetime DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `staff_id`, `check_in_time`, `check_out_time`, `date`) VALUES
(3, 28, '2025-07-07 11:24:03', '2025-07-07 11:24:21', '2025-07-07'),
(4, 28, '2025-07-08 01:33:15', '2025-07-08 01:33:17', '2025-07-08');

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE `availability` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `day_of_week` varchar(20) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `time_of_day` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `availability`
--

INSERT INTO `availability` (`id`, `staff_id`, `day_of_week`, `date`, `time_of_day`, `created_at`) VALUES
(405, 28, 'Monday', '2025-07-07', 'Morning', '2025-07-07 01:33:53'),
(406, 28, 'Tuesday', '2025-07-08', 'Morning', '2025-07-07 01:33:58'),
(407, 28, 'Friday', '2025-07-11', 'Night', '2025-07-07 01:35:07'),
(408, 28, 'Thursday', '2025-07-10', 'Full Day', '2025-07-07 01:35:29'),
(409, 28, 'Saturday', '2025-07-12', 'On Leave', '2025-07-07 01:35:33'),
(410, 28, 'Sunday', '2025-07-13', 'On Leave', '2025-07-07 01:35:38'),
(411, 28, 'Wednesday', '2025-07-09', 'Morning', '2025-07-07 01:36:33'),
(412, 28, 'Thursday', '2025-07-17', 'On Leave', '2025-07-08 02:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `availability_request`
--

CREATE TABLE `availability_request` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `day_of_week` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time_of_day` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_resubmission` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `availability_request`
--

INSERT INTO `availability_request` (`id`, `staff_id`, `day_of_week`, `date`, `time_of_day`, `status`, `created_at`, `is_resubmission`, `is_active`) VALUES
(564, 28, 'Monday', '2025-07-07', 'Morning', 'Approved', '2025-07-07 01:32:11', 0, 1),
(565, 28, 'Tuesday', '2025-07-08', 'Morning', 'Approved', '2025-07-07 01:32:11', 0, 1),
(566, 28, 'Wednesday', '2025-07-09', 'Afternoon', 'Rejected', '2025-07-07 01:32:11', 0, 0),
(567, 28, 'Thursday', '2025-07-10', 'Full Day', 'Approved', '2025-07-07 01:32:11', 0, 1),
(568, 28, 'Friday', '2025-07-11', 'Night', 'Approved', '2025-07-07 01:32:11', 0, 1),
(569, 28, 'Saturday', '2025-07-12', 'On Leave', 'Approved', '2025-07-07 01:32:11', 0, 1),
(570, 28, 'Sunday', '2025-07-13', 'On Leave', 'Approved', '2025-07-07 01:32:11', 0, 1),
(571, 28, 'Wednesday', '2025-07-09', 'Morning', 'Approved', '2025-07-06 17:36:28', 1, 1),
(572, 28, 'Monday', '2025-07-14', 'Morning', 'Rejected', '2025-07-08 00:48:32', 0, 0),
(573, 28, 'Tuesday', '2025-07-15', 'Morning', 'Rejected', '2025-07-08 00:48:32', 0, 0),
(574, 28, 'Wednesday', '2025-07-16', 'Full Day', 'Rejected', '2025-07-08 00:48:32', 0, 0),
(575, 28, 'Thursday', '2025-07-17', 'On Leave', 'Approved', '2025-07-08 00:48:32', 0, 1),
(576, 28, 'Friday', '2025-07-18', 'On Leave', 'Rejected', '2025-07-08 00:48:32', 0, 0),
(577, 28, 'Saturday', '2025-07-19', 'On Leave', 'Pending', '2025-07-08 00:48:32', 0, 1),
(578, 28, 'Sunday', '2025-07-20', 'On Leave', 'Rejected', '2025-07-08 00:48:32', 0, 0),
(579, 28, 'Monday', '2025-07-14', 'On Leave', 'Pending', '2025-07-07 18:34:25', 1, 1),
(580, 28, 'Friday', '2025-07-18', 'Morning', 'Rejected', '2025-07-07 18:54:08', 1, 1),
(581, 28, 'Sunday', '2025-07-20', 'Morning', 'Pending', '2025-07-07 18:55:58', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(10, 'Emergency'),
(8, 'ICU'),
(11, 'Surgery');

-- --------------------------------------------------------

--
-- Table structure for table `login_activity`
--

CREATE TABLE `login_activity` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `attempted_username` varchar(150) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_activity`
--

INSERT INTO `login_activity` (`id`, `user_id`, `timestamp`, `status`, `ip_address`, `attempted_username`, `user_agent`) VALUES
(26, NULL, '2025-06-11 19:54:02', 'Failed', '127.0.0.1', 'cfdsvc', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(27, 1, '2025-06-11 20:01:00', 'Failed', '127.0.0.1', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(28, 1, '2025-06-11 20:04:32', 'Failed', '127.0.0.1', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(29, 1, '2025-06-11 20:05:03', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(30, 1, '2025-06-11 20:43:58', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(31, 1, '2025-06-11 20:59:23', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(32, 1, '2025-06-11 21:14:03', 'Failed', '127.0.0.1', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(33, 1, '2025-06-11 21:14:39', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(34, NULL, '2025-06-11 22:25:33', 'Success', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(35, 1, '2025-06-11 23:48:14', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(36, NULL, '2025-06-11 23:52:32', 'Success', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(37, 1, '2025-06-12 09:54:14', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(38, NULL, '2025-06-12 10:08:12', 'Success', '127.0.0.1', 'doctor 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(39, NULL, '2025-06-12 10:09:59', 'Success', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(40, 1, '2025-06-25 07:55:27', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(41, 1, '2025-06-25 10:03:39', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(42, NULL, '2025-06-25 11:13:07', 'Failed', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(43, NULL, '2025-06-25 11:14:24', 'Success', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(44, NULL, '2025-06-25 11:18:50', 'Success', '127.0.0.1', 'doctor 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(45, NULL, '2025-06-25 11:57:46', 'Success', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(46, NULL, '2025-06-25 12:18:26', 'Failed', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(47, 1, '2025-06-25 12:18:48', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(48, NULL, '2025-06-25 12:25:47', 'Success', '127.0.0.1', 'doctor 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(49, NULL, '2025-06-25 12:26:31', 'Failed', '127.0.0.1', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(50, NULL, '2025-06-25 12:26:51', 'Success', '127.0.0.1', 'doctor 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(51, NULL, '2025-06-25 12:40:44', 'Failed', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(52, NULL, '2025-06-25 12:41:06', 'Success', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(53, NULL, '2025-06-25 12:44:07', 'Success', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(54, NULL, '2025-06-25 14:49:54', 'Success', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(55, NULL, '2025-06-25 15:48:30', 'Success', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(56, NULL, '2025-06-25 15:59:08', 'Success', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(57, NULL, '2025-06-25 16:42:50', 'Success', '127.0.0.1', 'doctor 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(58, 1, '2025-06-25 17:16:41', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(59, 1, '2025-06-26 02:56:51', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(60, NULL, '2025-06-26 07:12:49', 'Failed', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(61, 1, '2025-06-26 07:13:22', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(62, 26, '2025-06-26 07:16:15', 'Success', '127.0.0.1', 'doctor 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(63, 27, '2025-06-26 07:19:41', 'Success', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(64, NULL, '2025-07-05 18:52:50', 'Failed', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(65, 1, '2025-07-05 18:53:13', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(66, NULL, '2025-07-06 11:33:06', 'Failed', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(67, 1, '2025-07-06 11:33:35', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(68, NULL, '2025-07-06 11:43:10', 'Failed', '127.0.0.1', 'doctor 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(69, 26, '2025-07-06 11:45:59', 'Failed', '127.0.0.1', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(70, 26, '2025-07-06 11:46:07', 'Success', '127.0.0.1', 'doctor1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(71, NULL, '2025-07-06 12:14:25', 'Failed', '127.0.0.1', 'nurse1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(72, 27, '2025-07-06 12:16:09', 'Success', '127.0.0.1', 'nurse 1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(73, NULL, '2025-07-06 12:16:48', 'Failed', '127.0.0.1', 'nurse2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(74, NULL, '2025-07-06 12:16:57', 'Failed', '127.0.0.1', 'nurse2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(75, NULL, '2025-07-06 12:17:48', 'Failed', '127.0.0.1', 'nurse2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(76, 28, '2025-07-06 12:22:38', 'Success', '127.0.0.1', 'nurse2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(77, 1, '2025-07-06 16:43:02', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(78, 26, '2025-07-06 16:58:18', 'Success', '127.0.0.1', 'doctor1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(79, 28, '2025-07-06 17:07:25', 'Success', '127.0.0.1', 'nurse2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(80, NULL, '2025-07-06 17:52:18', 'Failed', '127.0.0.1', 'de', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(81, 1, '2025-07-06 17:53:20', 'Failed', '127.0.0.1', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(82, 1, '2025-07-06 19:16:32', 'Success', '127.0.0.1', 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(83, 31, '2025-07-06 19:27:42', 'Success', '127.0.0.1', 'admin2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(84, NULL, '2025-07-06 19:32:41', 'Failed', '127.0.0.1', 'xsde3', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(85, 32, '2025-07-06 19:33:41', 'Success', '127.0.0.1', 'xsde3', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(86, 28, '2025-07-07 16:53:30', 'Failed', '127.0.0.1', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(87, 28, '2025-07-07 16:53:40', 'Success', '127.0.0.1', 'nurse2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(88, 28, '2025-07-08 05:11:33', 'Success', '127.0.0.1', 'nurse2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(89, NULL, '2025-07-08 05:42:14', 'Failed', '127.0.0.1', 'doctor1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36'),
(90, 26, '2025-07-08 05:42:39', 'Success', '127.0.0.1', 'doctor1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `priority` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `sender_id` int(11) DEFAULT NULL,
  `recipient_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `message`, `priority`, `created_at`, `sender_id`, `recipient_id`, `is_read`) VALUES
(112, 'New Availability Submission', 'hahaha has updated their availability for the upcoming week.', 'Normal', '2025-06-26 15:20:37', 27, 26, 1),
(113, 'Availability Approved', 'Your availability request for 2025-06-30 (Morning) has been approved.', 'Normal', '2025-06-26 15:21:25', 26, 27, 0),
(114, 'Availability Rejected', 'Your availability request for 2025-07-01 (Afternoon) has been rejected.', 'Normal', '2025-06-26 15:21:27', 26, 27, 0),
(115, 'Availability Approved', 'Your availability request for 2025-07-02 (Morning) has been approved.', 'Normal', '2025-06-26 15:21:28', 26, 27, 0),
(116, 'Availability Approved', 'Your availability request for 2025-07-03 (Full Day) has been approved.', 'Normal', '2025-06-26 15:21:28', 26, 27, 0),
(117, 'Availability Approved', 'Your availability request for 2025-07-04 (On Leave) has been approved.', 'Normal', '2025-06-26 15:21:29', 26, 27, 0),
(118, 'Availability Approved', 'Your availability request for 2025-07-05 (On Leave) has been approved.', 'Normal', '2025-06-26 15:21:29', 26, 27, 0),
(119, 'Availability Approved', 'Your availability request for 2025-07-06 (Morning) has been approved.', 'Normal', '2025-06-26 15:21:30', 26, 27, 0),
(120, 'Availability Approved', 'Your availability request for 2025-07-01 (Afternoon) has been approved.', 'Normal', '2025-06-26 15:22:14', 26, 27, 0),
(121, 'New Schedule Request', 'hahaha submitted a Take Off request for 2025-07-01.', 'Normal', '2025-06-26 15:23:29', 27, 26, 0),
(122, 'Request Approved', 'Your schedule change request for 2025-07-01 has been approved.', 'Normal', '2025-06-26 15:23:46', 26, 27, 0),
(124, 'diwdgf', 'dfwdfd', 'High', '2025-06-26 15:24:38', 26, 27, 0),
(125, 'New Availability Submission', 'angel siv has updated their availability for the upcoming week.', 'Normal', '2025-07-06 20:23:26', 28, 26, 1),
(126, 'New Availability Submission', 'hahaha has updated their availability for the upcoming week.', 'Normal', '2025-07-06 20:26:06', 27, 26, 0),
(127, 'Availability Approved', 'Your availability request for 2025-07-13 (Morning) has been approved.', 'Normal', '2025-07-06 20:57:04', 26, 27, 0),
(128, 'Availability Rejected', 'Your availability request for 2025-07-12 (Afternoon) has been rejected.', 'Normal', '2025-07-06 20:57:07', 26, 27, 0),
(129, 'Availability Approved', 'Your availability request for 2025-07-11 (Full Day) has been approved.', 'Normal', '2025-07-06 20:57:08', 26, 27, 0),
(130, 'Availability Rejected', 'Your availability request for 2025-07-10 (Night) has been rejected.', 'Normal', '2025-07-06 20:57:09', 26, 27, 0),
(131, 'Availability Approved', 'Your availability request for 2025-07-09 (Afternoon) has been approved.', 'Normal', '2025-07-06 20:57:09', 26, 27, 0),
(132, 'Availability Rejected', 'Your availability request for 2025-07-08 (On Leave) has been rejected.', 'Normal', '2025-07-06 20:57:10', 26, 27, 0),
(133, 'Availability Approved', 'Your availability request for 2025-07-07 (On Leave) has been approved.', 'Normal', '2025-07-06 20:57:11', 26, 27, 0),
(134, 'Availability Approved', 'Your availability request for 2025-07-07 (Morning) has been approved.', 'Normal', '2025-07-06 20:57:55', 26, 28, 0),
(135, 'Availability Rejected', 'Your availability request for 2025-07-08 (Morning) has been rejected.', 'Normal', '2025-07-06 20:57:55', 26, 28, 0),
(136, 'Availability Approved', 'Your availability request for 2025-07-09 (Full Day) has been approved.', 'Normal', '2025-07-06 20:57:56', 26, 28, 0),
(137, 'Availability Rejected', 'Your availability request for 2025-07-10 (Afternoon) has been rejected.', 'Normal', '2025-07-06 20:57:57', 26, 28, 0),
(138, 'Availability Approved', 'Your availability request for 2025-07-11 (Night) has been approved.', 'Normal', '2025-07-06 20:57:58', 26, 28, 0),
(139, 'Availability Approved', 'Your availability request for 2025-07-12 (On Leave) has been approved.', 'Normal', '2025-07-06 20:57:59', 26, 28, 0),
(140, 'Availability Approved', 'Your availability request for 2025-07-13 (On Leave) has been approved.', 'Normal', '2025-07-06 20:57:59', 26, 28, 0),
(141, 'Availability Approved', 'Your availability request for 2025-07-10 (Afternoon) has been approved.', 'Normal', '2025-07-06 21:05:38', 26, 28, 0),
(142, 'Availability Approved', 'Your availability request for 2025-07-08 (Morning) has been approved.', 'Normal', '2025-07-06 21:05:52', 26, 28, 0),
(143, 'New Schedule Request', 'angel siv submitted a Shift Swap request for 2025-07-09.', 'Normal', '2025-07-06 21:06:52', 28, 26, 0),
(144, 'New Schedule Request', 'angel siv submitted a Take Off request for 2025-07-13.', 'Normal', '2025-07-06 21:07:08', 28, 26, 0),
(145, 'New Schedule Request', 'angel siv submitted a MC request for 2025-07-12.', 'Normal', '2025-07-06 21:07:39', 28, 26, 0),
(146, 'New Schedule Request', 'angel siv submitted a MC request for 2025-07-12.', 'Normal', '2025-07-06 21:07:41', 28, 26, 1),
(147, 'Request Rejected', 'Your schedule change request for 2025-07-12 has been rejected.', 'High', '2025-07-06 21:07:58', 26, 28, 0),
(148, 'Request Approved', 'Your schedule change request for 2025-07-12 has been approved.', 'Normal', '2025-07-06 21:08:02', 26, 28, 0),
(149, 'Request Approved', 'Your schedule change request for 2025-07-13 has been approved.', 'Normal', '2025-07-06 21:09:31', 26, 28, 0),
(150, 'Attention to all staff ', 'new information for our Department ', 'Normal', '2025-07-06 21:13:52', 26, 26, 1),
(151, 'Attention to all staff ', 'new information for our Department ', 'Normal', '2025-07-06 21:13:52', 26, 27, 0),
(152, 'Attention to all staff ', 'new information for our Department ', 'Normal', '2025-07-06 21:13:52', 26, 28, 0),
(153, 'need to change your schedule ', 'ahsuhduihsw', 'High', '2025-07-06 21:17:12', 26, 28, 0),
(155, 'scvedfve', 'feverver', 'Low', '2025-07-06 21:17:42', 26, 27, 0),
(156, 'scvedfve', 'feverver', 'Low', '2025-07-06 21:17:42', 26, 28, 0),
(157, 'Request Approved', 'Your schedule change request for 2025-07-09 has been approved.', 'Normal', '2025-07-06 21:20:29', 26, 28, 0),
(158, 'New Schedule Request', 'angel siv submitted a Shift Swap request for 2025-07-12.', 'Normal', '2025-07-06 21:21:27', 28, 26, 1),
(159, 'Request Rejected', 'Your schedule change request for 2025-07-12 has been rejected.', 'High', '2025-07-06 21:21:53', 26, 28, 0),
(160, 'frvfrvft', 'fvfvfv', 'Normal', '2025-07-07 00:45:04', 1, 26, 1),
(161, 'New Availability Submission', 'angel siv has updated their availability for the upcoming week.', 'Normal', '2025-07-07 01:12:45', 28, 26, 0),
(162, 'Availability Approved', 'Your availability request for 2025-07-07 (Morning) has been approved.', 'Normal', '2025-07-07 01:13:01', 26, 28, 0),
(163, 'Availability Approved', 'Your availability request for 2025-07-07 (Morning) has been approved.', 'Normal', '2025-07-07 01:13:02', 26, 28, 0),
(164, 'Availability Approved', 'Your availability request for 2025-07-08 (Morning) has been approved.', 'Normal', '2025-07-07 01:13:09', 26, 28, 0),
(165, 'Availability Approved', 'Your availability request for 2025-07-09 (Full Day) has been approved.', 'Normal', '2025-07-07 01:13:21', 26, 28, 0),
(166, 'Availability Rejected', 'Your availability request for 2025-07-10 (Afternoon) has been rejected.', 'Normal', '2025-07-07 01:13:21', 26, 28, 0),
(167, 'Availability Approved', 'Your availability request for 2025-07-11 (Night) has been approved.', 'Normal', '2025-07-07 01:13:22', 26, 28, 0),
(170, 'New Schedule Request', 'angel siv submitted a Shift Swap request for 2025-07-09.', 'Normal', '2025-07-07 01:19:36', 28, 26, 0),
(171, 'Availability Approved', 'Your availability request for 2025-07-10 (Afternoon) has been approved.', 'Normal', '2025-07-07 01:28:53', 26, 28, 0),
(172, 'New Availability Submission', 'angel siv has updated their availability for the upcoming week.', 'Normal', '2025-07-07 01:32:14', 28, 26, 0),
(173, 'Availability Approved', 'Your availability request for 2025-07-07 (Morning) has been approved.', 'Normal', '2025-07-07 01:33:53', 26, 28, 0),
(174, 'Availability Approved', 'Your availability request for 2025-07-08 (Morning) has been approved.', 'Normal', '2025-07-07 01:33:58', 26, 28, 0),
(175, 'Availability Rejected', 'Your availability request for 2025-07-09 (Afternoon) has been rejected.', 'Normal', '2025-07-07 01:34:05', 26, 28, 0),
(176, 'Availability Approved', 'Your availability request for 2025-07-11 (Night) has been approved.', 'Normal', '2025-07-07 01:35:07', 26, 28, 0),
(177, 'Availability Approved', 'Your availability request for 2025-07-10 (Full Day) has been approved.', 'Normal', '2025-07-07 01:35:29', 26, 28, 0),
(178, 'Availability Approved', 'Your availability request for 2025-07-12 (On Leave) has been approved.', 'Normal', '2025-07-07 01:35:33', 26, 28, 0),
(179, 'Availability Approved', 'Your availability request for 2025-07-13 (On Leave) has been approved.', 'Normal', '2025-07-07 01:35:38', 26, 28, 0),
(180, 'Availability Approved', 'Your availability request for 2025-07-09 (Morning) has been approved.', 'Normal', '2025-07-07 01:36:33', 26, 28, 1),
(181, 'dcdfc', 'dcdcvfdv', 'Low', '2025-07-07 12:55:22', 1, 26, 0),
(182, 'dcdfc', 'dcdcvfdv', 'Low', '2025-07-07 12:55:22', 1, 28, 0),
(183, 'dcdfc', 'dcdcvfdv', 'Low', '2025-07-07 12:55:22', 1, 30, 0),
(184, 'dcdfc', 'dcdcvfdv', 'Low', '2025-07-07 12:55:22', 1, 32, 0),
(185, 'dcdfc', 'dcdcvfdv', 'Low', '2025-07-07 12:55:28', 1, 26, 0),
(186, 'dcdfc', 'dcdcvfdv', 'Low', '2025-07-07 12:55:28', 1, 28, 0),
(187, 'dcdfc', 'dcdcvfdv', 'Low', '2025-07-07 12:55:28', 1, 30, 0),
(188, 'dcdfc', 'dcdcvfdv', 'Low', '2025-07-07 12:55:28', 1, 32, 0),
(191, 'fvfvf', 'vgfbvg', 'High', '2025-07-07 12:56:34', 1, 30, 0),
(193, 'New Schedule Request', 'angel siv submitted a MC request for 2025-07-09.', 'Normal', '2025-07-08 00:43:51', 28, 26, 0),
(194, 'New Schedule Request', 'angel siv submitted a Shift Swap request for 2025-07-09.', 'Normal', '2025-07-08 00:46:07', 28, 26, 0),
(195, 'New Availability Submission', 'angel siv has updated their availability for the upcoming week.', 'Normal', '2025-07-08 00:48:32', 28, 26, 0),
(196, 'New Schedule Request', 'angel siv submitted a Take Off request for 2025-07-09.', 'Normal', '2025-07-08 00:51:23', 28, 26, 0),
(197, 'New Schedule Request', 'angel siv submitted a Shift Swap request for 2025-07-09.', 'Normal', '2025-07-08 00:54:03', 28, 26, 0),
(198, 'New Schedule Request', 'angel siv submitted a Take Off request for 2025-07-10.', 'Normal', '2025-07-08 00:59:38', 28, 26, 0),
(199, 'New Availability Submission', 'angel siv has updated their availability for the upcoming week.', 'Normal', '2025-07-08 00:59:55', 28, 26, 0),
(200, 'New Schedule Request', 'angel siv submitted a Shift Swap request for 2025-07-09.', 'Normal', '2025-07-08 01:04:02', 28, 26, 0),
(201, 'New Schedule Request', 'angel siv submitted a Shift Swap request for 2025-07-09.', 'Normal', '2025-07-08 01:13:21', 28, 26, 0),
(202, 'Availability Rejected', 'Your availability request for 2025-07-14 (Morning) has been rejected.', 'Normal', '2025-07-08 02:26:05', 26, 28, 0),
(203, 'Availability Rejected', 'Your availability request for 2025-07-15 (Morning) has been rejected.', 'Normal', '2025-07-08 02:49:51', 26, 28, 0),
(204, 'Resubmitted Availability', 'angel siv has resubmitted availability for 2025-07-15 (Tuesday).', 'Normal', '2025-07-08 02:50:12', 28, 26, 0),
(205, 'Resubmitted Availability', 'angel siv has resubmitted availability for 2025-07-14 (Monday).', 'Normal', '2025-07-08 02:50:30', 28, 26, 0),
(206, 'Availability Rejected', 'Your availability request for 2025-07-16 (Full Day) has been rejected.', 'Normal', '2025-07-08 02:50:40', 26, 28, 0),
(207, 'Resubmitted Availability', 'angel siv has resubmitted availability for 2025-07-16 (Wednesday).', 'Normal', '2025-07-08 02:50:53', 28, 26, 0),
(210, 'Resubmitted Availability', 'angel siv has resubmitted availability for 2025-07-18 (Friday).', 'Normal', '2025-07-08 02:54:11', 28, 26, 0),
(212, 'Resubmitted Availability', 'angel siv has resubmitted availability for 2025-07-20 (Sunday).', 'Normal', '2025-07-08 02:56:01', 28, 26, 0),
(213, 'Availability Rejected', 'Your availability request for 2025-07-18 (Morning) has been rejected.', 'Normal', '2025-07-08 02:56:44', 26, 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_request`
--

CREATE TABLE `schedule_request` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `current_shift` varchar(100) DEFAULT NULL,
  `requested_date` varchar(50) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `request_type` varchar(50) DEFAULT NULL,
  `desired_shift` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_request`
--

INSERT INTO `schedule_request` (`id`, `staff_id`, `current_shift`, `requested_date`, `reason`, `status`, `created_at`, `request_type`, `desired_shift`) VALUES
(38, 27, 'Evening', '2025-07-01', 'asdweqdfwef', 'Approved', '2025-06-26 15:23:26', 'Take Off', NULL),
(39, 28, 'Afternoon', '2025-07-09', 'dseefedfe', 'Approved', '2025-07-06 21:06:49', 'Shift Swap', 'Morning'),
(40, 28, 'Morning', '2025-07-13', 'efefrfrf', 'Approved', '2025-07-06 21:07:05', 'Take Off', NULL),
(41, 28, 'Afternoon', '2025-07-12', 'fghtfhrth5r', 'Approved', '2025-07-06 21:07:36', 'MC', NULL),
(42, 28, 'Afternoon', '2025-07-12', 'fghtfhrth5r', 'Rejected', '2025-07-06 21:07:38', 'MC', NULL),
(43, 28, 'Afternoon', '2025-07-12', 'dvfrgtg', 'Rejected', '2025-07-06 21:21:25', 'Shift Swap', 'Morning'),
(44, 28, 'Morning', '2025-07-09', 'wdsdfef', 'Cancelled', '2025-07-07 01:19:32', 'Shift Swap', 'Afternoon'),
(45, 28, 'Morning', '2025-07-09', 'fvfbtfbgt', 'Pending', '2025-07-08 00:43:51', 'MC', NULL),
(46, 28, 'Morning', '2025-07-09', 'sfcdfee', 'Pending', '2025-07-08 00:46:07', 'Shift Swap', 'Afternoon'),
(47, 28, 'Afternoon', '2025-07-09', 'bjghuuih', 'Pending', '2025-07-08 00:51:23', 'Take Off', NULL),
(48, 28, 'Afternoon', '2025-07-09', 'cgfufyfyuf', 'Pending', '2025-07-08 00:54:00', 'Shift Swap', 'Afternoon'),
(49, 28, 'Afternoon', '2025-07-10', 'dbdfbdf', 'Pending', '2025-07-08 00:59:34', 'Take Off', NULL),
(50, 28, 'Morning', '2025-07-09', 'cvdfv', 'Pending', '2025-07-08 01:03:59', 'Shift Swap', 'Afternoon'),
(51, 28, 'Morning', '2025-07-09', 'cvdfv', 'Pending', '2025-07-08 01:13:18', 'Shift Swap', 'Afternoon');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`id`, `title`, `date`, `staff_id`, `time`) VALUES
(276, 'nurse 1 (Morning Shift)', '2025-07-02', 27, 'Morning'),
(277, 'nurse 1 (Full Day Shift)', '2025-07-03', 27, 'Full Day'),
(278, 'nurse 1 (Morning Shift)', '2025-07-06', 27, 'Morning'),
(279, 'nurse 1 (Afternoon Shift)', '2025-07-01', 27, 'Afternoon'),
(281, 'nurse 1 (Morning Shift)', '2025-07-13', 27, 'Morning'),
(282, 'nurse 1 (Full Day Shift)', '2025-07-11', 27, 'Full Day'),
(283, 'nurse 1 (Afternoon Shift)', '2025-07-09', 27, 'Afternoon'),
(290, 'nurse 1 (Morning Shift)', '2025-07-08', 27, 'Morning'),
(299, 'nurse2 (Afternoon Shift)', '2025-07-08', 28, 'Afternoon'),
(300, 'nurse2 (Night Shift)', '2025-07-11', 28, 'Night'),
(301, 'nurse2 (Full Day Shift)', '2025-07-10', 28, 'Full Day'),
(302, 'nurse2 (Morning Shift)', '2025-07-09', 28, 'Morning');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `must_change_password` tinyint(1) DEFAULT 1,
  `last_password_change` datetime DEFAULT current_timestamp(),
  `department_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `full_name`, `password`, `email`, `role`, `created_at`, `last_login`, `must_change_password`, `last_password_change`, `department_id`, `is_active`) VALUES
(1, 'admin', 'Admin User', 'pbkdf2:sha256:1000000$FQLElagzkWm52SYQ$df082ebcc8c79c6a1cc994bcefc5b6e4a6ddf00c5636a53c1290bd3fd4d6fbbc', 'konisha0811@gmail.com', 'admin', '2025-06-02 02:02:12', '2025-07-07 03:16:19', 0, '2025-06-02 02:30:24', NULL, 1),
(26, 'doctor1', 'sha siv', 'pbkdf2:sha256:1000000$u1u90BEWNKLCEEId$521153719e890ca3ec2607d112079f8234f84be5741d028c1773a86e9df306e1', 'konisha030811@gmail.com', 'doctor', '2025-06-26 15:14:35', '2025-07-08 13:42:21', 0, '2025-06-26 07:14:35', 8, 1),
(28, 'nurse2', 'angel siv', 'pbkdf2:sha256:1000000$J1Vw2VdJI9EWfWwg$8cce36d3dafdd41d195e2a6772d3576c5299928ed8e9e6a2e57269f7e89a52a8', 'nishasiv0811@gmail.com', 'staff', '2025-07-06 20:00:45', '2025-07-08 13:10:56', 0, '2025-07-06 12:00:45', 8, 1),
(30, 'nurse1', 'hahaha', 'scrypt:32768:8:1$I6AprzcG86YSSfIe$e031c590e29b73e9a623a48a2287b04c112f0e17723de33e5924f4a1e74365a2aaad2ac156e66708bcf9e73ca415ffdef1db571c70a29c2339ed001c2ca589d2', '1211104395@student.mmu.edu.my', 'staff', '2025-07-07 01:40:42', NULL, 1, '2025-07-06 17:40:42', 8, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `availability`
--
ALTER TABLE `availability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `availability_request`
--
ALTER TABLE `availability_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `availability_request_staff_fk` (`staff_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `login_activity`
--
ALTER TABLE `login_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Indexes for table `schedule_request`
--
ALTER TABLE `schedule_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `availability`
--
ALTER TABLE `availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `availability_request`
--
ALTER TABLE `availability_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login_activity`
--
ALTER TABLE `login_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `schedule_request`
--
ALTER TABLE `schedule_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `availability`
--
ALTER TABLE `availability`
  ADD CONSTRAINT `availability_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `availability_request`
--
ALTER TABLE `availability_request`
  ADD CONSTRAINT `availability_request_staff_fk` FOREIGN KEY (`staff_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `login_activity`
--
ALTER TABLE `login_activity`
  ADD CONSTRAINT `login_activity_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`recipient_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `schedule_request`
--
ALTER TABLE `schedule_request`
  ADD CONSTRAINT `schedule_request_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `shift`
--
ALTER TABLE `shift`
  ADD CONSTRAINT `shift_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 03:34 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jmsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` text COLLATE utf8_bin NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `date`) VALUES
(1, 'Med Tab', '2020-02-09 14:07:23'),
(2, 'Med Syr', '2020-02-09 14:07:37'),
(3, 'Infant', '2020-02-09 14:07:46'),
(4, 'Galenicals', '2020-02-09 14:08:05'),
(5, 'Medical Supplies', '2020-02-09 14:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `id` int(11) NOT NULL,
  `idCategory` int(11) NOT NULL,
  `code` text COLLATE utf8_spanish_ci NOT NULL,
  `description` text COLLATE utf8_spanish_ci NOT NULL,
  `image` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `buyingPrice` float NOT NULL,
  `sellingPrice` float NOT NULL,
  `sales` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `idCategory`, `code`, `description`, `image`, `stock`, `buyingPrice`, `sellingPrice`, `sales`, `date`) VALUES
(1, 1, '8906016610115', 'Arcoxia 120', 'views/img/parts/8906016610115/940.jpg', 4, 5, 82, 2, '2020-02-17 14:30:22'),
(2, 1, '102', 'Arcoxia 90', '', 9, 5, 68, 0, '2020-02-15 04:31:39'),
(3, 1, '103', 'Arcoxia 60', 'views/img/parts/103/488.jpg', 14, 5, 60, 1, '2020-02-17 14:34:23'),
(4, 1, '104', 'Approvel 150', '', 10, 5, 25, 1, '2020-02-17 12:43:46'),
(5, 1, '105', 'Ampicin 500', '', 10, 5, 20, 1, '2020-02-17 12:43:46'),
(6, 1, '106', 'Allerta', 'views/img/parts/106/169.jpg', 12, 5, 23, 23, '2020-02-17 14:24:36'),
(7, 1, '107', 'Ascof 300', 'views/img/parts/107/504.jpg', 28, 5, 4, 2, '2020-02-17 14:31:21'),
(8, 1, '108', 'Aldomet 250mg', '', 28, 5, 5, 1, '2020-02-17 12:52:00'),
(9, 1, '109', 'Ascof Forte 600', '', 3, 5, 56, 0, '2020-02-15 04:31:39'),
(10, 1, '110', 'Aldactone 25', 'views/img/parts/110/519.jpg', 30, 5, 18, 9, '2020-02-17 14:26:05'),
(11, 1, '111', 'Bambec', '', 21, 5, 47, 0, '2020-02-15 04:31:39'),
(12, 1, '112', 'Combizar 50', '', 29, 5, 30, 1, '2020-02-17 12:52:00'),
(13, 1, '113', 'Alnix', '', 22, 5, 19, 0, '2020-02-15 04:31:39'),
(14, 1, '114', 'Bactrim 400mg', '', 0, 5, 5, 0, '2020-02-15 04:31:39'),
(15, 1, '115', 'Ascof Forte 600 foil', '', 24, 5, 76, 0, '2020-02-15 04:31:39'),
(16, 1, '116', 'Augmentin 625', 'views/img/parts/116/237.jpg', 10, 5, 51, 4, '2020-02-17 14:27:55'),
(17, 1, '117', 'Atenurix 40', '', 35, 5, 22, 0, '2020-02-15 04:31:39'),
(18, 1, '118', 'Aldactone 50', 'views/img/parts/118/381.jpg', 12, 5, 28, 5, '2020-02-17 14:26:51'),
(19, 1, '119', 'Ascof 600mg syr', 'views/img/parts/119/839.jpg', 4, 5, 15, 2, '2020-02-17 14:32:01'),
(20, 1, '120', 'Ascof 300mg syr', '', 4, 5, 13, 0, '2020-02-15 04:31:39'),
(21, 1, '121', 'Bricanyl 2.5', '', 39, 5, 10, 0, '2020-02-15 04:31:39'),
(22, 1, '122', 'Bisolvon tab', '', 4, 5, 15, 0, '2020-02-15 04:31:39'),
(23, 1, '123', 'Augmentin 375', '', 14, 5, 41, 0, '2020-02-15 04:31:39'),
(24, 1, '124', 'Amvasc BE 5mg', '', 19, 5, 11, 1, '2020-02-17 13:14:40'),
(25, 1, '125', 'Eyeberry', '', 26, 5, 18, 0, '2020-02-15 04:31:39'),
(26, 1, '126', 'Amvasc BE 10mg', '', 8, 5, 30, 0, '2020-02-15 04:31:39'),
(27, 1, '127', 'Amoxil 500', '', 27, 5, 15, 0, '2020-02-15 04:31:39'),
(28, 1, '128', 'Ansimar 400', '', 41, 5, 36, 0, '2020-02-15 04:31:39'),
(29, 1, '129', 'Algesia', 'views/img/parts/129/365.jpg', 10, 5, 51, 4, '2020-02-17 14:28:51'),
(30, 1, '130', 'Antamin', '', 20, 5, 5.5, 0, '2020-02-15 04:31:39'),
(31, 1, '131', 'Alnix plus', '', 26, 5, 21, 0, '2020-02-15 04:31:39'),
(32, 1, '132', 'Alvedon 500', '', 40, 5, 4, 0, '2020-02-15 04:31:39'),
(33, 1, '133', 'Celestamine', '', 36, 5, 25, 0, '2020-02-15 04:31:39'),
(34, 1, '134', 'Cefalin 500', '', 25, 5, 49, 0, '2020-02-15 04:31:39'),
(35, 1, '135', 'Cataflam 50', 'views/img/parts/135/540.jpg', 9, 5, 34, 3, '2020-02-17 14:29:35'),
(36, 1, '136', 'Candez 8mg', '', 15, 5, 19, 1, '2020-02-17 12:46:07'),
(37, 1, '137', 'Candez 16mg', '', 10, 5, 34, 1, '2020-02-17 12:46:08'),
(38, 1, '138', 'Celestone 500', '', 20, 5, 5, 0, '2020-02-15 04:31:39'),
(39, 1, '139', 'Buscopan Venus', '', 21, 5, 30, 0, '2020-02-15 04:31:39'),
(40, 1, '140', 'Buscopan Plus', '', 30, 5, 30, 0, '2020-02-15 04:31:39'),
(41, 2, '201', 'Ascof 300mg 60ml', '', 4, 5, 100, 0, '2020-02-15 04:31:39'),
(42, 2, '202', 'Ascof 300mg 120ml', '', 6, 5, 132, 0, '2020-02-15 04:31:39'),
(43, 2, '203', 'Plemex 600mg 60ml', '', 3, 5, 117, 0, '2020-02-15 04:31:39'),
(44, 2, '204', 'Plemex 600mg 120ml', '', 0, 5, 5, 0, '2020-02-15 04:31:39'),
(45, 2, '205', 'Plemex 300mg 60ml', '', 4, 5, 100, 0, '2020-02-15 04:31:39'),
(46, 2, '206', 'Plemex 300mg 120ml', '', 3, 5, 133, 0, '2020-02-15 04:31:39'),
(47, 3, '301', 'Boom XL 4s', '', 0, 5, 24, 0, '2020-02-15 04:31:39'),
(48, 3, '302', 'Boom XL 10s', '', 0, 5, 59, 0, '2020-02-15 04:31:39'),
(49, 3, '303', 'Boom XL 30s', '', 0, 5, 170, 0, '2020-02-15 04:31:39'),
(50, 3, '304', 'Boom Medium 4s', '', 19, 5, 18, 1, '2020-02-17 12:46:07'),
(51, 3, '305', 'Boom Medium 10s', '', 0, 5, 47, 0, '2020-02-15 04:31:39'),
(52, 3, '306', 'Boom medium 30s', '', 0, 5, 135, 0, '2020-02-15 04:31:39'),
(53, 3, '307', 'Boom Large 4s', '', 0, 5, 21, 0, '2020-02-15 04:31:39'),
(54, 3, '308', 'Boom Large 10s', '', 0, 5, 53, 0, '2020-02-15 04:31:39'),
(55, 3, '309', 'Boom Large 30s', '', 0, 5, 151, 0, '2020-02-15 04:31:39'),
(56, 4, '401', 'Katinko small', '', 30, 5, 5, 0, '2020-02-15 04:31:39'),
(57, 4, '402', 'Katinko Big', '', 67, 5, 5, 0, '2020-02-15 04:31:39'),
(58, 4, '403', 'Aceite Manzanilla 25ml', '', 15, 5, 5, 0, '2020-02-15 04:31:39'),
(59, 4, '404', 'Aceite Manzanilla 50ml', '', 24, 5, 5, 0, '2020-02-15 04:31:39'),
(60, 4, '405', 'Aceite Manzanilla 100ml', '', 42, 5, 5, 0, '2020-02-15 04:31:39'),
(61, 4, '406', 'Efficascent reg 25ml', '', 27, 5, 5, 0, '2020-02-15 04:31:39'),
(62, 4, '407', 'Efficascent reg 50ml', '', 48, 5, 5, 0, '2020-02-15 04:31:39'),
(63, 4, '408', 'Efficascent reg 100ml', '', 94, 5, 5, 0, '2020-02-15 04:31:39'),
(64, 4, '409', 'Efficascent extra  25ml', '', 33, 5, 5, 0, '2020-02-15 04:31:39'),
(65, 4, '410', 'Efficascent extra  50ml', '', 62, 5, 5, 0, '2020-02-15 04:31:39'),
(66, 4, '411', 'Efficascent extra  100ml', '', 114, 5, 5, 0, '2020-02-15 04:31:39'),
(67, 4, '412', 'Efficascent extreme  25ml', '', 40, 5, 5, 0, '2020-02-15 04:31:39'),
(68, 4, '413', 'Efficascent extreme  50ml', '', 75, 5, 5, 0, '2020-02-15 04:31:39'),
(69, 5, '501', 'Sterile Gauze pad 1s', '', 400, 5, 5, 0, '2020-02-15 04:31:39'),
(70, 5, '502', 'Sterile Gauze pad 4s', '', 200, 5, 25, 0, '2020-02-15 04:31:39'),
(71, 5, '503', 'Syringe 1ml', '', 10, 5, 15, 0, '2020-02-15 04:31:39'),
(72, 5, '504', 'Syringe 3ml', '', 10, 5, 15, 0, '2020-02-15 04:31:39'),
(73, 5, '505', 'Syringe 5ml', '', 10, 5, 20, 0, '2020-02-15 04:31:39'),
(74, 5, '506', 'Syringe 10ml', '', 10, 5, 25, 0, '2020-02-15 04:31:39'),
(75, 5, '507', 'Insulin Syringe 50 units', '', 10, 5, 15, 0, '2020-02-15 04:31:39'),
(76, 5, '508', 'Insulin Syringe 100 units', '', 10, 5, 15, 0, '2020-02-15 04:31:39'),
(77, 5, '509', 'Foley Catheter 16', '', 10, 5, 50, 0, '2020-02-15 04:31:39'),
(78, 5, '510', 'Foley Catheter 18', '', 10, 5, 50, 0, '2020-02-15 04:31:39'),
(79, 5, '511', 'Nebulizer Machine small', '', 10, 5, 1800, 0, '2020-02-15 04:31:39'),
(80, 5, '512', 'Nebulizer Machine big', '', 10, 5, 2300, 0, '2020-02-15 04:31:39'),
(81, 1, '141', 'Mefenamic Acid', 'views/img/parts/default/anonymous.png', 30, 0.5, 2, 0, '2020-02-17 13:38:52'),
(82, 1, '4806520350818', 'Co Amoxiclav  675', 'views/img/parts/4806520350818/923.jpg', 22, 10, 29, 0, '2020-02-17 13:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `partsuser`
--

CREATE TABLE `partsuser` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `idDocument` int(11) NOT NULL,
  `email` text COLLATE utf8_bin NOT NULL,
  `phone` text COLLATE utf8_bin NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  `birthdate` date NOT NULL,
  `partsWithdrawn` int(11) NOT NULL,
  `lastWithdrawn` datetime NOT NULL,
  `registerDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `partsuser`
--

INSERT INTO `partsuser` (`id`, `name`, `idDocument`, `email`, `phone`, `address`, `birthdate`, `partsWithdrawn`, `lastWithdrawn`, `registerDate`) VALUES
(1, 'J', 222, 'jamaludding@pciltd.com.sg', '6281270068807', 'Batam', '1978-10-07', 23, '2020-02-17 08:14:40', '2020-02-17 13:14:40'),
(2, 'S', 222, 'sherwin.nofuente@cognex.com', '97781073', 'SG', '1978-10-07', 66, '2020-02-17 08:20:12', '2020-02-17 13:20:12'),
(3, 'A', 111111, 'angelynnofuente@yahoo.com', '91780406', 'SG', '1980-04-06', 6, '2020-02-17 07:46:08', '2020-02-17 12:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `user` text NOT NULL,
  `password` text NOT NULL,
  `profile` text NOT NULL,
  `photo` text NOT NULL,
  `status` int(11) NOT NULL,
  `lastLogin` datetime NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`, `profile`, `photo`, `status`, `lastLogin`, `date`) VALUES
(11, 'Sherwin Nofuente', 'sherwin', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Administrator', 'views/img/users/sherwin/869.jpg', 1, '2020-02-15 14:00:42', '2020-02-15 06:00:42'),
(33, 'Angelyn Nofuente', 'angie', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Special', 'views/img/users/angie/607.jpg', 1, '2020-02-17 21:53:43', '2020-02-17 13:53:43'),
(34, 'Boss', 'boss', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Seller', 'views/img/users/boss/972.png', 1, '2020-02-17 21:52:55', '2020-02-17 13:52:55'),
(44, 'Sherlyn', 'sherlyn', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Administrator', 'views/img/users/sherlyn/922.png', 1, '2020-02-17 22:21:17', '2020-02-17 14:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `idPartsUser` int(11) NOT NULL,
  `idIssuer` int(11) NOT NULL,
  `parts` text COLLATE utf8_spanish_ci NOT NULL,
  `disc` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `netPrice` float NOT NULL,
  `totalPrice` float NOT NULL,
  `paymentMethod` text COLLATE utf8_spanish_ci NOT NULL,
  `withdrawalDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `withdrawal`
--

INSERT INTO `withdrawal` (`id`, `code`, `idPartsUser`, `idIssuer`, `parts`, `disc`, `tax`, `netPrice`, `totalPrice`, `paymentMethod`, `withdrawalDate`) VALUES
(1, 10001, 2, 11, '[{\"id\":\"6\",\"description\":\"Allerta\",\"quantity\":\"20\",\"stock\":\"15\",\"price\":\"23\",\"totalPrice\":\"460\"}]', 37, 0, 423.2, 460, 'cash', '2020-02-15 05:07:59'),
(2, 10002, 2, 11, '[{\"id\":\"18\",\"description\":\"Aldactone 50\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"28\",\"totalPrice\":\"28\"}]', 1, 0, 27.44, 28, 'cash', '2020-02-15 14:23:50'),
(3, 10003, 2, 11, '[{\"id\":\"16\",\"description\":\"Augmentin 625\",\"quantity\":\"1\",\"stock\":\"13\",\"price\":\"51\",\"totalPrice\":\"51\"}]', 3, 0, 48.45, 51, 'cash', '2020-02-15 14:26:35'),
(4, 10004, 2, 11, '[{\"id\":\"19\",\"description\":\"Ascof 600mg syr\",\"quantity\":\"1\",\"stock\":\"5\",\"price\":\"15\",\"totalPrice\":\"15\"}]', 0, 0, 14.7, 15, 'cash', '2020-02-15 14:27:39'),
(5, 10005, 1, 11, '[{\"id\":\"16\",\"description\":\"Augmentin 625\",\"quantity\":\"1\",\"stock\":\"12\",\"price\":\"51\",\"totalPrice\":\"51\"}]', 3, 0, 48.45, 51, 'cash', '2020-02-15 14:29:51'),
(6, 10006, 1, 11, '[{\"id\":\"16\",\"description\":\"Augmentin 625\",\"quantity\":\"1\",\"stock\":\"11\",\"price\":\"51\",\"totalPrice\":\"51\"},{\"id\":\"6\",\"description\":\"Allerta\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"23\",\"totalPrice\":\"23\"}]', 4, 0, 70.3, 74, 'cash', '2020-02-17 11:49:23'),
(7, 10007, 2, 11, '[{\"id\":\"18\",\"description\":\"Aldactone 50\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"28\",\"totalPrice\":\"28\"},{\"id\":\"16\",\"description\":\"Augmentin 625\",\"quantity\":\"1\",\"stock\":\"10\",\"price\":\"51\",\"totalPrice\":\"51\"}]', 2, 0, 77.42, 79, 'cash', '2020-02-17 12:25:33'),
(8, 10008, 1, 11, '[{\"id\":\"19\",\"description\":\"Ascof 600mg syr\",\"quantity\":\"1\",\"stock\":\"4\",\"price\":\"15\",\"totalPrice\":\"15\"},{\"id\":\"1\",\"description\":\"Arcoxia 120\",\"quantity\":\"1\",\"stock\":\"5\",\"price\":\"82\",\"totalPrice\":\"82\"}]', 2, 0, 95.06, 97, 'cash', '2020-02-17 12:28:07'),
(9, 10009, 1, 11, '[{\"id\":\"18\",\"description\":\"Aldactone 50\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"28\",\"totalPrice\":\"28\"},{\"id\":\"6\",\"description\":\"Allerta\",\"quantity\":\"1\",\"stock\":\"13\",\"price\":\"23\",\"totalPrice\":\"23\"},{\"id\":\"1\",\"description\":\"Arcoxia 120\",\"quantity\":\"1\",\"stock\":\"4\",\"price\":\"82\",\"totalPrice\":\"82\"}]', 3, 0, 130.34, 133, 'cash', '2020-02-17 12:37:09'),
(10, 10010, 1, 11, '[{\"id\":\"6\",\"description\":\"Allerta\",\"quantity\":\"1\",\"stock\":\"12\",\"price\":\"23\",\"totalPrice\":\"23\"},{\"id\":\"3\",\"description\":\"Arcoxia 60\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"60\",\"totalPrice\":\"60\"}]', 2, 0, 81.34, 83, 'cash', '2020-02-17 12:42:10'),
(11, 10011, 2, 11, '[{\"id\":\"4\",\"description\":\"Approvel 150\",\"quantity\":\"1\",\"stock\":\"10\",\"price\":\"25\",\"totalPrice\":\"25\"},{\"id\":\"5\",\"description\":\"Ampicin 500\",\"quantity\":\"1\",\"stock\":\"10\",\"price\":\"20\",\"totalPrice\":\"20\"},{\"id\":\"7\",\"description\":\"Ascof 300\",\"quantity\":\"1\",\"stock\":\"29\",\"price\":\"4\",\"totalPrice\":\"4\"},{\"id\":\"18\",\"description\":\"Aldactone 50\",\"quantity\":\"1\",\"stock\":\"13\",\"price\":\"28\",\"totalPrice\":\"28\"}]', 2, 0, 75.46, 77, 'cash', '2020-02-17 12:43:47'),
(12, 10012, 3, 11, '[{\"id\":\"50\",\"description\":\"Boom Medium 4s\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"18\",\"totalPrice\":\"18\"},{\"id\":\"36\",\"description\":\"Candez 8mg\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"19\",\"totalPrice\":\"19\"},{\"id\":\"37\",\"description\":\"Candez 16mg\",\"quantity\":\"1\",\"stock\":\"10\",\"price\":\"34\",\"totalPrice\":\"34\"}]', 1, 0, 69.58, 71, 'cash', '2020-02-17 12:46:08'),
(13, 10013, 2, 11, '[{\"id\":\"18\",\"description\":\"Aldactone 50\",\"quantity\":\"1\",\"stock\":\"12\",\"price\":\"28\",\"totalPrice\":\"28\"},{\"id\":\"8\",\"description\":\"Aldomet 250mg\",\"quantity\":\"1\",\"stock\":\"28\",\"price\":\"5\",\"totalPrice\":\"5\"},{\"id\":\"10\",\"description\":\"Aldactone 25\",\"quantity\":\"3\",\"stock\":\"36\",\"price\":\"18\",\"totalPrice\":\"54\"},{\"id\":\"12\",\"description\":\"Combizar 50\",\"quantity\":\"1\",\"stock\":\"29\",\"price\":\"30\",\"totalPrice\":\"30\"}]', 2, 0, 114.66, 117, 'cash', '2020-02-17 12:52:00'),
(14, 10014, 2, 11, '[{\"id\":\"10\",\"description\":\"Aldactone 25\",\"quantity\":\"5\",\"stock\":\"31\",\"price\":\"18\",\"totalPrice\":\"90\"}]', 2, 0, 88.2, 90, 'cash', '2020-02-17 12:52:48'),
(15, 10014, 1, 11, '[{\"id\":\"10\",\"description\":\"Aldactone 25\",\"quantity\":\"1\",\"stock\":\"30\",\"price\":\"18\",\"totalPrice\":\"18\"},{\"id\":\"7\",\"description\":\"Ascof 300\",\"quantity\":\"1\",\"stock\":\"28\",\"price\":\"4\",\"totalPrice\":\"4\"},{\"id\":\"24\",\"description\":\"Amvasc BE 5mg\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"11\",\"totalPrice\":\"11\"}]', 1, 0, 32.34, 33, 'cash', '2020-02-17 13:14:41'),
(16, 10015, 2, 11, '[{\"id\":\"35\",\"description\":\"Cataflam 50\",\"quantity\":\"3\",\"stock\":\"9\",\"price\":\"34\",\"totalPrice\":\"102\"},{\"id\":\"29\",\"description\":\"Algesia\",\"quantity\":\"4\",\"stock\":\"10\",\"price\":\"51\",\"totalPrice\":\"204\"}]', 0, 0, 306, 306, 'cash', '2020-02-17 13:20:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partsuser`
--
ALTER TABLE `partsuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `partsuser`
--
ALTER TABLE `partsuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

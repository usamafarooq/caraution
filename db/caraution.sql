-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2018 at 05:43 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caraution`
--

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Symbol` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) UNSIGNED NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Images` varchar(500) NOT NULL,
  `Make` int(100) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `Model` int(11) NOT NULL,
  `Sale_Location` varchar(255) DEFAULT NULL,
  `Vehicle_Location` varchar(255) DEFAULT NULL,
  `Sale_Status` varchar(100) DEFAULT NULL,
  `Sale_Date` date NOT NULL,
  `Item` varchar(100) DEFAULT NULL,
  `Destination` varchar(255) DEFAULT NULL,
  `Shipping_Price` varchar(255) DEFAULT NULL,
  `Stock_ID` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Series` varchar(100) DEFAULT NULL,
  `Odometer` varchar(255) DEFAULT NULL,
  `Sale_Document` varchar(255) DEFAULT NULL,
  `Sale_Document_Notes` varchar(255) DEFAULT NULL,
  `Loss` varchar(255) DEFAULT NULL,
  `Damage_Type` varchar(255) DEFAULT NULL,
  `ACV` varchar(255) DEFAULT NULL,
  `Estimated_Repair_Coast` varchar(255) DEFAULT NULL,
  `VIN` varchar(100) DEFAULT NULL,
  `Exterior_Color` varchar(255) DEFAULT NULL,
  `Interior_Color` varchar(255) DEFAULT NULL,
  `Body_Style` varchar(255) DEFAULT NULL,
  `Vehicle_Class` varchar(255) DEFAULT NULL,
  `Engine` varchar(255) DEFAULT NULL,
  `Cylinder` varchar(255) DEFAULT NULL,
  `Fuel_Type` varchar(255) DEFAULT NULL,
  `Transmission` varchar(255) DEFAULT NULL,
  `Driver_Type_` varchar(255) DEFAULT NULL,
  `Manufactured_In` varchar(255) DEFAULT NULL,
  `Key_item` varchar(255) DEFAULT NULL,
  `Start_Code` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Short_Name` varchar(100) NOT NULL,
  `Icon` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `makes`
--

CREATE TABLE `makes` (
  `id` int(11) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(11) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Make` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `main_name` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `main_name`, `sort`, `icon`, `url`, `user_id`) VALUES
(2, 'Dashboard', 'dashboard', 1, 'home', 'home', 4),
(3, 'Modules', 'modules', 4, 'store', 'modules', 4),
(5, 'Role/Permission', 'role', 2, 'verified_user', 'role', 4),
(7, 'Users', 'user', 3, 'account_circle', 'users', 2),
(19, 'Vehicle Type', 'vehicle_type', 6, 'wb_cloudy', 'vehicle_type', 2),
(20, 'Makes', 'makes', 7, 'add_to_queue', 'makes', 2),
(21, 'Models', 'models', 7, 'view_module', 'models', 2),
(22, 'Inventory', 'inventory', 7, 'list', 'inventory', 2),
(24, 'Language', 'language', 7, 'language', 'language', 2),
(25, 'Currency', 'currency', 6, 'euro_symbol', 'currency', 2),
(26, 'Subscriptions', 'subscriptions', 7, 'subscriptions', 'subscriptions', 2),
(27, 'Tickets', 'tickets', 7, 'assignment_turned_in', 'tickets', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modules_fileds`
--

CREATE TABLE `modules_fileds` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `filed_type` varchar(100) NOT NULL,
  `options` varchar(255) NOT NULL,
  `length` int(11) NOT NULL,
  `required` int(11) NOT NULL DEFAULT '0',
  `module_id` int(11) NOT NULL,
  `is_relation` int(11) NOT NULL,
  `relation_column` varchar(100) DEFAULT NULL,
  `relation_table` varchar(100) DEFAULT NULL,
  `value_column` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules_fileds`
--

INSERT INTO `modules_fileds` (`id`, `name`, `type`, `filed_type`, `options`, `length`, `required`, `module_id`, `is_relation`, `relation_column`, `relation_table`, `value_column`) VALUES
(1, 'name', 'VARCHAR', 'input', '', 100, 1, 15, 0, NULL, NULL, NULL),
(2, 'gender', 'VARCHAR', 'radio', 'male,female', 100, 1, 15, 0, NULL, NULL, NULL),
(3, 'relationship_status', 'VARCHAR', 'select', 'single,married,divorced,widowed', 100, 1, 15, 0, NULL, NULL, NULL),
(4, 'image', 'VARCHAR', 'file', 'jpg,png,jpeg,gif', 100, 1, 15, 0, NULL, NULL, NULL),
(5, 'education', 'VARCHAR', 'checkbox', 'matric,inter,bachlor', 255, 1, 15, 0, NULL, NULL, NULL),
(6, 'message', 'TEXT', 'textarea', '', 255, 1, 15, 0, NULL, NULL, NULL),
(7, 'Name', 'VARCHAR', 'input', '', 100, 1, 16, 0, NULL, NULL, NULL),
(8, 'Icon', 'VARCHAR', 'file', 'png,jpg,jpeg,gif', 255, 1, 16, 0, NULL, NULL, NULL),
(9, 'Name', 'VARCHAR', 'input', '', 100, 1, 17, 0, NULL, NULL, NULL),
(10, 'Icon', 'VARCHAR', 'file', 'png,jpg,jpeg,gif', 255, 1, 17, 0, NULL, NULL, NULL),
(11, 'Title', 'VARCHAR', 'input', '', 255, 1, 18, 0, NULL, NULL, NULL),
(12, 'Description', 'TEXT', 'textarea', '', 500, 1, 18, 0, NULL, NULL, NULL),
(13, 'category', 'INT', 'input', '', 11, 1, 18, 1, 'id', 'blog_category', 'Name'),
(14, 'image', 'VARCHAR', 'file', 'png,jpg,jpeg,gif', 255, 1, 18, 0, NULL, NULL, NULL),
(15, 'Name', 'VARCHAR', 'input', '', 100, 1, 19, 0, NULL, NULL, NULL),
(16, 'Image', 'VARCHAR', 'file', 'jpg,jpeg,png,gif', 255, 1, 19, 0, NULL, NULL, NULL),
(17, 'Name', 'VARCHAR', 'input', '', 100, 1, 20, 0, NULL, NULL, NULL),
(19, 'Name', 'VARCHAR', 'input', '', 100, 1, 23, 0, NULL, NULL, NULL),
(20, 'Name', 'VARCHAR', 'input', '', 100, 1, 24, 0, NULL, NULL, NULL),
(21, 'Short_Name', 'VARCHAR', 'input', '', 100, 1, 24, 0, NULL, NULL, NULL),
(22, 'Icon', 'VARCHAR', 'file', 'jpg,jpeg,png,gif', 255, 1, 24, 0, NULL, NULL, NULL),
(23, 'Name', 'VARCHAR', 'input', '', 100, 1, 21, 0, NULL, NULL, NULL),
(24, 'Make', 'INT', 'input', '', 11, 1, 21, 1, 'id', 'makes', 'Name'),
(25, 'Name', 'VARCHAR', 'input', '', 100, 1, 25, 0, NULL, NULL, NULL),
(26, 'Symbol', 'VARCHAR', 'input', '', 10, 1, 25, 0, NULL, NULL, NULL),
(27, 'Email', 'VARCHAR', 'input', '', 255, 1, 26, 0, NULL, NULL, NULL),
(133, 'Name', 'VARCHAR', 'input', '', 255, 1, 22, 0, NULL, NULL, NULL),
(134, 'Images', 'VARCHAR', 'file', 'png,jpg,jpeg,gif', 500, 1, 22, 0, NULL, NULL, NULL),
(135, 'Make', 'INT', 'input', '', 100, 1, 22, 1, 'id', 'makes', 'Name'),
(136, 'Year', 'VARCHAR', 'input', '', 100, 1, 22, 0, NULL, NULL, NULL),
(137, 'Model', 'INT', 'input', '', 11, 1, 22, 1, 'id', 'models', 'Name'),
(138, 'Sale_Location', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(139, 'Vehicle_Location', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(140, 'Sale_Status', 'VARCHAR', 'input', '', 100, 0, 22, 0, NULL, NULL, NULL),
(141, 'Sale_Date', 'DATE', 'input', '', 100, 1, 22, 0, NULL, NULL, NULL),
(142, 'Item', 'VARCHAR', 'input', '', 100, 0, 22, 0, NULL, NULL, NULL),
(143, 'Destination', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(144, 'Shipping_Price', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(145, 'Stock_ID', 'VARCHAR', 'input', '', 100, 0, 22, 0, NULL, NULL, NULL),
(146, 'Type', 'VARCHAR', 'input', '', 100, 0, 22, 0, NULL, NULL, NULL),
(147, 'Series', 'VARCHAR', 'input', '', 100, 0, 22, 0, NULL, NULL, NULL),
(148, 'Odometer', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(149, 'Sale_Document', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(150, 'Sale_Document_Notes', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(151, 'Loss', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(152, 'Damage_Type', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(153, 'ACV', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(154, 'Estimated_Repair_Coast', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(155, 'VIN', 'VARCHAR', 'input', '', 100, 0, 22, 0, NULL, NULL, NULL),
(156, 'Exterior_Color', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(157, 'Interior_Color', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(158, 'Body_Style', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(159, 'Vehicle_Class', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(160, 'Engine', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(161, 'Cylinder', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(162, 'Fuel_Type', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(163, 'Transmission', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(164, 'Driver_Type_', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(165, 'Manufactured_In', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(166, 'Key_item', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(167, 'Start_Code', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(168, 'Priority', 'VARCHAR', 'select', 'Normal,Medium,High,Urgent,Emegrency,Critical', 255, 1, 27, 0, NULL, NULL, NULL),
(169, 'Subject', 'VARCHAR', 'input', '', 255, 1, 27, 0, NULL, NULL, NULL),
(170, 'Message', 'TEXT', 'textarea', '', 500, 0, 27, 0, NULL, NULL, NULL),
(171, 'FIle', 'VARCHAR', 'file', 'png,jpeg,jpg,gif,pdf,doc,docx,xlx,xlxs,txt,csv', 255, 0, 27, 0, NULL, NULL, NULL),
(172, 'Name', 'VARCHAR', 'input', '', 255, 1, 22, 0, NULL, NULL, NULL),
(173, 'Images', 'VARCHAR', 'file', 'png,jpg,jpeg,gif', 500, 1, 22, 0, NULL, NULL, NULL),
(174, 'Make', 'INT', 'input', '', 100, 1, 22, 1, 'id', 'makes', 'Name'),
(175, 'Year', 'VARCHAR', 'input', '', 100, 1, 22, 0, NULL, NULL, NULL),
(176, 'Model', 'INT', 'input', '', 11, 1, 22, 1, 'id', 'models', 'Name'),
(177, 'Sale_Location', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(178, 'Vehicle_Location', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(179, 'Sale_Status', 'VARCHAR', 'input', '', 100, 0, 22, 0, NULL, NULL, NULL),
(180, 'Sale_Date', 'DATE', 'input', '', 100, 1, 22, 0, NULL, NULL, NULL),
(181, 'Item#', 'VARCHAR', 'input', '', 100, 0, 22, 0, NULL, NULL, NULL),
(182, 'Destination', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(183, 'Shipping_Price', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(184, 'Stock_ID', 'VARCHAR', 'input', '', 100, 0, 22, 0, NULL, NULL, NULL),
(185, 'Type', 'VARCHAR', 'input', '', 100, 0, 22, 0, NULL, NULL, NULL),
(186, 'Series', 'VARCHAR', 'input', '', 100, 0, 22, 0, NULL, NULL, NULL),
(187, 'Odometer', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(188, 'Sale_Document', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(189, 'Sale_Document_Notes', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(190, 'Loss', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(191, 'Damage_Type', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(192, 'ACV', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(193, 'Estimated_Repair_Coast', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(194, 'VIN', 'VARCHAR', 'input', '', 100, 0, 22, 0, NULL, NULL, NULL),
(195, 'Exterior_Color', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(196, 'Interior_Color', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(197, 'Body_Style', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(198, 'Vehicle_Class', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(199, 'Engine', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(200, 'Cylinder', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(201, 'Fuel_Type', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(202, 'Transmission', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(203, 'Driver_Type_', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(204, 'Manufactured_In', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(205, 'Key', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL),
(206, 'Start_Code', 'VARCHAR', 'input', '', 255, 0, 22, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `view_all` int(11) NOT NULL DEFAULT '0',
  `created` int(11) DEFAULT '0',
  `edit` int(11) NOT NULL DEFAULT '0',
  `deleted` int(11) NOT NULL DEFAULT '0',
  `disable` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `module_id`, `user_id`, `user_type_id`, `view`, `view_all`, `created`, `edit`, `deleted`, `disable`) VALUES
(253, 2, 2, 1, 1, 1, 1, 1, 1, 1),
(254, 3, 2, 1, 1, 1, 1, 1, 1, 1),
(255, 5, 2, 1, 1, 1, 1, 1, 1, 1),
(256, 7, 2, 1, 1, 1, 1, 1, 1, 1),
(257, 19, 2, 1, 1, 1, 1, 1, 1, 1),
(258, 20, 2, 1, 1, 1, 1, 1, 1, 1),
(259, 21, 2, 1, 1, 1, 1, 1, 1, 1),
(260, 22, 2, 1, 1, 1, 1, 1, 1, 1),
(261, 24, 2, 1, 1, 1, 1, 1, 1, 1),
(262, 25, 2, 1, 1, 1, 1, 1, 1, 1),
(263, 26, 2, 1, 1, 1, 1, 1, 1, 1),
(264, 27, 2, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) UNSIGNED NOT NULL,
  `Email` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `Priority` varchar(255) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Message` text NOT NULL,
  `FIle` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(2, 'admin', 'admin@gmail.com', 'e6e061838856bf47e1de730719fb2609', 1),
(4, 'admin1', 'admin1@gmail.com', 'e6e061838856bf47e1de730719fb2609', 1),
(5, 'Udata', 'Udata@gmail.com', '5327b0d1bfa868acb9baac5a9d901815', 14),
(6, 'mob', 'admindd@gmail.com', '6cf0a3d27fdc438e4ee601448e452e48', 14),
(9, 'rtrt', 'adminsdee@milya.com', '532b7cbe070a3579f424988a040752f2', 14),
(10, 'musa', 'musa@gmail.com', 'c45d99e5638d1f9f801b545096003a8d', 14),
(12, 'rtrteree', 'adminsdeee11@milya.com', '0acf3d81f151df5994a88f039e636228', 14),
(13, 'musaeeee', 'mus22a@gmail.com', 'dbc4d84bfcfe2284ba11beffb853a8c4', 14),
(14, 'hero11', 'hero11@milya.com', '0acf3d81f151df5994a88f039e636228', 14),
(15, 'hero22', 'hero22@gmail.com', 'dbc4d84bfcfe2284ba11beffb853a8c4', 14),
(16, 'rest11', 'rest11@milya.com', '0acf3d81f151df5994a88f039e636228', 14),
(17, 'west22', 'hwest22@gmail.com', 'dbc4d84bfcfe2284ba11beffb853a8c4', 14),
(18, 'opp', 'opp@milya.com', 'e201220da86c13f4d9badaab658fa973', 14),
(19, 'urrr', 'urrr@gmail.com', '549ce24fb62238d013a6e222cb4d41d8', 14),
(20, 'DADU', 'DADU@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 14),
(21, 'AHSAN', 'AHSAN@gmail.com', 'd6a9a933c8aafc51e55ac0662b6e4d4a', 14),
(22, '21321', 'dasdas', 'd41d8cd98f00b204e9800998ecf8427e', 14),
(26, 'xyzmg', 'xyzmg@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 14),
(27, 'mojjojo1', 'mojjojo1@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 14);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `name`, `user_id`) VALUES
(1, 'Admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`id`, `Name`, `Image`, `user_id`, `created_at`) VALUES
(1, 'Automobile', '/uploads/automobile.jpg', 2, '2018-03-26 18:28:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `makes`
--
ALTER TABLE `makes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules_fileds`
--
ALTER TABLE `modules_fileds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `makes`
--
ALTER TABLE `makes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `modules_fileds`
--
ALTER TABLE `modules_fileds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
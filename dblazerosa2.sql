-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 04:06 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblazerosa2`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerpo`
--

CREATE TABLE `customerpo` (
  `custPO` int(11) NOT NULL,
  `custName` varchar(100) NOT NULL,
  `custEmail` varchar(100) NOT NULL,
  `custNumber` int(11) NOT NULL,
  `custAddress` varchar(255) NOT NULL,
  `custMOP` varchar(50) NOT NULL,
  `custDateOrder` date NOT NULL,
  `custDatePickup` date NOT NULL,
  `custPlatform` varchar(50) NOT NULL,
  `custCourier` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerpo`
--

INSERT INTO `customerpo` (`custPO`, `custName`, `custEmail`, `custNumber`, `custAddress`, `custMOP`, `custDateOrder`, `custDatePickup`, `custPlatform`, `custCourier`) VALUES
(1, 'test', 'test', 1, 'test', 'test', '2021-05-05', '2021-05-05', 'test', 'test'),
(2, 'test', 'test@gmail.com', 1, 'test', 'Cash on Delivery', '2021-05-07', '2021-05-07', 'Facebook /Instagram ', 'Grab'),
(3, 'test', 'test@gmail.com', 1, 'test', 'Cash on Delivery', '2021-05-07', '2021-05-07', 'Facebook /Instagram ', 'Grab'),
(4, 'test', 'test@gmail.com', 1, 'test', 'Cash on Delivery', '2021-05-08', '2021-05-08', 'Facebook /Instagram ', 'Grab'),
(5, 'test', 'test@gmail.com', 1, 'test', '', '0000-00-00', '0000-00-00', '', ''),
(6, 'test', 'test@gmail.com', 1, 'test', 'Online Bank Payment', '2021-05-09', '2021-05-09', 'Shopee', 'MrSpeedy');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `custID` int(11) NOT NULL,
  `custName` varchar(100) NOT NULL,
  `custEmail` varchar(100) NOT NULL,
  `custNumber` varchar(45) NOT NULL,
  `custAddress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`custID`, `custName`, `custEmail`, `custNumber`, `custAddress`) VALUES
(1, 'test', 'test@gmail.com', '09088653569', 'test'),
(2, 'test2', 'test2@gmail.com', '09171111111', 'test2'),
(3, 'test3', 'test3@gmail.com', '', 'test3'),
(4, 'test4', 'test4@gmail.com', '1', 'test4'),
(5, 'test5', 'test5@gmail.com', '5', 'test5');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemID`, `itemName`) VALUES
(1, 'bb aha'),
(2, 'bb aha'),
(3, 'bb aha');

-- --------------------------------------------------------

--
-- Table structure for table `modeofpayment`
--

CREATE TABLE `modeofpayment` (
  `MOP` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modeofpayment`
--

INSERT INTO `modeofpayment` (`MOP`) VALUES
('Cash on Delivery'),
('Credit/Debit Card'),
('G-Cash'),
('Online Bank Payment'),
('Shopee Pay');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `purchaseID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `PONumber` int(4) NOT NULL,
  `dateOrdered` datetime NOT NULL,
  `deliveryDate` date DEFAULT NULL,
  `paymentMethod` varchar(45) NOT NULL,
  `courier` varchar(45) NOT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `discountfee` decimal(10,0) NOT NULL,
  `shopeefee` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'pending',
  `shiptoAddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`purchaseID`, `supplierID`, `PONumber`, `dateOrdered`, `deliveryDate`, `paymentMethod`, `courier`, `subtotal`, `discountfee`, `shopeefee`, `total`, `status`, `shiptoAddress`) VALUES
(1, 1, 1, '2021-04-29 22:12:54', '0000-00-00', 'cash', 'j&t', '0', '0', '0', '0', 'Deleted', NULL),
(2, 2, 2, '2021-04-29 22:28:31', '0000-00-00', 'cash', 'j&t', '0', '0', '0', '0', 'Deleted', NULL),
(3, 3, 3, '2021-04-29 22:30:16', '0000-00-00', 'cash', 'j&t', '0', '0', '0', '0', 'pending', NULL),
(4, 4, 4, '2021-04-29 22:31:16', '0000-00-00', 'cash', 'j&t', '0', '0', '0', '0', 'pending', NULL),
(5, 5, 5, '2021-04-30 10:23:37', '0000-00-00', 'cash', 'j&t', '0', '0', '0', '0', 'pending', NULL),
(6, 1, 0, '2021-05-07 00:56:56', '0000-00-00', 'Cash on Delivery', 'j&t', '0', '0', '0', '0', 'Deleted', NULL),
(7, 1, 0, '2021-05-07 00:57:36', '0000-00-00', 'Cash on Delivery', 'j&t', '0', '0', '0', '0', 'Pending', NULL),
(8, 1, 0, '2021-05-07 10:19:50', NULL, 'Cash on Delivery', '', '0', '0', '0', '0', 'Pending', NULL),
(9, 1, 0, '2021-05-07 10:24:57', NULL, '', '', '0', '0', '0', '0', 'Pending', NULL),
(10, 1, 0, '2021-05-10 18:31:56', NULL, 'Cash on Delivery', '', '0', '0', '0', '0', 'Pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `poitemsID` int(11) NOT NULL,
  `purchaseID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitPrice` decimal(11,0) NOT NULL,
  `amount` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales_customer`
--

CREATE TABLE `sales_customer` (
  `PONumber` int(11) NOT NULL,
  `dateOrdered` date NOT NULL,
  `custName` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplierID` int(5) NOT NULL,
  `supplierName` varchar(45) NOT NULL,
  `supplierEmail` varchar(45) NOT NULL,
  `supplierNumber` varchar(45) NOT NULL,
  `supplierAddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplierID`, `supplierName`, `supplierEmail`, `supplierNumber`, `supplierAddress`) VALUES
(1, 'Supplier 1', 'Supplier1@yahoo.com', '09173218921', 'manila'),
(2, 'Supplier 2', 'Supplier2@gmail.com', '09993121525', 'quezon city');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_items`
--

CREATE TABLE `suppliers_items` (
  `supplieritemID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers_items`
--

INSERT INTO `suppliers_items` (`supplieritemID`, `itemID`, `supplierID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 9, 1),
(9, 8, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 2),
(22, 22, 2),
(23, 23, 2),
(24, 24, 2),
(25, 25, 2),
(26, 26, 2),
(27, 27, 2),
(28, 28, 2),
(29, 29, 2),
(30, 30, 2),
(31, 31, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblinventory`
--

CREATE TABLE `tblinventory` (
  `pID` int(5) NOT NULL,
  `pName` varchar(255) NOT NULL,
  `pBrand` varchar(50) NOT NULL,
  `pQuantity` int(5) NOT NULL,
  `pReorderPoint` int(5) NOT NULL,
  `pSRP` decimal(10,0) NOT NULL,
  `pBuyingPrice` decimal(10,0) NOT NULL,
  `pDiscountRate` decimal(11,0) NOT NULL,
  `pShopeeRate` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblinventory`
--

INSERT INTO `tblinventory` (`pID`, `pName`, `pBrand`, `pQuantity`, `pReorderPoint`, `pSRP`, `pBuyingPrice`, `pDiscountRate`, `pShopeeRate`) VALUES
(1, 'AHA', 'BB', 132, 32, '220', '152', '10', '5'),
(2, 'BETTER FUTURE', 'BB', 0, 15, '220', '152', '10', '5'),
(3, 'GLASS SKIN', 'BB', 0, 15, '220', '152', '10', '5'),
(4, 'HYDRO BOOST', 'BB', 0, 15, '220', '152', '10', '5'),
(5, 'TOMATO', 'BB', 0, 15, '220', '152', '10', '5'),
(6, 'VITAMIN C', 'BB', 0, 15, '220', '152', '10', '5'),
(7, 'SNAIL WHIPP', 'BEAUTY VAULT', 6, 15, '220', '150', '10', '5'),
(8, 'AVOCADO HAIR MASQUE', 'BABE FORMULA', 33, 40, '349', '225', '10', '5'),
(9, 'BABE BOX SET BLUE', 'BABE FORMULA', 16, 20, '172', '145', '10', '5'),
(10, 'BABE BOX SET PINK', 'BABE FORMULA', 14, 20, '172', '145', '10', '5'),
(11, 'BLOSSOM CONDITIONER', 'BABE FORMULA', 22, 40, '670', '455', '10', '5'),
(12, 'BLOSSOM GLEAM SPRAY', 'BABE FORMULA', 10, 20, '850', '575', '10', '5'),
(13, 'BLOSSOM SHAMPOO', 'BABE FORMULA', 24, 40, '249', '155', '10', '5'),
(14, 'DOPP KIT', 'BABE FORMULA', 12, 10, '180', '120', '10', '5'),
(15, 'FANTASY BAR CELESTIAL BLOOMS', 'BABE FORMULA', 12, 15, '249', '155', '10', '5'),
(16, 'FANTASY BAR IVORY DREAMS', 'BABE FORMULA', 13, 15, '235', '179', '10', '5'),
(17, 'FANTASY BAR LAVANDER SPELL', 'BABE FORMULA', 13, 15, '159', '90', '10', '5'),
(18, 'FANTASY BAR PURE PARADISO', 'BABE FORMULA', 12, 15, '159', '90', '10', '5'),
(19, 'NECTAR CONDITIONER', 'BABE FORMULA', 30, 50, '159', '90', '10', '5'),
(20, 'NECTAR GLEAM SPRAY', 'BABE FORMULA', 34, 32, '159', '90', '10', '5'),
(21, 'NECTAR SHAMPOO', 'BABE FORMULA', 22, 30, '0', '0', '0', '0'),
(22, 'SILICONE BOTTLE BLUE', 'BABE FORMULA', 16, 20, '0', '0', '0', '0'),
(23, 'SILICONE BOTTLE PEACH', 'BABE FORMULA', 14, 20, '0', '0', '0', '0'),
(24, 'SKIN PERFECTING SET', 'BB', 8, 10, '0', '0', '0', '0'),
(25, 'REJUVINATING SET', 'BRIGHTEST SKIN', 10, 10, '0', '0', '0', '0'),
(26, 'GLOW UP KIT', 'CALI SKIN', 44, 10, '0', '0', '0', '0'),
(27, 'GET WINGED BROWN 12MM', 'CLISSORA', 2, 5, '0', '0', '0', '0'),
(28, 'GET WINGED BLACK 8MM', 'CLISSORA', 1, 5, '0', '0', '0', '0'),
(29, 'REVITALIZE KIT', 'DOLL SKIN', 9, 5, '0', '0', '0', '0'),
(30, 'COFFEE', 'GLUTA LIPO', 9, 5, '0', '0', '0', '0'),
(31, 'DARK CHOCO', 'GLUTA LIPO', 6, 5, '0', '0', '0', '0'),
(32, 'GOLD COFFEE', 'GLUTA LIPO', 6, 5, '0', '0', '0', '0'),
(33, 'ICED TEA', 'GLUTA LIPO', 4, 10, '0', '0', '0', '0'),
(34, 'MILK TEA', 'GLUTA LIPO', 4, 5, '0', '0', '0', '0'),
(35, 'MILKY MELON', 'GLUTA LIPO', 12, 10, '0', '0', '0', '0'),
(36, 'REVITA GLOW', 'HER SKIN', 9, 5, '0', '0', '0', '0'),
(37, 'JADE ROLLER', '', 1, 3, '0', '0', '0', '0'),
(38, 'REJUVINATING SET', 'JENNA ESSENSE', 9, 5, '0', '0', '0', '0'),
(39, 'PAMATAY NA KILLAY KIT', '', 0, 5, '0', '0', '0', '0'),
(40, 'COLLAGEN', 'KATTY MERA', 0, 5, '0', '0', '0', '0'),
(41, 'MILKY MIGHTY FACIAL KIT', 'KATTY MERA', 7, 15, '0', '0', '0', '0'),
(42, 'MILKY WHITE BODY SOAP', 'KATTY MERA', 1, 5, '0', '0', '0', '0'),
(43, 'SERUM', 'KATTY MERA', 8, 5, '0', '0', '0', '0'),
(44, 'SUN SHIELD', 'KATTY MERA', 8, 5, '0', '0', '0', '0'),
(45, 'TONER', 'KATTY MERA', 5, 5, '0', '0', '0', '0'),
(46, 'BRIGHTENING SOAP', 'LOOCA', 6, 10, '0', '0', '0', '0'),
(47, 'GLOW GANG SET', 'LOOCA', 6, 10, '0', '0', '0', '0'),
(48, 'POUCH', 'LOOCA', 3, 2, '0', '0', '0', '0'),
(49, 'TONER MIST', 'LOOCA', 7, 5, '0', '0', '0', '0'),
(50, 'TOTE BAG', 'LOOCA', 2, 1, '0', '0', '0', '0'),
(51, 'HOT & SPICY', 'NERI\'S GOURMET TUYO', 5, 5, '0', '0', '0', '0'),
(52, 'ORIGINAL', 'NERI\'S GOURMET TUYO', 8, 5, '0', '0', '0', '0'),
(53, 'SPICY', 'NERI\'S GOURMET TUYO', 4, 3, '0', '0', '0', '0'),
(54, '4 PAIRS DAMN', 'PAULASH', 1, 0, '0', '0', '0', '0'),
(55, '4 PAIRS HOSH', 'PAULASH', 1, 0, '0', '0', '0', '0'),
(56, '4 PAIRS OOPS', 'PAULASH', 0, 0, '0', '0', '0', '0'),
(57, '5 PAIRS FAB', 'PAULASH', 1, 0, '0', '0', '0', '0'),
(58, '5 PAIRS GNARLY', 'PAULASH', 0, 0, '0', '0', '0', '0'),
(59, '5 PAIRS SLAY', 'PAULASH', 0, 0, '0', '0', '0', '0'),
(60, 'GLUE', 'PAULASH', 3, 2, '0', '0', '0', '0'),
(61, 'GOLD BAR ATHENA', 'PAULASH', 0, 0, '0', '0', '0', '0'),
(62, 'GOLD BAR CLIO', 'PAULASH', 0, 0, '0', '0', '0', '0'),
(63, 'GOLD BAR HERA', 'PAULASH', 1, 0, '0', '0', '0', '0'),
(64, 'GOLD BAR SELENE', 'PAULASH', 1, 0, '0', '0', '0', '0'),
(65, 'GOLD BAR THALIA', 'PAULASH', 0, 0, '0', '0', '0', '0'),
(66, 'LASH APPLICATOR', 'PAULASH', 2, 0, '0', '0', '0', '0'),
(67, 'BLUSH BOMB BEACH', 'SCOUT BEAUTY', 11, 5, '0', '0', '0', '0'),
(68, 'BLUSH BOMBS KILL IT', 'SCOUT BEAUTY', 7, 5, '0', '0', '0', '0'),
(69, 'BLUSH BOMB SUGAR COATED', 'SCOUT BEAUTY', 4, 5, '0', '0', '0', '0'),
(70, 'BLUSH BOMB SUNSET', 'SCOUT BEAUTY', 5, 5, '0', '0', '0', '0'),
(71, 'BLUSH BOMB TAN', 'SCOUT BEAUTY', 6, 5, '0', '0', '0', '0'),
(72, 'CHICC PAINT AL3', 'SCOUT BEAUTY', 9, 5, '0', '0', '0', '0'),
(73, 'CHICC PAINT MACCHIATO', 'SCOUT BEAUTY', 7, 10, '0', '0', '0', '0'),
(74, 'CHICC PAINT OKINAWA', 'SCOUT BEAUTY', 10, 10, '0', '0', '0', '0'),
(75, 'CHICC PAINT PETAL POP ', 'SCOUT BEAUTY', 4, 5, '0', '0', '0', '0'),
(76, 'CHICC PAINT SML', 'SCOUT BEAUTY', 10, 10, '0', '0', '0', '0'),
(77, 'CHICC PAINT SUMMER RAIN', 'SCOUT BEAUTY', 7, 5, '0', '0', '0', '0'),
(78, 'LIP LUSH CARAMEL POPCORN', 'SCOUT BEAUTY', 5, 3, '0', '0', '0', '0'),
(79, 'LIP LUSH COTTON CANDY', 'SCOUT BEAUTY', 4, 3, '0', '0', '0', '0'),
(80, 'LIP LUSH MANGO', 'SCOUT BEAUTY', 3, 3, '0', '0', '0', '0'),
(81, 'LIP LUSH STRAWBERRY', 'SCOUT BEAUTY', 4, 3, '0', '0', '0', '0'),
(82, 'LIP LUSH VANILLA', 'SCOUT BEAUTY', 4, 4, '0', '0', '0', '0'),
(83, 'POUCH', 'SCOUT BEAUTY', 1, 3, '0', '0', '0', '0'),
(84, 'SLEEK STICK 25', 'SCOUT BEAUTY', 7, 5, '0', '0', '0', '0'),
(85, 'SLEEK STICK CHARITOO', 'SCOUT BEAUTY', 4, 10, '0', '0', '0', '0'),
(86, 'SLEEK STICK HEY LUX', 'SCOUT BEAUTY', 9, 5, '0', '0', '0', '0'),
(87, 'SLEEK STICK LUVANDAIRE', 'SCOUT BEAUTY', 2, 1, '0', '0', '0', '0'),
(88, 'SLEEK STICK NUDE TASTE', 'SCOUT BEAUTY', 7, 5, '0', '0', '0', '0'),
(89, 'SLEEK STICK PETIT BISCUIT', 'SCOUT BEAUTY', 4, 5, '0', '0', '0', '0'),
(90, 'CALMDLES BAMBOO', 'SKIN CAN TELL', 0, 0, '0', '0', '0', '0'),
(91, 'CALMDLES LAVANDER', 'SKIN CAN TELL', 0, 0, '0', '0', '0', '0'),
(92, 'CALMDLES WHITE TEA', 'SKIN CAN TELL', 0, 0, '0', '0', '0', '0'),
(93, 'CLASSIC', 'SKIN CAN TELL', 0, 0, '0', '0', '0', '0'),
(94, 'INTENSE', 'SKIN CAN TELL', 4, 3, '0', '0', '0', '0'),
(95, 'MINI', 'SKIN CAN TELL', 5, 3, '0', '0', '0', '0'),
(96, 'REJUVINATING SET', 'SKIN CAN TELL', 4, 3, '0', '0', '0', '0'),
(97, 'PITS PERFECT DEO SPRAY', 'SKIN HEROES', 10, 5, '0', '0', '0', '0'),
(98, 'SOLEIL LOTION', 'SKIN HEROES', 6, 10, '0', '0', '0', '0'),
(99, 'SOLEIL REGULAR SOAP', 'SKIN HEROES', 35, 20, '0', '0', '0', '0'),
(100, 'SOLEIL SOAP W/ MESH', 'SKIN HEROES', 35, 20, '0', '0', '0', '0'),
(101, 'WONDERTINT FELICIA', 'SKIN HEROES', 5, 3, '0', '0', '0', '0'),
(102, 'WONDERTINT FRANCES', 'SKIN HEROES', 5, 5, '0', '0', '0', '0'),
(103, 'WONDERTINT SUMMER', 'SKIN HEROES', 5, 5, '0', '0', '0', '0'),
(104, 'REJUVINATING SET', 'SKIN GOAL', 0, 0, '0', '0', '0', '0'),
(105, 'BRIGHT & FREE LOTION', 'SKIN PLAY', 30, 10, '0', '0', '0', '0'),
(106, 'LITTLE PLAY BAG', 'SKIN PLAY', 16, 5, '0', '0', '0', '0'),
(107, 'COLLAGEN', 'THE DIET COACH', 14, 5, '0', '0', '0', '0'),
(108, 'COLLAGEN PER BOTTLE', 'THE DIET COACH', 6, 5, '0', '0', '0', '0'),
(109, 'GLUTA GLOW', 'THE DIET COACH', 2, 5, '0', '0', '0', '0'),
(110, 'LET IT GLOW', 'THE DIET COACH', 0, 0, '0', '0', '0', '0'),
(111, 'SKIN BOOSTER SET', 'THE DAILY SKINCARE', 11, 20, '0', '0', '0', '0'),
(112, 'SOAPERSTAR', 'THE DAILY SKINCARE', 0, 0, '0', '0', '0', '0'),
(113, 'SUNBODY TO LOVE', 'THE DAILY SKINCARE', 0, 0, '0', '0', '0', '0'),
(114, 'YOU GIVE ME THE PEELS', 'THE DAILY SKINCARE', 4, 3, '0', '0', '0', '0'),
(115, 'BRIGHTENING SET', 'THE GO GLASS', 0, 10, '0', '0', '0', '0'),
(116, 'RESURFACING SET NEW', 'THE GO GLASS', 42, 20, '0', '0', '0', '0'),
(117, 'RESURFACING SKIN SHIELD', 'THE GO GLASS', 20, 15, '0', '0', '0', '0'),
(118, 'RESURFACING TONER', 'THE GO GLASS', 27, 20, '0', '0', '0', '0'),
(119, 'ATHENS', 'THE PRETTY HUE', 2, 5, '0', '0', '0', '0'),
(120, 'BRISBANE', 'THE PRETTY HUE', 2, 1, '0', '0', '0', '0'),
(121, 'BUDAPEST', 'THE PRETTY HUE', 3, 1, '0', '0', '0', '0'),
(122, 'COLOMBO', 'THE PRETTY HUE', 2, 2, '0', '0', '0', '0'),
(123, 'GLOSSY', 'THE PRETTY HUE', 1, 3, '0', '0', '0', '0'),
(124, 'GOLD', 'THE PRETTY HUE', 3, 3, '0', '0', '0', '0'),
(125, 'HAVANA', 'THE PRETTY HUE', 4, 3, '0', '0', '0', '0'),
(126, 'ISTANBUL', 'THE PRETTY HUE', 2, 2, '0', '0', '0', '0'),
(127, 'JAKARTA', 'THE PRETTY HUE', 2, 2, '0', '0', '0', '0'),
(128, 'LISBON', 'THE PRETTY HUE', 4, 3, '0', '0', '0', '0'),
(129, 'LONDON', 'THE PRETTY HUE', 5, 3, '0', '0', '0', '0'),
(130, 'MADRID', 'THE PRETTY HUE', 4, 3, '0', '0', '0', '0'),
(131, 'MANILA', 'THE PRETTY HUE', 3, 2, '0', '0', '0', '0'),
(132, 'MATTE', 'THE PRETTY HUE', 0, 1, '0', '0', '0', '0'),
(133, 'MILAN', 'THE PRETTY HUE', 4, 3, '0', '0', '0', '0'),
(134, 'MOSCOW', 'THE PRETTY HUE', 4, 3, '0', '0', '0', '0'),
(135, 'NEW YORK', 'THE PRETTY HUE', 4, 3, '0', '0', '0', '0'),
(136, 'PARIS', 'THE PRETTY HUE', 5, 3, '0', '0', '0', '0'),
(137, 'PARIS', 'THE PRETTY HUE', 5, 3, '0', '0', '0', '0'),
(138, 'ROME', 'THE PRETTY HUE', 3, 2, '0', '0', '0', '0'),
(139, 'SEOUL', 'THE PRETTY HUE', 2, 3, '0', '0', '0', '0'),
(140, 'SILVER', 'THE PRETTY HUE', 3, 2, '0', '0', '0', '0'),
(141, 'SYDNEY', 'THE PRETTY HUE', 5, 3, '0', '0', '0', '0'),
(142, 'TAIPEI', 'THE PRETTY HUE', 2, 2, '0', '0', '0', '0'),
(143, 'TALLIN', 'THE PRETTY HUE', 2, 2, '0', '0', '0', '0'),
(144, 'TOKYO', 'THE PRETTY HUE', 3, 2, '0', '0', '0', '0'),
(145, 'VENICE', 'THE PRETTY HUE', 3, 2, '0', '0', '0', '0'),
(146, 'BARCELONA', 'THE PRETTY HUE', 2, 1, '0', '0', '0', '0'),
(147, 'DOHA', 'THE PRETTY HUE', 1, 1, '0', '0', '0', '0'),
(148, 'FLORENCE', 'THE PRETTY HUE', 2, 1, '0', '0', '0', '0'),
(149, 'NUDE', 'THE PRETTY HUE', 1, 1, '0', '0', '0', '0'),
(150, 'MUSCAT', 'THE PRETTY HUE', 2, 1, '0', '0', '0', '0'),
(151, 'TORONTO', 'THE PRETTY HUE', 1, 1, '0', '0', '0', '0'),
(152, 'BANGKOK', 'THE PRETTY HUE', 3, 1, '0', '0', '0', '0'),
(153, 'BEIJING', 'THE PRETTY HUE', 2, 1, '0', '0', '0', '0'),
(154, 'DELHI', 'THE PRETTY HUE', 2, 1, '0', '0', '0', '0'),
(155, 'HANOI', 'THE PRETTY HUE', 2, 1, '0', '0', '0', '0'),
(156, 'KYOTO', 'THE PRETTY HUE', 2, 2, '0', '0', '0', '0'),
(157, 'test', '', 1, 1, '0', '0', '0', '0'),
(158, 'test', '', 2, 2, '0', '0', '0', '0'),
(159, 'test', 'test', 3, 3, '0', '0', '0', '0'),
(160, 'test', '', 1, 1, '0', '0', '0', '0'),
(161, 'test', '', 1, 1, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ufname` varchar(50) NOT NULL,
  `ulname` varchar(50) NOT NULL,
  `uemail` varchar(70) NOT NULL,
  `upassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ufname`, `ulname`, `uemail`, `upassword`) VALUES
('test2', 'test2', 'test2@gmail.com', ''),
('francis', 'devera', 'test3@gmail.com', ''),
('test', 'test', 'test5@gmail.com', '202cb962ac59075b964b07152d234b70'),
('francis', 'devera', 'test@gmail', ''),
('test', 'test', 'test@gmail.com', 'test'),
('test', 'test', 'test@gmail.com4', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerpo`
--
ALTER TABLE `customerpo`
  ADD PRIMARY KEY (`custPO`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`custID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `modeofpayment`
--
ALTER TABLE `modeofpayment`
  ADD PRIMARY KEY (`MOP`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`purchaseID`),
  ADD KEY `Test` (`supplierID`);

--
-- Indexes for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD PRIMARY KEY (`poitemsID`),
  ADD KEY `Test2` (`purchaseID`),
  ADD KEY `test3` (`itemID`);

--
-- Indexes for table `sales_customer`
--
ALTER TABLE `sales_customer`
  ADD PRIMARY KEY (`PONumber`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplierID`);

--
-- Indexes for table `suppliers_items`
--
ALTER TABLE `suppliers_items`
  ADD PRIMARY KEY (`supplieritemID`);

--
-- Indexes for table `tblinventory`
--
ALTER TABLE `tblinventory`
  ADD PRIMARY KEY (`pID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uemail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerpo`
--
ALTER TABLE `customerpo`
  MODIFY `custPO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `custID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `poitemsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sales_customer`
--
ALTER TABLE `sales_customer`
  MODIFY `PONumber` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplierID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `suppliers_items`
--
ALTER TABLE `suppliers_items`
  MODIFY `supplieritemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblinventory`
--
ALTER TABLE `tblinventory`
  MODIFY `pID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `Test` FOREIGN KEY (`supplierID`) REFERENCES `purchase_orders` (`purchaseID`);

--
-- Constraints for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD CONSTRAINT `Test2` FOREIGN KEY (`purchaseID`) REFERENCES `purchase_order_items` (`poitemsID`),
  ADD CONSTRAINT `test3` FOREIGN KEY (`itemID`) REFERENCES `purchase_order_items` (`poitemsID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 22, 2016 at 06:07 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_firstbit`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('2b50efb787c1dbf5463e1d5c2961b1f8', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/53.0.2785.143 Chrome/53.0.2785.14', 1476964894, 'a:5:{s:9:"user_data";s:0:"";s:8:"admin_id";s:1:"4";s:11:"admin_level";s:1:"4";s:10:"admin_name";s:8:"Ecourier";s:10:"admin_type";N;}'),
('8e0f0cd6d057c731ecd7727066bf77a1', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/53.0.2785.143 Chrome/53.0.2785.14', 1477109005, 'a:5:{s:9:"user_data";s:0:"";s:8:"admin_id";s:1:"4";s:11:"admin_level";s:1:"4";s:10:"admin_name";s:8:"Ecourier";s:10:"admin_type";s:1:"1";}'),
('9ed17bebd7b1f33b27645937083d44a8', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/53.0.2785.143 Chrome/53.0.2785.14', 1476966701, 'a:4:{s:9:"user_data";s:0:"";s:11:"customer_id";s:1:"1";s:13:"customer_name";s:8:"Sk Arnov";s:13:"customer_type";s:1:"3";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(2) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(32) NOT NULL,
  `admin_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_level` tinyint(1) DEFAULT NULL,
  `admin_status` tinyint(1) DEFAULT '0',
  `admin_type` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_date_time`, `admin_level`, `admin_status`, `admin_type`) VALUES
(1, 'Administrator', 'admin@1stbitbd.com', '111111', '2016-09-02 10:51:50', 1, 1, 1),
(2, 'Ecommerce', 'ecommerce@1stbitbd.com', '111111', '2016-09-02 10:56:05', 2, 1, 1),
(3, 'Eticket', 'eticket@1stbitbd.com', '111111', '2016-09-02 10:58:31', 3, 1, 1),
(4, 'Ecourier', 'ecourier@1stbitbd.com', '111111', '2016-09-02 10:58:31', 4, 1, 1),
(5, 'dsa', 'sk.obydullah@gmail.com', '111111', '2016-10-12 08:08:35', 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `banner_id` int(2) NOT NULL,
  `banner_link` varchar(200) NOT NULL,
  `banner_image` varchar(250) NOT NULL,
  `banner_position` tinyint(1) NOT NULL DEFAULT '0',
  `banner_type` tinyint(1) NOT NULL COMMENT 'Ecommerce Banner 1 E - Ticket 2 E - Courier 3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`banner_id`, `banner_link`, `banner_image`, `banner_position`, `banner_type`) VALUES
(1, 'http://', 'upload_image/banner_image/e-ticketing.jpg', 1, 1),
(2, 'http://', 'upload_image/banner_image/e-courier.jpg', 2, 1),
(3, 'http://', 'upload_image/banner_image/home_service.jpg', 3, 1),
(4, 'http://', 'upload_image/banner_image/offers2.jpg', 4, 1),
(5, 'http://', 'upload_image/banner_image/BBB-22.jpg', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(3) NOT NULL,
  `item_id` int(3) NOT NULL,
  `brand_name` varchar(50) NOT NULL,
  `brand_type` tinyint(1) NOT NULL COMMENT 'Ecommerce Brand 1 E - Brand 2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `bus_id` int(3) NOT NULL,
  `bus_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_type`
--

CREATE TABLE `tbl_bus_type` (
  `bus_type_id` int(2) NOT NULL,
  `bus_type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(2) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Fashion and Beauty'),
(2, 'Computer and Accessories'),
(3, 'Mechanical Parts'),
(4, 'Electrical and Electronics'),
(5, 'Mobile Phones'),
(6, 'Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coach`
--

CREATE TABLE `tbl_coach` (
  `coach_id` int(5) NOT NULL,
  `coach_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(2) NOT NULL,
  `color_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `coupon_id` int(10) NOT NULL,
  `coupon_code` varchar(10) NOT NULL,
  `coupon_amount` varchar(10) NOT NULL,
  `coupon_validity` varchar(11) NOT NULL,
  `coupon_status` tinyint(1) NOT NULL,
  `coupon_type` tinyint(1) NOT NULL COMMENT 'Ecommerce Coupon 1 E - Ticket 2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(5) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_gender` varchar(10) NOT NULL,
  `customer_password` varchar(32) NOT NULL,
  `customer_mobile` varchar(20) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_landmark` text,
  `customer_website` text,
  `customer_status` tinyint(1) NOT NULL DEFAULT '1',
  `customer_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Ecommerce 1, Eticket 2, Ecourier Personal 3, Ecourier Corporate 4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_gender`, `customer_password`, `customer_mobile`, `customer_address`, `customer_landmark`, `customer_website`, `customer_status`, `customer_type`) VALUES
(6, 'Sk Arnov', 'ecommerce@1stbitbd.com', '', '111111', '1111111111111111', 'h', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivery`
--

CREATE TABLE `tbl_delivery` (
  `delivery_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `sender_id` int(5) NOT NULL,
  `receiver_id` int(5) NOT NULL,
  `delivery_time` varchar(5) NOT NULL,
  `product_details` text NOT NULL,
  `product_weight` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `delivery_date` varchar(11) NOT NULL,
  `delivery_charge_given` varchar(10) NOT NULL,
  `delivery_note` text NOT NULL,
  `delivery_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_eticket_order_details`
--

CREATE TABLE `tbl_eticket_order_details` (
  `eticket_order_details_id` int(10) NOT NULL,
  `order_id` int(5) NOT NULL,
  `seat_id` int(4) NOT NULL,
  `seat_name` varchar(5) NOT NULL,
  `coach_name` varchar(20) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `seat_price` float(10,2) NOT NULL,
  `seat_sales_quantity` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_franchise`
--

CREATE TABLE `tbl_franchise` (
  `franchise_id` int(5) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_address` text NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_mobile` varchar(20) NOT NULL,
  `interested_area` text NOT NULL,
  `past_experienced` varchar(5) NOT NULL,
  `details_about_franchise` text NOT NULL,
  `company_landmark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home_product`
--

CREATE TABLE `tbl_home_product` (
  `home_product_id` int(3) NOT NULL,
  `subcategory_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_home_product`
--

INSERT INTO `tbl_home_product` (`home_product_id`, `subcategory_id`) VALUES
(1, 8),
(2, 33);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE `tbl_item` (
  `item_id` int(3) NOT NULL,
  `subcategory_id` int(3) NOT NULL,
  `item_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`item_id`, `subcategory_id`, `item_name`) VALUES
(1, 2, 'RAM'),
(2, 4, 'Shirts'),
(3, 4, 'T-Shirts'),
(4, 4, 'Punjabi'),
(5, 4, 'Pants'),
(6, 0, 'Glasses'),
(7, 4, 'Glasses'),
(8, 1, '3 Pcs'),
(9, 1, 'Glasses'),
(10, 1, 'Ornaments'),
(11, 1, 'Saree'),
(12, 8, 'Apple'),
(14, 8, 'Dell'),
(15, 8, 'Acer'),
(17, 8, 'Hp'),
(18, 30, 'SONY BRAVIA'),
(19, 33, 'Router'),
(22, 35, 'Samsung'),
(23, 35, 'Dell'),
(24, 35, 'HP'),
(25, 35, 'AOC'),
(26, 33, 'Wlan Card'),
(27, 38, 'SLR Camera'),
(28, 38, 'Vedio Camera'),
(29, 38, 'Web Cam'),
(30, 38, 'Lens'),
(31, 38, 'Camera Bag'),
(32, 35, 'LG'),
(33, 35, 'Asus'),
(34, 35, 'Viewsonic'),
(35, 1, 'Ornaments'),
(36, 33, 'Switch'),
(37, 10, 'Laser Printer'),
(39, 40, 'Optical'),
(40, 40, 'Wirelwss'),
(41, 34, 'Laptop Cooler'),
(42, 34, 'Mouse Pad'),
(43, 34, 'Mouse'),
(44, 9, 'Lenovo'),
(45, 7, 'Processor'),
(46, 7, 'Mainboard'),
(47, 7, 'HDD'),
(48, 7, 'Casing'),
(49, 7, 'Monitor'),
(50, 7, 'Graphics Card'),
(51, 7, 'All In One');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(10) NOT NULL,
  `news_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news_title`) VALUES
(1, 'We are open from 10th August, 2016 with our Online store | Online Buses and Air Ticketing are coming soon! | Ultimate e-courier solution, coming soon! | Need Servicing? We are coming soon with home servicing feature!!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletter_subscription`
--

CREATE TABLE `tbl_newsletter_subscription` (
  `subscription_id` int(10) NOT NULL,
  `subscription_email` varchar(100) NOT NULL,
  `subscription_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(5) NOT NULL,
  `customer_id` int(3) NOT NULL,
  `shipping_id` int(4) NOT NULL,
  `payment_id` int(4) NOT NULL,
  `shipping_charge` float(5,2) NOT NULL,
  `order_total` float(10,2) NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT '0',
  `invoice_date` varchar(20) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT 'For Ecommerce 1 & Ticket 2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(5) NOT NULL,
  `order_id` int(5) NOT NULL,
  `product_id` int(6) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `product_sales_quantity` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(5) NOT NULL,
  `customer_id` int(3) NOT NULL,
  `shipping_id` int(4) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT '0',
  `payment_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_type` tinyint(1) NOT NULL COMMENT 'For Ecommerce 1 & Ticket 2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(6) NOT NULL,
  `category_id` int(2) NOT NULL,
  `subcategory_id` int(3) NOT NULL,
  `item_id` int(3) NOT NULL,
  `brand_id` int(3) NOT NULL,
  `size` varchar(200) NOT NULL DEFAULT '0',
  `color` varchar(200) NOT NULL DEFAULT '0',
  `product_name` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL,
  `product_image_0` varchar(250) NOT NULL,
  `product_image_1` varchar(250) NOT NULL,
  `product_image_2` varchar(250) NOT NULL,
  `product_image_3` varchar(250) NOT NULL,
  `product_image_4` varchar(250) NOT NULL,
  `special_product` tinyint(1) NOT NULL,
  `delivery_time` text NOT NULL,
  `delivery_area` text NOT NULL,
  `delivery_charge_inside` float(5,2) NOT NULL,
  `delivery_charge_outside` float(5,2) NOT NULL,
  `product_quantity` varchar(10) NOT NULL,
  `product_old_price` float(10,2) NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `product_description` text NOT NULL,
  `extra_information` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `subcategory_id`, `item_id`, `brand_id`, `size`, `color`, `product_name`, `product_code`, `product_image_0`, `product_image_1`, `product_image_2`, `product_image_3`, `product_image_4`, `special_product`, `delivery_time`, `delivery_area`, `delivery_charge_inside`, `delivery_charge_outside`, `product_quantity`, `product_old_price`, `product_price`, `product_description`, `extra_information`) VALUES
(2, 2, 8, 15, 0, '1', '1', 'Acer Aspire ES1-131 Intel Celeron Quad Core N3150, Black', '', 'upload_image/product_image_0/Acer_Aspire_ES1_131_Celeron_Quad_thumb.jpg', 'upload_image/product_image_1/Acer_Aspire_ES1_131_Celeron_Quad_thumb.jpg', 'upload_image/product_image_2/Acer_Aspire_ES1_131_Celeron_Quad_thumb.jpg', 'upload_image/product_image_3/Acer_Aspire_ES1_131_Celeron_Quad_thumb.jpg', 'upload_image/product_image_4/Acer_Aspire_ES1_131_Celeron_Quad_thumb.jpg', 1, '', '', 0.00, 0.00, '-8', 25000.00, 23500.00, 'Acer Aspire ES1-131 Intel Celeron Quad Core N3150, Black', ''),
(3, 2, 8, 15, 0, '1', '1', 'Acer Aspire ES1-131 Intel Celeron Quad Core N3150, Red', '', 'upload_image/product_image_0/Acer_Aspire_ES1-131_Intel_Celeron_Quad_Core_N3150,_Red_thumb.jpg', '', '', '', '', 1, '', '', 0.00, 0.00, '-40', 25000.00, 23500.00, 'Acer Aspire ES1-131 Intel Celeron Quad Core N3150, Red', ''),
(4, 2, 8, 15, 0, '1', '5', 'Acer Aspire ES1-131 Intel Pentium Quad Core N3700, Black', '', 'upload_image/product_image_0/Acer_Aspire_ES1-131_Intel_Pentium_Quad_Core_N3700,_Black_thumb.gif', '', '', '', '', 1, '', '', 0.00, 0.00, '-36', 26000.00, 25000.00, 'Model - Acer Aspire ES1-131, Processor - Intel Pentium Quad Core N3700, Processor Clock Speed - 1.60-2.40GHz, CPU Cache - 2MB, Display Size - 11.6", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - Intel HD, Graphics Memory - Shared, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 1 x USB3.0, 1 x USB2.0, Battery - 3 cell Lithium Ion, Backup Time - Up to 7 Hrs., Operating System - Free Dos, Weight - 1.25Kg, Color - Black, Warranty - 1 year', ''),
(5, 2, 8, 15, 0, '1', '5', 'Acer Aspire ES1-431 Intel Pentium Quad Core N3700, Black', '', 'upload_image/product_image_0/Acer_Aspire_ES1-431_Intel_Pentium_Quad_Core_N3700,_Black_thumb.jpg', '', '', '', '', 1, '', '', 0.00, 0.00, '-1', 27000.00, 26000.00, 'Model - Acer Aspire ES1-431, Processor - Intel Pentium Quad Core N3700, Processor Clock Speed - 1.60-2.40GHz, CPU Cache - 2MB, Display Size - 14", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - Intel HD Graphics, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 1 x USB3.0, 1 X USB2.0, Battery - 4 Cell Li-Ion, Backup Time - Up to 5 Hrs., Operating System - Free Dos, Weight - 2.10Kg, Color - Black, Maximum RMA - 25 days, Part No - NX.MZDSI.009, Warranty - 1 year', ''),
(6, 2, 8, 15, 0, '1', '1', 'Acer Aspire ES1-431 Intel Pentium Quad Core N3700, Red', '', 'upload_image/product_image_0/Acer_Aspire_ES1-431_Intel_Pentium_Quad_Core_N3700,_RED_thumb.gif', '', '', '', '', 1, '', '', 0.00, 0.00, '-2', 27000.00, 26000.00, 'Model - Acer Aspire ES1-431, Processor - Intel Pentium Quad Core N3700, Processor Clock Speed - 1.60-2.40GHz, CPU Cache - 2MB, Display Size - 14", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - Intel HD Graphics, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 1 x USB3.0, 1 X USB2.0, Battery - 4 Cell Li-Ion, Backup Time - Up to 5 Hrs., Operating System - Free Dos, Weight - 2.10Kg, Color - Red, Warranty - 1 year', ''),
(7, 2, 8, 15, 0, '1', '5', 'Acer Aspire E5-473 Core i3 4th Gen. 4005U, Gray', '', 'upload_image/product_image_0/Acer_Aspire_E5-473_Core_i3_4th_Gen._4005U,_Gray__thumb.jpg', '', '', '', '', 1, '', '', 0.00, 0.00, '-87', 30500.00, 29700.00, 'Model - Acer Aspire E5-473, Processor - 4th Gen. Intel Core i3 4005U, Processor Clock Speed - 1.70GHz, CPU Cache - 3MB, Display Size - 14", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - Intel HD 4400, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 2 x USB3.0, 1 X USB2.0, Battery - 4 Cell Li-Ion, Backup Time - Up to 5 Hrs., Operating System - Free Dos, Weight - 2.10Kg, Color - Gray, Maximum RMA - 25 days, Part No - NX.MXQSI.008, Warranty - 1 year', ''),
(8, 2, 8, 15, 0, '1', '1', 'Acer Aspire E5-473 Core i3 5th Gen. 5005U, Gray', '', 'upload_image/product_image_0/Acer_Aspire_E5-573G_Core_i3_5th_Gen._5005U,_Gray__thumb.jpg', '', '', '', '', 1, '', '', 0.00, 0.00, '-31', 31500.00, 30200.00, 'Model - Acer Aspire E5-473, Processor - 5th Gen. Intel Core i3 5005, Processor Clock Speed - 2.0GHz, CPU Cache - 3MB, Display Size - 14", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - Intel HD 5500, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 2 x USB3.0, 1 X USB2.0, Battery - 4 Cell Li-Ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 2.40Kg, Color - Gray, Warranty - 1 year', ''),
(9, 2, 8, 15, 0, '1', '2', 'Acer Aspire E5-473 Core i3 5th Gen. 5005U, White', '', 'upload_image/product_image_0/Acer_Aspire_E5-573_Core_i3_5th_Gen._5005U,_White__thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 31500.00, 30200.00, 'Model - Acer Aspire E5-473, Processor - 5th Gen. Intel Core i3 5005U, Processor Clock Speed - 2.0GHz, CPU Cache - 3MB, Display Size - 14", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - Intel HD 5500, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Battery - 4 Cell Li-Ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 2.40Kg, Color - White, Warranty - 1 year', ''),
(10, 2, 8, 15, 0, '1', '6', 'Acer Aspire E5-473-306V Core i3 5th Gen 5005U, Blue', '', 'upload_image/product_image_0/Acer_Aspire_E5-473-306V_Core_i3_5th_Gen_5005U,_Blue_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 31500.00, 30200.00, 'Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - Intel HD 5500, Graphics Memory - shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Battery - 4 Cell Li-Ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 2.40Kg, Color - Blue, Warranty - 1 year', ''),
(11, 2, 8, 15, 0, '1', '5', 'Acer Aspire E5-473-32DB Core i3 5th Gen 5005U, Yellow', '', 'upload_image/product_image_0/Acer_Aspire_E5-473-32DB_Core_i3_5th_Gen_5005U,_Yellow_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 31500.00, 30200.00, 'Model - Acer Aspire E5-473-32DB, Processor - 5th Gen. Intel core i3 5005U, Processor Clock Speed - 2.0GHz, CPU Cache - 3MB, Display Size - 14", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - Intel HD 5500, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Battery - 4 Cell Li-Ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 2.40Kg, Color - Yellow, Warranty - 1 year', ''),
(12, 2, 8, 15, 0, '1', '5', 'Acer Aspire E5-473-30DZ Core i3 5th Gen 5005U, Brown', '', 'upload_image/product_image_0/brown_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 31500.00, 30200.00, 'Model - Acer Aspire E5-473-30DZ, Processor - 5th Gen. Intel Core i3 5005U, Processor Clock Speed - 2.0GHz, CPU Cache - 3MB, Display Size - 14", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - Intel HD 5500, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Battery - 4 Cell Li-Ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 2.40Kg, Color - Brown', ''),
(13, 2, 8, 15, 0, '1', '6', 'Acer One Z1402-30Q7 Core i3 5th Gen. 5005U, Black', '', 'upload_image/product_image_0/Acer_One_Z1402-30Q7_Core_i3_5th_Gen._5005U,_Black__thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 31500.00, 30200.00, 'Model - Acer One Z1402-30Q7, Processor - 5th Gen. Intel Core i3 5005U, Processor Clock Speed - 2.0GHz, CPU Cache - 3MB, Display Size - 14", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500B HDD, Graphics Chipset - Intel HD 5500, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, Audio Port - Combo, Backup Time - Up to 3.5 Hrs., Operating System - Free Dos, Weight - 1.77Kg, Color - Black, Warranty - 1 ', ''),
(14, 2, 8, 15, 0, '1', '4', 'Acer Aspire E5-573 Core i3 5th Gen. 5005U, White', '', 'upload_image/product_image_0/Acer_Aspire_E5-573_Core_i3_5th_Gen._5005U,_White__thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 31500.00, 30200.00, 'Acer Aspire E5-573 Core i3 5th Gen. 5005U, White', ''),
(17, 2, 8, 17, 0, '1', '5', ' HP 14-AF007AU AMD Dual Core E1-6015', '', 'upload_image/product_image_0/HP-14-AF007AU_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 23200.00, 22700.00, 'Model - HP 14-AF007AU, Processor - AMD Dual Core E1-6015, Processor Clock Speed - 1.40GHz, CPU Cache - 1MB, Display Size - 14.1", Display Type - LED Display, RAM - 2GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - AMD Radeon R5, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, VGA, Audio Port - COMBO, USB Port - 2 x USB2.0, 1 X USB3.0, Battery - 4 Cell Li-Ion, Backup Time - Up to 3.5 Hrs., Operating System - Free Dos, Weight - 1.94Kg, Color - Black, Part No - N1U93PA, Warranty - 1 year', ''),
(18, 2, 8, 17, 0, '1', '5', 'HP 15-BA010AU AMD QUAD CORE E2-7110, Black', '', 'upload_image/product_image_0/HP-15-BA010AU-699_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '-1', 26000.00, 25500.00, 'Model - HP 15-BA010AU, Processor - AMD QUAD CORE E2-7110, Processor Clock Speed - 1.80GHz, CPU Cache - 2MB, Display Size - 15.6", Display Type - WLED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - AMD RADEON R2, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 1 x USB3.0, 2 x USB2.0, Battery - 4 Cell Li-ion, Backup Time - Up to 4 Hrs., Operating System - Free Dos, Weight - 2.19Kg, Color - Black, Part No - X0G53PA, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(19, 2, 8, 17, 0, '1', '5', 'HP 15-648TU PQC N3825U, Black', '', 'upload_image/product_image_0/HP-15-648TU-679_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 27000.00, 26200.00, 'Model - HP 15-648TU, Processor - Intel PQC N3825U, Processor Clock Speed - 1.90GHz, CPU Cache - 2MB, Display Size - 15.6", Display Type - LED Display, RAM - 2GB, RAM Type - DDR3, HDD - 500GB HDD, Graphics Chipset - Intel HD, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 1 x USB3.0, 2 x USB2.0, Battery - 4 Cell, Backup Time - Up to 3.5 Hrs., Operating System - Free Dos, Weight - 2.19Kg, Color - Black, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(20, 2, 8, 17, 0, '1', '5', 'HP 14-AM005TU PQC N3710,Black', '', 'upload_image/product_image_0/HP-14-AM005TU-701_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 29000.00, 28500.00, 'Model - HP 14-AM005TU, Processor - PQC N3710, Processor Clock Speed - 1.60-2.50GHz, CPU Cache - 2MB, Display Size - 14.1", Display Type - WLED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - Intel HD 405, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 1 x USB3.0, 2 x USB2.0, Battery - 4 Cell Li-ion, Backup Time - Up to 4 Hrs., Operating System - Free Dos, Weight - 1.94Kg, Color - Black, Part No - X0G42PA, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(21, 2, 8, 17, 0, '1', '5', 'HP 14-AC127TU Core i3 5th Gen. 5005U, Black', '', 'upload_image/product_image_0/HP_14_AC127TU_black_rico_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 31300.00, 30900.00, 'Model - HP 14-AC127TU, Processor - 5th Gen. Intel Core i3 5005U, Processor Clock Speed - 2.00GHz, CPU Cache - 3MB, Display Size - 14", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 1TB HDD, Graphics Chipset - Intel HD 5500, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 1 x USB3.0, 2 x USB2.0, Battery - 4 Cell Li-Ion, Backup Time - Up to 4 Hrs., Operating System - Free Dos, Weight - 1.94Kg, Color - Black, Part No - P3D05PA, Warranty - 2 year', ''),
(22, 2, 8, 17, 0, '1', '5', 'HP 14-AC130TU Core i3 6th Gen. 6100U, Black', '', 'upload_image/product_image_0/HP-14-AC041TU-black_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 33000.00, 32700.00, 'Model - HP 14-AC130TU, Processor - 6th Gen. Intel Core i3 6100U, Processor Clock Speed - 2.30GHz, CPU Cache - 3MB, Display Size - 14", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 1TB HDD, Graphics Chipset - Intel HD 520, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 1 x USB3.0, Battery - 4 cell Li-ion, Backup Time - Up to 4 Hrs., Operating System - Free Dos, Weight - 2.1Kg, Color - Black, Warranty - 1 year', ''),
(23, 2, 8, 17, 0, '1', '5', 'HP 240 G4 5th Gen. Core i3 5005U, Black', '', 'upload_image/product_image_0/hp-240-g4-14-core-i5-4gb-la_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 34000.00, 33200.00, 'Model - HP 240 G4, Processor - 5th Gen. Intel Core i3 5005U, Processor Clock Speed - 2.00GHz, CPU Cache - 3MB, Display Size - 14.1", Display Type - LED Display, RAM - 4GB, Display Resolution - 1366 x 768, RAM Type - DDR3L, HDD - 1TB HDD, Graphics Chipset - AMD Radeon R5 M330, Graphics Memory - 2GB, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 1 x USB3.0, 2 x USB2.0, Battery - 3 Cell Li-ion, Backup Time - Up to 6 hrs., Operating System - Free Dos, Weight - 1.90Kg, Color - Black, Part No - 9S30PA, Warranty - 1 year', ''),
(24, 4, 30, 18, 0, '1', '5', '3D TV Sony 3D Android 43” TV Bravia W800C Full HD Wi-Fi X-Reality ', '', 'upload_image/product_image_0/01-500x500-349x349_thumb.jpg', 'upload_image/product_image_1/p412-b-side_thumb.jpg', '', '', '', 0, '', '', 0.00, 0.00, '', 89900.00, 65000.00, '3D TV Sony 3D Android 43” TV Bravia W800C Full HD Wi-Fi X-Reality ', ''),
(25, 2, 8, 17, 0, '1', '5', 'HP 14-AC111Tx Core i3 6th Gen. 6100U, Black', '', 'upload_image/product_image_0/HP-14-AC111Tx-black_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 38000.00, 37400.00, 'Model - HP 14-AC111Tx, Processor - 6th Gen. Intel Core i3 6100U, Processor Clock Speed - 2.30GHz, CPU Cache - 3MB, Display Size - 14", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - AMD Radeon R5 M330, Graphics Memory - 2GB, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 1 x USB3.0, 2 x USB2.0, Battery - 4 Cell Lithium-ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 1.94Kg, Color - Black, Warranty - 1 year', ''),
(26, 2, 8, 17, 0, '1', '8', 'HP Pavilion 14-AB102TU Core i3 6th Gen. 6100U, Silver', '', 'upload_image/product_image_0/HP_Pavilion_14_AB102TU_silv_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 38800.00, 38200.00, 'Model - HP Pavilion 14-AB102TU, Processor - 6th Gen. Intel Core i3 6100U, Processor Clock Speed - 2.30GHz, CPU Cache - 3MB, Display Size - 14.1", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 1TB HDD, Graphics Chipset - Intel HD 520, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Battery - 4 cell Li-ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 1.96Kg, Color - Silver, Part No - P3D15PA, Warranty - 1 year', ''),
(27, 2, 8, 17, 0, '1', '8', 'HP Probook 440 G3 Core i3 6th Gen. 6100U, Silver', '', 'upload_image/product_image_0/HP_Probook_440_G3_silver_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 41000.00, 40200.00, 'Model - HP Probook 440 G3, Processor - 6th Gen. Intel Core i3 6100U, Processor Clock Speed - 2.30GHz, CPU Cache - 3MB, Display Size - 14", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 1TB HDD, Graphics Chipset - Intel HD 520, Graphics Memory - Shared, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Battery - 6 cell li-Ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 1.68Kg, Color - Silver, Warranty - 1 year', ''),
(28, 2, 8, 17, 0, '1', '5', 'HP Probook 450 G3 Core i3 6th Gen. 6100U, Black', '', 'upload_image/product_image_0/HP_Probook_450_G3_rico_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 42000.00, 41200.00, 'Model - HP Probook 450 G3, Processor - 6th Gen.Intel Core i3 6100U, Processor Clock Speed - 2.30GHz, CPU Cache - 3MB, Display Size - 15.6", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 1TB HDD, Graphics Chipset - Intel HD 520, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 2 x USB3.0, 2 x USB2.0, Battery - 4-cell Li-ion, Backup Time - Up to 4 Hrs., Operating System - Free Dos, Weight - 2.07Kg, Color - Black, Part No - L6L05AV, Warranty - 1 year', ''),
(29, 2, 8, 17, 0, '1', '5', 'HP Probook 450 G3 Core i3 6th Gen. 6100U, Black', '', 'upload_image/product_image_0/Probook-450-G3-691_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 43800.00, 43200.00, 'HP Probook 450 G3 Core i3 6th Gen. 6100U, Black', ''),
(30, 2, 8, 17, 0, '1', '5', 'HP Probook 450 G3 Core i3 6th Gen. 6100U, Black', '', 'upload_image/product_image_0/Probook-450-G3-691_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 43800.00, 43200.00, 'Model - HP Probook 450 G3, Processor - 6th Gen. Intel Core i3 6100U, Processor Clock Speed - 2.30GHz, CPU Cache - 3MB, Display Size - 15.6", Display Type - LED Display, RAM - 4GB, RAM Type - DDR4, HDD - 1TB HDD, Graphics Chipset - Intel HD 520, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 2 x USB3.0, 2 x USB2.0, Battery - 4-cell Li-ion, Backup Time - Up to 4 Hrs., Operating System - Free Dos, Weight - 2.10Kg, Color - Black, Part No - X3E37PA, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(31, 2, 8, 17, 0, '1', '1', 'HP Pavilion 14-AB014TU Core i5 5th Gen. 5200U, Red', '', 'upload_image/product_image_0/HP-Pavilion-14-AB014TU_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-1', 45000.00, 44200.00, 'HP Pavilion 14-AB014TU Core i5 5th Gen. 5200U, Red', ''),
(32, 2, 8, 17, 0, '1', '6', 'HP Pavilion 15-AB206TU Core i5 6th Gen. 6200U, Blue', '', 'upload_image/product_image_0/HP_Pavilion_15_AB206TU_blue_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 45000.00, 44200.00, 'Model - HP Pavilion 15-AB206TU, Processor - 6th Gen. Intel Core i5 6200U, Processor Clock Speed - 2.30-2.80GHz, CPU Cache - 3MB, Display Size - 15.6", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 1TB HDD, Graphics Chipset - Intel HD 520, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Battery - 4 cell Li-ion polymer, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 2.10kg, Color - Blue, Part No - N8L24PA, Warranty - 1 year', ''),
(33, 2, 8, 17, 0, '1', '8', ' HP Pavilion 15-AB202TX Core i5 6th Gen. 6200U, Silver', '', 'upload_image/product_image_0/HP_Pavilion_15_AB202TX_Core_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 49000.00, 48000.00, 'Model - HP Pavilion 15-AB202TX, Processor - 6th Gen. Intel Core i5 6200U, Processor Clock Speed - 2.30GHz, CPU Cache - 3MB, Display Size - 15.6", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 1TB HDD, Graphics Chipset - NVIDIA GeForce 940M, Graphics Memory - 2GB, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Battery - 4 cell Li-ion, Backup Time - Up to 4 Hrs., Operating System - Free Dos, Weight - 2.10Kg, Color - Silver, Warranty - 1 year', ''),
(34, 2, 8, 17, 0, '1', '5', 'HP Probook 440 G3 Core i5 6th Gen. 6200U, Black', '', 'upload_image/product_image_0/HP-Probook-440-G3-714_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 50500.00, 49200.00, 'Model - HP Probook 440 G3, Processor - 6th Gen. Intel Core i5 6200U, Processor Clock Speed - 2.30-2.80Ghz, CPU Cache - 3MB, Display Size - 14.1", Display Type - LED Display, RAM - 4GB, RAM Type - DDR4, HDD - 1TB HDD, Graphics Chipset - Intel HD 520, Graphics Memory - Shared, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Battery - 4 Cell li-Ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 1.68Kg, Color - Black, Part No - X3E34PA, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(35, 2, 8, 17, 0, '1', '8', 'HP Pavilion 14-AL012TX 6th Gen Intel Core i5 6200U, Copper Gold', '', 'upload_image/product_image_0/Pavilion-14-AL012TX-716_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 50500.00, 49700.00, 'Model - HP Pavilion 14-AL012TX, Processor - 6th Gen. Intel Core i5 6200U, Processor Clock Speed - 2.30-2.80GHz, CPU Cache - 3MB, Display Size - 14", Display Type - LED Display, RAM - 4GB, RAM Type - DDR4, HDD - 1TB HDD, Graphics Chipset - NVIDIA GeForce 940M, Graphics Memory - 2GB, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Battery - 3 Cell Li-ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 1.58Kg, Color - Copper Gold, Part No - X0G55PA, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(36, 2, 8, 17, 0, '1', '5', 'HP Probook 470 G3 Core i5 6th Gen. 6200U, Black', '', 'upload_image/product_image_0/Probook_470_G3_Black_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 60800.00, 59500.00, 'Model - HP Probook 470 G3, Processor - 6th Gen. Intel Core i5 6200U, Processor Clock Speed - 2.30GHz, CPU Cache - 3MB, Display Size - 17.3", Display Type - LED Display, RAM - 8GB, Display Resolution - 1920 x 1080, RAM Type - DDR3L, HDD - 1TB HDD, Graphics Chipset - AMD Radeon R7 M340, Graphics Memory - 2GB, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 2 x USB3.0, 2 x USB2.0, Battery - 4 Cell Li-ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 2.60Kg, Color - Black, Warranty - 1 year', ''),
(37, 2, 8, 17, 0, '1', '9', ' HP Pavilion 15-AU018TX 6th Gen Core i7 6500U, Gold', '', 'upload_image/product_image_0/Pavilion_15-AU018TX-710_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 66500.00, 65200.00, 'Model - HP Pavilion 15-AU018TX, Processor - 6th Gen. Intel Core i7 6500U, Processor Clock Speed - 2.50-3.10GHz, CPU Cache - 4MB, Display Size - 15.6", Display Type - LED Display, RAM - 8GB, RAM Type - DDR4, HDD - 1TB HDD, Graphics Chipset - NVIDIA GeForce 940MX, Graphics Memory - 4GB, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Battery - 4 Cell Li-ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 2.20Kg, Color - GOLD, Part No - X0G60PA, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(38, 2, 8, 17, 0, '1', '5', 'HP Probook 450 G3 Core i7 6th Gen. 6500U, Black', '', 'upload_image/product_image_0/Probook-450-G3-666_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 72000.00, 70900.00, 'Model - HP Probook 450 G3, Processor - 6th Gen. Intel Core i7 6500U, Processor Clock Speed - 2.50-3.10GHz, CPU Cache - 4MB, Display Size - 15.6", Display Type - LED Display, RAM - 8GB, RAM Type - DDR3L, HDD - 1TB HDD, Graphics Chipset - AMD Radeon R7 M340, Graphics Memory - 2GB, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 2 x USB3.0, 2 x USB2.0, Battery - 6 cell Li-ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 2.07Kg, Color - Black, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(39, 2, 8, 17, 0, '1', '5', 'HP Probook 470 G3 Core i7 6th Gen. 6500U, Black', '', 'upload_image/product_image_0/HP-Probook-450-G2_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 76000.00, 74700.00, 'Model - HP Probook 470 G3, Processor - 6th Gen. Intel Core i7 6500U, Processor Clock Speed - 2.50-3.10GHz, CPU Cache - 4MB, Display Size - 17.3", Display Type - LED Display, RAM - 8GB, RAM Type - DDR3L, HDD - 1TB HDD, Graphics Chipset - AMD Radeon R7 M340, Graphics Memory - 2GB, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, VGA, Audio Port - Combo, USB Port - 2 x USB3.0, 2 x USB2.0, Battery - 4 Cell Li-ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 2.60Kg, Color - Black, Part No - X4K32PA, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(40, 2, 8, 17, 0, '1', '8', 'HP ENVY 15-AE130TX Intel Core i7 6th Gen. 6500U, Silver', '', 'upload_image/product_image_0/HP_ENVY_15_AE130TX_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 82000.00, 80700.00, 'Model - HP ENVY 15-AE130TX, Processor - 6th Gen. Intel Core i7 6500U, Processor Clock Speed - 2.50GHz, CPU Cache - 4MB, Display Size - 15.6", Display Type - LED Touch Display, RAM - 8GB, RAM Type - DDR3L, HDD - 1TB HDD, Graphics Chipset - Nvidia Geforce 940M, Graphics Memory - 2GB, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 4 x USB3.0, Backup Time - Up to 4.5 Hrs., Operating System - Windows 10, Color - Silver, Specialty - Multitouch, Warranty - 1 year', ''),
(41, 2, 8, 17, 0, '1', '5', 'HP Pavilion 15-AK021TX Core i7 6th Gen. 6700HQ, Black', '', 'upload_image/product_image_0/Pavilion-15-AK021TX-black_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 87200.00, 85700.00, 'Model - HP Pavilion 15-AK021TX, Processor - 6th Gen. Intel Core i7 6700HQ, Processor Clock Speed - 2.6-3.5GHz, CPU Cache - 6MB, Display Size - 15.6", Display Type - LED Display, RAM - 8GB, RAM Type - DDR3L, HDD - 2TB HDD, Graphics Chipset - NVIDIA GeForce GTX 950M, Graphics Memory - 4GB, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Battery - 4 cell Li-ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 2.32Kg, Color - Black, Specialty - Gaming Notebook, Display: diagonal FHD anti-glare LED-backlit, Part No - T0X73PA, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(42, 2, 8, 17, 0, '1', '5', 'HP ELITEBOOK 820 G3 CORE I7 6th Gen. 6500U, Black', '', 'upload_image/product_image_0/hp-elitebook-820-g3-687_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 99000.00, 95700.00, 'Model - HP ELITEBOOK 820 G3, Processor - 6th Gen. CORE I7 6500U, Processor Clock Speed - 2.50-3.10GHz, CPU Cache - 4MB, Display Size - 12.5", Display Type - LED Display, RAM - 8GB, RAM Type - DDR4, HDD - 1TB HDD, Graphics Chipset - Intel HD 520, Graphics Memory - Shared, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - VGA, Audio Port - Combo, USB Port - 2 x USB3.2, 1 x USB Type-C, Battery - 3 Cell Li-ion polymer, Backup Time - Up to 4 Hrs., Operating System - Windows 10 Pro, Weight - 1.26kg, Color - Black, Part No - L4Q18AV, Warranty - 3 year (Battery, Adapter 1 year)', ''),
(43, 2, 8, 17, 0, '1', '5', 'HP SPECTRE X360 6th Gen Core i7 6500U, Black', '', 'upload_image/product_image_0/HP-SPECTRE-X360-720-black_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 120000.00, 116000.00, 'Model - HP SPECTRE X360, Processor - 6th Gen. Intel Core i7 6500U, Processor Clock Speed - 2.50 -3.10GHz, CPU Cache - 4MB, Display Size - 13.3", Display Type - CORNING GORILLA Display, RAM - 8GB, RAM Type - DDR4, HDD - 256 SSD, Graphics Chipset - Intel HD 520, Graphics Memory - Shared, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 3 x USB3.0, Battery - 3 Cell Li-ion polymer, Backup Time - Up to 4.5 Hrs., Operating System - Windows 10, Weight - 1.45Kg, Color - Black, Others - 1 x Mini DisplayPort, Part No - T0Z64PA, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(44, 2, 8, 17, 0, '1', '8', 'HP SPECTRE X2 12-A032TU Intel Core M3-6Y30, Silver', '', 'upload_image/product_image_0/HP-SPECTRE-X2-12-720_thumb.gif', 'upload_image/product_image_1/SPECTRE-X2-12-A032TU-720_thumb.gif', '', '', '', 0, '', '', 0.00, 0.00, '', 128000.00, 123000.00, 'Model - HP SPECTRE X2 12-A032TU, Processor - Intel Core M3-6Y30, Processor Clock Speed - 900MHz - 2.2GHz, CPU Cache - 4MB, Display Size - 12", Display Type - LED Display, RAM - 4GB, RAM Type - LDDR3, HDD - 128GB SSD, Graphics Chipset - Intel HD 515, Graphics Memory - Shared, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, VGA Webcam, Display Port - No, Audio Port - Combo, USB Port - 1 x USB3.0 (Type-C), Battery - 3 Cell Li-ion polymer, Backup Time - Up to 4.5 Hrs., Operating System - Windows 10, Weight - 1.19Kg, Color - Silver, Specialty - WUXGA+ IPS WLED-backlit touch screen Display, Part No - V5D62PA, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(45, 2, 8, 17, 0, '1', '5', 'HP SPECTRE 13-V018TU 6th Gen CORE i7 6500U, BLACK+COPPER', '', 'upload_image/product_image_0/SPECTRE-13-V018TU-711_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 150000.00, 146000.00, 'Model - HP SPECTRE 13-V018TU, Processor - 6th Gen. Intel Core i7 6500U, Processor Clock Speed - 2.50-3.10GHz, CPU Cache - 4MB, Display Size - 13.3", Display Type - CORNING GORILLA Display, RAM - 8GB, RAM Type - DDR4, HDD - 512SSD, Graphics Chipset - Intel HD 520, Graphics Memory - Shared, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Audio Port - Combo, USB Port - 2 x USB3.1 (Gen 2), 1 x USB3.1 (Gen 1), Battery - 4 Cell Li-ion, Backup Time - Up to 4.5 Hrs., Operating System - Windows 10, Weight - 1.10Kg, Color - BLACK+COPPER, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(46, 2, 8, 14, 0, '1', '6', 'Dell Inspiron 11-3162 Intel PQC N3700, Blue', '', 'upload_image/product_image_0/Inspiron-11-3162-760_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '-98', 26500.00, 25700.00, 'Model - Dell Inspiron 11-3162, Processor - Intel PQC N3700, Processor Clock Speed - 2.40GHz, CPU Cache - 2MB, Display Size - 11.6", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - Intel HD, Graphics Memory - Shared, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 1 x USB3.0, 1 x USB2.0, Battery - 2-Cell Li-Ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 1.22Kg, Color - Blue, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(47, 2, 8, 14, 0, '1', '1', 'Dell Inspiron 11-3162 Intel PQC N3700, Red', '', 'upload_image/product_image_0/Inspiron-11-3162-red-761_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '-98', 26500.00, 25700.00, 'Model - Dell Inspiron 11-3162, Processor - Intel PQC N3700, Processor Clock Speed - 2.40GHz, CPU Cache - 2MB, Display Size - 11.6", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - Intel HD, Graphics Memory - Shared, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 1 x USB3.0, 1 x USB2.0, Battery - 2 Cell Li-Ion, Backup Time - Up to 4.5 Hrs., Operating System - Free Dos, Weight - 1.22Kg, Color - Red, Warranty - 2 year (Battery, Adapter 1 year)', ''),
(48, 2, 8, 14, 0, '1', '5', 'DELL INSPIRON 15-3558 5th Gen. Intel Core i3 5005U, Black', '', 'upload_image/product_image_0/DELL-INSPIRON-15-3558-kalo_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-98', 32000.00, 31200.00, 'Model - DELL INSPIRON 15-3558, Processor - 5th Gen. Intel Core i3 5005U, Processor Clock Speed - 2.0GHz, CPU Cache - 3MB, Display Size - 15.6", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 1TB, Graphics Chipset - Intel HD 5500, Graphics Memory - Shared, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 1 x USB3.0, 2 x USB2.0, Battery - 4 Cell Cylindrical Li-Ion, Backup Time - Up to 4 Hrs., Operating System - Free Dos, Weight - 2.20Kg, Color - Black, Warranty - 2 year', ''),
(49, 2, 8, 14, 0, '1', '5', ' Dell Inspiron N5458 Core i3 5th Gen. 5005U, Black', '', 'upload_image/product_image_0/Dell-Inspiron-N5458_Black_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-98', 34000.00, 33400.00, 'Model - Dell Inspiron N5458, Processor - 5th Gen. Intel Core i3 5005U, Processor Clock Speed - 2.0GHz, CPU Cache - 3MB, Display Size - 14'''', Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 500GB HDD, Graphics Chipset - GeForce GTX 920M, Graphics Memory - 2GB, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 1 x USB3.0, 2 X USB2.0, Battery - 4 Cell Lithium-Ion, Backup Time - Up to 4 Hrs., Operating System - Free Dos, Weight - 2.10Kg, Color - Black, Maximum RMA - 25 days, Warranty - 1 year', ''),
(50, 2, 8, 12, 0, '1', '4', 'Apple Macbook Air (MJVM2ZA/A) i5 4th Gen', '', 'upload_image/product_image_0/Apple-Macbook-Air-(MJVM2ZA__thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-1', 83000.00, 81500.00, 'Model - Apple Macbook Air (MJVM2ZA/A), Processor - 4th Gen. Intel Core i5, Processor Clock Speed - 1.60GHz, CPU Cache - 3MB, Display Size - 11.6", Display Type - LED Display, RAM - 4GB, RAM Type - DDR3L, HDD - 128GB SSD, Graphics Chipset - Intel HD 6000, Graphics Memory - Shared, Optical Device - No, Networking - LAN, WiFi, Bluetooth, HD Webcam, Display Port - HDMI, VGA, DVI, Audio Port - Combo, USB Port - 2 x USB3.0, Battery - Lithium-Polymer, Backup Time - Up to 10 Hrs., Operating System - OS X Yosemite, Weight - 1.80Kg, Color - Silver, Others - Dimension(HxWxD) : 0.68" x 11.8" x 7.56", Screen: backlit glossy widescreen , Ports : Thunderbolt 2 port, MagSafe 2 power port, Warranty - 1 year', ''),
(51, 2, 8, 12, 0, '1', '8', 'Apple Macbook Air i5 5th Gen., Silver', '', 'upload_image/product_image_0/Macbook-Air-86_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '-2', 95000.00, 92000.00, 'Model - Apple Macbook Air, Processor - 5th Gen., Processor Clock Speed - 1.60GHz, CPU Cache - 3MB, Display Size - 13.3", Display Type - LED Display, RAM - 8GB, RAM Type - DDR3L, HDD - 128GB SSD, Graphics Chipset - Intel HD 5000, Graphics Memory - Shared, Optical Device - No, Networking - WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, VGA, DVI, Audio Port - Combo, USB Port - 2 x USB3.0, Battery - Lithium-Polymer, Backup Time - Up to 12 Hrs., Operating System - OS X Yosemite, Weight - 1.35Kg, Color - Silver, Others - Backlit glossy widescreen, Dimension(HxWxD) : 0.11-0.68" x 12.8" x 8.94", Others port: Thunderbolt 2 port, MagSafe 2 power port, Warranty - 1 Year', ''),
(52, 2, 8, 12, 0, '1', '4', 'Apple Macbook Air (MJVP2ZA/A) i5 5th Gen', '', 'upload_image/product_image_0/Macbook-Air-86_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '-2', 104000.00, 100000.00, 'Model - Apple Macbook Air (MJVP2ZA/A), Processor - 5th Gen. Intel Core i5, Processor Clock Speed - 1.60GHz, CPU Cache - 3MB, Display Size - 11.6", Display Type - LED Display, RAM - 4GB, RAM Type - LPDDR3, HDD - 256GB SSD, Graphics Chipset - Intel HD 5000, Graphics Memory - Shared, Optical Device - No, Networking - WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, VGA, DVI, Audio Port - Combo, USB Port - 2 x USB3.0, Battery - Lithium-Polymer, Backup Time - Up to 9 Hrs., Operating System - OS X Yosemite, Weight - 1.80Kg, Color - Silver, Others - Backlit glossy widescreen, Dimension(HxWxD) : 0.11-0.68" x 11.8" x 7.56", Others port: Thunderbolt 2 port, MagSafe 2 power port, Part No - MJVP2ZA/A, Warranty - 1 year', ''),
(53, 2, 8, 12, 0, '1', '9', 'Apple Macbook Light Intel Core M', '', 'upload_image/product_image_0/Apple_Macbook_Light_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-2', 111000.00, 108000.00, 'Model - Apple Macbook Light, Processor - Intel Core M, Processor Clock Speed - 1.10GHz, Display Size - 12", Display Type - Retina Display, RAM - 8GB, RAM Type - LPDDR3, HDD - 256GB SSD, Graphics Chipset - Intel HD 5300, Graphics Memory - Shared, Optical Device - No, Networking - WiFi, Webcam, Bluetooth, Card reader, Audio Port - Combo, USB Port - 1 x USB3.1, Battery - lithium-polymer, Backup Time - Up to 9 Hrs., Operating System - Mac OS X Yosemite, Weight - 1.80Kg, Color - Gold, Warranty - 1 year', ''),
(54, 2, 8, 12, 0, '1', '8', 'Apple Macbook Air i5 5th Gen., Silver', '', 'upload_image/product_image_0/Macbook-Air-87_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 113000.00, 111300.00, 'Model - Apple Macbook Air, Processor - i5 5th Gen., Processor Clock Speed - 1.60GHz, CPU Cache - 3MB, Display Size - 13.3", Display Type - LED Display, RAM - 8GB, RAM Type - DDR3L, HDD - 256GB SSD, Graphics Chipset - Intel HD 5000, Graphics Memory - Shared, Optical Device - No, Networking - WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, VGA, DVI, Audio Port - Combo, USB Port - 2 x USB3.0, Battery - Lithium-Polymer, Backup Time - Up to 12 Hrs., Operating System - OS X Yosemite, Weight - 1.35Kg, Color - Silver, Others - Backlit glossy widescreen, Dimension: 0.11-0.68" x 12.8" x 8.94", Others port: Thunderbolt 2 port, MagSafe 2 power port, Warranty - 1 Year', ''),
(55, 2, 8, 12, 0, '1', '8', 'Apple Macbook Pro Retina (MF839ZA/A) Intel Core i5 5th Gen', '', 'upload_image/product_image_0/Apple-Macbook-Pro-Retina-(M_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-2', 119200.00, 117000.00, 'Model - Apple Macbook Pro Retina (MF839ZA/A), Processor - 5th Gen. Intel Core i5, Processor Clock Speed - 2.70GHz, CPU Cache - 3MB, Display Size - 13.3", Display Type - LED Display, RAM - 8GB, RAM Type - DDR3L, HDD - 128GB SSD, Graphics Chipset - Intel HD 6000, Graphics Memory - Shared, Optical Device - No, Networking - WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, VGA, DVI, Audio Port - Combo, USB Port - 2 x USB3.0, Battery - Lithium-Polymer, Backup Time - Up to 12 Hrs., Operating System - OS X Yosemite, Weight - 1.58Kg, Color - Silver, Others - Dimension(HxWxD) : 0.71" x 12.35" x 8.62", Screen: backlit glossy widescreen, Others port: Thunderbolt 2 port, MagSafe 2 power port, Part No - MF839ZA/A, Warranty - 1 year', ''),
(56, 2, 8, 12, 0, '1', '8', 'Apple Macbook Pro Retina (MF840ZA/A) Intel Core i5', '', 'upload_image/product_image_0/Apple-Macbook-Pro-Retina_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-2', 139000.00, 137500.00, 'Model - Apple Macbook Pro Retina (MF840ZA/A), Processor - 5th Gen. Intel Core i5, Processor Clock Speed - 2.70GHz, CPU Cache - 3MB, Display Size - 13.3", Display Type - LED Display, RAM - 8GB, RAM Type - DDR3L, HDD - 256GB SSD, Graphics Chipset - Intel Iris 6100, Graphics Memory - Shared, Optical Device - No, Networking - WiFi, Bluetooth, Card Reader, HD Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 2 x USB3.0, Battery - Lithium-Polymer, Backup Time - Up to 10 Hrs., Operating System - OS X Yosemite, Weight - 1.58Kg, Color - Aluminum, Others - Dimension(HxWxD) : 0.71" x 12.35" x 8.62", Connector : MagSafe 2 power port,AC wall plug Power cord, Two Thunderbolt 2 ports, AC Adapter : 60W MagSafe 2 Power Adapter, Part No - MF840ZA/A, Warranty - 1 year', ''),
(57, 2, 8, 12, 0, '1', '9', 'Apple Macbook Light Intel Core M', '', 'upload_image/product_image_0/Apple_Macbook_Light_(1)_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 142500.00, 139000.00, 'Model - Apple Macbook Light, Processor - Intel Core M, Processor Clock Speed - 1.20GHz, Display Size - 12", Display Type - Retina Display, RAM - 8GB, RAM Type - LPDDR3, HDD - 512GB SSD, Graphics Chipset - Intel HD 5300, Graphics Memory - Shared, Optical Device - No, Networking - WiFi, Webcam, Bluetooth, Card reader, Audio Port - Combo, USB Port - 1 x USB3.1, Battery - lithium-polymer, Backup Time - Up to 9 Hrs., Operating System - Mac OS X Yosemite, Weight - 1.80Kg, Color - Gold, Part No - MK4N2ZA/A, Warranty - 1 year', ''),
(58, 2, 8, 12, 0, '1', '10', 'Apple Macbook Pro Retina (MF841ZA/A) Intel Core i5 5th Gen', '', 'upload_image/product_image_0/Apple-Macbook-Pro-Retina1_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 167000.00, 164500.00, 'Apple Macbook Pro Retina (MF841ZA/A) Intel Core i5 5th Gen', ''),
(63, 2, 33, 19, 0, '1', '5', 'Asus RT-N10E 150Mbps Wireless', '', 'upload_image/product_image_0/Asus__RT_N10+_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 2000.00, 1800.00, 'Brand - Asus, Model - RT-N10E, Network Standards - IEEE802.11b,11n, 11d, 3, 3u, 11i, 11e, IPv4, Outdoor Range - 200 sq Meter, Data Transfer Rates - 150 Mbps, Security Protocols - WEP, WPA, WPA2, TKIP, AES, WPA-PSK, WPA2-PSK, Firewall Protoccols - NAT, SPI, Interface - WAN 1 x RJ45 for 10/100 BaseT; LAN 4 x RJ45, Antena - 1 x External Antenna, Others - 600-800 sq ft., Warranty - 1 year', ''),
(64, 2, 33, 19, 0, '1', '4', 'Asus RT-N12 EZ N', '', 'upload_image/product_image_0/Asus__RT_N12_EZ_N_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-1', 3600.00, 3300.00, 'Brand - Asus, Model - RT-N12, Network Standards - IEEE802.11b, 11g, 11n, 11d, 3, 802.3u, 802.11i, 802.11e, IPv4, Outdoor Range - 400 sq meter, Data Transfer Rates - 300 Mbps, Security Protocols - 64 bit-WEP, 128-bit WEP, WPA, WPA2, TKIP, AES, WPA-PSK, WPA2-PSK, Firewall Protoccols - NAT, SPI, Interface - WAN: 1 x RJ45; LAN: 4 x RJ45, Antena - 2 x External antenna, Others - 1200-1500 sq feet, Warranty - 1 year', ''),
(65, 2, 33, 19, 0, '1', '', 'Asus RX-3041', '', 'upload_image/product_image_0/Asus__RX_3041_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-1', 4200.00, 3900.00, 'Brand - Asus, Model - RT-AC52U, Network Standards - IEEE 802.11a, 11b, 11g, 11n, 11ac, IPv4, IPv6, Outdoor Range - 1000 sq Meter, Data Transfer Rates - 750 Mbps, Security Protocols - 64-bit WEP, 128-bit WEP, WPA2-PSK, WPA-PSK, WPA-Enterprise , WPA2-Enterprise , Radius with 802.1x, WPS support, Firewall Protoccols - SPI intrusion detection, Interface - 1 x USB 2.0, 1 x RJ45, Antena - 3 x Internal antenna, Warranty - 1 year, Specialty - 3G/4G data sharing, AiCloud, Printer server, Download Master, AiDisK, Multiple SSIDs, Parental Control', ''),
(66, 2, 33, 19, 0, '1', '5', 'Asus RT-N14UHP', '', 'upload_image/product_image_0/Asus__RT_N14UHP_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-2', 7300.00, 6800.00, 'Brand - Asus, Model - RT-N14UHP, Network Standards - IEEE 802.11b, 11g, 11n, Outdoor Range - 400 sq meter, Data Transfer Rates - 300 Mbps, Security Protocols - 64-bit WEP, 128-bit WEP, WPA2-PSK, WPA-PSK, WPA-Enterprise , WPA2-Enterprise , Radius with 802.1x, WPS support, Interface - 1 x RJ45 WAN, 4 x RJ45 LAN, 1 x USB2.0, Antena - 3 x 9 dBi External antenna, Others - 1200-1500 sq feet, Warranty - 1 year, Specialty - 3G/4G data sharing, AiCloud, Printer server, Download Master, AiDisK, Multiple SSIDs, Parental Control', ''),
(67, 2, 33, 19, 0, '1', '5', ' Asus RT-N18U 3G/4G N600Mbps AP/Range Extender Wireless Router', '', 'upload_image/product_image_0/Asus-RT-N18U_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 8300.00, 7800.00, 'Brand - Asus, Model - RT-N18U, Network Standards - IEEE 802.11b, 11g, 11n, IPv4, IPv6, Outdoor Range - 800 Sq Meter, Data Transfer Rates - 600 Mbps, Security Protocols - 64-bit WEP, 128-bit WEP, WPA2-PSK, WPA-PSK, WPA-Enterprise, WPA2-Enterprise, WPS support, Firewall Protoccols - SPI intrusion detection,DoS protection, Interface - 4 x RJ45 LAN, 1 x RJ45 WAN, 1x USB2.0, 1 x USB3.0, Antena - 3 x External antenna, Others - 2000sq feet, Warranty - 1 year', ''),
(68, 2, 33, 19, 0, '1', '5', 'Asus RT-AC68U Wireless Router', '', 'upload_image/product_image_0/Asus-RT-AC68U-Wireless-Rout_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 18500.00, 17500.00, 'Brand - Asus, Model - RT-AC68U, Network Standards - IEEE 802.11a, 11b, 11g, 11n, 11ac, IPv4, IPv6, Outdoor Range - 2000 sq meter, Data Transfer Rates - 1900 Mbps, Security Protocols - 64-bit WEP, 128-bit WEP, WPA2-PSK, WPA-PSK, WPA-Enterprise , WPA2-Enterprise , WPS support, Firewall Protoccols - SPI intrusion detection, DoS protection, Interface - 4 x RJ45 LAN, 1 x RJ45 WAN, 1 x USB2.0, 1 x USB3.0, Antena - 3 x External Antennas, Others - up to 6000 sq feet, Warranty - 1 year\n\n', ''),
(69, 2, 33, 19, 0, '1', '5', ' Asus RT-AC3200 Tri-Band 3200Mbps Wireless Router', '', 'upload_image/product_image_0/Asus-RT-AC3200-Tri-Band_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 27300.00, 25600.00, 'Brand - Asus, Model - RT-AC3200 Tri-Band, Network Standards - IEEE 802.11a, 11b, 11g, 11n, 11ac, IPv4, IPv6, Outdoor Range - Above 5000 sq Meters, Data Transfer Rates - 3200 Mbps, Security Protocols - 64-bit WEP, 128-bit WEP, WPA2-PSK, WPA-PSK, WPA-Enterprise , WPA2-Enterprise , Radius with 802.1x, WPS support, Firewall Protoccols - SPI intrusion detection,DoS protection, Interface - 1 x USB2.0, 1 x USB3.0, 1 x RJ45 WAN, 4 x RJ45 LAN, Antena - 6 x External Antenna, Warranty - 1 year, Specialty - 3G/4G data sharing, AiCloud, Printer server, Download Master, AiDisK, Multiple SSIDs, Parental Control', ''),
(70, 2, 33, 19, 0, '1', '5', 'D-Link DWR-113 150Mbps 3G Wireless Router', '', 'upload_image/product_image_0/D_Link__DWR-113_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1650.00, 1500.00, 'Brand - D-Link, Model - DWR-113, Network Standards - IEEE 802.11g, 11b, 3, 3u, Outdoor Range - 400 Sq Meter, Data Transfer Rates - 150 Mbps, Security Protocols - WPA, WPA2, WPS, WEP, Firewall Protoccols - NAT, SPI, Interface - 4 x LAN, 1 x WAN, 1 x USB2.0, Antena - 1 x 2dpi external Antenna, Others - 1200-1500 sq ft., Warranty - 3 year', ''),
(71, 2, 33, 19, 0, '1', '5', 'D-Link DWR-111 3G 150Mbps Wireless Router', '', 'upload_image/product_image_0/D-Link-DWR-111-3G_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 2300.00, 1900.00, 'Brand - D-Link, Model - DWR-111 3G, Network Standards - 802.11g,b, 3, 3u, Outdoor Range - 200 Sq Meter, Data Transfer Rates - 150 Mbps, Security Protocols - 64/128-bit WEP, WPA & WPA2, Wi-Fi Protected Setup (WPS), PBC/PIN,, Firewall Protoccols - NAT, SPI, MAC address filtering, Website filtering, Interface - 1 x WAN, 1 x LAN, 1 x USB2.0, Antena - Built-In Antenna, Others - 600-800 sq ft., Warranty - 3 year, Specialty - Compatible Mobile Networks: EV-DO/CDMA HSPA+/HSUPA/HSDPA/UMTS, Part No - DWR-111', ''),
(72, 2, 33, 19, 0, '1', '5', 'D-Link D/R-615 Network', '', 'upload_image/product_image_0/Network_Ruter_Dlink_03_001_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 2300.00, 2000.00, 'Model - D-Link D/R-615, Network Standards - 802.11n,802.11b,802.11g, Outdoor Range (Meters) - 300, Data Transfer Rates (Mbps) - 10/100, Security Protocols - WPA, TKIP, AES, WEP, MAC,WPA/WPA2, Warranty - 1', ''),
(73, 2, 33, 19, 0, '1', '5', 'D-Link DWR-116 4G/3G 300Mbps Wireless Router', '', 'upload_image/product_image_0/D-Link-DWR-116_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 3000.00, 2500.00, 'Brand - D-Link, Model - DWR-116, Network Standards - IEEE 802.11b, 11g, 11n, 3, 3u, Outdoor Range - 400 sq Meter, Data Transfer Rates - 300 Mbps, Security Protocols - 64/128-bit WEP, WPA & WPA2 , WPS, Firewall Protoccols - NAT, SPI, Website Filtering, MAC Address Filtering, Interface - 4 x LAN, 1 x WAN, 1 x USB2.0, Antena - 2 x External Antennas, Others - Compatible Mobile Networks: EV-DO/CDMA, 4G LTE/HSPA+/HSUPA/HSDPA/UMTS, Warranty - 3 year, Part No - DWR-116', '');
INSERT INTO `tbl_product` (`product_id`, `category_id`, `subcategory_id`, `item_id`, `brand_id`, `size`, `color`, `product_name`, `product_code`, `product_image_0`, `product_image_1`, `product_image_2`, `product_image_3`, `product_image_4`, `special_product`, `delivery_time`, `delivery_area`, `delivery_charge_inside`, `delivery_charge_outside`, `product_quantity`, `product_old_price`, `product_price`, `product_description`, `extra_information`) VALUES
(74, 2, 33, 19, 0, '1', '5', 'D-Link DIR-816 750 Mbps Dual Band Wireless Router', '', 'upload_image/product_image_0/D-Link-DIR-816-34_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 3500.00, 3200.00, 'Brand - D-Link, Model - D-Link DIR-816, Network Standards - IEEE 802.11a/b/g/n, Outdoor Range - 1000 sq. metre, Data Transfer Rates - 750Mbps, Security Protocols - WPA & WPA2 (Wi-Fi Protected Access), WPS (Wi-Fi Protected Setup), Interface - IEEE 802.11ac wireless LAN1, IEEE 802.11 a/b/g/n wireless LAN, 10/100 fast Ethernet WAN port, Four 10/100 fast Ethernet LAN ports, Antena - 3 x external antennas, Others - 2500-3000 sq ft, Warranty - 3 year', ''),
(75, 2, 33, 19, 0, '1', '5', 'D-Link DAP-1350 Wireless N Router/With Access Point', '', 'upload_image/product_image_0/D-Link__DAP_1350_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 6000.00, 5500.00, 'Brand - D-Link, Model - DAP-1350, Network Standards - IEEE 802.11n, 11g, 11b, 3u, Outdoor Range - 400 sq meter, Data Transfer Rates - 300 Mbps, Security Protocols - 64 bit WEP, 128-bit WEP, WPA, WPA2, WPS, Interface - WAN, LAN, USB Port, Antena - 2 x Integrated Antennas, Others - 1200- 1500 sq ft., Warranty - 3 year, Specialty - Operation Frequencies : 2.4 - 2.4835 GHz', ''),
(76, 2, 33, 19, 0, '1', '4', 'D-Link Dir-457U 3G Pocket Router', '', 'upload_image/product_image_0/D_Link__Dir_457U_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 10000.00, 9000.00, 'Brand - D-Link, Model - Dir-457U 3G, Network Standards - IEEE 802.11g, 11b,n, Data Transfer Rates - 54 Mbps, Security Protocols - WPS, WPA-PSK / WPA2-PSK, Firewall Protoccols - SPI, DOS, Port scan, MAC address filtering, Interface - LAN, WLAN, 6-Pin SIM Card Slot, 1 x mini-USB,, Warranty - 3 year', ''),
(77, 2, 33, 19, 0, '1', '1', 'D-Link DIR-890L AC3200Mbps Dual Band Cloud Gigabit Wireless Router', '', 'upload_image/product_image_0/D-Link-DIR-890L-32_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 23000.00, 21000.00, 'Brand - D-Link, Model - D-Link DIR-890L, Network Standards - IEEE 802.11ac, 11n, 11g, 11a, 3, 3u, Outdoor Range - Above 2000 sq meter, Data Transfer Rates - 3200Mbps, Security Protocols - WPA & WPA2 (Wi-Fi Protected Access), Wi-Fi Protected Setup (WPS) PIN/PBC, Interface - 4 x 10/100/1000 Gigabit LAN ports, 1 x 10/100/1000 Gigabit WAN por, 2 x USB ports (one USB 3.0, one USB 2.0), Antena - 6, Others - Above 5000sq ft., Warranty - 1 year', ''),
(78, 2, 33, 19, 0, '1', '4', 'TP-Link TL-WR720N 150Mbps Wireless Router', '', 'upload_image/product_image_0/TP_Link_TL_WR720N_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1100.00, 1050.00, 'Brand - TP-Link, Model - TL-WR720N, Network Standards - IEEE 802.11b, 11g, 11n, Outdoor Range - 200 Sq Meter, Data Transfer Rates - 150 Mbps, Security Protocols - 64/128/152-bit WEP, WPA, WPA2, WPA-PSK / WPA2-PSK, Firewall Protoccols - DoS, SPI, MAC, Interface - 2 x LAN, 1 x WAN, Antena - No, Others - 600-800 sq ft., Warranty - 1 year', ''),
(79, 2, 33, 19, 0, '1', '4', 'TP-Link TL-WR720N 150Mbps Wireless Router With Antenna', '', 'upload_image/product_image_0/TP-Link-TL-WR720N_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1400.00, 1250.00, 'Brand - TP-Link, Model - TL-WR720N, Network Standards - IEEE 802.11b, 11g, 11n, Outdoor Range - 200 Sq. Meters, Data Transfer Rates - 150 Mbps, Security Protocols - WPA2, WPA2-PSK, WPA-PSK, Firewall Protoccols - DoS, SPI, IP Address Filter/MAC Address Filter/Domain Filter, IP and MAC Address Binding, Interface - 2 x LAN, 1 x WAN, Antena - 1 X 5dBi External Antenna, Others - 600-800 Sq. feet, Warranty - 1 year', ''),
(80, 2, 33, 19, 0, '1', '4', 'TP-Link TL-WR740N', '', 'upload_image/product_image_0/TP_Link__TL_WR740N_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1600.00, 1500.00, 'Brand - TP-Link, Model - TL-WR740N, Network Standards - IEEE 802.11n, 11g, 11b, Outdoor Range - 200 Sq Meter, Data Transfer Rates - 150 Mbps, Security Protocols - 64/128/152-bit WEP / WPA / WPA2,WPA-PSK / WPA2-PSK, Firewall Protoccols - DoS, SPI Firewall, IP Address Filter/MAC Address Filter/Domain Filter, IP and MAC Address Binding, Interface - 4 x LAN, 1 x WAN, Antena - 1 X 5dBi External Antenna, Others - 600-800 sq ft., Warranty - 1 year, Specialty - Frequency: 2.4-2.4835GHz', ''),
(81, 2, 33, 19, 0, '1', '4', 'TP-Link TL-WR841N 300Mbps', '', '', '', '', '', '', 0, '', '', 0.00, 0.00, '', 2300.00, 2100.00, 'Model - TP-Link TL-WR841N, Type - Wireless Router, Network Standards - IEEE 802.11n, IEEE 802.11g, IEEE 802.11b, Outdoor Range (Meters) - 400 Square Meter, Data Transfer Rates (Mbps) - 300, Security Protocols - 64/128/152-bit WEP / WPA / WPA2,WPA-PSK / WPA2-PSK, Firewall Protoccols - DoS, SPI Firewall IP Address Filter/MAC Address Filter/Domain Filter IP and MAC Address Binding, Interface - 4 10/100Mbps LAN PORTS 1 10/100Mbps WAN PORT, Warranty - 1 year, Specialty - Wireless Router, Others - 1200-1500 sqft,Antenna -2', ''),
(82, 2, 33, 19, 0, '1', '4', 'TP-LINK TL-WR845N 300Mbps Wireless Router (3 Antenna)', '', 'upload_image/product_image_0/TP-LINK-TL-WR845N-60_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 2500.00, 2300.00, 'Brand - TP-LINK, Model - TL-WR845N, Network Standards - IEEE 802.11n, 11g, 11b, Outdoor Range - 400 Sq Meter, Data Transfer Rates - 300Mbps, Security Protocols - WEP, WPA / WPA2, WPA-PSK / WPA2-PSK, Firewall Protoccols - DoS, SPI Firewall, IP Address Filter/MAC Address Filter/Domain Filter, IP and MAC Address Binding, Interface - 4 x 10/100Mbps LAN Ports, 1 x 10/100Mbps WAN Port, Antena - 3 x 3dBi Detachable Omni Directional Antenna (RP-SMA), Others - 1200 - 1500 sq ft, Warranty - 1 year', ''),
(83, 2, 33, 19, 0, '1', '5', 'TP-LINK TL-WR940N V3.0 450MBPS', '', 'upload_image/product_image_0/TL-WR940N_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 3200.00, 2900.00, 'Brand - TP-Link, Model - TL-WR940N V3.0, Network Standards - IEEE 802.11n, 11g, 11b, Outdoor Range - 500 sq meters, Data Transfer Rates - 450 Mbps, Security Protocols - 64/128/152-bit WEP / WPA / WPA2,WPA-PSK / WPA2-PSK, Firewall Protoccols - DoS, SPI Firewall, IP Address Filter/MAC Address Filter/Domain Filter, IP and MAC Address Binding, Interface - 4 x LAN, 1 x WAN, Antena - 3 x 5dBi External Antenna, Others - 1400 - 1800 sq ft., Warranty - 1 year', ''),
(84, 2, 33, 19, 0, '1', '4', 'TP-Link TL-WR1042ND', '', 'upload_image/product_image_0/TP_Link_TL_WR1042ND_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 4000.00, 3700.00, 'Brand - TP-Link, Model - TL-WR1042ND, Network Standards - IEEE 802.11b, 11g, 11n, Outdoor Range - 400 sq meter, Data Transfer Rates - 300 Mbps, Security Protocols - 64/128-bit WEP ,WPA/WPA2, WPA-PSK/WPA2-PSK, Firewall Protoccols - DoS, SPI Firewall IP Address Filter/MAC Address Filter/Domain Filter IP and MAC Address Binding, Interface - 4 x LAN, 1 x WAN, 2 x USB2.0, Antena - 2 x 3dBi External Antenna, Others - 1200- 1500 sq ft., Warranty - 1 year', ''),
(85, 2, 33, 19, 0, '1', '5', 'TP-Link TL-WR941HP 450Mbps High Power Wireless N Router', '', 'upload_image/product_image_0/TP-Link-TL-WR941HP-62_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 4500.00, 4200.00, 'Brand - TP-Link, Model - TL-WR941HP, Network Standards - IEEE 802.11n, 11g, 11b, Outdoor Range - 500 Sq. meters, Data Transfer Rates - 450Mbps, Firewall Protoccols - DoS, SPI Firewall, IP Address Filter/MAC Address Filter/Domain Filter, IP and MAC Address Binding, Interface - 4 x 10/100Mbps LAN, 1 x 10/100Mbps WAN, Antena - 3 x 9dBi Detachable Omni Directional Antenna, Others - 1400 - 1800 Sq ft., Warranty - 1 year', ''),
(86, 2, 33, 19, 0, '1', '5', 'TP-Link Touch P5 AC1900 Gigabit Wireless Router with Touchscreen Control Panel', '', 'upload_image/product_image_0/TP-Link-Touch-P5-AC1900_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 15000.00, 14200.00, 'Brand - TP-Link, Model - TP-Link Touch P5 AC1900, Network Standards - IEEE 802.11ac/n/a 5GHz, b/g/n 2.4GHz + 256QAM, Outdoor Range - Up to 2000 sq meter, Data Transfer Rates - 1300Mbps at 5GHz, 600Mbps at 2.4GHz, Security Protocols - 64/128-bit WEP, WPA/WPA2, WPA-PSK/WPA-PSK2 encryptions, Interface - 4 10/100/1000Mbps LAN Ports, 1 10/100/1000Mbps WAN Port, 1 USB 3.0 Port + 1 USB 2.0 Port, Antena - 3 x External Dual Band Antennas, Others - System Requirements: Microsoft Windows 98SE, NT, 2000, XP, Vista or Windows 7, 8, 8.1,10， Mac OS, NetWare, UNIX or Linux, DHCP: Server, Client, DHCP Client List, Address Reservation, WAN Type: Dynamic IP/Static IP/PPPoE/PPTP(Dual Access)/L2TP(Dual, Specialty - Screen Type: Capacitive, Screen Size: 4.3 inch, Screen Resolution: 128 ppi, Warranty - 1 year', ''),
(87, 2, 33, 19, 0, '1', '5', 'TP-Link Archer C3200 Tri-Band 3200Mbps Gigabit Wireless', '', '', '', '', '', '', 0, '', '', 0.00, 0.00, '', 23500.00, 22300.00, 'Brand - TP-Link, Model - Archer C3200, Network Standards - IEEE 802.11ac/11b, Outdoor Range - 2.4GHz(600Mbps) 1000sq meter / 5GHz(1300Mbps) 1500sq meter, Security Protocols - 64/128-bit WEP, WPA/WPA2, WPA-PSK/WPA2-PSK, Interface - 4 x 10/100/1000Mbps, 1 x 10/100/1000Mbps, 1 USB 3.0/1 USB 2.0, Antena - 3 x dual / 3 x single, Others - 2500 - 5000 sq ft., Warranty - 1 year', ''),
(88, 2, 33, 19, 0, '1', '5', 'Trendnet TEW-651BR', '', 'upload_image/product_image_0/Trendnet__TE_651BR_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-1', 1800.00, 1700.00, 'Trendnet TEW-651BR', ''),
(89, 2, 33, 19, 0, '1', '5', 'Trendnet TEW-731BRP', '', 'upload_image/product_image_0/Trendnet__TEW_731BRP_thumb.jpg', '', '', '', '', 1, '', '', 0.00, 0.00, '-3', 2500.00, 2300.00, 'Brand - Trendnet, Model - TEW-731BRP, Network Standards - IEEE 802.3 (10BASE-T), 802.3u (100BASE-TX), 11b, 11g, 11n, 3az, Outdoor Range - 400 Sq. Meter, Data Transfer Rates - 300 Mbps, Security Protocols - 64/128-bit WEP (HEX/ASCII), WPA/WPA2-RADIUS, WPA/WPA2-PSK, Firewall Protoccols - SPI, NAT, Antena - 2 x 2dBi External antennas, Others - 1200-1500 sq ft., Warranty - 1 year', ''),
(90, 2, 33, 19, 0, '1', '4', 'Totolink N150RT 150Mbps 1x5dBi Antena Wireless Router', '', 'upload_image/product_image_0/Totolink-N150RT-150Mbps_thumb.jpg', '', '', '', '', 1, '', '', 0.00, 0.00, '-1', 1600.00, 1500.00, 'Brand - Totolink, Model - Totolink N150RT, Network Standards - IEEE 802.11n, 11g, 11b, Outdoor Range - 200 Sq.Meter, Data Transfer Rates - 150Mbps, Security Protocols - 64/128-bit WEP, WPA/WPA2 (AES/TKIP), Firewall Protoccols - IP Filtering / Port Filtering / MAC Filtering / URL Filtering, Port Forwarding / DMZ / Denial- of- Service / NAT Mapping, Interface - 4 x 10/100Mbps LAN Ports, 1 x 10/100Mbps WAN Port, Antena - 1 x 5dBi Antena, Others - Range : Up to 800 Sq. Feet, Power Supply: 9V DC/0.5A, LED Indicators : 1 x Power, 1 x CPU, 1 x Wireless, 1 x WAN, 4 x LAN, RF Frequency: 2.4 ~ 2.4835GHz,, Warranty - 1 year', ''),
(91, 2, 33, 19, 0, '1', '4', 'Totolink N300RT 300Mbps Router', '', 'upload_image/product_image_0/Totolink-N300RT-300Mbps_thumb.jpg', '', '', '', '', 1, '', '', 0.00, 0.00, '', 2000.00, 1800.00, 'Totolink N300RT 300Mbps Router', ''),
(92, 2, 33, 19, 0, '1', '4', 'Totolink N302R+ 300Mbps Wireless N Router', '', 'upload_image/product_image_0/Totolink-N302R+-300Mbps_thumb.jpg', '', '', '', '', 1, '', '', 0.00, 0.00, '-1', 2400.00, 2200.00, 'Brand - Totolink, Model - Totolink N302R, Network Standards - IEEE 802.11n, 11g, 11b, Outdoor Range - 400 Sq. Meter, Data Transfer Rates - 300Mbps, Security Protocols - 64/128-bit WEP, WPA/WPA2, WPA-PSK/WPA2-PSK (TKIP/AES), Firewall Protoccols - Internet Access Control: IP/MAC Address filtering, Interface - 4 x 10/100Mbps LAN Ports, 1 x 10/100Mbps WAN Port, Antena - 3 x 5dBi Antena, Others - Outdoor Range: Up to 1500 Sq.Feet, RF Frequency: 2.4~2.4835GHz, Specialty - Remotely VPN access, PPPoE, DHCP and Static IP broadband functions, Universal Repeater, Warranty - 1 year', ''),
(93, 2, 33, 19, 0, '1', '4', 'Totolink A850R AC1200Mbps Wireless Dual Band Gigabit Router+Access Point', '', 'upload_image/product_image_0/Totolink-A850R-AC1200Mbps-4_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 4500.00, 4200.00, 'Brand - Totolink, Model - Totolink A850R, Network Standards - IEEE 802.11ac, 11a, 11b, 11g, 11n, Outdoor Range - 1300 Sq. Meter, Data Transfer Rates - 1200Mbps, Security Protocols - 64/128-bit WEP, WPA/WPA2, WPA-PSK/WPA2-PSK (TKIP/AES), Firewall Protoccols - P Filtering, Port Filtering, MAC Filtering, URL Filtering, Port Forwarding, DMZ, Denial- of- Service, NAT Mapping, Interface - 4 x 100Mbps LAN Ports, 1 x 100Mbps WAN Port, Antena - 4 x 4dbi Antena, Others - Outdoor Range: 3000 - 4500 Sq.Feet, Power Supply: 12V DC / 1A, RF Frequency: 2.4GHz/5GHz, Specialty - Multiple Wireless Network for Access Control, Multi-SSID, WDS, QoS, Dual Band Gigabit Router+Access Point, Warranty - 1 year', ''),
(94, 2, 33, 19, 0, '1', '4', 'Totolink A2004NS AC1200 Mbps Wireless Dual Band Gigabit Router', '', 'upload_image/product_image_0/Totolink-A2004NS-AC1200-Mbp_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 5000.00, 4800.00, 'Brand - Totolink, Model - Totolink A2004NS, Network Standards - IEEE 802.11ac, 11n, 11g, 11b, 11a, Outdoor Range - 1300 Sq. Meter, Data Transfer Rates - 1200Mbps, Security Protocols - 64/128-bit WEP, WPA/WPA2, WPA-PSK / WPA2-PSK (TKIP / AES), Firewall Protoccols - Internet Access Control: IP/MAC Address filtering, Interface - 4 x 10/100Mbps LAN Ports, 1 x 10/100Mbps WAN Port, 1 x USB2.0, Antena - 4 x 4dbi Antena, Others - Outdoor Range: 3000 - 4500 Sq.Feet, RF Frequency: 2.4GHz/5GHz, Power Supply: 12V DC/2, A, Specialty - Dual Band Gigabit, Warranty - 1 year', ''),
(95, 2, 10, 37, 0, '1', '4', 'Brother HL-1110', '', 'upload_image/product_image_0/Brother-HL-1110_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 5800.00, 5500.00, 'Model - Brother HL-1110, Functions - Print Only, Printer Type - Mono Laser printer, Speed PPM (Black) - 20PPM, Print Resolution (Pixel) - 600 x 600dpi, Paper Size - A4, Letter, Legal, Folio, Interface - USB 2.0 Full Speed, Memory (MB) - 1MB, OS Compatibility - Windows XP Home Edition, XP Professional Edition, XP Professional x64 Edition, Windows Vista, Windows 7, Windows Server 2003 , Windows Server 2003 x64 Edition, Windows Server 2008, Windows Server 2008 R2 (Network Only), Dimensions (WxHxD) - 340 x 238 x 189 mm, Weight (Kg) - 5.20Kg, Warranty - 3 year, Consumable - TN-1000, Others - Standard Tray: 150 sheets,Paper Output:100 Sheets Face Down. DRAM: DR-1000 , Toner Cartridge Black : TN-1000, Part No - HL-1110', ''),
(96, 2, 10, 37, 0, '1', '4', 'Brother HL 1210W', '', 'upload_image/product_image_0/Brother-HL-1210W_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 6900.00, 6500.00, 'Model - Brother HL 1210W, Functions - Only Print, Printer Type - Mono Laser Printer, Speed PPM (Black) - 20ppm, Print Resolution (Pixel) - 2400 x 600dpi, Paper Size - A4, Letter, A5, A5(Long Edge), Legal, Folio, B5, Executive, Custom: 148 to 216 mm(W) X 148 to 355.6 mm(L), Interface - USB 2.0 Hi-Speed, WiFi, Memory (MB) - 32MB, OS Compatibility - Window 8.1/8/7, Windows Vista, Windows XP Home/Professional/Professional x64, Windows Server 2012/2012 R2/2008 R2/2008/2003 x64 Edition/2003,Mac OS X v10.9.x, 10.8.x, 10.7.5, Dimensions (WxHxD) - 340 x 238 x 189mm, Weight (Kg) - 4.60Kg, Consumable - TN1050, DR-1050, Others - Toner Cartridge: TN1050 (1,000 A4 pages), Mono Laser Drum: DR-1050 (Yield: 10,000pages), Specialty - Manual Duplex, Warranty - 3 year', ''),
(97, 2, 10, 37, 0, '1', '4', 'Brother HL 1210W', '', 'upload_image/product_image_0/Brother-HL-1210W_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 6900.00, 6500.00, 'Model - Brother HL 1210W, Functions - Only Print, Printer Type - Mono Laser Printer, Speed PPM (Black) - 20ppm, Print Resolution (Pixel) - 2400 x 600dpi, Paper Size - A4, Letter, A5, A5(Long Edge), Legal, Folio, B5, Executive, Custom: 148 to 216 mm(W) X 148 to 355.6 mm(L), Interface - USB 2.0 Hi-Speed, WiFi, Memory (MB) - 32MB, OS Compatibility - Window 8.1/8/7, Windows Vista, Windows XP Home/Professional/Professional x64, Windows Server 2012/2012 R2/2008 R2/2008/2003 x64 Edition/2003,Mac OS X v10.9.x, 10.8.x, 10.7.5, Dimensions (WxHxD) - 340 x 238 x 189mm, Weight (Kg) - 4.60Kg, Consumable - TN1050, DR-1050, Others - Toner Cartridge: TN1050 (1,000 A4 pages), Mono Laser Drum: DR-1050 (Yield: 10,000pages), Specialty - Manual Duplex, Warranty - 3 year', ''),
(98, 2, 10, 37, 0, '1', '4', 'Brother DCP-1510', '', 'upload_image/product_image_0/Brother-DCP-1510_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 8600.00, 8200.00, 'Model - Brother DCP-1510, Functions - Compact, Print, Copy, Scan, Colour, ID copy, Printer Type - Monochrome Laser Multifunction Printer, Speed PPM (Black) - Up to 20/ 21ppm, Print Resolution (Pixel) - 2400 x 600dpi, Scan Resolution (Pixel) - 600 x 1,200dpi, Copy Speed - 20 / 21 cpm, Copy Resolution (Pixel) - 600 x 600 dpi, Duplex - Manual, Paper Size - A4, Letter, Legal, Folio, Interface - USB 2.0, Memory (MB) - 16MB Memory, OS Compatibility - Win 8, Win 7, Win Vista, Win XP - Mac OS X 10.6.8, 10.7.x, 10.8.x - Linux3 CUPS, LPD/LPRng, Dimensions (WxHxD) - 385 x 340 x 255 mm, Weight (Kg) - 6.90Kg, Warranty - 3 year, Consumable - TN-1000, TN-1075, Black (1000pages), Others - 2-sided Printing: Manual Duplex, Poster Printing: Enlarge 1 A4 page into a poster using 4, 9, 16 or 25 A4 pages, Part No - DCP-1510', ''),
(99, 2, 10, 37, 0, '1', '4', 'Brother DCP-1610W', '', 'upload_image/product_image_0/Brother-DCP-1610W-Printer_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 10500.00, 9700.00, 'Model - Brother DCP-1610W, Functions - Print, Copy, Scan, Printer Type - Mono Laser Printer, Speed PPM (Black) - 20PPM, Print Resolution (Pixel) - 2400 x 600dpi, Scan Resolution (Pixel) - Up to 600 x 1,200dpi (from scanner glass), Up to 19,200 x 19,200dpi (interpolated), Copy Speed - 20CPM, Copy Resolution (Pixel) - 600 x 600dpi, Duplex - Manual, Paper Size - A4, Interface - Hi-Speed USB 2.0, WiFi, Memory (MB) - 32MB, OS Compatibility - Windows 8(32 & 64 bit editions), Windows 7 (32 & 64 bit editions), Windows Vista (32 & 64 bit editions), Windows XP Professional (32 & 64 bit editions), Windows XP Home Edition, Windows Server 2012R2, Windows Server 2012, Windows Server 2008R2, Windows Server 2008 (32 & 64 bit editions), Windows Server 2003 (32 & 64 bit editions). Note that Windows Server supports network printing only. OS X 10.7.5, 10.8.x, 10.9.x or greater. Linux CUPS, LPD/LPRng (x86/x64 environment), Dimensions (WxHxD) - 481 x 436 x 406mm, Weight (Kg) - 9Kg, Consumable - Toner: TN1050 (1000pages), Drum: DR-1050 (10,000 A4 Pages), Others - Processor: 200MHz, Media type: Plain & recycled paper, A4, Letter, Legal, Folio, A5 ,A5(Long Edge), B5, Executive, Media weight: 65 - 105 gsm, Specialty - Mobile connectivity: iPrint&Scan, Warranty - 1 year', ''),
(100, 2, 10, 37, 0, '1', '5', 'Brother HL 3150CDN', '', 'upload_image/product_image_0/Brother-HL-3150CDN_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 18000.00, 17000.00, 'Model - Brother HL 3150CDN, Functions - Only Print, Printer Type - Color Laser, Speed PPM (Black) - 18ppm, Speed PPM (Color) - 18ppm, Print Resolution (Pixel) - 2400 x 600dpi, Paper Size - A4, Letter, B5 (ISO/JIS), A5, A5(Long Edge), A6, Executive, Legal, Folio, JISB5, Interface - USB 2.0 Hi-Speed , Ethernet 10/100 Base-TX, Memory (MB) - 64MB, OS Compatibility - Windows Vista, XP Home Edition, XP Professional Edition, XP Professional x64 Edition, Server 2003 , Server 2003 x64 Edition, Server 2008, 7, 8 , Server 2008 R2 (Network Only), Server 2012, Mac OS X 10.6.8, 10.7.x and 10.8.x (Available for download here), Dimensions (WxHxD) - 410 x 465 x 240mm, Weight (Kg) - 18.40Kg, Consumable - TN-261BK (2,500pages), TN-261 C / M/ Y (1400pages), TN-265 C / M /Y (2,200pages), Others - Booklet Printing: Print 4 pages to every piece of paper (2 pages per side) and fold it in the middle, Poster Printing: Enlarge 1 A4 page into a poster using 4, 9, 16 or 25 A4 pages, Specialty - 2-sided Printing: Automatic Double-sided print up to 7 sides per minute, Warranty - 3 year', ''),
(101, 2, 10, 37, 0, '1', '5', 'Brother MFC-L2700DW', '', 'upload_image/product_image_0/Brother-MFC-L2700DW-57_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 19000.00, 18200.00, 'Model - Brother MFC-l2700DW, Functions - Print, Copy, Scan, Fax, Printer Type - Mono Laser Printer, Speed PPM (Black) - 27PPM, Print Resolution (Pixel) - 2400 x 600dpi, Scan Resolution (Pixel) - 600 x 2400dpi, Copy Speed - 27CPM, Copy Resolution (Pixel) - 2400 x 600dpi, Fax Speed (kbps) - 33.6K bps, Duplex - Automatic, Paper Size - Letter, Legal, Executive, A4, A5, A6, B5, B6, Envelopes, Custom Sizes (3.0-8.5" (w), 4.57-14" (l)), Interface - Hi-Speed USB 2.0, LAN, WiFi, Memory (MB) - 32MB, Dimensions (WxHxD) - 22.3" x 20.4"x 17.1", Weight (Kg) - 13.78Kg, Consumable - TN630 (1,200 pages) , TN660 (2,600pages), Others - Mobile Device Compatibility: AirPrint, Google Cloud Print, Brother iPrint&Scan, Cortado Workplace, Wi-Fi Direct, Max. Automatic Document Feeder Capacity: 35-Page ADF, ID Copy: Yes, Fax Page Memory: Up to 400 page, Standard Input Paper Capacity: 250-Sheet Input, Maximum Monthly Duty Cycle: 10,000pages, Warranty - 3 year', ''),
(102, 2, 10, 37, 0, '1', '5', 'Brother MFC-8910 DW', '', 'upload_image/product_image_0/Brother-MFC-8910-DW-31_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 53500.00, 51000.00, 'Model - Brother MFC-8910DW, Functions - All in one (Print, Scan, Copy & Fax), Printer Type - Multifunction Mono Laser, Speed PPM (Black) - 42, Print Resolution (Pixel) - 1200 x 1200, Scan Resolution (Pixel) - 1200 x 1200 (Optical), Copy Speed - 42 cpm, Fax Speed (kbps) - 33.6 Kbps Super G3 Fax Modem, Paper Size - Letter, Legal, Executive, A4, A5, A6, B5, B6, Envelopes, Interface - Wireless 802.11b/g/n, Ethernet, Hi-Speed USB 2.0, Memory (MB) - 128, OS Compatibility - Windows & Mac, Dimensions (WxHxD) - 19.3" x 16.3" x 17.6", Weight (Kg) - 36.8 lbs., Warranty - 1 year, Others - Consumable Type: Toner Cartridge & Drum Unit., Part No - MFC-8910 DW', ''),
(103, 2, 10, 37, 0, '1', '4', 'Canon LBP6030', '', 'upload_image/product_image_0/Canon-LBP6030_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 8000.00, 7600.00, 'Model - Canon LBP6030, Functions - Print Only, Printer Type - Laser Printer, Speed PPM (Black) - 18 PPM Black, Print Resolution (Pixel) - 600 x 600dpi, Paper Size - A4/B5/A5/LGL/LTR/EXE/16K/Custom size, Plain paper, Heavy Paper, Transparency, Standard,, Interface - USB 2.0 Hi-Speed, Memory (MB) - 32MB, OS Compatibility - Win 8.1(32/64bit)/Win 8(32/64bit)/Win 7(32/64bit)/Win Vista(32/64bit)/XP(32/64bit)/Server 2012(32/64bit)/Server 2012 R2(64bit)/XP(32/64bit)/Server 2012(32/64bit)/Server 2012 R2(64bit)/Server 2008(32/64bit) / Server 2008 R2(64bit)/ 2003 Server(32/64bit)/Mac OS X 10.6～ /Linux?/Citrix（FR2）, Dimensions (WxHxD) - 364 mm x 249 mm x 199 mm, Weight (Kg) - 5Kg, Consumable - 325, 725, Part No - LBP-6030, Warranty - 1 year', ''),
(104, 2, 10, 37, 0, '1', '4', 'Canon LBP 6030W', '', 'upload_image/product_image_0/Canon-LBP-6030W_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 8200.00, 8000.00, 'Model - Canon LBP 6030W, Functions - Only Print, Printer Type - Monochrome Laser Printer, Speed PPM (Black) - 19PPM, Print Resolution (Pixel) - 600 x 600dpi, Duplex - No, Paper Size - Letter, Legal, A4, A5, B5, Executive, Interface - USB 2.0 Hi-Speed, WiFi, Memory (MB) - 32MB, OS Compatibility - Windows 8.1, 8, 7, Windows Server 2012, Windows Server 2008, Windows Server 2008 R2, Windows Vista, Windows Server 2003, Windows XP, Citrix, Mac OS X 10.6 and up, Dimensions (WxHxD) - 14.3 x 9.8 x 7.8, Weight (Kg) - 6.30Kg, Consumable - Cartridge 125 Black (1600pages), Others - Media Types: Plain Paper, Heavy Paper, Transparency, Label, Envelope, Embedded Web Server (Remote UI): Yes, Duty Cycle per month: Up to 5,000 pages, Specialty - Mobile Functions: Canon Mobile Printing, Warranty - 1 year', ''),
(105, 2, 10, 37, 0, '1', '4', 'Canon LBP 3300', '', 'upload_image/product_image_0/Printer_3300_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 12000.00, 11500.00, 'Model - Canon LBP 3300, Functions - Print Only, Printer Type - Mono Laser, Speed PPM (Black) - 21 PPM Black, Print Resolution (Pixel) - 2400 x 600 dpi, Paper Size - A4, B5, A5, Legal, Letter, Executive, Interface - USB 2.0, Memory (MB) - 8MB, OS Compatibility - Windows 98/ Me/ 2000/ Server 2003/ XP/ Vista, Linux, Dimensions (WxHxD) - 369.7 x 375.7 x 257.7 mm, Weight (Kg) - 11.80Kg, Warranty - 1 year, Consumable - 308, Part No - LBP-3300', ''),
(106, 2, 10, 37, 0, '1', '4', 'Canon LBP 6780X', '', 'upload_image/product_image_0/Imageclass-LBP6780X_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 58000.00, 55000.00, 'Model - Canon LBP 6780X, Functions - Laser Printer, Printer Type - Print Only, Speed PPM (Black) - 42ppm (Mono), 20.5ppm (Duplex), Print Resolution (Pixel) - 600 x 600dpi, Paper - A4 / B5 / A5 / A6 / Legal* / Letter / EXE / 16K / 8.5"?3", Custom sizes (Width 105.0 - 215.9mm x Length 148.0 - 355.6mm), Legal refers to paper measuring 215.9 x 355.6mm (8.5 x14 inches), Interface - USB 2.0 High Speed, 10Base-T / 100Base-TX / 1000Base-T, SD Card Slot x 1, Memory (MB) - 768MB, OS Compatibility - WindowsXP, Server 2003, Vista, Server 2008 R2, Win 7 (32bit / 64bit), Dimensions (WxHxD) - 454 x 424 x 345mm, Weight (Kg) - 16.6kg, Others - Paper Type: Plain Paper / Heavy Paper / Transparency / Label / Index Card / Envelope, Toner Cartridge: Cartridge 324 (6,000 pages), Cartridge 324 II (12,500 pages), Warranty - 1 year', ''),
(107, 2, 10, 37, 0, '1', '4', 'Canon LBP 6780dn', '', 'upload_image/product_image_0/Imageclass-LBP6780X_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 57500.00, 56000.00, 'Canon LBP 6780dn', ''),
(108, 2, 10, 37, 0, '1', '4', ' Canon LBP 8780x', '', 'upload_image/product_image_0/Canon-LBP-8780x_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 94000.00, 92000.00, ' Canon LBP 8780x', ''),
(109, 2, 38, 27, 0, '1', '5', 'Canon EOS 1200D Digital SLR Camera Body with EF-S 18-55mm Lens', '', 'upload_image/product_image_0/Canon-_EOS_-1200D_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 30000.00, 29000.00, 'Model - Canon EOS 1200D, Effective pixels - 18 Mega Pixel, Lens Mount - EF-S 18-55mm, Sensor Type - CMOS, Display - 3.0" LCD Display, Playback zoom - 1.5x - 10x, View Finder Type - Pentamirror (95% Coverage), Front Display - No, Shutter Speed - 1/4000 to 30, Face Detection - Yes, Red-Eye Reduction - Yes, Image - 5184 x 3456, Video - 1920 x 1080, Memory Type - SD, SDHC, SDXC, USB - USB2.0, Battery - Lithium-ion Battery, Body Dimensions - 129.6 x 99.7 x 77.9 mm, Weight - 434gm, Warranty - 1 year, Specialty - Powerful DIGIC processing,Continuous shooting up to 3 frames per second,Large bright screen for clear viewing,Stunning 1080p movies', ''),
(110, 2, 38, 27, 0, '1', '5', 'Canon EOS 700D Digital SLR Camera only Body', '', 'upload_image/product_image_0/Canon_-EOS_-700D_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 38000.00, 36000.00, 'Model - Canon EOS 700D, Effective pixels - 18.0 Mega Pixel, Lens Mount - No, Sensor Type - CMOS, Display - 3.0" LCD Display, Playback zoom - 1.5x - 10x, View Finder Type - Pentamirror (95% Coverage), Front Display - No, Shutter Speed - 1/4000 to 30, Face Detection - Yes, Red-Eye Reduction - Yes, Image - 5184 x 3456, Video - 1920 x 1080, Memory Type - SD, SDHC, SDXC (UHS-I), USB - Hi-Speed USB, Battery - Lithium-ion Battery LP-E8, Body Dimensions - 133.1 x 99.8 x 78.8 mm, Weight - 580gm, Specialty - Easily create engaging movies,Control Speedlites from your camera remotely,Easily apply a look to your shots in the Basic zone,Ensures correctly exposured images in all lighting conditions,Automatically analyse your scene and select the best settings,Moveable screen for creative framing., Warranty - 1 year', ''),
(111, 2, 38, 27, 0, '1', '5', 'Canon EOS 1300D Digital SLR Camera Body with EF-S 18-55mm Lens', '', 'upload_image/product_image_0/Canon-EOS-1300D_41_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 37000.00, 36200.00, 'Model - Canon EOS 1300D, Effective pixels - 18.0 megapixels, Lens Mount - EF-S 18-55mm, Sensor Type - CMOS sensor, Display - 3" TFT color Display, Playback zoom - 1.5x - 10x, View Finder Type - Eye-level pentamirror (95% Coverage), Front Display - No, Shutter Speed - 1/4000 to 30sec., Face Detection - Yes, Red-Eye Reduction - Yes, Video - 1920 x 1080, Memory Type - SD , SDHC , SDXC, USB - Hi-Speed USB, Battery - LP-E10 lithium-ion, Body Dimensions - 129.0 x 101.3 x 77.6mm, Weight - 485gm, Specialty - Dust delete feature: Dust Delete Data appending, Clean manually, Built-in flash: Retractable, auto pop-up flash, Flash coverage: 17mm lens angle of view, Creative filters: Grainy B/W, Soft focus, Fish-eye effect, Toy camera effect, Miniature effect, Direct Printing: PictBridge-compatible printers, Interface: USB, HDMI, WiFi, Warranty - 1 year', ''),
(112, 2, 38, 27, 0, '1', '4', 'Canon EOS Kiss X7 Digital SLR Camera Body With EF-S 18-55mm Lens', '', 'upload_image/product_image_0/Canon-EOS-Kiss-X7_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 39000.00, 38500.00, 'Model - Canon EOS Kiss X7, Effective pixels - 18 mega pixel, Lens Mount - EF-S 18-55mm, Sensor Type - CMOS, Display - 3.0" LCD Display, Playback zoom - 1.5x - 10x, View Finder Type - Pentamirror (95% Coverage), Front Display - No, Shutter Speed - 1/4000 to 30, Face Detection - Yes, Red-Eye Reduction - Yes, Image - 5184 x 3456, Video - 1920 x 1080, Memory Type - SD/SDHC/SDXC, USB - USB 2.0, Battery - Lithium-ion Battery, Body Dimensions - 117 x 91 x 69 mm, Weight - 480gm, Warranty - 1year', ''),
(113, 2, 38, 27, 0, '1', '5', 'Nikon D3200 Digital SLR Camera Body with AF-S 18-55mm VR Lens', '', 'upload_image/product_image_0/Nikon-_D3200_-Digital_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 34000.00, 32000.00, 'Model - Nikon D3200, Effective pixels - 24.2 Mega Pixel, Lens Mount - AF-S 18-55mm VR, Sensor Type - CMOS, Display - 3.0" LCD Display, Playback zoom - Optical Zoom: 3x, View Finder Type - Pentamirror (95% Coverage), Front Display - No, Shutter Speed - 1/4000 to 30, Face Detection - Yes, Red-Eye Reduction - Yes, Image - 6016 x 4000, Video - 1920 x 1080, Memory Type - SD, SDHC, SDXC, USB - USB 2.0, Battery - Lithium-ion Battery, Body Dimensions - 125 x 96 x 77mm, Weight - 455gm, Warranty - 1 year', ''),
(114, 2, 38, 27, 0, '1', '5', 'Nikon D5200 Digital SLR Camera only Body', '', 'upload_image/product_image_0/Nikon-_D5200_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 35000.00, 33500.00, 'Model - Nikon D5200, Effective pixels - 24.1 Mega Pixel, Lens Mount - No, Sensor Type - CMOS, Display - 3" LCD Dispaly, View Finder Type - Pentamirror (95% Coverage), Shutter Speed - 1/4000 to 30, Face Detection - 1 to 19 EV (ISO 100, 68F/20C), Red-Eye Reduction - Yes, Image - 6016 x 4000, Video - 1920 x 1080, Memory Type - SD, SDHC, SDXC, USB - Hi-Speed 2.0, Battery - Lithium-ion Battery EN-EL14, Body Dimensions - 129 x 98 x 78mm, Weight - 455gm, Warranty - 1 year, Specialty - Full HD 1080p30 video, Internal Memory (MB): Yes', ''),
(115, 2, 38, 27, 0, '1', '5', 'Nikon D3300 Digital SLR Camera Body with AF-S 18-55mm DX Lens', '', 'upload_image/product_image_0/Nikon-D3300-14_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 35000.00, 34000.00, 'Nikon D3300 Digital SLR Camera Body with AF-S 18-55mm DX Lens', ''),
(116, 2, 40, 39, 0, '1', '5', 'A Take ACM-3005A USB Optical', '', 'upload_image/product_image_0/A-Take_01_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 375.00, 350.00, 'Model - A Take ACM-3005A, Type - Optical, Interface (USB) - Yes, Warranty (Year) - No', ''),
(117, 2, 40, 39, 0, '1', '5', 'A4 Tech OP-720 Optical USB', '', 'upload_image/product_image_0/A4-Tech_26_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 380.00, 350.00, 'A4 Tech OP-720 Optical USB', ''),
(118, 2, 40, 39, 0, '1', '5', 'A4 Tech N-322 Optical Mouse', '', 'upload_image/product_image_0/A4-Tech-N-322_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 550.00, 500.00, 'Model - A4 Tech N-322, Type - Optical Mouse, Connectivity - USB, Wheel - Yes, Warranty - No', ''),
(119, 2, 40, 39, 0, '1', '5', 'A4 Tech N-70FX Optical Mouse', '', 'upload_image/product_image_0/A4__Tech-_N-70FX_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 600.00, 550.00, 'Model - A4 Tech N-70FX, Type - Optical, Connectivity - Wired, 2X Click - Yes, Warranty - No', ''),
(120, 2, 40, 39, 0, '1', '5', 'A4 Tech N-100 USB Mouse', '', 'upload_image/product_image_0/A4-Tech-N-100_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 570.00, 550.00, 'Model - A4 Tech N-100, Type - Optical Mouse, Connectivity - USB 2.0, Wheel - Yes, Feature - Windows 2000/XP/2003/Vista/Windows 7, Warranty - No', ''),
(121, 2, 40, 39, 0, '1', '5', 'A4 Tech D-400 Optical', '', 'upload_image/product_image_0/Mouse_A4-Tech_36_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 650.00, 600.00, 'Model - D-400, Type - Optical Mouse, Connectivity - Wired, Warranty - No', ''),
(122, 2, 40, 40, 0, '1', '5', 'A4 Tech G3-200N wirelwss Mouse', '', 'upload_image/product_image_0/A4-Tech-G3-200N_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 800.00, 1000.00, 'Model - A4 Tech G3-200N, Type - wireless Mouse, Connectivity - wireless, Wheel - Yes, Feature - Resolution 1000 DPI, V-Track engine, Radius: 10 m, Warranty - No', ''),
(123, 2, 40, 40, 0, '1', '5', 'A4 Tech G11-570HX Wireless', '', 'upload_image/product_image_0/A4-Tech_37_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1500.00, 1400.00, 'Model - A4 Tech G11-570HX Wireless Mouse, Type - Wireless Mouse, Connectivity - Optical, 2X Click - Yes, Warranty - No', ''),
(124, 2, 40, 40, 0, '1', '5', 'A4 Tech G11-580HX Wireless Mouse', '', 'upload_image/product_image_0/G11-580HX_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1600.00, 1400.00, 'Model - G11-580HX, Type - Wireless Mouse, Connectivity - Wireless, 2X Click - Yes, Wheel - Yes, Warranty - No', ''),
(125, 2, 40, 39, 0, '1', '4', 'Black Cat EM-103 USB', '', 'upload_image/product_image_0/Black_-Cat__EM_103_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 270.00, 250.00, 'Model - Black Cat EM-0103/146/145/150, Interface (USB) - Yes, Type - Optical, Connectivity - Wired, Wheel - Yes', ''),
(126, 2, 40, 39, 0, '1', '4', 'Delux DLM-102 Optical', '', 'upload_image/product_image_0/Delux_15_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 400.00, 350.00, 'Model - Delux DLM-102, Interface (USB) - Yes, Type - Optical, Connectivity - Wired, Wheel - Yes', ''),
(127, 2, 40, 39, 0, '1', '4', ' Delux DLM-122 USB', '', 'upload_image/product_image_0/Delux_08_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 375.00, 350.00, 'Model - Delux DLM-122, Type - Optical, Connectivity - USB, Warranty - No Warranty', ''),
(128, 2, 40, 40, 0, '1', '5', 'Genius NX-7000 Wireless Mouse', '', 'upload_image/product_image_0/Genius-NX-7000_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 865.00, 700.00, 'Model - Genius NX-7000, Type - Wireless, Connectivity - USB, Wheel - Yes, Feature - 1200 dpi BlueEye sensor for smooth movement control, battery: 1x AA, RF frequency 2.4GHz, Warranty - 1 year', ''),
(129, 2, 40, 40, 0, '1', '5', 'Genius Traveler 6000z Black', '', 'upload_image/product_image_0/Genius__6000z_-Black_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 900.00, 750.00, 'Model - Traveler 6000z, Type - Wireless Mouse, Connectivity - Wireless, Warranty - 1 year', ''),
(130, 2, 40, 40, 0, '1', '5', 'Genius NS600 Wireless Optical', '', 'upload_image/product_image_0/Mouse_Genius_07_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1100.00, 900.00, 'Model - Genius NS600, Type - Optical, Interface (PS/2) - No, Interface (USB) - Yes, Connectivity - Wireless, 2X Click - No, Wheel - Yes, Warranty - 1 year', ''),
(131, 2, 40, 40, 0, '1', '5', 'Genius NX-6500 Wireless', '', 'upload_image/product_image_0/Genius__NX-6500_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1400.00, 1200.00, 'Model - Genius NX-6500, Type - Wireless Mouse, Connectivity - Wireless, Wheel - Yes, Warranty - 1 year', ''),
(132, 2, 40, 40, 0, '1', '8', 'Genius Micro Traveler 9000R White Wireless Mouse', '', 'upload_image/product_image_0/Genius-Micro-Traveler-9000R_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1500.00, 1400.00, 'Model - Genius Micro Traveler 9000R, Type - Wireless Mouse, Interface (PS/2) - Wireless, Interface (USB) - USB, Connectivity - Wireless, Wheel - Yes, Others - Colar: White, Warranty - 1 year', ''),
(133, 2, 40, 40, 0, '1', '1', 'Genius Micro Traveler 9000R Pink Wireless Mouse', '', 'upload_image/product_image_0/Genius-_Micro_-9000R_-Pink_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1600.00, 1500.00, 'Model - Genius Micro Traveler 9000R, Type - Wireless Mouse, Interface (USB) - USB, Connectivity - Wireless, Wheel - Yes, Others - Color : Pink, Warranty - 1 year', ''),
(134, 2, 40, 40, 0, '1', '5', 'Genius Navigator 905BT Flying Scroll Bluetooth', '', 'upload_image/product_image_0/Genius__Navigator__905BT_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1600.00, 1500.00, 'Model - Genius Navigator 905BT, Type - Optical, Connectivity - Bluetooth, 2X Click - No, Wheel - Yes, Warranty - 1 year', ''),
(135, 2, 41, 0, 0, '1', '5', 'Transcend V-700 128GB USB 3.0 Pen Drive', '', 'upload_image/product_image_0/Transcend-V-700_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 3500.00, 3300.00, 'Model - Transcend V-700, Interface - USB 3.0, Capacity (GB) - 128GB, OS Supported - Microsoft Windows 2000, XP, Vista, 7, 8, 8.1, Mac OS 9.0 or later & Linux Kernel 2.4.2, Weight (gm) - 8.5gm, Warranty - Product Lifetime', ''),
(136, 2, 41, 0, 0, '1', '8', 'Transcend JetFlash 880 64GB Silver OTG', '', 'upload_image/product_image_0/Transcend-JetFlash-880-64GB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 2200.00, 2100.00, 'Model - Transcend JetFlash 880 OTG, Interface - USB 3.0 / USB 2.0, Capacity (GB) - 64GB, OS Supported - Microsoft Windows,MAC OS 10.5, Linux .6.30, Weight (gm) - 8gm, Warranty claim duration (Approx Days) - Color: Silver, Warranty - life ime', ''),
(137, 2, 41, 0, 0, '1', '10', ' Transcend V-820 64GB', '', 'upload_image/product_image_0/Transcend-V-820-64GB_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 2000.00, 1900.00, 'Model - Transcend V-820, Interface - USB 3.0, Capacity (GB) - 64GB, Access Time Read (MBps) - 25, Access Time Write (MBps) - 80, OS Supported - Windows 2000/ME/XP/Vista/7, MAC/ Linux, Warranty (Year) - Product life time', ''),
(138, 2, 41, 0, 0, '1', '5', 'Transcend V-700 64GB USB 3.0', '', 'upload_image/product_image_0/V-700-64GB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1650.00, 1600.00, 'Model - Transcend V-700, Interface - USB 3.0, Capacity (GB) - 64GB, Access Time Read (MBps) - 80 MBps, Access Time Write (MBps) - 25 MBps, OS Supported - Windows 2000 / ME/ XP/ Vista/ 7/ MAC/ Linux, Warranty - Product Lifetime', ''),
(139, 2, 41, 0, 0, '1', '5', 'Transcend V-760 32GB USB 3.0', '', 'upload_image/product_image_0/V-760-32GB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1450.00, 1400.00, 'Model - Transcend V-760, Interface - USB 3.0, Capacity (GB) - 32GB, OS Supported - Windows, Mac OS X, Linux, Warranty - Product Lifetime', ''),
(140, 2, 41, 0, 0, '1', '8', 'Transcend JetFlash 880 32GB Silver OTG Pen Drive', '', 'upload_image/product_image_0/Transcend-JetFlash-880-64GB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1250.00, 1200.00, 'Model - Transcend JetFlash 880, Interface - USB 3.0 / USB 2.0, Capacity (GB) - 32GB, OS Supported - Microsoft Windows,MAC OS 10.5, Linux 2.6.31, Warranty - Life Time', ''),
(141, 2, 41, 0, 0, '1', '5', 'Transcend V-700 32GB USB 3.0', '', 'upload_image/product_image_0/V-700-32GB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1000.00, 950.00, 'Model - Transcend V-700, Interface - USB 3.0, Capacity (GB) - 32GB, Access Time Read (MBps) - 90MBps, Access Time Write (MBps) - 6MBps, OS Supported - Windows, Mac OS X, Linux, Warranty - Product Lifetime', ''),
(142, 2, 41, 0, 0, '1', '1', 'Transcend V-810 16GB', '', 'upload_image/product_image_0/V-810-16GB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 950.00, 900.00, 'Model - Transcend V-810, Interface - USB 2.0, Capacity (GB) - 16GB, OS Supported - Windows 7/ Vista/ XP/ Me/ 2000, Mac OS, Linux, Weight (gm) - 12.9, Warranty - Product Lifetime', ''),
(144, 2, 41, 0, 0, '1', '8', 'Transcend JetFlash 880 16GB Silver OTG', '', 'upload_image/product_image_0/Transcend-JetFlash-880-16GB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 900.00, 850.00, 'Model - Transcend JetFlash 880 OTG, Interface - USB 3.0/ 2.0, Capacity (GB) - 16GB, OS Supported - Windows, MAC OS 10.5, Linux 2.6.31, Warranty - Life Time', ''),
(145, 2, 41, 0, 0, '1', '9', 'Transcend V-820 TS16GJF820G', '', 'upload_image/product_image_0/V-820-16GB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 850.00, 800.00, 'Model - Transcend V-820 TS16GJF820G, Interface - USB 3.0/ 2.0, Capacity (GB) - 16GB, Access Time Read (MBps) - 80 MBps, Access Time Write (MBps) - 25 MBps, OS Supported - Windows 8 / 7 / XP / Vista, Mac OS X v10.6.8 and later, Warranty - Product Lifetime', ''),
(146, 2, 41, 0, 0, '1', '5', 'Transcend V-700 16GB USB 3.0 Pen Drive', '', 'upload_image/product_image_0/Transcend-V-700_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 650.00, 600.00, 'Model - Transcend V-700, Interface - USB 3.0, Capacity (GB) - 16GB, Access Time Read (MBps) - 70 MBps, Access Time Write (MBps) - 20 MBps, OS Supported - Windows 2000/ ME/ XP/ Vista/ 7/ MAC OS 9.0 or later /Linux Kernel 2.4.2 or later, Warranty - Product Lifetime', ''),
(147, 2, 41, 0, 0, '1', '5', 'Transcend V-350 16GB', '', 'upload_image/product_image_0/V-350-16GB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 600.00, 550.00, 'Model - Transcend V-350, Interface - USB 2.0, Capacity (GB) - 16GB, Access Time Read (MBps) - 15 MBps, Access Time Write (MBps) - 7 MBps, OS Supported - Windows 7/ Vista/ XP/ Me/ 2000, Mac OS, Linux, Warranty - Product Lifetime', ''),
(148, 2, 41, 0, 0, '1', '5', 'Apacer AH322 8GB', '', 'upload_image/product_image_0/AH322-8GB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 400.00, 350.00, 'Model - Apacer AH322, Interface - USB 2.0/ 1.1, Capacity (GB) - 8GB, OS Supported - Windows 98/ME/2000/ XP/Vista, Mac OS X10.3 or later, and Linux, Warranty - 1 year', ''),
(149, 2, 41, 0, 0, '1', '9', 'Apacer AH353 16GB USB.3.0', '', 'upload_image/product_image_0/AH353-16GB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 550.00, 500.00, 'Model - Apacer AH353, Interface - USB 3.0, Capacity (GB) - 16GB, OS Supported - Windows 7/ME/XP/2000/Vista, Mac OS 8.6 and Linux 2.4.0 or above, Warranty - lifetime, Part No - AH353 16GB', ''),
(150, 2, 41, 0, 0, '1', '4', 'Apacer AH358 32GB USB 3.0 Pen Drive', '', 'upload_image/product_image_0/Apacer-AH358_32GB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 850.00, 850.00, 'Model - Apacer AH358, Interface - USB 3.0, Capacity (GB) - 32GB, OS Supported - Windows 8/7/XP/Vista, Mac OS 10.4 or above & Linux, Weight (gm) - 10gm, Part No - AH358-32GB, Warranty - Life Time', ''),
(151, 2, 41, 0, 0, '1', '5', 'Apacer AH354 32GB USB 3.0 Pen Drive', '', 'upload_image/product_image_0/Apacer-AH354-32gb_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 950.00, 900.00, 'Model - Apacer AH354, Interface - USB 3.0, Capacity (GB) - 32GB, OS Supported - Windows 8/7/XP/Vista, Mac OS 10.4 or above & Linux Kernel 2.6.33 or above, Weight (gm) - 9gm, Part No - AH354-32GB, Warranty - 1 year', ''),
(152, 2, 42, 40, 0, '1', '5', 'HP K2500 Wireless Keyboard', '', 'upload_image/product_image_0/HP-K2500_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1300.00, 1200.00, 'Model - HP K2500, Type - Wireless Keyboard, Connectivity - Wireless, Dimensions (WxHxD) - 16.59 x 5.73 x 0.98 in, Weight - 444.5g, Warranty - 1 year', ''),
(153, 2, 42, 40, 0, '1', '5', 'HP J8F13AA Wireless Classic Keyboard & Mouse', '', 'upload_image/product_image_0/HP-J8F13AA-10_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 2200.00, 2000.00, 'Model - HP J8F13AA, Type - Wireless Classic Keyboard & Mouse, Interface - Available USB port, Dimensions (WxHxD) - Keyboard: 465.01 x 174.43 x 36.30 mm, Mouse: 95 x 58 x 35.45 mm, Dongle: 18.95x 14.5 x 6.25 mm, Weight - Keyboard: .519 kg; Mouse:0.078 kg; Dongle: 0.002 kg, Others - OS: Windows XP/Vista/7/8, Product Color: Black, Warranty - 1 year', ''),
(154, 2, 42, 40, 0, '1', '5', ' HP NY420AA Wireless Multimedia', '', 'upload_image/product_image_0/HP-_NY420AA_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 2850.00, 2700.00, 'Model - HP NY420AA, Model - HP NY420AA, Type - Wireless Multimedia Keyboard And Mouse, Type - Optical, Interface (PS/2) - No, Interface (USB) - No, Interface - Yes, Connectivity - Wireless, Connectivity - Wireless, Language (English) - Yes, Mouse - Yes, Dimensions (WxHxD) - K/B: 438x173x29, Mouse :121.7x62x38.33, Receiver: 87x66.3x22.5, 2X Click - No, Weight - 811g, Warranty - No Warranty, Wheel -Yes', ''),
(155, 2, 42, 40, 0, '1', '5', 'Logitech MK220 Combo USB Wireless', '', 'upload_image/product_image_0/Logitech__MK220_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 2000.00, 1800.00, 'Model - Logitech MK220, Type - Combo Keyboard With Mouse, Interface - USB, Language (English) - Yes, Warranty - 3 year, Part No - MK220', ''),
(156, 2, 42, 40, 0, '1', '5', 'Logitech K480 Bluetooth Multi Device Black Keyboard', '', 'upload_image/product_image_0/Logitech-K480-31_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 3000.00, 2800.00, 'Model - Logitech K480, Type - Multi Device Black Keyboard, Interface - Bluetooth, Language (English) - Yes, Dimensions (WxHxD) - 11.77 x 7.68 x 0.79 in, Weight - 820g, Specialty - Bluetooth range: up to 10 m (30 ft), Warranty - 1 year', ''),
(157, 2, 34, 41, 0, '1', '5', 'Havit F2050 Laptop Cooler', '', 'upload_image/product_image_0/Havit-F2050_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-1', 1400.00, 1200.00, 'Model - Havit F2050, Type - Laptop Cooler, Interface - USB, Dimension - 360x265x23mm(W/D/H), Part No - F2050, Warranty - No ', ''),
(158, 2, 34, 42, 0, '2', '', 'Mouse Pad', '', 'upload_image/product_image_0/download_(1)_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 250.00, 180.00, '', ''),
(159, 2, 40, 40, 0, '1', '', 'Logitech Mouse M165', '', 'upload_image/product_image_0/M165_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-1', 850.00, 800.00, 'Logitech Mouse M165', ''),
(161, 2, 34, 42, 0, '2', '', 'Mouse Pad', '', 'upload_image/product_image_0/m2_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '-1', 250.00, 200.00, 'Mouse Pad', ''),
(162, 4, 30, 18, 0, '1', '5', 'Sony Bravia W650D 40 Inch Wi-Fi Full HD Smart LED Television', '', 'upload_image/product_image_0/X-RealityPRO_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 64000.00, 43000.00, 'Sony Bravia W650D 40 Inch Wi-Fi Full HD Smart LED Television', ''),
(163, 2, 43, 0, 0, '1', '5', 'Transcend J25A3K 500GB USB.3.0 Ext', '', 'upload_image/product_image_0/Transcend__J25A3K__500GB_(1)_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 4800.00, 4500.00, 'Brand - Transcend, Model - Transcend J25A3K, Storage - 500GB, Type - SATA External, RPM - 5400, Buffer (MB) - 8, From Factor (Inch) - 2.5, Interface - USB 3.0; USB 2.0, Transfer Rate (MB/s) - USB 2.0 up to 480 Mb/s; USB 3.0 up to 5Gb/s, Warranty - 3 year\n\n', ''),
(165, 2, 43, 0, 0, '1', '5', 'Transcend J25D3 1TB USB.3.0 Ext', '', 'upload_image/product_image_0/Transcend__J25D3__1TB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 5600.00, 5400.00, 'Transcend J25D3 1TB USB.3.0 Ext', ''),
(166, 2, 43, 0, 0, '1', '5', 'Transcend J25A3K 1TB USB.3.0 Ext', '', 'upload_image/product_image_0/Transcend__J25A3K__500GB_(1)_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 5800.00, 5500.00, 'Transcend J25A3K 1TB USB.3.0 Ext', ''),
(167, 2, 43, 0, 0, '1', '3', 'Transcend J25M3B 1TB USB 3.0 External HDD', '', 'upload_image/product_image_0/Transcend__StoreJet__J25M3_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 5800.00, 5700.00, 'Transcend J25M3B 1TB USB 3.0 External HDD', ''),
(168, 2, 43, 0, 0, '1', '6', 'Transcend J25H3P 2TB USB 3.0 External HDD', '', 'upload_image/product_image_0/Transcend__J25H3P__2TB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 9200.00, 9000.00, 'Transcend J25H3P 2TB USB 3.0 External HDD', ''),
(169, 2, 43, 0, 0, '1', '4', 'Transcend TS2TSJM100 2TB USB 3.0 External HDD', '', 'upload_image/product_image_0/4020411_src_4_thumb.jpg', 'upload_image/product_image_1/Transcend_J25H3B_2TB_USB_thumb.jpg', 'upload_image/product_image_2/Transcend-2TB-TS2TSJM100_thumb.jpg', '', '', 0, '', '', 0.00, 0.00, '', 9800.00, 9500.00, 'Transcend TS2TSJM100 2TB USB 3.0 External HDD', ''),
(170, 2, 43, 0, 0, '1', '5', 'Transcend TS4TSJ35T3 4TB USB 3.0', '', 'upload_image/product_image_0/TS4TSJ35T3_4TB_USB3_0gsui_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 14000.00, 13700.00, 'Brand - Transcend, Model - Transcend TS4TSJ35T3, Storage - 4TB, Type - External HDD, From Factor (Inch) - 3.5Inch, Interface - USB2.0 / USB3.0, Warranty - 3 year', ''),
(171, 2, 43, 0, 0, '1', '4', 'Transcend TS2TSJM300 2TB', '', 'upload_image/product_image_0/Transcend-TS2TSJM300-2TB-72_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 18500.00, 18000.00, 'Brand - Transcend, Model - Transcend TS2TSJM300, Storage - 2TB, Type - External HDD, From Factor (Inch) - 2.5" SATA, Interface - USB 3.0, Others - Operation Voltage: Thunderbolt 15V / USB 5V, For: Macbook, Warranty - 3 year\n\n', '');
INSERT INTO `tbl_product` (`product_id`, `category_id`, `subcategory_id`, `item_id`, `brand_id`, `size`, `color`, `product_name`, `product_code`, `product_image_0`, `product_image_1`, `product_image_2`, `product_image_3`, `product_image_4`, `special_product`, `delivery_time`, `delivery_area`, `delivery_charge_inside`, `delivery_charge_outside`, `product_quantity`, `product_old_price`, `product_price`, `product_description`, `extra_information`) VALUES
(172, 2, 43, 0, 0, '1', '5', 'Toshiba HDTB310AW3AA Canvio Basic 1TB External White Protable', '', 'upload_image/product_image_0/Toshiba-_HDT310AW3AA_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 5300.00, 5100.00, 'Toshiba HDTB310AW3AA Canvio Basic 1TB External White Protable', ''),
(173, 2, 43, 0, 0, '1', '6', 'Toshiba HDTH310YL3AA Canvio Slim Alumy 1TB External Blue', '', 'upload_image/product_image_0/Toshiba_HDTH310YL3AA-_Blue_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 5850.00, 5750.00, 'Toshiba HDTH310YL3AA Canvio Slim Alumy 1TB External Blue', ''),
(174, 2, 43, 0, 0, '1', '8', 'Toshiba HDTH310YS3AA Canvio Slim Alumy 1TB External Silver', '', 'upload_image/product_image_0/Toshiba_HDTH310YS3AA_Silver_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 5950.00, 5800.00, 'Toshiba HDTH310YS3AA Canvio Slim Alumy 1TB External Silver', ''),
(175, 2, 43, 0, 0, '1', '4', 'Toshiba HDTB320AW3CA Canvio Basic 2TB White', '', 'upload_image/product_image_0/HDTB320AW3CA_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 8700.00, 8500.00, 'Toshiba HDTB320AW3CA Canvio Basic 2TB White', ''),
(176, 2, 43, 0, 0, '1', '6', 'Toshiba HDTH320YL3CA Canvio Slim Alumy 2TB External Blue', '', 'upload_image/product_image_0/Toshiba_HDTH310YL3AA-_Blue_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 8800.00, 8700.00, 'Toshiba HDTH320YL3CA Canvio Slim Alumy 2TB External Blue', ''),
(177, 2, 43, 0, 0, '1', '5', 'Dell PDB2000A 2TB USB 3.0 Black External HDD', '', 'upload_image/product_image_0/Dell-PDB2000A-01_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 9200.00, 9000.00, 'Dell PDB2000A 2TB USB 3.0 Black External HDD', ''),
(180, 2, 43, 0, 0, '1', '5', 'Western Digital Elements WDBUZG0010BBK-BESN 1TB USB 3.0 External HDD', '', 'upload_image/product_image_0/Western__Digital__Elements_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 5600.00, 5400.00, 'Western Digital Elements WDBUZG0010BBK-BESN 1TB USB 3.0 External HDD', ''),
(181, 2, 43, 0, 0, '1', '6', 'Western Digital WDBBEPOO10BBL 1TB Blue My Passport Ultra USB-3.0', '', 'upload_image/product_image_0/ext_hdd_westerndigital_39_001_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 6200.00, 6000.00, 'Western Digital WDBBEPOO10BBL 1TB Blue My Passport Ultra USB-3.0', ''),
(182, 0, 0, 0, 0, '', '', 'Western Digital My Passport Ultra WDBGPU0010BBY 1TB USB 3.0 Berry External HDD', '', 'upload_image/product_image_0/WDBGPU0010BBY-60_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 6200.00, 6000.00, 'Western Digital My Passport Ultra WDBGPU0010BBY 1TB USB 3.0 Berry External HDD', ''),
(184, 2, 43, 0, 0, '1', '6', 'Western Digital My Passport Ultra 1TB Metal Blue', '', 'upload_image/product_image_0/Western_Ultra_-1TB__Metal_Blue_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 7700.00, 7500.00, 'Western Digital My Passport Ultra 1TB Metal Blue', ''),
(185, 2, 9, 12, 0, '1', '4', 'Apple iPAD Mini-3 (MGYN2ZP/A) Cellular Wi-Fi 64GB Gold 7.9 Inch Tablet', '', 'upload_image/product_image_0/Apple-iPAD-Mini_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '-2', 58000.00, 55000.00, 'Model - Apple iPAD Mini-3 (MGYN2ZP/A), Processor Type - Apple A7, RAM - 1GB, Processor Speed - 1.30GHz, Internal Memory - 64GB, Display Type - LED-backlit Multi-Touch display, Display Size - 7.9", Screen Resolution - 2048 x 1536Pixel, Connectivity - Wi-Fi, Bluetooth v4.0, Sim Card Slot - Nano SIM, Front Camera - 1.2 Mega Pixels, Rear Camera - 5 Mega Pixels, Support Player - AAC, Protected AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF and WAV, Operating System - iOS 8, Dimensions - 7.87" x 5.3" x 0.29", Weight - 331gm, Battery - lithium-Polymer Battery, Backup Hours - Up to 10 Hrs., Color - Gold, On Box - Lightning to USB Cable, USB Power Adapter, Others - Chip: A7 chip with 64-bit architecture, Video Recording: 1080p HD video, Touch ID: Fingerprint identity sensor built into the Home button, Part No - MGYN2ZP/A, Warranty - No', ''),
(186, 2, 9, 22, 0, '1', '4', 'Samsung Galaxy Tab-3 V (SM-T116NU) Quad Core', '', 'upload_image/product_image_0/samsung_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 15000.00, 14000.00, 'Model - Samsung Galaxy Tab-3 V (SM-T116NU), Processor Type - Quad Core, RAM - 1GB, Processor Speed - 1.30GHz, Internal Memory - 8GB, Display Type - TFT Capacitive Touch Screen, Display Size - 7", Screen Resolution - 1024 x 600Pixels, Connectivity - Wi-Fi, Bluetooth v4.0, Card Slot - Micro SD, GSM/3G Calling - Yes, Sim Card Slot - Micro SIM, Front Camera - 2 Mega Pixels, Rear Camera - 2 Mega Pixels, Operating System - Android (Kitkat 4.4), Dimensions - 193.4 x 116.4 x 9.7mm, Weight - 322gm, Battery - 3600mAh, Backup Hours - Up to 8 Hrs., Color - White, Warranty - 1 year', ''),
(187, 2, 9, 22, 0, '1', '5', 'Samsung Galaxy Tab-E SM-T561 9.6 Inch Metallic Black Table', '', 'upload_image/product_image_0/Samsung1_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 26000.00, 24000.00, 'Model - Samsung Galaxy Tab-E SM-T561, Processor Type - Quad Core, RAM - 1.50GB, Processor Speed - 1.30GHz, Internal Memory - 8GB, Display Type - TFT LED Display, Display Size - 9.6", Screen Resolution - 1280 x 800WXGA, Connectivity - Wi-Fi, Bluetooth v4.0, GPS, Additional Ports - USB 2.0, Card Slot - Micro SD, GSM/3G Calling - Yes, Sim Card Slot - Micro SIM, Front Camera - 2 Mega Pixels, Rear Camera - 5 Mega Pixels, Support Player - MP4, M4V, 3GP, 3G2, MKV, WEBM, Operating System - Android, Dimensions - 241.9 x 149.5 x 8.5mm, Weight - 495gm, Battery - Non-removable Li-Ion 5000 mAh, Backup Hours - 7 Hrs., Color - Metallic Black, Specialty - TFT capacitive touchscreen Display, Warranty - 1 year', ''),
(188, 2, 9, 22, 0, '1', '4', 'Samsung Galaxy Tab E SM-T561 9.6 inch', '', 'upload_image/product_image_0/samsyng4_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 26000.00, 2400.00, 'Model - Samsung Galaxy Tab E SM-T561, Processor Type - Quad-Core, RAM - 1.5GB, Processor Speed - 1.30GHz, Internal Memory - 8GB, Display Type - TFT Display, Display Size - 9.6", Screen Resolution - 1280 x 800 (WXGA), Connectivity - USB 2.0, Wi-Fi, Bluetooth v4.0, GPS, Glonass, Additional Ports - 3.5mm Stereo, Card Slot - MicroSD (Up to 128GB), GSM/3G Calling - 2G GSM, 3G WCDMA, Sim Card Slot - Single Micro-SIM (3FF), Front Camera - 2.0MP, Rear Camera - 5.0MP, Support Player - MP4, M4V, 3GP, 3G2, MKV, WEBM, MP3, M4A, 3GA, AAC, OGG, OGA, WAV, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA, Operating System - Android, Dimensions - 241.9 x 149.5 x 8.5mm, Weight - 495gm, Battery - Non-removable Li-Ion 5000 mAh, Backup Hours - Up to 7.30 Hrs., Color - Metallic Black, Pearl White, Warranty - 1 year', ''),
(189, 2, 9, 44, 0, '1', '5', 'Lenovo Tab 2 A7-30 Quad Core Ebony Black Tablet', '', 'upload_image/product_image_0/Untitled-11_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 11500.00, 11000.00, 'Model - Lenovo Tab 2 A7-30, Processor Type - Quad Core, RAM - 1GB, Processor Speed - 1.30GHz, Internal Memory - 16GB, Display Type - Multi TouchscreenIPS LED Display, Display Size - 7", Screen Resolution - 1024 x 600 pixels, Connectivity - Wi-Fi, Wi-Fi hotspot, Bluetooth v4.0, Card Slot - Yes (Micro SD ) up to 32GB, OTG Supported, GSM/3G Calling - 3G-GSM 850 / 900 / 1800 / 1900, HSDPA,, Sim Card Slot - Yes, Front Camera - 0.3MP, Rear Camera - 2MP, Operating System - Android Kitkat 4.4,2, Weight - 269gm, Battery - Li-Ion 3450 mAh battery, Backup Hours - Up to 8 Hrs., Color - Ebony Black, Others - Modem: Built-in (SIM Support), Voice Calling: Yes (regular sim), Audio/Speaker: Dolby digital plus/Alert types- Vibration, MP3 ringtones, Loudspeaker, Warranty - 1 year', ''),
(190, 2, 7, 45, 0, '1', '8', 'Intel Skylake Core i5 6600 3.30GHz 6th Gen. Processor', '', 'upload_image/product_image_0/tel-Skylake-Core-i5-6600(20_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 20000.00, 20400.00, 'Intel Skylake Core i5 6600 3.30GHz 6th Gen. Processor', ''),
(191, 2, 7, 46, 0, '1', '8', 'Gigabyte GA-B150M-HD3 DDR4 6Th Gen.', '', 'upload_image/product_image_0/Gigabyte_GA_B150M_HD3_DDR4_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 7800.00, 7600.00, 'Gigabyte GA-B150M-HD3 DDR4 6Th Gen.', ''),
(192, 2, 7, 1, 0, '1', '10', 'Transcend 4GB DDR4 2133 Bus Desktop RAM', '', 'upload_image/product_image_0/1076491153-transcend-mem-4gb-ddr4-2133-u-dimm-1rx8_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 2500.00, 2400.00, 'Model - Transcend, Capacity(MB) - 4GB, Type - DDR4, Bus Speed(MHz) - 2133 MHz, Number of Pin - 288pin, Voltage - 1.2V, Warranty - Product lifetime', ''),
(193, 2, 7, 47, 0, '0', '0', 'Western Digital WD10EZEX-00RKKA0 1TB SATA Desktop HDD', '', 'upload_image/product_image_0/Western__Digital__1TB_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 4500.00, 4300.00, 'Model - Western Digital WD10EZEX-00RKKA0, Storage (GB) - 1TB, Type - SATA Desktop HDD, RPM - 7200RPM, Seek Time (ms) - 8.9ms, Buffer (MB) - 64MB, From Factor (Inch) - 3.5", Interface - SATA, Transfer Rate (MB/s) - 3072 MB/s, Warranty - 2 year', ''),
(194, 2, 7, 48, 0, '1', '5', 'Space 304 ATX', '', 'upload_image/product_image_0/Space__304__ATX_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 2200.00, 2000.00, 'Space 304 ATX Casing', ''),
(195, 2, 8, 39, 0, '1', '8', 'Samsung SH-224FB Dual Layer Internal DVD Writer', '', 'upload_image/product_image_0/Samsung-SH-224FB_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 1700.00, 1600.00, 'Model - Samsung SH-224FB, Type - Internal DVD Writer, Interface - Serial-ATA, Write Speed (DVD) - 24X, Write Speed (CD) - 48X, Read Speed (DVD) - 16X, Read Speed (CD) - 48X, Access Time DVD (ms) - 150ms, Access Time CD (ms) - 130ms, OS Supported - Windows XP, Windows 2000, Windows VISTA, Windows 7, Windows 8, Warranty - 1 year', ''),
(196, 2, 7, 49, 0, '1', '4', 'Dell E1916H 18.5 Inch LED Monitor', '', 'upload_image/product_image_0/Dell_E1916H_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 6800.00, 6600.00, 'Model - Dell E1916H, Display Size (Inch) - 18.5", Shape - Wide Screen, Display Type - LED Display, Display Resolution - 1366 x 768, Brightness (cd/m2) - 200cd/m2, Contrast Ratio (TCR/DCR) - 600:1, Response Time (ms) - 5ms, TV Card (Built-in) - No, VGA Port - Yes, Remote - No, Speaker (Built-in) - No, Specialty - Viewing Angle: 65 vertical / 90 horizontal, Warranty - 3 year', ''),
(197, 2, 7, 49, 0, '1', '5', 'Dell E2016HV 19.5 Inch LED Monitor', '', 'upload_image/product_image_0/Dell-E2016HV_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 7000.00, 6900.00, 'Model - Dell E2016HV, Display Size (Inch) - 19.5", Shape - Wide Screen, Display Type - LED Display, Display Resolution - 1600 x 900, Brightness (cd/m2) - 250 cd/m2, Contrast Ratio (TCR/DCR) - C. Ratio 1000:1, Response Time (ms) - 5ms, TV Card (Built-in) - No, VGA Port - Yes, Remote - No, Speaker (Built-in) - No, Warranty - 3 year', ''),
(198, 2, 7, 49, 0, '1', '5', 'Dell E1715S 17 Inch Square LED backlight Monitor', '', 'upload_image/product_image_0/Dell-E1715S-58_thumb.gif', '', '', '', '', 0, '', '', 0.00, 0.00, '', 9000.00, 8800.00, 'Model - Dell E1715S, Display Size (Inch) - 17", Shape - Squarescreen, Display Type - LED backlight Display, Display Resolution - 1280 x 1024 at 60 Hz, Brightness (cd/m2) - 250 cd/m2 (typical), Contrast Ratio (TCR/DCR) - 1000: 1 (typical), Response Time (ms) - 5ms (back to white), VGA Port - 1, Others - Viewing Angle: 160degree (V)/ 170degree (H), Warranty - 3 year', ''),
(199, 2, 7, 50, 0, '1', '8', 'Sapphire R7 360 2GB DDR5 OC', '', 'upload_image/product_image_0/Sapphire-R7-360_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 10502.00, 10400.00, '', ''),
(200, 2, 7, 45, 0, '1', '8', 'Intel Skylake Core i7 6700K 4.0GHz 6th Gen. Processor', '', 'upload_image/product_image_0/Intel-Core-i7-6700K_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 29500.00, 29200.00, 'Model - Intel Skylake Core i7 6700K, Clock Speed (GHz) - 4.0GHz, Core - 4, Thread - 8, Smart Cache (MB) - 8MB, Sockets Supported - LGA1151, Lithography (nm) - 14nm, Integ. Graphics - Intel HD 530, Specialty - Skylake, Warranty - 3 year\n\n', ''),
(201, 2, 7, 46, 0, '1', '5', 'Gigabyte GA-J1800N D2P', '', 'upload_image/product_image_0/Gigabyte___Mainboard__95_001_thumb.jpg', '', '', '', '', 0, '', '', 0.00, 0.00, '', 5900.00, 5800.00, 'Model - Gigabyte GA-J1800N D2P, Form Factor - Mini ITX, Sockets - Integrated Intel Celeron J1800 Dual-core 2.41Ghz( built-in processor), Supported CPU - Built in with an Intel Dual-Core Celeron J1800 SoC, Chipset - Intel, RAM Type - DDR3, RAM Bus (MHz) - 1333 MHz, RAM Max. (GB) - 8GB, RAM Slot - 2, PCI Express x16 Slot - 1, SATA Port - 2, Audio Chipset - Realtek ALC887 codec, Audio Channel - 2/4/5.1/7.1 Channel, LAN Chipset - Realtek GbE LAN chip, LAN Speed (Mbps) - 10/100/1000 Mbit, USB Interface - USB 2.0/3.0, USB Port - 5, HDMI Port - 1, Warranty - 3 year, Part No - GA-J1800N-D2P', ''),
(202, 2, 7, 51, 0, '1', '5', 'HP AIO 20-r225L Core i3 6th Gen. 6100T', '', 'upload_image/product_image_0/HP-AIO-20-r225L--i3_thumb.jpg', '', '', '', '', 0, '', '', 50.00, 80.00, '-3', 56800.00, 55600.00, 'Model - HP AIO 20-r225L, Processor - 6th Gen. Intel Core i3 6100T, Processor Clock Speed - 3.20GHz, CPU Cache - 3MB, Chipset - Intel H110, Monitor - 19.5" Monitor, RAM - 4GB, RAM Type - DDR3 1600MHz, HDD - 1TB HDD, HDD Type - SATA 7200 rpm, Graphics Chipset - Intel HD 530, Graphics Memory - Shared, Optical Device - DVD RW, Audio Chipset - Realtek ALC3228-CG, Speaker - 2-Watt speakers, Keyboard - USB Keyboard, Mouse - USB Mouse, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, Audio Port - Combo In Out, USB Port - 2 x USB3.0, 3 x USB2.0, Operating System - Free Dos, Others - Display resolution: 1600 x 900, Warranty - 1 year', ''),
(203, 2, 7, 51, 0, '0', '0', 'HP ProOne 400 Intel 4th Gen Core i3 4160T', '', 'upload_image/product_image_0/HP-ProOne-400_thumb.jpg', '', '', '', '', 0, '', '', 100.00, 200.00, '-12', 48500.00, 46500.00, 'Model - HP ProOne 400, Processor - 4th. Gen Intel Core i3 4160T, Processor Clock Speed - 3.10GHz, CPU Cache - 3MB, Chipset - Intel H81, Monitor - 19.5" LED Display, RAM - 4GB, RAM Type - DDR3 1600MHz, HDD - 500GB, HDD Type - SATA 7200RPM, SSD - No, Graphics Chipset - Intel HD 4400, Graphics Memory - Shared, Optical Device - DVD RW, Audio Chipset - Realtek ALC 3228, Speaker - Yes, Keyboard - USB Keyboard, Mouse - USB Mouse, Networking - LAN, WiFi, Display Port - VGA, Audio Port - Single Port Stereo, USB Port - 4 x USB 2.0, Operating System - Free DOS, Others - Web Cam, 1 x RJ-45 Gigabit Ethertnet network connector, 1 x ) RS-232 serial port, 3.5mm stereo line out jack, Specialty - 19.5" Core i5 AIO PC, Part No - ProOne-400-i5, Warranty - 1 year', ''),
(204, 4, 30, 18, 0, '1', '5', '40 inch W700C BRAVIA Internet LED backlight TV', '', 'upload_image/product_image_0/sony_bravia_w700c_series_40_thumb.png', '', '', '', '', 0, '', '', 50.00, 100.00, '', 65000.00, 53000.00, 'X-Reality™ PRO\nSlim Design\nOne-Flick Entertainment *1\nClearAudio+\nPhoto Share\nScreen Mirroring', ''),
(205, 4, 30, 18, 0, '1', '5', '32 inch R306C BRAVIA TV', '', 'upload_image/product_image_0/sony_32_inch_led_tv_klv_32r_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 33000.00, 24500.00, 'X-Protection PRO\nClear Resolution Enhancer\nClear Phase\nHDMI x 2\nUSB Super Multi-Format PLAY\nCar Battery Compatible', ''),
(206, 2, 30, 18, 0, '1', '5', '32 inch R502C BRAVIA LED backlight TV with YouTube', '', '', '', '', '', '', 0, '', '', 0.00, 0.00, '', 42000.00, 29000.00, 'Slim Design\nCompatible with Major IPTV Services\nWi-Fi® Certified\nPhoto Sharing Plus\nClear Resolution Enhancer\nClear Phase™', ''),
(207, 3, 7, 4, 0, '1', '1', 'jkkkkkkkkkkkkkkkk', '', '', '', '', '', '', 0, '', '', 0.00, 0.00, '', 0.00, 0.00, '', ''),
(208, 0, 0, 0, 0, '0', '0', '40 99999999999999999', '', 'upload_image/product_image_0/sony_bravia_p400c_series_22_thumb.png', '', '', '', '', 0, '', '', 0.00, 0.00, '', 53000.00, 37000.00, '40" Sony 350C', ''),
(209, 2, 7, 15, 4, 'Full,Small', 'Red,Green', 'ghh', '889', 'upload_image/product_image_0/default_thumb.gif', '', '', '', '', 0, '', '', 87.00, 789.00, '888', 0.00, 78787.00, '', ''),
(210, 2, 8, 19, 0, '', '', 'nn', '', 'upload_image/product_image_0/default_thumb.gif', '', '', '', '', 0, '', '', 9.00, 9.00, '9', 0.00, 9.00, '', ''),
(211, 2, 7, 18, 4, '0', '0', 'ddddd66666666666', 'xxxxxxxx', 'upload_image/product_image_0/default_thumb.gif', '', '', 'upload_image/product_image_3/banner1_thumb.jpg', 'upload_image/product_image_4/s3_thumb.jpg', 1, 'dffdg', 'fgf', 44.00, 444.00, '444', 444444.00, 44444.00, '444444444444', '4444444'),
(212, 4, 30, 18, 4, '0', '0', 'Sony', '343', 'upload_image/product_image_0/300x300-Banner-red-text_thumb.jpg', '', '', '', '', 1, 'fdgdg', 'sdfgsdgfdg', 50.00, 500.00, '500', 50.00, 4000.00, 'wefrwef', 'wefwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation`
--

CREATE TABLE `tbl_quotation` (
  `quotation_id` int(5) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `document_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_receiver`
--

CREATE TABLE `tbl_receiver` (
  `receiver_id` int(5) NOT NULL,
  `sender_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `receiver_name` varchar(100) NOT NULL,
  `drop_address` text NOT NULL,
  `receiver_landmark` varchar(100) NOT NULL,
  `receiver_mobile` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(3) NOT NULL,
  `product_id` int(10) NOT NULL,
  `customer_id` int(3) NOT NULL,
  `review_title` varchar(100) NOT NULL,
  `review` text NOT NULL,
  `review_rating` tinyint(1) NOT NULL,
  `review_type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_route`
--

CREATE TABLE `tbl_route` (
  `route_id` int(4) NOT NULL,
  `route_startpoint` varchar(50) NOT NULL,
  `route_endpoint` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seat`
--

CREATE TABLE `tbl_seat` (
  `seat_id` int(4) NOT NULL,
  `seat_name` varchar(50) NOT NULL,
  `available_seat` varchar(5) NOT NULL,
  `seat_row` varchar(10) NOT NULL,
  `seat_column` varchar(10) NOT NULL,
  `a1` tinyint(1) NOT NULL,
  `a2` tinyint(1) NOT NULL,
  `a3` tinyint(1) NOT NULL,
  `a4` tinyint(1) NOT NULL,
  `a5` tinyint(1) NOT NULL,
  `b1` tinyint(1) NOT NULL,
  `b2` tinyint(1) NOT NULL,
  `b3` tinyint(1) NOT NULL,
  `b4` tinyint(1) NOT NULL,
  `b5` tinyint(1) NOT NULL,
  `c1` tinyint(1) NOT NULL,
  `c2` tinyint(1) NOT NULL,
  `c3` tinyint(1) NOT NULL,
  `c4` tinyint(1) NOT NULL,
  `c5` tinyint(1) NOT NULL,
  `d1` tinyint(1) NOT NULL,
  `d2` tinyint(1) NOT NULL,
  `d3` tinyint(1) NOT NULL,
  `d4` tinyint(1) NOT NULL,
  `d5` tinyint(1) NOT NULL,
  `e1` tinyint(1) NOT NULL,
  `e2` tinyint(1) NOT NULL,
  `e3` tinyint(1) NOT NULL,
  `e4` tinyint(1) NOT NULL,
  `e5` tinyint(1) NOT NULL,
  `f1` tinyint(1) NOT NULL,
  `f2` tinyint(1) NOT NULL,
  `f3` tinyint(1) NOT NULL,
  `f4` tinyint(1) NOT NULL,
  `f5` tinyint(1) NOT NULL,
  `g1` tinyint(1) NOT NULL,
  `g2` tinyint(1) NOT NULL,
  `g3` tinyint(1) NOT NULL,
  `g4` tinyint(1) NOT NULL,
  `g5` tinyint(1) NOT NULL,
  `h1` tinyint(1) NOT NULL,
  `h2` tinyint(1) NOT NULL,
  `h3` tinyint(1) NOT NULL,
  `h4` tinyint(1) NOT NULL,
  `h5` tinyint(1) NOT NULL,
  `i1` tinyint(1) NOT NULL,
  `i2` tinyint(1) NOT NULL,
  `i3` tinyint(1) NOT NULL,
  `i4` tinyint(1) NOT NULL,
  `i5` tinyint(1) NOT NULL,
  `j1` tinyint(1) NOT NULL,
  `j2` tinyint(1) NOT NULL,
  `j3` tinyint(1) NOT NULL,
  `j4` tinyint(1) NOT NULL,
  `j5` tinyint(1) NOT NULL,
  `k1` tinyint(1) NOT NULL,
  `k2` tinyint(1) NOT NULL,
  `k3` tinyint(1) NOT NULL,
  `k4` tinyint(1) NOT NULL,
  `k5` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sender`
--

CREATE TABLE `tbl_sender` (
  `sender_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  `pick_address` text NOT NULL,
  `sender_landmark` varchar(100) NOT NULL,
  `sender_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `setting_id` int(2) NOT NULL,
  `setting` varchar(100) NOT NULL,
  `setting_type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`setting_id`, `setting`, `setting_type`) VALUES
(1, '(9AM - 9PM) 01812385066', 1),
(2, 'Terms & Condition', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(4) NOT NULL,
  `customer_id` int(3) NOT NULL DEFAULT '1',
  `shipping_name` varchar(200) NOT NULL,
  `shipping_email` varchar(50) NOT NULL,
  `shipping_mobile` varchar(20) NOT NULL,
  `shipping_mobile_2` varchar(11) NOT NULL,
  `shipping_location` varchar(50) NOT NULL,
  `shipping_charge` float(5,2) NOT NULL,
  `shipping_address` text NOT NULL,
  `shipping_landmark` text NOT NULL,
  `shipping_note` text NOT NULL,
  `shipping_type` tinyint(1) NOT NULL COMMENT 'For Ecommerce 1 & Ticket 2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(2) NOT NULL,
  `size_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slide`
--

CREATE TABLE `tbl_slide` (
  `slide_id` int(2) NOT NULL,
  `slide_url` varchar(200) NOT NULL,
  `slide_image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slide`
--

INSERT INTO `tbl_slide` (`slide_id`, `slide_url`, `slide_image`) VALUES
(6, 'http://localhost/ecommerce/store/product_listing/15', 'upload_image/slide_image/cm_thumb.jpg'),
(7, '', 'upload_image/slide_image/ep_thumb.jpg'),
(8, '', 'upload_image/slide_image/fb_thumb.jpg'),
(9, '', 'upload_image/slide_image/macanical_thumb.jpg'),
(10, '', 'upload_image/slide_image/mp_thumb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `subcategory_id` int(3) NOT NULL,
  `category_id` int(2) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcategory_id`, `category_id`, `subcategory_name`) VALUES
(1, 1, 'Women''s Items'),
(4, 1, 'Men''s Items'),
(7, 2, 'Desktop Computer'),
(8, 2, 'Laptop and Notebook'),
(9, 2, 'Tablet'),
(10, 2, 'Printer '),
(12, 5, 'Apple'),
(13, 5, 'Samsung'),
(14, 5, 'Microsoft'),
(15, 5, 'Blackberry'),
(16, 5, 'HTC'),
(17, 5, 'Huawei'),
(18, 5, 'Sony'),
(19, 5, 'Walton'),
(20, 5, 'Symphony'),
(24, 7, 'Router'),
(25, 12, 'SLR Camera'),
(30, 4, 'TV'),
(31, 4, 'AC'),
(33, 2, 'Network'),
(34, 2, 'Accessoris'),
(35, 2, 'Monitor'),
(38, 2, 'Photography '),
(40, 2, 'Mouse');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ticket`
--

CREATE TABLE `tbl_ticket` (
  `ticket_id` int(3) NOT NULL,
  `ticket_price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trip`
--

CREATE TABLE `tbl_trip` (
  `trip_id` int(3) NOT NULL,
  `bus_id` int(3) NOT NULL,
  `bus_type_id` int(2) NOT NULL,
  `brand_id` int(2) NOT NULL,
  `coach_id` int(5) NOT NULL,
  `seat_id` int(2) NOT NULL,
  `ticket_id` int(3) NOT NULL,
  `ticket_old_price` varchar(10) NOT NULL,
  `route_id` int(4) NOT NULL,
  `trip_date` varchar(11) NOT NULL,
  `trip_time` varchar(10) NOT NULL,
  `trip_arrival_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(3) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(1, 2, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `tbl_bus_type`
--
ALTER TABLE `tbl_bus_type`
  ADD PRIMARY KEY (`bus_type_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_coach`
--
ALTER TABLE `tbl_coach`
  ADD PRIMARY KEY (`coach_id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_delivery`
--
ALTER TABLE `tbl_delivery`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `tbl_eticket_order_details`
--
ALTER TABLE `tbl_eticket_order_details`
  ADD PRIMARY KEY (`eticket_order_details_id`);

--
-- Indexes for table `tbl_franchise`
--
ALTER TABLE `tbl_franchise`
  ADD PRIMARY KEY (`franchise_id`);

--
-- Indexes for table `tbl_home_product`
--
ALTER TABLE `tbl_home_product`
  ADD PRIMARY KEY (`home_product_id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_newsletter_subscription`
--
ALTER TABLE `tbl_newsletter_subscription`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_quotation`
--
ALTER TABLE `tbl_quotation`
  ADD PRIMARY KEY (`quotation_id`);

--
-- Indexes for table `tbl_receiver`
--
ALTER TABLE `tbl_receiver`
  ADD PRIMARY KEY (`receiver_id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_route`
--
ALTER TABLE `tbl_route`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `tbl_seat`
--
ALTER TABLE `tbl_seat`
  ADD PRIMARY KEY (`seat_id`);

--
-- Indexes for table `tbl_sender`
--
ALTER TABLE `tbl_sender`
  ADD PRIMARY KEY (`sender_id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_slide`
--
ALTER TABLE `tbl_slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `tbl_ticket`
--
ALTER TABLE `tbl_ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `tbl_trip`
--
ALTER TABLE `tbl_trip`
  ADD PRIMARY KEY (`trip_id`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `banner_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  MODIFY `bus_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_bus_type`
--
ALTER TABLE `tbl_bus_type`
  MODIFY `bus_type_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_coach`
--
ALTER TABLE `tbl_coach`
  MODIFY `coach_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_delivery`
--
ALTER TABLE `tbl_delivery`
  MODIFY `delivery_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_eticket_order_details`
--
ALTER TABLE `tbl_eticket_order_details`
  MODIFY `eticket_order_details_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_franchise`
--
ALTER TABLE `tbl_franchise`
  MODIFY `franchise_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_home_product`
--
ALTER TABLE `tbl_home_product`
  MODIFY `home_product_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_newsletter_subscription`
--
ALTER TABLE `tbl_newsletter_subscription`
  MODIFY `subscription_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `tbl_quotation`
--
ALTER TABLE `tbl_quotation`
  MODIFY `quotation_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_receiver`
--
ALTER TABLE `tbl_receiver`
  MODIFY `receiver_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_route`
--
ALTER TABLE `tbl_route`
  MODIFY `route_id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_seat`
--
ALTER TABLE `tbl_seat`
  MODIFY `seat_id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sender`
--
ALTER TABLE `tbl_sender`
  MODIFY `sender_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `setting_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_slide`
--
ALTER TABLE `tbl_slide`
  MODIFY `slide_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `subcategory_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tbl_ticket`
--
ALTER TABLE `tbl_ticket`
  MODIFY `ticket_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_trip`
--
ALTER TABLE `tbl_trip`
  MODIFY `trip_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 20, 2020 lúc 05:18 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.10

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `woobooking_test1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_apps`
--

DROP TABLE IF EXISTS `woobooking_apps`;
CREATE TABLE `woobooking_apps` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `ordering` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_billing`
--

DROP TABLE IF EXISTS `woobooking_billing`;
CREATE TABLE `woobooking_billing` (
  `id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `company` varchar(255) NOT NULL,
  `country` varchar(50) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `postcode` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_block`
--

DROP TABLE IF EXISTS `woobooking_block`;
CREATE TABLE `woobooking_block` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `ordering` int(11) NOT NULL,
  `description` text NOT NULL,
  `params` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_cart`
--

DROP TABLE IF EXISTS `woobooking_cart`;
CREATE TABLE `woobooking_cart` (
  `id` int(11) NOT NULL,
  `session_id` varchar(50) NOT NULL,
  `service_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `country_code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `open_source_link_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `extra_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `rate_id` int(11) NOT NULL,
  `params` mediumtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `total` float NOT NULL,
  `total_tax` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_category`
--

DROP TABLE IF EXISTS `woobooking_category`;
CREATE TABLE `woobooking_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_category_tag`
--

DROP TABLE IF EXISTS `woobooking_category_tag`;
CREATE TABLE `woobooking_category_tag` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_config`
--

DROP TABLE IF EXISTS `woobooking_config`;
CREATE TABLE `woobooking_config` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `params` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_country`
--

DROP TABLE IF EXISTS `woobooking_country`;
CREATE TABLE `woobooking_country` (
  `id` int(11) NOT NULL,
  `countrycode` char(3) NOT NULL,
  `countryname` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `code` char(2) DEFAULT NULL,
  `ordering` int(11) NOT NULL,
  `published` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_customer`
--

DROP TABLE IF EXISTS `woobooking_customer`;
CREATE TABLE `woobooking_customer` (
  `id` int(11) NOT NULL,
  `user_open_source_commerce_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `opensource_user_id` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `birth_day` varchar(200) NOT NULL,
  `ordering` int(10) NOT NULL,
  `note_internal` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_employee`
--

DROP TABLE IF EXISTS `woobooking_employee`;
CREATE TABLE `woobooking_employee` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `published` int(11) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `location_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `opensource_user_id` int(11) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `ordering` int(11) NOT NULL,
  `cover` varchar(300) NOT NULL,
  `image` varchar(255) NOT NULL,
  `params` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_event`
--

DROP TABLE IF EXISTS `woobooking_event`;
CREATE TABLE `woobooking_event` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `published` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `max_allowed_person` int(11) NOT NULL,
  `min_allowed_person` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `event_color` varchar(20) NOT NULL,
  `recurring_repeat` varchar(50) NOT NULL,
  `recurring` int(11) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `recurring_until` date NOT NULL,
  `ordering` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `close` int(11) NOT NULL,
  `close_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_event_employee`
--

DROP TABLE IF EXISTS `woobooking_event_employee`;
CREATE TABLE `woobooking_event_employee` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_event_tag`
--

DROP TABLE IF EXISTS `woobooking_event_tag`;
CREATE TABLE `woobooking_event_tag` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_extra`
--

DROP TABLE IF EXISTS `woobooking_extra`;
CREATE TABLE `woobooking_extra` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `object_id` int(11) NOT NULL,
  `duration` float NOT NULL,
  `price` float NOT NULL,
  `quality` int(11) NOT NULL,
  `path` varchar(300) NOT NULL,
  `name` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_finance`
--

DROP TABLE IF EXISTS `woobooking_finance`;
CREATE TABLE `woobooking_finance` (
  `id` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `name_customer` varchar(255) NOT NULL,
  `email_customer` varchar(255) NOT NULL,
  `employee` varchar(255) NOT NULL,
  `avatar_employee` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_gallery`
--

DROP TABLE IF EXISTS `woobooking_gallery`;
CREATE TABLE `woobooking_gallery` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `object_id` int(11) NOT NULL,
  `path` varchar(300) NOT NULL,
  `name` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_location`
--

DROP TABLE IF EXISTS `woobooking_location`;
CREATE TABLE `woobooking_location` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `banner` varchar(400) NOT NULL,
  `image_location_avatar` varchar(400) NOT NULL,
  `map_image` varchar(400) NOT NULL,
  `address` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `state_id` int(11) NOT NULL,
  `lang` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `published` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_notification`
--

DROP TABLE IF EXISTS `woobooking_notification`;
CREATE TABLE `woobooking_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `ordering` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_order`
--

DROP TABLE IF EXISTS `woobooking_order`;
CREATE TABLE `woobooking_order` (
  `id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `open_source_order_id` int(11) NOT NULL,
  `order_status_id` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `total` double NOT NULL,
  `payment_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `data` text NOT NULL,
  `discount_total` double NOT NULL,
  `discount_tax` float NOT NULL,
  `shipping_tax` float NOT NULL,
  `cart_tax` float NOT NULL,
  `total_tax` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_order_customer`
--

DROP TABLE IF EXISTS `woobooking_order_customer`;
CREATE TABLE `woobooking_order_customer` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_order_detail`
--

DROP TABLE IF EXISTS `woobooking_order_detail`;
CREATE TABLE `woobooking_order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `open_source_link_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `extra_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `params` mediumtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `total` float NOT NULL,
  `total_tax` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_order_detail_rate`
--

DROP TABLE IF EXISTS `woobooking_order_detail_rate`;
CREATE TABLE `woobooking_order_detail_rate` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `open_source_link_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `extra_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `params` mediumtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `rate_id` int(11) NOT NULL,
  `total` float NOT NULL,
  `total_tax` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_order_status`
--

DROP TABLE IF EXISTS `woobooking_order_status`;
CREATE TABLE `woobooking_order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `ordering` int(11) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_package`
--

DROP TABLE IF EXISTS `woobooking_package`;
CREATE TABLE `woobooking_package` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(200) NOT NULL,
  `params` mediumtext NOT NULL,
  `price` double NOT NULL,
  `published` int(11) NOT NULL,
  `package_color` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_package_event`
--

DROP TABLE IF EXISTS `woobooking_package_event`;
CREATE TABLE `woobooking_package_event` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_package_tag`
--

DROP TABLE IF EXISTS `woobooking_package_tag`;
CREATE TABLE `woobooking_package_tag` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_payment`
--

DROP TABLE IF EXISTS `woobooking_payment`;
CREATE TABLE `woobooking_payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `is_payment_online` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `debug` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `ordering` int(11) NOT NULL,
  `params` mediumtext NOT NULL,
  `published` int(11) NOT NULL,
  `description` text NOT NULL,
  `event_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_rate`
--

DROP TABLE IF EXISTS `woobooking_rate`;
CREATE TABLE `woobooking_rate` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `object_id` int(11) NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_service`
--

DROP TABLE IF EXISTS `woobooking_service`;
CREATE TABLE `woobooking_service` (
  `id` int(11) NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `duration` float NOT NULL,
  `price` float NOT NULL,
  `open_source_link_id` int(11) NOT NULL,
  `buffer_time_before` float NOT NULL,
  `ordering` int(11) NOT NULL,
  `buffer_time_after` float NOT NULL,
  `minimum_capacity` int(11) NOT NULL,
  `maximum_capacity` int(11) NOT NULL,
  `bringing_anyone` int(11) NOT NULL,
  `price_will_multiply` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  `multiply_number` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `disable_payment_online` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_service_employee`
--

DROP TABLE IF EXISTS `woobooking_service_employee`;
CREATE TABLE `woobooking_service_employee` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `enable_customize` int(11) NOT NULL,
  `price` float NOT NULL,
  `minimum_capacity` int(11) NOT NULL,
  `maximum_capacity` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_shipping`
--

DROP TABLE IF EXISTS `woobooking_shipping`;
CREATE TABLE `woobooking_shipping` (
  `id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `company` varchar(255) NOT NULL,
  `country` varchar(50) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `postcode` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_state`
--

DROP TABLE IF EXISTS `woobooking_state`;
CREATE TABLE `woobooking_state` (
  `id` int(11) NOT NULL,
  `statename` varchar(200) NOT NULL,
  `country_id` int(11) NOT NULL,
  `statecode` char(3) NOT NULL,
  `code` char(2) NOT NULL,
  `published` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_tag`
--

DROP TABLE IF EXISTS `woobooking_tag`;
CREATE TABLE `woobooking_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_user`
--

DROP TABLE IF EXISTS `woobooking_user`;
CREATE TABLE `woobooking_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `mobile` int(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `open_source_user_id` int(11) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `business` varchar(255) DEFAULT NULL,
  `published` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `woobooking_view`
--

DROP TABLE IF EXISTS `woobooking_view`;
CREATE TABLE `woobooking_view` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `published` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `woobooking_apps`
--
ALTER TABLE `woobooking_apps`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_billing`
--
ALTER TABLE `woobooking_billing`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_block`
--
ALTER TABLE `woobooking_block`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_cart`
--
ALTER TABLE `woobooking_cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Chỉ mục cho bảng `woobooking_category`
--
ALTER TABLE `woobooking_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_category_tag`
--
ALTER TABLE `woobooking_category_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`category_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Chỉ mục cho bảng `woobooking_config`
--
ALTER TABLE `woobooking_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_country`
--
ALTER TABLE `woobooking_country`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_customer`
--
ALTER TABLE `woobooking_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_employee`
--
ALTER TABLE `woobooking_employee`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_event`
--
ALTER TABLE `woobooking_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Chỉ mục cho bảng `woobooking_event_employee`
--
ALTER TABLE `woobooking_event_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Chỉ mục cho bảng `woobooking_event_tag`
--
ALTER TABLE `woobooking_event_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Chỉ mục cho bảng `woobooking_extra`
--
ALTER TABLE `woobooking_extra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`);

--
-- Chỉ mục cho bảng `woobooking_finance`
--
ALTER TABLE `woobooking_finance`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_gallery`
--
ALTER TABLE `woobooking_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_location`
--
ALTER TABLE `woobooking_location`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_notification`
--
ALTER TABLE `woobooking_notification`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_order`
--
ALTER TABLE `woobooking_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_id` (`order_status_id`);

--
-- Chỉ mục cho bảng `woobooking_order_customer`
--
ALTER TABLE `woobooking_order_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_order_detail`
--
ALTER TABLE `woobooking_order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `order_id_2` (`order_id`);

--
-- Chỉ mục cho bảng `woobooking_order_detail_rate`
--
ALTER TABLE `woobooking_order_detail_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_detail_id` (`order_detail_id`);

--
-- Chỉ mục cho bảng `woobooking_order_status`
--
ALTER TABLE `woobooking_order_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `woobooking_package`
--
ALTER TABLE `woobooking_package`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_package_event`
--
ALTER TABLE `woobooking_package_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `employee_id` (`package_id`);

--
-- Chỉ mục cho bảng `woobooking_package_tag`
--
ALTER TABLE `woobooking_package_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`package_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Chỉ mục cho bảng `woobooking_payment`
--
ALTER TABLE `woobooking_payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_rate`
--
ALTER TABLE `woobooking_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`object_id`);

--
-- Chỉ mục cho bảng `woobooking_service`
--
ALTER TABLE `woobooking_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `woobooking_service_employee`
--
ALTER TABLE `woobooking_service_employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_id` (`employee_id`,`service_id`);

--
-- Chỉ mục cho bảng `woobooking_shipping`
--
ALTER TABLE `woobooking_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_state`
--
ALTER TABLE `woobooking_state`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_tag`
--
ALTER TABLE `woobooking_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `woobooking_user`
--
ALTER TABLE `woobooking_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `woobooking_view`
--
ALTER TABLE `woobooking_view`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `woobooking_apps`
--
ALTER TABLE `woobooking_apps`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_billing`
--
ALTER TABLE `woobooking_billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_block`
--
ALTER TABLE `woobooking_block`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_cart`
--
ALTER TABLE `woobooking_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_category`
--
ALTER TABLE `woobooking_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_category_tag`
--
ALTER TABLE `woobooking_category_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_country`
--
ALTER TABLE `woobooking_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_customer`
--
ALTER TABLE `woobooking_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_employee`
--
ALTER TABLE `woobooking_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_event`
--
ALTER TABLE `woobooking_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_event_employee`
--
ALTER TABLE `woobooking_event_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_event_tag`
--
ALTER TABLE `woobooking_event_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_extra`
--
ALTER TABLE `woobooking_extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_finance`
--
ALTER TABLE `woobooking_finance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_gallery`
--
ALTER TABLE `woobooking_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_location`
--
ALTER TABLE `woobooking_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_notification`
--
ALTER TABLE `woobooking_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_order`
--
ALTER TABLE `woobooking_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_order_customer`
--
ALTER TABLE `woobooking_order_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_order_detail`
--
ALTER TABLE `woobooking_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_order_detail_rate`
--
ALTER TABLE `woobooking_order_detail_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_order_status`
--
ALTER TABLE `woobooking_order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_package`
--
ALTER TABLE `woobooking_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_package_event`
--
ALTER TABLE `woobooking_package_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_package_tag`
--
ALTER TABLE `woobooking_package_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_payment`
--
ALTER TABLE `woobooking_payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_rate`
--
ALTER TABLE `woobooking_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_service`
--
ALTER TABLE `woobooking_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_service_employee`
--
ALTER TABLE `woobooking_service_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_shipping`
--
ALTER TABLE `woobooking_shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_state`
--
ALTER TABLE `woobooking_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_tag`
--
ALTER TABLE `woobooking_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_user`
--
ALTER TABLE `woobooking_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `woobooking_view`
--
ALTER TABLE `woobooking_view`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `woobooking_event`
--
ALTER TABLE `woobooking_event`
  ADD CONSTRAINT `woobooking_event_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `woobooking_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `woobooking_event_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `woobooking_location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `woobooking_event_employee`
--
ALTER TABLE `woobooking_event_employee`
  ADD CONSTRAINT `woobooking_event_employee_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `woobooking_employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `woobooking_event_employee_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `woobooking_event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `woobooking_event_tag`
--
ALTER TABLE `woobooking_event_tag`
  ADD CONSTRAINT `woobooking_event_tag_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `woobooking_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `woobooking_event_tag_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `woobooking_event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `woobooking_extra`
--
ALTER TABLE `woobooking_extra`
  ADD CONSTRAINT `woobooking_extra_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `woobooking_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `woobooking_order`
--
ALTER TABLE `woobooking_order`
  ADD CONSTRAINT `woobooking_order_ibfk_1` FOREIGN KEY (`order_status_id`) REFERENCES `woobooking_order_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `woobooking_order_detail`
--
ALTER TABLE `woobooking_order_detail`
  ADD CONSTRAINT `woobooking_order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `woobooking_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `woobooking_order_detail_rate`
--
ALTER TABLE `woobooking_order_detail_rate`
  ADD CONSTRAINT `woobooking_order_detail_rate_ibfk_1` FOREIGN KEY (`order_detail_id`) REFERENCES `woobooking_order_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `woobooking_package_event`
--
ALTER TABLE `woobooking_package_event`
  ADD CONSTRAINT `woobooking_package_event_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `woobooking_event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `woobooking_package_event_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `woobooking_package` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `woobooking_service`
--
ALTER TABLE `woobooking_service`
  ADD CONSTRAINT `woobooking_service_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `woobooking_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

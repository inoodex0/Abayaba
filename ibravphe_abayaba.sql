-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2026 at 01:15 AM
-- Server version: 11.4.12-MariaDB-cll-lve-log
-- PHP Version: 8.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ibravphe_abayaba`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `category_id`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(31, 1, 'public/uploads/banner/1761409144d685d8c8-cfa2-4971-8a42-12f29779b570.png', 'https://www.abayaba.com/', 1, '2025-10-26 02:19:04', '2025-10-26 02:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `banner_categories`
--

CREATE TABLE `banner_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_categories`
--

INSERT INTO `banner_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slider (1060x395)', 1, '2023-02-21 03:05:14', '2023-10-01 04:15:55'),
(5, 'Slider Bottom Ads (425X212px)', 1, '2023-11-19 04:36:08', '2023-11-19 05:25:34'),
(6, 'Footer Top Ads', 1, '2023-11-19 05:25:46', '2023-11-19 05:25:46'),
(7, 'abayaba', 1, '2024-09-14 03:42:20', '2025-09-27 04:57:54'),
(8, 'Trusted Bar', 1, '2025-03-11 12:16:28', '2025-03-19 23:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `category_id`, `title`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 6, 2, 'ঘরে মোমবাতির ব্যবহার ও সৌন্দর্য বৃদ্ধি', 'ghre-mombatir-bzbhar-oo-soundrz-brriddhi', 'ঘরে মোমবাতি ব্যবহারের কিছু উপায়:\r\n\r\nলিভিং রুমে: সেন্টেড ক্যান্ডেল রাখলে ঘরে ছড়িয়ে পড়ে মনভোলানো ঘ্রাণ ও উষ্ণ আবহ।\r\n\r\nবাথরুমে: স্পা-মুড তৈরি করতে মোমবাতির আলো একদম পারফেক্ট।\r\n\r\nডাইনিং টেবিলে: ক্যান্ডেল লাইট ডিনার শুধু রোমান্টিক নয়, ঘরকেও করে তোলে বিশেষ।\r\n\r\nবেডরুমে: হালকা আলো ঘুমের আগে মনকে শান্ত করে।\r\n\r\nডেকোর কর্নারে: ছোট প্ল্যান্ট, বই ও ক্যান্ডেল মিলে তৈরি করে আর্টিস্টিক ভাইব।\r\n\r\nসৌন্দর্য বৃদ্ধির টিপস:\r\n\r\nকাঁচের বা সিমেন্টের হোল্ডারে মোমবাতি রাখলে ঘরে আসে মডার্ন লুক।\r\n\r\nঘরের থিমের সঙ্গে মিলিয়ে রঙ ও ঘ্রাণ বেছে নিন।\r\n\r\nসন্ধ্যার পর মৃদু আলোয় ক্যান্ডেল জ্বালিয়ে দিন— দেখবেন ঘরের পরিবেশ মুহূর্তেই বদলে যাবে।', 'public/uploads/blogs/1761406724-abayaba.com-_-candle-blog-1.png', 1, '2025-09-08 10:39:22', '2025-10-26 01:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `slug` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 'style', 'style', 1, '2025-09-08 06:34:27', '2025-09-08 11:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` text DEFAULT NULL,
  `image_two` text DEFAULT NULL,
  `image_three` text DEFAULT NULL,
  `image_four` text DEFAULT NULL,
  `image_five` text DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_title` longtext DEFAULT NULL,
  `banner` longtext DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `youtube_video` varchar(191) DEFAULT NULL,
  `upokarita_title` longtext DEFAULT NULL,
  `upokarita_text1` varchar(191) DEFAULT NULL,
  `upokarita_text2` varchar(191) DEFAULT NULL,
  `upokarita_text3` varchar(191) DEFAULT NULL,
  `upokarita_text4` varchar(191) DEFAULT NULL,
  `niyom_tittle` varchar(191) DEFAULT NULL,
  `niyom_text1` varchar(191) DEFAULT NULL,
  `niyom_text2` varchar(191) DEFAULT NULL,
  `niyom_text3` varchar(191) DEFAULT NULL,
  `niyom_text4` varchar(191) DEFAULT NULL,
  `slider_tittle` varchar(191) DEFAULT NULL,
  `details_tittle` varchar(191) DEFAULT NULL,
  `details_text1` varchar(191) DEFAULT NULL,
  `details_text2` varchar(191) DEFAULT NULL,
  `details_text3` varchar(191) DEFAULT NULL,
  `details_text4` varchar(191) DEFAULT NULL,
  `details_text5` varchar(191) DEFAULT NULL,
  `details_text6` varchar(191) DEFAULT NULL,
  `short_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_product`
--

CREATE TABLE `campaign_product` (
  `id` int(11) NOT NULL,
  `new_campaign_id` int(4) NOT NULL,
  `product_id` int(4) NOT NULL,
  `campaign_price` decimal(10,0) NOT NULL,
  `campaign_stock` tinyint(4) NOT NULL,
  `show_at_home` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_reviews`
--

CREATE TABLE `campaign_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `front_view` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `image`, `meta_title`, `meta_description`, `front_view`, `status`, `created_at`, `updated_at`) VALUES
(42, 0, 'Candle', 'candle', 'public/uploads/category/1757429741-candle.jpg', 'Candle', '<p>Candle</p>', 1, 1, '2025-09-10 00:46:31', '2025-09-10 00:55:41'),
(43, 0, 'Home Decor', 'home-decor', 'public/uploads/category/1757429723-decor-600x600.png', 'Home Decor', '<p>Home Decor</p>', 0, 1, '2025-09-10 00:49:20', '2025-09-13 14:39:18'),
(44, 0, 'Mandala', 'mandala', 'public/uploads/category/1757429833-3-23-10-7-5-17-54m.jpg', 'mandala', '<p>mandala</p>', 0, 1, '2025-09-10 00:50:32', '2025-09-13 14:39:11'),
(45, 0, 'Calligraphy', 'calligraphy', 'public/uploads/category/1757429705-fabi-ayyi-ala-i-rabbikuma-tukazziban-1.jpg', 'Calligraphy', '<p>Calligraphy </p>', 0, 1, '2025-09-10 00:52:08', '2025-09-13 14:39:29'),
(46, 0, 'Interior', 'interior', 'public/uploads/category/1770264571-1768757410-1.png', 'Abayaba Interior design', NULL, 1, 1, '2025-10-26 02:33:51', '2026-02-05 15:09:31'),
(47, 0, 'Pet House', 'pet-house', 'public/uploads/category/1768757021-pet-house-1.png', 'Pet House', NULL, 0, 1, '2026-01-19 04:23:41', '2026-01-19 04:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `childcategoryName` varchar(255) NOT NULL DEFAULT 'text',
  `slug` varchar(255) NOT NULL DEFAULT 'text',
  `subcategory_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `colorName` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `colorName`, `color`, `status`, `created_at`, `updated_at`) VALUES
(32, 'Aqua', '#00FFFF', '1', '2023-11-03 06:04:29', '2023-11-03 09:23:46'),
(35, 'Black', '#000000', '1', '2023-11-03 06:09:13', '2023-11-03 06:09:22'),
(36, 'Bright Blue', '#0096FF', '1', '2023-11-03 06:09:30', '2023-11-03 06:09:38'),
(39, 'Coral', '#FF7F50', '1', '2023-11-03 06:10:23', '2023-11-03 06:10:31'),
(40, 'Gray', '#999999', '1', '2023-11-03 06:10:40', '2023-11-03 06:10:48'),
(41, 'Green', '#008000', '1', '2023-11-03 06:10:57', '2023-11-03 06:11:05'),
(42, 'Hot Pink', '#FF69B4', '1', '2023-11-03 06:11:24', '2023-11-03 06:11:29'),
(44, 'Pink', '#FFC0CB', '1', '2023-11-03 06:12:03', '2023-11-03 08:50:43'),
(48, 'Magenta', '#FF00FF', '1', '2023-11-03 06:13:28', '2023-11-03 06:13:39'),
(49, 'Maroon', '#990000', '1', '2023-11-03 06:13:51', '2023-11-03 06:14:00'),
(50, 'Grass Green', '#7CFC00', '1', '2023-11-03 06:14:14', '2023-11-03 06:59:07'),
(51, 'Navy', '#000080', '1', '2023-11-03 06:14:30', '2023-11-03 06:14:41'),
(52, 'Blue', '#0000FF', '1', '2023-11-03 06:15:01', '2023-11-03 09:53:12'),
(53, 'Olive', '#808000', '1', '2023-11-03 06:15:26', '2023-11-03 06:15:37'),
(54, 'Orange', '#FFA500', '1', '2023-11-03 06:15:46', '2023-11-03 06:15:58'),
(55, 'Yellow Orange', '#FFAA33', '1', '2023-11-03 06:16:17', '2023-11-03 07:03:16'),
(56, 'Orchid', '#DA70D6', '1', '2023-11-03 06:16:35', '2023-11-03 06:16:42'),
(58, 'Purple Heart', '#8b1ec4', '1', '2023-11-03 06:17:09', '2023-11-03 06:17:20'),
(59, 'Red', '#FF0000', '1', '2023-11-03 06:17:30', '2023-11-03 06:17:42'),
(60, 'Canary Yellow', '#FFFF8F', '1', '2023-11-03 06:17:51', '2023-11-03 08:24:41'),
(61, 'Salmon', '#FA8072', '1', '2023-11-03 06:18:13', '2023-11-03 06:18:24'),
(62, 'White', '#ffffff', '1', '2023-11-03 06:18:44', '2023-11-03 06:18:52'),
(63, 'Gold', '#FFD700', '1', '2023-11-03 06:19:02', '2023-11-03 07:08:05'),
(64, 'Crimson', '#DC143C', '1', '2023-11-03 06:37:11', '2023-11-03 09:19:11'),
(65, 'Silver', '#C0C0C0', '1', '2023-11-03 06:40:45', '2023-11-03 09:11:55'),
(67, 'Light Orange', '#FFD580', '1', '2023-11-03 07:13:52', '2023-11-03 07:14:03'),
(68, 'Navajo White', '#FFDEAD', '1', '2023-11-03 07:15:18', '2023-11-03 08:16:20'),
(69, 'Pumpkin Orange', '#FF7518', '1', '2023-11-03 07:17:29', '2023-11-03 07:17:38'),
(70, 'Chocolate', '#D2691E', '1', '2023-11-03 08:01:35', '2023-11-03 08:34:09'),
(73, 'Biscuit', '#FAD7A0', '1', '2023-11-03 09:09:43', '2023-11-03 09:10:20'),
(74, 'Wooden', '#c3a26e', '1', '2024-09-23 04:36:26', '2024-09-23 04:36:26'),
(75, 'Bottle green', '#074221', '1', '2024-09-27 13:55:35', '2024-09-27 13:55:35'),
(76, 'Baby pink', '#efbfd7', '1', '2024-09-27 13:56:02', '2024-09-27 13:56:02'),
(77, 'Deep Green', '#0b6e19', '1', '2024-09-27 13:56:17', '2024-09-27 13:56:17'),
(79, 'sea green', '#053c53', '1', '2024-09-27 13:57:16', '2024-09-27 13:57:16'),
(80, 'Feroza', '#2f878e', '1', '2024-09-27 13:57:59', '2024-09-27 13:57:59'),
(81, 'deep majenda', '#b32373', '1', '2024-09-27 13:58:25', '2024-09-27 13:58:25'),
(82, 'pest', '#acdcf0', '1', '2024-10-08 15:19:57', '2024-10-08 15:19:57'),
(83, 'pine', '#14647b', '1', '2024-10-08 15:21:15', '2024-10-08 15:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotline` varchar(50) DEFAULT NULL,
  `hotmail` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `maplink` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `hotline`, `hotmail`, `phone`, `email`, `address`, `maplink`, `status`, `created_at`, `updated_at`) VALUES
(1, '+8801624339185', 'support@electronicspartsbd.com', '+8801624339185', 'support@electronicspartsbd.com', 'Dhaka, Bangladesh.', 'https://maps.app.goo.gl/Mwkab7g9pcCBKG129', 1, '2023-01-22 10:35:29', '2025-09-27 01:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `courierapis`
--

CREATE TABLE `courierapis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `secret_key` varchar(155) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courierapis`
--

INSERT INTO `courierapis` (`id`, `type`, `api_key`, `secret_key`, `url`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'steadfast', '6bj4tltvc0tot7m1kvyze1aenpprawff', 'gtealqr9ttcbc4sg4shrissu', 'https://portal.packzy.com/api/v1', '', '1', '2024-02-06 11:29:46', '2024-11-22 01:30:23'),
(2, 'pathao', '', '', 'https://api-hermes.pathao.com/aladdin', 'H3bW5MNFPf8LlrVLKly0WEs61yfvSmqEDlnNdcf6', '1', '2024-02-06 11:29:46', '2024-11-29 22:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `create_pages`
--

CREATE TABLE `create_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pageFor` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `create_pages`
--

INSERT INTO `create_pages` (`id`, `name`, `slug`, `title`, `description`, `status`, `created_at`, `updated_at`, `pageFor`) VALUES
(3, 'Delivery Policy', 'delivery-policy', '✅ ডেলিভারি নীতিমালা (Delivery Policy) ✅', '<div><br></div><div>আমরা আমাদের গ্রাহকদের দ্রুত এবং নির্ভরযোগ্য ডেলিভারি সেবা প্রদান করতে প্রতিশ্রুতিবদ্ধ। আপনার অর্ডার সফলভাবে এবং নিরাপদে পৌঁছানোর জন্য অনুগ্রহ করে অর্ডার করার আগে নিম্নলিখিত ডেলিভারি নীতিমালা পড়ুন:</div><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ডেলিভারি এলাকাসমূহঃ</b></span></h5><ul><li>আমরা বাংলাদেশের প্রধান শহর এবং উপ-শহরে ডেলিভারি সেবা প্রদান করি। তবে কিছু দূর্গম এলাকা বা বিশেষ স্থানে ডেলিভারি সেবা সীমিত থাকতে পারে।</li><li>নির্দিষ্ট এলাকার বাইরে হলে, আমরা আপনাকে বিকল্প ডেলিভারি ব্যবস্থা বা অতিরিক্ত চার্জের বিষয়ে জানাবো।</li><li>বর্তমানে, আমরা শুধুমাত্র বাংলাদেশে ডেলিভারি করি, আন্তর্জাতিক ডেলিভারি সার্ভিস নেই।</li></ul><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ ডেলিভারি সময়সীমাঃ</b></span></h5><ul><li>ঢাকার ভেতরে: অর্ডার কনফার্মেশনের পর সাধারণত ১-২ কর্মদিবসের মধ্যে ডেলিভারি সম্পন্ন হয়।</li><li>ঢাকার বাইরে: অবস্থানের ওপর নির্ভর করে ২-৪ কর্মদিবসের মধ্যে ডেলিভারি করা হয়।</li><li>সরকারি ছুটি, প্রাকৃতিক দুর্যোগ বা অনিবার্য পরিস্থিতিতে ডেলিভারি সময় কিছুটা পরিবর্তিত হতে পারে।</li><li>কিছু নির্দিষ্ট পণ্য বা বিশেষ ক্যাম্পেইনের ক্ষেত্রে ডেলিভারি সময় বাড়তে পারে।</li></ul><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ ডেলিভারি সেবা ও কুরিয়ার পার্টনারঃ</b></span></h5><div>আমরা নিচের কুরিয়ার সার্ভিসগুলোর মাধ্যমে ডেলিভারি প্রদান করি:</div><ul><li>সুন্দরবন কুরিয়ার</li><li>এসএ পরিবহন</li><li>জননী কুরিয়ার</li><li>পাঠাও</li><li>ই-কুরিয়ার</li><li>করতোয়া</li><li>এজেআর</li><li>স্টিডফাস্ট</li><li>রেডেক্স</li><li>পেপারফ্লাই</li><li>ইত্যাদি কুরিয়ার</li></ul><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅গুরুত্বপূর্ণ টিপসঃ</b></span></h5><ul><li>পণ্য গ্রহণের সময় প্যাকেট ভালোভাবে চেক করুন।</li><li>যদি প্যাকেট ক্ষতিগ্রস্ত হয়, সঙ্গে সঙ্গে ডেলিভারি ম্যান ও আমাদের কাস্টমার কেয়ারে জানান।</li><li>প্যাকেট খোলার পর যদি কোনো সমস্যা পান, ২৪ ঘণ্টার মধ্যে আমাদের জানাতে হবে।</li></ul><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ডেলিভারি চার্জঃ</b></span></h5><div>ডেলিভারি চার্জ নির্ধারিত হবে অর্ডারের ওজন, প্যাকেজ সাইজ এবং ডেলিভারি লোকেশন অনুযায়ী:</div><div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">✅ </span><strong data-start=\"56\" data-end=\"72\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">ঢাকা মেট্রো:</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> মাত্র </span><strong data-start=\"79\" data-end=\"90\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">৫৯ টাকা</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> 🏙️ </span><em data-start=\"95\" data-end=\"111\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">(সময়: ১-২ দিন)</em></div><div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">✅ </span><strong data-start=\"116\" data-end=\"135\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">ঢাকা সাব-এলাকা:</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> মাত্র </span><strong data-start=\"142\" data-end=\"153\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">৯৯ টাকা</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> 🏢 </span><em data-start=\"157\" data-end=\"173\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">(সময়: ২-৩ দিন)</em></div><div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">✅ </span><strong data-start=\"178\" data-end=\"230\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">ঢাকার বাইরে (সুন্দরবন কুরিয়ার - জেলা পর্যায়ে):</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> মাত্র </span><strong data-start=\"237\" data-end=\"249\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">১১৯ টাকা</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> 🚛 </span><em data-start=\"253\" data-end=\"269\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">(সময়: ২-৩ দিন)</em></div><div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">✅ </span><strong data-start=\"274\" data-end=\"328\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">ঢাকার বাইরে (সুন্দরবন কুরিয়ার - উপজেলা পর্যায়ে):</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> মাত্র </span><strong data-start=\"335\" data-end=\"347\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">১২৯ টাকা</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> 🏡 </span><em data-start=\"351\" data-end=\"367\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">(সময়: ২-৩ দিন)</em></div><div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">✅ </span><strong data-start=\"372\" data-end=\"425\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">ঢাকার বাইরে (স্টিডফাস্ট কুরিয়ার - হোম ডেলিভারি):</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> মাত্র </span><strong data-start=\"432\" data-end=\"444\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">১১৯ টাকা</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> 🏠 </span><em data-start=\"448\" data-end=\"464\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">(সময়: ২-৩ দিন)</em></div><div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">✅ </span><strong data-start=\"469\" data-end=\"517\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">সারা বাংলাদেশ (এস.এ পরিবহন - মিনিমাম চার্জ):</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> মাত্র </span><strong data-start=\"524\" data-end=\"536\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">১৯৯ টাকা</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> 🌍 </span><em data-start=\"540\" data-end=\"556\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">(সময়: ১-২ দিন)</em></div><div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">✅ </span><strong data-start=\"561\" data-end=\"591\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">সম্পূর্ণ টাকা পরিশোধ করলে:</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> ঢাকার বাইরে মাত্র </span><strong data-start=\"610\" data-end=\"622\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">১০৯ টাকা</strong><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"> 💳 </span><em data-start=\"626\" data-end=\"642\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">(সময়: ২-৩ দিন)</em></div><div><em data-start=\"626\" data-end=\"642\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"><br></em><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">🎉 </span><strong data-start=\"649\" data-end=\"664\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">বিশেষ অফার:</strong></div><div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">🛍️ </span><strong data-start=\"671\" data-end=\"725\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">২০০০ টাকার অর্ডারে ঢাকার মধ্যে ডেলিভারি একদম ফ্রি!</strong></div><div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">🚚 </span><strong data-start=\"731\" data-end=\"787\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">৩০০০ টাকার অর্ডারে সারা বাংলাদেশ ডেলিভারি একদম ফ্রি!</strong></div><div><strong data-start=\"731\" data-end=\"787\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\"><br></strong></div><ul><li>কিছু ক্ষেত্রে, বিশেষ অফার বা ক্যাম্পেইনের মাধ্যমে ফ্রি শিপিং সুবিধা পাওয়া যেতে পারে।</li><li>পণ্য অর্ডার করার সময় ডেলিভারি চার্জটি আগে বিকাশ করতে হবে না, তবে কর্তৃপক্ষ বিকাশ নেওয়ার অধিকার রাখে। বাকি টাকা পণ্য রিসিভ করার পর দিতে হবে।</li></ul><h5><span style=\"background-color: rgb(255, 255, 0);\"><b><br></b></span></h5><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ক্যাশ অন ডেলিভারি ও পেমেন্ট নীতিমালাঃ</b></span></h5><ul><li>ঢাকার ভেতরে ও নির্দিষ্ট কিছু অঞ্চলে ক্যাশ অন ডেলিভারি (COD) সুবিধা রয়েছে।</li><li>ক্যাশ অন ডেলিভারি সর্বোচ্চ ৪০০০ টাকা পর্যন্ত প্রযোজ্য। এর বেশি হলে অগ্রিম পেমেন্ট লাগবে।</li><li>ডেলিভারির সময় সঠিক পরিমাণ টাকা প্রস্তুত রাখুন, কারণ আমাদের ডেলিভারি ম্যান এর কাছে টাকা চেঞ্জ নাও থাকতে পারে।</li><li>সারা বাংলাদেশে ক্যাশ অন ডেলিভারি (COD) সুবিধা প্রদান করা হয়। তবে, কিছু নির্দিষ্ট ক্ষেত্রে অগ্রিম পেমেন্ট প্রয়োজন হতে পারে।</li><li>ডেলিভারি চার্জ অগ্রিম পরিশোধ করতে হবে। ক্যাশ অন ডেলিভারি (COD) সুবিধা থাকলেও, নির্ধারিত ডেলিভারি চার্জ অগ্রিম নেওয়া হবে।</li></ul><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅অর্ডার প্রসেসিং ও ট্র্যাকিং</b></span></h5><ul><li>অর্ডার কনফার্মেশনের পর আমাদের সিস্টেম থেকে প্রসেসিং শুরু হবে এবং আপনাকে কনফার্মেশন ইমেইল/এসএমএস পাঠানো হবে।</li><li>সরাসরি ফোন কলের মাধ্যমে অর্ডার কনফার্ম করা হবে। ফোন কল ছাড়া অর্ডার কনফার্ম করা হবে না।</li><li>প্যাকেজিং ও শিপিং সম্পন্ন হওয়ার পর ট্র্যাকিং নম্বর সরবরাহ করা হবে।</li><li>বিকাল ৪টার পর করা অর্ডার পরবর্তী কর্মদিবসে প্রসেস করা হবে।</li><li>সরকারি ছুটি বা সাপ্তাহিক ছুটির দিনে করা অর্ডার পরবর্তী কর্মদিবসে প্রসেস করা হবে।</li></ul><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ডেলিভারি গ্রহণের শর্তাবলীঃ</b></span></h5><ul><li>হোম ডেলিভারি (পাঠাও, ই-কুরিয়ার, স্টিডফাস্ট, রেডেক্স, পেপারফ্লাই): পণ্য হাতে পাওয়ার আগে চেক করার সুযোগ থাকবে।</li><li>কুরিয়ার অফিস থেকে সংগ্রহ (সুন্দরবন, এসএ, জননী, করতোয়া, এজেআর): আগে টাকা পরিশোধ করতে হবে, তারপর পণ্য নিতে হবে।</li><li>যদি পণ্য ত্রুটিপূর্ণ বা ক্ষতিগ্রস্ত থাকে, তাহলে ২৪ ঘণ্টার মধ্যে আমাদের কাস্টমার কেয়ারে যোগাযোগ করুন।</li><li>আমাদের নিজস্ব ডেলিভারি ম্যান নেই। আমরা থার্ড পার্টি সার্ভিস দ্বারা ডেলিভারি করি, তাই সাধারণত ২ থেকে ৪ দিন সময় নিয়ে থাকে।</li><li>অনুগ্রহ করে মোবাইল চালু রাখুন এবং ডেলিভারি ম্যানের কল আসলে পণ্যটি গ্রহণ করুন।</li><li>যেহেতু আমরা থার্ড পার্টি সার্ভিস ব্যবহার করি, তাই ডেলিভারি গ্রহণের সময় পণ্যটি ভালোভাবে চেক করুন। যদি পণ্যে কোন ত্রুটি, ভুল পণ্য বা সঠিক সংখ্যা না থাকে, তবে ডেলিভারি ম্যানের সামনে আমাদের জানাতে হবে।</li><li>ডেলিভারি ম্যান চলে যাওয়ার পর পণ্যটি ফেরত আনা বা পাল্টানো কঠিন হয়ে পড়ে।</li></ul><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅অর্ডার ফেরত ও পরিবর্তন নীতিমালাঃ</b></span></h5><ul><li>ডেলিভারি প্রক্রিয়ার সময় যদি অর্ডার বাতিল করতে চান, নির্দিষ্ট নিয়ম অনুযায়ী তা করা যাবে।</li><li>যেকোনো ফেরত বা পরিবর্তনের ক্ষেত্রে ডেলিভারি চার্জ পরিশোধ করতে হবে।</li><li>পার্সেল খুলে ফেলার পর যদি কোন ত্রুটি থাকে, আমরা ফ্রি তে রিপ্লেস বা রিফান্ড করব, তবে সেক্ষেত্রে পণ্যটি আমাদের কাছে রিটার্ন করতে হবে।</li><li>যদি পণ্যটি পছন্দ না হয় বা অকারণে রিটার্ন করা হয়, তবে ডেলিভারি চার্জ অবশ্যই দিতে হবে।</li></ul><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ডেলিভারি সংক্রান্ত সমস্যা ও সমাধানঃ</b></span></h5><ul><li>ডেলিভারি বিলম্বিত হলে বা পণ্য হারিয়ে গেলে আমাদের কাস্টমার সাপোর্ট টিম সমস্যার সমাধান করবে।</li><li>অনিবার্য কারণ (যেমন: প্রাকৃতিক দুর্যোগ বা কুরিয়ার সমস্যার কারণে) ডেলিভারি দেরি হতে পারে।</li><li>যদি কুরিয়ারের কারণে অর্ডার হারিয়ে যায়, তাহলে পূর্ণ টাকা ফেরত বা নতুন পণ্য পাঠানো হবে।</li></ul><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅কাস্টমার সাপোর্টঃ</b></span></h5><div>ডেলিভারি সংক্রান্ত যেকোনো সমস্যা বা প্রশ্নের জন্য আমাদের কাস্টমার সাপোর্ট টিমের সাথে যোগাযোগ করুন:</div><div><br></div><ul><li><font color=\"#0000ff\">📞 ফোন: +8801333105717</font></li><li><font color=\"#0000ff\">📧 ইমেইল: support@electronicspartsbd.com</font></li><li><font color=\"#0000ff\">📧 ইমেইল:&nbsp;contactselectronicspartsbd@gmail.com</font></li><li><font color=\"#0000ff\">🌐 ওয়েবসাইট:<a href=\"https://www.electronicspartsbd.com/\" target=\"_blank\"> www.electronicspartsbd.com</a></font></li><li><font color=\"#0000ff\">📍 ঠিকানা: পাটুয়াটুলি, ঢাকা-১১০০</font></li></ul><div><br></div><div><b style=\"background-color: rgb(255, 0, 0);\"><font color=\"#ffffff\">বিঃদ্রঃ-&nbsp;Electronics Parts BD যে কোনো সময় ডেলিভারি পলিসি পরিবর্তন বা সংশোধন করার অধিকার সংরক্ষণ করে। গ্রাহকদের সর্বশেষ নীতিমালা অনুসরণ করতে হবে এবং এই পরিবর্তনসমূহ মেনে নেওয়া বাধ্যতামূলক।</font></b></div><div><br></div><div>আমরা সবসময় চেষ্টা করি আপনার শপিং অভিজ্ঞতাকে সহজ, নিরাপদ ও আনন্দদায়ক করতে।&nbsp; <b>Electronics Parts BD</b>-এর সঙ্গেই থাকুন, নির্ভরতার সাথে অনলাইন কেনাকাটা করুন!</div>', 1, '2023-10-04 07:03:00', '2025-03-20 19:32:40', 'ful'),
(5, 'Return & Refund Policy', 'return-&-refund-policy', '✅ রিটার্ন ও রিফান্ড নীতিমালা (Return & Refund Policy) ✅', '<h5><span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"><br></span></h5><p><span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">আমরা চাই আমাদের সম্মানিত গ্রাহকরা সেরা মানের পণ্য এবং নিরবিচারে কেনাকাটার অভিজ্ঞতা উপভোগ করুন। তবুও, যদি কোনো কারণে আপনি প্রাপ্ত পণ্য নিয়ে অসন্তুষ্ট হন, তবে আমাদের রিটার্ন ও রিফান্ড নীতিমালা অনুসারে আপনি পণ্য ফেরত দিতে বা ফেরতের উপযোগী হলে রিফান্ড পেতে পারেন।</span></p><h5><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"><br></span></font></h5><h5><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">👉</span><b style=\"\">রিটার্নের যোগ্যতা</b></font></h5><div><span style=\"background-color: rgb(255, 255, 255);\">আপনি পণ্যটি নিম্নলিখিত কারণে ফেরত দিতে পারবেন:</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅ আপনি ভুল পণ্য পেয়েছেন।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅ প্রাপ্ত পণ্য ত্রুটিপূর্ণ, ক্ষতিগ্রস্ত, বা কার্যকর নয়।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅ পণ্যটি বর্ণনার সাথে মিলছে না।</span></div><div><span style=\"font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">পণ্য ফেরত দেওয়ার জন্য আপনাকে অবশ্যই প্রাপ্তির ৩ দিনের মধ্যে আমাদের সাথে যোগাযোগ করতে হবে।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\"><br></span></div><h5><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">👉</span><b style=\"\">রিটার্ন করার শর্তাবলী</b></font></h5><div><span style=\"background-color: rgb(255, 255, 255);\">✅পণ্য অবশ্যই অব্যবহৃত এবং আসল অবস্থায় থাকতে হবে।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅সকল আনুষঙ্গিক জিনিসপত্র, ম্যানুয়াল এবং প্যাকেজিং অক্ষত থাকতে হবে।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅ব্যবহারের কারণে ক্ষতিগ্রস্ত বা পরিবর্তিত পণ্য ফেরতযোগ্য নয়।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅পণ্য ফেরতের জন্য ক্রেতাকে উপযুক্ত প্রমাণ (ছবি বা ভিডিও) দিতে হতে পারে।</span></div><div><span style=\"background-color: rgb(255, 255, 0);\"><br></span></div><h5><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">👉</span><b style=\"\">রিটার্নের প্রক্রিয়া</b></font></h5><div><span style=\"background-color: rgb(255, 255, 255);\">✅ ধাপ ১: আমাদের কাস্টমার সার্ভিস টিমের সাথে যোগাযোগ করুন।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅ ধাপ ২: পণ্যটির ছবি বা ভিডিও এবং সমস্যা সংক্রান্ত তথ্য সরবরাহ করুন।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅ ধাপ ৩: আমাদের টিম রিটার্নের যোগ্যতা পর্যালোচনা করবে।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅ ধাপ ৪: অনুমোদনের পর আপনাকে রিটার্নের ঠিকানা ও বিস্তারিত জানানো হবে।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅ ধাপ ৫: পণ্য ফেরত পাঠানোর পর যাচাই করা হবে এবং রিফান্ড বা রিপ্লেসমেন্টের প্রক্রিয়া শুরু হবে।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\"><br></span></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">👉</span><b style=\"\">রিফান্ড নীতিমালা</b></span></h5><div><span style=\"background-color: rgb(255, 255, 255);\">✅ যদি পণ্যটি সফলভাবে ফেরত গ্রহণ করা হয়, তবে আপনি রিফান্ডের জন্য যোগ্য হবেন।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅ রিফান্ড সাধারণত ৭ কার্যদিবসের মধ্যে প্রসেস করা হয়।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅ রিফান্ড পদ্ধতি নির্ভর করবে আপনার মূল লেনদেনের পদ্ধতির উপর।</span></div><h5><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"><br></span></font></h5><h5><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">👉</span><b style=\"\">যেভাবে রিফান্ড দেওয়া হবে:</b></font></h5><div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">✅</span><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">&nbsp;</span><span style=\"background-color: rgb(255, 255, 255);\">বিকাশ/নগদ/রকেট – মোবাইল ওয়ালেটে টাকা ফেরত।</span></div><div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">✅</span><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">&nbsp;</span><span style=\"background-color: rgb(255, 255, 255);\">ব্যাংক ট্রান্সফার – আপনার ব্যাংক অ্যাকাউন্টে রিফান্ড করা হবে।</span></div><div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">✅</span><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">&nbsp;</span><span style=\"background-color: rgb(255, 255, 255);\">স্টোর ক্রেডিট/ভাউচার – আপনি চাইলে রিফান্ডের পরিবর্তে স্টোর ক্রেডিটও নিতে পারেন, যা ভবিষ্যতে কেনাকাটায় ব্যবহার করা যাবে।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\"><br></span></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">👉</span><b style=\"\">পণ্য পরিবর্তন (রিপ্লেসমেন্ট) নীতিমালা</b></span></h5><div><span style=\"background-color: rgb(255, 255, 255);\">✅ ভুল বা ত্রুটিপূর্ণ পণ্য পেলে আপনি একই ধরনের নতুন পণ্য পরিবর্তন হিসেবে পেতে পারেন।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅ পরিবর্তিত পণ্য পাঠানো হবে স্টকের উপর নির্ভর করে।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">✅ যদি স্টকে পণ্য না থাকে, তবে আপনি রিফান্ড বা বিকল্প পণ্য বেছে নিতে পারেন।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\"><br></span></div><h5><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">👉</span><b style=\"\">যে পণ্য ফেরত নেওয়া হবে না</b></font></h5><div><span style=\"background-color: rgb(255, 255, 255);\">❌ ব্যবহৃত বা ক্ষতিগ্রস্ত পণ্য।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">❌ ব্যক্তিগত যত্ন ও স্বাস্থ্যবিষয়ক পণ্য (যেমন: ইয়ারফোন, ব্যাটারি, সেন্সর ইত্যাদি)।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">❌ কাস্টম-মেড বা ব্যক্তিগতকৃত পণ্য।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\">❌ বিশেষ অফারে কেনা ডিসকাউন্টেড বা ক্লিয়ারেন্স সেল পণ্য।</span></div><div><span style=\"background-color: rgb(255, 255, 255);\"><br></span></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">👉</span><b>শিপিং চার্জ ও ফেরত পাঠানোর দায়িত্ব</b>:</span><span style=\"background-color: rgb(255, 255, 255);\">&nbsp;</span></h5><p>✅ ভুল বা ত্রুটিপূর্ণ পণ্যের ক্ষেত্রে আমরা শিপিং খরচ বহন করব। অন্য কোনো কারণে ফেরত পাঠালে ক্রেতাকে শিপিং চার্জ বহন করতে হবে।</p><h5><span style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"><br></span></span></h5><h5><span style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">👉</span><b style=\"\">জরুরি কাস্টমার সাপোর্ট:&nbsp;</b></span></h5><p>✅রিটার্ন বা রিফান্ড সংক্রান্ত যে কোনো প্রশ্নের জন্য আমাদের কাস্টমার সার্ভিস টিমের সাথে যোগাযোগ করুন:</p><div><font style=\"background-color: rgb(255, 255, 255);\" color=\"#ff0000\"><b>📞 হটলাইন: +8801333105717</b></font></div><div><font style=\"background-color: rgb(255, 255, 255);\" color=\"#ff0000\"><b>📧 ইমেইল:support@electronicspartsbd.com</b></font></div><div><span style=\"font-weight: bolder; color: rgb(255, 0, 0);\">📧 ইমেইল:</span><span style=\"background-color: var(--ct-card-bg); text-align: var(--ct-body-text-align);\"><font color=\"#ff0000\"><b>contactselectronicspartsbd@gmail.com</b></font></span></div><div><b><font style=\"background-color: rgb(255, 255, 255);\" color=\"#ff0000\">💬 লাইভ চ্যাট: ওয়েবসাইটে অথবা ফেসবুক পেজে মেসেজ এর মাধ্য</font><font color=\"#f7f7f7\" style=\"background-color: rgb(255, 255, 255);\">মে&nbsp;</font></b></div><div><span style=\"background-color: rgb(255, 255, 255);\"><br></span></div><div><h4><font style=\"background-color: rgb(255, 0, 0);\" color=\"#ffffff\"><b><u>অন্যান্য শর্তাবলী</u></b></font></h4>\r\n<p data-start=\"23\" data-end=\"443\"><span style=\"background-color: rgb(255, 255, 0);\">১. <strong data-start=\"26\" data-end=\"57\">পণ্য ফেরতের পর টাকা ফেরত নয়</strong></span>:\r\nপণ্য ফেরত দেওয়ার পর তার পরিবর্তে টাকা ফেরত দেওয়া হবে না। যদি আপনি কোনো পণ্য ফেরত দেন, তবে শুধুমাত্র রিপ্লেসমেন্ট বা রিফান্ডের মাধ্যমে আপনার অর্থ ফেরত পাবেন। রিফান্ড আপনার পেমেন্ট পদ্ধতির উপর ভিত্তি করে করা হবে এবং শর্ত পূরণের পরই এটি সম্পন্ন হবে। অর্থাৎ, পণ্যটি ফেরত গ্রহণের পর যদি তা শর্ত মেনে থাকে, তবে তার জন্য একটি সমতুল্য পণ্য প্রদান করা হবে অথবা অর্থ ফেরত প্রক্রিয়া শুরু হবে।</p>\r\n<p data-start=\"445\" data-end=\"917\"><span style=\"background-color: rgb(255, 255, 0);\"><br></span></p><p data-start=\"445\" data-end=\"917\"><span style=\"background-color: rgb(255, 255, 0);\">২. <strong data-start=\"448\" data-end=\"505\">অর্ডার প্রক্রিয়ার মধ্যে কিছু পণ্য না পাওয়ার পরিস্থিতি</strong>:</span>\r\nযদি <strong data-start=\"514\" data-end=\"540\">electronicspartsbd.com</strong> কোনো অর্ডারে অন্তর্ভুক্ত কোনো পণ্য ডেলিভারি করতে না পারে, তবে আপনি যে পণ্যটি পাননি, তার মূল্য অর্ডারের মোট টাকার হিসেব থেকে বাদ দেওয়া হবে। বাকী পণ্যগুলি সম্পূর্ণভাবে ডেলিভারি করা হবে, এবং সংশ্লিষ্ট পণ্যের মূল্য বাদ দিয়ে বাকী অর্থ আপনাকে ফেরত দেওয়া হবে। এই ক্ষেত্রে, আপনার পণ্য সরবরাহের জন্য যথাযথ ব্যবস্থা নেওয়া হবে এবং কোনো মূল্য সংক্রান্ত সমস্যা হলে তা দ্রুত সমাধান করা হবে।</p>\r\n<p data-start=\"919\" data-end=\"1452\"><span style=\"background-color: rgb(255, 255, 0);\"><br></span></p><p data-start=\"919\" data-end=\"1452\"><span style=\"background-color: rgb(255, 255, 0);\">৩. <strong data-start=\"922\" data-end=\"954\">সাপ্লাইয়ারের সিদ্ধান্ত গ্রহণ</strong>:\r\n</span><strong data-start=\"959\" data-end=\"983\">Electronics Parts BD</strong> সকল পণ্য নির্দিষ্ট কিছু সাপ্লাইয়ার থেকে সংগ্রহ করে। যদি কোনো পণ্য অকেজো হয়ে যায়, তবে সাপ্লাইয়ারের সিদ্ধান্তই চূড়ান্ত হবে এবং <strong data-start=\"1109\" data-end=\"1133\">Electronics Parts BD</strong> সেই সিদ্ধান্ত অনুসরণ করবে। যদি কোনো পণ্য অকেজো হয়, তাহলে <strong data-start=\"1191\" data-end=\"1215\">Electronics Parts BD</strong> সাপ্লাইয়ারের নির্দেশনা অনুযায়ী সমস্যার সমাধান করবে এবং আপনাকে সেই সিদ্ধান্ত মেনে চলতে হবে। আমাদের সাপ্লাইয়ারের সাথে সহযোগিতায় আমরা নিশ্চিত করতে চাই যে আপনি যে পণ্যটি পেয়েছেন তা সম্পূর্ণভাবে কার্যকরী এবং কোনো সমস্যা হলে দ্রুত সমাধান হবে।</p>\r\n<p data-start=\"1454\" data-end=\"1835\"><span style=\"background-color: rgb(255, 255, 0);\"><br></span></p><p data-start=\"1454\" data-end=\"1835\"><span style=\"background-color: rgb(255, 255, 0);\">৪. <strong data-start=\"1457\" data-end=\"1483\">অকেজো পণ্য ফেরত পাঠানো</strong>:</span>\r\nযদি আপনি কোনো অকেজো পণ্য পান, তবে আপনাকে ওই পণ্যটি <strong data-start=\"1539\" data-end=\"1550\">৩ দিনের</strong> মধ্যে <strong data-start=\"1557\" data-end=\"1581\">Electronics Parts BD</strong> অফিসে সরাসরি বা কুরিয়ার মাধ্যমে পাঠাতে হবে। <strong data-start=\"1626\" data-end=\"1650\">Electronics Parts BD</strong> সাপ্লাইয়ারকে অকেজো পণ্যের বিষয়টি জানাবে এবং সাপ্লাইয়ারের সিদ্ধান্ত অনুযায়ী ফেরত প্রক্রিয়া পরিচালনা করবে। এই পদ্ধতিতে, আমরা আপনার ফেরত প্রক্রিয়াকে যত দ্রুত সম্ভব সমাধান করার চেষ্টা করব।</p>\r\n<p data-start=\"1837\" data-end=\"2162\"><span style=\"background-color: rgb(255, 255, 0);\"><br></span></p><p data-start=\"1837\" data-end=\"2162\"><span style=\"background-color: rgb(255, 255, 0);\">৫. </span><strong data-start=\"1840\" data-end=\"1856\" style=\"background-color: rgb(255, 255, 0);\">দ্রুত সমাধান</strong><span style=\"background-color: rgb(255, 255, 0);\">:\r\n</span><span style=\"background-color: rgb(255, 255, 255);\">আমরা সবসময় </span>চেষ্টা করি যাতে আমাদের গ্রাহকরা দ্রুত সমস্যার সমাধান পায়। আমাদের সেবায় যে কোনো ধরনের সমস্যা হলে, আপনি দ্রুত যোগাযোগ করতে পারেন এবং আমরা যত দ্রুত সম্ভব সমস্যার সমাধান করব। আমাদের গ্রাহক সেবা টিম সবসময় আপনার পাশে থাকবে এবং কোনো সমস্যার সম্মুখীন হলে আমরা তা দ্রুত নিষ্পত্তি করার জন্য প্রস্তুত।</p>\r\n<p data-start=\"2164\" data-end=\"2543\"><span style=\"background-color: rgb(255, 255, 0);\"><br></span></p><p data-start=\"2164\" data-end=\"2543\"><span style=\"background-color: rgb(255, 255, 0);\">৬. <strong data-start=\"2167\" data-end=\"2174\">নোট</strong>:\r\n</span>ওয়ারেন্টি ও রিপ্লেসমেন্ট সম্পর্কিত যেকোনো সিদ্ধান্ত <strong data-start=\"2231\" data-end=\"2255\">Electronics Parts BD</strong> যেকোনো সময় সংশোধন বা পরিমার্জন করার অধিকার রাখে। এই ক্ষেত্রে, <strong data-start=\"2318\" data-end=\"2342\">Electronics Parts BD</strong> এর সিদ্ধান্তই চূড়ান্ত হিসেবে গণ্য হবে এবং সকল ক্রেতাকে এই সিদ্ধান্ত নির্দ্বিধায় মেনে চলতে হবে। আমরা নিশ্চিত করতে চাই যে আমাদের পণ্য ও সেবাগুলি সর্বোচ্চ মানের এবং গ্রাহক সন্তুষ্টি সর্বাধিক গুরুত্ব পায়।</p>\r\n<p data-start=\"2545\" data-end=\"2896\"><span style=\"background-color: rgb(255, 255, 0);\"><br></span></p><p data-start=\"2545\" data-end=\"2896\"><span style=\"background-color: rgb(255, 255, 0);\">৭. <strong data-start=\"2548\" data-end=\"2571\">সেম পণ্যের রঙ ভিন্ন</strong>:</span>\r\nঅনেক সময় নির্দিষ্ট পণ্যের রঙ স্টকের উপর নির্ভর করে ভিন্ন হতে পারে, তবে পণ্যের মডেল, কার্যক্ষমতা এবং স্পেসিফিকেশন সম্পূর্ণরূপে একই থাকবে। আমরা সবসময় নির্দিষ্ট রঙ সরবরাহের চেষ্টা করি, তবে কোনো কারণে স্টকে থাকা ভিন্ন রঙের পণ্য আপনাকে সরবরাহ করা হতে পারে। এটি কোনোভাবেই পণ্যের কার্যকারিতা বা গুণগত মানের ওপর প্রভাব ফেলবে না।</p><div style=\"margin: 0px; padding: 0px; border: 0px;\"><span style=\"background-color: rgb(255, 0, 0);\"><font color=\"#ffffff\"><span style=\"font-weight: bolder;\"><br></span></font></span></div><div style=\"margin: 0px; padding: 0px; border: 0px;\"><span style=\"background-color: rgb(255, 0, 0);\"><font color=\"#ffffff\"><span style=\"font-weight: bolder;\">বিঃদ্রঃ-&nbsp;Electronics Parts BD যে কোনো সময়&nbsp;</span><b>রিটার্ন ও রিফান্ড নীতিমালা&nbsp;</b><span style=\"font-weight: bolder;\">পরিবর্তন বা সংশোধন করার অধিকার সংরক্ষণ করে। গ্রাহকদের সর্বশেষ নীতিমালা অনুসরণ করতে হবে এবং এই পরিবর্তনসমূহ মেনে নেওয়া বাধ্যতামূলক।&nbsp;</span></font></span></div><div style=\"margin: 0px; padding: 0px; border: 0px;\"><br style=\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif;\"></div><p data-start=\"2545\" data-end=\"2896\"><b>আমাদের নীতিমালা সহজ, গ্রাহকবান্ধব এবং ঝামেলামুক্ত করার জন্য আমরা প্রতিশ্রুতিবদ্ধ।</b></p></div>', 1, '2023-10-04 07:03:42', '2025-03-20 19:32:18', 'ful'),
(6, 'Terms of Service', 'terms-of-service', '✅ শর্তাবলী (Terms & Conditions) ✅', '<p data-pm-slice=\"1 1 []\"><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"><br></span></p><p data-pm-slice=\"1 1 []\"><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Electronics Parts BD একটি ই-কমার্স প্ল্যাটফর্ম যেখানে আমরা ইলেকট্রনিক্স, এক্সেসরিজ এবং অন্যান্য সম্পর্কিত পণ্য সরবরাহ করি। আমাদের ওয়েবসাইট ব্যবহার করার মাধ্যমে, আপনি আমাদের শর্তাবলী মেনে চলতে সম্মত হচ্ছেন। যদি আপনি এই শর্তাবলীর সাথে একমত না হন, তবে অনুগ্রহ করে আমাদের পরিষেবা ব্যবহার করা থেকে বিরত থাকুন।</span></p><div></div><h5><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><b><br></b></font></h5><h5><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><b>✅ ওয়েবসাইট ব্যবহারের নীতিমালা ✅</b></font></h5><ul><li><b>Electronicspartsbd.com ওয়েবসাইটটি Electronics Parts BD দ্বারা পরিচালিত হয়।</b></li><li><b>ওয়েবসাইট ব্যবহার করে, আপনি আমাদের গোপনীয়তা নীতি (Privacy Policy) ও অন্যান্য শর্তাবলী মেনে চলতে সম্মত হচ্ছেন।</b></li><li><b>ওয়েবসাইটে প্রবেশকারী, ব্যবহারকারী ও গ্রাহকদের জন্য এই শর্তাবলী প্রযোজ্য।</b></li><li><b>শর্তাবলী সময় অনুযায়ী পরিবর্তিত হতে পারে এবং ওয়েবসাইটে আপডেট করা হবে।</b></li><li><b>ওয়েবসাইটের মাধ্যমে কোনো অবৈধ, প্রতারণামূলক বা ক্ষতিকর কার্যক্রম পরিচালনা সম্পূর্ণ নিষিদ্ধ।</b></li><li><b style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">ওয়েবসাইট ব্যবহারের জন্য ব্যবহারকারীদের ন্যূনতম ১৪ বছর বয়সী হতে হবে অথবা অভিভাবকের অনুমতি থাকতে হবে।</b></li></ul><div></div><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><br></font></strong></h5><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">✅ পণ্য ও পরিষেবা ✅</font></strong></h5><ul><li><b>আমাদের ওয়েবসাইটে ইলেকট্রনিক্স পার্টস, কম্পোনেন্টস, এক্সেসরিজ ও অন্যান্য পণ্য পাওয়া যায়।</b></li><li><b>প্রদত্ত পণ্যের বিবরণ, ছবি ও স্পেসিফিকেশন শুধুমাত্র তথ্যের জন্য দেওয়া হয়েছে, কিছু পরিবর্তন হতে পারে।</b></li><li><b>নির্মাতা বা প্রযুক্তিগত আপডেটের কারণে পণ্যের রঙ, ডিজাইন, ভার্সন, পিন সংখ্যা ইত্যাদির সামান্য পরিবর্তন হতে পারে।</b></li><li><b>আমরা পণ্যের বিবরণ, ছবি ও মূল্য পরিবর্তনের অধিকার সংরক্ষণ করি।</b></li><li><b>প্রয়োজন অনুযায়ী, পূর্ব ঘোষণা ছাড়াই পণ্যের বিবরণ, স্পেসিফিকেশন, ছবি বা মূল্য সংশোধন করা হতে পারে।</b></li><li><b style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">Electronics Parts BD যে কোনো সময় পণ্য পরিবর্তন, পরিমার্জন বা সরবরাহ বন্ধ করার অধিকার সংরক্ষণ করে।</b></li></ul><div></div><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><br></font></strong></h5><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">✅ মূল্য নির্ধারণ ও পেমেন্ট ✅</font></strong></h5><ul><li><b>ওয়েবসাইটে প্রদর্শিত সকল মূল্য বাংলাদেশি টাকা (BDT) তে উল্লেখ করা হয়েছে এবং প্রযোজ্য ক্ষেত্রে ট্যাক্স অন্তর্ভুক্ত থাকতে পারে।</b></li><li><b>মূল্য পরিবর্তন হতে পারে এবং এটি পূর্ব ঘোষণা ছাড়াই কার্যকর হতে পারে। তবে, নিশ্চিতকৃত ও প্রক্রিয়াধীন অর্ডারগুলোর ওপর কোনো প্রভাব পড়বে না।</b></li><li><b>আমরা নিম্নলিখিত পেমেন্ট পদ্ধতি গ্রহণ করি: ক্যাশ অন ডেলিভারি (COD), মোবাইল ব্যাংকিং (Bkash, Nagad, Rocket), ব্যাংক ট্রান্সফার ও আংশিক পেমেন্ট।</b></li><li><b style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">পেমেন্ট মাধ্যম সম্পর্কিত অতিরিক্ত চার্জ বা ফি ক্রেতাকে বহন করতে হবে।</b></li></ul><div></div><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><br></font></strong></h5><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">✅ অর্ডার প্রক্রিয়া ও শিপিং ✅</font></strong></h5><ul><li><b>অর্ডার দেওয়ার পর SMS বা ইমেইল এর মাধ্যমে নিশ্চিতকরণ পাঠানো হবে।</b></li><li><b>অর্ডার নিশ্চিত হওয়ার আগে আমাদের প্রতিনিধি কলের মাধ্যমে নিশ্চিত করবেন।</b></li><li><b>Electronics Parts BD যে কোনো সময় অর্ডার বাতিল বা প্রত্যাখ্যান করার অধিকার সংরক্ষণ করে।</b></li><li><b>শিপিং খরচ চেকআউট পেইজে উল্লেখ থাকবে এবং এটি পণ্যের ওজন ও ডেলিভারি গন্তব্য অনুযায়ী পরিবর্তিত হতে পারে।</b></li><li><b>আমরা তৃতীয় পক্ষের কুরিয়ার সার্ভিসের মাধ্যমে ডেলিভারি প্রদান করি এবং ডেলিভারি সংক্রান্ত যেকোনো বিলম্ব বা ত্রুটির জন্য আমরা দায়ী থাকব না।</b></li><li><b style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">কাস্টমস ডিউটি বা অতিরিক্ত ট্যাক্স প্রযোজ্য হলে, তা ক্রেতাকে বহন করতে হবে।</b></li></ul><div></div><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><br></font></strong></h5><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">✅ রিটার্ন ও রিফান্ড নীতিমালা ✅</font></strong></h5><ul><li><b>আমাদের রিটার্ন নীতিমালা অনুযায়ী নির্দিষ্ট শর্তসাপেক্ষে পণ্য ফেরত বা রিফান্ড গ্রহণযোগ্য।</b></li><li><b>রিটার্নের জন্য পণ্য ৩ দিনের মধ্যে ফেরত দিতে হবে (শর্তসাপেক্ষে)।</b></li><li><b>পণ্য অবশ্যই অব্যবহৃত ও মূল প্যাকেজিংয়ে থাকতে হবে।</b></li><li><b>কিছু নির্দিষ্ট পণ্য (যেমন ইলেকট্রনিক সার্কিট, কাস্টমাইজড পণ্য) ফেরতযোগ্য নয়।</b></li><li><b>রিফান্ড প্রসেসিং ৭ কর্মদিবসের মধ্যে সম্পন্ন হবে।</b></li><li><b style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">শিপিং ফি ফেরতযোগ্য নয় এবং ফেরত পাঠানোর খরচ ক্রেতাকে বহন করতে হবে (যদি পণ্য ত্রুটিযুক্ত বা ভুল না হয়)।</b></li></ul><div></div><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><br></font></strong></h5><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">✅ ওয়ারেন্টি বিষয়ক ঘোষণা ✅</font></strong></h5><ul><li>আমাদের বেশিরভাগ পণ্য ওয়ারেন্টি কভার করে না। তবে, প্রস্তুতকারকের ওয়ারেন্টি থাকা পণ্যগুলোর ক্ষেত্রে ওয়ারেন্টি প্রযোজ্য হবে।</li><li>নির্দিষ্ট পণ্যের ওয়ারেন্টি নীতির জন্য প্রস্তুতকারকের নির্দেশনা অনুসরণ করতে হবে।</li><li>আমাদের পরিষেবা বা পণ্য সর্বদা নির্ভরযোগ্য বা ১০০% ত্রুটিমুক্ত হবে, এমন কোনো গ্যারান্টি আমরা দিচ্ছি না।</li></ul><div></div><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><br></font></strong></h5><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">✅ কপিরাইট ✅</font></strong></h5><ul><li><b>ওয়েবসাইটের সকল বিষয়বস্তু (লেখা, ছবি, লোগো, ডিজাইন) Electronics Parts BD এর সম্পত্তি।</b></li><li><b style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">আমাদের অনুমতি ছাড়া কোনো তথ্য কপি, প্রচার বা পুনরায় ব্যবহার করা যাবে না।</b></li></ul><div></div><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><br></font></strong></h5><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">✅ ব্যবহারকারীর আচরণ ও নিরাপত্তা ✅</font></strong></h5><ul><li><b>ওয়েবসাইট ব্যবহার করে কোনো ক্ষতিকর, অবৈধ বা প্রতারণামূলক কার্যক্রম সম্পূর্ণ নিষিদ্ধ।</b></li><li><b>ওয়েবসাইটের নিরাপত্তা বা কার্যকারিতা বিঘ্নিত করার চেষ্টা করলে আইনগত ব্যবস্থা নেওয়া হতে পারে।</b></li></ul><div></div><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><br></font></strong></h5><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">✅ দায়সীমা ও ক্ষতিপূরণ ✅</font></strong></h5><ul><li><b>Electronics Parts BD ওয়েবসাইট ব্যবহারের কারণে সৃষ্ট কোনো ক্ষতির জন্য দায়ী থাকবে না।</b></li><li><b>আমাদের সর্বোচ্চ দায়বদ্ধতা আপনার প্রদত্ত অর্থের পরিমাণের মধ্যে সীমাবদ্ধ থাকবে।</b></li><li><b style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">ওয়েবসাইট ব্যবহার করে কোনো সমস্যা বা আইনি জটিলতা সৃষ্টি হলে, এর জন্য Electronics Parts BD দায়ী থাকবে না।</b></li></ul><div></div><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><br></font></strong></h5><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">✅ শর্তাবলী পরিবর্তনের অধিকার ✅</font></strong></h5><ul><li><b>Electronics Parts BD যে কোনো সময় এই শর্তাবলী পরিবর্তন বা আপডেট করার অধিকার সংরক্ষণ করে।</b></li><li><b style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">শর্তাবলী পরিবর্তনের পর তা ওয়েবসাইটে প্রকাশের সঙ্গে সঙ্গে কার্যকর হবে।</b></li></ul><div></div><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><br></font></strong></h5><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">✅ আইন ও বিচারিক এখতিয়ার ✅</font></strong></h5><ul><li><b>এই শর্তাবলী বাংলাদেশের আইন অনুযায়ী পরিচালিত হবে।</b></li><li><b style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\">যেকোনো বিরোধ বা আইনি সমস্যা বাংলাদেশের আদালতে নিষ্পত্তি করা হবে।</b></li></ul><div></div><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><br></font></strong></h5><h5><strong><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">✅ যোগাযোগ ✅</font></strong></h5><h6><font style=\"background-color: rgb(255, 255, 0);\" color=\"#000000\">📞 <b style=\"\">+8801333105717</b></font></h6><h6><font style=\"background-color: rgb(255, 255, 0);\" color=\"#000000\">📧 <b style=\"\">support@electronicspartsbd.com</b></font></h6><h6><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">📧<span style=\"text-align: var(--ct-body-text-align);\">contactselectronicspartsbd@gmail.com</span></font></h6><h6><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><a href=\"https://www.electronicspartsbd.com/\" target=\"_blank\" style=\"\">🌐&nbsp;</a><a href=\"https://www.electronicspartsbd.com/\" target=\"_blank\" style=\"\">www.electronicspartsbd.com</a></font></h6><p><b><br></b></p><div style=\"margin: 0px; padding: 0px; border: 0px;\"><span style=\"background-color: rgb(255, 0, 0);\"><font color=\"#ffffff\" style=\"\"><span style=\"font-weight: bolder;\">বিঃদ্রঃ-&nbsp;Electronics Parts BD যে কোনো সময় </span><b>শর্তাবলী</b><span style=\"font-weight: bolder;\">&nbsp;পরিবর্তন বা সংশোধন করার অধিকার সংরক্ষণ করে। গ্রাহকদের সর্বশেষ নীতিমালা অনুসরণ করতে হবে এবং এই পরিবর্তনসমূহ মেনে নেওয়া বাধ্যতামূলক।</span></font></span></div><div style=\"margin: 0px; padding: 0px; border: 0px;\"><br style=\"color: rgb(33, 37, 41); font-family: Roboto, sans-serif;\"></div><p><b>Electronics Parts BD -এর সাথে থাকার জন্য ধন্যবাদ! নিরাপদ ও সহজ অনলাইন কেনাকাটার অভিজ্ঞতা উপভোগ করুন।</b></p><p></p>', 1, '2023-10-04 07:04:05', '2025-03-20 19:31:52', 'ful');
INSERT INTO `create_pages` (`id`, `name`, `slug`, `title`, `description`, `status`, `created_at`, `updated_at`, `pageFor`) VALUES
(7, 'Privacy Policy', 'privacy-policy', '✅ গোপনীয়তা নীতি (Privacy Policy) ✅', '<div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"><br></span></div><div><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">আপনার গোপনীয়তা আমাদের জন্য অত্যন্ত গুরুত্বপূর্ণ। এই গোপনীয়তা নীতির মাধ্যমে, আমরা ব্যাখ্যা করবো কিভাবে আমরা আপনার তথ্য সংগ্রহ, সংরক্ষণ, ব্যবহার এবং সুরক্ষা করি। electronicspartsbd.com আপনার ব্যক্তিগত তথ্যের গোপনীয়তা রক্ষা করতে প্রতিশ্রুতিবদ্ধ। আমাদের ওয়েবসাইট ব্যবহার করার মাধ্যমে আপনি এই নীতির শর্তাবলীর সাথে সম্মতি জানান। অনুগ্রহ করে এটি মনোযোগ সহকারে পড়ুন।</span></div><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ তথ্য সংগ্রহঃ</b></span></h5><div>আমরা আপনার কাছ থেকে ব্যক্তিগত এবং অ-ব্যক্তিগত তথ্য সংগ্রহ করি। আপনার তথ্য সংগ্রহের উদ্দেশ্য এবং প্রক্রিয়া নিম্নরূপ:</div><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ ব্যক্তিগত তথ্যঃ</b></span></h5><div>যখন আপনি আমাদের ওয়েবসাইটে নিবন্ধন করেন, অর্ডার করেন বা আমাদের সাথে যোগাযোগ করেন, তখন আমরা নিম্নলিখিত তথ্য সংগ্রহ করতে পারি:</div><ul><li>নাম</li><li>ইমেইল ঠিকানা</li><li>ফোন নম্বর</li><li>বিলিং ও শিপিং ঠিকানা</li><li>লগইন তথ্য (ইউজারনেম এবং পাসওয়ার্ড)</li><li>পেমেন্ট সম্পর্কিত তথ্য (যেমন: ক্রেডিট/ডেবিট কার্ড তথ্য, ব্যাংকিং, মোবাইল ব্যাংকিং)</li></ul><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ অ-ব্যক্তিগত তথ্যঃ</b></span></h5><div>আমরা স্বয়ংক্রিয়ভাবে কিছু অ-ব্যক্তিগত তথ্য সংগ্রহ করতে পারি, যেমন:</div><ul><li>আইপি ঠিকানা</li><li>ব্রাউজার প্রকার</li><li>অপারেটিং সিস্টেম</li><li>ওয়েবসাইটে পরিদর্শিত পৃষ্ঠাসমূহ</li><li>ওয়েবসাইটে আসার উৎস</li><li>কুকিজ এবং অন্যান্য ট্র্যাকিং প্রযুক্তি</li><li>ওয়েবসাইটে ব্রাউজিংয়ের ধরন এবং সময়কাল</li><li>রেফারিং ওয়েবসাইট লিঙ্ক</li></ul><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ তথ্য ব্যবহারের উদ্দেশ্যঃ</b></span></h5><div>আমরা আপনার তথ্য নিম্নলিখিত উদ্দেশ্যে ব্যবহার করতে পারি:</div><ul><li>অর্ডার প্রসেসিং এবং ডেলিভারি নিশ্চিতকরণ</li><li>গ্রাহক সহায়তা প্রদান</li><li>ব্যক্তিগতকৃত পরিষেবা প্রদান</li><li>নিরাপত্তা নিশ্চিতকরণ এবং জালিয়াতি প্রতিরোধ</li><li>আইনি বাধ্যবাধকতা পূরণ</li><li>প্রচারমূলক ইমেইল এবং বিজ্ঞাপন পাঠানো (আপনার সম্মতিতে)</li></ul><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ তথ্য সংরক্ষণঃ</b></span></h5><div>আমরা আপনার তথ্য নিরাপদে সংরক্ষণ করার জন্য উপযুক্ত প্রযুক্তি এবং নিরাপত্তা ব্যবস্থা গ্রহণ করি। তবে, ইন্টারনেটের মাধ্যমে কোনো তথ্য স্থানান্তর শতভাগ নিরাপদ নয়, তাই আমরা সম্পূর্ণ নিরাপত্তার নিশ্চয়তা দিতে পারি না।</div><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ কুকিজ নীতিঃ</b></span></h5><div>আমাদের ওয়েবসাইট আপনার ব্রাউজিং অভিজ্ঞতা উন্নত করতে কুকিজ ব্যবহার করে। আপনি চাইলে ব্রাউজার সেটিংস পরিবর্তন করে কুকিজ নিষ্ক্রিয় করতে পারেন। তবে, এটি আমাদের ওয়েবসাইটের কিছু ফিচারের কার্যকারিতা সীমিত করতে পারে।</div><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ তৃতীয় পক্ষের সাথে তথ্য শেয়ারিং</b></span></h5><div>আমরা সাধারণত আপনার তথ্য বিক্রি, বিনিময় বা শেয়ার করি না। তবে, কিছু ক্ষেত্রে আমরা নির্দিষ্ট তৃতীয় পক্ষের সাথে আপনার তথ্য ভাগ করতে পারি, যেমন:</div><ul><li>পেমেন্ট গেটওয়ে এবং ব্যাংকিং পার্টনার</li><li>শিপিং এবং ডেলিভারি পরিষেবা</li><li>আইনি কর্তৃপক্ষ, যদি এটি বাধ্যতামূলক হয়</li></ul><div><br></div><div>আমাদের ওয়েবসাইটে তৃতীয় পক্ষের ওয়েবসাইটের লিঙ্ক থাকতে পারে, যা শুধুমাত্র তথ্য ও সুবিধার জন্য প্রদান করা হয়েছে। আমরা এসব ওয়েবসাইটের গোপনীয়তা নীতি, নিরাপত্তা বা বিষয়বস্তুর যথার্থতার জন্য দায়ী নই। কোনো তৃতীয় পক্ষের লিঙ্ক ব্যবহার করার আগে, অনুগ্রহ করে তাদের নিজস্ব শর্তাবলী এবং গোপনীয়তা নীতি পর্যালোচনা করুন।</div><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ আপনার অধিকারঃ</b></span></h5><div>আপনার ব্যক্তিগত তথ্যের উপর আপনার কিছু নির্দিষ্ট অধিকার রয়েছে:</div><ul><li>আপনার তথ্য দেখার এবং সংশোধন করার অনুরোধ জানানো</li><li>আপনার তথ্য মুছে ফেলার অনুরোধ জানানো</li><li>বিজ্ঞাপনমূলক ইমেইল গ্রহণ না করার জন্য অপ্ট-আউট করা</li></ul><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ গোপনীয়তা নীতির পরিবর্তনঃ</b></span></h5><div>আমরা সময়ে সময়ে এই গোপনীয়তা নীতিতে পরিবর্তন করতে পারি। পরিবর্তন হলে, আমরা আমাদের ওয়েবসাইটে আপডেট করব এবং প্রয়োজনীয় ক্ষেত্রে আপনাকে জানাব।</div><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ আন্তর্জাতিক তথ্য স্থানান্তরঃ</b></span></h5><div>আমাদের ওয়েবসাইট বাংলাদেশ থেকে পরিচালিত হয়। আপনি যদি বাংলাদেশ ছাড়া অন্য কোনো দেশ থেকে আমাদের ওয়েবসাইট ব্যবহার করেন, তাহলে আপনার ব্যক্তিগত তথ্য বাংলাদেশে স্থানান্তরিত এবং প্রক্রিয়াকৃত হতে পারে। আমাদের পরিষেবা ব্যবহার করে, আপনি এই তথ্য স্থানান্তরের বিষয়ে সম্মতি প্রদান করছেন।</div><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ শিশুদের গোপনীয়তাঃ</b></span></h5><div>আমাদের ওয়েবসাইট ১৪ বছরের কম বয়সী শিশুদের জন্য নয়। আমরা সচেতনভাবে তাদের কোনো ব্যক্তিগত তথ্য সংগ্রহ করি না। যদি কোনো অভিভাবক বা আইনি অভিভাবক জানতে পারেন যে তাদের সন্তান আমাদের কাছে ব্যক্তিগত তথ্য প্রদান করেছে, তাহলে অনুগ্রহ করে আমাদের সাথে যোগাযোগ করুন, যাতে আমরা তা দ্রুত মুছে ফেলতে পারি।</div><div><br></div><h5><span style=\"background-color: rgb(255, 255, 0);\"><b>✅ যোগাযোগঃ</b></span></h5><div>যদি আপনার গোপনীয়তা নীতির বিষয়ে কোনো প্রশ্ন থাকে, তাহলে আমাদের সাথে যোগাযোগ করুন:</div><ul><li><b style=\"\"><font style=\"background-color: rgb(255, 255, 255);\" color=\"#0000ff\">ফোন: +8801333105717</font></b></li><li><b style=\"\"><font style=\"background-color: rgb(255, 255, 255);\" color=\"#0000ff\">ইমেইল: support@electronicspartsbd.com</font></b></li><li><span style=\"font-weight: bolder;\"><font color=\"#0000ff\">ইমেইল:&nbsp;</font></span><font color=\"#0000ff\"><b>contactselectronicspartsbd@gmail.com</b></font></li><li><b style=\"\"><font style=\"background-color: rgb(255, 255, 255);\" color=\"#0000ff\">ওয়েবসাইট: <a href=\"http://www.electronicspartsbd.com\" target=\"_blank\">www.electronicspartsbd.com</a></font></b></li><li><b style=\"\"><font style=\"background-color: rgb(255, 255, 255);\" color=\"#0000ff\">ঠিকানা: পাটুয়াটুলি, ঢাকা-১১০০</font></b></li></ul><div><div style=\"margin: 0px; padding: 0px; border: 0px;\"><span style=\"background-color: rgb(255, 0, 0);\"><font color=\"#ffffff\"><span style=\"font-weight: bolder;\"><br></span></font></span></div><div style=\"margin: 0px; padding: 0px; border: 0px;\"><span style=\"background-color: rgb(255, 0, 0);\"><font color=\"#ffffff\"><span style=\"font-weight: bolder;\">বিঃদ্রঃ-&nbsp;Electronics Parts BD যে কোনো সময়&nbsp;</span><b>গোপনীয়তা নীতি&nbsp;</b><span style=\"font-weight: bolder;\">পরিবর্তন বা সংশোধন করার অধিকার সংরক্ষণ করে। গ্রাহকদের সর্বশেষ নীতিমালা অনুসরণ করতে হবে এবং এই পরিবর্তনসমূহ মেনে নেওয়া বাধ্যতামূলক।&nbsp;</span></font></span></div></div><div><br></div><div><b>আমাদের ওয়েবসাইট ব্যবহার করার মাধ্যমে আপনি এই গোপনীয়তা নীতির শর্তাবলীর সাথে সম্মত হচ্ছেন। electronicspartsbd.com এর পাশে থাকার জন্য ধন্যবাদ</b></div>', 1, '2023-10-04 07:04:19', '2025-03-20 19:31:01', 'ful'),
(8, 'FAQ', 'faq', '✅ সাধারণ জিজ্ঞাসা (FAQ) ✅', '<p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আপানাদের সাথে কিভাবে যোগাযোগ করবো?</b></span></font></p><p><font face=\"Poppins, sans-serif\"><b><span style=\"background-color: rgb(255, 255, 0); font-size: 16px; letter-spacing: 0.6px;\"></span></b></font></p><p><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><b>উত্তর: আমাদের সাথে যোগাযোগ করার জন্য নিচের যে কোনো মাধ্যম ব্যবহার করতে পারেন:</b></span></font></p><ul><li>📞 <strong data-start=\"77\" data-end=\"85\">ফোন:</strong> +8801333105717<br data-start=\"100\" data-end=\"103\">\r\n</li><li>💬 <strong data-start=\"106\" data-end=\"119\" data-is-only-node=\"\">WhatsApp:</strong> +8801333105717<br data-start=\"134\" data-end=\"137\">\r\n</li><li>📧 <strong data-start=\"140\" data-end=\"150\">ইমেইল:</strong> <a rel=\"noopener\" data-start=\"151\" data-end=\"222\">support@electronicspartsbd.com</a></li><li><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">📧&nbsp;</span><span data-start=\"140\" data-end=\"150\" style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align); font-weight: bolder;\">ইমেইল:</span><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">&nbsp;</span><a rel=\"noopener\" data-start=\"151\" data-end=\"222\" style=\"font-family: sans-serif; font-size: var(--ct-body-font-size); font-weight: 400; text-align: var(--ct-body-text-align); color: rgb(35, 82, 124); text-decoration: underline; background-color: rgb(255, 255, 255); outline: 0px;\">contactselectronicspartsbd@gmail.com</a></li><li>\r\n🌐 <strong data-start=\"228\" data-end=\"241\">ওয়েবসাইট:</strong> <a rel=\"noopener\" target=\"_new\" data-start=\"242\" data-end=\"306\" href=\"https://www.electronicspartsbd.com\">www.electronicspartsbd.com</a></li></ul><p data-start=\"310\" data-end=\"927\"><br></p><p data-start=\"310\" data-end=\"927\"><span style=\"background-color: rgb(255, 255, 0);\">🔹 <strong data-start=\"313\" data-end=\"352\">সোশ্যাল মিডিয়ায় আমাদের অনুসরণ করুন:</strong></span><br data-start=\"352\" data-end=\"355\">\r\n📌 <strong data-start=\"358\" data-end=\"369\">ফেসবুক:</strong> <a data-start=\"370\" data-end=\"456\" rel=\"noopener\" target=\"_new\" href=\"https://www.facebook.com/electronicspartsonline\">facebook.com/electronicspartsonline</a><br data-start=\"456\" data-end=\"459\">\r\n📸 <strong data-start=\"462\" data-end=\"478\">ইনস্টাগ্রাম:</strong> <a data-start=\"479\" data-end=\"559\" rel=\"noopener\" target=\"_new\" href=\"https://www.instagram.com/electronicspartsbd\">instagram.com/electronicspartsbd</a><br data-start=\"559\" data-end=\"562\">\r\n▶️ <strong data-start=\"565\" data-end=\"576\">ইউটিউব:</strong> <a data-start=\"577\" data-end=\"655\" rel=\"noopener\" target=\"_new\" href=\"https://www.youtube.com/@ElectronicsPartsBD\">youtube.com/@BuyElectronicsParts</a><br data-start=\"655\" data-end=\"658\">\r\n🐦 <strong data-start=\"661\" data-end=\"676\">টুইটার (X):</strong> <a data-start=\"677\" data-end=\"729\" rel=\"noopener\" target=\"_new\" href=\"https://x.com/electropartsBD\">x.com/electropartsBD</a><br data-start=\"729\" data-end=\"732\">\r\n🎵 <strong data-start=\"735\" data-end=\"745\">টিকটক:</strong> <a data-start=\"746\" data-end=\"822\" rel=\"noopener\" target=\"_new\" href=\"https://www.tiktok.com/@electronicspartsbd\">tiktok.com/@electronicspartsbd</a><br data-start=\"822\" data-end=\"825\">\r\n📍 <strong data-start=\"828\" data-end=\"844\">পিন্টারেস্ট:</strong> <a data-start=\"845\" data-end=\"925\" rel=\"noopener\" target=\"_new\" href=\"https://www.pinterest.com/electronicspartsbd\">pinterest.com/electronicspartsbd</a></p><p>\r\n\r\n</p><p data-start=\"929\" data-end=\"1007\" data-is-last-node=\"\" data-is-only-node=\"\">আপনার যে কোনো প্রশ্ন বা সহায়তার জন্য আমাদের সাথে নির্দ্বিধায় যোগাযোগ করুন!&nbsp;</p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b style=\"\"><br></b></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b style=\"\">প্রশ্ন: ডেলিভারি চার্জ কত?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:ডেলিভারি চার্জ নির্ধারিত হবে অর্ডারের ওজন, প্যাকেজ সাইজ এবং ডেলিভারি লোকেশন অনুযায়ী:</span></font></p><ul><li><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">ঢাকা মেট্রো: ৫৯ টাকা</span></font></li><li><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">ঢাকা সাব এরিয়া:৯৯ টাকা</span></font></li><li><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">ঢাকার বাইরে (সুন্দরবন কুরিয়ার, জেলা পর্যায়ে): ১১৯ টাকা</span></font></li><li><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">ঢাকার বাইরে (সুন্দরবন কুরিয়ার, উপজেলা পর্যায়ে): ১২৯ টাকা</span></font></li><li><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">ঢাকার বাইরে (হোম ডেলিভারি): ১১৯ টাকা</span></font></li><li><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">এসএ পরিবহন কুরিয়ার (ন্যূনতম চার্জ):২০০ টাকা</span></font></li></ul><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b><br></b></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: কিভাবে পণ্য অর্ডার করতে হবে?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:আমাদের ওয়েবসাইট থেকে আপনার পছন্দের পণ্য নির্বাচন করুন এবং অর্ডার পেজে গিয়ে আপনার তথ্য পূরণ করুন। অর্ডার সম্পূর্ণ করার পর, পণ্য প্রক্রিয়াকরণ শুরু হবে এবং আপনি অর্ডার স্ট্যাটাস ট্র্যাক করতে পারবেন।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্য পাওয়ার পর কিভাবে পেমেন্ট করতে হবে?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:পণ্য রিসিভ করার পর বাকি টাকা প্রদান করতে হবে। প্রাথমিকভাবে ডেলিভারি চার্জ বিকাশের মাধ্যমে পরিশোধ করা যাবে।</span></font></p><p style=\"\"><span style=\"font-size: 16px; letter-spacing: 0.6px; font-family: Poppins, sans-serif; font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align); background-color: rgb(255, 255, 0);\"><br></span></p><p style=\"\"><span style=\"font-size: 16px; letter-spacing: 0.6px; font-family: Poppins, sans-serif; text-align: var(--ct-body-text-align); background-color: rgb(255, 255, 0);\"><b style=\"\">প্রশ্ন: পণ্য ফিরে বা পরিবর্তন করার নিয়ম কী?</b></span></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:পার্সেল খুলে ফেলার পর যদি কোনো ত্রুটি থাকে, তাহলে আমরা ফ্রি তে রিপ্লেস বা রিফান্ড করব। তবে সেক্ষেত্রে পণ্যটি আমাদের কাছে রিটার্ন করতে হবে। যদি পণ্যটি পছন্দ না হয় বা অকারণে রিটার্ন করা হয়, তাহলে ডেলিভারি চার্জ কাস্টমার কেই দিতে হবে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্য ডেলিভারির সময় কিভাবে নিশ্চিত হব?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:আমরা থার্ড পার্টি কুরিয়ার সার্ভিস দ্বারা পণ্য ডেলিভারি করি। সাধারণত ২ থেকে ৪ দিনের মধ্যে ডেলিভারি সম্পন্ন হয়। ডেলিভারি ম্যানের কল পেলে পণ্যটি গ্রহণ করুন।</span></font></p><p style=\"\"><span style=\"background-color: var(--ct-card-bg); color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; font-weight: var(--ct-body-font-weight); letter-spacing: 0.6px; text-align: var(--ct-body-text-align);\"><br></span></p><p style=\"\"><span style=\"font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px; text-align: var(--ct-body-text-align); background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্যের রিয়েল ইমেজ কোথায় পাবো?</b></span></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:আমাদের ফেসবুক পেজে সকল পণ্যের রিয়েল ইমেজ এবং ভিডিও পাওয়া যাবে। এছাড়া, আপনি চাইলে আমাদের সাপোর্ট টিমের মাধ্যমে ইমেজ বা ভিডিও পেতে পারেন।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: যদি পণ্য গ্রহণ করার সময় ত্রুটি দেখতে পাই, তাহলে কী করবো?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:যদি পণ্যে কোনো ত্রুটি, ভুল পণ্য বা পণ্যের সংখ্যা ঠিক না থাকে, তাহলে ডেলিভারি ম্যানের সামনে আমাদের কল করবেন এই 01333105717 নাম্বারে সকাল ১০ টা থেকে রাত ৮ টা। ডেলিভারি ম্যান চলে যাওয়ার পর পণ্য ফেরত আনা বা পাল্টানো কঠিন হয়ে পড়ে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আমি কি কেবল বাংলাদেশে অর্ডার করতে পারি?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:হ্যাঁ, বর্তমানে আমরা শুধুমাত্র বাংলাদেশে ডেলিভারি দিয়ে থাকি।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: অর্ডারের সময় কি আমি পণ্য পরিবর্তন করতে পারবো?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:অর্ডার দেওয়ার পর আপনি যদি পণ্য পরিবর্তন করতে চান, তবে আমাদের সাপোর্ট টিমের সাথে যোগাযোগ করতে হবে। যদি পণ্যটি শিপমেন্টের জন্য প্রস্তুত না হয়, তবে আমরা পরিবর্তন করে দেবো।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্যের কিভাবে রিটার্ন করব?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:পণ্য রিটার্ন করতে হলে পণ্যটি আমাদের কাছে ফেরত পাঠাতে হবে। পণ্যের ত্রুটি বা ভুল পণ্য পাওয়া গেলে আমরা ফ্রি রিপ্লেসমেন্ট বা রিফান্ড প্রদান করবো। কিন্তু যদি পণ্যটি পছন্দ না হয় বা অকারণে রিটার্ন করা হয়, তবে ডেলিভারি চার্জ আপনাকেই দিতে হবে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আমার পণ্য কোথায় এবং কখন পৌঁছাবে?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:আপনার অর্ডার শিপিং প্রক্রিয়া শুরু হওয়ার পর, আপনি আপনার অর্ডারের স্ট্যাটাস ট্র্যাক করতে পারবেন। সাধারণত ২ থেকে ৪ দিনের মধ্যে ডেলিভারি হয়ে থাকে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্য অর্ডার করার পর আমি কি ডেলিভারি চার্জ পরিবর্তন করতে পারবো?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:অর্ডারের পর ডেলিভারি চার্জ পরিবর্তন করা সম্ভব নয়, কারণ এটি নির্ভর করে আপনার অর্ডারের পণ্য এবং ঠিকানা অনুযায়ী।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্য ঠিকমতো না পেলে আমি কি করবো?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:যদি আপনি পণ্য পেতে কোনো সমস্যা বা ভুল পণ্য পান, তাহলে দ্রুত আমাদের সাপোর্ট টিমের সাথে যোগাযোগ করুন 01333105717 নাম্বারে সকাল ১০ টা থেকে রাত ৮ টা। আমরা আপনাকে সঠিক পণ্য পৌঁছে দেবো।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: কিভাবে পেমেন্ট করতে হবে?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:আমরা অনলাইনে পেমেন্ট গ্রহণ করি। আপনি বিকাশ, নগদ, অথবা অন্যান্য ডিজিটাল পেমেন্ট পদ্ধতিতে পেমেন্ট করতে পারেন। ডেলিভারি পাওয়ার সময়ও আপনি টাকা প্রদান করতে পারবেন।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: কিভাবে আপনার পণ্য সম্পর্কে আরো বিস্তারিত জানব?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:আপনি আমাদের ওয়েবসাইটে গিয়ে প্রতিটি পণ্যের বিস্তারিত বিবরণ এবং স্পেসিফিকেশন দেখতে পারবেন। এছাড়া, আমাদের সাপোর্ট টিমের সাথে যোগাযোগ করেও আপনার প্রশ্নের উত্তর পেতে পারেন।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আমার অর্ডার বাতিল করতে পারি?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:অর্ডার শিপমেন্টের আগে আপনি আপনার অর্ডার বাতিল করতে পারবেন। বাতিল করার জন্য আমাদের সাপোর্ট টিমের সাথে যোগাযোগ করতে হবে।</span></font></p><p style=\"\"><br></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্য ডেলিভারি করার সময় আমি কি পণ্যটি পরীক্ষা করতে পারব?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:হ্যাঁ, পণ্য গ্রহণ করার সময় আপনি অবশ্যই পণ্যটি পরীক্ষা করতে পারেন। যদি পণ্যে কোনো ত্রুটি বা ভুল পণ্য থাকে, তাহলে তা ডেলিভারি ম্যানের সামনে জানাতে হবে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আমি কি কাস্টম পণ্য অর্ডার করতে পারি?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:না, বর্তমানে আমরা কাস্টম পণ্য অর্ডার গ্রহণ করি না। তবে আপনি আমাদের ওয়েবসাইটে যে পণ্যগুলো আছে তা থেকে অর্ডার করতে পারবেন।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আমার অর্ডার কি অন্য কোনো ঠিকানায় পাঠানো সম্ভব?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর: হ্যাঁ, আপনি আপনার অর্ডারের ঠিকানা পরিবর্তন করতে পারেন, তবে শিপমেন্টের আগে আমাদের সাপোর্ট টিমের সাথে যোগাযোগ করতে হবে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: ডেলিভারি করার সময় যদি আমি বাড়িতে না থাকি, তাহলে কী হবে?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর: যদি আপনি ডেলিভারি সময় বাড়িতে না থাকেন, তাহলে ডেলিভারি ম্যান আপনার সাথে যোগাযোগ করবেন এবং পরবর্তী সময়ে পণ্য পৌঁছানোর ব্যবস্থা করবেন।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b style=\"\">প্রশ্ন: আপনার পণ্যের গ্যারান্টি বা ওয়ারেন্টি আছে কি?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:না, আমাদের বেশিরভাগ পণ্যের জন্য গ্যারান্টি বা ওয়ারেন্টি প্রযোজ্য না। তবে আপনি যদি কোনো সমস্যা পেয়ে থাকেন, আমাদের সাথে যোগাযোগ করুন।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্য ডেলিভারি কত দিনে হয়?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:আমরা সাধারণত ২ থেকে ৪ দিন সময় নিয়ে পণ্য ডেলিভারি করি। তবে কিছু ক্ষেত্রে ডেলিভারি সময় আরও বেশি লাগতে পারে, যা আপনার অবস্থান এবং অন্যান্য পরিস্থিতির উপর নির্ভর করে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্যের দাম কি পরিবর্তিত হতে পারে?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:হ্যাঁ, পণ্যের দাম বাজার পরিস্থিতি এবং স্টক অনুসারে পরিবর্তিত হতে পারে। তবে, আপনি যখন অর্ডার করেন, সেই সময়ের দামই প্রযোজ্য থাকবে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্য যদি আমার প্রত্যাশা অনুযায়ী না হয়, তাহলে কী করবো?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:যদি পণ্যটি আপনার প্রত্যাশা অনুযায়ী না হয়, তবে আপনি পণ্যটি ফেরত পাঠিয়ে তা পরিবর্তন বা রিফান্ড নিতে পারবেন, তবে সেক্ষেত্রে ডেলিভারি চার্জ আপনাকেই দিতে হবে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আমি কি একাধিক পণ্য একসাথে অর্ডার করতে পারি?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর: হ্যাঁ, আপনি একাধিক পণ্য একসাথে অর্ডার করতে পারবেন এবং সবগুলো পণ্যের জন্য একটি ডেলিভারি চার্জ প্রযোজ্য হবে, তবে কিছু ক্ষেত্রে বেশি ডেলিভারি চার্জ লাগতে পারে প্রোডাক্ট এর ওজন বেশি অ্যান্ড সাইজ বড় হলে ।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্য পেমেন্ট সম্পন্ন করার পর কি আমি অর্ডার ট্র্যাক করতে পারব?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:হ্যাঁ, আপনি পেমেন্ট সম্পন্ন করার পর আপনার অর্ডারের স্ট্যাটাস ট্র্যাক করতে পারবেন। আমাদের সাপোর্ট টিম থেকেও ট্র্যাকিং নম্বর পাওয়া যাবে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: অর্ডার দেওয়ার পর কি আমি অর্ডার পরিবর্তন করতে পারব?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:অর্ডার দেওয়ার পর আপনি যদি পণ্য বা ঠিকানা পরিবর্তন করতে চান, তবে শিপমেন্ট প্রক্রিয়া শুরু হওয়ার আগে আমাদের সাপোর্ট টিমের সাথে যোগাযোগ করুন। প্রক্রিয়া শুরু হলে পরিবর্তন করা সম্ভব হবে না।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: কি ধরনের পেমেন্ট পদ্ধতি গ্রহণ করেন?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:আমরা বিকাশ, নগদ, এবং অন্যান্য ডিজিটাল পেমেন্ট পদ্ধতিতে পেমেন্ট গ্রহণ করি। আপনি আপনার সুবিধামতো পেমেন্ট পদ্ধতি বেছে নিতে পারবেন।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আমি কি অর্ডার করার সময় বিশেষ কোনো ডিসকাউন্ট পাবো?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:আমাদের ওয়েবসাইটে কখনও কখনও বিশেষ অফার ও ডিসকাউন্ট পাওয়া যায়। আমাদের নিউজলেটার বা ফেসবুক পেজ সাবস্ক্রাইব করলে আপনি আপডেট পেতে পারেন।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: কি ধরনের পণ্য আপনি বিক্রি করেন?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:আমরা ইলেকট্রনিক্স এবং এক্সেসরিজ সহ বিভিন্ন ধরনের প্রযুক্তিপণ্য বিক্রি করি। আমাদের পণ্যের বিস্তারিত দেখতে আমাদের ওয়েবসাইটে ভিজিট করুন।</span></font></p><p style=\"\"><br></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্য ফেরত বা পরিবর্তন করতে কি আমি কোনো ফি দিতে হবে?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:যদি পণ্যটি ত্রুটিপূর্ণ বা ভুল পণ্য হয়, তবে আপনি কোন অতিরিক্ত ফি ছাড়াই পণ্য ফেরত বা পরিবর্তন করতে পারবেন। তবে, যদি আপনি পণ্যটি পছন্দ না করেন বা অকারণে ফেরত দিতে চান, তাহলে ডেলিভারি চার্জ আপনাকেই প্রদান করতে হবে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আমি যদি পণ্য পছন্দ না করি, তবে কী হবে?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:আপনি যদি পণ্যটি পছন্দ না করেন, তবে তা ফেরত পাঠাতে পারবেন, তবে সেক্ষেত্রে ডেলিভারি চার্জ আপনাকেই প্রদান করতে হবে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b style=\"\">প্রশ্ন: কি কারণে পণ্য ডেলিভারি বিলম্বিত হতে পারে?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:পণ্য ডেলিভারি সাধারণত ২ থেকে ৪ দিনের মধ্যে হয়ে থাকে, তবে কোনো বিশেষ পরিস্থিতি (যেমন আবহাওয়া বা লজিস্টিক সমস্যা) কারণে ডেলিভারি বিলম্বিত হতে পারে।&nbsp;</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আমি কী পণ্যটি শো-রুমে এসে কিনতে পারি?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:বর্তমানে আমাদের কোন শো-রুম নেই। আমাদের পণ্য শুধুমাত্র অনলাইনে অর্ডার করা যায়।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্যটি যদি ঠিকভাবে কাজ না করে, তাহলে কী করবো?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:যদি পণ্যটি ঠিকভাবে কাজ না করে, তবে আমাদের সাপোর্ট টিমের সাথে যোগাযোগ করুন। আমরা দ্রুত সমস্যার সমাধান করব এবং প্রয়োজন হলে পণ্য রিপ্লেসমেন্ট বা রিফান্ড প্রক্রিয়া শুরু করব।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্য পেতে কি আমি অতিরিক্ত চার্জ দিতে হবে?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:আপনার অর্ডার করা পণ্যের সাথে ডেলিভারি চার্জ যুক্ত হবে। তবে, অতিরিক্ত কোন চার্জ নেই, যদি না আপনি পণ্য রিটার্ন বা পরিবর্তন করেন যা ডেলিভারি চার্জসহ যুক্ত হতে পারে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্য অর্ডার করার পর আমি কীভাবে পেমেন্ট নিশ্চিত করতে পারব?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:অর্ডার সম্পন্ন করার পর আপনি পেমেন্ট পদ্ধতি নির্বাচন করবেন। পেমেন্ট সম্পন্ন করার পর আপনাকে একটি কনফার্মেশন মেসেজ পাঠানো হবে, যাতে আপনি নিশ্চিত হতে পারবেন যে আপনার পেমেন্ট সফলভাবে প্রক্রিয়া হয়েছে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্যের ট্র্যাকিং নম্বর কোথায় পাবো?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:পেমেন্ট নিশ্চিত হওয়ার পর, আমাদের সাপোর্ট টিম আপনাকে একটি ট্র্যাকিং নম্বর প্রদান করবে, যার মাধ্যমে আপনি আপনার অর্ডার ট্র্যাক করতে পারবেন।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আমি কি অর্ডারের জন্য ইমেল অথবা মেসেজ পাবো?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:হ্যাঁ, আপনার অর্ডার সফলভাবে প্লেস করার পর আমরা আপনাকে ইমেল বা এসএমএস মাধ্যমে কনফার্মেশন মেসেজ পাঠাবো।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আমি কি অর্ডারটি বাতিল করতে পারি?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:অর্ডার শিপমেন্টের আগ পর্যন্ত আপনি অর্ডার বাতিল করতে পারবেন। বাতিল করার জন্য আমাদের সাপোর্ট টিমের সাথে দ্রুত যোগাযোগ করতে হবে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আপনার পণ্যের মান সম্পর্কে কিভাবে নিশ্চিত হব?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:আমরা উন্নতমানের পণ্য বিক্রি করি এবং প্রতিটি পণ্য সঠিকভাবে পরীক্ষা করা হয়। আপনি আমাদের ফেসবুক পেজে পণ্যের রিয়েল ইমেজ এবং ভিডিও দেখে পণ্য সম্পর্কে ধারণা পেতে পারেন।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: পণ্য পেয়ে যদি সমস্যা হয়, তবে কি আমি রিটার্ন করতে পারব?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:হ্যাঁ, আপনি যদি পণ্য পেয়ে কোনো সমস্যা পান, তবে আপনি রিটার্ন করতে পারবেন। তবে, রিটার্নের জন্য পণ্যটি আমাদের কাছে ফেরত পাঠাতে হবে এবং ডেলিভারি চার্জ আপনাকেই দিতে হবে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আমি কি আপনার পণ্যগুলোর সঠিক দাম পাবো?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:হ্যাঁ, আপনি আমাদের ওয়েবসাইটে পণ্যের সঠিক দাম পাবেন। দাম বাজার পরিস্থিতি অনুসারে পরিবর্তিত হতে পারে, কিন্তু আপনার অর্ডারের সময়ই প্রযোজ্য দাম থাকবে।</span></font></p><p style=\"\"><br></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আমি কি আপনার পণ্যগুলোর রিভিউ বা রেটিং দেখতে পারি?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:হ্যাঁ, আপনি আমাদের ওয়েবসাইটে প্রতিটি পণ্যের রিভিউ এবং রেটিং দেখতে পারবেন। এছাড়া আমাদের ফেসবুক পেজে অন্যান্য কাস্টমারের মতামতও পড়তে পারবেন।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p><p style=\"\"><font face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px; background-color: rgb(255, 255, 0);\"><b>প্রশ্ন: আপনি কি ক্যাশ অন ডেলিভারি (COD) গ্রহণ করেন?</b></span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\">উত্তর:জি ,আমরা ক্যাশ অন ডেলিভারি (COD) গ্রহণ করি । আপনি পেমেন্ট অনলাইনেও করতে পারেন অথবা বা ডেলিভারি পাওয়ার পর টাকা প্রদান করতে হবে।</span></font></p><p style=\"\"><font color=\"rgba(17, 21, 28, 0.75)\" face=\"Poppins, sans-serif\"><span style=\"font-size: 16px; letter-spacing: 0.6px;\"><br></span></font></p>', 1, '2024-09-15 04:38:57', '2025-03-20 19:30:35', 'fl');
INSERT INTO `create_pages` (`id`, `name`, `slug`, `title`, `description`, `status`, `created_at`, `updated_at`, `pageFor`) VALUES
(10, 'How To Order', 'how-to-order', '✅ কিভাবে অর্ডার করবেন! (How To Order) ✅', '<div><font face=\"Nirmala UI, sans-serif\"><span style=\"font-size: 18.6667px;\"><br></span></font></div><h5><b style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">১</span><span style=\"font-size: 14pt; line-height: 115%;\">. </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ওয়েবসাইটে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">লগইন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">বা</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অ্যাকাউন্ট</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">তৈরি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুনঃ(অপশনাল)</span></b></h5>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%;\">&nbsp;</span><span style=\"background-color: var(--ct-card-bg); text-align: var(--ct-body-text-align); font-size: 18.6667px;\">প্রথমে ওয়েবসাইটে যান এবং যদি আপনার অ্যাকাউন্ট না থাকে, তাহলে একটি নতুন অ্যাকাউন্ট তৈরি করুন।</span></li><li><span style=\"font-size: 18.6667px;\">রেজিস্ট্রেশন করার জন্য আপনি আপনার ইমেইল, ফোন নম্বর বা সোশ্যাল মিডিয়া একাউন্ট (যেমন Facebook, Google ইত্যাদি) ব্যবহার করে রেজিস্টার করতে পারবেন।</span></li><li><span style=\"font-size: 18.6667px;\">যদি আপনার অ্যাকাউন্ট থাকে, তবে সরাসরি লগইন করুন।</span></li><li><span style=\"font-size: 18.6667px; background-color: rgb(255, 255, 255);\"><b style=\"\"><font color=\"#0000ff\" style=\"\">অ্যাকাউন্ট ছাড়াও অর্ডার করতে পারবেন।</font></b></span></li></ul>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\"><br></span></p><h5><span style=\"background-color: rgb(255, 255, 0);\"><b><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">২</span><span style=\"font-size: 14pt; line-height: 115%;\">. </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পণ্য</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">নির্বাচন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুনঃ</span></b></span></h5>\r\n\r\n<ul><li><font face=\"Nirmala UI, sans-serif\"><span style=\"font-size: 18.6667px;\">ওয়েবসাইটে গিয়ে আপনার প্রয়োজনীয় পণ্যটি খুঁজুন।</span></font></li><li><font face=\"Nirmala UI, sans-serif\"><span style=\"font-size: 18.6667px;\">আপনি পণ্যের নাম, ক্যাটাগরি বা ব্র্যান্ড অনুসারে পণ্য খুঁজে পেতে পারেন।</span></font></li><li><font face=\"Nirmala UI, sans-serif\"><span style=\"font-size: 18.6667px;\">পণ্যের বিস্তারিত তথ্য দেখুন এবং আপনার পছন্দমত পণ্য নির্বাচন করুন।</span></font></li></ul>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size: 14pt; line-height: 115%;\">&nbsp;</span></p>\r\n\r\n<h5><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">৩</span><span style=\"font-size: 14pt; line-height: 115%;\">. </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পণ্য</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">কার্টে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">যোগ</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুন</span></font></b></h5>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পণ্যটি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">নির্বাচন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পর</span><span style=\"font-size: 14pt; line-height: 115%;\"> \"</span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">কার্টে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">যোগ</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুন</span><span style=\"font-size: 14pt; line-height: 115%;\">\" </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">বাটনে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ক্লিক</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুন।</span><span style=\"font-size: 14pt; line-height: 115%;\"><o:p></o:p></span></li></ul>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">যদি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">আপনি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">একাধিক</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পণ্য</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">কেনার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ইচ্ছা</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">রাখেন</span><span style=\"font-size: 14pt; line-height: 115%;\">, </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">তবে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">প্রতিটি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পণ্যের</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">জন্য</span><span style=\"font-size: 14pt; line-height: 115%;\"> \"</span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">কার্টে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">যোগ</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুন</span><span style=\"font-size: 14pt; line-height: 115%;\">\" </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">বাটন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ক্লিক</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুন।</span><span style=\"font-size: 14pt; line-height: 115%;\"><o:p></o:p></span></li></ul>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">সব</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পণ্য</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">কার্টে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">যোগ</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">হয়ে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">গেলে</span><span style=\"font-size: 14pt; line-height: 115%;\">, </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">আপনি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পরবর্তী</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ধাপে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">যেতে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পারবেন।</span><span style=\"font-size: 14pt; line-height: 115%;\"><o:p></o:p></span></li></ul>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size: 14pt; line-height: 115%;\">&nbsp;</span></p>\r\n\r\n<h5><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">৪</span><span style=\"font-size: 14pt; line-height: 115%;\">. </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অর্ডার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">চেকআউট</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুনঃ</span></font></b></h5><h5><ul><li><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\n&quot;Arial Unicode MS&quot;;color:black;mso-themecolor:text1\">\"</span><span style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;\r\ncolor:black;mso-themecolor:text1\">কার্ট</span><span style=\"font-size:14.0pt;\r\nline-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;\r\nmso-themecolor:text1\">\" </span><span style=\"font-size:14.0pt;line-height:\r\n115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:text1\">আইকনে</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;\r\ncolor:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:\r\ntext1\">ক্লিক</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\n&quot;Arial Unicode MS&quot;;color:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;\r\ncolor:black;mso-themecolor:text1\">করে</span><span style=\"font-size:14.0pt;\r\nline-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;\r\nmso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;\r\nfont-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:text1\">আপনার</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;\r\ncolor:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:\r\ntext1\">পণ্যগুলো</span><span style=\"font-size:14.0pt;line-height:115%;\r\nmso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;\r\ncolor:black;mso-themecolor:text1\">দেখুন</span><span style=\"font-size:14.0pt;\r\nline-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;\r\nmso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;\r\nfont-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:text1\">এবং</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;\r\ncolor:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:\r\ntext1\">যদি</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\n&quot;Arial Unicode MS&quot;;color:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;\r\ncolor:black;mso-themecolor:text1\">কোনো</span><span style=\"font-size:14.0pt;\r\nline-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;\r\nmso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;\r\nfont-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:text1\">পরিবর্তন</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;\r\ncolor:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:\r\ntext1\">করতে</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\n&quot;Arial Unicode MS&quot;;color:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;\r\ncolor:black;mso-themecolor:text1\">চান</span><span style=\"font-size:14.0pt;\r\nline-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;\r\nmso-themecolor:text1\">, </span><span style=\"font-size:14.0pt;line-height:115%;\r\nfont-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:text1\">তাহলে</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;\r\ncolor:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:\r\ntext1\">সেটি</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\n&quot;Arial Unicode MS&quot;;color:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;\r\ncolor:black;mso-themecolor:text1\">করুন।</span><span style=\"font-size:14.0pt;\r\nline-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;\r\nmso-themecolor:text1\"><o:p></o:p></span></li></ul>\r\n\r\n<ul><li><span style=\"font-size:14.0pt;line-height:115%;font-family:\r\n&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:text1\">এরপর</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;\r\ncolor:black;mso-themecolor:text1\"> \"</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:\r\ntext1\">চেকআউট</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\n&quot;Arial Unicode MS&quot;;color:black;mso-themecolor:text1\">\" </span><span style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;\r\ncolor:black;mso-themecolor:text1\">বাটনে</span><span style=\"font-size:14.0pt;\r\nline-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;\r\nmso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;\r\nfont-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:text1\">ক্লিক</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;\r\ncolor:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:\r\ntext1\">করুন।</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\n&quot;Arial Unicode MS&quot;;color:black;mso-themecolor:text1\"><o:p></o:p></span></li></ul>\r\n\r\n<ul><li><span style=\"font-size:14.0pt;line-height:115%;font-family:\r\n&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:text1\">এখানে</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;\r\ncolor:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:\r\ntext1\">আপনাকে</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\n&quot;Arial Unicode MS&quot;;color:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;\r\ncolor:black;mso-themecolor:text1\">আপনার</span><span style=\"font-size:14.0pt;\r\nline-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;\r\nmso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;\r\nfont-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:text1\">শিপিং</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;\r\ncolor:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:\r\ntext1\">ঠিকানা</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\n&quot;Arial Unicode MS&quot;;color:black;mso-themecolor:text1\">, </span><span style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;\r\ncolor:black;mso-themecolor:text1\">ফোন</span><span style=\"font-size:14.0pt;\r\nline-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;\r\nmso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;\r\nfont-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:text1\">নম্বর</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;\r\ncolor:black;mso-themecolor:text1\">, </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:\r\ntext1\">ইমেইল</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\n&quot;Arial Unicode MS&quot;;color:black;mso-themecolor:text1\"> (</span><span style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;\r\ncolor:black;mso-themecolor:text1\">ঐচ্ছিক</span><span style=\"font-size:14.0pt;\r\nline-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;\r\nmso-themecolor:text1\">), </span><span style=\"font-size:14.0pt;line-height:115%;\r\nfont-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:text1\">এবং</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;\r\ncolor:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:\r\ntext1\">অন্যান্য</span><span style=\"font-size:14.0pt;line-height:115%;\r\nmso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;\r\ncolor:black;mso-themecolor:text1\">প্রয়োজনীয়</span><span style=\"font-size:14.0pt;\r\nline-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;\r\nmso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;\r\nfont-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:text1\">তথ্য</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;\r\ncolor:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:\r\ntext1\">পূরণ</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\n&quot;Arial Unicode MS&quot;;color:black;mso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;\r\ncolor:black;mso-themecolor:text1\">করতে</span><span style=\"font-size:14.0pt;\r\nline-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;color:black;\r\nmso-themecolor:text1\"> </span><span style=\"font-size:14.0pt;line-height:115%;\r\nfont-family:&quot;Nirmala UI&quot;,&quot;sans-serif&quot;;color:black;mso-themecolor:text1\">হবে।</span><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:&quot;Arial Unicode MS&quot;;\r\ncolor:black;mso-themecolor:text1\"><o:p></o:p></span></li></ul></h5>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size: 14pt; line-height: 115%;\">&nbsp;</span></p>\r\n\r\n<h5><span style=\"background-color: rgb(255, 255, 0);\"><b><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">৫</span><span style=\"font-size: 14pt; line-height: 115%;\">. </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পেমেন্ট</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পদ্ধতি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">নির্বাচন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুনঃ</span></b></span></h5>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">আপনি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">বিভিন্ন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পেমেন্ট</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পদ্ধতি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">থেকে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">একটি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">নির্বাচন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করতে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পারবেন</span><span style=\"font-size: 14pt; line-height: 115%;\">, </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">যেমন</span><span style=\"font-size: 14pt; line-height: 115%;\">:<o:p></o:p></span></p>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ক্যাশ</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ডেলিভারি</span><span style=\"font-size: 14pt; line-height: 115%;\"><o:p></o:p></span></li></ul>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">বিকাশ</span><span style=\"font-size: 14pt; line-height: 115%;\"><o:p></o:p></span></li></ul>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">নগদ</span><span style=\"font-size: 14pt; line-height: 115%;\"> <o:p></o:p></span></li></ul>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">রকেট</span><span style=\"font-size: 14pt; line-height: 115%;\"><o:p></o:p></span></li></ul>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ব্যাংক</span><span style=\"font-size: 14pt; line-height: 115%;\"><o:p></o:p></span></li></ul>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পছন্দসই</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পেমেন্ট</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পদ্ধতি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">নির্বাচন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পর</span><span style=\"font-size: 14pt; line-height: 115%;\">, </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">সব</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">তথ্য</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ঠিক</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">থাকলে</span><span style=\"font-size: 14pt; line-height: 115%;\"> Order Now </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">বাটনে</span><span style=\"font-size: 14pt; line-height: 115%;\">\r\n</span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ক্লিক</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অর্ডার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">সম্পন্ন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুন।</span><span style=\"font-size: 14pt; line-height: 115%;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size: 14pt; line-height: 115%;\">&nbsp;</span></p>\r\n\r\n<h5><span style=\"background-color: rgb(255, 255, 0);\"><b><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">৬</span><span style=\"font-size: 14pt; line-height: 115%;\">. </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অর্ডার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">কনফার্মেশনঃ</span></b></span></h5>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ক্যাশ</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ডেলিভারি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অথবা</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পেমেন্ট</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">সফলভাবে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">সম্পন্ন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">হলে</span><span style=\"font-size: 14pt; line-height: 115%;\">, </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">আপনি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">একটি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">কনফার্মেশন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">মেসেজ</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পাবেন।</span><span style=\"font-size: 14pt; line-height: 115%;\"><o:p></o:p></span></li></ul>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ইমেইল</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">বা</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">এসএমএসের</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">মাধ্যমে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">আপনি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">আপনার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অর্ডার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">কনফার্মেশন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">দেখতে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পাবেন</span><span style=\"font-size: 14pt; line-height: 115%;\">, </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">যাতে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">আপনার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অর্ডারের</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">বিস্তারিত</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">তথ্য</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">থাকবে।</span><span style=\"font-size: 14pt; line-height: 115%;\"><o:p></o:p></span></li></ul>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size: 14pt; line-height: 115%;\">&nbsp;</span></p>\r\n\r\n<h5><span style=\"background-color: rgb(255, 255, 0);\"><b><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">৭</span><span style=\"font-size: 14pt; line-height: 115%;\">. </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অর্ডার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ট্র্যাক</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুনঃ</span></b></span></h5>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">আপনার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অর্ডার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">শিপমেন্টের</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পর</span><span style=\"font-size: 14pt; line-height: 115%;\">, </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">আপনি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">একটি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ট্র্যাকিং</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">নম্বর</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পাবেন।</span><span style=\"font-size: 14pt; line-height: 115%;\"><o:p></o:p></span></li></ul>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ট্র্যাকিং</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">নম্বর</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ব্যবহার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">আপনি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">আপনার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পণ্যটির</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">বর্তমান</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অবস্থান</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">এবং</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">শিপমেন্ট</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">স্ট্যাটাস</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">দেখতে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পারবেন।</span><span style=\"font-size: 14pt; line-height: 115%;\"><o:p></o:p></span></li></ul>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size: 14pt; line-height: 115%;\">&nbsp;</span></p>\r\n\r\n<h5><span style=\"background-color: rgb(255, 255, 0);\"><b><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">৮</span><span style=\"font-size: 14pt; line-height: 115%;\">. </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পণ্য</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">গ্রহণ</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুনঃ</span></b></span></h5>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পণ্যটি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">শিপমেন্ট</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">হয়ে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">আপনার</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ঠিকানায়</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পৌঁছালে</span><span style=\"font-size: 14pt; line-height: 115%;\">, </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">আপনি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">এটি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">গ্রহণ</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করতে</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পারবেন।</span><span style=\"font-size: 14pt; line-height: 115%;\"><o:p></o:p></span></li></ul>\r\n\r\n<ul><li><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পণ্য</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">গ্রহণের</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পর</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">নিশ্চিত</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">করুন</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">যে</span><span style=\"font-size: 14pt; line-height: 115%;\">, </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">পণ্যটি</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অক্ষত</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">এবং</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">ঠিকঠাক</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">অবস্থায়</span><span style=\"font-size: 14pt; line-height: 115%;\"> </span><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\">এসেছে।</span></li></ul><p><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\"><br></span></p><p><span style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Nirmala UI&quot;, &quot;sans-serif&quot;;\"><b>এই ধাপগুলি অনুসরণ করে আপনি সহজেই&nbsp; আমাদের ওয়েবসাইট থেকে অর্ডার করতে পারবেন।</b></span><span lang=\"BN\" style=\"font-size: 14pt; line-height: 115%; font-family: &quot;Arial Unicode MS&quot;, &quot;sans-serif&quot;;\"><o:p></o:p></span></p>', 1, '2025-03-10 21:43:37', '2025-03-13 03:30:03', 'fl'),
(11, 'Blog', 'blog', 'Blog', '<p>Blog Page</p>', 1, '2025-05-03 14:55:42', '2025-05-03 14:55:42', 'hmm'),
(12, 'Campaign', 'campaign', 'Campaign', '<p>Campaign</p>', 1, '2025-05-03 14:56:10', '2025-05-03 14:56:10', 'hmm'),
(13, 'Test', 'test', 'Test', '<p>Test</p>', 1, '2025-05-13 15:54:52', '2025-05-13 15:59:38', 'fl');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `verify` int(11) DEFAULT NULL,
  `forgot` varchar(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'public/uploads/default/user.png',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `slug`, `phone`, `email`, `district`, `area`, `address`, `verify`, `forgot`, `image`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(177, 'Sirajul Islam', 'Sirajul Islam', '01333105717', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$s0YsRcG9CFFiRF7oQmgcE.6HsclRfdGs.wmEFfFR/tLUZYa0QVGy.', NULL, 'active', '2025-09-18 20:11:56', '2025-09-18 20:11:56'),
(178, 'Mr. Hasan molla', 'Mr. Hasan molla', '01326598470', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Fx11kkkvmy70qGLEYOSw0eT4hJlR35rLdDEIrWHLe.FGgAHSjh41.', NULL, 'active', '2025-11-27 19:07:08', '2025-11-27 19:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `shippingfee` varchar(255) NOT NULL,
  `partialpayment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1, 112, 'Pilkhana', 'Dhaka', '80', '200', '2021-10-23 19:02:41', '2022-12-10 04:25:24'),
(2, 1684, 'Katasur', 'Dhaka', '80', '200', '2021-10-24 19:02:41', '2022-12-10 04:25:24'),
(3, 6, 'Shyamoli', 'Dhaka', '80', '200', '2021-10-25 19:02:40', '2022-12-10 04:25:24'),
(4, 1685, 'Dhanmondi Staff Quarter', 'Dhaka', '80', '200', '2021-10-26 19:02:40', '2022-12-10 04:25:24'),
(5, 418, 'Dhaka Uddyan', 'Dhaka', '80', '200', '2021-10-27 19:02:40', '2022-12-10 04:25:24'),
(6, 7, 'Adabor', 'Dhaka', '80', '200', '2021-10-28 19:02:40', '2022-12-10 04:25:24'),
(7, 114, 'New Market', 'Dhaka', '80', '200', '2021-10-29 19:02:40', '2022-12-10 04:25:24'),
(8, 426, 'Shekhertek', 'Dhaka', '80', '200', '2021-10-30 19:02:40', '2022-12-10 04:25:24'),
(9, 155, 'Old Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(10, 1660, 'Dhanmondi - Rd 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(11, 326, 'Science Lab', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(12, 1661, 'Dhanmondi - Rd 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(13, 11, 'Lalmatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(14, 327, 'Sobhanbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(15, 1690, 'Arshinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(16, 145, 'Dhaka University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(17, 1691, 'Washpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(18, 1692, 'Garden City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(19, 1693, 'Boddhovumi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(20, 148, 'Kazi Nazrul Islam Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(21, 1187, 'Kaderabad Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(22, 149, 'Kawran Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(23, 1662, 'Dhanmondi - Rd 4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(24, 115, 'Azimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(25, 162, 'Shahbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(26, 306, 'Monipuripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(27, 309, 'Bosila', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(28, 1663, 'Dhanmondi - Rd 4A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(29, 19, 'Sher-E-Bangla Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(30, 116, 'Nilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(31, 163, 'Katabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(32, 1664, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(33, 164, 'Hatirpool', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(34, 1210, 'Eastern Housing (Adabor)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(35, 1665, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(36, 1211, 'Teskunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(37, 1212, 'DHAKA TENARI MORE', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(38, 1666, 'Dhanmondi - Rd 3A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(39, 1213, 'Shahidnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(40, 95, 'Bijoy Shoroni', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(41, 1667, 'Dhanmondi - Rd 6A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(42, 1214, 'Jhigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(43, 185, 'Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(44, 96, 'Farmgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(45, 1668, 'Dhanmondi - Rd 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(46, 1215, 'Polashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(47, 186, 'Kathalbagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2023-01-07 01:52:02'),
(48, 97, 'Indira Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(49, 1669, 'Dhanmondi - Rd 8A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(50, 1216, 'Satmoshjid Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(51, 1670, 'Dhanmondi - Rd 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(52, 1217, 'Shukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(53, 188, 'Central Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(54, 99, 'Tejkunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(55, 1671, 'Dhanmondi - Rd 9A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(56, 1218, 'BNP Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(57, 100, 'Razabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(58, 1672, 'Dhanmondi - Rd 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(59, 1673, 'Dhanmondi - Rd 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(60, 1139, 'Dhaka uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(61, 101, 'Sukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(62, 1674, 'Dhanmondi - Rd 12A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(63, 1140, 'Nobodoy', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(64, 102, 'Panthopath', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(65, 103, 'Kalabagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(66, 1675, 'Dhanmondi - Rd 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(67, 1141, 'Chad Uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(68, 104, 'Green Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(69, 1676, 'Dhanmondi - Rd 15 A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(70, 1142, 'Mohammadia Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(71, 105, 'Manik Mia Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(72, 1677, 'Dhanmondi - Rd 27', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(73, 1143, 'Ring Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(74, 106, 'Asad Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(75, 1678, 'Dhanmondi - Rd 28', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(76, 1144, 'Tajmahal Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(77, 107, 'West Dhanmondi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(78, 1679, 'Dhanmondi - Rd 29', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(79, 1145, 'Nurjahan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(80, 133, 'Dhakeshwari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(81, 108, 'Shankar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(82, 1146, 'Rajia Sultana Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(83, 1, 'Mohammadpur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(84, 273, 'Zigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(85, 109, 'Rayer Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(86, 1681, 'Zafrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(87, 183, 'Paribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(88, 2, 'Dhanmondi - Rd 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(89, 110, 'Tallabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(90, 1682, 'Sadek Khan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(91, 111, 'Hazaribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(92, 1683, 'Sher e Bangla Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(93, 67, 'Nikunja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(94, 1230, 'Mahanogor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(95, 1231, 'Nimtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(96, 1232, 'Nurerchala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(97, 1571, 'Jahangir Gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(98, 82, 'South Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(99, 325, 'Joar Shahara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(100, 1572, 'Nijhum gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(101, 83, 'Merul Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(102, 1573, 'BAF Bashar (Dhaka cantonment)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(103, 1199, 'Apollo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(104, 84, 'Niketon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(105, 72, 'Bashundhara R/A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(106, 1574, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(107, 1200, 'Nurer Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(108, 85, 'Banani', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(109, 86, 'Banani DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(110, 73, 'Vatara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(111, 1575, 'MES colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(112, 1201, 'Bawaila Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(113, 87, 'Mohakhali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(114, 74, 'Nadda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(115, 1202, 'Satarkul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(116, 1185, 'Kunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(117, 88, 'Mohakhali DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(118, 1233, 'Pastola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(119, 14, 'Gudaraghat (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(120, 75, 'Baridhara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(121, 1206, 'Khilbar Tek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(122, 1186, 'Babli Masjid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(123, 1234, 'Poschim Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(124, 76, 'Baridhara DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(125, 1235, 'Purbo Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(126, 77, 'Notun Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(127, 91, 'Aziz Palli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(128, 1236, 'Sat-tola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(129, 78, 'Adarsha Nagar (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(130, 1317, 'Namapara-Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(131, 92, 'Bashtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(132, 1237, 'Shaheenbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(133, 79, 'Shahjadpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(134, 93, 'South Baridhara DIT Project', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(135, 1238, 'Subastu', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(136, 21, 'Cantonment Post Office', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(137, 80, 'Uttor Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(138, 94, 'Aftabnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(139, 1239, 'ICDDRB', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(140, 81, 'Middle Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(141, 39, 'Namapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(142, 1240, 'Satrasta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(143, 1348, 'Niketon Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(144, 323, 'Nakhalpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(145, 1268, 'Rosulbagh(Mohakhali)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(146, 1241, 'Tekpara Adorsonagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(147, 1242, 'Uttar Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(148, 1323, 'Aftab Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(149, 98, 'Tejgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(150, 1243, 'Wireless', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(151, 1244, 'Solmaid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(152, 27, 'M.E.S', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(153, 44, 'Kurmitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(154, 1245, '300 Feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(155, 45, 'Shewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(156, 1219, 'Kalachandpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(157, 174, 'Khilbari Tek (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(158, 1220, 'Jogonnathpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(159, 1221, 'Kuratuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(160, 1329, 'TV gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(161, 1222, 'Alatunnessa School Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(162, 1224, 'Bou Bazar - Mohakhali, Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(163, 1733, 'Nikunja 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(164, 51, 'Kuril', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(165, 1225, 'Chairman Goli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(166, 1226, 'Confidence Tower, Jhilpar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(167, 1227, 'Fuji Trade Center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(168, 3, 'Gulshan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(169, 1228, 'Khil Barirtek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(170, 1229, 'Korail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(171, 66, 'Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(172, 449, 'Mirpur Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(173, 1332, 'Gudaraghat-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(174, 277, 'Kalshi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(175, 1333, 'Namapara-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(176, 1334, 'Oxygen', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(177, 1600, 'Mirpur 60 feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(178, 8, 'Darussalam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(179, 9, 'Gabtoli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(180, 1335, 'Technical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(181, 1481, 'Eastern Housing (Pallabi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(182, 10, 'Pallabi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(183, 1336, 'Mirpur 13 /14 / 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(184, 1337, 'Benaroshi Polli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(185, 12, 'Mirpur DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(186, 329, 'ECB Chattar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(187, 1338, 'Beribadh-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(188, 13, 'Kochukhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(189, 1339, 'Buddhijibi Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(190, 1340, 'Purobi Cinema Hall', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(191, 89, 'South Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(192, 17, 'Agargaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(193, 1341, 'Mondir-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(194, 1694, 'Mirpur - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(195, 90, 'Shah Ali Bag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(196, 18, 'Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(197, 1342, 'Palasnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(198, 1343, 'Purobi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(199, 20, 'Ibrahimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(200, 1344, 'Rupnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(201, 1345, 'Senpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(202, 315, 'Mirpur 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(203, 1131, 'Birulia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(204, 1346, 'BRTA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(205, 22, 'Mirpur Cantonment', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(206, 37, 'Dewanpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(207, 1347, 'Zoo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(208, 23, 'Kafrul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(209, 40, 'Mastertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(210, 1695, 'Mirpur - 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(211, 24, 'Vashantek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(212, 41, 'Balughat', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(213, 1696, 'Mirpur - 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(214, 25, 'Manikdi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(215, 42, 'Barontek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(216, 1697, 'Mirpur - 11.5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(217, 26, 'Matikata', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(218, 43, 'Goltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(219, 1698, 'Mirpur - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(220, 28, 'Rupnagar Residential Area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(221, 1699, 'Mirpur - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(222, 1165, 'Kallanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(223, 29, 'Duaripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(224, 1700, 'Mirpur - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(225, 1166, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:43'),
(226, 30, 'Rainkhola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(227, 1701, 'Mirpur - 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(228, 1167, 'Lalkuthi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(229, 31, 'Mirpur Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(230, 1168, 'Mirpur 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(231, 32, 'Mazar Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(232, 1169, 'Tolarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(233, 33, 'Shagufta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(234, 1594, 'Arambag (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(235, 1170, 'Ahmed Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(236, 1331, 'Mirpur 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(237, 1171, 'Paikpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(238, 1172, 'Pirerbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(239, 35, 'Baigertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(240, 1173, 'Taltola (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(241, 36, 'Madina nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(242, 1174, 'MES Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(243, 1175, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(244, 275, 'Kazipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(245, 1176, 'Ajiz Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(246, 276, 'Shewrapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(247, 5, 'Kallyanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(248, 139, 'Fakirapul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(249, 152, 'Shantibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(250, 140, 'Kakrail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(251, 153, 'Baily Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(252, 154, 'Minto Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(253, 69, 'Hajipara (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(254, 141, 'Naya Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(255, 142, 'Bijoynagar (Paltan)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(256, 156, 'Eskaton Garden Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(257, 143, 'Press Club', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(258, 144, 'High Court', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(259, 157, 'Eskaton', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(260, 158, 'Moghbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(261, 288, 'Purana Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(262, 159, 'Mouchak', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(263, 334, 'Arambag (Motijheel)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(264, 160, 'Malibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(265, 161, 'Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(266, 1207, 'Buddho Mondir', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(267, 1208, 'Sipahibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(268, 1636, 'Banasree Block - A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(269, 1209, 'TT Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(270, 1637, 'Banasree Block - B', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(271, 165, 'Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(272, 1638, 'Banasree Block - C', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(273, 1132, 'Shahjahanpur (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(274, 166, 'Khilgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(275, 1639, 'Banasree Block - D', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(276, 1640, 'Banasree Block - E', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(277, 319, 'Siddweswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(278, 167, 'Middle Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(279, 1641, 'Banasree Block - F', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(280, 168, 'Goran', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(281, 1642, 'Banasree Block - G', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(282, 169, 'Madartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(283, 396, 'Nandipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(284, 1643, 'Banasree Block - H', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(285, 187, 'Malibagh Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(286, 170, 'Manik Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(287, 171, 'Shahjahanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(288, 1644, 'Banasree Block - I', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(289, 1324, 'Gulbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(290, 1137, 'Haterrjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(291, 125, 'Tikatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(292, 126, 'Motijheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(293, 172, 'Banasree (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(294, 403, 'Gopibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(295, 1645, 'Banasree Block - J', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(296, 189, 'Sabujbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(297, 1325, 'Meradiya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(298, 173, 'Meradia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(299, 1646, 'Banasree Block - K', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(300, 190, 'Shiddheswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(301, 1326, 'Mirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(302, 1647, 'Banasree Block - L', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(303, 1327, 'Modhubagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(304, 1328, 'Rampura TV center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(305, 1648, 'Banasree Block - M', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(306, 266, 'Shegunbagicha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(307, 177, 'Mughdapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(308, 1649, 'Banasree Block - N', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(309, 267, 'Rajarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(310, 1330, 'Ulan road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(311, 1223, 'Purbo Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(312, 1251, 'Chamelibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(313, 181, 'Hatirjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(314, 134, 'Kamalapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(315, 182, 'Banglamotor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(316, 1128, 'Manda(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(317, 1596, 'Nazimuddin Road (Malibag)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(318, 150, 'Ramna', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(319, 137, 'Dainik Bangla Mor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(320, 151, 'Shantinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(321, 1657, 'Uttara Sector - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(322, 324, 'Dokshingaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(323, 1686, 'Uttara Sector - 16', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(324, 1152, 'Uttara Sector 5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(325, 1687, 'Uttara Sector - 17', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(326, 1153, 'Uttara Sector 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(327, 1688, 'Uttara Sector - 18', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(328, 1154, 'Uttara Sector 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(329, 1155, 'Uttara Sector 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(330, 1156, 'Uttara Sector 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(331, 1157, 'Uttara Sector 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(332, 1158, 'Nalbhog', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(333, 1160, 'Phulbaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(334, 352, 'Kamarpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(335, 1161, 'Dhour', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(336, 1295, 'Ranavola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(337, 1162, 'Bhatuliya', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(338, 1318, 'Ahalia-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(339, 1320, 'Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(340, 1321, 'Habib Market-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(341, 1322, 'Pakuria-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(342, 1163, 'Bamnartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(343, 1164, 'Turag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(344, 1650, 'Uttara Sector - 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(345, 34, 'Bawnia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(346, 1654, 'Uttara Sector - 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(347, 1655, 'Uttara Sector - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(348, 1656, 'Uttara Sector - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(349, 1257, 'Kotwali (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(350, 113, 'Nawabgonj Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(351, 1258, 'Railway Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(352, 1259, 'Rajar Dewri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(353, 284, 'Sutrapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(354, 1261, 'Sat rowja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(355, 286, 'Kamrangichar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(356, 1262, 'Tantibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(357, 146, 'Dhaka Medical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(358, 147, 'Bongo Bondhu Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(359, 346, 'Armanitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(360, 349, 'Islambag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(361, 354, 'Mitford', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(362, 117, 'Lalbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(363, 355, 'Shakhari Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(364, 118, 'Chawkbazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(365, 356, 'Katherpol', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(366, 316, 'Bongshal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(367, 119, 'Naya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(368, 357, 'Bangla Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(369, 120, 'Tatibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(370, 358, 'Patuatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(371, 121, 'Luxmi Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(372, 123, 'Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(373, 124, 'Siddique Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(374, 397, 'Nazira Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(375, 127, 'Nawabpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(376, 128, 'Kaptan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(377, 263, 'Dolaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(378, 1248, 'Mahut Tuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(379, 129, 'Gulistan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(380, 406, 'Sadarghat (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(381, 1249, 'Alubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(382, 130, 'Bongo Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(383, 407, 'Kaltabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(384, 1250, 'Badam Toli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(385, 131, 'Chankarpul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(386, 269, 'Babubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(387, 270, 'Islampur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(388, 132, 'Palashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(389, 409, 'Gandaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(390, 1595, 'Nazimuddin Road (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(391, 271, 'Imamgonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(392, 1252, 'Dholaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(393, 272, 'Nayabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(394, 1253, 'Doyagonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(395, 1254, 'Farashgong', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(396, 135, 'Wari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(397, 136, 'Narinda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(398, 184, 'Bakshibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(399, 1395, 'Firozshah', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(400, 1396, 'GEC', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(401, 1397, 'Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(402, 1398, 'Halishshar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(403, 1458, 'Sadarghat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(404, 1366, 'Cadet College', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(405, 1367, 'Chandgaon', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(406, 1368, 'Chattogram Airport', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(407, 1369, 'Chattogram Bandar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(408, 1370, 'Chattogram Cantonment', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(409, 1371, 'Chattogram Chawkbazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(410, 1431, 'Mohard', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(411, 1372, 'Chattogram Customs Acca', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(412, 999, 'Sitakundu', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(413, 1373, 'Chattogram GPO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(414, 1433, 'Nasirabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(415, 1407, 'Jalalabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(416, 1374, 'Chattogram New Market', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(417, 1434, 'North Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(418, 1375, 'Chattogram Oxygen', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(419, 1435, 'North Kattali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(420, 1349, 'Kotwali Chattogram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(421, 1135, 'Bondor (Chittagong)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(422, 1376, 'Chattogram Politechnic Institute', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(423, 1436, 'North Katuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(424, 1437, 'Noyabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(425, 1350, 'Agrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(426, 1464, 'Sitakunda Barabkunda', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(427, 1136, 'Barahatia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(428, 1377, 'Chattogram Sailors Colony', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(429, 1438, 'Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(430, 1351, 'AK Khan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(431, 1465, 'Sitakunda Baroidhala', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(432, 1378, 'Colonel Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(433, 1379, 'Combined Military Hospital (CMH)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(434, 1439, 'Panchlaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(435, 1352, 'Al- Amin Baria Madra', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(436, 1466, 'Sitakunda Bawashbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(437, 1380, 'Court Buliding', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(438, 1440, 'Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(439, 1353, 'Al- Amin Baria Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(440, 1467, 'Sitakunda Bhatiari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(441, 1354, 'Amin Jute Mills', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(442, 1468, 'Sitakunda Fouzdarhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(443, 1122, 'Chittagong Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(444, 1382, 'Dakkshin Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(445, 1355, 'Anandabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(446, 1469, 'Sitakunda Jafrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(447, 1383, 'Double Mooring', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(448, 1443, 'Rampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(449, 1470, 'Sitakunda Kumira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(450, 1471, 'South Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(451, 1444, 'Rampura TSO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(452, 1358, 'Bayezid Bostami', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(453, 1473, 'Wazedia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(454, 1419, 'Kattuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(455, 1420, 'Khulshi', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(456, 1388, 'Export Processing', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(457, 1423, 'Middle Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(458, 1474, 'No area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(459, 448, 'CWH', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(460, 292, 'Shyampur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(461, 296, 'Dholaipar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(462, 313, 'Shonir Akhra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(463, 1246, 'Mirhazirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(464, 404, 'Shwamibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(465, 405, 'Sayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(466, 178, 'Golapbag (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(467, 408, 'Jurain', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(468, 179, 'Jatrabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(469, 411, 'RayerBag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(470, 412, 'Faridabad (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(471, 1255, 'Dholpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(472, 414, 'Donia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(473, 1597, 'Kodomtoli (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(474, 415, 'Postogola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(475, 915, 'Fenchuganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(476, 916, 'Gowainghat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(477, 917, 'Golapganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(478, 918, 'Jaintapur', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(479, 920, 'Kanaighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(480, 921, 'Amberkhana (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(481, 922, 'South Surma', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(482, 1497, 'Akhalia', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(483, 1498, 'Tilaghor', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(484, 1499, 'Shibganj(sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(485, 1494, 'Zindabazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(486, 1500, 'Uposhohor(Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(487, 1495, 'Pathantula', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(488, 1501, 'Kodomtoli', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(489, 1496, 'Subidbazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(490, 1502, 'Sheikhghat.', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(491, 1503, 'Majortila', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(492, 1504, 'Subhanighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(493, 911, 'Balaganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(494, 913, 'Biswanath', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(495, 914, 'Companyganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(496, 1284, 'Khartail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(497, 1542, 'Jinumarket', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(498, 1285, 'Majukhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(499, 1543, 'T & T(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(500, 1197, 'Ershadnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(501, 1286, 'Milgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(502, 1544, 'Shilmun', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(503, 1198, 'Sataish', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(504, 1287, 'National University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(505, 1545, 'Mudafa', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(506, 1288, 'Surtaranga', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(507, 1546, 'Khapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(508, 1289, 'Targach', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(509, 1547, 'Malakerbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(510, 1263, 'Khairtail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(511, 1290, 'Rail Station', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(512, 1548, 'Bypass Road (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(513, 1549, 'Kodda', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(514, 1264, 'Bonomala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(515, 1291, 'Boro Dewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(516, 1550, 'Duet Road', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(517, 1265, 'Morkun', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(518, 1551, 'Shibbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(519, 1552, 'Shimultoli', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(520, 647, 'Chowrasta (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(521, 1188, 'Kunia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(522, 1553, 'Jorpukur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(523, 1189, 'Gacha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(524, 1190, 'Boro Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(525, 1554, 'Salna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(526, 649, 'Kaliganj(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(527, 1191, 'Board Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(528, 1192, 'Kamarjuri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(529, 1266, 'Bhadam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(530, 1193, 'Dattapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(531, 1267, 'Boro Dewra Dakkhin Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(532, 1194, 'Auchpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(533, 1195, 'Cherag Ali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(534, 1269, 'Gopalpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(535, 1196, 'Tongi Bazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(536, 1270, 'College Gate (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(537, 1271, 'Boardbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(538, 1272, 'Gazipura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(539, 1273, 'Hossain Market (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(540, 1274, 'Signboard (Gazipur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(541, 1275, 'Joydebpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(542, 1276, 'Dhirasrom', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(543, 1277, 'Dattapara Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(544, 1536, 'Pubail', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(545, 1278, 'Badekomelosshor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(546, 1279, 'Borobari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(547, 1537, 'Mirerbazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(548, 1280, 'Choidana', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(549, 1538, 'Ulokhola', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(550, 1281, 'Deger Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(551, 1539, 'Modhumita', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(552, 1282, 'Gazcha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(553, 1540, 'Miraspara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(554, 63, 'Tongi', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(555, 1283, 'Hariken', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(556, 1541, 'Pagar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(557, 282, 'Ashulia', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:49'),
(558, 283, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:34'),
(559, 365, 'Dhamrai', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(560, 1127, 'Baipayl', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(561, 53, 'Savar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:10'),
(562, 61, 'Savar Cantonment', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:14:50'),
(563, 1178, 'Aga Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(564, 1179, 'Kathuria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(565, 1180, 'Goljarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(566, 1181, 'Nazirabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(567, 1260, 'Hasnabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(568, 1182, 'Kaliganj - Keraniganj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:35'),
(569, 1183, 'Nazarganj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(570, 1184, 'Zinzira', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(571, 305, 'Keranigonj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:28'),
(572, 1125, 'Kalatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(573, 1256, 'Kodomtoli(Keraniganj)', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:22'),
(574, 707, 'Bandar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(575, 708, 'Chashara (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(576, 1658, 'Signboard (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(577, 1659, 'Jalkuri (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(578, 710, 'Sonargaon', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(579, 1689, 'Chittagong Road (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(580, 1133, 'Shanarpar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(581, 1247, 'Bhuigarh-Narayangonj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(582, 1123, 'Siddhirganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(583, 1124, 'Fatullah', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(584, 1680, 'Shibu Market (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(585, 1000, 'Barura', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(586, 1001, 'Brahmanpara', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(587, 1002, 'Burichang', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(588, 1003, 'Chandina', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(589, 1005, 'Comilla Sadar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(590, 1007, 'Debiduar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(591, 1015, 'Comilla Sadar South', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(592, 782, 'Batiaghata', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(593, 783, 'Dacope', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(594, 784, 'Dighalia', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(595, 785, 'Dumuria', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(596, 786, 'Phultala', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(597, 789, 'Rupsa', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(598, 790, 'Khalispur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(599, 791, 'Sonadanga', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(600, 792, 'Khan jahan ali', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(601, 793, 'Doulatpur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(602, 1120, 'Khulna Sadar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(603, 794, 'Terokhada', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(604, 1528, 'Chorpara (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(605, 1529, 'Kachijhuli', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(606, 695, 'Dhubaura', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(607, 1530, 'College Road (Mymensigh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(608, 696, 'Fulbaria (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(609, 1531, 'Akua', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(610, 697, 'Fulpur', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(611, 1532, 'Agriculture University (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(612, 1533, 'Zilla School Mor (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(613, 699, 'Koltapara (Gouripur Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(614, 1534, 'Rohomotpur Bypass', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(615, 700, 'Haluaghat', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(616, 1535, 'Mashkanda', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(617, 701, 'Iswarganj', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(618, 702, 'Kacharighat (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(619, 703, 'Muktagacha', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(620, 704, 'Nandail', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(621, 932, 'Barisal Sadar', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(622, 935, 'Mehendiganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(623, 929, 'Babuganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(624, 930, 'Bakerganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(625, 931, 'Banaripara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(626, 658, 'Dewanganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(627, 659, 'Islampur(Jamalpur)', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(628, 660, 'Jamalpur Sadar', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(629, 661, 'Madarganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(630, 662, 'Melandah', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(631, 663, 'Sharishabari', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(632, 1603, 'Subidkhali', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(633, 1606, 'Bagabandar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(634, 1607, 'Kalaia', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(635, 1609, 'Birpasha', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(636, 949, 'Bauphal', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(637, 950, 'Dasmina', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(638, 951, 'Dumki', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(639, 952, 'Galachipa', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(640, 954, 'Mirjaganj', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(641, 955, 'Patuakhali Sadar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(642, 677, 'Kalkini', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(643, 678, 'Madaripur Sadar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(644, 679, 'Rajoir', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(645, 680, 'Shibchar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(646, 1716, 'Kacari (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(647, 1717, 'Super Market Mor (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(648, 1718, 'Munshir Hat (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(649, 1719, 'Mirkadim (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(650, 1720, 'Rikabibazar (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(651, 1721, 'Sipahipara (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(652, 1722, 'Muktarpur (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(653, 688, 'Gazaria', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(654, 690, 'Katakhali (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(655, 691, 'Serajdikhan', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(656, 693, 'Tangibari', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(657, 657, 'Bakshiganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(658, 738, 'Jhenaigati', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(659, 739, 'Nakla', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(660, 740, 'Nalitabari', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(661, 741, 'Sherpur Sadar', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(662, 742, 'Sribordi', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(663, 962, 'Zia Nagar (Indurkani)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(664, 956, 'Bhandaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(665, 957, 'Kaukhali (Perojpur)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(666, 958, 'Mothbaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(667, 959, 'Nesarabad (Shawrupkathi)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(668, 960, 'Nazirpur', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(669, 961, 'Pirojpur Sadar', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(670, 978, 'Chandpur Sadar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(671, 979, 'Faridganj', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(672, 980, 'Haimchar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(673, 983, 'Matlab (South)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(674, 984, 'Matlab (North)(Chengarchar)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(675, 638, 'Alfadanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(676, 639, 'Bhanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(677, 640, 'Boalmari', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(678, 641, 'Char Bhadrasan', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(679, 642, 'Faridpur Sadar', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(680, 643, 'Madhukhali', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(681, 644, 'Nagarkanda', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(682, 645, 'Sadarpur', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(683, 646, 'Saltha', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(684, 748, 'Kalihati', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(685, 749, 'Mirzapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(686, 751, 'Nagarpur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(687, 752, 'Shakhipur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(688, 753, 'Tangail Sadar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(689, 743, 'Bashail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(690, 744, 'Bhuapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(691, 745, 'Delduar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(692, 945, 'Jhalokathi Sadar', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(693, 946, 'Kathalia', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(694, 947, 'Nalchiti', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(695, 948, 'Rajapur (Jhalokathi)', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(696, 1711, 'Konokpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(697, 1712, 'Adompur Bazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(698, 1715, 'Kazir Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(699, 894, 'Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(700, 896, 'Moulvibazar Sadar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(701, 897, 'Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(702, 898, 'Sreemongal', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(703, 1702, 'Sarkar Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(704, 1703, 'Notun Bridge (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(705, 1622, 'Shamshernagar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(706, 1623, 'Sherpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(707, 1704, 'Tarapasha Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(708, 1705, 'Munshibazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(709, 1706, 'Munshibazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(710, 1707, 'Tengra Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(711, 1708, 'Mukam Bazar - Radar Unit (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(712, 1710, 'Patanushar - Shamshernagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(713, 1515, 'Chowdhury Bazar (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(714, 1516, 'Sultanmahmudpur', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(715, 889, 'Habiganj Sadar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(716, 1517, 'Gatiabazar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(717, 890, 'Lakhai', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(718, 1518, 'Mahmudabad', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(719, 1519, 'Duliakal', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(720, 892, 'Nabiganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(721, 1520, 'Mohonpur (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(722, 885, 'Ajmeriganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(723, 887, 'Baniachang', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(724, 1514, 'Rajnogor', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(725, 1107, 'Badarganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(726, 1108, 'Gangachara', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(727, 1109, 'Kaunia (Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(728, 1110, 'Mithapukur', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(729, 1111, 'Pirgacha', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(730, 1112, 'Pirganj(Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(731, 1113, 'Rangpur Sadar', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(732, 1114, 'Taraganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(733, 773, 'Keshabpur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(734, 774, 'Manirampur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(735, 775, 'Sharsha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(736, 769, 'Bagherpara', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(737, 770, 'Chowgacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(738, 1129, 'Benapole', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(739, 771, 'Jessore Sadar', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(740, 772, 'Jhikargacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(741, 1102, 'Atwari (Panchagarh)', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(742, 1103, 'Boda', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(743, 1104, 'Debiganj', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(744, 1105, 'Panchagarh Sadar', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(745, 1106, 'Tetulia', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(746, 1099, 'Kishoreganj ( Nilphamari)', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(747, 1100, 'Nilphamari Sadar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(748, 1096, 'Dimla', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(749, 1097, 'Domar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(750, 1098, 'Jaldhaka', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(751, 1021, 'Ramu', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(752, 1023, 'Ukhia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(753, 1576, 'Kalur Dokan', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(754, 1577, 'Alir Jahal Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(755, 966, 'Nakhoyngchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(756, 1578, 'Barmis Market', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(757, 1579, 'Bazar Ghata', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(758, 1580, 'Laldighir Par (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(759, 1581, 'Holiday Mor(Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(760, 1582, 'Laboni Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(761, 1583, 'Sughandha Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(762, 1584, 'Marin Drive Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(763, 1585, 'Sonar Tara', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(764, 1586, 'Jilonjha', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(765, 1587, 'Tarabaniyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(766, 1588, 'Romaliyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(767, 1589, 'Khurushkul', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(768, 1590, 'P M Khali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(769, 1591, 'Somity Para', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(770, 1017, 'Kolatoli (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(771, 938, 'Bhola Sadar', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(772, 939, 'Borhanuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(773, 941, 'Daulatkhan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(774, 944, 'Tajumuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(775, 924, 'Bamna', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(776, 925, 'Barguna Sadar', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(777, 926, 'Betagi', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(778, 927, 'Patharghata (Barguna)', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(779, 876, 'Belkuchi', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(780, 877, 'Chowhali', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(781, 878, 'Kamarkhanda', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(782, 879, 'Kazipur', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(783, 880, 'Raiganj', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(784, 881, 'Shahajadpur (Sirajganj)', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(785, 882, 'Sirajganj Sadar', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(786, 883, 'Tarash', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(787, 884, 'Ullapara', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(788, 857, 'Atgharia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(789, 858, 'Bera', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(790, 859, 'Bhangura', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(791, 860, 'Chatmohar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(792, 861, 'Faridpur ( Pabna )', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(793, 863, 'Pabna Sadar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(794, 864, 'Santhia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(795, 865, 'Sujanagar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(796, 1616, 'Banwarinagar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(797, 1617, 'Debottar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(798, 1618, 'Kashinathpur (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(799, 1619, 'Nakalia (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(800, 1621, 'Sagarkandi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(801, 855, 'Natore Sadar', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(802, 856, 'Singra', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(803, 851, 'Baghatipara', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(804, 852, 'Baraigram', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(805, 853, 'Gurudaspur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(806, 854, 'Lalpur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(807, 840, 'Atrai', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(808, 841, 'Badalgachi', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(809, 845, 'Naogaon Sadar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(810, 849, 'Raninagar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(811, 835, 'Akkelpur', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(812, 836, 'Joypurhat Sadar', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(813, 837, 'Kalai', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(814, 838, 'Khetlal', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(815, 839, 'Panchbibi', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(816, 811, 'Assasuni', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(817, 812, 'Debhata', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(818, 813, 'Kaliganj(Satkhira)', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(819, 814, 'Kolaroa', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(820, 815, 'Satkhira Sadar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(821, 816, 'Shyamnagar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(822, 817, 'Tala', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(823, 805, 'Gangni', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(824, 806, 'Meherpur Sadar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(825, 807, 'Mujibnagar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(826, 734, 'Gosairhat', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(827, 735, 'Zajira', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(828, 736, 'Naria', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(829, 737, 'Shariatpur Sadar', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(830, 732, 'Bhedarganj', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(831, 733, 'Damudiya', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(832, 727, 'Baliakandi', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(833, 728, 'Goalunda', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(834, 729, 'Pangsha', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(835, 730, 'Rajbari Sadar', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(836, 731, 'Kalukhali', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(837, 681, 'Daulatpur(Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(838, 682, 'Ghior', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(839, 683, 'Harirampur (Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(840, 684, 'Manikganj Sadar', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(841, 685, 'Saturia', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(842, 686, 'Shibalaya', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(843, 687, 'Singair', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(844, 652, 'Gopalganj Sadar', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(845, 653, 'Kasiani', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(846, 654, 'Kotalipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(847, 655, 'Maksudpur', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(848, 656, 'Tungipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(849, 1115, 'Baliadangi', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(850, 1134, 'Shibganj (Thakurgaon Sadar)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(851, 1116, 'Haripur', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(852, 1117, 'Pirganj(Thakurgaon)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(853, 1118, 'Ranishankail', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(854, 1119, 'Thakurgaon Sadar', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(855, 717, 'Atpara', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(856, 718, 'Barhatta', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(857, 719, 'Durgapur(Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(858, 720, 'Kalmakanda', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(859, 721, 'Kendua', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(860, 722, 'Khaliajuri', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(861, 723, 'Madan', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(862, 724, 'Mohanganj', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(863, 725, 'Netrokona Sadar', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(864, 726, 'Purbadhala (Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(865, 903, 'Dharmapasha', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(866, 712, 'Monohardi', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(867, 713, 'Velanogor (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(868, 714, 'Palash', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(869, 716, 'Shibpur', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(870, 1505, 'Madhabdi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(871, 1506, 'Babur Haat (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(872, 1507, 'Pachdona More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(873, 1508, 'Shaheprotab More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(874, 1509, 'West Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(875, 1510, 'East Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(876, 1511, 'Songita Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(877, 1512, 'Shatirpara', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(878, 1513, 'Hasnabad Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(879, 1024, 'Chagalnayya', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(880, 1025, 'Daganbhuiyan', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(881, 1026, 'Feni Sadar', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(882, 1027, 'Parshuram', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(883, 1028, 'Fulgazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(884, 1029, 'Sonagazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(885, 1072, 'Khanshama', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(886, 1074, 'Parbatipur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(887, 1483, 'College mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(888, 1484, 'Boromath (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(889, 1485, 'Pulhat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(890, 1486, 'Newtown (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(891, 1487, 'Lilir mor', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(892, 1488, 'Modern mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(893, 1063, 'Birganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(894, 1064, 'Birol', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(895, 1065, 'Bochaganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(896, 1066, 'Chirirbandar', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(897, 1067, 'Baluadanga (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(898, 1071, 'Kaharole', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(899, 1075, 'Fulchari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(900, 1076, 'Gaibandha Sadar', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(901, 1077, 'Gobindaganj ( Gaibandha )', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(902, 1078, 'Palashbari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(903, 1079, 'Sadullapur', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(904, 1080, 'Shaghatta', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(905, 1081, 'Sundarganj', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(906, 764, 'Alamdanga', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(907, 765, 'Chuadanga Sadar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(908, 766, 'Damurhuda', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(909, 767, 'Jibannagar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(910, 866, 'Bagha', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(911, 867, 'Bagmara (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(912, 868, 'Charghat', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(913, 869, 'Durgapur(Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(914, 870, 'Godagari', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(915, 871, 'Mohanpur (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(916, 872, 'Paba', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(917, 873, 'Putia', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(918, 874, 'Tanore', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(919, 875, 'Sadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(920, 1121, 'Rajshahi Shadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(921, 801, 'Magura Sadar', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(922, 802, 'Mohammadpur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(923, 803, 'Shalikha', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(924, 804, 'Sreepur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(925, 808, 'Kalia', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(926, 809, 'Lohagara(Narail)', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(927, 810, 'Narail Sadar', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(928, 1053, 'Barkal', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(929, 1054, 'Belaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(930, 1055, 'Jurachari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(931, 1056, 'Kaptai', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(932, 1057, 'Kawkhali (Rangamati)', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(933, 1058, 'Langadu', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(934, 1059, 'Naniarchar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(935, 1060, 'Rajasthali', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(936, 1061, 'Rangamati Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(937, 1416, 'Kaptai Kaptai Project', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(938, 1417, 'Kaptai Nuton Bazar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(939, 1418, 'Kaptai Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(940, 800, 'Mirpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(941, 795, 'Bheramara', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(942, 796, 'Daulatpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(943, 797, 'Khoksha', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(944, 798, 'Kumarkhali', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(945, 799, 'Kushtia Sadar', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(946, 830, 'Bholahat', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(947, 831, 'Gomastapur', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(948, 832, 'Nachole', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(949, 833, 'Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(950, 834, 'Shipganj ( Chapai )', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(951, 1126, 'Chapai Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(952, 776, 'Kotchandpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(953, 777, 'Harinakunda', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(954, 778, 'Jhenaidah Sadar', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(955, 779, 'Kaliganj(Jhenaidah)', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(956, 780, 'Moheshpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(957, 781, 'Shailkupa', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(958, 1045, 'Companiganj (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(959, 1046, 'Hatiya', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(960, 1047, 'Maijdee (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(961, 1048, 'Senbag', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(962, 1049, 'Sonaimuri', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(963, 1050, 'Subarnachar', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(964, 1051, 'Kabir Hat', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(965, 1043, 'Begumganj', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(966, 1044, 'Chatkhil', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(967, 1601, 'Alexandar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(968, 1038, 'Laksmipur Sadar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(969, 1039, 'Ramgati', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(970, 1040, 'Ramganj', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(971, 1041, 'Raipur (Lakshmipur)', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(972, 1042, 'Kamalnagar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(973, 1082, 'Bhurungamari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(974, 1083, 'Chilmary', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(975, 1084, 'Fulbari (Kurigram)', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(976, 1085, 'Kurigram Sadar', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(977, 1086, 'Nageswari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(978, 1087, 'Rajarhat', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(979, 1088, 'Rajibpur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(980, 1089, 'Rowmari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(981, 1090, 'Ulipur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(982, 676, 'Tarail', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(983, 668, 'Itna', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(984, 669, 'Karimganj', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(985, 670, 'Katiadi', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(986, 671, 'Kishoreganj Sadar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(987, 664, 'Austogram', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(988, 665, 'Bajitpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(989, 673, 'Mithamain', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(990, 667, 'Hosainpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(991, 674, 'Nikli', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(992, 675, 'Pakundia', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(993, 828, 'Sonatola', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(994, 829, 'Shajahanpur (Bogura)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(995, 818, 'Adamdighi (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(996, 819, 'Bogra Sadar', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(997, 820, 'Dhunot', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(998, 821, 'Dhubchanchia', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(999, 822, 'Gabtali (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1000, 823, 'Kahaloo', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1001, 824, 'Nandigram', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1002, 825, 'Sariakandi', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1003, 826, 'Sherpur (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1004, 827, 'Shibganj ( Bogra )', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1005, 768, 'Noapara (Jessore)', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1006, 1052, 'Baghaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1007, 1030, 'Dighinala', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1008, 1031, 'Khagrachari Sadar', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1009, 1032, 'Laksmichari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1010, 1033, 'Mohalchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1011, 1034, 'Manikchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1012, 1035, 'Matiranga', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1013, 1036, 'Panchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1014, 1037, 'Ramgor', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1015, 689, 'Lauhajang', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1016, 692, 'Sreenagar', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1017, 359, 'Dohar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1018, 446, 'Nawabgonj (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1019, 1629, 'Chandura (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1020, 1630, 'Singarbil (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1021, 1521, 'Kawtoly (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1022, 1631, 'Awliya Bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1023, 1522, 'T.A Road (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1024, 1632, 'Poirtola (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1025, 1523, 'Sarak bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1026, 1633, 'Ulchapara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1027, 1524, 'Moddopara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1028, 1634, 'Bhadugor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1029, 1525, 'Birashar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1030, 1635, 'Kumarshil more (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1031, 1526, 'Medda (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1032, 1527, 'Gatura- Pirbari (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1033, 970, 'Akhaura', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1034, 973, 'Paikpara (Brahmanbaria Sadar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1035, 1626, 'Bijoynagor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1036, 1627, 'Shahbajpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1037, 1628, 'Sohilpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1038, 1101, 'Saidpur', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1039, 755, 'Bagerhat Sadar', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1040, 756, 'Chitalmari', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1041, 757, 'Fakirhat (Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1042, 758, 'Kachua(Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1043, 759, 'Mollarhat', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1044, 760, 'Mongla', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1045, 761, 'Morelganj', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1046, 762, 'Rampal', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1047, 763, 'Sarankhola', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1048, 1091, 'Aditmari', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1049, 1092, 'Hatibandha (Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1050, 1093, 'Kaliganj(Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1051, 1094, 'Lalmonirhat Sadar', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1052, 1095, 'Patgram', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1053, 1489, 'Old bustand (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1054, 1490, 'Kazirpoint (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1055, 1491, 'Hason Nagar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1056, 1492, 'Moddho bazar (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1057, 1493, 'wazkhali', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1058, 900, 'Biswambharpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1059, 902, 'Derai', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1060, 905, 'Jagannathpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1061, 906, 'Jamalganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1062, 907, 'Sulla', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1063, 908, 'Traffic Point (Sunamganj Sadar)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1064, 909, 'Taherpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1065, 910, 'South Sunamganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1066, 964, 'Bandarban Sadar', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1067, 967, 'Rawanchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1068, 968, 'Ruma', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1069, 1130, 'soho area', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1070, 969, 'Thanchi', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1071, 1598, 'SDA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1072, 1391, 'Fatikchhari Harualchhari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1073, 1451, 'Raozan Fatepur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1074, 1392, 'Fatikchhari Najirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1075, 990, 'Fatikchari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1076, 1452, 'Raozan Guzra Noapara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1077, 1393, 'Fatikchhari Nanupur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1078, 991, 'Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1079, 1453, 'Raozan jagannath Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1080, 1454, 'Raozan Kundeshwari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1081, 1394, 'Fatikchhari Narayanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1082, 1455, 'Raozan Mohamuni', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1083, 1456, 'Raozan Pouroshobha', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1084, 995, 'Rangunia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1085, 1457, 'Rauzan Gahira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1086, 996, 'Raojan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1087, 1399, 'Chattogram University', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1088, 1400, 'Hathazari Fatahabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1089, 1401, 'Hathazari Gorduara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1090, 1402, 'Hathazari Katirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1091, 1403, 'Hathazari Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1092, 1404, 'Hathazari Mirzapur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1093, 1463, 'Sayad Bari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1094, 1405, 'Hathazari Nuralibari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1095, 1432, 'Muradnagar - Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1096, 1406, 'Hathazari Yunus Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1097, 1381, 'Dakkhin Ghatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1098, 1414, 'Kadeer Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1099, 1415, 'Kaptai Chandraghona', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1100, 1472, 'Uttar Gatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1101, 1445, 'Rangunia Dhamair', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1102, 1446, 'Rangunia Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1103, 1447, 'Ranir Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1104, 1448, 'Raozan B.I.T Post Office', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1105, 1389, 'Fakirkill', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1106, 1449, 'Raozan Beenajuri', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1107, 1390, 'Fatikchhari Bhandar Sharif', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1108, 1450, 'Raozan Dewanpur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1109, 1424, 'Mirsharai Abutorab', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1110, 1425, 'Mirsharai Azampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1111, 1426, 'Mirsharai Bharawazhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1112, 1427, 'Mirsharai Darrogahat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1113, 993, 'Mirsarai', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1114, 1428, 'Mirsharai Joarganj', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1115, 1429, 'Mirsharai Korerhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1116, 1430, 'Mirsharai Mohazanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1117, 1364, 'Boalkhali Sakpura', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1118, 994, 'Patiya', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1119, 1365, 'Boalkhali Saroatoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1120, 1138, 'Karnaphuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1121, 1412, 'Jaldia Marine Academy', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1122, 1413, 'Jaldia Merine Accade', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1123, 1441, 'Patiya Budhpara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1124, 1442, 'Patiya Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1125, 1356, 'Anawara Battali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1126, 1357, 'Anawara Paroikora', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1127, 1359, 'Boalkhali Charandwip', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1128, 1360, 'Boalkhali Iqbal Park', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1129, 986, 'Anwara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1130, 1361, 'Boalkhali Kadurkhal', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1131, 1362, 'Boalkhali Kanungopara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1132, 1363, 'Boalkhali Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1133, 988, 'Boalkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1134, 1018, 'Kutubdia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1135, 963, 'Ali Kadam', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1136, 1019, 'Moheshkhali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1137, 1020, 'Pekua', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1138, 965, 'Lama', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1139, 1016, 'Chakoria', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1140, 919, 'Zakiganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1141, 893, 'Barlekha', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1142, 899, 'Juri', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1143, 912, 'Beanibazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1144, 972, 'Bancharampur (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1145, 974, 'Kashba (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1146, 975, 'Nabinagar (Nabinagar Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1147, 933, 'Gournadi (Barisal)', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1148, 934, 'Hijla', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1149, 936, 'Muladi', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1150, 937, 'Wazirpur', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1151, 928, 'Agailjhara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1152, 1073, 'Nawabganj (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1153, 1062, 'Birampur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1154, 1068, 'Phulbari (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1155, 1069, 'Ghoraghat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1156, 1070, 'Hakimpur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1157, 711, 'Belabo', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1158, 715, 'Raipura (Bhairab)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1159, 971, 'Ashuganj (Bhairab)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1160, 976, 'Nasirnagar (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1161, 977, 'Sarail (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1162, 672, 'Kuliarchar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1163, 666, 'Bhairab', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1164, 1482, 'Gouripur (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1165, 1006, 'Daudkandi', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1166, 1008, 'Homna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1167, 1010, 'Meghna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1168, 1013, 'Titas', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1169, 901, 'Chattak', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1170, 904, 'Dowarabazar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1171, 709, 'Rupganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1172, 175, 'Bawaliapara (Narayangaj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1173, 706, 'Araihazar', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1174, 1478, 'Vobanipur Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1175, 1570, 'Rajabari Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1176, 1479, 'Barmi Sreepur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1177, 1480, 'Fulbaria Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1178, 650, 'Kapasia', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1179, 1555, 'Porabari Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1180, 651, 'Sreepur(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1181, 1556, 'Dhaladia Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1182, 1557, 'Hotapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1183, 1558, 'Bager bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1184, 1559, 'Member Bari Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1185, 1560, 'Gorgoria masterbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1186, 1561, 'Mc Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1187, 1562, 'Nayanpur Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1188, 1475, 'Mawna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1189, 1567, 'Joyna Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1190, 1476, 'Rajendrapur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1191, 1477, 'Bhawal Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1192, 1004, 'Chowddagram', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1193, 1009, 'Laksam', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1194, 1012, 'Nangolkot', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1195, 1014, 'Monoharganj', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1196, 787, 'Koira', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1197, 788, 'Paikgacha', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1198, 1592, 'Amadee Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1199, 1593, 'kopilmuni Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1200, 888, 'Chunarughat (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1201, 1599, 'Shayestaganj (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1202, 891, 'Madhabpur (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1203, 1614, 'Ranigaon (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1204, 1615, 'Putijuri (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1205, 886, 'Bahubal (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1206, 746, 'Ghatail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1207, 747, 'Gopalpur (Tangail)', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1208, 750, 'Modhupur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1209, 754, 'Dhanbari', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1210, 694, 'Valuka', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1211, 698, 'Goffargaon', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1212, 705, 'Trishal', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1213, 1022, 'Teknaf', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1214, 997, 'Sandwip (Guptachara)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1215, 1459, 'Sandwip Shiberhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1216, 1460, 'Sandwip Urirchar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1217, 1610, 'Sandwip (Enam Nagar)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1218, 1611, 'Sandwip (Complex)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1219, 1612, 'Sandwip (Kalapaniya)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1220, 1613, 'Sandwip (Gasua)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1221, 842, 'Dhamoirhat', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1222, 843, 'Manda(Naogaon)', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1223, 844, 'Mahadebpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1224, 846, 'Niamatpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1225, 847, 'Patnitala', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1226, 848, 'Porsha', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1227, 850, 'Shapahar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1228, 981, 'Hajiganj (Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1229, 982, 'Kachua(Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1230, 985, 'Shahrasti', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1231, 862, 'Iswardi', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1232, 1620, 'Pakshi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1233, 417, 'Konapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1234, 278, 'Demra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1235, 1723, 'Basher pull (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1236, 1724, 'Bamuail (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1237, 1725, 'Sharuliya (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1238, 1726, 'Rani mohol (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1239, 1727, 'Staffquater (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1240, 1728, 'Demra bazar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1241, 1729, 'Hajinogar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1242, 1730, 'Boxnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1243, 1731, 'Badsha mia road (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1244, 1732, 'Muslimnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1245, 413, 'Matuail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1246, 1305, 'Mollartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1247, 1150, 'Mollapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1248, 68, 'Sonali Bank Staff Quarter', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1249, 1306, 'Gawair', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1250, 1151, 'Azampur (East)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1251, 1307, 'Kosaibari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1252, 70, 'Kawla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1253, 1308, 'Prembagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1254, 71, 'Naddapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1255, 1309, 'Kachkura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1256, 1310, 'Helal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1257, 1311, 'Chamur Khan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1258, 1312, 'Society', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1259, 1313, 'Ismailkholla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1260, 1292, 'Uttarkhan Mazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1261, 1314, 'Masterpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1262, 1159, 'Azampur (West) (Uttara)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1263, 1293, 'Dakshinkhan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1264, 1315, 'Munda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1265, 1294, 'Hajipara-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1266, 1316, 'Barua', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1267, 1296, 'Joynal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1268, 1297, 'Johura Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1269, 1298, 'Habib Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1270, 1319, 'Ainusbag-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1271, 46, 'Ainusbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1272, 47, 'Uttarkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1273, 48, 'Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1274, 49, 'Fayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1275, 1299, 'BDR Market-House Building', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1276, 50, 'Ashkona', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1277, 1651, 'Uttara Sector - 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1278, 1300, 'BDR Market-Sector 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1279, 1652, 'Uttara Sector - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1280, 1301, 'Moinartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1281, 1653, 'Uttara Sector - 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1282, 1302, 'Atipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1283, 1147, 'Uttara Sector-4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1284, 1303, 'Kot Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1285, 1148, 'Goaltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1286, 1304, 'Dewan City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1287, 1149, 'Chalabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1288, 940, 'Charfession', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1289, 942, 'Lalmohan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1290, 943, 'Manpura', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1291, 1569, 'Chondra Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1292, 1738, 'Goailbari bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1293, 1739, 'Hatimara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1294, 1740, 'Sardagonj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1295, 1741, 'Ambagh (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1296, 1742, 'Fulbaria bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1297, 1743, 'Madhobpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1298, 1744, 'Kabirpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1299, 1745, 'Walton high-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1300, 1746, 'Walton micro-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1301, 1747, 'Mollapara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1302, 1748, 'Jalsukha (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1303, 1749, 'Gosatra (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1304, 648, 'Kaliakoir', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1305, 1563, 'Konabari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1306, 1564, 'Mouchak Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1307, 1734, 'Vannara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1308, 1565, 'Kashempur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1309, 1566, 'Shafipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1310, 1735, 'Sardarganj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1311, 1736, 'Sultan Market (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1312, 1568, 'Pollibiddut Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1313, 1737, 'Baroipara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1314, 1602, 'Kuakata', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1315, 1604, 'Khepupara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1316, 1605, 'Payra port', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1317, 923, 'Amtali', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1318, 1608, 'Mahipur', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1319, 953, 'Kalapara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1320, 1750, 'Companyganj (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1321, 1011, 'Muradnagar - Cumilla', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1322, 1713, 'Tilagao - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1323, 1714, 'Bhatera - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1324, 895, 'Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1325, 1624, 'Baramchal (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1326, 1625, 'Robir Bazar (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1327, 1709, 'Brahman Bazar - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1328, 989, 'Chandanaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1329, 992, 'Lohagara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1330, 1461, 'Satkania Baitul Ijjat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1331, 1462, 'Satkania Bazalia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1332, 998, 'Satkania', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1333, 1408, 'Jaldi Banigram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1334, 1409, 'Jaldi Gunagari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1335, 1410, 'Jaldi Khan Bahadur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1336, 1411, 'Jaldi Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1337, 1384, 'East Joara Barma', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1338, 1385, 'East Joara Dohazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1339, 1386, 'East Joara East Joara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1340, 1387, 'East Joara Gachbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1341, 1421, 'Lohagara Chunti', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1342, 1422, 'Lohagara Padua', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1343, 987, 'Banshkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_pixels`
--

CREATE TABLE `ecom_pixels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_pixels`
--

INSERT INTO `ecom_pixels` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(4, '1115870270194394', 1, '2023-08-10 14:38:51', '2024-09-20 16:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(55) NOT NULL,
  `white_logo` varchar(255) NOT NULL,
  `dark_logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `copyright` varchar(155) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` longtext DEFAULT NULL,
  `og_baner` text DEFAULT NULL,
  `play_store` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `name`, `white_logo`, `dark_logo`, `favicon`, `copyright`, `description`, `status`, `created_at`, `updated_at`, `meta_description`, `meta_keyword`, `og_baner`, `play_store`) VALUES
(2, 'Abayaba-Largest Decor Shop', 'public/uploads/settings/1757427657-abayaba.webp', 'public/uploads/settings/1757427658-abayaba.webp', 'public/uploads/settings/1757427658-abayaba.webp', NULL, '<b>sadf</b>', 1, '2023-01-21 12:01:07', '2025-09-10 00:20:58', 'Abayaba-Largest Decor Shop in bangladesh.', 'Abayaba-Largest Decor Shop in bangladesh.', 'public/uploads/settings/1757427658-abayaba.webp', '#');

-- --------------------------------------------------------

--
-- Table structure for table `google_tag_managers`
--

CREATE TABLE `google_tag_managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_tag_managers`
--

INSERT INTO `google_tag_managers` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'GTM-KG5X8N3B', 1, '2024-02-11 07:08:03', '2024-09-20 08:24:53'),
(2, '#3762704717300111', 1, '2024-11-28 16:15:21', '2024-11-28 16:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `ip_blocks`
--

CREATE TABLE `ip_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_no` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_11_113936_create_permission_tables', 1),
(8, '2023_01_21_150317_create_general_settings_table', 3),
(9, '2023_01_22_140830_create_social_media_table', 4),
(10, '2023_01_22_153053_create_contacts_table', 5),
(12, '2023_01_22_171430_create_categories_table', 6),
(17, '2023_02_09_082622_create_attributes_table', 7),
(21, '2023_02_11_065126_create_brands_table', 8),
(23, '2023_02_20_022411_create_customers_table', 9),
(24, '2023_02_21_083509_create_banners_table', 8),
(25, '2023_02_21_083647_create_banner_categories_table', 8),
(29, '2023_02_09_091624_create_productimages_table', 10),
(31, '2023_02_22_095626_create_districts_table', 11),
(48, '2023_02_22_150326_create_orders_table', 12),
(49, '2023_02_22_150339_create_order_details_table', 12),
(50, '2023_02_22_150351_create_shippings_table', 12),
(51, '2023_02_22_150400_create_payments_table', 12),
(53, '2023_02_25_022224_create_create_pages_table', 13),
(56, '2023_02_27_095310_create_reviews_table', 14),
(57, '2023_02_27_104954_create_order_types_table', 15),
(58, '2023_03_06_160934_create_campaigns_table', 16),
(59, '2023_03_13_121325_create_productprices_table', 17),
(60, '2023_04_17_125517_create_flavors_table', 18),
(61, '2023_04_17_125843_create_productflavors_table', 18),
(62, '2023_08_04_101452_create_shipping_charges_table', 19),
(64, '2023_08_04_204814_create_order_statuses_table', 20),
(65, '2023_08_06_161254_create_ecom_pixels_table', 21),
(66, '2023_06_04_121934_create_colors_table', 22),
(67, '2023_06_04_122329_create_sizes_table', 22),
(68, '2023_06_04_122459_create_productsizes_table', 22),
(69, '2023_06_04_122542_create_productcolors_table', 22),
(71, '2023_08_17_151949_create_campaign_reviews_table', 23),
(72, '2023_08_21_152844_create_ip_blocks_table', 24),
(73, '2023_09_07_171103_create_subcategories_table', 25),
(74, '2023_09_07_171404_create_childcategories_table', 25),
(76, '2024_02_06_165515_create_payment_gateways_table', 26),
(77, '2024_02_07_142550_create_sms_gateways_table', 27),
(78, '2024_02_07_161302_create_courierapis_table', 28),
(79, '2024_02_11_111947_create_google_tag_managers_table', 29),
(80, '2025_03_13_134953_add_sku_to_products_table', 30),
(82, '2025_03_13_140413_add_subcategory_id_to_products_table', 32),
(84, '2025_03_18_032859_add_tags_to_products_table', 33),
(85, '2025_03_18_223628_add_specification_to_products_table', 34);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 65);

-- --------------------------------------------------------

--
-- Table structure for table `new_campaigns`
--

CREATE TABLE `new_campaigns` (
  `id` int(9) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(512) NOT NULL,
  `banner` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` varchar(55) NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `shipping_charge` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `admin_note` text DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `amount`, `discount`, `shipping_charge`, `customer_id`, `admin_note`, `order_status`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(242, '98339', 1059, 0, 59, 177, NULL, 8, NULL, NULL, '2025-09-18 20:11:56', '2025-09-27 14:03:20'),
(243, '55759', 9949, 0, 199, 178, NULL, 1, NULL, NULL, '2025-11-27 19:07:08', '2025-11-27 19:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `purchase_price` int(11) DEFAULT NULL,
  `sale_price` int(11) NOT NULL,
  `product_discount` int(11) DEFAULT 0,
  `product_size` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `purchase_price`, `sale_price`, `product_discount`, `product_size`, `product_color`, `qty`, `created_at`, `updated_at`) VALUES
(302, 242, 1888, 'Candle light', 850, 1000, 0, NULL, NULL, 1, '2025-09-18 20:11:56', '2025-09-18 20:11:56'),
(303, 243, 1888, 'Candle light', 850, 1000, 0, NULL, NULL, 6, '2025-11-27 19:07:08', '2025-11-27 19:07:08'),
(304, 243, 1889, 'Flameless Candles Set of 6 Golden Scented Decorative Lights', 850, 1250, 0, NULL, NULL, 3, '2025-11-27 19:07:08', '2025-11-27 19:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'pending', '1', '2023-08-15 11:28:33', '2023-08-15 11:28:33'),
(2, 'Processing', 'processing', '1', '2023-08-15 11:31:22', '2023-08-15 11:31:22'),
(3, 'On The Way', 'on-the-way', '1', '2023-08-15 11:31:34', '2023-08-15 11:31:34'),
(4, 'On Hold', 'on-hold', '1', '2023-08-15 11:31:45', '2024-09-11 22:09:17'),
(5, 'In Courier', 'in-courier', '1', '2023-08-15 11:31:56', '2024-10-11 00:50:48'),
(6, 'Completed', 'completed', '1', '2023-08-15 11:32:06', '2023-08-21 05:46:06'),
(7, 'Cancelled', 'cancelled', '1', '2023-08-21 05:46:15', '2023-08-21 05:46:15'),
(8, 'Delete Order', 'delete-order', '1', '2025-03-13 11:03:31', '2025-03-13 11:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mdi1258@gmail.com', '$2y$10$Q7YYa.uMlgYlPX7E99amVOOnl9zBPtcR4D.DndB9jIe7VYMsGPv9a', '2025-02-10 17:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `trx_id` varchar(55) DEFAULT NULL,
  `sender_number` varchar(55) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL,
  `payment_status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `customer_id`, `amount`, `trx_id`, `sender_number`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(242, 242, 177, 1059, NULL, NULL, 'Cash On Delivery', 'pending', '2025-09-18 20:11:56', '2025-09-18 20:11:56'),
(243, 243, 178, 9949, NULL, NULL, 'Cash On Delivery', 'pending', '2025-11-27 19:07:08', '2025-11-27 19:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `app_key` varchar(155) DEFAULT NULL,
  `app_secret` varchar(155) DEFAULT NULL,
  `username` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `base_url` varchar(99) DEFAULT NULL,
  `success_url` varchar(155) DEFAULT NULL,
  `return_url` varchar(155) DEFAULT NULL,
  `prefix` varchar(25) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `type`, `app_key`, `app_secret`, `username`, `password`, `base_url`, `success_url`, `return_url`, `prefix`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bkash', 'w5CHBl2PasU0pWKAAoyz1ADGtc', 'hh9v0N1cmJcITiMNiFgLkp4NmYnKfLMTcsnyOfFf2d5eMLe56cMH', '01319911688', '^FI],6n?b08', 'https://tokenized.pay.bka.sh/v1.2.0-beta', NULL, NULL, NULL, 0, '2024-02-06 11:29:46', '2025-02-13 17:06:26'),
(2, 'shurjopay', '', '', 'sp_sandbox', 'pyyk97hu&6u6', 'https://sandbox.shurjopayment.com', 'https://suvroit.online/', 'https://suvroit.online', 'NOK', 0, '2024-02-06 11:29:46', '2024-09-14 03:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-01-11 06:31:32', '2023-01-11 06:31:32'),
(2, 'role-create', 'web', '2023-01-11 06:31:33', '2023-01-11 06:31:33'),
(3, 'role-edit', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(4, 'role-delete', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(5, 'product-list', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(6, 'product-create', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(7, 'product-edit', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(8, 'product-delete', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(9, 'permission-list', 'web', NULL, NULL),
(10, 'permission-create', 'web', NULL, NULL),
(11, 'setting-delete', 'web', '2023-01-21 10:50:15', '2023-01-21 10:50:15'),
(12, 'setting-edit', 'web', '2023-01-21 10:50:35', '2023-01-21 10:50:35'),
(13, 'setting-create', 'web', '2023-01-21 10:50:50', '2023-01-21 10:50:50'),
(14, 'setting-list', 'web', '2023-01-21 10:51:01', '2023-01-21 10:51:01'),
(15, 'social-list', 'web', '2023-01-22 08:33:54', '2023-01-22 08:33:54'),
(16, 'social-create', 'web', '2023-01-22 08:34:07', '2023-01-22 08:34:07'),
(17, 'social-edit', 'web', '2023-01-22 08:34:17', '2023-01-22 08:34:17'),
(18, 'social-delete', 'web', '2023-01-22 08:34:25', '2023-01-22 08:34:25'),
(19, 'contact-list', 'web', '2023-01-22 10:25:01', '2023-01-22 10:25:01'),
(20, 'contact-create', 'web', '2023-01-22 10:25:16', '2023-01-22 10:28:19'),
(21, 'permission-edit', 'web', '2023-01-22 10:26:28', '2023-01-22 10:26:28'),
(22, 'permission-delete', 'web', '2023-01-22 10:26:39', '2023-01-22 10:26:39'),
(23, 'contact-edit', 'web', '2023-01-22 10:28:34', '2023-01-22 10:28:34'),
(24, 'contact-delete', 'web', '2023-01-22 10:28:45', '2023-01-22 10:28:45'),
(25, 'category-list', 'web', '2023-02-08 10:26:58', '2023-02-08 10:26:58'),
(26, 'category-create', 'web', '2023-02-08 10:27:19', '2023-02-08 10:27:19'),
(27, 'category-edit', 'web', '2023-02-08 10:27:28', '2023-02-08 10:27:28'),
(28, 'category-delete', 'web', '2023-02-08 10:27:38', '2023-02-08 10:27:38'),
(29, 'attribute-list', 'web', '2023-02-09 02:54:47', '2023-02-09 02:54:47'),
(30, 'attribute-create', 'web', '2023-02-09 02:55:02', '2023-02-09 02:55:02'),
(31, 'attribute-edit', 'web', '2023-02-09 02:55:14', '2023-02-09 02:55:14'),
(32, 'attribute-delete', 'web', '2023-02-09 02:55:23', '2023-02-09 02:55:23'),
(33, 'banner-category-list', 'web', '2023-02-21 03:00:08', '2023-02-21 03:00:08'),
(34, 'banner-category-create', 'web', '2023-02-21 03:00:34', '2023-02-21 03:00:34'),
(35, 'banner-category-edit', 'web', '2023-02-21 03:00:45', '2023-02-21 03:00:45'),
(36, 'banner-category-delete', 'web', '2023-02-21 03:00:53', '2023-02-21 03:00:53'),
(37, 'banner-list', 'web', '2023-02-21 03:51:27', '2023-02-21 03:51:27'),
(38, 'banner-create', 'web', '2023-02-21 03:51:50', '2023-02-21 03:51:50'),
(39, 'banner-edit', 'web', '2023-02-21 03:52:18', '2023-02-21 03:52:18'),
(40, 'banner-delete', 'web', '2023-02-21 03:52:32', '2023-02-21 03:52:32'),
(41, 'page-list', 'web', '2023-02-24 20:42:52', '2023-02-24 20:42:52'),
(42, 'page-create', 'web', '2023-02-24 20:43:01', '2023-02-24 20:43:01'),
(43, 'page-edit', 'web', '2023-02-24 20:43:08', '2023-02-24 20:43:08'),
(44, 'page-delete', 'web', '2023-02-24 20:43:15', '2023-02-24 20:43:15'),
(49, 'shipping-list', 'web', '2023-08-04 08:46:28', '2023-08-04 08:46:28'),
(50, 'shipping-create', 'web', '2023-08-04 08:47:09', '2023-08-04 08:47:09'),
(51, 'shipping-edit', 'web', '2023-08-04 08:47:23', '2023-08-04 08:47:23'),
(52, 'shipping-delete', 'web', '2023-08-04 08:47:34', '2023-08-04 08:47:34'),
(53, 'color-list', 'web', '2023-08-15 07:48:52', '2023-08-15 07:48:52'),
(54, 'color-create', 'web', '2023-08-15 07:49:01', '2023-08-15 07:49:01'),
(55, 'color-edit', 'web', '2023-08-15 07:49:12', '2023-08-15 07:49:12'),
(56, 'color-delete', 'web', '2023-08-15 07:49:20', '2023-08-15 07:49:20'),
(69, 'subcategory-list', 'web', '2024-01-31 10:49:48', '2024-01-31 10:49:48'),
(70, 'subcategory-create', 'web', '2024-01-31 10:49:56', '2024-01-31 10:49:56'),
(71, 'subcategory-edit', 'web', '2024-01-31 10:50:04', '2024-01-31 10:50:04'),
(72, 'subcategory-delete', 'web', '2024-01-31 10:50:13', '2024-01-31 10:50:13'),
(73, 'childcategory-list', 'web', '2024-01-31 10:51:33', '2024-01-31 10:51:33'),
(74, 'childcategory-create', 'web', '2024-01-31 10:51:41', '2024-01-31 10:51:41'),
(75, 'childcategory-edit', 'web', '2024-01-31 10:51:50', '2024-01-31 10:51:50'),
(76, 'childcategory-delete', 'web', '2024-01-31 10:52:00', '2024-01-31 10:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcolors`
--

CREATE TABLE `productcolors` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcolors`
--

INSERT INTO `productcolors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 35, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 62, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(3, 35, 44, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(4, 28, 62, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(5, 2, 65, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(6, 131, 32, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(7, 131, 36, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(8, 131, 39, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(9, 131, 40, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(10, 132, 35, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(11, 132, 52, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(12, 132, 62, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(13, 133, 62, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(14, 134, 35, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(15, 134, 52, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(16, 134, 63, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(17, 137, 35, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(18, 137, 54, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(19, 138, 35, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(20, 138, 36, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(21, 138, 39, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(22, 139, 32, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(23, 139, 36, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(24, 139, 39, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(25, 140, 35, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(26, 140, 39, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(27, 141, 32, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(28, 141, 35, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(29, 157, 32, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(30, 157, 35, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(31, 163, 40, '2024-09-14 18:30:28', '2024-09-14 18:30:28'),
(32, 163, 44, '2024-09-14 18:30:28', '2024-09-14 18:30:28'),
(33, 163, 59, '2024-09-14 18:30:28', '2024-09-14 18:30:28'),
(34, 166, 36, '2024-09-14 18:45:18', '2024-09-14 18:45:18'),
(35, 166, 40, '2024-09-14 18:45:18', '2024-09-14 18:45:18'),
(36, 166, 44, '2024-09-14 18:45:18', '2024-09-14 18:45:18'),
(37, 166, 54, '2024-09-14 18:45:18', '2024-09-14 18:45:18'),
(38, 166, 73, '2024-09-14 18:45:18', '2024-09-14 18:45:18'),
(39, 168, 36, '2024-09-14 18:48:46', '2024-09-14 18:48:46'),
(40, 168, 44, '2024-09-14 18:48:46', '2024-09-14 18:48:46'),
(41, 168, 55, '2024-09-14 18:48:46', '2024-09-14 18:48:46'),
(42, 177, 35, '2024-09-15 13:21:33', '2024-09-15 13:21:33'),
(44, 177, 62, '2024-09-15 13:21:33', '2024-09-15 13:21:33'),
(45, 177, 63, '2024-09-15 13:21:33', '2024-09-15 13:21:33'),
(48, 178, 59, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(49, 178, 60, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(53, 179, 62, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(54, 180, 35, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(56, 180, 53, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(58, 182, 35, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(59, 182, 41, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(60, 182, 49, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(61, 182, 59, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(63, 182, 63, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(64, 186, 35, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(65, 186, 40, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(72, 186, 62, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(73, 187, 35, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(77, 187, 63, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(78, 189, 62, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(79, 190, 70, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(80, 191, 44, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(81, 192, 42, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(82, 193, 44, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(83, 199, 42, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(84, 211, 62, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(85, 212, 35, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(86, 213, 59, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(87, 214, 70, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(88, 215, 52, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(89, 220, 42, '2024-09-15 16:08:10', '2024-09-15 16:08:10'),
(90, 232, 59, '2024-09-15 16:20:00', '2024-09-15 16:20:00'),
(91, 241, 59, '2024-09-15 16:26:53', '2024-09-15 16:26:53'),
(92, 252, 44, '2024-09-15 16:39:06', '2024-09-15 16:39:06'),
(93, 252, 52, '2024-09-15 16:39:06', '2024-09-15 16:39:06'),
(94, 255, 36, '2024-09-15 16:50:28', '2024-09-15 16:50:28'),
(95, 255, 59, '2024-09-15 16:50:28', '2024-09-15 16:50:28'),
(96, 256, 36, '2024-09-15 16:52:50', '2024-09-15 16:52:50'),
(97, 256, 44, '2024-09-15 16:52:50', '2024-09-15 16:52:50'),
(98, 278, 35, '2024-09-16 17:33:37', '2024-09-16 17:33:37'),
(99, 284, 36, '2024-09-16 17:55:07', '2024-09-16 17:55:07'),
(100, 284, 44, '2024-09-16 17:55:07', '2024-09-16 17:55:07'),
(101, 306, 35, '2024-09-20 05:34:22', '2024-09-20 05:34:22'),
(103, 306, 44, '2024-09-20 05:34:22', '2024-09-20 05:34:22'),
(104, 306, 59, '2024-09-20 05:34:22', '2024-09-20 05:34:22'),
(106, 185, 35, '2024-09-22 04:36:04', '2024-09-22 04:36:04'),
(108, 185, 59, '2024-09-22 04:36:04', '2024-09-22 04:36:04'),
(109, 185, 62, '2024-09-22 04:36:04', '2024-09-22 04:36:04'),
(110, 185, 63, '2024-09-22 04:36:04', '2024-09-22 04:36:04'),
(114, 181, 35, '2024-09-22 04:38:31', '2024-09-22 04:38:31'),
(115, 181, 55, '2024-09-22 04:38:31', '2024-09-22 04:38:31'),
(116, 181, 60, '2024-09-22 04:38:31', '2024-09-22 04:38:31'),
(117, 180, 49, '2024-09-22 04:39:22', '2024-09-22 04:39:22'),
(118, 178, 49, '2024-09-22 04:42:00', '2024-09-22 04:42:00'),
(119, 306, 50, '2024-09-23 04:37:02', '2024-09-23 04:37:02'),
(120, 306, 74, '2024-09-23 04:37:02', '2024-09-23 04:37:02'),
(123, 187, 42, '2024-09-27 13:59:05', '2024-09-27 13:59:05'),
(124, 187, 59, '2024-09-27 13:59:05', '2024-09-27 13:59:05'),
(125, 187, 77, '2024-09-27 13:59:05', '2024-09-27 13:59:05'),
(126, 186, 51, '2024-09-27 14:00:06', '2024-09-27 14:00:06'),
(127, 186, 59, '2024-09-27 14:00:06', '2024-09-27 14:00:06'),
(128, 186, 63, '2024-09-27 14:00:06', '2024-09-27 14:00:06'),
(129, 186, 75, '2024-09-27 14:00:06', '2024-09-27 14:00:06'),
(130, 186, 76, '2024-09-27 14:00:06', '2024-09-27 14:00:06'),
(131, 186, 81, '2024-09-27 14:00:06', '2024-09-27 14:00:06'),
(132, 184, 42, '2024-09-27 14:00:46', '2024-09-27 14:00:46'),
(133, 184, 50, '2024-09-27 14:00:46', '2024-09-27 14:00:46'),
(134, 184, 55, '2024-09-27 14:00:46', '2024-09-27 14:00:46'),
(135, 184, 80, '2024-09-27 14:00:46', '2024-09-27 14:00:46'),
(136, 185, 81, '2024-09-27 14:01:14', '2024-09-27 14:01:14'),
(137, 183, 35, '2024-09-27 14:01:33', '2024-09-27 14:01:33'),
(138, 183, 59, '2024-09-27 14:01:33', '2024-09-27 14:01:33'),
(139, 183, 62, '2024-09-27 14:01:33', '2024-09-27 14:01:33'),
(140, 181, 52, '2024-09-27 14:02:44', '2024-09-27 14:02:44'),
(141, 181, 59, '2024-09-27 14:02:44', '2024-09-27 14:02:44'),
(142, 180, 79, '2024-09-27 14:03:25', '2024-09-27 14:03:25'),
(143, 179, 51, '2024-09-27 14:04:10', '2024-09-27 14:04:10'),
(144, 179, 56, '2024-09-27 14:04:10', '2024-09-27 14:04:10'),
(145, 179, 60, '2024-09-27 14:04:10', '2024-09-27 14:04:10'),
(146, 177, 76, '2024-09-27 14:04:50', '2024-09-27 14:04:50'),
(147, 318, 62, '2024-09-29 17:41:15', '2024-09-29 17:41:15'),
(148, 322, 32, '2024-09-29 17:50:21', '2024-09-29 17:50:21'),
(149, 322, 42, '2024-09-29 17:50:21', '2024-09-29 17:50:21'),
(150, 322, 50, '2024-09-29 17:50:21', '2024-09-29 17:50:21'),
(151, 322, 58, '2024-09-29 17:50:21', '2024-09-29 17:50:21'),
(152, 335, 51, '2024-10-01 18:04:16', '2024-10-01 18:04:16'),
(153, 335, 59, '2024-10-01 18:04:16', '2024-10-01 18:04:16'),
(154, 367, 41, '2024-10-03 18:27:16', '2024-10-03 18:27:16'),
(155, 367, 60, '2024-10-03 18:27:16', '2024-10-03 18:27:16'),
(156, 367, 62, '2024-10-03 18:27:16', '2024-10-03 18:27:16'),
(157, 368, 44, '2024-10-04 09:47:37', '2024-10-04 09:47:37'),
(158, 368, 52, '2024-10-04 09:47:37', '2024-10-04 09:47:37'),
(159, 369, 35, '2024-10-04 09:51:30', '2024-10-04 09:51:30'),
(160, 369, 51, '2024-10-04 09:51:30', '2024-10-04 09:51:30'),
(161, 371, 35, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(162, 371, 59, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(163, 371, 68, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(164, 371, 82, '2024-10-08 15:21:43', '2024-10-08 15:21:43'),
(165, 371, 83, '2024-10-08 15:21:43', '2024-10-08 15:21:43'),
(166, 372, 35, '2024-10-10 23:29:23', '2024-10-10 23:29:23'),
(167, 372, 36, '2024-10-10 23:29:23', '2024-10-10 23:29:23'),
(168, 372, 39, '2024-10-10 23:29:23', '2024-10-10 23:29:23'),
(169, 373, 32, '2024-10-10 23:30:58', '2024-10-10 23:30:58'),
(170, 373, 35, '2024-10-10 23:30:58', '2024-10-10 23:30:58'),
(171, 377, 32, '2024-10-10 23:59:48', '2024-10-10 23:59:48'),
(172, 377, 35, '2024-10-10 23:59:48', '2024-10-10 23:59:48'),
(173, 390, 35, '2024-10-22 12:30:36', '2024-10-22 12:30:36'),
(174, 390, 39, '2024-10-22 12:30:36', '2024-10-22 12:30:36'),
(175, 390, 40, '2024-10-22 12:30:36', '2024-10-22 12:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(7316, 'public/uploads/product/1757476583-whatsapp-image-2025-08-24-at-1.26.08-am-(1).jpeg', 1888, '2025-09-10 13:56:23', '2025-09-10 13:56:23'),
(7317, 'public/uploads/product/1757669303-candle.jpg', 1889, '2025-09-12 19:28:23', '2025-09-12 19:28:23'),
(7318, 'public/uploads/product/1757669378-whatsapp-image-2025-08-24-at-1.26.08-am-(1).jpeg', 1890, '2025-09-12 19:29:38', '2025-09-12 19:29:38'),
(7319, 'public/uploads/product/1757880756-tulip-planter-pot.jpg', 1886, '2025-09-15 06:12:36', '2025-09-15 06:12:36'),
(7320, 'public/uploads/product/1761410306-generated-image-september-17,-2025---1_36am-(1).png', 1891, '2025-10-26 02:38:26', '2025-10-26 02:38:26'),
(7321, 'public/uploads/product/1768757142-pet-house-1.png', 1892, '2026-01-19 04:25:42', '2026-01-19 04:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_alt_text` varchar(255) DEFAULT NULL,
  `sku` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `childcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `old_price` decimal(10,2) DEFAULT NULL,
  `new_price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `pro_unit` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `topsale` tinyint(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) NOT NULL,
  `feature_product` tinyint(1) NOT NULL DEFAULT 0,
  `product_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `specification` text DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `campaign_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `img_alt_text`, `sku`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `purchase_price`, `old_price`, `new_price`, `stock`, `pro_unit`, `description`, `status`, `topsale`, `slug`, `feature_product`, `product_code`, `created_at`, `updated_at`, `tags`, `specification`, `is_deleted`, `campaign_id`) VALUES
(1886, 'Tulip planter', 'Tulip planter', 'SM01', 43, 0, NULL, NULL, 250.00, 300.00, 250.00, 10, NULL, 'Premium planter pot with natural marble pattern&nbsp;', 1, 1, 'Flameless-Candles-Set', 0, '', NULL, '2025-10-26 01:24:06', NULL, '<p>Premium planter pot with natural marble pattern&nbsp;</p>', 0, 0),
(1888, 'Candle light', 'Candle light', 'EFDGFG', 42, 0, NULL, NULL, 850.00, 1250.00, 1000.00, 10, NULL, '<p>Candle light</p>', 1, 1, 'candle-light-1887', 0, 'P1887', '2025-09-10 13:56:23', '2025-09-12 19:29:48', 'candle,light', '<p>Candle light</p>', 0, NULL),
(1889, 'Flameless Candles Set of 6 Golden Scented Decorative Lights', 'Flameless Candles Set of 6 Golden Scented Decorative Lights', 'CD03', 42, 0, NULL, NULL, 850.00, 1560.00, 1250.00, 10, NULL, '<p>Flameless Candles Set of 6 Golden Scented Decorative Lights</p>', 1, 1, 'flameless-candles-set-of-6-golden-scented-decorative-lights-1889', 0, 'P1889', '2025-09-12 19:28:23', '2025-09-12 19:28:23', 'candle,light', '<p>Flameless Candles Set of 6 Golden Scented Decorative Lights</p>', 0, NULL),
(1890, 'Flameless Candles Set of 6 Golden Scented Decorative Lights', 'Flameless Candles Set of 6 Golden Scented Decorative Lights', 'CD003', 42, 0, NULL, NULL, 850.00, 1250.00, 1000.00, 10, NULL, '<p>Flameless Candles Set of 6 Golden Scented Decorative Lights</p>', 1, 1, 'flameless-candles-set-of-6-golden-scented-decorative-lights-1890', 0, 'P1890', '2025-09-12 19:29:38', '2025-09-12 19:29:38', 'candle,light', '<p>Flameless Candles Set of 6 Golden Scented Decorative Lights</p>', 0, NULL),
(1891, 'Reading room', 'Reading room', 'SMI01', 46, 0, NULL, NULL, 300.00, 400.00, 300.00, 2, NULL, '<p>wooden table with modern minimal design.</p>', 1, 0, 'reading-room-1891', 0, 'P1891', '2025-10-26 02:38:26', '2026-01-19 03:50:07', 'furnitures interior', '<p>-wooden table </p><p>-minimal design.</p>', 0, NULL),
(1892, 'minimal pet house', 'minimal pet house', 'PET HOUSE 1', 47, 0, NULL, NULL, 10000.00, NULL, 9500.00, 0, NULL, 'unique pet house', 1, 0, 'minimal-pet-house-1892', 0, 'P1892', '2026-01-19 04:25:42', '2026-01-19 04:25:42', NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productsizes`
--

CREATE TABLE `productsizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productsizes`
--

INSERT INTO `productsizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 13, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(3, 1, 14, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(4, 1, 15, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(5, 35, 7, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(6, 35, 8, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(7, 35, 9, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(8, 28, 6, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(9, 28, 7, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(10, 28, 8, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(11, 28, 9, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(12, 2, 6, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(13, 2, 7, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(14, 2, 8, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(15, 131, 6, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(16, 131, 7, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(17, 131, 8, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(18, 131, 9, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(19, 131, 10, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(20, 133, 6, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(21, 133, 7, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(22, 133, 8, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(23, 133, 9, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(24, 133, 10, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(25, 139, 6, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(26, 139, 7, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(27, 139, 9, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(28, 139, 10, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(29, 140, 6, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(30, 140, 7, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(31, 140, 8, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(32, 140, 9, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(33, 141, 6, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(34, 141, 7, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(35, 141, 8, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(36, 141, 9, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(37, 152, 6, '2024-09-11 02:15:30', '2024-09-11 02:15:30'),
(38, 157, 7, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(39, 157, 9, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(40, 177, 15, '2024-09-15 13:21:33', '2024-09-15 13:21:33'),
(41, 177, 16, '2024-09-15 13:22:27', '2024-09-15 13:22:27'),
(42, 177, 17, '2024-09-15 13:22:27', '2024-09-15 13:22:27'),
(43, 177, 18, '2024-09-15 13:22:27', '2024-09-15 13:22:27'),
(44, 177, 19, '2024-09-15 13:22:27', '2024-09-15 13:22:27'),
(45, 177, 20, '2024-09-15 13:22:27', '2024-09-15 13:22:27'),
(46, 178, 15, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(47, 178, 16, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(48, 178, 17, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(49, 178, 18, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(50, 178, 19, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(51, 178, 20, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(52, 179, 15, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(53, 179, 16, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(54, 179, 17, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(55, 179, 18, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(56, 179, 19, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(57, 179, 20, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(58, 180, 14, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(59, 180, 15, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(60, 180, 16, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(61, 180, 17, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(62, 180, 18, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(63, 180, 19, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(64, 180, 20, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(65, 181, 14, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(66, 181, 15, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(67, 181, 16, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(68, 181, 17, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(69, 181, 18, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(70, 181, 19, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(71, 181, 20, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(72, 182, 14, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(73, 182, 15, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(74, 182, 16, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(75, 182, 17, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(76, 182, 18, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(77, 182, 19, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(78, 182, 20, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(79, 183, 14, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(80, 183, 15, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(81, 183, 16, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(82, 183, 17, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(83, 183, 18, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(84, 183, 19, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(85, 183, 20, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(86, 184, 14, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(87, 184, 15, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(88, 184, 16, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(89, 184, 17, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(90, 184, 18, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(91, 184, 19, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(92, 184, 20, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(93, 185, 13, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(94, 185, 14, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(95, 185, 15, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(96, 185, 16, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(97, 185, 17, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(98, 185, 18, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(99, 185, 19, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(100, 185, 20, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(101, 186, 14, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(102, 186, 15, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(103, 186, 16, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(104, 186, 17, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(105, 186, 18, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(106, 186, 19, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(107, 186, 20, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(108, 187, 14, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(109, 187, 15, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(110, 187, 16, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(111, 187, 17, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(112, 187, 18, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(113, 187, 19, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(114, 187, 20, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(115, 188, 12, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(116, 188, 13, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(117, 188, 14, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(118, 188, 15, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(119, 188, 16, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(120, 188, 17, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(121, 188, 18, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(122, 188, 19, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(123, 188, 20, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(124, 189, 12, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(125, 189, 13, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(126, 189, 14, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(127, 189, 15, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(128, 189, 16, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(129, 189, 17, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(130, 189, 18, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(131, 189, 19, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(132, 189, 20, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(133, 190, 12, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(134, 190, 13, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(135, 190, 14, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(136, 190, 15, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(137, 190, 16, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(138, 190, 17, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(139, 190, 18, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(140, 190, 19, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(141, 190, 20, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(142, 191, 12, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(143, 191, 13, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(144, 191, 14, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(145, 191, 15, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(146, 191, 16, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(147, 191, 17, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(148, 191, 18, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(149, 191, 19, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(150, 191, 20, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(151, 192, 12, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(152, 192, 13, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(153, 192, 14, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(154, 192, 15, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(155, 192, 16, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(156, 192, 17, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(157, 192, 18, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(158, 192, 19, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(159, 192, 20, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(160, 193, 12, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(161, 193, 13, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(162, 193, 14, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(163, 193, 15, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(164, 193, 16, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(165, 193, 17, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(166, 193, 18, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(167, 193, 19, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(168, 193, 20, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(169, 194, 12, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(170, 194, 13, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(171, 194, 14, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(172, 194, 15, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(173, 194, 16, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(174, 194, 17, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(175, 194, 18, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(176, 194, 19, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(177, 194, 20, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(178, 195, 12, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(179, 195, 13, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(180, 195, 14, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(181, 195, 15, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(182, 195, 16, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(183, 195, 17, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(184, 195, 18, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(185, 195, 19, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(186, 195, 20, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(187, 196, 12, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(188, 196, 13, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(189, 196, 14, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(190, 196, 15, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(191, 196, 16, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(192, 196, 17, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(193, 196, 18, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(194, 196, 19, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(195, 196, 20, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(196, 197, 12, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(197, 197, 13, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(198, 197, 14, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(199, 197, 15, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(200, 197, 16, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(201, 197, 17, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(202, 197, 18, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(203, 197, 19, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(204, 197, 20, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(205, 198, 12, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(206, 198, 13, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(207, 198, 14, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(208, 198, 15, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(209, 198, 16, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(210, 198, 17, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(211, 198, 18, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(212, 198, 19, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(213, 198, 20, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(214, 199, 12, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(215, 199, 13, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(216, 199, 14, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(217, 199, 15, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(218, 199, 16, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(219, 199, 17, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(220, 199, 18, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(221, 199, 19, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(222, 199, 20, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(223, 200, 12, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(224, 200, 13, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(225, 200, 14, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(226, 200, 15, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(227, 200, 16, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(228, 200, 17, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(229, 200, 18, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(230, 200, 19, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(231, 200, 20, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(232, 201, 12, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(233, 201, 13, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(234, 201, 14, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(235, 201, 15, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(236, 201, 16, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(237, 201, 17, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(238, 201, 18, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(239, 201, 19, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(240, 201, 20, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(241, 202, 12, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(242, 202, 13, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(243, 202, 14, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(244, 202, 15, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(245, 202, 16, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(246, 202, 17, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(247, 202, 18, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(248, 202, 19, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(249, 202, 20, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(250, 203, 12, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(251, 203, 13, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(252, 203, 14, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(253, 203, 15, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(254, 203, 16, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(255, 203, 17, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(256, 203, 18, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(257, 203, 19, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(258, 203, 20, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(259, 204, 12, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(260, 204, 13, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(261, 204, 14, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(262, 204, 15, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(263, 204, 16, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(264, 204, 17, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(265, 204, 18, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(266, 204, 19, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(267, 204, 20, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(268, 205, 12, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(269, 205, 13, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(270, 205, 14, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(271, 205, 15, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(272, 205, 16, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(273, 205, 17, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(274, 205, 18, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(275, 205, 19, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(276, 205, 20, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(277, 206, 12, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(278, 206, 13, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(279, 206, 14, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(280, 206, 15, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(281, 206, 16, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(282, 206, 17, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(283, 206, 18, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(284, 206, 19, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(285, 206, 20, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(286, 207, 12, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(287, 207, 13, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(288, 207, 14, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(289, 207, 15, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(290, 207, 16, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(291, 207, 17, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(292, 207, 18, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(293, 207, 19, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(294, 207, 20, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(295, 208, 12, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(296, 208, 13, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(297, 208, 14, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(298, 208, 15, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(299, 208, 16, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(300, 208, 17, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(301, 208, 18, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(302, 208, 19, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(303, 208, 20, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(304, 209, 12, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(305, 209, 13, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(306, 209, 14, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(307, 209, 15, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(308, 209, 16, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(309, 209, 17, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(310, 209, 18, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(311, 209, 19, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(312, 209, 20, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(313, 210, 12, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(314, 210, 13, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(315, 210, 14, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(316, 210, 15, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(317, 210, 16, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(318, 210, 17, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(319, 210, 18, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(320, 210, 19, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(321, 210, 20, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(322, 211, 12, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(323, 211, 13, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(324, 211, 14, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(325, 211, 15, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(326, 211, 16, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(327, 211, 17, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(328, 211, 18, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(329, 211, 19, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(330, 211, 20, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(331, 212, 12, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(332, 212, 13, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(333, 212, 14, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(334, 212, 15, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(335, 212, 16, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(336, 212, 17, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(337, 212, 18, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(338, 212, 19, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(339, 212, 20, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(340, 213, 12, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(341, 213, 13, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(342, 213, 14, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(343, 213, 15, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(344, 213, 16, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(345, 213, 17, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(346, 213, 18, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(347, 213, 19, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(348, 213, 20, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(349, 214, 12, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(350, 214, 13, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(351, 214, 14, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(352, 214, 15, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(353, 214, 16, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(354, 214, 17, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(355, 214, 18, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(356, 214, 19, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(357, 214, 20, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(358, 215, 12, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(359, 215, 13, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(360, 215, 14, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(361, 215, 15, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(362, 215, 16, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(363, 215, 17, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(364, 215, 18, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(365, 215, 19, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(366, 215, 20, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(367, 216, 12, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(368, 216, 13, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(369, 216, 14, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(370, 216, 15, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(371, 216, 16, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(372, 216, 17, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(373, 216, 18, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(374, 216, 19, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(375, 216, 20, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(376, 217, 12, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(377, 217, 13, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(378, 217, 14, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(379, 217, 15, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(380, 217, 16, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(381, 217, 17, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(382, 217, 18, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(383, 217, 19, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(384, 217, 20, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(385, 218, 12, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(386, 218, 13, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(387, 218, 14, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(388, 218, 15, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(389, 218, 16, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(390, 218, 17, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(391, 218, 18, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(392, 218, 19, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(393, 218, 20, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(394, 219, 21, '2024-09-15 16:07:34', '2024-09-15 16:07:34'),
(395, 220, 21, '2024-09-15 16:08:10', '2024-09-15 16:08:10'),
(396, 221, 21, '2024-09-15 16:08:47', '2024-09-15 16:08:47'),
(397, 222, 21, '2024-09-15 16:09:21', '2024-09-15 16:09:21'),
(398, 223, 21, '2024-09-15 16:09:52', '2024-09-15 16:09:52'),
(399, 224, 21, '2024-09-15 16:10:27', '2024-09-15 16:10:27'),
(400, 225, 21, '2024-09-15 16:11:14', '2024-09-15 16:11:14'),
(401, 226, 21, '2024-09-15 16:11:50', '2024-09-15 16:11:50'),
(402, 227, 21, '2024-09-15 16:12:23', '2024-09-15 16:12:23'),
(403, 228, 21, '2024-09-15 16:17:10', '2024-09-15 16:17:10'),
(404, 229, 21, '2024-09-15 16:18:13', '2024-09-15 16:18:13'),
(405, 230, 21, '2024-09-15 16:18:55', '2024-09-15 16:18:55'),
(406, 231, 21, '2024-09-15 16:19:25', '2024-09-15 16:19:25'),
(407, 232, 21, '2024-09-15 16:20:00', '2024-09-15 16:20:00'),
(408, 233, 21, '2024-09-15 16:20:34', '2024-09-15 16:20:34'),
(409, 234, 21, '2024-09-15 16:21:04', '2024-09-15 16:21:04'),
(410, 235, 21, '2024-09-15 16:21:38', '2024-09-15 16:21:38'),
(411, 236, 21, '2024-09-15 16:22:11', '2024-09-15 16:22:11'),
(412, 237, 21, '2024-09-15 16:22:39', '2024-09-15 16:22:39'),
(413, 238, 21, '2024-09-15 16:23:14', '2024-09-15 16:23:14'),
(414, 239, 21, '2024-09-15 16:25:03', '2024-09-15 16:25:03'),
(415, 240, 21, '2024-09-15 16:26:12', '2024-09-15 16:26:12'),
(416, 241, 21, '2024-09-15 16:26:53', '2024-09-15 16:26:53'),
(417, 242, 21, '2024-09-15 16:27:25', '2024-09-15 16:27:25'),
(418, 243, 21, '2024-09-15 16:27:57', '2024-09-15 16:27:57'),
(419, 244, 21, '2024-09-15 16:28:32', '2024-09-15 16:28:32'),
(420, 245, 21, '2024-09-15 16:29:06', '2024-09-15 16:29:06'),
(421, 246, 21, '2024-09-15 16:29:42', '2024-09-15 16:29:42'),
(422, 247, 21, '2024-09-15 16:30:28', '2024-09-15 16:30:28'),
(423, 248, 21, '2024-09-15 16:30:59', '2024-09-15 16:30:59'),
(424, 249, 21, '2024-09-15 16:31:34', '2024-09-15 16:31:34'),
(425, 250, 21, '2024-09-15 16:32:03', '2024-09-15 16:32:03'),
(426, 251, 21, '2024-09-15 16:32:37', '2024-09-15 16:32:37'),
(427, 371, 6, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(428, 371, 7, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(429, 371, 8, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(430, 371, 9, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(431, 371, 10, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(432, 390, 6, '2024-10-22 12:30:36', '2024-10-22 12:30:36'),
(433, 390, 7, '2024-10-22 12:30:36', '2024-10-22 12:30:36'),
(434, 390, 8, '2024-10-22 12:30:36', '2024-10-22 12:30:36'),
(435, 390, 9, '2024-10-22 12:30:36', '2024-10-22 12:30:36'),
(436, 391, 6, '2024-11-13 15:01:06', '2024-11-13 15:01:06'),
(437, 391, 7, '2024-11-13 15:01:06', '2024-11-13 15:01:06'),
(438, 391, 8, '2024-11-13 15:01:06', '2024-11-13 15:01:06'),
(439, 391, 9, '2024-11-13 15:01:06', '2024-11-13 15:01:06'),
(440, 391, 10, '2024-11-13 15:01:06', '2024-11-13 15:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `ratting` varchar(4) NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `ratting`, `review`, `product_id`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Omor Faruk', 'N / A', '5', 'Nice product,,,', 1, 18, 'active', '2024-02-05 08:49:50', '2024-02-19 07:02:29'),
(2, 'Samiul Alom', 'N / A', '5', 'nice product', 123, 11, 'pending', '2024-02-10 08:00:20', '2024-02-10 08:00:20'),
(3, 'Samiul Alom', 'N / A', '5', 'nice product', 99, 11, 'pending', '2024-02-10 09:33:38', '2024-02-10 09:33:38'),
(4, 'Ibrahim Hossain', 'N / A', '4', 'excellent and authentic product, thanks', 1, 142, 'pending', '2025-03-13 10:29:08', '2025-03-13 10:29:08'),
(5, 'Test Account', 'N / A', '5', 'test review', 465, 173, 'pending', '2025-07-01 10:41:57', '2025-07-01 10:41:57'),
(6, 'Test Account', 'N / A', '5', 'test', 1741, 173, 'pending', '2025-07-01 10:49:09', '2025-07-01 10:49:09'),
(7, 'user', 'N / A', '5', 'good', 1171, 174, 'pending', '2025-09-04 05:59:24', '2025-09-04 05:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-01-11 06:33:09', '2023-01-11 06:33:09'),
(3, 'Editor', 'web', '2023-01-19 06:41:33', '2023-01-19 06:41:33'),
(4, 'Salesman', 'web', '2023-01-19 06:42:28', '2023-01-19 06:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(7, 3),
(3, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `area` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `customer_id`, `name`, `phone`, `address`, `area`, `created_at`, `updated_at`) VALUES
(242, 242, 177, 'Sirajul Islam', '01333105717', 'Dhaka', '✅ ঢাকা মেট্রো (স্টিডফাস্ট কুরিয়ার - হোম ডেলিভারি): মাত্র ৫৯ টাকা 🚛 (সময়: ১-২ দিন)', '2025-09-18 20:11:56', '2025-09-18 20:11:56'),
(243, 243, 178, 'Mr. Hasan molla', '01326598470', 'Dhaka, mirpur 14', '✅ সারা বাংলাদেশ (এস.এ পরিবহন - মিনিমাম চার্জ): মাত্র ১৯৯ টাকা 🚛 (সময়: ১-২ দিন)', '2025-11-27 19:07:08', '2025-11-27 19:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `name`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, '✅ ঢাকা মেট্রো (স্টিডফাস্ট কুরিয়ার - হোম ডেলিভারি): মাত্র ৫৯ টাকা 🚛 (সময়: ১-২ দিন)', 59, '1', '2023-08-04 10:34:54', '2025-03-19 22:57:27'),
(2, '✅ ঢাকা সাব-এলাকা (স্টিডফাস্ট কুরিয়ার - হোম ডেলিভারি): মাত্র ৯৯ টাকা 🚛 (সময়: ২-৩ দিন)', 99, '1', '2023-08-04 10:35:57', '2025-03-19 22:57:11'),
(3, '✅ ঢাকার বাইরে (স্টিডফাস্ট কুরিয়ার - হোম ডেলিভারি): মাত্র ১১৯ টাকা 🚛 (সময়: ২-৩ দিন)', 119, '1', '2024-09-20 13:24:55', '2025-03-19 22:48:26'),
(4, '✅ ঢাকার বাইরে (সুন্দরবন কুরিয়ার - জেলা পর্যায়ে): মাত্র ১১৯ টাকা 🚛 (সময়: ১-২ দিন)', 119, '1', '2025-03-08 17:39:49', '2025-03-19 22:49:14'),
(5, '✅ ঢাকার বাইরে (সুন্দরবন কুরিয়ার - উপজেলা পর্যায়ে): মাত্র ১২৯ টাকা 🚛 (সময়: ২-৩ দিন)', 129, '1', '2025-03-08 17:42:31', '2025-03-19 22:49:36'),
(6, '✅ সারা বাংলাদেশ (এস.এ পরিবহন - মিনিমাম চার্জ): মাত্র ১৯৯ টাকা 🚛 (সময়: ১-২ দিন)', 199, '1', '2025-03-13 03:52:27', '2025-03-19 22:49:58'),
(9, '🚚 ৩০০০ টাকার অর্ডারে সারা বাংলাদেশ ডেলিভারি একদম ফ্রি!', 0, '1', '2025-03-19 22:52:09', '2025-03-19 22:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sizeName` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `sizeName`, `status`, `created_at`, `updated_at`) VALUES
(6, 'S', '1', '2024-02-05 09:38:42', '2024-02-05 09:38:42'),
(7, 'M', '1', '2024-02-05 09:38:46', '2024-02-05 09:38:46'),
(8, 'L', '1', '2024-02-05 09:38:51', '2024-02-05 09:38:51'),
(9, 'XL', '1', '2024-02-05 09:38:57', '2024-02-05 09:38:57'),
(10, 'XXL', '1', '2024-02-05 09:39:03', '2024-02-05 09:39:03'),
(11, '25', '1', '2024-02-05 09:39:19', '2024-02-05 09:39:19'),
(12, '28', '1', '2024-02-05 09:39:25', '2024-02-05 09:39:25'),
(13, '30', '1', '2024-02-05 09:39:30', '2024-02-05 09:39:30'),
(14, '32', '1', '2024-02-05 09:39:34', '2024-02-05 09:39:34'),
(15, '34', '1', '2024-02-05 09:39:39', '2024-02-05 09:39:39'),
(16, '36', '1', '2024-09-15 13:21:43', '2024-09-15 13:21:43'),
(17, '38', '1', '2024-09-15 13:21:49', '2024-09-15 13:21:49'),
(18, '40', '1', '2024-09-15 13:21:55', '2024-09-15 13:21:55'),
(19, '42', '1', '2024-09-15 13:22:00', '2024-09-15 13:22:00'),
(20, '44', '1', '2024-09-15 13:22:05', '2024-09-15 13:22:05'),
(21, '28-44 (Free Size)', '1', '2024-09-15 16:06:29', '2024-09-15 16:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `sliding_notice`
--

CREATE TABLE `sliding_notice` (
  `id` int(11) NOT NULL,
  `notice` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliding_notice`
--

INSERT INTO `sliding_notice` (`id`, `notice`, `status`, `created_at`, `updated_at`) VALUES
(1, '**সম্মানিত কাস্টমার, আস-সালামু আলাইকুম! ইলেকট্রনিক্স পার্টস বিডি অনলাইন শপে আপনাকে স্বাগতম, যেখানে আপনি পাবেন ইলেকট্রনিক্স কম্পোনেন্টস, রোবটিক্স পার্টস, পাওয়ার সাপ্লাই, ডিসপ্লে, মডিউলস, সেন্সর, ডিসি মোটর, আইসি, স্পিকার, অ্যাম্প্লিফায়ার সার্কিট, হার্ডওয়্যার টুলস, ব্যাটারি, সোল্ডারিং টুলস, ক্যাবল ও কানেক্টর, মাল্টিমিটার, এলইডি, সুইচ, রিলে, ডিসি পাম্প এবং আরও অনেক কিছু। রেগুলার ডেলিভারি ঢাকার মধ্যে ৫৯ টাকা এবং ঢাকার বাইরে ১১৯ টাকা ডেলিভারি চার্জের মাধ্যমে আমরা পণ্য পৌঁছে দিই। বিঃদ্রঃ শুধুমাত্র ঢাকার মধ্যে সেম ডে ডেলিভারি প্রদান করা হয়।**', 1, '2025-05-07 02:01:26', '2025-05-07 02:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(99) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `serderid` varchar(155) DEFAULT NULL,
  `order` varchar(11) DEFAULT NULL,
  `forget_pass` varchar(11) DEFAULT NULL,
  `password_g` varchar(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `url`, `api_key`, `serderid`, `order`, `forget_pass`, `password_g`, `status`, `created_at`, `updated_at`) VALUES
(1, '#', '#', '#', '1', '1', '1', '1', '2024-02-06 11:29:46', '2024-11-29 22:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link` varchar(155) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `title`, `icon`, `link`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Abayaba', 'fab fa-facebook-f', 'https://www.facebook.com/profile.php?id=61579269110365', '#f78345', 1, '2023-02-12 11:32:20', '2026-01-19 04:33:29'),
(2, 'Twitter', 'fab fa-twitter', 'https://x.com/electropartsBD', '#000000', 1, '2024-10-11 07:19:52', '2025-03-08 16:19:24'),
(3, 'Youtube', 'fab fa-youtube', 'https://www.youtube.com/@ElectronicsPartsBD', '#000000', 1, '2024-10-11 07:18:17', '2025-03-08 16:16:46'),
(4, 'Pinterest', 'fab fa-pinterest', 'https://www.pinterest.com/electronicspartsbd/', '#000000', 1, '2025-03-08 16:22:46', '2025-03-08 16:22:46'),
(5, 'Instagram', 'fab fa-instagram', 'https://www.instagram.com/electronicspartsbd', '#000000', 1, '2025-03-08 16:25:51', '2025-03-08 16:26:26'),
(6, 'TikTok', 'fab fa-tiktok', 'https://www.tiktok.com/@electronicspartsbd', '#000000', 1, '2025-03-08 16:28:03', '2025-03-08 16:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `subcategoryName` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategoryName`, `slug`, `category_id`, `image`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(53, 'DC Cooling Fans', 'dc-cooling-fans', 39, NULL, 'Best DC Cooling Fans for Powerful Airflow & Heat Dissipation', '<p>Discover top DC cooling fans for powerful airflow and heat dissipation. Perfect for electronics, computers, and more. Shop now for high-performance cooling!</p>', 1, '2025-03-06 17:47:55', '2025-03-06 17:47:55'),
(54, 'Heat Shrink Tubing', 'heat-shrink-tubing', 39, NULL, 'Best Heat Shrink Tubing for Wire Insulation & Protection', '<p>Shop the best heat shrink tubing for wire insulation and protection. Ideal for electrical repairs, DIY projects, and wiring solutions. Order now for top quality</p>', 1, '2025-03-06 17:56:37', '2025-03-06 17:56:37'),
(55, 'Aluminum Heat Sinks', 'aluminum-heat-sinks', 39, NULL, 'Top Aluminum Heat Sinks for Efficient Cooling & Heat Control', '<p>Shop top aluminum heat sinks for efficient cooling and heat control. Ideal for electronics, computers, and more. Order now for high performance and reliability!</p>', 1, '2025-03-06 18:01:28', '2025-03-06 18:01:28'),
(56, 'Peltier Water Blocks', 'peltier-water-blocks', 39, NULL, 'Peltier Water Blocks – Ultimate Thermoelectric Water Cooling', '<p>Shop Peltier water blocks for ultimate thermoelectric cooling. Achieve high-performance liquid cooling for CPUs, GPUs, and electronics with maximum efficiency</p>', 1, '2025-03-06 19:12:39', '2025-03-06 19:12:39'),
(57, 'DC Fan Motors', 'dc-fan-motors', 38, NULL, 'Best DC Fan Motors for Powerful Cooling & Ventilation', '<p>Find the best DC fan motors for powerful cooling and ventilation. Enhance airflow efficiency with high-performance, durable, and energy-saving DC motors.</p>', 1, '2025-03-06 19:18:21', '2025-03-06 19:18:21'),
(58, 'DC Fan Circuits', 'dc-fan-circuits', 38, NULL, 'DC Fan Circuits | Efficient Cooling Solutions for Electronics', '<p>Discover high-performance DC fan circuits for efficient cooling. Perfect for electronics, chargers, and power supplies, ensuring optimal airflow and durability.</p>', 1, '2025-03-06 19:58:39', '2025-03-06 19:58:39'),
(59, 'DC Gear Motors', 'dc-gear-motors', 38, NULL, 'Best DC Gear Motors for High-Torque & Efficient Solutions', '<p>Find the best DC gear motors for high-torque and efficient performance. Ideal for robotics, automation, and industrial applications with smooth operation.</p>', 1, '2025-03-06 20:36:00', '2025-03-06 20:36:00'),
(60, 'DC Motor Drivers', 'dc-motor-drivers', 38, NULL, 'DC Motor Drivers High-Performance Motor Control Solutions', '<p>Discover high-performance DC motor drivers for precise speed and torque control. Ideal for robotics, automation, and power-efficient motor applications.</p>', 1, '2025-03-06 20:40:18', '2025-03-06 20:40:18'),
(61, 'DC Motors', 'dc-motors', 38, NULL, 'Best DC Motors for High-Torque Power & Electric Motors', '<p>Discover the best DC motors for high-torque power and efficient performance. Perfect for electric motors, robotics, automation, and industrial applications.</p>', 1, '2025-03-06 20:47:15', '2025-03-06 20:47:15'),
(62, 'DC Servo Motors', 'dc-servo-motors', 38, NULL, 'DC Servo Motors for Precision Control & High-Torque Power', '<p>Find top-quality DC servo motors for precision control and high-torque power. Perfect for robotics, automation, CNC machines, and industrial applications.</p>', 1, '2025-03-06 20:54:12', '2025-03-06 20:54:12'),
(63, 'DC Stepper Motors', 'dc-stepper-motors', 38, NULL, 'DC Stepper Motors for Precision Motion & High-Torque Power', '<p>Discover high-performance DC stepper motors for precision motion and high-torque power. Ideal for robotics, automation, CNC machines, and industrial use</p>', 1, '2025-03-06 20:59:10', '2025-03-06 20:59:10'),
(64, 'DC Trimmer Motors', 'dc-trimmer-motors', 38, NULL, 'Best DC Trimmer Motors for Precision & Efficient Power', '<p>Discover the best DC trimmer motors for precision cutting &amp; high efficiency. Perfect for small trimmers, offering power, durability, and smooth performance.</p>', 1, '2025-03-06 21:04:39', '2025-03-06 21:04:39'),
(65, 'Aquarium Air Pumps', 'aquarium-air-pumps', 38, NULL, 'Best Aquarium Air Pumps | Powerful & Silent Oxygen Supply', '<p>Find the best aquarium air pumps for powerful, silent oxygen flow. Enhance water circulation, keep fish healthy, and enjoy ultra-quiet operation for your tank</p>', 1, '2025-03-06 21:11:14', '2025-03-06 21:11:14'),
(66, 'DC Water Pumps', 'dc-water-pumps', 38, NULL, 'Best DC Water Pumps – Efficient, Durable & High Performance', '<p>Shop the best DC water pumps for efficient, durable, and high-performance water flow. Ideal for various applications. Buy now for reliable, long-lasting results</p>', 1, '2025-03-06 21:53:17', '2025-03-06 21:53:17'),
(67, 'Spray Gun Nozzles', 'spray-gun-nozzles', 38, NULL, 'High-Quality Spray Gun Nozzles for Precise & Smooth Coating', '<p>Shop high-quality spray gun nozzles for precise, smooth, and efficient coating. Durable, reliable, and perfect for all painting applications. Buy now!</p>', 1, '2025-03-06 22:04:25', '2025-03-06 22:04:25'),
(68, 'Submersible Water Pumps', 'submersible-water-pumps', 38, NULL, 'High-Quality Submersible Water Pumps for Reliable Performance', '<p>Buy high-quality submersible water pumps for reliable performance. Ideal for various applications, ensuring efficient water flow, durability, and long-lasting.</p>', 1, '2025-03-06 22:12:37', '2025-03-06 22:12:37'),
(69, 'Lithium BMS Circuits', 'lithium-bms-circuits', 34, NULL, 'High-Quality Lithium BMS Circuits for Power Management', '<p>Get high-quality Lithium BMS circuits for efficient power management. Ensure battery protection, performance, and longevity with advanced BMS solutions.</p>', 1, '2025-03-06 22:21:44', '2025-03-06 22:59:35'),
(70, 'Buck Boost Converters', 'buck-boost-converters', 34, NULL, 'Best Buck Boost Converters – Efficient & Stable Power Output', '<p>Shop the best Buck Boost converters for stable, efficient power conversion. Ensure reliable voltage regulation, energy efficiency, and top performance.</p>', 1, '2025-03-06 22:32:06', '2025-03-06 22:59:28'),
(71, 'Power Adapters Chargers', 'power-adapters-chargers', 34, NULL, 'High-Quality Power Adapters Chargers for Efficient Charging', '<p>Shop high-quality power adapters and chargers for efficient charging. Reliable performance and durability for various devices, ensuring long-lasting use.</p>', 1, '2025-03-06 22:37:22', '2025-03-06 22:59:16'),
(72, 'Inverter Circuit Boards', 'inverter-circuit-boards', 34, NULL, 'High-Quality Inverter Circuit Boards for Power Controls', '<p>Shop high-quality inverter circuit boards for reliable power control. Durable and efficient, perfect for various applications, ensuring long-lasting performance</p>', 1, '2025-03-06 22:48:13', '2025-03-06 22:48:13'),
(73, 'SMPS Power Supply', 'smps-power-supply', 34, NULL, 'High-Performance SMPS Power Supply Units for Efficient Use', '<p>Shop high-performance SMPS power supplies for reliable, efficient energy solutions. Ideal for industrial, commercial, and home use. Get top-quality units today!</p>', 1, '2025-03-06 23:11:40', '2025-03-06 23:11:40'),
(74, 'Step Down Transformers', 'step-down-transformers', 34, NULL, 'High-Efficiency Step Down Transformers for Power Supply', '<p>Buy high-efficiency step-down transformers for a stable power supply. Ideal for industrial, commercial, and home use. Shop reliable transformers today!</p>', 1, '2025-03-06 23:24:03', '2025-03-06 23:24:03'),
(75, 'Strong Neodymium Magnets', 'strong-neodymium-magnets', 34, NULL, 'Buy Strong Neodymium Magnets – Powerful, Durable & Reliable', '<p>Shop strong neodymium magnets for industrial, commercial, and DIY use. Durable, high-performance magnets for various applications. Order now top-quality magnets</p>', 1, '2025-03-06 23:34:07', '2025-03-06 23:34:07'),
(76, 'Solar Charge Controllers', 'solar-charge-controllers', 34, NULL, 'High-Quality Solar Charge Controllers for Efficient Power', '<p>Get high-quality solar charge controllers for efficient energy management. Perfect for off-grid, RV, and home systems. Shop reliable controllers today!</p>', 1, '2025-03-06 23:42:41', '2025-03-06 23:42:41'),
(77, 'Nylon Cable Ties', 'nylon-cable-ties', 33, NULL, 'Buy Nylon Cable Ties – Durable & Heavy-Duty Zip Ties', '<p>Buy durable nylon cable ties for wire management. Strong, UV-resistant &amp; versatile zip ties for home, office &amp; industrial use. Shop online for the best deals!</p>', 1, '2025-03-07 14:13:44', '2025-03-07 14:13:44'),
(78, 'Brass Hex Spacers', 'brass-hex-spacers', 33, NULL, 'Buy Brass Hex Spacers Strong Standoffs for DIY & Electronics', '<p>Buy premium brass hex spacers for DIY electronics and projects. Strong, durable standoffs available in various sizes. Order online now for fast delivery!</p>', 1, '2025-03-07 14:20:10', '2025-03-07 14:20:10'),
(79, 'Wire Connectors Clips', 'wire-connectors-clips', 33, NULL, 'Buy Wire Connector Clips – Durable & Reliable Connections', '<p>Shop durable wire connector clips for secure connections in DIY projects and electronics. High-quality clips available for various applications. Order now!</p>', 1, '2025-03-07 14:32:14', '2025-03-07 14:32:14'),
(80, 'Electronics Wire Cables', 'electronics-wire-cables', 33, NULL, 'Buy Electronics Wire Cables – Durable & High-Quality Wires', '<p>Shop durable electronics wire cables for DIY projects and electronics. High-quality, flexible wires available in various sizes. Order online for fast shipping!</p>', 1, '2025-03-07 14:39:14', '2025-03-07 14:39:14'),
(81, 'PCB Header Connectors', 'pcb-header-connectors', 33, NULL, 'Buy PCB Header Connectors – Durable & High-Quality Pins', '<p>Buy high-quality PCB header connectors for secure and reliable board connections. Ideal for electronics, DIY, and industrial use. Order now for the best deals!</p>', 1, '2025-03-07 14:42:17', '2025-03-07 14:42:17'),
(82, 'Electronics Jacks Sockets', 'electronics-jacks-sockets', 33, NULL, 'Buy Electronics Jacks & Sockets – Reliable Connections', '<p>Shop durable electronics jacks and sockets for secure connections in projects. High-quality, reliable components for various applications. Order online now!</p>', 1, '2025-03-07 14:51:35', '2025-03-07 14:51:35'),
(83, 'Cutting Grinding Discs', 'cutting-grinding-discs', 32, NULL, 'Buy Cutting Grinding Discs – Durable & High-Performance', '<p>Buy high-quality cutting grinding discs for precise and efficient metal cutting. Durable, long-lasting, and perfect for industrial and DIY use. Shop now!</p>', 1, '2025-03-07 14:57:29', '2025-03-07 14:57:29'),
(84, 'Drill Bits Chucks', 'drill-bits-chucks', 32, NULL, 'Buy Drill Bits & Chucks High-Quality for Precision Drilling', '<p>Buy high-quality drill bits &amp; chucks for precision drilling. Perfect for DIY, industrial, and professional use. Durable, reliable, and ready to perform!</p>', 1, '2025-03-07 15:00:58', '2025-03-07 15:00:58'),
(85, 'Hot Glue Sticks', 'hot-glue-sticks', 32, NULL, 'Buy Hot Glue Sticks – Durable & Perfect for Glue Guns', '<p>Shop high-quality hot glue sticks, perfect for glue guns. Durable and ideal for crafts, DIY projects, and repairs. Fast shipping and great prices available!</p>', 1, '2025-03-07 15:05:30', '2025-03-07 15:05:30'),
(86, 'Wire Cutting Pliers', 'wire-cutting-pliers', 32, NULL, 'Buy Wire Cutting Pliers – Precision Grip for Easy Cutting', '<p>Buy high-quality wire cutting pliers for precision and durability. Perfect for electricians, DIY projects, and industrial use. Shop now for the best deals!</p>', 1, '2025-03-07 15:08:36', '2025-03-07 15:08:36'),
(87, 'Precision Screwdrivers Sets', 'precision-screwdrivers-sets', 32, NULL, 'Buy Precision Screwdriver Set Perfect for Electronics & DIY', '<p>Buy a precision screwdriver set for electronics, watches, and DIY repairs. Get high-quality, durable tools for professionals and hobbyists. Order now!</p>', 1, '2025-03-07 15:14:27', '2025-03-07 15:14:27'),
(88, 'Personal Safety Gear', 'personal-safety-gear', 32, NULL, 'Buy Personal Safety Gear – Protect Yourself at Work & Home', '<p>Shop high-quality personal safety gear for protection and comfort. Perfect for work, home, and outdoor use. Durable, reliable, and available at great prices!</p>', 1, '2025-03-07 15:20:42', '2025-03-07 15:20:42'),
(89, 'Precision Hand Tools', 'precision-hand-tools', 32, NULL, 'Buy Precision Hand Tools – High-Quality & Durable Tools', '<p>Buy precision hand tools for fine repairs, electronics, and DIY projects. High-quality, durable, and reliable tools for professionals and hobbyists. Shop now!</p>', 1, '2025-03-07 15:28:49', '2025-03-07 15:28:49'),
(90, 'ESD Protection Tools', 'esd-protection-tools', 31, NULL, 'Buy ESD Protection Tools – Safe, Reliable, and Durable', '<p>Buy high-quality ESD protection tools for electrostatic safety. Prevent damage to electronics with anti-static mats, wrist straps, and accessories. Shop now!</p>', 1, '2025-03-07 15:32:54', '2025-03-07 15:32:54'),
(91, 'Soldering Desoldering Tools', 'soldering-desoldering-tools', 31, NULL, 'High-Quality Soldering & Desoldering Kits for Professionals', '<p>Buy high-quality soldering & desoldering kits for precise electronics repair. Perfect for professionals & DIYers. Get durable tools at the best prices! </p>', 1, '2025-03-07 15:40:30', '2025-03-07 15:48:25'),
(92, 'Soldering Iron Kit', 'soldering-iron-kit', 31, NULL, 'Buy Soldering Iron Kits – High-Quality & Complete Set', '<p>Shop high-quality soldering iron kits. Complete, durable tools for precision electronics work. Perfect for DIY and professionals. Fast shipping and great deals!</p>', 1, '2025-03-07 15:46:10', '2025-03-07 15:47:02'),
(93, 'Soldering Lead Paste', 'soldering-lead-paste', 31, NULL, 'Buy Soldering Lead Paste – Premium Quality for Electronics', '<p>Shop high-quality soldering lead paste for electronics and repairs. Durable, precise tools for DIY and professionals. Fast shipping and great deals available!</p>', 1, '2025-03-07 15:53:41', '2025-03-07 15:53:41'),
(94, 'Soldering Helping Hands', 'soldering-helping-hands', 31, NULL, 'Buy Soldering Helping Hands – Perfect for Precision Work', '<p>Buy soldering helping hands for precision electronics and DIY projects. Adjustable clips, magnifier, and sturdy base for soldering. Order now for best deals!</p>', 1, '2025-03-07 16:01:06', '2025-03-07 16:01:06'),
(95, 'Soldering Iron Tips', 'soldering-iron-tips', 31, NULL, 'Buy Soldering Iron Tips – High-Quality for Precise Work', '<p>Buy high-quality soldering iron tips for precise electronics work. Perfect for DIY, repair, and professional use. Durable, reliable, and long-lasting. Shop now!</p>', 1, '2025-03-07 16:07:07', '2025-03-07 16:07:07'),
(96, 'Precision Soldering Tweezers', 'precision-soldering-tweezers', 31, NULL, 'Buy Precision Soldering Tweezers – Perfect for PCB Work', '<p>Buy precision soldering tweezers for electronics, PCB work, and fine repairs. Heat-resistant, durable, ESD-safe for professionals. Order now at the best price!</p>', 1, '2025-03-07 16:14:09', '2025-03-07 16:14:09'),
(97, 'Digital Soldering Microscope', 'digital-soldering-microscope', 31, NULL, 'Buy Digital Soldering Microscope for Precise Work & Repairs', '<p>Buy a digital soldering microscope for precise PCB inspection and electronics repair. High-resolution magnification, durable, and easy to use. Order now!</p>', 1, '2025-03-07 16:20:18', '2025-03-07 16:20:18'),
(98, 'PCB Prototyping Boards', 'pcb-prototyping-boards', 31, NULL, 'Buy PCB Prototyping Boards – Perfect for Circuit Design', '<p>Shop high-quality PCB prototyping boards for electronics projects. Ideal for building custom circuits, testing, and DIY prototypes. Reliable, durable materials.</p>', 1, '2025-03-07 16:30:18', '2025-03-07 16:30:18'),
(99, 'Drone ESC Modules', 'drone-esc-modules', 30, NULL, 'Buy Drone ESC Modules for Stable Flight & High Performance', '<p>Shop high-quality Drone ESC Modules for stable flight and high performance. Enhance control, reliability, and smooth operation for your drone projects.</p>', 1, '2025-03-07 16:40:14', '2025-03-07 16:40:14'),
(100, 'Drone Frame Kits', 'drone-frame-kits', 30, NULL, 'Buy Drone Frame Kits for Stable & Reliable Flight Control', '<p>Shop high-quality drone frame kits for stable, reliable flight control. Ideal for custom builds, upgrades, and performance in drone and RC projects. Order now!</p>', 1, '2025-03-07 17:48:57', '2025-03-07 17:48:57'),
(101, 'Precision Drone Propellers', 'precision-drone-propellers', 30, NULL, 'Precision Drone Propellers for High-Performance Drones', '<p>Precision drone propellers designed for high-performance flights. Improve stability, speed, and control for your drone with our top-quality propellers.</p>', 1, '2025-03-07 17:56:54', '2025-03-07 17:56:54'),
(102, 'Drone Flight Controllers', 'drone-flight-controllers', 30, NULL, 'Best Drone Flight Controllers for Smooth & Precise Control', '<p>Buy the best drone flight controllers for stable flight, precise control &amp; advanced navigation. Ideal for FPV racing, aerial photography, and DIY drone builds.</p>', 1, '2025-03-07 18:54:23', '2025-03-07 18:54:23'),
(103, 'Drone Brushless Motors', 'drone-brushless-motors', 30, NULL, 'Buy High-Performance Drone Motors for Power & Efficiency', '<p>Buy High-Performance Drone Brushless Motors for Maximum Power and Efficiency. Perfect for Racing, Aerial Photography, and DIY Drone Projects. Shop Now!&nbsp;</p>', 1, '2025-03-07 19:00:51', '2025-03-07 19:00:51'),
(104, 'Smart Robot Wheels', 'smart-robot-wheels', 30, NULL, 'Smart Robot Wheels for DIY Robots & AI-Powered Projects', '<p>Upgrade your robot with Smart Robot Wheels! Perfect for DIY robotics, AI projects, and autonomous vehicles. Get high-performance, durable wheels today!</p>', 1, '2025-03-07 19:07:50', '2025-03-07 19:07:50'),
(105, 'Solenoid Valve Actuators', 'solenoid-valve-actuators', 30, NULL, 'Buy Solenoid Valve Actuators for Precision Control Systems', '<p>Shop solenoid valve actuators for precise control and reliable performance in automation. Ideal for industrial applications and custom projects. Order now!</p>', 1, '2025-03-07 19:15:15', '2025-03-07 19:15:15'),
(106, '3D Printing Filaments', '3d-printing-filaments', 30, NULL, 'High-Quality 3D Filaments for Printing & DIY Projects', '<p>Discover high-quality 3D filaments for smooth, precise printing. Perfect for DIY, creative projects, and professional use. Get durable, reliable filament today!</p>', 1, '2025-03-07 19:22:10', '2025-03-07 19:22:10'),
(107, 'CNC 3D Modules', 'cnc-3d-modules', 30, NULL, 'Buy CNC & 3D Modules for Precision & Advanced Projects', '<p>Buy CNC &amp; 3D modules for precision control and advanced projects. Perfect for machining, 3D printing, and automation. Get high-quality components today!</p>', 1, '2025-03-07 19:28:22', '2025-03-07 19:28:22'),
(108, 'CNC 3D Parts', 'cnc-3d-parts', 30, NULL, 'Buy CNC & 3D Parts for Precision and Reliable Printing Needs', '<p>Buy CNC &amp; 3D parts for precision and reliable printing. Perfect for machining, 3D printing, and custom projects. Get high-quality parts for top performance!</p>', 1, '2025-03-07 19:33:35', '2025-03-07 19:33:35'),
(109, 'Microphone Sound Sensors', 'microphone-sound-sensors', 29, NULL, 'Buy Microphone Sound Sensors Reliable & High-Quality Parts', '<p>Shop microphone sound sensors for precise audio detection. Reliable, high-quality sensors ideal for various applications. Fast shipping and top performance!</p>', 1, '2025-03-07 19:48:49', '2025-03-07 22:47:58'),
(110, 'Motor Shaft Couplings', 'motor-shaft-couplings', 30, NULL, 'Buy Motor Shaft Couplings for Precision & Flexibility', '<p>Buy motor shaft couplings for smooth, efficient power transfer. Ideal for machinery, automation, and industrial use. Get durable, high-quality couplings today!</p>', 1, '2025-03-07 19:53:53', '2025-03-07 19:57:29'),
(111, 'Motor Pulley Parts', 'motor-pulley-parts', 30, NULL, 'Buy Motor Pulley Parts Online - High Quality & Affordable', '<p>Shop motor pulley parts for DC &amp; industrial motors. Durable, affordable, and precision-engineered for top performance. Fast shipping &amp; high-quality products!</p>', 1, '2025-03-07 20:44:57', '2025-03-07 20:44:57'),
(112, 'DC Timing Belts', 'dc-timing-belts', 30, NULL, 'Buy DC Timing Belts for High-Precision Motor Performance', '<p>Buy DC timing belts for high-precision motor performance and smooth power transmission. Ideal for automation, robotics, and industrial use. Order now!</p>', 1, '2025-03-07 20:52:47', '2025-03-07 20:52:47'),
(113, 'Biometric Flex Sensors', 'biometric-flex-sensors', 29, NULL, 'Buy Biometric & Flex Sensors - High Quality & Reliable Parts', '<p>Shop high-quality biometric &amp; flex sensors for reliable performance. Ideal for various applications. Precision-engineered, durable, and fast shipping available!</p>', 1, '2025-03-07 21:00:49', '2025-03-07 21:00:49'),
(114, 'Gas Detection Sensors', 'gas-detection-sensors', 29, NULL, 'Buy Gas Detection Sensors - Reliable & High-Quality Options', '<p>Shop gas detection sensors for accurate monitoring and safety. Reliable, high-quality, and durable solutions. Fast shipping and precision-engineered products!</p>', 1, '2025-03-07 21:08:59', '2025-03-07 21:08:59'),
(115, 'Light Current Sensors', 'light-current-sensors', 29, NULL, 'Buy Light & Current Sensor Modules - High-Quality Options', '<p>Shop high-quality light and current sensor modules for precise monitoring. Ideal for various applications. Durable, reliable, and fast shipping available!</p>', 1, '2025-03-07 21:38:22', '2025-03-07 21:38:22'),
(116, 'PIR Motion Sensors', 'pir-motion-sensors', 29, NULL, 'Buy PIR Motion Sensors Modules - Reliable & High-Quality', '<p>Shop PIR motion sensor modules for reliable, precise motion detection. Ideal for security and automation systems. Fast shipping and high-quality performance!</p>', 1, '2025-03-07 21:43:40', '2025-03-07 22:39:23'),
(117, 'Specialty Sensor Modules', 'specialty-sensor-modules', 29, NULL, 'Buy Specialty Sensor Modules High-Quality & Reliable Options', '<p>Shop specialty sensor modules for precise applications. Get reliable, durable, and high-quality sensors for various uses. Fast shipping and top performance!</p>', 1, '2025-03-07 21:49:42', '2025-03-07 21:49:42'),
(118, 'Pressure Weight Sensors', 'pressure-weight-sensors', 29, NULL, 'Buy Pressure & Weight Sensors High-Quality, Reliable Parts', '<p>Shop high-quality pressure and weight sensors for precise measurements. Reliable, durable, and ideal for various applications. Fast shipping guaranteed!</p>', 1, '2025-03-07 21:55:03', '2025-03-07 21:55:03'),
(119, 'Ultrasonic Distance Sensors', 'ultrasonic-distance-sensors', 29, NULL, 'Buy Ultrasonic Distance Sensors - High-Quality & Accurate', '<p>Shop ultrasonic distance sensors for precise measurements. Reliable, durable, and ideal for various applications. Fast shipping and top performance guaranteed!</p>', 1, '2025-03-07 22:22:12', '2025-03-07 22:22:12'),
(120, 'Water Detection Sensors', 'water-detection-sensors', 29, NULL, 'Buy Water Detection Sensors - Reliable & High-Quality Parts', '<p>Buy water detection sensors for precise &amp; reliable detection. Ideal for various applications. High-quality, durable sensors with fast shipping &amp; top performance</p>', 1, '2025-03-07 22:58:20', '2025-03-07 22:58:20'),
(121, 'Temperature Moisture Sensors', 'temperature-moisture-sensors', 29, NULL, 'Buy Temperature Moisture Sensors - Reliable & High-Quality', '<p>Shop temperature moisture sensors for precise detection. Ideal for various applications. High-quality, durable sensors with fast shipping &amp; reliable performance</p>', 1, '2025-03-07 23:04:57', '2025-03-07 23:04:57'),
(122, 'TV Remote Controllers', 'tv-remote-controllers', 29, NULL, 'Buy TV Remote Controllers - Reliable & High-Quality Models', '<p>Shop TV remote controllers for reliable, precise control. Ideal for various TV models. High-quality, durable remotes with fast shipping &amp; guaranteed performance</p>', 1, '2025-03-07 23:09:06', '2025-03-07 23:09:06'),
(123, 'IoT Wireless Modules', 'iot-wireless-modules', 29, NULL, 'Buy IoT Wireless Modules - High-Quality & Reliable Parts', '<p>Shop IoT wireless modules for seamless connectivity and reliable performance. Ideal for various applications with high-quality components and fast shipping.</p>', 1, '2025-03-07 23:14:11', '2025-03-07 23:14:11'),
(124, 'DIY Electronics Modules', 'diy-electronics-modules', 29, NULL, 'Shop DIY Electronics Modules for Projects - High Quality', '<p>Shop DIY electronics modules for smart, creative projects. Perfect for makers, hobbyists, and engineers. High-quality components with fast shipping available!</p>', 1, '2025-03-07 23:19:12', '2025-03-07 23:19:12'),
(125, 'Amplifier Circuit Boards', 'amplifier-circuit-boards', 23, NULL, 'Buy Amplifier Circuit Boards & Modules - High Quality Parts', '<p>Buy the best Amplifier Circuit Boards &amp; Modules for pro &amp; DIY audio. High-quality amp PCBs for superior sound performance. Fast shipping &amp; great prices!</p>', 1, '2025-03-07 23:27:59', '2025-03-07 23:27:59'),
(126, 'Audio Speakers', 'audio-speakers', 23, NULL, 'Shop the Best Audio Speakers for Every Sound Experience', '<p>Shop top-rated audio speakers for home, car, and professional use. High-quality sound, affordable prices, fast shipping, and exceptional customer service.</p>', 1, '2025-03-07 23:40:26', '2025-03-07 23:40:26'),
(127, 'Audio Tweeters', 'audio-tweeters', 23, NULL, 'Top Audio Tweeters for Home, Car, and Professional Use', '<p>Shop premium audio tweeters for clear, high-frequency sound. Ideal for home, car, and professional use. Affordable prices, fast shipping, and guaranteed quality</p>', 1, '2025-03-07 23:43:38', '2025-03-07 23:43:38'),
(128, 'Buzzer Horns', 'buzzer-horns', 23, NULL, 'Buy Buzzer Horns for Clear Sound & Maximum Volume Output', '<p>Shop premium buzzer horns for clear, loud sound in home, car, or industrial use. Affordable prices, fast shipping, and guaranteed quality for every need.</p>', 1, '2025-03-07 23:52:12', '2025-03-07 23:52:12'),
(129, 'Acrylic Sheets', 'acrylic-sheets', 24, NULL, 'Best Acrylic Sheets – Durable, Clear & Perfect for DIY', '<p>Buy premium acrylic sheets for DIY, crafts &amp; industrial use. Strong, clear &amp; durable. Fast shipping &amp; best prices guaranteed. Shop high-quality sheets now!</p>', 1, '2025-03-08 05:04:51', '2025-03-08 05:04:51'),
(130, 'Caster Wheels', 'caster-wheels', 24, NULL, 'Buy Caster Wheels – Heavy-Duty, Smooth & Long-Lasting', '<p>Buy heavy-duty caster wheels for smooth, reliable mobility. Perfect for industrial, furniture &amp; DIY use. Durable, long-lasting &amp; easy to install. Shop now!</p>', 1, '2025-03-08 05:34:41', '2025-03-08 05:34:41'),
(131, 'Spray Paints', 'spray-paints', 24, NULL, 'Buy Spray Paints – Durable, Fast-Drying & Vibrant Colors', '<p>Shop high-quality spray paints for DIY &amp; pro use. Fast-drying, durable &amp; vibrant colors for any surface. Order now for the best results &amp; fast shipping!</p>', 1, '2025-03-08 05:40:54', '2025-03-08 05:40:54'),
(132, 'Project Boxes', 'project-boxes', 24, NULL, 'Buy Project Boxes – Durable Enclosures for Electronics & DIY', '<p>Shop durable project boxes and enclosures for electronics &amp; DIY. High-quality, customizable options for your next project. Fast shipping and great prices!</p>', 1, '2025-03-08 05:53:30', '2025-03-08 05:53:30'),
(133, 'Epoxy Adhesives', 'epoxy-adhesives', 24, NULL, 'Buy Epoxy Adhesives & Glues for Strong Bonding Solutions.', '<p>Shop premium epoxy adhesives &amp; glues for strong, durable bonds. Perfect for DIY, industrial &amp; professional use. Fast shipping and top-quality products available</p>', 1, '2025-03-08 06:12:17', '2025-03-08 06:12:17'),
(134, 'Adhesive Tapes', 'adhesive-tapes', 24, NULL, 'Buy Adhesive Tapes & Rolls – Strong, Reliable, and Versatile', '<p>Shop high-quality adhesive tapes & rolls for all your projects. Strong, reliable, and versatile options for DIY, industrial, and professional use. Fast shipping</p>', 1, '2025-03-08 06:27:31', '2025-03-08 06:51:00'),
(135, 'Screws & Bolts', 'screws-&-bolts', 24, NULL, 'Buy Screws & Bolts – Durable Fasteners for Every Project.', '<p>Shop high-quality screws &amp; bolts for secure fastening. Perfect for DIY, construction, and industrial use. Durable, reliable, and fast shipping available.</p>', 1, '2025-03-08 06:59:09', '2025-03-08 06:59:09'),
(136, 'ESP Development Boards', 'esp-development-boards', 25, NULL, 'Buy ESP Development Boards for IoT & Electronics Projects', '<p>Shop ESP development boards for IoT and electronics projects. Ideal for prototyping, coding, and building. Fast shipping &amp; reliable options for all skill levels</p>', 1, '2025-03-08 07:00:32', '2025-03-08 07:23:39'),
(137, 'Arduino Boards', 'arduino-boards', 25, NULL, 'Buy Arduino Boards – Ideal for Projects & DIY Electronics', '<p>Shop high-quality Arduino boards for DIY, robotics &amp; prototyping. Fast shipping &amp; reliable options for all skill levels. Perfect for electronics projects!</p>', 1, '2025-03-08 07:06:16', '2025-03-08 07:06:16'),
(138, 'MCU programmers', 'mcu-programmers', 25, NULL, 'Buy MCU Programmers – Ideal for Microcontroller Projects', '<p>Shop MCU programmers for microcontroller projects. Ideal for development, debugging, and prototyping. Fast shipping &amp; reliable options for all skill levels.</p>', 1, '2025-03-08 11:10:59', '2025-03-08 11:10:59'),
(139, 'Specialty Development Boards', 'specialty-development-boards', 25, NULL, 'Buy Specialty Development Boards for Rare DIY Electronics', '<p>Explore specialty development boards for DIY electronics, prototyping &amp; IoT projects. High-quality, innovative boards for makers, engineers &amp; hobbyists.</p>', 1, '2025-03-08 11:25:26', '2025-03-08 11:25:26'),
(140, 'Raspberry Pi Kits', 'raspberry-pi-kits', 25, NULL, 'Buy Raspberry Pi Kits, Boards & Accessories for DIY Projects', '<p>Explore Raspberry Pi kits, boards, &amp; accessories for DIY projects. Perfect for hobbyists &amp; engineers. Get high-quality components for your tech creations.</p>', 1, '2025-03-08 11:32:39', '2025-03-08 11:32:39'),
(141, 'STM32 Development Kits', 'stm32-development-kits', 25, NULL, 'STM32 Development Kits – Shop Boards & Accessories Online', '<p>Explore STM32 Development Kits, Boards &amp; Accessories. Ideal for prototyping, IoT, and embedded projects. Get top-quality STM32 boards at the best prices!&nbsp;</p>', 1, '2025-03-08 11:36:25', '2025-03-08 11:36:25'),
(142, 'Batteries', 'batteries', 26, NULL, 'Batteries – Shop Lithium, Alkaline & Rechargeable Packs', '<p>Explore Batteries – Lithium, Alkaline &amp; Rechargeable. Get reliable, long-lasting power for all devices at the best prices. Shop now and enjoy fast shipping!</p>', 1, '2025-03-08 11:50:35', '2025-03-08 11:50:35'),
(143, 'Battery Holders', 'battery-holders', 26, NULL, 'Battery Holders – Shop Secure & Reliable Power Solutions.', '<p>Shop Battery Holders for secure, reliable power. Find durable mounts and cases for all battery types. Ideal for electronics, DIY projects, and industrial use!</p>', 1, '2025-03-08 11:58:41', '2025-03-08 11:58:41'),
(144, 'Crystal Oscillators', 'crystal-oscillators', 27, NULL, 'Crystal Oscillators – High-Precision Timing Solutions.', '<p>Find high-quality crystal oscillators, resonators &amp; frequency control components for precise electronics applications. Shop now for reliability &amp; accuracy!</p>', 1, '2025-03-08 12:03:38', '2025-03-08 12:03:38'),
(145, 'Diodes & Rectifiers', 'diodes-&-rectifiers', 27, NULL, 'Buy Diodes & Rectifiers – Power, Signal & Bridge Diodes', '<p>Shop diodes &amp; rectifiers, including power, signal &amp; bridge diodes. Ideal for electronics, repairs &amp; projects. Get the best prices online with fast shipping!&nbsp;</p>', 1, '2025-03-08 12:13:27', '2025-03-08 12:13:27'),
(146, 'Inductors & Coils', 'inductors-&-coils', 27, NULL, 'Inductors & Coils – Buy High-Quality Power & RF Inductors', '<p>Shop Inductors &amp; Coils for power, RF, and signal applications. Find top-quality chokes, inductors, and more at the best prices with fast shipping. Order now!</p>', 1, '2025-03-08 12:21:06', '2025-03-08 12:21:06'),
(147, 'Capacitors & MOV', 'capacitors-&-mov', 27, NULL, 'Capacitors & MOV for Electronics Projects & Repairs Online', '<p>Capacitors &amp; MOV for electronics projects and repairs. Shop high-quality components for your needs. Fast shipping, best prices, and reliable service online.</p>', 1, '2025-03-08 12:31:14', '2025-03-08 12:31:14'),
(148, 'Resistors & Potentiometers', 'resistors-&-potentiometers', 27, NULL, 'Buy Resistors & Potentiometers – DIY & Electronics Projects', '<p>Shop premium resistors and potentiometers for your electronics projects. Find fixed, variable, and custom resistors at great prices. Fast shipping available!</p>', 1, '2025-03-08 12:44:13', '2025-03-08 12:44:13'),
(149, '7400 Series ICs', '7400-series-ics', 28, NULL, 'Buy 7400 Series ICs - Logic Chips for Electronics Projects', '<p>Explore 7400 Series ICs for logic circuits, DIY, and projects. Find NAND, NOR, AND, OR gates at great prices. Shop now for fast shipping &amp; top quality!</p>', 1, '2025-03-08 12:57:05', '2025-03-08 12:57:05'),
(150, 'Audio Amplifier ICs', 'audio-amplifier-ics', 28, NULL, 'Buy Audio Amplifier ICs for Electronics Projects & Repairs', '<p>Shop high-quality Audio Amplifier ICs for DIY &amp; professional use. Ideal for audio projects, repairs &amp; electronics. Get the best prices online with fast shipping</p>', 1, '2025-03-08 13:35:35', '2025-03-08 13:35:35'),
(151, 'AVR Microcontrollers', 'avr-microcontrollers', 28, NULL, 'AVR Microcontrollers – DIY Electronics & Prototyping Chips', '<p>Explore AVR Microcontrollers for DIY, prototyping &amp; development. Find ATMega &amp; ATTiny chips at the best prices. Shop now for fast shipping &amp; top quality!</p>', 1, '2025-03-08 13:39:07', '2025-03-08 13:39:07'),
(152, 'CD4000 Series ICs', 'cd4000-series-ics', 28, NULL, 'CD4000 Series ICs for Digital Logic & Electronics Projects', '<p>Shop CD4000 Series ICs for digital logic. Find gates, flip-flops &amp; more for electronics projects. Get top-quality components with fast shipping &amp; great prices!</p>', 1, '2025-03-08 13:43:41', '2025-03-08 13:43:41'),
(153, 'Digital Analog ICs', 'digital-analog-ics', 28, NULL, 'Digital Analog ICs for Electronics Projects & Prototyping', '<p>Shop digital and analog ICs for all your electronics projects. Find high-quality chips, components, and prototyping tools. Fast shipping and great prices!</p>', 1, '2025-03-08 13:48:59', '2025-03-08 13:48:59'),
(154, 'EEPROM Chips', 'eeprom-chips', 28, NULL, 'Buy EEPROM ICs – Memory Chips for Electronics & Repairs.', '<p>Find EEPROM ICs for memory storage in electronics &amp; repairs. Shop high-quality EEPROM chips at great prices with fast shipping. Perfect for all projects!</p>', 1, '2025-03-08 13:53:41', '2025-03-08 13:53:41'),
(155, 'OPAMP PWM ICs', 'opamp-pwm-ics', 28, NULL, 'OPAMP PWM ICs – Precision Amplifiers & Power Control ICs', '<p>Find OPAMP PWM ICs for amplifiers &amp; power control. Shop top-quality operational amplifiers &amp; PWM chips at the best prices with fast shipping. Order now!</p>', 1, '2025-03-08 14:09:40', '2025-03-08 14:09:40'),
(156, 'PIC Microcontrollers', 'pic-microcontrollers', 28, NULL, 'PIC Microcontrollers for Embedded Systems | High-Quality ICs', '<p>Shop high-quality PIC microcontrollers for embedded systems. Find reliable ICs at great prices with fast shipping. Perfect for electronics projects. Order now!</p>', 1, '2025-03-08 14:17:17', '2025-03-08 14:17:17'),
(157, 'IGBT Transistors', 'igbt-transistors', 28, NULL, 'IGBT Transistors – High-Efficiency Power Switching Devices', '<p>Find IGBT transistors for power electronics, inverters &amp; motor control. Shop high-efficiency switching devices at the best prices with fast shipping. Order now!</p>', 1, '2025-03-08 14:28:05', '2025-03-08 14:28:05'),
(158, 'Power MOSFETs', 'power-mosfets', 28, NULL, 'Power MOSFETs for Efficient Switching | Quality Transistors', '<p>Shop Power MOSFETs for efficient switching and high performance. Find top-quality transistors for electronics projects. Fast shipping &amp; best deals. Order now!</p>', 1, '2025-03-08 14:37:51', '2025-03-08 14:37:51'),
(159, 'Transistor ICs', 'transistor-ics', 28, NULL, 'Transistor ICs – Power & Signal Amplification Solutions', '<p>Find Transistor ICs for power, signal, and amplification. Shop high-quality transistors for circuits &amp; projects at the best prices. Fast shipping available!</p>', 1, '2025-03-08 14:41:53', '2025-03-08 14:41:53'),
(160, 'Thyristor ICs', 'thyristor-ics', 28, NULL, 'Thyristor ICs – Reliable Power Switching & Control Devices', '<p>Find Thyristor ICs for power switching &amp; control. Shop top-quality SCR &amp; Triac ICs for circuits &amp; projects at the best prices. Fast shipping available!</p>', 1, '2025-03-08 14:46:21', '2025-03-08 14:46:21'),
(161, 'Optocoupler ICs', 'optocoupler-ics', 28, NULL, 'Optocoupler ICs – High-Quality Signal Isolation Devices', '<p>Shop high-quality Optocoupler ICs for signal isolation &amp; safety. Find reliable components for electronics projects. Fast shipping &amp; best deals. Order now!</p>', 1, '2025-03-08 14:54:27', '2025-03-08 14:54:27'),
(162, 'TRIAC SCR ICs', 'triac-scr-ics', 28, NULL, 'TRIAC & SCR ICs for Power Control | High-Quality Components', '<p>Shop TRIAC &amp; SCR ICs for efficient power control. Find high-quality components for electronics projects. Fast shipping &amp; unbeatable deals for you. Order now!</p>', 1, '2025-03-08 15:04:40', '2025-03-08 15:04:40'),
(163, 'Voltage Regulator ICs', 'voltage-regulator-ics', 28, NULL, 'Voltage Regulator ICs for Stable Power Supply | High-Quality', '<p>Shop Voltage Regulator ICs for stable power supply. Find high-quality components for your electronics projects with fast shipping. Order now for the best deals!</p>', 1, '2025-03-08 15:07:26', '2025-03-08 15:07:26'),
(164, 'IC Base Sockets', 'ic-base-sockets', 28, NULL, 'IC Base Sockets for Secure Connections | High-Quality Parts', '<p>Shop IC Base Sockets for secure connections &amp; reliable performance. Find original components for electronics projects. Order now for fast shipping &amp; best deals!</p>', 1, '2025-03-08 15:15:44', '2025-03-08 15:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `image`, `status`, `created_at`, `updated_at`) VALUES
(65, 'Check Admin', 'admin@abayaba.com', '2025-02-08 16:28:43', '$2y$10$GbvRmVJi72zbSiAk1kf.p.N26AMq7rGVkFCbSW.x.Is8LNnVSyNx2', 'N98vHWZoBEO5uBmwLJY5HzXJl9AjJ6vZNsKA6ky2hM7yIleznlgqGiN1P1Ut', 'public/uploads/users/1757669145-abayaba.webp', 1, '2024-02-10 03:58:57', '2025-09-12 19:25:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_categories`
--
ALTER TABLE `banner_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_product`
--
ALTER TABLE `campaign_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courierapis`
--
ALTER TABLE `courierapis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_pages`
--
ALTER TABLE `create_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_pixels`
--
ALTER TABLE `ecom_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `new_campaigns`
--
ALTER TABLE `new_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsizes`
--
ALTER TABLE `productsizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliding_notice`
--
ALTER TABLE `sliding_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `banner_categories`
--
ALTER TABLE `banner_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `campaign_product`
--
ALTER TABLE `campaign_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `courierapis`
--
ALTER TABLE `courierapis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `create_pages`
--
ALTER TABLE `create_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `new_campaigns`
--
ALTER TABLE `new_campaigns`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7322;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1893;

--
-- AUTO_INCREMENT for table `productsizes`
--
ALTER TABLE `productsizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sliding_notice`
--
ALTER TABLE `sliding_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

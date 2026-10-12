-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 12, 2026 at 06:28 AM
-- Server version: 8.0.46-0ubuntu0.24.04.4
-- PHP Version: 8.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nydiamondusa.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `Accesory Lighting & Lamps`
--

CREATE TABLE `Accesory Lighting & Lamps` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Accesory Lighting & Lamps`
--

INSERT INTO `Accesory Lighting & Lamps` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(145, 1, 'a0156691-6eef-8095-523e-9b255bb6e0a2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'Z110A', 'https://www.nydiamondusa.com/product-page/ny-110a', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-110a/1.jpg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-110a/2.jpg', NULL, NULL, NULL, NULL, 179.00, 179.00, NULL, '2026-10-06 06:40:31', '2026-10-06 07:23:12'),
(146, 1, '864ab592-d79f-94f8-5945-c795617317bd', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-Z45', 'https://www.nydiamondusa.com/product-page/ny-z45', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-z45/1.jpg', NULL, NULL, NULL, NULL, NULL, 99.00, 99.00, NULL, '2026-10-06 06:40:32', '2026-10-06 07:23:12'),
(147, 1, '915aed70-6988-0489-a3cc-0026feb04ed2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-T40', 'https://www.nydiamondusa.com/product-page/ny-t40', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-t40/1.jpg', NULL, NULL, NULL, NULL, NULL, 119.00, 119.00, NULL, '2026-10-06 06:40:33', '2026-10-06 07:23:12'),
(151, 1, '545a06b6-0d78-13cc-7d7e-35536200346a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NYFLMP-ELEPHANT BLK', 'https://www.nydiamondusa.com/product-page/nyflmp-elephant-blk', 'Images/nydaimondusa/Accesory Lighting & Lamps/nyflmp-elephant-blk/1.jpg', NULL, NULL, NULL, NULL, 'Black and gold lamp.', 149.00, 149.00, NULL, '2026-10-06 06:40:39', '2026-10-10 05:33:17'),
(152, 1, '5d9bf0ca-adc8-cad1-a283-9c0d54d0709b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NYFLMP-ALLAH GD', 'https://www.nydiamondusa.com/product-page/nyflmp-allah-gd', 'Images/nydaimondusa/Accesory Lighting & Lamps/nyflmp-allah-gd/1.jpg', 'Images/nydaimondusa/Accesory Lighting & Lamps/nyflmp-allah-gd/2.jpg', NULL, NULL, NULL, NULL, 199.00, 199.00, NULL, '2026-10-06 06:40:42', '2026-10-10 05:33:17'),
(153, 1, '3ebbe3c1-47a3-cb33-5cbe-c147035da7dc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-ELEPHANT', 'https://www.nydiamondusa.com/product-page/ny-elephant', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-elephant/1.jpg', NULL, NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:40:43', '2026-10-10 05:33:17'),
(326, 1, '6f2480e7-2778-dad1-7533-72e867ed3fc6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-FLMP', 'https://www.nydiamondusa.com/product-page/ny-flmp', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-flmp/1.jpg', NULL, NULL, NULL, NULL, NULL, 299.00, 299.00, NULL, '2026-10-06 06:46:42', '2026-10-10 05:33:39'),
(430, 1, '4ccc3ab4-3bf5-f51d-7759-ae8b5894f656', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'LUZ', 'https://www.nydiamondusa.com/product-page/luz', 'Images/nydaimondusa/Accesory Lighting & Lamps/luz/1.jpg', 'Images/nydaimondusa/Accesory Lighting & Lamps/luz/2.jpg', NULL, NULL, NULL, 'Table lamp with crushed diamonds.', 99.00, 99.00, NULL, '2026-10-06 06:50:45', '2026-10-10 05:34:00'),
(483, 1, 'b19e4778-5abd-09f7-3264-904eeff210eb', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-HORSE', 'https://www.nydiamondusa.com/product-page/ny-horse', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-horse/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-horse/2.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-horse/3.jpeg', NULL, NULL, NULL, 199.00, 99.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-06 06:51:50', '2026-10-10 05:34:07'),
(484, 1, '5bc7273c-3497-48df-4bb3-a86794afad72', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-SKULL', 'https://www.nydiamondusa.com/product-page/ny-skull', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-skull/1.jpeg', NULL, NULL, NULL, NULL, NULL, 99.00, 49.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-06 06:51:51', '2026-10-10 05:34:07'),
(505, 1, 'a01aa870-712c-527b-abe1-d4563e72f97e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-BELIEVE', 'https://www.nydiamondusa.com/product-page/ny-believe', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-believe/1.jpg', NULL, NULL, NULL, NULL, NULL, 89.00, 89.00, NULL, '2026-10-06 06:54:02', '2026-10-10 05:34:14'),
(510, 1, '231e070a-35cb-2d49-afe2-652c4251bc8d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-L3 GRAY', 'https://www.nydiamondusa.com/product-page/ny-l3-gray', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-l3-gray/1.jpg', NULL, NULL, NULL, NULL, 'Stainless steel standing floor lamp design.', 119.00, 119.00, NULL, '2026-10-06 06:54:08', '2026-10-10 05:34:14'),
(511, 1, 'b376e3f1-c86b-8edb-68db-00c5d4464620', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-L3 WHITE', 'https://www.nydiamondusa.com/product-page/ny-l3-white', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-l3-white/1.jpg', NULL, NULL, NULL, NULL, 'Stainless steel standing floor lamp design.', 119.00, 119.00, NULL, '2026-10-06 06:54:11', '2026-10-10 05:34:14'),
(512, 1, '75b139d0-cd30-69b7-8344-9ca0d5e73da8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-L3 PINK', 'https://www.nydiamondusa.com/product-page/ny-l3-pink', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-l3-pink/1.jpg', NULL, NULL, NULL, NULL, 'Stainless steel standing floor lamp design.', 119.00, 119.00, NULL, '2026-10-06 06:54:13', '2026-10-10 05:34:14'),
(513, 1, 'bd290f16-b31d-5fef-2d3c-8a7fb8292a7a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-T3 WHITE', 'https://www.nydiamondusa.com/product-page/ny-t3-white-1', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-t3-white-1/1.jpg', NULL, NULL, NULL, NULL, 'Feather table lamp.', 39.00, 39.00, NULL, '2026-10-06 06:54:16', '2026-10-10 05:34:15'),
(530, 1, 'e8b2f496-ae72-c9b0-0bee-958f34e23c19', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-HELM', 'https://www.nydiamondusa.com/product-page/ny-helm', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-helm/1.jpg', NULL, NULL, NULL, NULL, NULL, 199.00, 149.00, NULL, '2026-10-06 06:54:34', '2026-10-10 05:34:16'),
(543, 1, '43b9e200-6661-40e8-c664-6e9349cf0dcf', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-DOUBLE HEART', 'https://www.nydiamondusa.com/product-page/ny-double-heart', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-double-heart/1.jpg', NULL, NULL, NULL, NULL, NULL, 139.00, 119.00, NULL, '2026-10-06 06:55:02', '2026-10-10 05:34:18'),
(544, 1, 'bb9e6efd-c33e-4ebc-1e3c-87b754ceedf4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-HOPE', 'https://www.nydiamondusa.com/product-page/ny-hope', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-hope/1.jpg', NULL, NULL, NULL, NULL, NULL, 69.00, 69.00, NULL, '2026-10-06 06:55:02', '2026-10-10 05:34:18'),
(554, 1, '75d81bf0-b008-675e-7f98-5b7e4d42f3e0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-CAT', 'https://www.nydiamondusa.com/product-page/ny-cat', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-cat/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-cat/2.jpeg', NULL, NULL, NULL, NULL, 90.00, 59.00, NULL, '2026-10-06 06:55:46', '2026-10-10 05:34:19'),
(555, 1, 'e1a6fbf4-6b98-ec08-6784-f2f07d8007d0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-828', 'https://www.nydiamondusa.com/product-page/ny-828', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-828/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-828/2.jpeg', NULL, NULL, NULL, NULL, 110.00, 20.00, NULL, '2026-10-06 06:55:47', '2026-10-10 05:34:19'),
(556, 1, '22e88236-8ce5-c574-8a67-d7f3a82ab790', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-89', 'https://www.nydiamondusa.com/product-page/ny-89', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-89/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-89/2.jpeg', NULL, NULL, NULL, NULL, 159.00, 79.00, NULL, '2026-10-06 06:55:50', '2026-10-10 05:34:19'),
(557, 1, '40d23d97-0836-9141-c405-eb33f42fc367', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-88', 'https://www.nydiamondusa.com/product-page/ny-88', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-88/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-88/2.jpeg', NULL, NULL, NULL, NULL, 129.00, 125.00, NULL, '2026-10-06 06:55:52', '2026-10-10 05:34:19'),
(558, 1, 'e6c76697-e41e-e589-2812-dce906e0450d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-DEER', 'https://www.nydiamondusa.com/product-page/ny-deer', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-deer/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-deer/2.jpeg', NULL, NULL, NULL, NULL, 99.00, 79.00, NULL, '2026-10-06 06:55:56', '2026-10-10 05:34:19'),
(559, 1, '2102b4d9-bdc5-281a-2fa1-7e1606fc9b0e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-RING', 'https://www.nydiamondusa.com/product-page/ny-ring', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-ring/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-ring/2.jpeg', NULL, NULL, NULL, NULL, 120.00, 99.00, NULL, '2026-10-06 06:55:58', '2026-10-10 05:34:19'),
(560, 1, '44ffa31c-4272-8855-3e3c-3009ad2b589c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-BABY', 'https://www.nydiamondusa.com/product-page/ny-baby', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-baby/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-baby/2.jpeg', NULL, NULL, NULL, NULL, 199.00, 99.00, NULL, '2026-10-06 06:56:00', '2026-10-10 05:34:19'),
(561, 1, '5d0cac10-0e44-eb03-3b32-d4a24617bd7a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-SMILE', 'https://www.nydiamondusa.com/product-page/ny-smile', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-smile/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-smile/2.jpeg', NULL, NULL, NULL, NULL, 199.00, 99.00, NULL, '2026-10-06 06:56:02', '2026-10-10 05:34:19'),
(562, 1, 'aaf54fbe-0b90-8883-f5dd-b0c64b4a6f96', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-HAPPY', 'https://www.nydiamondusa.com/product-page/ny-happy', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-happy/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-happy/2.jpeg', NULL, NULL, NULL, NULL, 99.00, 99.00, NULL, '2026-10-06 06:56:05', '2026-10-10 05:34:20'),
(563, 1, '01d7b2b2-42e7-9ac2-0dfd-b2acb3fb61e7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-SWEET', 'https://www.nydiamondusa.com/product-page/ny-sweet', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-sweet/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-sweet/2.jpeg', NULL, NULL, NULL, NULL, 99.00, 99.00, NULL, '2026-10-06 06:56:08', '2026-10-10 05:34:20'),
(580, 1, '53524b0d-a1e8-df02-85fb-d3d125514353', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-PINEAPPLE', 'https://www.nydiamondusa.com/product-page/ny-pineapple', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-pineapple/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-pineapple/2.jpeg', NULL, NULL, NULL, 'LED crystal.', 100.00, 79.00, NULL, '2026-10-06 06:57:02', '2026-10-10 05:34:23'),
(583, 1, '16bd6333-53e7-a024-948b-e1cbd68b8e9a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NYFLMP-100', 'https://www.nydiamondusa.com/product-page/nyflmp-100', 'Images/nydaimondusa/Accesory Lighting & Lamps/nyflmp-100/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/nyflmp-100/2.jpeg', NULL, NULL, NULL, 'Crystal standing floor lamp design.', 200.00, 200.00, NULL, '2026-10-06 06:57:05', '2026-10-10 05:34:23'),
(584, 1, 'cc3f04f0-1005-d72b-d5a8-cdce14e43077', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'G100', 'https://www.nydiamondusa.com/product-page/g100', 'Images/nydaimondusa/Accesory Lighting & Lamps/g100/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/g100/2.jpeg', NULL, NULL, NULL, 'LED crystal.', 110.00, 99.00, NULL, '2026-10-06 06:57:07', '2026-10-10 05:34:23'),
(585, 1, 'd272b4af-617b-a5e8-6579-b3770aad8767', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-873', 'https://www.nydiamondusa.com/product-page/ny-873', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-873/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-873/2.jpeg', NULL, NULL, NULL, 'LED crystal.', 100.00, 79.00, NULL, '2026-10-06 06:57:09', '2026-10-10 05:34:23'),
(586, 1, '6a3a3926-469c-6c35-b417-8b67ed745174', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-G160', 'https://www.nydiamondusa.com/product-page/ny-g160', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-g160/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-g160/2.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-g160/3.jpeg', NULL, NULL, 'New lighting lamp.', 149.00, 149.00, NULL, '2026-10-06 06:57:12', '2026-10-10 05:34:23'),
(606, 1, 'e33f6c9d-248d-6126-a7ec-2391eea9197d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-BUTTERFLY', 'https://www.nydiamondusa.com/product-page/nybutterfly', 'Images/nydaimondusa/Accesory Lighting & Lamps/nybutterfly/1.jpg', 'Images/nydaimondusa/Accesory Lighting & Lamps/nybutterfly/2.jpg', NULL, NULL, NULL, 'LED crystal.', 199.00, 149.00, NULL, '2026-10-06 06:58:03', '2026-10-10 05:34:27'),
(607, 1, 'd01cb9c6-b058-521e-d5f6-b3c89c9238e4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-GUITAR', 'https://www.nydiamondusa.com/product-page/nygitar', 'Images/nydaimondusa/Accesory Lighting & Lamps/nygitar/1.jpg', 'Images/nydaimondusa/Accesory Lighting & Lamps/nygitar/2.jpg', NULL, NULL, NULL, 'LED crystal.', 180.00, 149.00, NULL, '2026-10-06 06:58:05', '2026-10-10 05:34:27'),
(608, 1, 'f626acdf-c053-479d-ce22-4dae3243fce8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'AMOR', 'https://www.nydiamondusa.com/product-page/amor', 'Images/nydaimondusa/Accesory Lighting & Lamps/amor/1.jpg', NULL, NULL, NULL, NULL, 'LED crystal.', 169.00, 129.00, NULL, '2026-10-06 06:58:06', '2026-10-10 05:34:27'),
(609, 1, '53d78bfc-4791-48af-d7a1-5b8c8d78dde2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-HAMSA', 'https://www.nydiamondusa.com/product-page/hamsa', 'Images/nydaimondusa/Accesory Lighting & Lamps/hamsa/1.jpg', NULL, NULL, NULL, NULL, 'LED crystal.', 99.00, 99.00, NULL, '2026-10-06 06:58:06', '2026-10-10 05:34:27'),
(610, 1, 'ed8ecc4a-d6a9-276f-bc0f-37a343837451', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'QURAN', 'https://www.nydiamondusa.com/product-page/quran', 'Images/nydaimondusa/Accesory Lighting & Lamps/quran/1.jpg', NULL, NULL, NULL, NULL, 'LED crystal.', 179.00, 149.00, NULL, '2026-10-06 06:58:07', '2026-10-10 05:34:27'),
(620, 1, 'd4ae5ca6-8ff7-7510-ab30-fd3975f8d769', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-A101', 'https://www.nydiamondusa.com/product-page/ny-a101-gold', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-a101-gold/1.jpg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-a101-gold/2.jpg', NULL, NULL, NULL, 'Religious crystal.', 199.00, 160.00, NULL, '2026-10-06 06:58:17', '2026-10-10 05:34:28'),
(621, 1, 'cc73c651-4e9c-8d19-90af-df7fef1f08c9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-WELCOME', 'https://www.nydiamondusa.com/product-page/ny-welcome', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-welcome/1.jpg', NULL, NULL, NULL, NULL, 'LED crystal.', 199.00, 160.00, NULL, '2026-10-06 06:58:18', '2026-10-10 05:34:29'),
(622, 1, '03c63ffb-4dcf-4b80-fb0f-211ee65745c5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-LIPS', 'https://www.nydiamondusa.com/product-page/ny-lips', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-lips/1.jpg', NULL, NULL, NULL, NULL, 'LED crystal.', 100.00, 79.00, NULL, '2026-10-06 06:58:19', '2026-10-10 05:34:29'),
(623, 1, '9396a573-4cfc-1ed5-46ab-d39a5ef02087', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-A10', 'https://www.nydiamondusa.com/product-page/ny-a10-gold', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-a10-gold/1.jpg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-a10-gold/2.jpg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-a10-gold/3.jpg', NULL, NULL, 'Religious crystal.', 100.00, 79.00, NULL, '2026-10-06 06:58:21', '2026-10-10 05:34:29'),
(624, 1, 'f8d022d2-e259-e4bc-df16-23be7a894d2e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'NY-MOHAMMAD', 'https://www.nydiamondusa.com/product-page/ny-mohammad-gold', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-mohammad-gold/1.jpg', 'Images/nydaimondusa/Accesory Lighting & Lamps/ny-mohammad-gold/2.jpg', NULL, NULL, NULL, 'Religious crystal.', 100.00, 79.00, NULL, '2026-10-06 06:58:22', '2026-10-10 05:34:29'),
(680, 1, 'c1446433-6854-a61f-ea05-7f13e75d7faa', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accesory Lighting & Lamps', 'MOLLY', 'https://www.nydiamondusa.com/product-page/lucy', 'Images/nydaimondusa/Accesory Lighting & Lamps/lucy/1.jpeg', 'Images/nydaimondusa/Accesory Lighting & Lamps/lucy/2.png', NULL, NULL, NULL, 'Glass table lamp with LED base.', 119.00, 119.00, NULL, '2026-10-06 06:59:41', '2026-10-10 05:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `Accessories`
--

CREATE TABLE `Accessories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Accessories`
--

INSERT INTO `Accessories` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(82, 1, '42eba3c1-27e0-ef88-9563-b8e179b217c2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-430', 'https://www.nydiamondusa.com/product-page/nyt-430', 'Images/nydaimondusa/Accessories/nyt-430/1.jpeg', NULL, NULL, NULL, NULL, NULL, 129.00, 129.00, NULL, '2026-10-06 06:38:10', '2026-10-06 07:23:12'),
(179, 1, 'e102219d-5624-887f-5021-e46d8f637730', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-500', 'https://www.nydiamondusa.com/product-page/nyt-500', 'Images/nydaimondusa/Accessories/nyt-500/1.jpeg', 'Images/nydaimondusa/Accessories/nyt-500/2.jpeg', NULL, NULL, NULL, 'Accessory.', 179.00, 179.00, NULL, '2026-10-06 06:41:28', '2026-10-10 05:33:18'),
(180, 1, 'dab16f66-b54c-d033-744b-39cb79e33ec5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-470', 'https://www.nydiamondusa.com/product-page/nyt-470', 'Images/nydaimondusa/Accessories/nyt-470/1.jpeg', 'Images/nydaimondusa/Accessories/nyt-470/2.jpeg', NULL, NULL, NULL, 'Accessory.', 99.00, 99.00, NULL, '2026-10-06 06:41:30', '2026-10-10 05:33:18'),
(181, 1, 'd5867393-4eed-7695-2c3b-4eaa5a274a5c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-460', 'https://www.nydiamondusa.com/product-page/nyt-460', 'Images/nydaimondusa/Accessories/nyt-460/1.jpeg', 'Images/nydaimondusa/Accessories/nyt-460/2.jpeg', NULL, NULL, NULL, 'Accessory.', 140.00, 140.00, NULL, '2026-10-06 06:41:31', '2026-10-10 05:33:18'),
(182, 1, '1cb1e16c-66fc-02a7-3821-efe5dff4e859', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-450', 'https://www.nydiamondusa.com/product-page/nyt-450', 'Images/nydaimondusa/Accessories/nyt-450/1.jpeg', 'Images/nydaimondusa/Accessories/nyt-450/2.jpeg', NULL, NULL, NULL, 'Accessory.', 140.00, 140.00, NULL, '2026-10-06 06:41:32', '2026-10-10 05:33:18'),
(183, 1, '68541bcf-fee5-33a7-09d1-e62f172b611a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-420', 'https://www.nydiamondusa.com/product-page/nyt-420', 'Images/nydaimondusa/Accessories/nyt-420/1.jpeg', 'Images/nydaimondusa/Accessories/nyt-420/2.jpeg', NULL, NULL, NULL, 'Accessory.', 139.00, 139.00, NULL, '2026-10-06 06:41:34', '2026-10-10 05:33:19'),
(184, 1, 'd2943c6a-eee0-96c3-7e52-4c7c5a0088f5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-400', 'https://www.nydiamondusa.com/product-page/nyt-400', 'Images/nydaimondusa/Accessories/nyt-400/1.jpeg', 'Images/nydaimondusa/Accessories/nyt-400/2.jpeg', NULL, NULL, NULL, 'Accessory.', 129.00, 129.00, NULL, '2026-10-06 06:41:36', '2026-10-10 05:33:19'),
(185, 1, 'e1ecd418-f269-b077-21ec-ec89d47518ae', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-290', 'https://www.nydiamondusa.com/product-page/nyt-290', 'Images/nydaimondusa/Accessories/nyt-290/1.jpeg', 'Images/nydaimondusa/Accessories/nyt-290/2.jpeg', NULL, NULL, NULL, 'Accessory.', 129.00, 129.00, NULL, '2026-10-06 06:41:37', '2026-10-10 05:33:19'),
(201, 1, 'ac2daedd-d6f7-e5b9-0f9c-ef2692a0d578', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-90 BLACK', 'https://www.nydiamondusa.com/product-page/nyt-90-black', 'Images/nydaimondusa/Accessories/nyt-90-black/1.jpg', 'Images/nydaimondusa/Accessories/nyt-90-black/2.jpeg', NULL, NULL, NULL, 'Accessory statue.', 120.00, 120.00, NULL, '2026-10-06 06:42:11', '2026-10-10 05:33:21'),
(247, 1, 'ffeddace-4a20-2d6d-3691-09ba9450f6e5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-703', 'https://www.nydiamondusa.com/product-page/ny-703', 'Images/nydaimondusa/Accessories/ny-703/1.jpg', NULL, NULL, NULL, NULL, NULL, 399.00, 149.00, NULL, '2026-10-06 06:43:13', '2026-10-10 05:33:26'),
(248, 1, 'df9a017a-2f8d-5783-1fd0-c8d000cad3ab', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-101W', 'https://www.nydiamondusa.com/product-page/ny-101w', 'Images/nydaimondusa/Accessories/ny-101w/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:43:14', '2026-10-10 05:33:26'),
(249, 1, '759c4306-71d0-fa1d-ef28-e3527fd09649', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-100W', 'https://www.nydiamondusa.com/product-page/ny-100w', 'Images/nydaimondusa/Accessories/ny-100w/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:43:14', '2026-10-10 05:33:26'),
(250, 1, 'a2530003-f32e-d6cd-a7cb-08526f8545e6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-123G', 'https://www.nydiamondusa.com/product-page/ny-123g', 'Images/nydaimondusa/Accessories/ny-123g/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:43:15', '2026-10-10 05:33:26'),
(251, 1, '0a356b7a-9bad-4c67-012b-d312f6af8ef4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-121G', 'https://www.nydiamondusa.com/product-page/ny-121g', 'Images/nydaimondusa/Accessories/ny-121g/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:43:16', '2026-10-10 05:33:26'),
(252, 1, '24aeee95-3ec2-c3e4-85f2-b7cacba006c9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-120G', 'https://www.nydiamondusa.com/product-page/ny-120g', 'Images/nydaimondusa/Accessories/ny-120g/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:43:16', '2026-10-10 05:33:26'),
(253, 1, '05dd30bd-5ddf-cab9-0621-3621191dd917', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-118W', 'https://www.nydiamondusa.com/product-page/ny-118w', 'Images/nydaimondusa/Accessories/ny-118w/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:43:18', '2026-10-10 05:33:27'),
(254, 1, 'f32f1736-0f20-f827-528c-f7d2d938f476', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-115G', 'https://www.nydiamondusa.com/product-page/ny-116g-1', 'Images/nydaimondusa/Accessories/ny-116g-1/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:43:19', '2026-10-10 05:33:27'),
(255, 1, 'fdcf77e8-5f40-89b6-008a-3bbc487e4ca2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-116G', 'https://www.nydiamondusa.com/product-page/ny-116g', 'Images/nydaimondusa/Accessories/ny-116g/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:43:19', '2026-10-10 05:33:27'),
(256, 1, '2c4a6ede-9eec-1706-4f96-d578624248d1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-112B', 'https://www.nydiamondusa.com/product-page/ny-112b', 'Images/nydaimondusa/Accessories/ny-112b/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:43:20', '2026-10-10 05:33:27'),
(257, 1, '24ed9f1d-9aa1-9acf-947d-66ea6d110f5c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-110G', 'https://www.nydiamondusa.com/product-page/ny-110g', 'Images/nydaimondusa/Accessories/ny-110g/1.jpg', NULL, NULL, NULL, NULL, NULL, 39.00, 39.00, NULL, '2026-10-06 06:43:21', '2026-10-10 05:33:27'),
(258, 1, '4c8fc20e-3b3b-8129-b469-5967fc0b92bb', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-93B', 'https://www.nydiamondusa.com/product-page/ny-93b', 'Images/nydaimondusa/Accessories/ny-93b/1.jpg', NULL, NULL, NULL, NULL, NULL, 29.00, 29.00, NULL, '2026-10-06 06:43:22', '2026-10-10 05:33:27'),
(259, 1, 'd504e68c-586b-f4cc-c65e-6c3d91165701', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-83W', 'https://www.nydiamondusa.com/product-page/ny-83b', 'Images/nydaimondusa/Accessories/ny-83b/1.jpg', NULL, NULL, NULL, NULL, NULL, 29.00, 29.00, NULL, '2026-10-06 06:43:23', '2026-10-10 05:33:27'),
(292, 1, '28020055-0d83-e085-0c2e-c8cc435cf49e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-122G', 'https://www.nydiamondusa.com/product-page/ny-122g', 'Images/nydaimondusa/Accessories/ny-122g/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:44:33', '2026-10-10 05:33:29'),
(293, 1, '89fcc2d6-4ca9-b5fb-121c-619efc4d7237', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-95W', 'https://www.nydiamondusa.com/product-page/ny-97w', 'Images/nydaimondusa/Accessories/ny-97w/1.jpg', NULL, NULL, NULL, NULL, NULL, 29.00, 29.00, NULL, '2026-10-06 06:44:33', '2026-10-10 05:33:29'),
(295, 1, '64d23e46-74c1-b7c3-e43c-f1c29918f468', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-124G', 'https://www.nydiamondusa.com/product-page/ny-124g', 'Images/nydaimondusa/Accessories/ny-124g/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:44:36', '2026-10-10 05:33:31'),
(296, 1, 'ebd91913-84e6-91b9-558d-921629003641', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-119G', 'https://www.nydiamondusa.com/product-page/ny-119g', 'Images/nydaimondusa/Accessories/ny-119g/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:44:36', '2026-10-10 05:33:31'),
(297, 1, '4571f0e3-3fc6-f9c1-596c-06ac9bee1d26', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-117B', 'https://www.nydiamondusa.com/product-page/ny-117b', 'Images/nydaimondusa/Accessories/ny-117b/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:44:36', '2026-10-10 05:33:31'),
(298, 1, '06c89dd2-2a20-ab00-7fd3-898a0826d4e8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-115G', 'https://www.nydiamondusa.com/product-page/ny-115g', 'Images/nydaimondusa/Accessories/ny-115g/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:44:36', '2026-10-10 05:33:31'),
(299, 1, 'f48d22fd-1f7d-063c-fde9-0c0621e932e0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-109G', 'https://www.nydiamondusa.com/product-page/ny-109g', 'Images/nydaimondusa/Accessories/ny-109g/1.jpg', NULL, NULL, NULL, NULL, NULL, 29.00, 29.00, NULL, '2026-10-06 06:44:37', '2026-10-10 05:33:31'),
(300, 1, '36bbd993-91c6-5331-236f-40d244111ac4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-111B', 'https://www.nydiamondusa.com/product-page/ny-111b', 'Images/nydaimondusa/Accessories/ny-111b/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:44:37', '2026-10-10 05:33:31'),
(301, 1, '27903403-bafe-3aea-af72-1ce79d253080', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-102G', 'https://www.nydiamondusa.com/product-page/ny-102', 'Images/nydaimondusa/Accessories/ny-102/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:44:39', '2026-10-10 05:33:33'),
(302, 1, '583546eb-0e87-203a-d046-a93cfa4d65c2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-99W', 'https://www.nydiamondusa.com/product-page/ny-99w', 'Images/nydaimondusa/Accessories/ny-99w/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:44:39', '2026-10-10 05:33:33'),
(343, 1, '4b787c4c-0d53-cc25-969c-cf8dd8cd9c10', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYD-3', 'https://www.nydiamondusa.com/product-page/nyd-3', 'Images/nydaimondusa/Accessories/nyd-3/1.jpg', NULL, NULL, NULL, NULL, NULL, 179.00, 179.00, NULL, '2026-10-06 06:47:22', '2026-10-06 07:23:14'),
(356, 1, 'abd759ac-844f-564f-c7ae-295483fc5e63', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYD-2', 'https://www.nydiamondusa.com/product-page/nyd-4', 'Images/nydaimondusa/Accessories/nyd-4/1.jpg', NULL, NULL, NULL, NULL, NULL, 79.00, 79.00, NULL, '2026-10-06 06:47:33', '2026-10-06 07:23:14'),
(363, 1, 'ae1f2d7d-1885-7917-d411-ec76bd860f3b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-130 GOLD', 'https://www.nydiamondusa.com/product-page/nyt-130-gold', 'Images/nydaimondusa/Accessories/nyt-130-gold/1.jpg', NULL, NULL, NULL, NULL, NULL, 79.00, 79.00, NULL, '2026-10-06 06:47:40', '2026-10-06 07:23:14'),
(364, 1, 'fa1c1ca3-ec17-298e-3def-ef60a3989c1c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-50', 'https://www.nydiamondusa.com/product-page/nyt-50', 'Images/nydaimondusa/Accessories/nyt-50/1.jpg', 'Images/nydaimondusa/Accessories/nyt-50/2.jpeg', NULL, NULL, NULL, 'Accessory.', 149.00, 149.00, NULL, '2026-10-06 06:47:41', '2026-10-10 05:33:44'),
(365, 1, '19f6467e-7b6c-6900-7470-86ff7099185c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-200', 'https://www.nydiamondusa.com/product-page/nyt-200-1', 'Images/nydaimondusa/Accessories/nyt-200-1/1.jpeg', 'Images/nydaimondusa/Accessories/nyt-200-1/2.jpeg', NULL, NULL, NULL, 'Accessory statue.', 129.00, 129.00, NULL, '2026-10-06 06:47:42', '2026-10-10 05:33:44'),
(366, 1, '6a6d7470-d11f-1a13-6403-060da3f51ad9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-210', 'https://www.nydiamondusa.com/product-page/nyt-210', 'Images/nydaimondusa/Accessories/nyt-210/1.jpg', NULL, NULL, NULL, NULL, NULL, 139.00, 139.00, NULL, '2026-10-06 06:47:43', '2026-10-06 07:23:14'),
(367, 1, 'b1f59727-77de-b636-c0e4-b194ef4da908', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-190', 'https://www.nydiamondusa.com/product-page/nyt-130-1', 'Images/nydaimondusa/Accessories/nyt-130-1/1.jpg', NULL, NULL, NULL, NULL, NULL, 79.00, 79.00, NULL, '2026-10-06 06:47:44', '2026-10-06 07:23:14'),
(368, 1, 'cfc1e4cd-e03e-230e-e524-b6e14f7e8289', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-140 SILVER', 'https://www.nydiamondusa.com/product-page/nyt-130', 'Images/nydaimondusa/Accessories/nyt-130/1.jpg', NULL, NULL, NULL, NULL, NULL, 79.00, 79.00, NULL, '2026-10-06 06:47:44', '2026-10-06 07:23:14'),
(398, 1, '3994e369-fa7b-2926-aaef-6ebe3977fc95', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYD-6', 'https://www.nydiamondusa.com/product-page/nyd-6', 'Images/nydaimondusa/Accessories/nyd-6/1.jpg', NULL, NULL, NULL, NULL, NULL, 59.00, 59.00, NULL, '2026-10-06 06:49:26', '2026-10-06 07:23:14'),
(426, 1, '2d38ca99-c236-ef3f-8b6f-cdd3694b8d57', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'GEORGINA', 'https://www.nydiamondusa.com/product-page/georgina', 'Images/nydaimondusa/Accessories/georgina/1.jpg', NULL, NULL, NULL, NULL, 'Diamond end table.', 39.00, 39.00, NULL, '2026-10-06 06:50:40', '2026-10-10 05:33:59'),
(427, 1, '71ddee68-691c-7475-b774-ea47af0abb22', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'GRACE', 'https://www.nydiamondusa.com/product-page/grace', 'Images/nydaimondusa/Accessories/grace/1.jpg', NULL, NULL, NULL, NULL, 'Table candle holder.', 45.00, 45.00, NULL, '2026-10-06 06:50:42', '2026-10-10 05:33:59'),
(428, 1, 'eadd6216-4e2d-0c43-601a-8b13233f33d4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'CLOVER', 'https://www.nydiamondusa.com/product-page/clover', 'Images/nydaimondusa/Accessories/clover/1.jpg', NULL, NULL, NULL, NULL, 'Glass table candle holder.', 89.00, 89.00, NULL, '2026-10-06 06:50:43', '2026-10-10 05:33:59'),
(496, 1, '02bbab98-66da-acec-2786-508b0fc30f0c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY3-42', 'https://www.nydiamondusa.com/product-page/jm3-42-gold-1', 'Images/nydaimondusa/Accessories/jm3-42-gold-1/1.jpeg', NULL, NULL, NULL, NULL, 'Crystal set in gold.', 139.00, 120.00, NULL, '2026-10-06 06:53:51', '2026-10-10 05:34:08'),
(497, 1, '05ebc44e-677a-7440-cfd1-db4379a95bc1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM3-40 GOLD', 'https://www.nydiamondusa.com/product-page/jm3-40-gold', 'Images/nydaimondusa/Accessories/jm3-40-gold/1.jpeg', NULL, NULL, NULL, NULL, 'Crystal decoration.', 99.00, 99.00, NULL, '2026-10-06 06:53:51', '2026-10-10 05:34:08'),
(499, 1, 'a3dfb58e-55c9-4d17-0966-a64442d70257', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY3-45 SILVER', 'https://www.nydiamondusa.com/product-page/jm3-45-silver', 'Images/nydaimondusa/Accessories/jm3-45-silver/1.jpg', NULL, NULL, NULL, NULL, 'Silver candle holder decoration.', 129.00, 110.00, NULL, '2026-10-06 06:53:55', '2026-10-10 05:34:11'),
(500, 1, '9a6159cf-3944-2b81-182e-e1f2d4d3e0bd', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY3-44 GOLD', 'https://www.nydiamondusa.com/product-page/jm3-44-gold', 'Images/nydaimondusa/Accessories/jm3-44-gold/1.jpg', NULL, NULL, NULL, NULL, 'Gold candle holder decoration.', 110.00, 110.00, NULL, '2026-10-06 06:53:56', '2026-10-10 05:34:11'),
(501, 1, 'fb1b04ec-ad88-336a-96c3-d385231b4c9e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM3-41 SILVER', 'https://www.nydiamondusa.com/product-page/jm3-41-silver', 'Images/nydaimondusa/Accessories/jm3-41-silver/1.jpg', NULL, NULL, NULL, NULL, 'Crystal decoration.', 99.00, 99.00, NULL, '2026-10-06 06:53:58', '2026-10-10 05:34:11'),
(502, 1, '43ad1a95-e0ed-ea08-5a49-cd4175d06846', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM3-34 GOLD', 'https://www.nydiamondusa.com/product-page/jm3-34-gold', 'Images/nydaimondusa/Accessories/jm3-34-gold/1.jpg', NULL, NULL, NULL, NULL, 'Crystal set.', 49.00, 49.00, NULL, '2026-10-06 06:53:59', '2026-10-10 05:34:13'),
(515, 1, 'c3bcafb5-117f-a0ad-2585-c49b22cadb6a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY3-43', 'https://www.nydiamondusa.com/product-page/jm3-38', 'Images/nydaimondusa/Accessories/jm3-38/1.jpg', NULL, NULL, NULL, NULL, 'Crystal sets.', 139.00, 120.00, NULL, '2026-10-06 06:54:17', '2026-10-10 05:34:15'),
(516, 1, 'a6efc245-fbec-3742-5743-b450de5553b7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYJM5-16 SILVER', 'https://www.nydiamondusa.com/product-page/nyjm5-16-silver', 'Images/nydaimondusa/Accessories/nyjm5-16-silver/1.jpg', NULL, NULL, NULL, NULL, 'Crystal sets.', 65.00, 65.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:54:19', '2026-10-10 05:34:15'),
(517, 1, '1e93ead7-09b0-f7b6-26f5-8e5e6452610c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYJM3-13 WHITE', 'https://www.nydiamondusa.com/product-page/nyjm3-13-white', 'Images/nydaimondusa/Accessories/nyjm3-13-white/1.jpg', NULL, NULL, NULL, NULL, 'Crystal sets.', 129.00, 110.00, NULL, '2026-10-06 06:54:19', '2026-10-10 05:34:15'),
(518, 1, '5b89d61e-eab4-fb20-8437-be6d9908bce1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYJM3-12 SILVER', 'https://www.nydiamondusa.com/product-page/nyjm3-12-silver', 'Images/nydaimondusa/Accessories/nyjm3-12-silver/1.jpeg', 'Images/nydaimondusa/Accessories/nyjm3-12-silver/2.jpg', NULL, NULL, NULL, 'Crystal sets.', 129.00, 110.00, NULL, '2026-10-06 06:54:21', '2026-10-10 05:34:15'),
(519, 1, '27c2c07a-734c-44e0-e5f9-b4d35fce4816', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYJM3-11 GOLD', 'https://www.nydiamondusa.com/product-page/nyjm3-11-gold', 'Images/nydaimondusa/Accessories/nyjm3-11-gold/1.jpeg', 'Images/nydaimondusa/Accessories/nyjm3-11-gold/2.jpg', NULL, NULL, NULL, 'Crystal sets.', 129.00, 110.00, NULL, '2026-10-06 06:54:23', '2026-10-10 05:34:15'),
(520, 1, 'c1e5b886-1198-214a-09d5-a69216f73dd4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-70', 'https://www.nydiamondusa.com/product-page/nyjm5-12-silver', 'Images/nydaimondusa/Accessories/nyjm5-12-silver/1.jpeg', 'Images/nydaimondusa/Accessories/nyjm5-12-silver/2.jpeg', NULL, NULL, NULL, 'Accessory.', 120.00, 120.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:54:24', '2026-10-10 05:34:15'),
(521, 1, '8e82f474-1ec2-6d0e-f32e-e41bab78df6e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-80', 'https://www.nydiamondusa.com/product-page/nyjm5-11-black', 'Images/nydaimondusa/Accessories/nyjm5-11-black/1.jpeg', NULL, NULL, NULL, NULL, 'Accessory statue.', 120.00, 120.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:54:25', '2026-10-10 05:34:15'),
(522, 1, '3b135eb3-26e0-0a95-784d-7c6bf28e34fa', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT 100 GOLD', 'https://www.nydiamondusa.com/product-page/nyjm5-8-gold', 'Images/nydaimondusa/Accessories/nyjm5-8-gold/1.jpg', 'Images/nydaimondusa/Accessories/nyjm5-8-gold/2.jpg', NULL, NULL, NULL, 'Accessory statue.', 199.00, 199.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:54:27', '2026-10-10 05:34:15'),
(523, 1, 'b4df242d-08ca-8eb4-507f-322627cbd0d3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT 110 SILVER', 'https://www.nydiamondusa.com/product-page/nyjm5-7-silver', 'Images/nydaimondusa/Accessories/nyjm5-7-silver/1.jpg', 'Images/nydaimondusa/Accessories/nyjm5-7-silver/2.jpg', NULL, NULL, NULL, 'Accessory statue.', 199.00, 199.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:54:28', '2026-10-10 05:34:15'),
(524, 1, 'c3bf6ab1-10b5-099b-ae05-238867e006e4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT 120 BLACK', 'https://www.nydiamondusa.com/product-page/nyjm5-6-black', 'Images/nydaimondusa/Accessories/nyjm5-6-black/1.jpg', 'Images/nydaimondusa/Accessories/nyjm5-6-black/2.jpg', NULL, NULL, NULL, 'Accessory statue.', 199.00, 199.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:54:29', '2026-10-10 05:34:15'),
(525, 1, 'd4992499-414f-9f4c-cfab-9ee4d9763a03', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-40', 'https://www.nydiamondusa.com/product-page/nyjm5-2-silver', 'Images/nydaimondusa/Accessories/nyjm5-2-silver/1.jpeg', 'Images/nydaimondusa/Accessories/nyjm5-2-silver/2.jpeg', NULL, NULL, NULL, 'Accessory.', 140.00, 140.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:54:30', '2026-10-10 05:34:16'),
(526, 1, 'e8e128d8-5bbb-89d3-6132-c84b3eb110d7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYT-30', 'https://www.nydiamondusa.com/product-page/nyjm5-1-gold', 'Images/nydaimondusa/Accessories/nyjm5-1-gold/1.jpeg', 'Images/nydaimondusa/Accessories/nyjm5-1-gold/2.jpeg', NULL, NULL, NULL, 'Accessory.', 140.00, 140.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:54:31', '2026-10-10 05:34:16'),
(534, 1, '0f7ee335-b519-6a1d-ec5b-392fd2224492', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'LAZARO', 'https://www.nydiamondusa.com/product-page/lazaro', 'Images/nydaimondusa/Accessories/lazaro/1.jpg', NULL, NULL, NULL, NULL, 'Crystal new candle holder.', 149.00, 149.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:54:43', '2026-10-10 05:34:16'),
(565, 1, '9afcc97e-d679-f3ae-4dbc-51e18094c571', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'LARGO', 'https://www.nydiamondusa.com/product-page/largo', 'Images/nydaimondusa/Accessories/largo/1.jpg', NULL, NULL, NULL, NULL, 'New candle holder.', 79.00, 79.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:56:10', '2026-10-10 05:34:20'),
(566, 1, '1b51830f-89cb-dd73-ccfb-ef095cba4b6d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM10-3', 'https://www.nydiamondusa.com/product-page/jm10-3', 'Images/nydaimondusa/Accessories/jm10-3/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:56:11', '2026-10-10 05:34:20'),
(567, 1, 'e48fc13c-6dd1-cb33-d64b-f9b798874df3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM10-9', 'https://www.nydiamondusa.com/product-page/jm10-9', 'Images/nydaimondusa/Accessories/jm10-9/1.jpeg', NULL, NULL, NULL, NULL, NULL, 99.00, 99.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:56:11', '2026-10-10 05:34:20'),
(568, 1, '3e587511-6275-1526-760e-62d1b7f745a1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM10-8', 'https://www.nydiamondusa.com/product-page/jm10-8', 'Images/nydaimondusa/Accessories/jm10-8/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:56:12', '2026-10-10 05:34:20'),
(569, 1, 'df1775eb-5c63-fbd5-4916-843588fe7bda', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM10-6', 'https://www.nydiamondusa.com/product-page/jm10-6', 'Images/nydaimondusa/Accessories/jm10-6/1.jpeg', NULL, NULL, NULL, NULL, NULL, 99.00, 99.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:56:13', '2026-10-10 05:34:20'),
(570, 1, '4b184061-36ad-c670-6a90-8b01028124b1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM10-5', 'https://www.nydiamondusa.com/product-page/jm10-5', 'Images/nydaimondusa/Accessories/jm10-5/1.jpg', NULL, NULL, NULL, NULL, NULL, 69.00, 69.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:56:14', '2026-10-10 05:34:20'),
(571, 1, 'bd9d75bc-0147-339b-210d-f28170ae9dc2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM10-4', 'https://www.nydiamondusa.com/product-page/jm10-4', 'Images/nydaimondusa/Accessories/jm10-4/1.jpg', NULL, NULL, NULL, NULL, NULL, 69.00, 69.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:56:14', '2026-10-10 05:34:21'),
(572, 1, '473d0377-315b-091a-01ae-a497729247c6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM10-2', 'https://www.nydiamondusa.com/product-page/jm10-2', 'Images/nydaimondusa/Accessories/jm10-2/1.jpeg', NULL, NULL, NULL, NULL, NULL, 59.00, 59.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:56:15', '2026-10-10 05:34:21'),
(598, 1, 'ba9e887a-aa52-730c-f150-c7ba7af98214', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NY-HOME-WALL', 'https://www.nydiamondusa.com/product-page/ny-home-wall', 'Images/nydaimondusa/Accessories/ny-home-wall/1.jpg', 'Images/nydaimondusa/Accessories/ny-home-wall/2.jpg', NULL, NULL, NULL, NULL, 99.00, 49.00, NULL, '2026-10-06 06:57:54', '2026-10-10 05:34:24'),
(599, 1, '3f0c6977-d6ea-3bd3-24ef-041fcc36cf56', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM3-24 BLACK', 'https://www.nydiamondusa.com/product-page/jm3-24-black', 'Images/nydaimondusa/Accessories/jm3-24-black/1.jpg', NULL, NULL, NULL, NULL, 'Crystal sets.', 15.00, 15.00, NULL, '2026-10-06 06:57:55', '2026-10-10 05:34:25'),
(600, 1, 'a59bfda4-e770-b8a8-65ee-fb0b1ae2452d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM3-22 GOLD', 'https://www.nydiamondusa.com/product-page/jm3-22-gold', 'Images/nydaimondusa/Accessories/jm3-22-gold/1.jpg', NULL, NULL, NULL, NULL, 'Crystal sets.', 15.00, 15.00, NULL, '2026-10-06 06:57:57', '2026-10-10 05:34:25'),
(601, 1, '83d14da1-d207-9a88-b6cc-f04683f69a9b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM3-21 WHITE', 'https://www.nydiamondusa.com/product-page/jm3-21-white', 'Images/nydaimondusa/Accessories/jm3-21-white/1.jpg', NULL, NULL, NULL, NULL, 'Crystal sets.', 15.00, 15.00, NULL, '2026-10-06 06:57:58', '2026-10-10 05:34:25'),
(602, 1, '3ab8eb04-365e-efee-f482-79464cd60284', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM3-19 SILVER', 'https://www.nydiamondusa.com/product-page/jm3-19-silver', 'Images/nydaimondusa/Accessories/jm3-19-silver/1.jpg', NULL, NULL, NULL, NULL, 'Crystal sets.', 45.00, 45.00, NULL, '2026-10-06 06:57:59', '2026-10-10 05:34:26'),
(603, 1, '1d2d8330-64f5-094d-c1b1-2efc7682eda5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM3-18 PINK', 'https://www.nydiamondusa.com/product-page/jm3-18-pink', 'Images/nydaimondusa/Accessories/jm3-18-pink/1.jpg', NULL, NULL, NULL, NULL, 'Crystal sets.', 45.00, 45.00, NULL, '2026-10-06 06:58:00', '2026-10-10 05:34:27'),
(604, 1, '5e6caadd-81a9-5fc1-85cc-60a56e2e5436', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM3-18 GOLD', 'https://www.nydiamondusa.com/product-page/jm3-18-gold', 'Images/nydaimondusa/Accessories/jm3-18-gold/1.jpg', NULL, NULL, NULL, NULL, 'Crystal sets.', 45.00, 45.00, NULL, '2026-10-06 06:58:00', '2026-10-10 05:34:27'),
(605, 1, '537428c5-85b9-8735-9f2e-d9fd7a844603', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM3-18 WHITE', 'https://www.nydiamondusa.com/product-page/jm3-18-white', 'Images/nydaimondusa/Accessories/jm3-18-white/1.jpg', NULL, NULL, NULL, NULL, 'Crystal sets.', 45.00, 45.00, NULL, '2026-10-06 06:58:02', '2026-10-10 05:34:27'),
(616, 1, 'b860b534-69f8-1020-c461-11b4bcf8021c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYD-1', 'https://www.nydiamondusa.com/product-page/ny-g194', 'Images/nydaimondusa/Accessories/ny-g194/1.jpg', NULL, NULL, NULL, NULL, NULL, 89.00, 89.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:58:12', '2026-10-10 05:34:28'),
(617, 1, '7f441e32-6048-0aef-1636-ea4c5dbf84e9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM3-18 SILVER', 'https://www.nydiamondusa.com/product-page/jm3-10', 'Images/nydaimondusa/Accessories/jm3-10/1.jpg', NULL, NULL, NULL, NULL, 'Crystal sets.', 45.00, 45.00, NULL, '2026-10-06 06:58:13', '2026-10-10 05:34:28'),
(618, 1, '619b7f53-1672-430c-93bd-cbfb0692d4c5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'JM3-1 GOLD', 'https://www.nydiamondusa.com/product-page/jm3-1', 'Images/nydaimondusa/Accessories/jm3-1/1.jpg', NULL, NULL, NULL, NULL, 'Crystal sets.', 40.00, 40.00, NULL, '2026-10-06 06:58:15', '2026-10-10 05:34:28'),
(654, 1, 'eaed6fd0-c9ab-3c30-ab30-0fe31edf2701', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter U', 'https://www.nydiamondusa.com/product-page/letter-u', 'Images/nydaimondusa/Accessories/letter-u/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:58:59', '2026-10-10 05:34:32'),
(655, 1, '81ed2710-41da-a0d2-da1c-a3dfe03534f0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter T', 'https://www.nydiamondusa.com/product-page/letter-t', 'Images/nydaimondusa/Accessories/letter-t/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:00', '2026-10-10 05:34:32'),
(656, 1, 'cbdc12ad-fdc1-00e6-3ce8-152f3d5252a0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter S', 'https://www.nydiamondusa.com/product-page/letter-s', 'Images/nydaimondusa/Accessories/letter-s/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:01', '2026-10-10 05:34:32'),
(657, 1, '2f452af5-9a33-c8e4-5e29-5bc4f5a5ed24', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter R', 'https://www.nydiamondusa.com/product-page/letter-r', 'Images/nydaimondusa/Accessories/letter-r/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:02', '2026-10-10 05:34:32'),
(658, 1, '84d62cff-6b6f-ea0a-61b1-ade5080b4d52', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter Q', 'https://www.nydiamondusa.com/product-page/letter-q', 'Images/nydaimondusa/Accessories/letter-q/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:03', '2026-10-10 05:34:32'),
(659, 1, '3156dadc-f44d-405a-1cb5-f3fd08e0628f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter P', 'https://www.nydiamondusa.com/product-page/letter-p', 'Images/nydaimondusa/Accessories/letter-p/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:06', '2026-10-10 05:34:32'),
(660, 1, 'aae5b191-09f4-267e-6634-11e08bf889df', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter O', 'https://www.nydiamondusa.com/product-page/letter-o', 'Images/nydaimondusa/Accessories/letter-o/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:08', '2026-10-10 05:34:33'),
(661, 1, '59d8f6f0-f149-11a1-29a5-e7207066d9cc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter N', 'https://www.nydiamondusa.com/product-page/letter-n', 'Images/nydaimondusa/Accessories/letter-n/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:09', '2026-10-10 05:34:33'),
(662, 1, '2aea1426-793f-4878-e179-3e7fd89b14db', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter L', 'https://www.nydiamondusa.com/product-page/letter-l', 'Images/nydaimondusa/Accessories/letter-l/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:11', '2026-10-10 05:34:33'),
(663, 1, '2dd75b6b-6a41-e92c-d7ec-5cbc608712e8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter K', 'https://www.nydiamondusa.com/product-page/letter-k', 'Images/nydaimondusa/Accessories/letter-k/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:12', '2026-10-10 05:34:33'),
(664, 1, 'f763bbcb-f978-6a4d-5901-81c1a2ff0cf1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter J', 'https://www.nydiamondusa.com/product-page/letter-j', 'Images/nydaimondusa/Accessories/letter-j/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:13', '2026-10-10 05:34:33'),
(665, 1, '9ca920e1-5365-ece5-5925-45d9f75ad79a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter I', 'https://www.nydiamondusa.com/product-page/letter-i', 'Images/nydaimondusa/Accessories/letter-i/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:13', '2026-10-10 05:34:33'),
(666, 1, 'a6b5aa80-b512-1a90-2998-dd4c269d7cbc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter H', 'https://www.nydiamondusa.com/product-page/letter-h', 'Images/nydaimondusa/Accessories/letter-h/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:14', '2026-10-10 05:34:33'),
(667, 1, '5f7b7243-a853-231e-2e38-04806620c2ba', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter G', 'https://www.nydiamondusa.com/product-page/letter-g', 'Images/nydaimondusa/Accessories/letter-g/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:16', '2026-10-10 05:34:33'),
(668, 1, '5602faa1-6bd8-089b-24d1-4bd7eac0db14', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter F', 'https://www.nydiamondusa.com/product-page/letter-f', 'Images/nydaimondusa/Accessories/letter-f/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:17', '2026-10-10 05:34:33'),
(669, 1, '82af01d3-bd7c-0d17-9b99-9ee678552e0a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter E', 'https://www.nydiamondusa.com/product-page/letter-e', 'Images/nydaimondusa/Accessories/letter-e/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:18', '2026-10-10 05:34:33'),
(670, 1, '7bc79cd9-c3a6-4dba-99c8-a4b794abdc7c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter D', 'https://www.nydiamondusa.com/product-page/letter-d', 'Images/nydaimondusa/Accessories/letter-d/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:20', '2026-10-10 05:34:34'),
(671, 1, '8a4e5cdd-5b56-e85f-9fdd-011c20190370', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter B', 'https://www.nydiamondusa.com/product-page/letter-b', 'Images/nydaimondusa/Accessories/letter-b/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:22', '2026-10-10 05:34:34'),
(681, 1, 'a65899db-c769-d6e4-30bc-1e5ce596aaad', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'Letter A', 'https://www.nydiamondusa.com/product-page/all-letters', 'Images/nydaimondusa/Accessories/all-letters/1.png', NULL, NULL, NULL, NULL, NULL, 75.00, 75.00, NULL, '2026-10-06 06:59:42', '2026-10-10 05:34:35'),
(682, 1, 'ce86016d-427d-0fa8-fa45-91688a67ff24', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Accessories', 'NYLOVE', 'https://www.nydiamondusa.com/product-page/nylove', 'Images/nydaimondusa/Accessories/nylove/1.png', NULL, NULL, NULL, NULL, NULL, 99.00, 99.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:59:43', '2026-10-10 05:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `Bar Stools & Vanity Stools`
--

CREATE TABLE `Bar Stools & Vanity Stools` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Bar Stools & Vanity Stools`
--

INSERT INTO `Bar Stools & Vanity Stools` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(490, 1, '1cbb5442-f5a1-0e72-e541-972b848e3415', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bar Stools & Vanity Stools', 'KASSANDRA GREY', 'https://www.nydiamondusa.com/product-page/kassandra-grey', 'Images/nydaimondusa/Bar Stools & Vanity Stools/kassandra-grey/1.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/kassandra-grey/2.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/kassandra-grey/3.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/kassandra-grey/4.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/kassandra-grey/5.jpg', 'Velvet vanity chair.', 179.00, 179.00, NULL, '2026-10-06 06:52:44', '2026-10-10 05:34:08'),
(491, 1, 'd10f8ebd-7d00-4757-5363-541c9563aee8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bar Stools & Vanity Stools', 'JULIE BLUE', 'https://www.nydiamondusa.com/product-page/julie-blue', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-blue/1.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-blue/2.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-blue/3.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-blue/4.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-blue/5.jpg', 'Velvet vanity chair.', 199.00, 199.00, NULL, '2026-10-06 06:53:05', '2026-10-10 05:34:08'),
(492, 1, '534755bd-3df0-e33c-46e6-f8e07cd88e43', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bar Stools & Vanity Stools', 'JULIE PINK', 'https://www.nydiamondusa.com/product-page/julie-pink', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-pink/1.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-pink/2.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-pink/3.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-pink/4.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-pink/5.jpg', 'Velvet vanity chair.', 199.00, 199.00, NULL, '2026-10-06 06:53:24', '2026-10-10 05:34:08'),
(493, 1, '5c8c563b-5b10-d7b8-237c-3275cc55a147', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bar Stools & Vanity Stools', 'JULIE GREY', 'https://www.nydiamondusa.com/product-page/julie-grey', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-grey/1.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-grey/2.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-grey/3.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-grey/4.jpg', 'Images/nydaimondusa/Bar Stools & Vanity Stools/julie-grey/5.jpg', 'Velvet vanity chair.', 199.00, 199.00, NULL, '2026-10-06 06:53:46', '2026-10-10 05:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `Bean Bag`
--

CREATE TABLE `Bean Bag` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Bean Bag`
--

INSERT INTO `Bean Bag` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(157, 1, '1a40b3bf-28ad-4378-6677-12f6d10a896a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'VELVET GREY 1 BG', 'https://www.nydiamondusa.com/product-page/velvet-large-grey', 'Images/nydaimondusa/Bean Bag/velvet-large-grey/1.jpg', 'Images/nydaimondusa/Bean Bag/velvet-large-grey/2.jpg', 'Images/nydaimondusa/Bean Bag/velvet-large-grey/3.jpg', NULL, NULL, 'Bean bag.', 179.00, 179.00, NULL, '2026-10-06 06:40:51', '2026-10-10 05:33:18'),
(158, 1, 'bfc0c516-5da1-1d79-1199-6ab2e49a6cbe', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'VELVET BLACK 1 BG', 'https://www.nydiamondusa.com/product-page/velvet-large-black', 'Images/nydaimondusa/Bean Bag/velvet-large-black/1.jpg', 'Images/nydaimondusa/Bean Bag/velvet-large-black/2.jpg', 'Images/nydaimondusa/Bean Bag/velvet-large-black/3.jpg', NULL, NULL, 'Bean bag.', 179.00, 179.00, NULL, '2026-10-06 06:40:53', '2026-10-10 05:33:18'),
(159, 1, 'fcdc2fc1-3672-cb44-8af3-781d690d9abe', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'VELVET CREAM 1 BG', 'https://www.nydiamondusa.com/product-page/velvet-large-cream', 'Images/nydaimondusa/Bean Bag/velvet-large-cream/1.jpg', 'Images/nydaimondusa/Bean Bag/velvet-large-cream/2.jpg', 'Images/nydaimondusa/Bean Bag/velvet-large-cream/3.jpg', NULL, NULL, 'Bean bag.', 179.00, 179.00, NULL, '2026-10-06 06:40:56', '2026-10-10 05:33:18'),
(160, 1, '14f40ecf-aa03-dbb1-18eb-d1431fed3c51', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'VELVET CREAM 1 SM', 'https://www.nydiamondusa.com/product-page/velvet-small-cream', 'Images/nydaimondusa/Bean Bag/velvet-small-cream/1.jpg', 'Images/nydaimondusa/Bean Bag/velvet-small-cream/2.jpg', 'Images/nydaimondusa/Bean Bag/velvet-small-cream/3.jpg', NULL, NULL, 'Bean bag.', 139.00, 139.00, NULL, '2026-10-06 06:40:58', '2026-10-10 05:33:18'),
(161, 1, 'bbd99de5-4529-8ad1-f18d-7cdaae349404', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'VELVET BLACK 1 SM', 'https://www.nydiamondusa.com/product-page/velvet-small-black', 'Images/nydaimondusa/Bean Bag/velvet-small-black/1.jpg', 'Images/nydaimondusa/Bean Bag/velvet-small-black/2.jpg', 'Images/nydaimondusa/Bean Bag/velvet-small-black/3.jpg', NULL, NULL, 'Bean bag.', 139.00, 139.00, NULL, '2026-10-06 06:41:00', '2026-10-10 05:33:18'),
(162, 1, '47eafacf-2d02-defc-57d8-39e45cc5c52c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'VELVET GREY 1 SM', 'https://www.nydiamondusa.com/product-page/velvet-small-grey', 'Images/nydaimondusa/Bean Bag/velvet-small-grey/1.jpg', 'Images/nydaimondusa/Bean Bag/velvet-small-grey/2.jpg', 'Images/nydaimondusa/Bean Bag/velvet-small-grey/3.jpg', NULL, NULL, 'Bean bag.', 139.00, 139.00, NULL, '2026-10-06 06:41:03', '2026-10-10 05:33:18'),
(163, 1, '69dc0cb0-a91d-b18e-42c2-1ce77ab21969', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'CORDUROY GREY 1 BG', 'https://www.nydiamondusa.com/product-page/corderoy-large-grey', 'Images/nydaimondusa/Bean Bag/corderoy-large-grey/1.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-large-grey/2.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-large-grey/3.jpg', NULL, NULL, 'Bean bag.', 179.00, 179.00, NULL, '2026-10-06 06:41:06', '2026-10-10 05:33:18'),
(164, 1, 'd2087529-75e1-4227-930c-98a8566bc3bc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'CORDUROY CREAM 1 BG', 'https://www.nydiamondusa.com/product-page/corderoy-large-cream', 'Images/nydaimondusa/Bean Bag/corderoy-large-cream/1.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-large-cream/2.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-large-cream/3.jpg', NULL, NULL, 'Bean bag.', 179.00, 179.00, NULL, '2026-10-06 06:41:09', '2026-10-10 05:33:18'),
(165, 1, '75923842-35f0-31d2-5347-23a803379f38', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'CORDUROY BLACK 1 BG', 'https://www.nydiamondusa.com/product-page/corderoy-small-black-1', 'Images/nydaimondusa/Bean Bag/corderoy-small-black-1/1.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-small-black-1/2.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-small-black-1/3.jpg', NULL, NULL, 'Bean bag.', 179.00, 179.00, NULL, '2026-10-06 06:41:11', '2026-10-10 05:33:18'),
(166, 1, '669ea17e-6e51-2fdc-c8e1-ac3ab6839fb2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'CORDUROY PINK 1 BG', 'https://www.nydiamondusa.com/product-page/corderoy-large-pink', 'Images/nydaimondusa/Bean Bag/corderoy-large-pink/1.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-large-pink/2.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-large-pink/3.jpg', NULL, NULL, 'Bean bag.', 179.00, 179.00, NULL, '2026-10-06 06:41:13', '2026-10-10 05:33:18'),
(167, 1, '75b8297b-eaf1-7e3d-3e90-2266d8b66ce4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'CORDUROY PINK 1 SM', 'https://www.nydiamondusa.com/product-page/corderoy-small-pink', 'Images/nydaimondusa/Bean Bag/corderoy-small-pink/1.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-small-pink/2.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-small-pink/3.jpg', NULL, NULL, 'Bean bag.', 139.00, 139.00, NULL, '2026-10-06 06:41:14', '2026-10-10 05:33:18'),
(168, 1, '8ce2be27-eef8-9b66-e62e-7959aac890fc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'CORDUROY BLACK 1 SM', 'https://www.nydiamondusa.com/product-page/corderoy-small-black', 'Images/nydaimondusa/Bean Bag/corderoy-small-black/1.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-small-black/2.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-small-black/3.jpg', NULL, NULL, 'Bean bag.', 139.00, 139.00, NULL, '2026-10-06 06:41:15', '2026-10-10 05:33:18'),
(169, 1, '0a9342a4-5283-c14b-f78a-71e18871a648', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'CORDUROY CREAM 1 SM', 'https://www.nydiamondusa.com/product-page/corderoy-small-cream', 'Images/nydaimondusa/Bean Bag/corderoy-small-cream/1.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-small-cream/2.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-small-cream/3.jpg', NULL, NULL, 'Bean bag.', 139.00, 139.00, NULL, '2026-10-06 06:41:16', '2026-10-10 05:33:18'),
(170, 1, 'e0c309f5-6ce3-5e0d-f39d-c1fa62533d69', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bean Bag', 'CORDUROY GREY 1 SM', 'https://www.nydiamondusa.com/product-page/corderoy-small-grey', 'Images/nydaimondusa/Bean Bag/corderoy-small-grey/1.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-small-grey/2.jpg', 'Images/nydaimondusa/Bean Bag/corderoy-small-grey/3.jpg', NULL, NULL, 'Bean bag.', 139.00, 139.00, NULL, '2026-10-06 06:41:17', '2026-10-10 05:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `Bedroom Collections`
--

CREATE TABLE `Bedroom Collections` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Bedroom Collections`
--

INSERT INTO `Bedroom Collections` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(51, 1, '79a3914f-14c3-92bc-38c6-3e1e9b11827d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bedroom Collections | Special Collection', 'BLAKE-GREY/GOLD-QBG', 'https://www.nydiamondusa.com/product-page/blake-grey-gold-qbg', 'Images/nydaimondusa/Bedroom Collections/blake-grey-gold-qbg/1.jpg', NULL, NULL, NULL, NULL, NULL, 999.00, 799.00, NULL, '2026-10-06 06:36:44', '2026-10-06 07:23:12'),
(52, 1, '9790f2eb-2768-4a9c-024b-fa78520c675d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bedroom Collections | Special Collection', 'BLAKE WHITE/GOLD-QBG', 'https://www.nydiamondusa.com/product-page/blake-white-gold-qbg', 'Images/nydaimondusa/Bedroom Collections/blake-white-gold-qbg/1.jpg', NULL, NULL, NULL, NULL, ' ', 999.00, 799.00, NULL, '2026-10-06 06:36:49', '2026-10-06 07:23:12'),
(92, 1, 'f3c458bf-a063-2baf-9f98-b088b5256db2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bedroom Collections | Beds | Clocks', 'PORTO KING 5PCS', 'https://www.nydiamondusa.com/product-page/porto-king-5pcs', 'Images/nydaimondusa/Bedroom Collections/porto-king-5pcs/1.jpg', 'Images/nydaimondusa/Bedroom Collections/porto-king-5pcs/2.jpg', 'Images/nydaimondusa/Bedroom Collections/porto-king-5pcs/3.jpg', 'Images/nydaimondusa/Bedroom Collections/porto-king-5pcs/4.jpg', 'Images/nydaimondusa/Bedroom Collections/porto-king-5pcs/5.jpg', NULL, 2499.00, 2499.00, NULL, '2026-10-06 06:38:37', '2026-10-10 05:33:04'),
(93, 1, 'a34bce5c-558f-b2b8-b862-4e53bc29f03a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bedroom Collections | Beds | Clocks | Special Collection', 'PORTO QUEEN 5PCS', 'https://www.nydiamondusa.com/product-page/porto-queen-5pcs', 'Images/nydaimondusa/Bedroom Collections/porto-queen-5pcs/1.jpg', 'Images/nydaimondusa/Bedroom Collections/porto-queen-5pcs/2.jpg', 'Images/nydaimondusa/Bedroom Collections/porto-queen-5pcs/3.jpg', 'Images/nydaimondusa/Bedroom Collections/porto-queen-5pcs/4.jpg', 'Images/nydaimondusa/Bedroom Collections/porto-queen-5pcs/5.jpg', NULL, 2299.00, 1999.00, NULL, '2026-10-06 06:38:39', '2026-10-10 05:33:04'),
(94, 1, '6d92b387-a200-6530-f28a-0346289648fb', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bedroom Collections | Beds | Clocks', 'ZENN KING 5PCS', 'https://www.nydiamondusa.com/product-page/zenn-king-5pcs', 'Images/nydaimondusa/Bedroom Collections/zenn-king-5pcs/1.jpg', 'Images/nydaimondusa/Bedroom Collections/zenn-king-5pcs/2.jpg', 'Images/nydaimondusa/Bedroom Collections/zenn-king-5pcs/3.jpg', 'Images/nydaimondusa/Bedroom Collections/zenn-king-5pcs/4.jpg', 'Images/nydaimondusa/Bedroom Collections/zenn-king-5pcs/5.jpg', NULL, 2399.00, 2399.00, NULL, '2026-10-06 06:38:50', '2026-10-10 05:33:04'),
(95, 1, 'da6a121a-e46a-804d-baf3-8e3fdd94ace8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Bedroom Collections | Beds | Clocks | Special Collection', 'ZENN QUEEN 5PCS', 'https://www.nydiamondusa.com/product-page/zenn-q-5pcs', 'Images/nydaimondusa/Bedroom Collections/zenn-q-5pcs/1.jpg', 'Images/nydaimondusa/Bedroom Collections/zenn-q-5pcs/2.jpg', 'Images/nydaimondusa/Bedroom Collections/zenn-q-5pcs/3.jpg', 'Images/nydaimondusa/Bedroom Collections/zenn-q-5pcs/4.jpg', 'Images/nydaimondusa/Bedroom Collections/zenn-q-5pcs/5.jpg', NULL, 2199.00, 1999.00, NULL, '2026-10-06 06:38:54', '2026-10-10 05:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `Beds`
--

CREATE TABLE `Beds` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Beds`
--

INSERT INTO `Beds` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(304, 1, 'd1c88bb0-ec9c-4016-b40b-4f00da385635', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'LAUREN-K CREAM', 'https://www.nydiamondusa.com/product-page/lauren-k-cream', 'Images/nydaimondusa/Beds/lauren-k-cream/1.jpg', 'Images/nydaimondusa/Beds/lauren-k-cream/2.jpg', NULL, NULL, NULL, NULL, 899.00, 899.00, NULL, '2026-10-06 06:44:48', '2026-10-10 05:33:33'),
(305, 1, '446660ff-213d-752f-2fa4-7510fe9ed7bc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'LAUREN-K PINK', 'https://www.nydiamondusa.com/product-page/lauren-k-pink', 'Images/nydaimondusa/Beds/lauren-k-pink/1.jpg', 'Images/nydaimondusa/Beds/lauren-k-pink/2.jpg', 'Images/nydaimondusa/Beds/lauren-k-pink/3.jpg', 'Images/nydaimondusa/Beds/lauren-k-pink/4.jpg', NULL, NULL, 899.00, 899.00, NULL, '2026-10-06 06:44:51', '2026-10-10 05:33:33'),
(306, 1, '392159d9-0482-834b-b486-0333c8752d0b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'LAUREN-K BLK', 'https://www.nydiamondusa.com/product-page/lauren-k-blk', 'Images/nydaimondusa/Beds/lauren-k-blk/1.jpg', 'Images/nydaimondusa/Beds/lauren-k-blk/2.jpg', NULL, NULL, NULL, NULL, 899.00, 899.00, NULL, '2026-10-06 06:44:52', '2026-10-10 05:33:33'),
(307, 1, 'fa864ef0-d781-ff01-6261-3eb50e1c16b6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'LAUREN-Q BLK', 'https://www.nydiamondusa.com/product-page/lauren-q-blk', 'Images/nydaimondusa/Beds/lauren-q-blk/1.jpg', 'Images/nydaimondusa/Beds/lauren-q-blk/2.jpg', NULL, NULL, NULL, NULL, 799.00, 799.00, NULL, '2026-10-06 06:44:53', '2026-10-10 05:33:33'),
(308, 1, '4684e1ba-40e1-a719-f87f-0ad4a1d076b8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'LAUREN-K GREY', 'https://www.nydiamondusa.com/product-page/lauren-k-grey', 'Images/nydaimondusa/Beds/lauren-k-grey/1.jpg', 'Images/nydaimondusa/Beds/lauren-k-grey/2.jpg', NULL, NULL, NULL, NULL, 899.00, 899.00, NULL, '2026-10-06 06:44:54', '2026-10-10 05:33:33'),
(309, 1, '6f477313-31e8-7e18-8ed8-95652d4a5c67', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'LAUREN-Q GREY', 'https://www.nydiamondusa.com/product-page/lauren-q-grey-1', 'Images/nydaimondusa/Beds/lauren-q-grey-1/1.jpg', 'Images/nydaimondusa/Beds/lauren-q-grey-1/2.jpg', NULL, NULL, NULL, NULL, 799.00, 799.00, NULL, '2026-10-06 06:44:54', '2026-10-10 05:33:34'),
(310, 1, 'f8c59770-2f44-3d85-51e6-70bcedee202d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'LAUREN-Q PINK', 'https://www.nydiamondusa.com/product-page/lauren-q-pink', 'Images/nydaimondusa/Beds/lauren-q-pink/1.jpg', 'Images/nydaimondusa/Beds/lauren-q-pink/2.jpg', 'Images/nydaimondusa/Beds/lauren-q-pink/3.jpg', 'Images/nydaimondusa/Beds/lauren-q-pink/4.jpg', NULL, NULL, 799.00, 799.00, NULL, '2026-10-06 06:44:55', '2026-10-10 05:33:34'),
(311, 1, 'fc1bace4-f0e2-47e4-05f3-6a62d5ee2fb1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'LAUREN-Q CREAM', 'https://www.nydiamondusa.com/product-page/lauren-q-cream', 'Images/nydaimondusa/Beds/lauren-q-cream/1.jpg', 'Images/nydaimondusa/Beds/lauren-q-cream/2.jpg', NULL, NULL, NULL, NULL, 799.00, 799.00, NULL, '2026-10-06 06:44:55', '2026-10-10 05:33:34'),
(410, 1, '44517800-c30f-d2d5-7e84-9ccc9d6be519', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'CANNES KING BLACK', 'https://www.nydiamondusa.com/product-page/cannes-king-black', 'Images/nydaimondusa/Beds/cannes-king-black/1.jpg', 'Images/nydaimondusa/Beds/cannes-king-black/2.jpg', 'Images/nydaimondusa/Beds/cannes-king-black/3.jpg', 'Images/nydaimondusa/Beds/cannes-king-black/4.jpg', NULL, NULL, 899.00, 899.00, NULL, '2026-10-06 06:50:23', '2026-10-10 05:33:55'),
(411, 1, '7d2e4805-285a-900c-7b46-c74abf70de25', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'CANNES KING D.GREY', 'https://www.nydiamondusa.com/product-page/cannes-king-d-grey', 'Images/nydaimondusa/Beds/cannes-king-d-grey/1.jpg', 'Images/nydaimondusa/Beds/cannes-king-d-grey/2.jpg', 'Images/nydaimondusa/Beds/cannes-king-d-grey/3.jpg', 'Images/nydaimondusa/Beds/cannes-king-d-grey/4.jpg', NULL, NULL, 899.00, 899.00, NULL, '2026-10-06 06:50:24', '2026-10-10 05:33:55'),
(412, 1, 'fd86cb7e-cc53-4290-36cd-b43345ce8e08', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'CANNES KING CREAM', 'https://www.nydiamondusa.com/product-page/cannes-king-beige', 'Images/nydaimondusa/Beds/cannes-king-beige/1.jpg', 'Images/nydaimondusa/Beds/cannes-king-beige/2.jpg', 'Images/nydaimondusa/Beds/cannes-king-beige/3.jpg', 'Images/nydaimondusa/Beds/cannes-king-beige/4.jpg', NULL, NULL, 899.00, 899.00, NULL, '2026-10-06 06:50:26', '2026-10-10 05:33:56'),
(413, 1, 'c9b146d2-3e7d-14f0-a62b-86989338fc62', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'CANNES QUEEN PINK', 'https://www.nydiamondusa.com/product-page/cannes-queen-pink', 'Images/nydaimondusa/Beds/cannes-queen-pink/1.jpg', 'Images/nydaimondusa/Beds/cannes-queen-pink/2.jpg', 'Images/nydaimondusa/Beds/cannes-queen-pink/3.jpg', 'Images/nydaimondusa/Beds/cannes-queen-pink/4.jpg', 'Images/nydaimondusa/Beds/cannes-queen-pink/5.jpg', NULL, 749.00, 749.00, NULL, '2026-10-06 06:50:28', '2026-10-10 05:33:56'),
(414, 1, 'bc398b6a-b969-0a21-b0d6-37989a715380', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'CANNES QUEEN CREAM', 'https://www.nydiamondusa.com/product-page/cannes-queen-cream', 'Images/nydaimondusa/Beds/cannes-queen-cream/1.jpg', 'Images/nydaimondusa/Beds/cannes-queen-cream/2.jpg', 'Images/nydaimondusa/Beds/cannes-queen-cream/3.jpg', 'Images/nydaimondusa/Beds/cannes-queen-cream/4.jpg', NULL, NULL, 749.00, 749.00, NULL, '2026-10-06 06:50:29', '2026-10-10 05:33:56'),
(415, 1, '681602ca-ac26-062e-c9e4-e6c1c6c9d473', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'CANNES QUEEN D.GREY', 'https://www.nydiamondusa.com/product-page/cannes-queen-d-grey', 'Images/nydaimondusa/Beds/cannes-queen-d-grey/1.jpg', NULL, NULL, NULL, NULL, NULL, 749.00, 749.00, NULL, '2026-10-06 06:50:30', '2026-10-10 05:33:56'),
(416, 1, '5ce2d42e-a7ad-71a9-f0a4-3922caf63d30', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'CANNES QUEEN BLACK', 'https://www.nydiamondusa.com/product-page/cannes-queen-black', 'Images/nydaimondusa/Beds/cannes-queen-black/1.jpg', NULL, NULL, NULL, NULL, NULL, 749.00, 749.00, NULL, '2026-10-06 06:50:30', '2026-10-10 05:33:56'),
(448, 1, '87ec0591-a7f6-660c-bcdb-c15a57118725', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'GALLERIA GREY KING', 'https://www.nydiamondusa.com/product-page/galleria-grey-king', 'Images/nydaimondusa/Beds/galleria-grey-king/1.jpg', NULL, NULL, NULL, NULL, NULL, 499.00, 499.00, NULL, '2026-10-06 06:51:13', '2026-10-06 07:23:14'),
(449, 1, '2365a4f8-f817-561f-d7ab-10b3e8b2d16b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'GALLERIA GREY QUEEN', 'https://www.nydiamondusa.com/product-page/galleria-grey-queen', 'Images/nydaimondusa/Beds/galleria-grey-queen/1.jpg', NULL, NULL, NULL, NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:51:14', '2026-10-06 07:23:14'),
(450, 1, 'bb43972b-6bd6-a982-2336-0692f24cb1b3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'GALLERIA BLACK KING', 'https://www.nydiamondusa.com/product-page/galleria-black-king', 'Images/nydaimondusa/Beds/galleria-black-king/1.jpg', NULL, NULL, NULL, NULL, NULL, 499.00, 499.00, NULL, '2026-10-06 06:51:15', '2026-10-06 07:23:14'),
(451, 1, 'ba00cd3d-7163-4c88-8c54-eb26cf048559', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'GALLERIA-BLACK QUEEN', 'https://www.nydiamondusa.com/product-page/galleria-black-queen', 'Images/nydaimondusa/Beds/galleria-black-queen/1.jpg', NULL, NULL, NULL, NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:51:15', '2026-10-06 07:23:14'),
(452, 1, 'e3c6f7a2-b1d6-7ab9-9f94-c934ab34e95e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'ARC-QUEEN BED BEIGE', 'https://www.nydiamondusa.com/product-page/arc-queen-bed-beige', 'Images/nydaimondusa/Beds/arc-queen-bed-beige/1.jpg', NULL, NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:51:16', '2026-10-10 05:34:02'),
(453, 1, '2f18fcaf-91e5-3576-c941-bcc75e7fa92e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'ARC-KING BED BEIGE', 'https://www.nydiamondusa.com/product-page/arc-king-bed-beige', 'Images/nydaimondusa/Beds/arc-king-bed-beige/1.jpg', NULL, NULL, NULL, NULL, NULL, 749.00, 749.00, NULL, '2026-10-06 06:51:17', '2026-10-10 05:34:02'),
(454, 1, '0ddff2d5-906c-3440-6e04-54fa3e8d7b24', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'ARC-KING BED BLACK', 'https://www.nydiamondusa.com/product-page/arc-queen-bed-black-1', 'Images/nydaimondusa/Beds/arc-queen-bed-black-1/1.jpg', NULL, NULL, NULL, NULL, NULL, 749.00, 749.00, NULL, '2026-10-06 06:51:17', '2026-10-10 05:34:02'),
(455, 1, '8bee6c15-5f09-c82e-bb1a-91d3edb29f09', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'ARC-QUEEN BED BLACK', 'https://www.nydiamondusa.com/product-page/arc-queen-bed-black', 'Images/nydaimondusa/Beds/arc-queen-bed-black/1.jpg', NULL, NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:51:18', '2026-10-10 05:34:02'),
(456, 1, '4ef1899d-3ea1-de25-7765-edf5221551bd', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'ARC- KING BED GREY', 'https://www.nydiamondusa.com/product-page/arc-king-bed-cream', 'Images/nydaimondusa/Beds/arc-king-bed-cream/1.jpg', NULL, NULL, NULL, NULL, NULL, 749.00, 749.00, NULL, '2026-10-06 06:51:19', '2026-10-10 05:34:03'),
(457, 1, 'a5cb62b6-a221-8820-2f46-70494610a949', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Beds', 'ARC- QUEEN BED GREY', 'https://www.nydiamondusa.com/product-page/arc-queen-bed-cream', 'Images/nydaimondusa/Beds/arc-queen-bed-cream/1.jpg', NULL, NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:51:19', '2026-10-10 05:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `Chandeliers`
--

CREATE TABLE `Chandeliers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Chandeliers`
--

INSERT INTO `Chandeliers` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(321, 1, '8429a90a-1267-0252-5c7e-1fb1e075c075', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chandeliers', 'NY-2500', 'https://www.nydiamondusa.com/product-page/ny-2500', 'Images/nydaimondusa/Chandeliers/ny-2500/1.jpg', 'Images/nydaimondusa/Chandeliers/ny-2500/2.jpg', 'Images/nydaimondusa/Chandeliers/ny-2500/3.jpg', 'Images/nydaimondusa/Chandeliers/ny-2500/4.jpg', 'Images/nydaimondusa/Chandeliers/ny-2500/5.jpg', NULL, 599.00, 599.00, NULL, '2026-10-06 06:45:26', '2026-10-10 05:33:37'),
(322, 1, '1efd867b-4315-dff7-8b4c-7ce017ba40df', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chandeliers', 'NY-2400', 'https://www.nydiamondusa.com/product-page/ny-2400', 'Images/nydaimondusa/Chandeliers/ny-2400/1.jpg', 'Images/nydaimondusa/Chandeliers/ny-2400/2.jpg', 'Images/nydaimondusa/Chandeliers/ny-2400/3.jpg', 'Images/nydaimondusa/Chandeliers/ny-2400/4.jpg', 'Images/nydaimondusa/Chandeliers/ny-2400/5.jpg', NULL, 599.00, 599.00, NULL, '2026-10-06 06:45:54', '2026-10-10 05:33:37'),
(323, 1, '487306a9-775c-875b-0c1f-d620e8334f8f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chandeliers', 'NY-2300', 'https://www.nydiamondusa.com/product-page/ny-2300', 'Images/nydaimondusa/Chandeliers/ny-2300/1.jpg', 'Images/nydaimondusa/Chandeliers/ny-2300/2.jpg', 'Images/nydaimondusa/Chandeliers/ny-2300/3.jpg', NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:46:05', '2026-10-10 05:33:38'),
(324, 1, '3cbcc041-a91d-cd72-845c-8b9a5bb99599', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chandeliers', 'NY-2200', 'https://www.nydiamondusa.com/product-page/ny-2200', 'Images/nydaimondusa/Chandeliers/ny-2200/1.jpg', 'Images/nydaimondusa/Chandeliers/ny-2200/2.jpg', 'Images/nydaimondusa/Chandeliers/ny-2200/3.jpg', 'Images/nydaimondusa/Chandeliers/ny-2200/4.jpg', 'Images/nydaimondusa/Chandeliers/ny-2200/5.jpg', NULL, 599.00, 599.00, NULL, '2026-10-06 06:46:26', '2026-10-10 05:33:38'),
(325, 1, 'eb6ce6b4-d2da-a3b7-654e-da18ef529ad9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chandeliers', 'NY-2000', 'https://www.nydiamondusa.com/product-page/ny-2000', 'Images/nydaimondusa/Chandeliers/ny-2000/1.jpg', 'Images/nydaimondusa/Chandeliers/ny-2000/2.jpg', 'Images/nydaimondusa/Chandeliers/ny-2000/3.jpg', 'Images/nydaimondusa/Chandeliers/ny-2000/4.jpg', NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:46:41', '2026-10-10 05:33:38'),
(327, 1, '7df1d812-97cd-0a37-3eed-4471add92541', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chandeliers', 'NY-550', 'https://www.nydiamondusa.com/product-page/ny-550', 'Images/nydaimondusa/Chandeliers/ny-550/1.jpg', 'Images/nydaimondusa/Chandeliers/ny-550/2.jpg', NULL, NULL, NULL, NULL, 999.00, 999.00, NULL, '2026-10-06 06:46:43', '2026-10-10 05:33:39'),
(482, 1, '1e82c060-7b2b-adcb-542f-8b2dcfd24da7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chandeliers', 'NY-800', 'https://www.nydiamondusa.com/product-page/ny-et21', 'Images/nydaimondusa/Chandeliers/ny-et21/1.jpg', 'Images/nydaimondusa/Chandeliers/ny-et21/2.jpeg', NULL, NULL, NULL, 'New crystal chandelier.', 599.00, 599.00, NULL, '2026-10-06 06:51:47', '2026-10-10 05:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `Chests & Dressers & Night Stand`
--

CREATE TABLE `Chests & Dressers & Night Stand` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Chests & Dressers & Night Stand`
--

INSERT INTO `Chests & Dressers & Night Stand` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(96, 1, '3bd70b5e-8fa6-f54c-f773-a68c848e19ad', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chests & Dressers & Night Stand', 'SOHU BLACK', 'https://www.nydiamondusa.com/product-page/sohu-black', 'Images/nydaimondusa/Chests & Dressers & Night Stand/sohu-black/1.jpeg', NULL, NULL, NULL, NULL, 'Black glass nightstand.', 199.00, 199.00, NULL, '2026-10-06 06:38:55', '2026-10-10 05:33:04'),
(220, 1, '9c842b8a-c15f-ea0a-45e2-ddaf3842e4af', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chests & Dressers & Night Stand', 'RANA NIGHTSTAND BLACK', 'https://www.nydiamondusa.com/product-page/rana-nightstand-black', 'Images/nydaimondusa/Chests & Dressers & Night Stand/rana-nightstand-black/1.jpg', NULL, NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:42:40', '2026-10-10 05:33:24'),
(221, 1, '80ddf13b-0524-f768-7c3a-d59b8c6d6cec', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chests & Dressers & Night Stand', 'RANA CHEST BLACK', 'https://www.nydiamondusa.com/product-page/rana-chest-black', 'Images/nydaimondusa/Chests & Dressers & Night Stand/rana-chest-black/1.jpg', NULL, NULL, NULL, NULL, NULL, 449.00, 449.00, NULL, '2026-10-06 06:42:41', '2026-10-10 05:33:24'),
(222, 1, 'b27eeaa9-bf79-6e6e-b895-99bcffe43132', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chests & Dressers & Night Stand', 'RANA DRESSER BLACK', 'https://www.nydiamondusa.com/product-page/rana-dresser-black', 'Images/nydaimondusa/Chests & Dressers & Night Stand/rana-dresser-black/1.jpg', NULL, NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:42:42', '2026-10-10 05:33:24'),
(335, 1, 'c79f8a7b-6337-8581-0a60-bdc8cc5deaee', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chests & Dressers & Night Stand', 'SOHU WHITE', 'https://www.nydiamondusa.com/product-page/soho', 'Images/nydaimondusa/Chests & Dressers & Night Stand/soho/1.jpg', NULL, NULL, NULL, NULL, 'White glass nightstand.', 199.00, 199.00, NULL, '2026-10-06 06:46:52', '2026-10-10 05:33:41'),
(375, 1, '00e45ad6-0ebf-0519-5f24-705f81ec868e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chests & Dressers & Night Stand', 'RANA DRESSER', 'https://www.nydiamondusa.com/product-page/rana-dresser', 'Images/nydaimondusa/Chests & Dressers & Night Stand/rana-dresser/1.jpg', 'Images/nydaimondusa/Chests & Dressers & Night Stand/rana-dresser/2.jpg', NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:48:08', '2026-10-10 05:33:45'),
(376, 1, '41ec47ae-bb8f-b986-57dc-050f8e2b22ee', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chests & Dressers & Night Stand', 'RANA CHEST', 'https://www.nydiamondusa.com/product-page/rana-chest', 'Images/nydaimondusa/Chests & Dressers & Night Stand/rana-chest/1.jpg', 'Images/nydaimondusa/Chests & Dressers & Night Stand/rana-chest/2.jpg', NULL, NULL, NULL, NULL, 449.00, 449.00, NULL, '2026-10-06 06:48:10', '2026-10-10 05:33:45'),
(377, 1, '9e8f8aa4-215a-c260-0dc3-b8becbeab3d5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chests & Dressers & Night Stand', 'RANA NIGHT', 'https://www.nydiamondusa.com/product-page/rana-night', 'Images/nydaimondusa/Chests & Dressers & Night Stand/rana-night/1.jpg', 'Images/nydaimondusa/Chests & Dressers & Night Stand/rana-night/2.jpg', NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:48:14', '2026-10-10 05:33:45'),
(429, 1, '4b2ffab6-d48b-614b-b39d-9d0d466e3b7a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chests & Dressers & Night Stand', 'BRISTOL', 'https://www.nydiamondusa.com/product-page/bristol', 'Images/nydaimondusa/Chests & Dressers & Night Stand/bristol/1.jpg', NULL, NULL, NULL, NULL, NULL, 299.00, 149.00, NULL, '2026-10-06 06:50:44', '2026-10-10 05:34:00'),
(581, 1, '50c8660d-5f81-72e7-2e40-8ea994aa0618', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Chests & Dressers & Night Stand', 'OAKLAND', 'https://www.nydiamondusa.com/product-page/oakland', 'Images/nydaimondusa/Chests & Dressers & Night Stand/oakland/1.jpeg', NULL, NULL, NULL, NULL, NULL, 499.00, 499.00, NULL, '2026-10-06 06:57:03', '2026-10-10 05:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `Coffee Tables`
--

CREATE TABLE `Coffee Tables` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Coffee Tables`
--

INSERT INTO `Coffee Tables` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(39, 1, '69794f4a-04d6-7efe-8d10-0941cb767c18', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'RG3000COFFEE', 'https://www.nydiamondusa.com/product-page/rg2800-coffee', 'Images/nydaimondusa/Coffee Tables/rg2800-coffee/1.jpeg', 'Images/nydaimondusa/Coffee Tables/rg2800-coffee/2.jpeg', 'Images/nydaimondusa/Coffee Tables/rg2800-coffee/3.jpeg', NULL, NULL, NULL, 699.00, 699.00, NULL, '2026-10-06 06:36:23', '2026-10-10 05:32:33'),
(50, 1, '7f99c973-889e-4be5-3181-9e692f794984', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'CT-12', 'https://www.nydiamondusa.com/product-page/ct-12', 'Images/nydaimondusa/Coffee Tables/ct-12/1.jpeg', 'Images/nydaimondusa/Coffee Tables/ct-12/2.jpeg', NULL, NULL, NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:36:38', '2026-10-10 05:32:44'),
(78, 1, '5f53485b-7795-cb68-9fd9-b7be877632d9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'ZEZO-GREY', 'https://www.nydiamondusa.com/product-page/zezo-grey', 'Images/nydaimondusa/Coffee Tables/zezo-grey/1.jpeg', 'Images/nydaimondusa/Coffee Tables/zezo-grey/2.jpeg', NULL, NULL, NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:38:04', '2026-10-10 05:33:00'),
(97, 1, '09174441-e034-076d-12e6-d81fe3b18c6a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'VIVA END-BLACK', 'https://www.nydiamondusa.com/product-page/viva-end-black', 'Images/nydaimondusa/Coffee Tables/viva-end-black/1.jpeg', NULL, NULL, NULL, NULL, 'Black coffee table.', 149.00, 149.00, NULL, '2026-10-06 06:38:56', '2026-10-10 05:33:04'),
(98, 1, 'f6bfdab6-8f9d-2a05-a71d-6cd3ed791a40', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'VIVA END-WHITE', 'https://www.nydiamondusa.com/product-page/viva-end-white', 'Images/nydaimondusa/Coffee Tables/viva-end-white/1.jpeg', NULL, NULL, NULL, NULL, 'White end table.', 149.00, 149.00, NULL, '2026-10-06 06:38:57', '2026-10-10 05:33:04'),
(99, 1, '17b6c93b-11d8-4258-5794-1b8f8d6851c5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'VIVA-BLACK', 'https://www.nydiamondusa.com/product-page/viva-black', 'Images/nydaimondusa/Coffee Tables/viva-black/1.jpeg', NULL, NULL, NULL, NULL, 'Black coffee table with bluetooth speaker.', 399.00, 399.00, NULL, '2026-10-06 06:38:58', '2026-10-10 05:33:04'),
(100, 1, '6cd033d3-5bdc-cbc5-2813-7c35ecf3e821', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'COCO-BLACK', 'https://www.nydiamondusa.com/product-page/coco-black', 'Images/nydaimondusa/Coffee Tables/coco-black/1.jpg', 'Images/nydaimondusa/Coffee Tables/coco-black/2.jpeg', NULL, NULL, NULL, NULL, 499.00, 499.00, NULL, '2026-10-06 06:38:59', '2026-10-10 05:33:08'),
(101, 1, '8de2b94f-cf34-8c97-6a26-00ede03ec662', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'COCO-WHITE', 'https://www.nydiamondusa.com/product-page/coco-white', 'Images/nydaimondusa/Coffee Tables/coco-white/1.jpg', 'Images/nydaimondusa/Coffee Tables/coco-white/2.jpeg', NULL, NULL, NULL, NULL, 499.00, 499.00, NULL, '2026-10-06 06:39:00', '2026-10-10 05:33:11'),
(115, 1, '688e7d69-fb8e-d665-dd31-427ceb437c16', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'RORO-BLACK', 'https://www.nydiamondusa.com/product-page/roro-black', 'Images/nydaimondusa/Coffee Tables/roro-black/1.jpg', 'Images/nydaimondusa/Coffee Tables/roro-black/2.jpg', NULL, NULL, NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:39:28', '2026-10-10 05:33:14'),
(127, 1, '2c5ba03c-fe4d-b12c-444f-b5896ef0b197', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'AUY-END TABLE', 'https://www.nydiamondusa.com/product-page/auy-end-table', 'Images/nydaimondusa/Coffee Tables/auy-end-table/1.jpeg', NULL, NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:39:47', '2026-10-10 05:33:16'),
(137, 1, 'a6d32026-7d77-24e8-1db2-121eeea3cf78', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'SC-173 COFFEE', 'https://www.nydiamondusa.com/product-page/gc-173-coffee', 'Images/nydaimondusa/Coffee Tables/gc-173-coffee/1.jpg', NULL, NULL, NULL, NULL, NULL, 99.00, 99.00, NULL, '2026-10-06 06:40:11', '2026-10-10 05:33:17'),
(138, 1, '8eefbb9b-4035-fa47-e506-b6c9deda9418', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'GC-172 COFFEE', 'https://www.nydiamondusa.com/product-page/gc-172-coffee', 'Images/nydaimondusa/Coffee Tables/gc-172-coffee/1.jpg', NULL, NULL, NULL, NULL, NULL, 99.00, 99.00, NULL, '2026-10-06 06:40:13', '2026-10-10 05:33:17'),
(139, 1, 'cef78021-32af-85cf-057d-5f850dc406be', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'SC-171 COFFEE', 'https://www.nydiamondusa.com/product-page/sc-171-coffee', 'Images/nydaimondusa/Coffee Tables/sc-171-coffee/1.jpg', NULL, NULL, NULL, NULL, NULL, 119.00, 119.00, NULL, '2026-10-06 06:40:15', '2026-10-10 05:33:17'),
(140, 1, 'ddac939c-dbb6-7c24-7f11-19e05511fd4c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'GC-170 COFFEE', 'https://www.nydiamondusa.com/product-page/gc-170-coffee', 'Images/nydaimondusa/Coffee Tables/gc-170-coffee/1.jpg', NULL, NULL, NULL, NULL, NULL, 119.00, 119.00, NULL, '2026-10-06 06:40:18', '2026-10-10 05:33:17'),
(192, 1, 'adffff96-7018-0288-7cec-215ef7e43d93', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'ZEZO', 'https://www.nydiamondusa.com/product-page/zezo', 'Images/nydaimondusa/Coffee Tables/zezo/1.jpg', 'Images/nydaimondusa/Coffee Tables/zezo/2.jpg', NULL, NULL, NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:41:52', '2026-10-10 05:33:19'),
(200, 1, 'e881d290-dd27-7c0c-1863-e6522cf2b2c4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'RORO', 'https://www.nydiamondusa.com/product-page/roro', 'Images/nydaimondusa/Coffee Tables/roro/1.jpg', 'Images/nydaimondusa/Coffee Tables/roro/2.jpg', NULL, NULL, NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:42:08', '2026-10-10 05:33:19'),
(242, 1, 'e8741cc5-2e22-76fa-2bf1-01c3a6a7275c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'T1500-COFFEE', 'https://www.nydiamondusa.com/product-page/t1500-coffee', 'Images/nydaimondusa/Coffee Tables/t1500-coffee/1.jpg', 'Images/nydaimondusa/Coffee Tables/t1500-coffee/2.jpg', NULL, NULL, NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:43:06', '2026-10-10 05:33:26'),
(262, 1, 'fb1d6466-78d7-33b3-e676-ca6bc4cfb4db', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'SC-132 SILVER', 'https://www.nydiamondusa.com/product-page/sc-132-silver', 'Images/nydaimondusa/Coffee Tables/sc-132-silver/1.jpg', NULL, NULL, NULL, NULL, NULL, 99.00, 99.00, NULL, '2026-10-06 06:43:30', '2026-10-10 05:33:27'),
(263, 1, '2d6fa87e-906b-13cd-4b00-e8e8bb727eb0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'GC-131 GOLD', 'https://www.nydiamondusa.com/product-page/gc-131-gold', 'Images/nydaimondusa/Coffee Tables/gc-131-gold/1.jpg', NULL, NULL, NULL, NULL, NULL, 99.00, 99.00, NULL, '2026-10-06 06:43:37', '2026-10-10 05:33:27'),
(264, 1, '6a87eb2c-d089-bdbd-20ca-d5a0c105a3ec', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'SC-121 SILVER', 'https://www.nydiamondusa.com/product-page/sc-121-silver', 'Images/nydaimondusa/Coffee Tables/sc-121-silver/1.jpg', NULL, NULL, NULL, NULL, NULL, 119.00, 119.00, NULL, '2026-10-06 06:43:41', '2026-10-10 05:33:27'),
(265, 1, 'a93140f0-494b-146a-1a44-c28a86bc899d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'GC-120 GOLD', 'https://www.nydiamondusa.com/product-page/gc-120-gold', 'Images/nydaimondusa/Coffee Tables/gc-120-gold/1.jpg', NULL, NULL, NULL, NULL, NULL, 119.00, 119.00, NULL, '2026-10-06 06:43:46', '2026-10-10 05:33:27'),
(294, 1, '640285a1-851b-8ff2-9ea2-d321f037c322', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'NY-041', 'https://www.nydiamondusa.com/product-page/ny-041', 'Images/nydaimondusa/Coffee Tables/ny-041/1.jpg', 'Images/nydaimondusa/Coffee Tables/ny-041/2.jpg', NULL, NULL, NULL, NULL, 499.00, 499.00, NULL, '2026-10-06 06:44:35', '2026-10-10 05:33:31'),
(316, 1, '86c13c7d-6449-b521-6192-ecacc599a536', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'COFFEE-G811', 'https://www.nydiamondusa.com/product-page/coffee-g811', 'Images/nydaimondusa/Coffee Tables/coffee-g811/1.jpg', 'Images/nydaimondusa/Coffee Tables/coffee-g811/2.jpg', NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:45:00', '2026-10-10 05:33:35'),
(336, 1, '4a6cf796-a0ad-1fbf-4850-42eb5787c708', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'END ROLA', 'https://www.nydiamondusa.com/product-page/rola-end', 'Images/nydaimondusa/Coffee Tables/rola-end/1.jpg', NULL, NULL, NULL, NULL, NULL, 199.00, 199.00, NULL, '2026-10-06 06:46:53', '2026-10-10 05:33:41'),
(395, 1, '16d81133-5a04-56b7-b838-f29a4ed1e02b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'G2079 - WHITE MARBLE', 'https://www.nydiamondusa.com/product-page/g2079-white-marble', 'Images/nydaimondusa/Coffee Tables/g2079-white-marble/1.jpg', 'Images/nydaimondusa/Coffee Tables/g2079-white-marble/2.png', NULL, NULL, NULL, 'Coffe table.', 549.00, 549.00, NULL, '2026-10-06 06:49:23', '2026-10-10 05:33:51'),
(432, 1, '8b7ce458-6660-896c-f63f-7382d5c59221', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'COFFEE E18 BLACK & RED', 'https://www.nydiamondusa.com/product-page/coffee-e18-black-red', 'Images/nydaimondusa/Coffee Tables/coffee-e18-black-red/1.jpg', 'Images/nydaimondusa/Coffee Tables/coffee-e18-black-red/2.jpg', NULL, NULL, NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:50:47', '2026-10-06 07:23:14'),
(437, 1, 'f2a2a2a9-b883-0579-6952-b324fa798574', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'G2095', 'https://www.nydiamondusa.com/product-page/g2095', 'Images/nydaimondusa/Coffee Tables/g2095/1.jpg', 'Images/nydaimondusa/Coffee Tables/g2095/2.jpg', 'Images/nydaimondusa/Coffee Tables/g2095/3.jpg', NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:50:55', '2026-10-10 05:34:01'),
(447, 1, 'b6465b78-bb8c-a4ef-6fee-816773465efb', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'G1072 COFFEE', 'https://www.nydiamondusa.com/product-page/g1072-coffee', 'Images/nydaimondusa/Coffee Tables/g1072-coffee/1.jpg', 'Images/nydaimondusa/Coffee Tables/g1072-coffee/2.jpg', NULL, NULL, NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:51:12', '2026-10-10 05:34:02'),
(465, 1, 'd4ca5838-6e94-e1cb-cf63-580b90616232', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'G-1620', 'https://www.nydiamondusa.com/product-page/g-1620', 'Images/nydaimondusa/Coffee Tables/g-1620/1.jpg', NULL, NULL, NULL, NULL, NULL, 199.00, 199.00, NULL, '2026-10-06 06:51:30', '2026-10-10 05:34:03'),
(471, 1, '1915138a-661e-413b-6942-d749b970d347', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'G1350-BEIGE GOLD', 'https://www.nydiamondusa.com/product-page/g1350-beige-gold', 'Images/nydaimondusa/Coffee Tables/g1350-beige-gold/1.jpeg', NULL, NULL, NULL, NULL, NULL, 499.00, 399.00, NULL, '2026-10-06 06:51:36', '2026-10-10 05:34:04'),
(472, 1, 'e02b320f-4ee0-7f94-2406-27e233b05730', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'G850-BEIGE GOLD', 'https://www.nydiamondusa.com/product-page/g850-beige-gold', 'Images/nydaimondusa/Coffee Tables/g850-beige-gold/1.jpeg', NULL, NULL, NULL, NULL, NULL, 499.00, 399.00, NULL, '2026-10-06 06:51:36', '2026-10-10 05:34:04'),
(573, 1, '8cb1b002-2df1-4b24-861f-318cf436a509', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'G895 JAZZ', 'https://www.nydiamondusa.com/product-page/kenya', 'Images/nydaimondusa/Coffee Tables/kenya/1.png', 'Images/nydaimondusa/Coffee Tables/kenya/2.jpg', NULL, NULL, NULL, 'Round coffee table.', 599.00, 599.00, NULL, '2026-10-06 06:56:17', '2026-10-10 05:34:21'),
(575, 1, '07acd960-f7fa-fc72-1eab-e3da43c15cf8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', '940', 'https://www.nydiamondusa.com/product-page/amman', 'Images/nydaimondusa/Coffee Tables/amman/1.jpg', NULL, NULL, NULL, NULL, 'Coffee table with chrome base.', 399.00, 399.00, NULL, '2026-10-06 06:56:18', '2026-10-10 05:34:22'),
(685, 1, '8e4bbf94-084d-36b1-04cf-1be409e6358b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'G896', 'https://www.nydiamondusa.com/product-page/catalonia', 'Images/nydaimondusa/Coffee Tables/catalonia/1.jpg', NULL, NULL, NULL, NULL, 'Round end table circle.', 349.00, 349.00, NULL, '2026-10-06 06:59:46', '2026-10-10 05:34:35'),
(686, 1, '6743e7ce-1713-2950-4cfc-32c1d0ab6de5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Coffee Tables', 'G806', 'https://www.nydiamondusa.com/product-page/nycofee-10', 'Images/nydaimondusa/Coffee Tables/nycofee-10/1.jpg', 'Images/nydaimondusa/Coffee Tables/nycofee-10/2.jpg', NULL, NULL, NULL, 'Round coffee table.', 599.00, 599.00, NULL, '2026-10-06 06:59:46', '2026-10-10 05:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `Consoles-Buffet`
--

CREATE TABLE `Consoles-Buffet` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Consoles-Buffet`
--

INSERT INTO `Consoles-Buffet` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(86, 1, '56e2bd35-a12d-153f-1058-25b7c11fe5e5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Consoles/Buffet', 'KATE', 'https://www.nydiamondusa.com/product-page/kate', 'Images/nydaimondusa/Consoles-Buffet/kate/1.jpg', 'Images/nydaimondusa/Consoles-Buffet/kate/2.jpeg', NULL, NULL, NULL, NULL, 599.00, 499.00, NULL, '2026-10-06 06:38:20', '2026-10-10 05:33:04'),
(128, 1, '03cae0c3-29fa-1fd9-c6e0-a7ec0ead8a02', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Consoles/Buffet', 'IRIS', 'https://www.nydiamondusa.com/product-page/iris', 'Images/nydaimondusa/Consoles-Buffet/iris/1.jpeg', NULL, NULL, NULL, NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:39:48', '2026-10-10 05:33:16'),
(226, 1, '9e33b236-41e3-92f1-999b-956ad0b2fa40', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Consoles/Buffet', 'COLTS', 'https://www.nydiamondusa.com/product-page/colts-1', 'Images/nydaimondusa/Consoles-Buffet/colts-1/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 649.00, NULL, '2026-10-06 06:42:46', '2026-10-10 05:33:24'),
(239, 1, 'ee7ef784-ef4b-03c2-df37-be0f7d208455', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Consoles/Buffet', 'INAS', 'https://www.nydiamondusa.com/product-page/inas', 'Images/nydaimondusa/Consoles-Buffet/inas/1.jpg', 'Images/nydaimondusa/Consoles-Buffet/inas/2.jpg', NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:43:03', '2026-10-10 05:33:26'),
(281, 1, '67509a6b-9c8b-2c69-59e2-62b59065a60c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Consoles/Buffet', 'NY-039', 'https://www.nydiamondusa.com/product-page/ny-039', 'Images/nydaimondusa/Consoles-Buffet/ny-039/1.jpg', 'Images/nydaimondusa/Consoles-Buffet/ny-039/2.jpg', NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:44:20', '2026-10-10 05:33:29'),
(392, 1, 'b39b6713-9e7e-149d-ed7d-945e1385a1e6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Consoles/Buffet', 'SHELTON CONSOLE', 'https://www.nydiamondusa.com/product-page/shelton-console', 'Images/nydaimondusa/Consoles-Buffet/shelton-console/1.png', NULL, NULL, NULL, NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:49:20', '2026-10-10 05:33:46'),
(394, 1, '54180cfe-3a5d-6707-7b07-28111c2e0240', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Consoles/Buffet', 'G2078 - WHITE MARBLE', 'https://www.nydiamondusa.com/product-page/g2078-white-marble', 'Images/nydaimondusa/Consoles-Buffet/g2078-white-marble/1.jpg', 'Images/nydaimondusa/Consoles-Buffet/g2078-white-marble/2.png', NULL, NULL, NULL, 'Console table.', 599.00, 599.00, NULL, '2026-10-06 06:49:22', '2026-10-10 05:33:49'),
(446, 1, '04d9e0e2-2970-3d8b-2816-ffb9859fec4b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Consoles/Buffet', 'G1987 CONSOLE', 'https://www.nydiamondusa.com/product-page/g1987-console', 'Images/nydaimondusa/Consoles-Buffet/g1987-console/1.jpg', 'Images/nydaimondusa/Consoles-Buffet/g1987-console/2.jpg', NULL, NULL, NULL, NULL, 399.00, 399.00, NULL, '2026-10-06 06:51:11', '2026-10-10 05:34:02'),
(574, 1, '807693dc-638e-bb11-15e2-561060daaf97', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Consoles/Buffet', 'CONSOLE-1700-WHITE', 'https://www.nydiamondusa.com/product-page/console-1689-white', 'Images/nydaimondusa/Consoles-Buffet/console-1689-white/1.jpg', 'Images/nydaimondusa/Consoles-Buffet/console-1689-white/2.jpg', NULL, NULL, NULL, 'Stainless steel console.', 499.00, 499.00, NULL, '2026-10-06 06:56:17', '2026-10-10 05:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `Dealer Products`
--

CREATE TABLE `Dealer Products` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Dealer Products`
--

INSERT INTO `Dealer Products` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(88, 1, 'b6d84e55-6bc3-54a2-2a36-3b202eec332e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NYT-490', 'https://www.nydiamondusa.com/product-page/nyt-490', 'Images/nydaimondusa/Uncategorized/nyt-490/1.jpeg', NULL, NULL, NULL, NULL, NULL, 79.00, 79.00, NULL, '2026-10-06 06:38:23', '2026-10-06 07:23:12'),
(177, 1, 'ddfe18bc-4a30-62ad-fa40-8ce755b5bca6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '1942-GREY', 'https://www.nydiamondusa.com/product-page/1942-grey', 'Images/nydaimondusa/Uncategorized/1942-grey/1.jpg', 'Images/nydaimondusa/Uncategorized/1942-grey/2.jpg', NULL, NULL, NULL, 'DESCRIPTION:\n-SOFA AND LOVE SEAT\n-DROP DOWN TABLE WIRELESS\n-LOVE SEAT WITH SPEAKER\n-CHAIR SOLD SEPARATE $499\n \nDIMENSION: TBA', 1299.00, 1299.00, NULL, '2026-10-06 06:41:25', '2026-10-06 07:23:13'),
(203, 1, 'fdbd1ace-4e3c-edd0-d7cf-605f54638806', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-3900', 'https://www.nydiamondusa.com/product-page/ny-3900', 'Images/nydaimondusa/Uncategorized/ny-3900/1.jpg', NULL, NULL, NULL, NULL, 'Description:\n-White lacquer, gold leaf\n-2 doors\n-2 shelves inside\n-electric heater\n-wireless charger\n-gold bottom with LED light.\n \n \nDimension:\nL65*W18*H31*', 649.00, 649.00, NULL, '2026-10-06 06:42:13', '2026-10-06 07:23:13'),
(207, 1, '6d7c19a8-c236-ead1-88c3-7d8dce60d870', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-2700', 'https://www.nydiamondusa.com/product-page/ny-2700', 'Images/nydaimondusa/Uncategorized/ny-2700/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 649.00, NULL, '2026-10-06 06:42:19', '2026-10-06 07:23:13'),
(208, 1, '437057d4-8c4e-ec36-50fe-975fe132f81e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-2400', 'https://www.nydiamondusa.com/product-page/ny-2400-1', 'Images/nydaimondusa/Uncategorized/ny-2400-1/1.jpg', NULL, NULL, NULL, NULL, 'Description:\n-White finish, gold bronze mirror on door,\n-2 doors\n-2 shelves\n-firewood electric heater\n-wireless charger\nLED light on the bottom\n \n \nDimension:\nL65*W18*H31\n ', 649.00, 649.00, NULL, '2026-10-06 06:42:20', '2026-10-06 07:23:13'),
(212, 1, 'cab7648c-bd25-b4de-673b-5b2848343d24', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '2221-BLACK', 'https://www.nydiamondusa.com/product-page/2221-black', 'Images/nydaimondusa/Uncategorized/2221-black/1.jpg', 'Images/nydaimondusa/Uncategorized/2221-black/2.jpg', NULL, NULL, NULL, '-6 PCS SEC.\n-CORDUROY FABRIC \n-WITHCONSOLE & SPEAKER', 1599.00, 1599.00, NULL, '2026-10-06 06:42:28', '2026-10-06 07:23:13'),
(213, 1, '1ae594b6-3d4b-dcc9-be00-09cafa0b0d4f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '2221-CREAM', 'https://www.nydiamondusa.com/product-page/2221-cream', 'Images/nydaimondusa/Uncategorized/2221-cream/1.jpg', 'Images/nydaimondusa/Uncategorized/2221-cream/2.jpg', NULL, NULL, NULL, '-6 PCS SEC.\n-CORDUROY FABRIC \n-WITHCONSOLE & SPEAKER', 1599.00, 1599.00, NULL, '2026-10-06 06:42:30', '2026-10-06 07:23:13'),
(214, 1, '4a6ed7eb-15bb-d706-d99c-b86321aacb77', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '2221 GREY', 'https://www.nydiamondusa.com/product-page/2222-3-grey', 'Images/nydaimondusa/Uncategorized/2222-3-grey/1.jpg', 'Images/nydaimondusa/Uncategorized/2222-3-grey/2.jpg', NULL, NULL, NULL, '-6 PCS SEC.\n-CORDUROY FABRIC \n-WITHCONSOLE & SPEAKER', 1599.00, 1599.00, NULL, '2026-10-06 06:42:33', '2026-10-06 07:23:13'),
(232, 1, '77dfde9b-f7ab-dbf2-d15a-4d9d84808b10', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BUCKS', 'https://www.nydiamondusa.com/product-page/bucks', 'Images/nydaimondusa/Uncategorized/bucks/1.jpg', 'Images/nydaimondusa/Uncategorized/bucks/2.jpg', NULL, NULL, NULL, 'DIMENSIONS:\n65*18*31”H\n \nDESCRIPTION:\nGlossy grey, painted shining gold, two doors\nRGB LED on top and bottom,\n36inch crystal firebox with\nBluetooth and speaker.', 699.00, 699.00, NULL, '2026-10-06 06:42:54', '2026-10-06 07:23:13'),
(235, 1, '71770e98-5a8b-3c6b-a0c2-ef0180ed56b2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-1000', 'https://www.nydiamondusa.com/product-page/ny-1000-1', 'Images/nydaimondusa/Uncategorized/ny-1000-1/1.jpg', NULL, NULL, NULL, NULL, 'DESCRIPTION:\nWHITE GLOSSY COLOR GOLD LEAF 26\"CRYSTAL FIREBOX\nWIRELESS CHARGER LED TOP AND BOTTON\n \n \nDIMENSION: 65\"X18\"X31\"', 649.00, 649.00, NULL, '2026-10-06 06:42:58', '2026-10-06 07:23:13'),
(236, 1, 'd87e185c-1159-eb07-5dce-b17f0f8a108a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-2600', 'https://www.nydiamondusa.com/product-page/ny-2600-1', 'Images/nydaimondusa/Uncategorized/ny-2600-1/1.jpg', NULL, NULL, NULL, NULL, 'DESCRIPTION:\nWHITE GLOSSY COLOR 26 INCH CRYSTAL FIREBOX\nWIRELESS CHARGER LED ON TOP AND BOTTOM\n \n \nDIMENSION: 65\"X18\"X31\"', 749.00, 649.00, NULL, '2026-10-06 06:42:59', '2026-10-06 07:23:13'),
(237, 1, 'c68c6d9b-1ce8-be25-add6-c5e2f032e3a4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'JETS', 'https://www.nydiamondusa.com/product-page/jets', 'Images/nydaimondusa/Uncategorized/jets/1.jpg', NULL, NULL, NULL, NULL, 'DESCRIPTION:\nGLOSSY WHITE PAINTED SHINY GOLD,\nTWO DRAWERS 36INCH CRYSTAL FIREBOX\nBLUETOOTH AND SPEAKER\n \n \nDIMENSION: 65\"X18\"X31\"', 699.00, 699.00, NULL, '2026-10-06 06:43:00', '2026-10-06 07:23:13'),
(245, 1, '7cfafc1f-cf63-df34-9b1f-b4db6166b950', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '1942-BLACK', 'https://www.nydiamondusa.com/product-page/1942-black', 'Images/nydaimondusa/Uncategorized/1942-black/1.jpg', 'Images/nydaimondusa/Uncategorized/1942-black/2.jpg', 'Images/nydaimondusa/Uncategorized/1942-black/3.jpg', NULL, NULL, 'DESCRIPTION:\n-SOFA AND LOVE SEAT\n-DROP DOWN TABLE WIRELESS\n-LOVE SEAT WITH SPEAKER\n-CHAIR SOLD SEPARATE $499\n \nDIMENSION: TBA', 1299.00, 1299.00, NULL, '2026-10-06 06:43:10', '2026-10-06 07:23:13'),
(246, 1, '544494f3-6577-8553-9a38-907ebae04e29', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '1942-CHOCOLATE', 'https://www.nydiamondusa.com/product-page/1942-chocolate', 'Images/nydaimondusa/Uncategorized/1942-chocolate/1.jpg', 'Images/nydaimondusa/Uncategorized/1942-chocolate/2.jpg', 'Images/nydaimondusa/Uncategorized/1942-chocolate/3.jpg', NULL, NULL, 'DESCRIPTION:\n-SOFA AND LOVE SEAT\n-DROP DOWN TABLE WIRELESS\n-LOVE SEAT WITH SPEAKER\n-CHAIR SOLD SEPARATE $499\n \nDIMENSION: TBA', 1299.00, 1299.00, NULL, '2026-10-06 06:43:12', '2026-10-06 07:23:13'),
(260, 1, 'f9e94487-2362-6405-f5ce-b19d9d014178', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-2100 WHITE', 'https://www.nydiamondusa.com/product-page/ny-2100-white', 'Images/nydaimondusa/Uncategorized/ny-2100-white/1.jpg', NULL, NULL, NULL, NULL, 'DESCRIPTION:\nBLACK GLOSSY COLOR AND GOLD PAINT\n23\"INCH FIREWOOD BOX \nWIRELESS CHARGER\nLED ON BOTTOM\n \n \nDIMENSIONS\n47\"X18\"X31\"', 649.00, 499.00, NULL, '2026-10-06 06:43:24', '2026-10-06 07:23:13'),
(261, 1, 'b5b8b608-b05a-e34b-d28b-b4a827682465', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-1900 WHITE', 'https://www.nydiamondusa.com/product-page/ny-1900-white', 'Images/nydaimondusa/Uncategorized/ny-1900-white/1.jpg', NULL, NULL, NULL, NULL, 'DESCRIPTION:\nBLACK GLOSSY COLOR AND GOLD PAINT\n26\"INCH FIREWOOD BOX \nWIRELESS CHARGER\nLED ON BOTTOM\n \n \nDIMENSIONS:\n65\"X18\"X31\"', 649.00, 649.00, NULL, '2026-10-06 06:43:25', '2026-10-06 07:23:13'),
(274, 1, 'e7b5322f-5160-1ff4-f464-5457ecd0e0d4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'SR4438B', 'https://www.nydiamondusa.com/product-page/sr4438b', 'Images/nydaimondusa/Uncategorized/sr4438b/1.jpg', 'Images/nydaimondusa/Uncategorized/sr4438b/2.jpg', NULL, NULL, NULL, 'DIMENSION: 32\"X 32\"\n \nDESCRIPTION:\n-COFFE TABLE WITH MULTIPLE LED COLORS\n-GLASS CLEAR TOP\n \n \n ', 399.00, 399.00, NULL, '2026-10-06 06:44:11', '2026-10-06 07:23:13'),
(275, 1, '6e595336-b929-b488-8976-6ba74fca0cae', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'SR4438W', 'https://www.nydiamondusa.com/product-page/sr4438w', 'Images/nydaimondusa/Uncategorized/sr4438w/1.jpg', NULL, NULL, NULL, NULL, 'DIMENSION: 32\"X 32\"\n\nDESCRIPTION:\n-COFFE TABLE WITH MULTIPLE LED COLORS\n-GLASS CLEAR TOP\n \n\n ', 399.00, 399.00, NULL, '2026-10-06 06:44:11', '2026-10-06 07:23:13'),
(276, 1, 'd4a747a5-e384-2f83-29c3-bde4befc2fb0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C4045B', 'https://www.nydiamondusa.com/product-page/c4045b', 'Images/nydaimondusa/Uncategorized/c4045b/1.jpg', 'Images/nydaimondusa/Uncategorized/c4045b/2.jpg', NULL, NULL, NULL, 'DIMENSION: COFFEE TABLE SOLD SEPARATELY\nPLEASE SEE DIAGRAM ON NEXT PICTURE\n-RIGHT 72\"\n-LEFT 72\"\n-WEDGE CORNER 78\"\n\nDESCRIPTION:\n-LED LIGHTING BELOW\nWITH MULTIPLE COLORS\n-BLUETOOTH CAPABILITY\n-SPEAKERS AVAILABLE\n-LEATHER PU FINISH MATERIAL\n ', 1399.00, 1399.00, NULL, '2026-10-06 06:44:14', '2026-10-06 07:23:13'),
(277, 1, 'e1958d05-038b-0fbc-258e-d3c7da86f5c4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C4045W', 'https://www.nydiamondusa.com/product-page/c4045w', 'Images/nydaimondusa/Uncategorized/c4045w/1.jpg', 'Images/nydaimondusa/Uncategorized/c4045w/2.jpg', NULL, NULL, NULL, 'DIMENSION: COFFEE TABLE SOLD SEPARATELY\nPLEASE SEE DIAGRAM ON NEXT PICTURE\n-RIGHT 72\"\n-LEFT 72\"\n-WEDGE CORNER 78\"\n\nDESCRIPTION:\n-LED LIGHTING BELOW\nWITH MULTIPLE COLORS\n-BLUETOOTH CAPABILITY\n-SPEAKERS AVAILABLE\n-LEATHER PU FINISH MATERIAL\n ', 1399.00, 1399.00, NULL, '2026-10-06 06:44:15', '2026-10-06 07:23:13'),
(278, 1, '82aa6ae6-338b-7459-ee6e-71ad94170d64', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'EAGLES', 'https://www.nydiamondusa.com/product-page/eagles', 'Images/nydaimondusa/Uncategorized/eagles/1.jpg', NULL, NULL, NULL, NULL, 'DIMENSION:\n65\"X 18\"X 31\"\n\nDESCRIPTION:\nGLOSSY WHITE, PAINTED SHINING GOLD WITH TWO DOORS RGB LED ON TOP AND BOTTOM, 36\" CRYSTAL FIREBOX WITH BLUETOOTH AND SPEAKER', 699.00, 699.00, NULL, '2026-10-06 06:44:16', '2026-10-06 07:23:13'),
(287, 1, '00dd4506-3440-e123-bf33-58a82b1fcdba', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'CAVALIERS-BLACK', 'https://www.nydiamondusa.com/product-page/cavaliers-black', 'Images/nydaimondusa/Uncategorized/cavaliers-black/1.jpg', NULL, NULL, NULL, NULL, 'DESCRIPTION:\nGLOSSY BLACK, PAINTED SHINING GOLD, TWO DOORS, 36\"INCH CRYSTAL FIREBOX WITH BLUETOOTH AND SPEAKER\n \n\nDIMENSION:\n72\"X18\"X28\"', 749.00, 749.00, NULL, '2026-10-06 06:44:29', '2026-10-06 07:23:13'),
(288, 1, '47dbf544-4fff-0137-d500-2c3053000147', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NIGIA-WHITE', 'https://www.nydiamondusa.com/product-page/nigia-white', 'Images/nydaimondusa/Uncategorized/nigia-white/1.jpg', NULL, NULL, NULL, NULL, 'DESCRIPTION:\nGLOSSY WHITE, PAINTED SHINING GOLD, TWO DOORS, 36\"INCH CRYSTAL FIREBOX WITH BLUETOOTH AND SPEAKER\n \n\nDIMENSION:\n72\"X18\"X28\"', 749.00, 749.00, NULL, '2026-10-06 06:44:30', '2026-10-06 07:23:13'),
(332, 1, '75ba5ceb-49d0-95b0-f01e-ac869eaf2c2b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MS2260-BLACK', 'https://www.nydiamondusa.com/product-page/ms2260-black', 'Images/nydaimondusa/Uncategorized/ms2260-black/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n \nRAF Sofa\n	• 75\" x 35\" x 37\"\nRAF LOVESEAT\n	• 53.5\" x 35\" x 37\"\nCorner\n	• 46.8\" x 46.8\" x  37\"\n \nDescription:\n	• 3 pcs sectional\n	• Velvet Finish', 1299.00, 999.00, NULL, '2026-10-06 06:46:49', '2026-10-06 07:23:14'),
(338, 1, 'cbc15140-b81c-5ffc-6293-2bddbf2a1b8b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'TYLER', 'https://www.nydiamondusa.com/product-page/tyler', 'Images/nydaimondusa/Uncategorized/tyler/1.jpg', NULL, NULL, NULL, NULL, 'DIMENSION:\n65\" X 18\" X 31', 599.00, 599.00, NULL, '2026-10-06 06:46:56', '2026-10-06 07:23:14'),
(339, 1, '7791f242-965e-3056-d1bb-2f901688f365', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'WARREN', 'https://www.nydiamondusa.com/product-page/warren', 'Images/nydaimondusa/Uncategorized/warren/1.jpg', NULL, NULL, NULL, NULL, 'DIMENSION:\n65\" X 18\" X 31\"', 599.00, 599.00, NULL, '2026-10-06 06:46:58', '2026-10-06 07:23:14'),
(341, 1, '7c70cdcf-ee26-f16d-6aa3-f32e19becc41', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY STOOLS-9-10-11', 'https://www.nydiamondusa.com/product-page/ny-stools-9-10-11', 'Images/nydaimondusa/Uncategorized/ny-stools-9-10-11/1.png', 'Images/nydaimondusa/Uncategorized/ny-stools-9-10-11/2.png', 'Images/nydaimondusa/Uncategorized/ny-stools-9-10-11/3.png', NULL, NULL, 'DIMENSION:\n16\" X 15\"\n \nNY STOOLS-9 BEIGE\nNY STOOLS-10 BLACK\nNY STOOLS-11 GREY', 49.00, 49.00, NULL, '2026-10-06 06:47:12', '2026-10-06 07:23:14'),
(342, 1, '73abe207-975b-2cf3-6104-94ff71200064', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY STOOLS-6-7-8', 'https://www.nydiamondusa.com/product-page/ny-stools-6-7-8', 'Images/nydaimondusa/Uncategorized/ny-stools-6-7-8/1.png', 'Images/nydaimondusa/Uncategorized/ny-stools-6-7-8/2.png', 'Images/nydaimondusa/Uncategorized/ny-stools-6-7-8/3.png', NULL, NULL, 'DIMENSION:\n13.5\" X 14.5\"\n \nNY STOOLS-6 BEIGE\nNY STOOLS-7 BLACK\nNY STOOLS-8 GREY\n ', 39.00, 39.00, NULL, '2026-10-06 06:47:21', '2026-10-06 07:23:14'),
(358, 1, '422bc9c6-12b4-c48e-96df-ff2cbc307b67', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'VERMONT-S', 'https://www.nydiamondusa.com/product-page/vermont-s-buffet', 'Images/nydaimondusa/Uncategorized/vermont-s-buffet/1.jpg', NULL, NULL, NULL, NULL, 'Description:\nSilver buffet sideboard \n \nDimension:\n65\"x 17.5\"x31\"', 749.00, 599.00, NULL, '2026-10-06 06:47:34', '2026-10-06 07:23:14'),
(383, 1, '06e28b08-3cc2-c41e-2805-e4d91b17f70d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '2285 GRAY', 'https://www.nydiamondusa.com/product-page/2285-gray', 'Images/nydaimondusa/Uncategorized/2285-gray/1.png', NULL, NULL, NULL, NULL, NULL, 1299.00, 1299.00, NULL, '2026-10-06 06:49:01', '2026-10-06 07:23:14'),
(384, 1, 'a8ebc170-4098-ca90-2d84-34246493126d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '2285 CREAM', 'https://www.nydiamondusa.com/product-page/2285-white', 'Images/nydaimondusa/Uncategorized/2285-white/1.png', NULL, NULL, NULL, NULL, NULL, 1299.00, 1299.00, NULL, '2026-10-06 06:49:03', '2026-10-06 07:23:14'),
(385, 1, '7c39c0f7-555b-aa25-9368-949fa0371cf9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'GM005 WHITE', 'https://www.nydiamondusa.com/product-page/gm005-white', 'Images/nydaimondusa/Uncategorized/gm005-white/1.png', 'Images/nydaimondusa/Uncategorized/gm005-white/2.png', NULL, NULL, NULL, 'Description:\n \n-SOFA SAME DIRECTION AS PIC\n-GB LED LIGHT\n-USB CHARGER\n-BLUETOOTH SPEAKER\n-SUBWOOFER\n-ADJUSTABLE HEADREST', 1599.00, 1599.00, NULL, '2026-10-06 06:49:06', '2026-10-06 07:23:14'),
(386, 1, '47b5788b-9a07-c14f-7f5b-480cc8acb2ba', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'GM005 BLACK', 'https://www.nydiamondusa.com/product-page/gm005-black', 'Images/nydaimondusa/Uncategorized/gm005-black/1.png', 'Images/nydaimondusa/Uncategorized/gm005-black/2.png', NULL, NULL, NULL, 'Description:\n \n-SOFA SAME DIRECTION AS PIC\n-GB LED LIGHT\n-USB CHARGER\n-BLUETOOTH SPEAKER\n-SUBWOOFER\n-ADJUSTABLE HEADREST', 1599.00, 1599.00, NULL, '2026-10-06 06:49:07', '2026-10-06 07:23:14'),
(387, 1, '421777d1-270d-f623-7a07-1db2288af3a0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'GM004 BLACK', 'https://www.nydiamondusa.com/product-page/gm004-black', 'Images/nydaimondusa/Uncategorized/gm004-black/1.png', 'Images/nydaimondusa/Uncategorized/gm004-black/2.png', NULL, NULL, NULL, 'Description:\n \n-SOFA SAME DIRECTION AS PIC\n-GB LED LIGHT\n-USB CHARGER\n-BLUETOOTH SPEAKER\n-SUBWOOFER\n-ADJUSTABLE HEADREST', 1599.00, 1599.00, NULL, '2026-10-06 06:49:11', '2026-10-06 07:23:14'),
(388, 1, '27d10b38-f46e-0f58-71a1-398c3e05b4f4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'GM004 WHITE', 'https://www.nydiamondusa.com/product-page/gm004-white', 'Images/nydaimondusa/Uncategorized/gm004-white/1.png', 'Images/nydaimondusa/Uncategorized/gm004-white/2.png', NULL, NULL, NULL, 'Description:\n \n-SOFA SAME DIRECTION AS PIC\n-GB LED LIGHT\n-USB CHARGER\n-BLUETOOTH SPEAKER\n-SUBWOOFER\n-ADJUSTABLE HEADREST', 1599.00, 1599.00, NULL, '2026-10-06 06:49:12', '2026-10-06 07:23:14'),
(399, 1, 'a76b6281-39e0-a298-58ef-824997403888', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ZETA CHAIR BLACK', 'https://www.nydiamondusa.com/product-page/zeta-chair-cray', 'Images/nydaimondusa/Uncategorized/zeta-chair-cray/1.jpg', NULL, NULL, NULL, NULL, ' ', 499.00, 499.00, NULL, '2026-10-06 06:49:27', '2026-10-06 07:23:14'),
(400, 1, '9b1d3840-b8bd-4aa5-9593-5cfbef80cc07', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ZETA SOFA & LOVESEAT ORANGE', 'https://www.nydiamondusa.com/product-page/zeta-sofa-loveseat-orange', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-orange/1.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-orange/2.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-orange/3.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-orange/4.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-orange/5.jpg', 'SOFA & LOVESEAT', 1499.00, 1499.00, NULL, '2026-10-06 06:49:40', '2026-10-06 07:23:14'),
(401, 1, '94f667c7-1f9a-3a1e-052c-a3bab456d772', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ZETA SOFA & LOVESEAT GREY', 'https://www.nydiamondusa.com/product-page/zeta-sofa-loveseat-gray', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-gray/1.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-gray/2.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-gray/3.jpg', NULL, NULL, 'SOFA & LOVESEAT', 1499.00, 1499.00, NULL, '2026-10-06 06:49:48', '2026-10-06 07:23:14'),
(402, 1, 'c0ac9737-9580-7578-4ee7-6d80c572530c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ZETA SOFA & LOVESEAT BLACK', 'https://www.nydiamondusa.com/product-page/zeta-sofa-loveseat-black', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-black/1.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-black/2.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-black/3.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-black/4.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-black/5.jpg', 'SOFA & LOVESEAT', 1499.00, 1499.00, NULL, '2026-10-06 06:49:57', '2026-10-06 07:23:14'),
(403, 1, 'd57fc3ac-54a1-2b75-e7e9-8c95623de7c9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ZETA SOFA & LOVESEAT BURGANDY', 'https://www.nydiamondusa.com/product-page/zeta-sofa-loveseat-burgandy', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-burgandy/1.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-burgandy/2.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-burgandy/3.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-burgandy/4.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-burgandy/5.jpg', 'SOFA & LOVESEAT', 1499.00, 1499.00, NULL, '2026-10-06 06:50:06', '2026-10-06 07:23:14'),
(404, 1, '48eaaddc-c336-73c9-43cf-246f1ad22c11', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ZETA SOFA & LOVESEAT CREAM', 'https://www.nydiamondusa.com/product-page/zeta-cream', 'Images/nydaimondusa/Uncategorized/zeta-cream/1.jpg', 'Images/nydaimondusa/Uncategorized/zeta-cream/2.jpg', NULL, NULL, NULL, 'SOFA & LOVESEAT', 1499.00, 1499.00, NULL, '2026-10-06 06:50:09', '2026-10-06 07:23:14'),
(406, 1, '9e877a6d-d6c8-5703-c143-eea78a4f7b42', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BC9762 BLACK', 'https://www.nydiamondusa.com/product-page/bc9762-black', 'Images/nydaimondusa/Uncategorized/bc9762-black/1.png', 'Images/nydaimondusa/Uncategorized/bc9762-black/2.png', NULL, NULL, NULL, 'LAF SEAT  L42\"  *  D40\"  *  H29\"\nRAF SEAT  L42\"  *  D40\"  *  H29\"\nCONSOLE (WITH WIRELESS CHARGE) L13\" * D40\" * H29\"\n1S(ARMLESS) L29\" * D40\" * H29\"\nCORNER L44\" * D44\" * H29\"\nCHAISE L42\" * D60\" * H29\"', 1599.00, 1299.00, NULL, '2026-10-06 06:50:13', '2026-10-06 07:23:14'),
(407, 1, '70a51112-0b40-5b95-513a-6549f2175694', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BC9762 WHITE', 'https://www.nydiamondusa.com/product-page/bc9762-sectional', 'Images/nydaimondusa/Uncategorized/bc9762-sectional/1.png', NULL, NULL, NULL, NULL, 'LAF SEAT  L42\"  *  D40\"  *  H29\"\nRAF SEAT  L42\"  *  D40\"  *  H29\"\nCONSOLE (WITH WIRELESS CHARGE) L13\" * D40\" * H29\"\n1S(ARMLESS) L29\" * D40\" * H29\"\nCORNER L44\" * D44\" * H29\"\nCHAISE L42\" * D60\" * H29\"', 1599.00, 1599.00, NULL, '2026-10-06 06:50:15', '2026-10-06 07:23:14'),
(409, 1, 'fde40b8e-b181-4d1e-3b39-27bb8944dc49', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MS2212-RED', 'https://www.nydiamondusa.com/product-page/ms2212-red', 'Images/nydaimondusa/Uncategorized/ms2212-red/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions Sofa:\n	• L 92\" x W 37\" x H 32\"\n \nDimensions LoveSeat:\n	• L 79\" x W 37\" x H 32\"\n \nDescription:\n	• Velvet Sofa LoveSeat\n	• Available in several colors\n	• Has a Gold Frame', 1299.00, 1299.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-06 06:50:17', '2026-10-06 07:23:14'),
(431, 1, '6617fa54-a413-d596-6d66-48d7ffaa6754', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'TEKSAS-CREAM', 'https://www.nydiamondusa.com/product-page/teksas-cream', 'Images/nydaimondusa/Uncategorized/teksas-cream/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• Length: 120\"\n	• Chaise: 74\"\n	• Height: 34\"\n \nDescription:\n	• Velvet Sectional\n	• Available in Black, Blue & Grey Colors', 1199.00, 899.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-06 06:50:46', '2026-10-06 07:23:14'),
(433, 1, '2f8443c7-a5c3-81eb-6a49-5937b280b0cb', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'E-18 GREY & WHITE', 'https://www.nydiamondusa.com/product-page/e-18-grey-white', 'Images/nydaimondusa/Uncategorized/e-18-grey-white/1.jpg', 'Images/nydaimondusa/Uncategorized/e-18-grey-white/2.jpg', NULL, NULL, NULL, 'Dimensions:\n \nDescription:', 1999.00, 1999.00, NULL, '2026-10-06 06:50:49', '2026-10-06 07:23:14'),
(436, 1, 'abf01520-7231-da9a-ab26-16ab13687c2a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ARIANA-GREY', 'https://www.nydiamondusa.com/product-page/ariana-grey-1', 'Images/nydaimondusa/Uncategorized/ariana-grey-1/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• Length: 144\"\n	• Chaise: 70\"\n	• Height: 31\"\n \nDescription:\n	• Velvet Sectional\n	• Available in variety of colors', 1299.00, 1299.00, NULL, '2026-10-06 06:50:53', '2026-10-06 07:23:14'),
(442, 1, '584f9b82-8a9a-4e2a-b0d4-f895ef195e55', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ARIANA-CREAM', 'https://www.nydiamondusa.com/product-page/ariana-cream', 'Images/nydaimondusa/Uncategorized/ariana-cream/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• Length: 144\"\n	• Chaise: 70\"\n	• Height: 31\"\n \nDescription:\n	• Velvet Sectional\n	• Available in variety of colors', 1299.00, 1299.00, NULL, '2026-10-06 06:51:06', '2026-10-06 07:23:14'),
(443, 1, 'aaaa104f-6cd6-dc62-1aa8-92d95d3b7706', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ARIANA-NAVYBLUE', 'https://www.nydiamondusa.com/product-page/ariana-navyblue', 'Images/nydaimondusa/Uncategorized/ariana-navyblue/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• Length: 144\"\n	• Chaise: 70\"\n	• Height: 31\"\n \nDescription:\n	• Velvet Sectional\n	• Available in variety of colors', 1299.00, 1299.00, NULL, '2026-10-06 06:51:06', '2026-10-06 07:23:14'),
(444, 1, 'e96dbb97-0284-accf-ad9e-3be8d1b9d598', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ARIANA-GREEN', 'https://www.nydiamondusa.com/product-page/ariana-green', 'Images/nydaimondusa/Uncategorized/ariana-green/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• Length: 144\"\n	• Chaise: 70\"\n	• Height: 31\"\n \nDescription:\n	• Velvet Sectional\n	• Available in variety of colors', 1299.00, 1299.00, NULL, '2026-10-06 06:51:07', '2026-10-06 07:23:14'),
(464, 1, 'a509ebb2-d51c-523c-d661-a451392b7d2f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MS2217-BLACK', 'https://www.nydiamondusa.com/product-page/ms2217-black-1', 'Images/nydaimondusa/Uncategorized/ms2217-black-1/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\nLength: 132\"\nChaise: 69\"\nHeight: 31\"\n \nDescription:\n- 3 PCS Velvet Sectional\n- Available in Dark Grey, \n  Black and Cream Colors\n- Gold Frame', 1299.00, 1299.00, NULL, '2026-10-06 06:51:29', '2026-10-06 07:23:14'),
(470, 1, 'ad290543-53c0-8ee2-5b21-2431648d46d7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MS2217-CREAM', 'https://www.nydiamondusa.com/product-page/ms2217-cream', 'Images/nydaimondusa/Uncategorized/ms2217-cream/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• Length: 132\"\n	• Chaise: 69\"\n	• Height: 31\"\n	 \nDescription:\n	• 3 PCS Velvet Sectional\n	• Available in Dark Grey, \n	• Black and Cream Colors\n	• Has a Gold Frame', 1299.00, 1299.00, NULL, '2026-10-06 06:51:35', '2026-10-06 07:23:14'),
(476, 1, '7e9bc9aa-5322-1e1d-886e-4a0524e868b6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'TEKSAS-GREY', 'https://www.nydiamondusa.com/product-page/teksas-grey', 'Images/nydaimondusa/Uncategorized/teksas-grey/1.jpeg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• Length: 120\"\n	• Chaise: 74\"\n	• Height: 34\"\n \nDescription:\n	• Velvet Sectional\n	• Available in Black, Blue & Grey Colors', 1199.00, 899.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-06 06:51:40', '2026-10-06 07:23:15'),
(477, 1, 'e8eeedd4-1b6a-2a00-530c-b152354690d7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ARIANA-BLACK', 'https://www.nydiamondusa.com/product-page/ariana-grey', 'Images/nydaimondusa/Uncategorized/ariana-grey/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• Length: 144\"\n	• Chaise: 70\"\n	• Height: 31\"\n \nDescription:\n	• Velvet Sectional\n	• Available in variety of colors', 1299.00, 1299.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-06 06:51:42', '2026-10-06 07:23:15'),
(478, 1, '9a116648-7290-8bdb-79b8-5d5269806f59', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ARIANA-YELLOW', 'https://www.nydiamondusa.com/product-page/ariana-yellow', 'Images/nydaimondusa/Uncategorized/ariana-yellow/1.jpeg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• Length: 144\"\n	• Chaise: 70\"\n	• Height: 31\"\n \nDescription:\n	• Velvet Sectional\n	• Available in Yellow & Grey Colors', 1299.00, 1299.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-06 06:51:43', '2026-10-06 07:23:15'),
(479, 1, '71f3f3f0-d6ef-ee33-5b14-11703da200c7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MS2199', 'https://www.nydiamondusa.com/product-page/stella-cream', 'Images/nydaimondusa/Uncategorized/stella-cream/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• RAF Sofa 73\" x 37\" x 33\"\n	• LAF Sofa 73\" x 37\" x 33\"\n	• Corner 61\" x 37\" x 33\"\n \nDescription:\n	• 3 pcs Velvet Sectional\n	• Available in Cream Color', 1399.00, 1399.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-06 06:51:43', '2026-10-06 07:23:15'),
(480, 1, '23eedd2a-51c4-e66d-4182-e1f56b13b473', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MS2212-CREAM', 'https://www.nydiamondusa.com/product-page/ms2212-cream', 'Images/nydaimondusa/Uncategorized/ms2212-cream/1.jpeg', 'Images/nydaimondusa/Uncategorized/ms2212-cream/2.jpg', NULL, NULL, NULL, 'Dimensions Sofa:\n	• L 92\" x W 37\" x H 32\"\n \nDimensions LoveSeat:\n	• L 79\" x W 37\" x H 32\"\n \nDescription:\n	• Velvet Sofa LoveSeat\n	• Available in Black and Cream Colors\n	• Has a Gold Frame', 1299.00, 1299.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-06 06:51:45', '2026-10-06 07:23:15'),
(489, 1, 'abe18f98-f3a6-766e-e1c7-3415aca55cfe', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'JUDY BLACK', 'https://www.nydiamondusa.com/product-page/judy-black', 'Images/nydaimondusa/Uncategorized/judy-black/1.jpg', 'Images/nydaimondusa/Uncategorized/judy-black/2.jpg', 'Images/nydaimondusa/Uncategorized/judy-black/3.jpg', 'Images/nydaimondusa/Uncategorized/judy-black/4.jpg', 'Images/nydaimondusa/Uncategorized/judy-black/5.jpg', 'Dimension:\n	• 23\" W x 26\" D x 36\" H\n\nDescription:\n	• Velvet Vanity Chair\n	• Bar Stool\n	• It Comes With Multiple Colors', 99.00, 99.00, NULL, '2026-10-06 06:52:14', '2026-10-06 07:23:15'),
(506, 1, '461413af-9a10-d722-abb6-b1c80d81f40b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-257', 'https://www.nydiamondusa.com/product-page/ny-257', 'Images/nydaimondusa/Uncategorized/ny-257/1.jpeg', NULL, NULL, NULL, NULL, 'Dimension:\n12\"x 20\"x 28\"\n \nDescription:\nRound interwined glass shaped chandelair', 299.00, 299.00, NULL, '2026-10-06 06:54:03', '2026-10-06 07:23:15'),
(514, 1, '193e7d2b-6087-19d5-7bf0-754f7f074d3c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C9020-GRAY', 'https://www.nydiamondusa.com/product-page/ch9020-gray', 'Images/nydaimondusa/Uncategorized/ch9020-gray/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• L 22\" x W 24\" x H 40.4\"\n \nDescription:\n	• Stainless Steel Chair with Fabric\n	• Chairs come upholstered in Gray Soft Velvet\n	• Cushioned Seating: For ultimate Comfort\n	• Leg Finish: Chrome\n	• Box comes with 2 Pieces', 99.00, 99.00, NULL, '2026-10-06 06:54:16', '2026-10-06 07:23:15'),
(527, 1, '99345da4-e31f-a207-380f-9dc22e16d228', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'PIC 3464', 'https://www.nydiamondusa.com/product-page/b-28', 'Images/nydaimondusa/Uncategorized/b-28/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• \"40 x 56 inch\"\n \nDescription:\n	• Acrylic Picture Frame', 125.00, 125.00, NULL, '2026-10-06 06:54:31', '2026-10-06 07:23:15'),
(528, 1, 'eeeb4e8f-8519-5b31-5395-9e244286a7cc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'PIC 1001', 'https://www.nydiamondusa.com/product-page/b-07', 'Images/nydaimondusa/Uncategorized/b-07/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• \"40 x 56 inch\"\n \nDescription:\n	• Acrylic Picture Frame', 125.00, 125.00, NULL, '2026-10-06 06:54:32', '2026-10-06 07:23:15'),
(535, 1, 'a5e125bc-52ea-d787-782c-deee9b108125', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BONJOUR MIRROR-6 WHITE', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-6-white', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-white/1.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-white/2.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-white/3.jpg', NULL, NULL, 'Dimensions:\n	• L 28\" x W 5\" x H 28\"\n \nDescription:\n	• Mirror & LED Lights Bulbs\n	• BlueTooth\n	• Speaker\n	• Tech Screen\n	 \n ', 329.00, 329.00, NULL, '2026-10-06 06:54:45', '2026-10-06 07:23:15'),
(536, 1, 'dddf3721-486d-f095-fdb5-b1b4588cb715', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BONJOUR MIRROR-6 PINK', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-6-pink', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-pink/1.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-pink/2.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-pink/3.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-pink/4.jpg', NULL, 'Dimensions:\n	• L 28\" x W 5\" x H 28\"\n \nDescription:\n	• Mirror & LED Lights Bulbs\n	• BlueTooth\n	• Speaker\n	• Tech Screen\n	 \n ', 329.00, 329.00, NULL, '2026-10-06 06:54:48', '2026-10-06 07:23:15'),
(537, 1, 'e3d60178-1efd-2d81-31cf-536128b0744e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BONJOUR MIRROR-6 GRAY', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-6-gray', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-gray/1.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-gray/2.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-gray/3.jpg', NULL, NULL, 'Dimensions:\n	• L 28\" x W 5\" x H 28\"\n \nDescription:\n	• Mirror & LED Lights Bulbs\n	• BlueTooth\n	• Speaker\n	• Tech Screen\n	 \n ', 329.00, 329.00, NULL, '2026-10-06 06:54:50', '2026-10-06 07:23:15'),
(538, 1, 'b3cab0a4-5530-8e81-bba8-8b3654135e0f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BONJOUR MIRROR-6 BLACK', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-6-black', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-black/1.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-black/2.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-black/3.jpg', NULL, NULL, 'Dimensions:\n	• L 28\" x W 5\" x H 28\"\n \nDescription:\n	• Mirror & LED Lights Bulbs\n	• BlueTooth\n	• Speaker\n	• Tech Screen\n	 \n ', 329.00, 329.00, NULL, '2026-10-06 06:54:52', '2026-10-06 07:23:15'),
(539, 1, '44dd1223-c1de-e0cc-ae5a-89a05ec7c90f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BONJOUR MIRROR-5 WHITE', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-5-white', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-5-white/1.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-5-white/2.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-5-white/3.jpg', NULL, NULL, 'Dimensions:\n	• L 58\" x W 5\" x H 32\"\n \nDescription:\n	• Mirror & LED Lights Bulbs\n	• BlueTooth\n	• Speaker\n	• Tech Screen\n	 \n ', 449.00, 449.00, NULL, '2026-10-06 06:54:55', '2026-10-06 07:23:15'),
(541, 1, 'fa289b40-4a8f-7ae8-7bd3-f6cd368ed0b0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BONJOUR MIRROR-5 GRAY', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-5-gray', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-5-gray/1.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-5-gray/2.jpg', NULL, NULL, NULL, 'Dimensions:\n	• L 58\" x W 5\" x H 32\"\n \nDescription:\n	• Mirror & LED Lights Bulbs\n	• BlueTooth\n	• Speaker\n	• Tech Screen\n	 \n ', 449.00, 449.00, NULL, '2026-10-06 06:54:58', '2026-10-06 07:23:15'),
(564, 1, '7a033ecf-8ba9-4057-4f0c-a695c176490f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C338-GRAY', 'https://www.nydiamondusa.com/product-page/c338-gray', 'Images/nydaimondusa/Uncategorized/c338-gray/1.jpeg', 'Images/nydaimondusa/Uncategorized/c338-gray/2.jpeg', NULL, NULL, NULL, 'Dimensions:\n	• L 26\" x W 24.3\" x H 37.5\"\n \nDescription:\n	• Stainless Steel Dining Chair with Fabric\n	• Chairs with Cabriole Shaped Legs\n	• Lion Ring Back\n	• Chairs come upholstered in Gray Fabric\n	• Cushioned Seating: For ultimate comfort\n	• Leg Finish: Chrome\n	• Box comes with 2 Pieces', 149.00, 149.00, NULL, '2026-10-06 06:56:09', '2026-10-06 07:23:15'),
(582, 1, '3fd2fe93-8d94-babc-e998-65c65626d42a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'TOLEDO', 'https://www.nydiamondusa.com/product-page/toledo', 'Images/nydaimondusa/Uncategorized/toledo/1.jpeg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• L 36\" x W 16.2\" x H 71.2\"\n \nDescription:\n	• 2 Glass Doors\n	• 2 Drawers\n	• Has Spot LED Light Inside\n	• Crushed Outside with LED Light', 799.00, 799.00, NULL, '2026-10-06 06:57:04', '2026-10-06 07:23:15'),
(592, 1, '71cc30f9-d815-1e5c-99de-3e5d874fc5ca', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C291-GRAY', 'https://www.nydiamondusa.com/product-page/c291-gray', 'Images/nydaimondusa/Uncategorized/c291-gray/1.jpg', 'Images/nydaimondusa/Uncategorized/c291-gray/2.jpg', 'Images/nydaimondusa/Uncategorized/c291-gray/3.jpg', 'Images/nydaimondusa/Uncategorized/c291-gray/4.jpg', 'Images/nydaimondusa/Uncategorized/c291-gray/5.jpg', 'Dimensions:\n	• L 22\" x W 24\" x H 40.4\"\n \nDescription:\n	• Stainless Steel Chair with Fabric\n	• Chairs come upholstered in Gray Soft Velvet\n	• Cushioned Seating: For ultimate Comfort\n	• Leg Finish: Chrome\n	• Box comes with 2 Pieces', 99.00, 99.00, NULL, '2026-10-06 06:57:21', '2026-10-06 07:23:15'),
(593, 1, 'abe5a2c6-ac5f-e13a-effd-7273e2f0a307', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C253-BLUE', 'https://www.nydiamondusa.com/product-page/c253-blue', 'Images/nydaimondusa/Uncategorized/c253-blue/1.jpg', 'Images/nydaimondusa/Uncategorized/c253-blue/2.jpg', 'Images/nydaimondusa/Uncategorized/c253-blue/3.jpg', 'Images/nydaimondusa/Uncategorized/c253-blue/4.jpg', 'Images/nydaimondusa/Uncategorized/c253-blue/5.jpg', 'Dimensions:\n	• L 20.8\" x W 17.2\" x H 40.4\"\n \nDescription:\n	• Stainless Steel Chair with Fabric\n	• Chairs come upholstered in Blue soft velvet\n	• Cushioned Seating: For ultimate comfort\n	• Leg Finish: Chrome\n	• Box comes with 2 Pieces', 149.00, 149.00, NULL, '2026-10-06 06:57:24', '2026-10-06 07:23:15'),
(594, 1, '6ee79fe5-96d1-0f18-5cb6-765457245322', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C253-GRAY', 'https://www.nydiamondusa.com/product-page/c253-gray', 'Images/nydaimondusa/Uncategorized/c253-gray/1.jpg', 'Images/nydaimondusa/Uncategorized/c253-gray/2.jpg', 'Images/nydaimondusa/Uncategorized/c253-gray/3.jpg', 'Images/nydaimondusa/Uncategorized/c253-gray/4.jpg', 'Images/nydaimondusa/Uncategorized/c253-gray/5.jpg', 'Dimensions:\n	• L 20.8\" x W 17.2\" x H 40.4\"\n \nDescription:\n	• Stainless Steel Chair with Fabric\n	• Chairs come upholstered in Gray soft velvet\n	• Cushioned Seating: For ultimate comfort\n	• Leg Finish: Chrome\n	• Box comes with 2 Pieces', 149.00, 149.00, NULL, '2026-10-06 06:57:27', '2026-10-06 07:23:15'),
(595, 1, 'ed29ba96-f69c-1fbc-d2fc-bf41bc9dc084', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C253-BLACK', 'https://www.nydiamondusa.com/product-page/c253-black', 'Images/nydaimondusa/Uncategorized/c253-black/1.jpg', 'Images/nydaimondusa/Uncategorized/c253-black/2.jpg', 'Images/nydaimondusa/Uncategorized/c253-black/3.jpg', NULL, NULL, 'Dimensions:\n	• L 20.8\" x W 17.2\" x H 40.4\"\n \nDescription:\n	• Stainless Steel Chair with Fabric\n	• Chairs come upholstered in black soft velvet\n	• Cushioned Seating: For ultimate comfort\n	• Leg Finish: Chrome\n	• Box comes with 2 Pieces', 149.00, 149.00, NULL, '2026-10-06 06:57:29', '2026-10-06 07:23:15'),
(615, 1, 'fbd5d7d1-5c2c-a9d8-fbd2-cfd38da48272', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'JIM6-15', 'https://www.nydiamondusa.com/product-page/ny6-7-cigar-2', 'Images/nydaimondusa/Uncategorized/ny6-7-cigar-2/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• \"100 x 140 cm\"\n \nDescription:\n	• Acrylic Picture Frame', 125.00, 125.00, NULL, '2026-10-06 06:58:11', '2026-10-06 07:23:15'),
(679, 1, '6a87b5a8-38e5-60fe-8c07-4204f3b6e246', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'GS004-13D \"CRUZ\"', 'https://www.nydiamondusa.com/product-page/gs004-13d-cruz', 'Images/nydaimondusa/Uncategorized/gs004-13d-cruz/1.jpg', 'Images/nydaimondusa/Uncategorized/gs004-13d-cruz/2.jpg', NULL, NULL, NULL, 'Dimensions:\nL 52\" x W 16\" x H 35\"\n \nDescription:\nMirror, Glass, Crystal Knobs', 600.00, 600.00, NULL, '2026-10-06 06:59:39', '2026-10-06 07:23:16'),
(687, 1, '7218d2e4-93af-05b8-dad1-d2c7ecd3d9de', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-BLK COFFEE', 'https://www.nydiamondusa.com/product-page/ny-blk-coffee', 'Images/nydaimondusa/Uncategorized/ny-blk-coffee/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• L 39.6\" x W 39.6\" x H 18.3\"\n \nDescription:\n	• Black Glass Coffee Table\n	• Crush Diamond Top', 549.00, 549.00, NULL, '2026-10-06 06:59:48', '2026-10-06 07:23:16'),
(688, 1, '0d869848-ef83-217d-05eb-5c37eaa5e949', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-BLK FIRE (WASHINGTON)', 'https://www.nydiamondusa.com/product-page/ny-blk-fire-washington', 'Images/nydaimondusa/Uncategorized/ny-blk-fire-washington/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• L 47.4\" x W 13.2\" x H 39\"\n \nDescriptions:\n	• Black Glass Fireplace\n	• LED Light\n	• Crystal LED Insert', 400.00, 400.00, NULL, '2026-10-06 06:59:49', '2026-10-06 07:23:16'),
(689, 1, 'af174580-6865-50a1-5240-85db4109f0dc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MAZA', 'https://www.nydiamondusa.com/product-page/maza', 'Images/nydaimondusa/Uncategorized/maza/1.jpg', NULL, NULL, NULL, NULL, 'Dimensions:\n	• L 33.9\" x W 19.7\" x H 48\"\n \nDescription:\n	• Gold Glass\n	• 5 Drawers Chest\n	• LED Crush LED Light', 549.00, 549.00, NULL, '2026-10-06 06:59:51', '2026-10-06 07:23:16'),
(690, 1, '28e803b0-2058-7894-0d79-607ddb0bc7b1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'JAVA', 'https://www.nydiamondusa.com/product-page/java', 'Images/nydaimondusa/Uncategorized/java/1.png', NULL, NULL, NULL, NULL, 'Dimensions:\n	• L 59.8\" x W 20.1\" x H 34\"\n \nDescription:\n	• Gold Glass\n	• 7 Drawers Dresser\n	• LED Crush & LED Light', 849.00, 849.00, NULL, '2026-10-06 06:59:53', '2026-10-06 07:23:16'),
(691, 1, 'b3f4e2c1-4823-be73-36ea-e4b2e338e4a7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BAYA', 'https://www.nydiamondusa.com/product-page/baya', 'Images/nydaimondusa/Uncategorized/baya/1.png', NULL, NULL, NULL, NULL, 'Dimensions:\n	• L 39.6\" x W 39.6\" x H 18.3\"\n \nDescription:\n	• Gold Glass Coffee Table\n	• Crush Diamond Top', 599.00, 599.00, NULL, '2026-10-06 06:59:55', '2026-10-06 07:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `Dining Chairs`
--

CREATE TABLE `Dining Chairs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Dining Chairs`
--

INSERT INTO `Dining Chairs` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(1, 1, '8fb1f755-8039-5259-76ae-70f185b6bfbe', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G6087-Taupe', 'https://www.nydiamondusa.com/product-page/g6087-taupe', 'Images/nydaimondusa/Dining Chairs/g6087-taupe/1.jpeg', NULL, NULL, NULL, NULL, 'Chairs with cabriole shaped gold legs.', 99.00, 99.00, NULL, '2026-10-06 06:35:46', '2026-10-10 05:32:10'),
(10, 1, 'ee5769c6-1201-150b-d263-cb3352f797e5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'C187', 'https://www.nydiamondusa.com/product-page/c187', 'Images/nydaimondusa/Dining Chairs/c187/1.jpg', 'Images/nydaimondusa/Dining Chairs/c187/2.jpeg', NULL, NULL, NULL, 'Chrome white PU leather chairs.', 179.00, 109.00, NULL, '2026-10-06 06:35:55', '2026-10-10 05:32:22'),
(30, 1, 'ab61f1c2-38d4-10a8-6c3d-51963f1c81dc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G-150 TAUPE', 'https://www.nydiamondusa.com/product-page/g-150-taupe', 'Images/nydaimondusa/Dining Chairs/g-150-taupe/1.jpeg', NULL, NULL, NULL, NULL, NULL, 69.00, 69.00, NULL, '2026-10-06 06:36:15', '2026-10-10 05:32:25'),
(31, 1, '2989ae8b-ec25-ac58-0f0d-773d12cdaa5d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G-150 CREAM', 'https://www.nydiamondusa.com/product-page/g-150-cream', 'Images/nydaimondusa/Dining Chairs/g-150-cream/1.jpeg', NULL, NULL, NULL, NULL, NULL, 69.00, 69.00, NULL, '2026-10-06 06:36:16', '2026-10-10 05:32:25'),
(32, 1, '699267df-b1fd-b801-c6ce-aa44e3d7a296', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'B-200 CREAM', 'https://www.nydiamondusa.com/product-page/b-200-cream', 'Images/nydaimondusa/Dining Chairs/b-200-cream/1.jpeg', NULL, NULL, NULL, NULL, NULL, 69.00, 69.00, NULL, '2026-10-06 06:36:16', '2026-10-10 05:32:25'),
(33, 1, '0b92c9d7-c27d-90a0-bd29-cc1c403c6140', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'B-200 GREY', 'https://www.nydiamondusa.com/product-page/b-200-grey', 'Images/nydaimondusa/Dining Chairs/b-200-grey/1.jpg', 'Images/nydaimondusa/Dining Chairs/b-200-grey/2.jpeg', NULL, NULL, NULL, NULL, 69.00, 69.00, NULL, '2026-10-06 06:36:17', '2026-10-10 05:32:27'),
(34, 1, '135ad23d-202d-013a-95dc-2fdaadbea458', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G-160 CREAM', 'https://www.nydiamondusa.com/product-page/g-160-cream', 'Images/nydaimondusa/Dining Chairs/g-160-cream/1.jpg', 'Images/nydaimondusa/Dining Chairs/g-160-cream/2.jpeg', NULL, NULL, NULL, NULL, 69.00, 69.00, NULL, '2026-10-06 06:36:18', '2026-10-10 05:32:28'),
(35, 1, 'aa6343fe-deee-527f-fa01-2c2a2a062701', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G-160 BLACK', 'https://www.nydiamondusa.com/product-page/g-160-black', 'Images/nydaimondusa/Dining Chairs/g-160-black/1.jpg', 'Images/nydaimondusa/Dining Chairs/g-160-black/2.jpeg', NULL, NULL, NULL, NULL, 69.00, 69.00, NULL, '2026-10-06 06:36:19', '2026-10-10 05:32:30'),
(40, 1, 'ae10401c-a710-665d-82ba-20c8a9c38584', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G700-BLACK', 'https://www.nydiamondusa.com/product-page/g700-black', 'Images/nydaimondusa/Dining Chairs/g700-black/1.jpg', NULL, NULL, NULL, NULL, 'Stainless steel chair.', 199.00, 199.00, NULL, '2026-10-06 06:36:24', '2026-10-10 05:32:33'),
(41, 1, 'f98724ea-3161-a60b-7785-e518f586d0e9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G700-GREY', 'https://www.nydiamondusa.com/product-page/g700-grey', 'Images/nydaimondusa/Dining Chairs/g700-grey/1.jpg', NULL, NULL, NULL, NULL, 'Stainless steel chair.', 199.00, 199.00, NULL, '2026-10-06 06:36:25', '2026-10-10 05:32:33'),
(42, 1, '25d21daa-cdbb-e19e-8f03-cea9aee698ca', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G740-WHITE PU', 'https://www.nydiamondusa.com/product-page/g740-white-pu', 'Images/nydaimondusa/Dining Chairs/g740-white-pu/1.png', 'Images/nydaimondusa/Dining Chairs/g740-white-pu/2.png', NULL, NULL, NULL, 'Stainless steel chair.', 199.00, 199.00, NULL, '2026-10-06 06:36:29', '2026-10-10 05:32:33'),
(43, 1, '1f1935ab-4197-eee2-dcd3-4a63de5a9947', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G731 GREY', 'https://www.nydiamondusa.com/product-page/g731-grey', 'Images/nydaimondusa/Dining Chairs/g731-grey/1.jpeg', NULL, NULL, NULL, NULL, 'Stainless steel chair.', 249.00, 249.00, NULL, '2026-10-06 06:36:30', '2026-10-10 05:32:33'),
(66, 1, 'a58cb328-cbac-5be6-1d10-24a76eac880d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'S426 BLACK', 'https://www.nydiamondusa.com/product-page/s426-black', 'Images/nydaimondusa/Dining Chairs/s426-black/1.jpeg', 'Images/nydaimondusa/Dining Chairs/s426-black/2.avif', NULL, NULL, NULL, NULL, 139.00, 139.00, NULL, '2026-10-06 06:37:39', '2026-10-10 05:33:00'),
(67, 1, 'a60b4364-02b6-0b93-6920-5d52e80d4d99', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'RG850 TAUPE', 'https://www.nydiamondusa.com/product-page/rg850-taupe', 'Images/nydaimondusa/Dining Chairs/rg850-taupe/1.jpeg', 'Images/nydaimondusa/Dining Chairs/rg850-taupe/2.jpeg', NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:37:42', '2026-10-10 05:33:00'),
(68, 1, '7e060916-5843-7949-2fb8-d810e00a1a9a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'RG850 CREAM', 'https://www.nydiamondusa.com/product-page/rg850-cream', 'Images/nydaimondusa/Dining Chairs/rg850-cream/1.jpeg', 'Images/nydaimondusa/Dining Chairs/rg850-cream/2.jpeg', NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:37:47', '2026-10-10 05:33:00'),
(69, 1, '6f85be75-3ddd-3149-1349-69695d8c5a23', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'RG800  CREAM', 'https://www.nydiamondusa.com/product-page/rg800-cream', 'Images/nydaimondusa/Dining Chairs/rg800-cream/1.jpeg', 'Images/nydaimondusa/Dining Chairs/rg800-cream/2.jpeg', NULL, NULL, NULL, 'Stainless steel chair.', 199.00, 199.00, NULL, '2026-10-06 06:37:49', '2026-10-10 05:33:00'),
(70, 1, 'bb82827d-4b90-e1ff-822c-016588155197', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'RG800 TAUPE', 'https://www.nydiamondusa.com/product-page/rg800-taupe', 'Images/nydaimondusa/Dining Chairs/rg800-taupe/1.jpeg', NULL, NULL, NULL, NULL, 'Stainless steel chair.', 199.00, 199.00, NULL, '2026-10-06 06:37:51', '2026-10-10 05:33:00'),
(71, 1, 'b851e392-206f-bcc0-b642-a419ad66ce91', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G820 CREAM', 'https://www.nydiamondusa.com/product-page/g820-cream', 'Images/nydaimondusa/Dining Chairs/g820-cream/1.jpeg', 'Images/nydaimondusa/Dining Chairs/g820-cream/2.jpeg', NULL, NULL, NULL, 'Stainless steel chair.', 129.00, 129.00, NULL, '2026-10-06 06:37:53', '2026-10-10 05:33:00'),
(72, 1, '58b3ab9c-9290-f7b7-3829-ecd846f41491', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G820 BLACK', 'https://www.nydiamondusa.com/product-page/g820-black', 'Images/nydaimondusa/Dining Chairs/g820-black/1.jpeg', 'Images/nydaimondusa/Dining Chairs/g820-black/2.jpeg', NULL, NULL, NULL, 'Stainless steel chair.', 129.00, 129.00, NULL, '2026-10-06 06:37:54', '2026-10-10 05:33:00'),
(73, 1, 'b1f017b3-0250-4447-4eb0-81451f7b3dd5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G820 TAUPE', 'https://www.nydiamondusa.com/product-page/g820-taupe', 'Images/nydaimondusa/Dining Chairs/g820-taupe/1.jpeg', 'Images/nydaimondusa/Dining Chairs/g820-taupe/2.jpeg', NULL, NULL, NULL, 'Stainless steel chair.', 129.00, 129.00, NULL, '2026-10-06 06:37:56', '2026-10-10 05:33:00'),
(74, 1, '479917b8-4d1b-bd95-5e5d-33ed64c68996', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G604 CREAM', 'https://www.nydiamondusa.com/product-page/g604-cream', 'Images/nydaimondusa/Dining Chairs/g604-cream/1.jpeg', 'Images/nydaimondusa/Dining Chairs/g604-cream/2.jpeg', NULL, NULL, NULL, 'Stainless steel chair.', 149.00, 149.00, NULL, '2026-10-06 06:37:58', '2026-10-10 05:33:00'),
(75, 1, '67a0f997-8862-e3f9-f2db-868f6de97a99', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G604 GREY', 'https://www.nydiamondusa.com/product-page/g604-grey', 'Images/nydaimondusa/Dining Chairs/g604-grey/1.jpeg', 'Images/nydaimondusa/Dining Chairs/g604-grey/2.jpeg', NULL, NULL, NULL, 'Stainless steel chair.', 149.00, 149.00, NULL, '2026-10-06 06:37:59', '2026-10-10 05:33:00'),
(76, 1, 'a7eb7c24-d0a9-3206-3177-2e7a7fa2e38c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G604 BLACK', 'https://www.nydiamondusa.com/product-page/g604-black', 'Images/nydaimondusa/Dining Chairs/g604-black/1.jpeg', 'Images/nydaimondusa/Dining Chairs/g604-black/2.jpeg', NULL, NULL, NULL, 'Stainless steel chair.', 149.00, 149.00, NULL, '2026-10-06 06:38:01', '2026-10-10 05:33:00'),
(77, 1, '1f0e39e0-6cce-aa79-6a9f-e5e4f8cc21fe', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G604 TAUPE', 'https://www.nydiamondusa.com/product-page/g604-taupe', 'Images/nydaimondusa/Dining Chairs/g604-taupe/1.jpeg', 'Images/nydaimondusa/Dining Chairs/g604-taupe/2.jpeg', NULL, NULL, NULL, 'Stainless steel chair.', 149.00, 149.00, NULL, '2026-10-06 06:38:02', '2026-10-10 05:33:00'),
(85, 1, '2da9f222-554e-d546-3fd1-e5f7851955ca', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G731 BLACK', 'https://www.nydiamondusa.com/product-page/g731-black', 'Images/nydaimondusa/Dining Chairs/g731-black/1.jpeg', 'Images/nydaimondusa/Dining Chairs/g731-black/2.jpeg', 'Images/nydaimondusa/Dining Chairs/g731-black/3.jpeg', NULL, NULL, 'Stainless steel chair.', 249.00, 249.00, NULL, '2026-10-06 06:38:19', '2026-10-10 05:33:02'),
(89, 1, '58d81f1e-ff2f-7497-113f-d19abbc32433', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs | Special Collection', 'G6087-PINK-GOLD', 'https://www.nydiamondusa.com/product-page/g6087-pink-gold', 'Images/nydaimondusa/Dining Chairs/g6087-pink-gold/1.jpeg', NULL, NULL, NULL, NULL, 'Stainless steel dining chair with fabric.', 99.00, 49.00, NULL, '2026-10-06 06:38:23', '2026-10-10 05:33:04'),
(90, 1, '64453fb1-2516-9f0f-9401-abbf5757a069', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G731 TAUPE', 'https://www.nydiamondusa.com/product-page/g731-taupe', 'Images/nydaimondusa/Dining Chairs/g731-taupe/1.jpeg', NULL, NULL, NULL, NULL, 'Stainless steel chair.', 249.00, 249.00, NULL, '2026-10-06 06:38:24', '2026-10-10 05:33:04'),
(91, 1, '243641f1-bdf6-6421-3c7d-8c9b2cf2f541', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G731 CREAM', 'https://www.nydiamondusa.com/product-page/g731-cream', 'Images/nydaimondusa/Dining Chairs/g731-cream/1.jpeg', 'Images/nydaimondusa/Dining Chairs/g731-cream/2.jpeg', NULL, NULL, NULL, 'Stainless steel chair.', 249.00, 249.00, NULL, '2026-10-06 06:38:26', '2026-10-10 05:33:04'),
(112, 1, '03689375-22eb-36dd-294d-459d0ef50878', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G740-TAUPE', 'https://www.nydiamondusa.com/product-page/g740-taupe', 'Images/nydaimondusa/Dining Chairs/g740-taupe/1.png', 'Images/nydaimondusa/Dining Chairs/g740-taupe/2.png', NULL, NULL, NULL, 'Stainless steel chair.', 199.00, 199.00, NULL, '2026-10-06 06:39:21', '2026-10-10 05:33:14'),
(113, 1, '27f3c7b7-6714-1f0a-8085-08346822aa16', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G740-BLACK', 'https://www.nydiamondusa.com/product-page/g740-black', 'Images/nydaimondusa/Dining Chairs/g740-black/1.png', 'Images/nydaimondusa/Dining Chairs/g740-black/2.png', NULL, NULL, NULL, 'Stainless steel chair.', 199.00, 199.00, NULL, '2026-10-06 06:39:26', '2026-10-10 05:33:14'),
(114, 1, '854c6494-3bbb-2f5b-0ad6-8001ff19dd01', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G740-CREAM', 'https://www.nydiamondusa.com/product-page/g740-cream', 'Images/nydaimondusa/Dining Chairs/g740-cream/1.png', 'Images/nydaimondusa/Dining Chairs/g740-cream/2.png', NULL, NULL, NULL, 'Stainless steel chair.', 199.00, 199.00, NULL, '2026-10-06 06:39:27', '2026-10-10 05:33:14'),
(132, 1, 'cedc9707-f49a-03ea-4090-3e7671f3657c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'S-190 GREY', 'https://www.nydiamondusa.com/product-page/s-190-grey', 'Images/nydaimondusa/Dining Chairs/s-190-grey/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:39:57', '2026-10-10 05:33:17'),
(133, 1, '9b40cfd3-8cd6-b4a1-cc6c-35ff6977acf4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'S-190 BLACK', 'https://www.nydiamondusa.com/product-page/s-190-black', 'Images/nydaimondusa/Dining Chairs/s-190-black/1.jpg', NULL, NULL, NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-06 06:40:01', '2026-10-10 05:33:17'),
(134, 1, 'd108303c-784c-36f9-aac9-e79a17b68b04', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G-180 GREY', 'https://www.nydiamondusa.com/product-page/g-180-grey', 'Images/nydaimondusa/Dining Chairs/g-180-grey/1.jpg', NULL, NULL, NULL, NULL, NULL, 55.00, 55.00, NULL, '2026-10-06 06:40:04', '2026-10-10 05:33:17'),
(135, 1, '63cedeff-6496-14b6-4aac-c684312242d0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G-180 BLACK', 'https://www.nydiamondusa.com/product-page/g-180-black', 'Images/nydaimondusa/Dining Chairs/g-180-black/1.jpg', NULL, NULL, NULL, NULL, NULL, 55.00, 55.00, NULL, '2026-10-06 06:40:06', '2026-10-10 05:33:17'),
(136, 1, '154bc637-c4da-6645-3a7c-b77894b081c7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G-180 BEIGE', 'https://www.nydiamondusa.com/product-page/g-180-beige', 'Images/nydaimondusa/Dining Chairs/g-180-beige/1.jpg', NULL, NULL, NULL, NULL, NULL, 55.00, 55.00, NULL, '2026-10-06 06:40:07', '2026-10-10 05:33:17'),
(155, 1, '72b3d9d7-3c49-4be0-a0bf-031d577da99c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'S426 GREY', 'https://www.nydiamondusa.com/product-page/s426-grey', 'Images/nydaimondusa/Dining Chairs/s426-grey/1.jpg', 'Images/nydaimondusa/Dining Chairs/s426-grey/2.jpg', NULL, NULL, NULL, NULL, 139.00, 139.00, NULL, '2026-10-06 06:40:45', '2026-10-10 05:33:17'),
(156, 1, '8c90da5c-b5d9-31e2-4ea9-935e17d34a66', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G425-CREAM', 'https://www.nydiamondusa.com/product-page/g425-cream', 'Images/nydaimondusa/Dining Chairs/g425-cream/1.jpg', 'Images/nydaimondusa/Dining Chairs/g425-cream/2.jpg', NULL, NULL, NULL, NULL, 149.00, 149.00, NULL, '2026-10-06 06:40:47', '2026-10-10 05:33:18'),
(172, 1, 'e20ba0df-e3c2-0798-121c-1b3550a10b77', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G320-BLACK PU', 'https://www.nydiamondusa.com/product-page/g320-black-pu', 'Images/nydaimondusa/Dining Chairs/g320-black-pu/1.jpg', 'Images/nydaimondusa/Dining Chairs/g320-black-pu/2.jpg', NULL, NULL, NULL, NULL, 199.00, 149.00, NULL, '2026-10-06 06:41:20', '2026-10-10 05:33:18'),
(173, 1, '7db9a9c2-df45-edd8-33d8-dd906a5d8497', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G320-TAUPE PU', 'https://www.nydiamondusa.com/product-page/g320-taupe-pu', 'Images/nydaimondusa/Dining Chairs/g320-taupe-pu/1.jpg', 'Images/nydaimondusa/Dining Chairs/g320-taupe-pu/2.jpg', NULL, NULL, NULL, NULL, 199.00, 149.00, NULL, '2026-10-06 06:41:21', '2026-10-10 05:33:18'),
(174, 1, 'e02841d8-1c2d-bd45-e78f-7979640b78de', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G320-LIGHT GREY PU', 'https://www.nydiamondusa.com/product-page/g320-grey-pu', 'Images/nydaimondusa/Dining Chairs/g320-grey-pu/1.jpg', 'Images/nydaimondusa/Dining Chairs/g320-grey-pu/2.jpg', NULL, NULL, NULL, NULL, 199.00, 149.00, NULL, '2026-10-06 06:41:21', '2026-10-10 05:33:18'),
(176, 1, '0a6424ed-c42f-c840-61fc-34f2d7502949', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', '006-TAUPE', 'https://www.nydiamondusa.com/product-page/006-taupe', 'Images/nydaimondusa/Dining Chairs/006-taupe/1.jpg', NULL, NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:41:23', '2026-10-10 05:33:18'),
(198, 1, '43934b08-82b3-e6f1-5ff9-1399a4e02066', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G202 GREY', 'https://www.nydiamondusa.com/product-page/g202-grey', 'Images/nydaimondusa/Dining Chairs/g202-grey/1.jpg', NULL, NULL, NULL, NULL, NULL, 199.00, 199.00, NULL, '2026-10-06 06:42:04', '2026-10-10 05:33:19'),
(199, 1, '101b3403-226c-e7da-a168-61a4c0d5ef43', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G202 BLACK', 'https://www.nydiamondusa.com/product-page/g202-black', 'Images/nydaimondusa/Dining Chairs/g202-black/1.jpg', NULL, NULL, NULL, NULL, NULL, 199.00, 199.00, NULL, '2026-10-06 06:42:05', '2026-10-10 05:33:19'),
(241, 1, '7dbd0d60-f2a3-ecc3-d44f-2e6a3015809b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', '001-PU-WHITE', 'https://www.nydiamondusa.com/product-page/001-pu-white', 'Images/nydaimondusa/Dining Chairs/001-pu-white/1.jpg', NULL, NULL, NULL, NULL, NULL, 299.00, 299.00, NULL, '2026-10-06 06:43:04', '2026-10-10 05:33:26'),
(243, 1, '0b04a01f-d24f-e09a-47ec-a3e2d2c4fdfa', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', '006-CREAM', 'https://www.nydiamondusa.com/product-page/006-cream', 'Images/nydaimondusa/Dining Chairs/006-cream/1.jpg', NULL, NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:43:07', '2026-10-10 05:33:26'),
(244, 1, 'bc961ada-4bcd-e7b9-66d8-c6654ddd1a01', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', '006-GREY', 'https://www.nydiamondusa.com/product-page/006-grey', 'Images/nydaimondusa/Dining Chairs/006-grey/1.jpg', NULL, NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:43:07', '2026-10-10 05:33:26'),
(290, 1, 'b218b43a-d4c4-708a-c206-e1bad599423a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'TAYLOR-CREAM', 'https://www.nydiamondusa.com/product-page/taylor-cream', 'Images/nydaimondusa/Dining Chairs/taylor-cream/1.jpg', NULL, NULL, NULL, NULL, NULL, 139.00, 139.00, NULL, '2026-10-06 06:44:31', '2026-10-10 05:33:29'),
(291, 1, '79fc0028-8ca1-b882-9ce8-d04740aa6ad2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'TAYLOR-GREY', 'https://www.nydiamondusa.com/product-page/taylor-grey', 'Images/nydaimondusa/Dining Chairs/taylor-grey/1.jpg', NULL, NULL, NULL, NULL, NULL, 139.00, 139.00, NULL, '2026-10-06 06:44:33', '2026-10-10 05:33:29'),
(303, 1, '5d8b4aee-ce46-362a-c7f3-b041731b4197', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'C034-BLACK', 'https://www.nydiamondusa.com/product-page/c034-black', 'Images/nydaimondusa/Dining Chairs/c034-black/1.jpg', NULL, NULL, NULL, NULL, NULL, 149.00, 99.00, NULL, '2026-10-06 06:44:46', '2026-10-10 05:33:33'),
(328, 1, '5f8c76fb-47b0-bc35-c50f-eaa3bd096a72', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G187 WHITE PU', 'https://www.nydiamondusa.com/product-page/g187', 'Images/nydaimondusa/Dining Chairs/g187/1.jpg', NULL, NULL, NULL, NULL, NULL, 179.00, 109.00, NULL, '2026-10-06 06:46:44', '2026-10-10 05:33:39'),
(330, 1, '3e251a56-0eff-540f-6e12-b87a7af460ac', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G360-CREAM', 'https://www.nydiamondusa.com/product-page/g320-cream', 'Images/nydaimondusa/Dining Chairs/g320-cream/1.jpg', NULL, NULL, NULL, NULL, NULL, 199.00, 199.00, NULL, '2026-10-06 06:46:46', '2026-10-10 05:33:40'),
(393, 1, 'cd3bd429-6dfb-d35e-509a-3e5bbb0c21d7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G2111 BENCH PU WHITE', 'https://www.nydiamondusa.com/product-page/g2111-bench-white', 'Images/nydaimondusa/Dining Chairs/g2111-bench-white/1.png', NULL, NULL, NULL, NULL, 'Bench.', 599.00, 599.00, NULL, '2026-10-06 06:49:21', '2026-10-10 05:33:46'),
(423, 1, '611c71f6-a30a-cd05-4582-82c6aca2e55e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'C2265-CREAM', 'https://www.nydiamondusa.com/product-page/c2265-cream', 'Images/nydaimondusa/Dining Chairs/c2265-cream/1.jpg', NULL, NULL, NULL, NULL, 'Velvet accent chair.', 299.00, 199.00, NULL, '2026-10-06 06:50:37', '2026-10-10 05:33:59'),
(424, 1, '28445ff5-5b40-39da-06e8-56df90a4cbc3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'C2265-GREY', 'https://www.nydiamondusa.com/product-page/c2265-grey', 'Images/nydaimondusa/Dining Chairs/c2265-grey/1.jpg', NULL, NULL, NULL, NULL, 'Velvet accent chair.', 299.00, 199.00, NULL, '2026-10-06 06:50:39', '2026-10-10 05:33:59'),
(425, 1, '1036efb4-6277-42d9-2026-a52be869cc56', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'C2265-BLACK', 'https://www.nydiamondusa.com/product-page/c2265-black', 'Images/nydaimondusa/Dining Chairs/c2265-black/1.jpg', NULL, NULL, NULL, NULL, 'Velvet accent chair.', 299.00, 199.00, NULL, '2026-10-06 06:50:39', '2026-10-10 05:33:59'),
(440, 1, 'd54715a1-d410-d78e-c11f-d80c0cc21cc1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G560-WHITE GOLD PU', 'https://www.nydiamondusa.com/product-page/g225-white-gold', 'Images/nydaimondusa/Dining Chairs/g225-white-gold/1.jpg', 'Images/nydaimondusa/Dining Chairs/g225-white-gold/2.jpg', 'Images/nydaimondusa/Dining Chairs/g225-white-gold/3.jpg', NULL, NULL, NULL, 199.00, 149.00, NULL, '2026-10-06 06:51:01', '2026-10-10 05:34:01'),
(441, 1, 'f554eb06-badc-19cf-bbdc-c286f9250cea', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G320-WHITE', 'https://www.nydiamondusa.com/product-page/g320-white', 'Images/nydaimondusa/Dining Chairs/g320-white/1.jpg', 'Images/nydaimondusa/Dining Chairs/g320-white/2.jpg', 'Images/nydaimondusa/Dining Chairs/g320-white/3.jpg', NULL, NULL, NULL, 199.00, 149.00, NULL, '2026-10-06 06:51:05', '2026-10-10 05:34:01'),
(445, 1, 'c81bf440-47c7-a495-9dd1-8373e9eeb7ba', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G614-BLACK GOLD', 'https://www.nydiamondusa.com/product-page/g614-black-gold', 'Images/nydaimondusa/Dining Chairs/g614-black-gold/1.jpg', 'Images/nydaimondusa/Dining Chairs/g614-black-gold/2.jpg', 'Images/nydaimondusa/Dining Chairs/g614-black-gold/3.jpg', NULL, NULL, 'Gold chair frame.', 199.00, 199.00, NULL, '2026-10-06 06:51:09', '2026-10-10 05:34:02'),
(460, 1, 'f3c78df3-248f-f2ef-7ebd-3729c55dd2da', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G-S036 BEIGE', 'https://www.nydiamondusa.com/product-page/g-s036-beige', 'Images/nydaimondusa/Dining Chairs/g-s036-beige/1.jpg', 'Images/nydaimondusa/Dining Chairs/g-s036-beige/2.jpg', NULL, NULL, NULL, 'Gold chair.', 999.00, 999.00, NULL, '2026-10-06 06:51:24', '2026-10-10 05:34:03'),
(461, 1, 'd9a38979-5af3-8815-954a-6b98c47b31a3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G-S036 BLACK', 'https://www.nydiamondusa.com/product-page/g-s036-black', 'Images/nydaimondusa/Dining Chairs/g-s036-black/1.jpg', 'Images/nydaimondusa/Dining Chairs/g-s036-black/2.jpg', NULL, NULL, NULL, 'Gold chair.', 999.00, 999.00, NULL, '2026-10-06 06:51:25', '2026-10-10 05:34:03'),
(462, 1, '436fbf44-9e7a-61a4-5a34-e2c4a4147ed8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G-S036 GREY', 'https://www.nydiamondusa.com/product-page/g-s036-grey', 'Images/nydaimondusa/Dining Chairs/g-s036-grey/1.jpg', 'Images/nydaimondusa/Dining Chairs/g-s036-grey/2.jpg', NULL, NULL, NULL, 'Gold chair.', 999.00, 999.00, NULL, '2026-10-06 06:51:27', '2026-10-10 05:34:03'),
(467, 1, '6dcfc02f-fe1e-cdef-efda-e586edcfcf9b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G-099-WHITE PU', 'https://www.nydiamondusa.com/product-page/g-099-white', 'Images/nydaimondusa/Dining Chairs/g-099-white/1.jpg', 'Images/nydaimondusa/Dining Chairs/g-099-white/2.jpg', NULL, NULL, NULL, 'Gold chair with cabriole.', 199.00, 199.00, NULL, '2026-10-06 06:51:33', '2026-10-10 05:34:04'),
(468, 1, '01c07ef8-fe5b-caeb-6032-19299629a7b2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'GOLD CREAM BENCH 2111', 'https://www.nydiamondusa.com/product-page/g-stool-beige', 'Images/nydaimondusa/Dining Chairs/g-stool-beige/1.jpg', NULL, NULL, NULL, NULL, 'Gold steel bench.', 599.00, 599.00, NULL, '2026-10-06 06:51:33', '2026-10-10 05:34:04'),
(469, 1, 'e7c276d4-d00c-db5c-8139-327eb07634a8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'GOLD GREY BENCH 2111', 'https://www.nydiamondusa.com/product-page/g-stool-grey', 'Images/nydaimondusa/Dining Chairs/g-stool-grey/1.jpg', NULL, NULL, NULL, NULL, 'Gold steel bench.', 599.00, 599.00, NULL, '2026-10-06 06:51:34', '2026-10-10 05:34:04'),
(475, 1, '60bdc336-a4ba-7f70-6bc3-2496eaf985a3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G560-GREY GOLD', 'https://www.nydiamondusa.com/product-page/g560-grey-gold', 'Images/nydaimondusa/Dining Chairs/g560-grey-gold/1.jpg', NULL, NULL, NULL, NULL, 'Stainless steel chair with fabric.', 199.00, 149.00, NULL, '2026-10-06 06:51:40', '2026-10-10 05:34:04'),
(485, 1, '5285ffb1-151d-95ab-e50e-bc03d7d2cb9c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G6087-BLACK-GOLD', 'https://www.nydiamondusa.com/product-page/c6087-black-gold', 'Images/nydaimondusa/Dining Chairs/c6087-black-gold/1.jpeg', NULL, NULL, NULL, NULL, 'Upholstered velvet chair with fabric.', 99.00, 99.00, NULL, '2026-10-06 06:51:52', '2026-10-10 05:34:07'),
(486, 1, 'd3d17f7c-3d32-e947-9783-fd0153c40c39', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G6087-BLUE-GOLD', 'https://www.nydiamondusa.com/product-page/c6087-blue-gold', 'Images/nydaimondusa/Dining Chairs/c6087-blue-gold/1.jpeg', NULL, NULL, NULL, NULL, 'Stainless steel dining chair with fabric.', 99.00, 99.00, NULL, '2026-10-06 06:51:53', '2026-10-10 05:34:07'),
(487, 1, '1c6ddea2-fb3c-7a9e-88f2-ebd44377e4f1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G6087-GRAY-GOLD', 'https://www.nydiamondusa.com/product-page/c6087-gray-gold', 'Images/nydaimondusa/Dining Chairs/c6087-gray-gold/1.jpeg', NULL, NULL, NULL, NULL, 'Stainless steel dining chair with fabric.', 99.00, 99.00, NULL, '2026-10-06 06:51:53', '2026-10-10 05:34:07'),
(488, 1, '6cfdcf00-7775-7a4f-ae94-9ce208ede85d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G6087-CREAM-GOLD', 'https://www.nydiamondusa.com/product-page/c6087-beige-gold', 'Images/nydaimondusa/Dining Chairs/c6087-beige-gold/1.jpeg', NULL, NULL, NULL, NULL, 'Chairs with cabriole shaped gold legs.', 99.00, 99.00, NULL, '2026-10-06 06:51:54', '2026-10-10 05:34:07'),
(495, 1, 'a701a4be-c9d7-facf-7e12-91d7be90487b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G345-CREAM', 'https://www.nydiamondusa.com/product-page/g345-beige', 'Images/nydaimondusa/Dining Chairs/g345-beige/1.jpg', 'Images/nydaimondusa/Dining Chairs/g345-beige/2.jpg', NULL, NULL, NULL, 'Chairs with cabriole shaped gold legs.', 149.00, 149.00, NULL, '2026-10-06 06:53:50', '2026-10-10 05:34:08'),
(529, 1, '60112d8f-1262-e53a-9b7a-7993ad48be6d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G560-CREAM GOLD', 'https://www.nydiamondusa.com/product-page/g560-beige-gold', 'Images/nydaimondusa/Dining Chairs/g560-beige-gold/1.jpg', NULL, NULL, NULL, NULL, 'Chairs with cabriole shaped legs.', 199.00, 149.00, NULL, '2026-10-06 06:54:33', '2026-10-10 05:34:16'),
(531, 1, 'fab929a7-9b9f-348e-01a7-7ccd388de414', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'C6087-CREAM', 'https://www.nydiamondusa.com/product-page/c6087-beige', 'Images/nydaimondusa/Dining Chairs/c6087-beige/1.png', 'Images/nydaimondusa/Dining Chairs/c6087-beige/2.png', 'Images/nydaimondusa/Dining Chairs/c6087-beige/3.png', 'Images/nydaimondusa/Dining Chairs/c6087-beige/4.png', NULL, 'Stainless steel dining chair with fabric.', 89.00, 89.00, NULL, '2026-10-06 06:54:38', '2026-10-10 05:34:16'),
(533, 1, '5d24b626-f5a1-efff-b6e1-cba4aebae862', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'G560-BLACK GOLD', 'https://www.nydiamondusa.com/product-page/g560-black-gold', 'Images/nydaimondusa/Dining Chairs/g560-black-gold/1.jpg', 'Images/nydaimondusa/Dining Chairs/g560-black-gold/2.jpg', 'Images/nydaimondusa/Dining Chairs/g560-black-gold/3.jpg', NULL, NULL, 'Stainless steel chair with fabric.', 199.00, 149.00, NULL, '2026-10-06 06:54:42', '2026-10-10 05:34:16'),
(551, 1, '600118b8-6e87-4a69-0ebb-38850301a6fc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'C6087-BLACK', 'https://www.nydiamondusa.com/product-page/c6087-black', 'Images/nydaimondusa/Dining Chairs/c6087-black/1.jpg', 'Images/nydaimondusa/Dining Chairs/c6087-black/2.png', 'Images/nydaimondusa/Dining Chairs/c6087-black/3.png', 'Images/nydaimondusa/Dining Chairs/c6087-black/4.png', 'Images/nydaimondusa/Dining Chairs/c6087-black/5.png', 'Stainless steel dining chair with fabric.', 89.00, 89.00, NULL, '2026-10-06 06:55:25', '2026-10-10 05:34:18'),
(552, 1, 'c1a4ca49-71c7-0bee-d934-7a7d13dc3923', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'C6087-BLUE', 'https://www.nydiamondusa.com/product-page/c6087-blue', 'Images/nydaimondusa/Dining Chairs/c6087-blue/1.jpg', 'Images/nydaimondusa/Dining Chairs/c6087-blue/2.png', 'Images/nydaimondusa/Dining Chairs/c6087-blue/3.png', 'Images/nydaimondusa/Dining Chairs/c6087-blue/4.png', NULL, 'Stainless steel dining chair with fabric.', 89.00, 89.00, NULL, '2026-10-06 06:55:30', '2026-10-10 05:34:19'),
(553, 1, 'b32e6c8b-55a7-de67-5937-ce2df7f8f68e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'C6087-GRAY', 'https://www.nydiamondusa.com/product-page/copy-of-c338-blue', 'Images/nydaimondusa/Dining Chairs/copy-of-c338-blue/1.jpg', 'Images/nydaimondusa/Dining Chairs/copy-of-c338-blue/2.png', 'Images/nydaimondusa/Dining Chairs/copy-of-c338-blue/3.png', 'Images/nydaimondusa/Dining Chairs/copy-of-c338-blue/4.png', 'Images/nydaimondusa/Dining Chairs/copy-of-c338-blue/5.png', 'Stainless steel dining chair with fabric.', 89.00, 89.00, NULL, '2026-10-06 06:55:42', '2026-10-10 05:34:19'),
(576, 1, '6fccda9e-34e1-2531-c42e-bfd291609853', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', '234-BLACK', 'https://www.nydiamondusa.com/product-page/234-black', 'Images/nydaimondusa/Dining Chairs/234-black/1.jpg', 'Images/nydaimondusa/Dining Chairs/234-black/2.jpg', NULL, NULL, NULL, 'Stainless steel chair with fabric.', 169.00, 169.00, NULL, '2026-10-06 06:56:21', '2026-10-10 05:34:22'),
(596, 1, '76b83f8a-8012-4246-5afc-5ce7ab02efcc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'C194-GRAY', 'https://www.nydiamondusa.com/product-page/c194-gray', 'Images/nydaimondusa/Dining Chairs/c194-gray/1.jpg', 'Images/nydaimondusa/Dining Chairs/c194-gray/2.jpg', 'Images/nydaimondusa/Dining Chairs/c194-gray/3.jpg', 'Images/nydaimondusa/Dining Chairs/c194-gray/4.jpg', 'Images/nydaimondusa/Dining Chairs/c194-gray/5.jpg', 'Stainless steel chair with fabric.', 149.00, 149.00, NULL, '2026-10-06 06:57:45', '2026-10-10 05:34:24'),
(597, 1, '3fe23eb9-33a7-e15f-e008-3c84f2bb781b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Chairs', 'C194-BLACK', 'https://www.nydiamondusa.com/product-page/c194-black', 'Images/nydaimondusa/Dining Chairs/c194-black/1.jpg', 'Images/nydaimondusa/Dining Chairs/c194-black/2.jpg', 'Images/nydaimondusa/Dining Chairs/c194-black/3.jpg', 'Images/nydaimondusa/Dining Chairs/c194-black/4.jpg', 'Images/nydaimondusa/Dining Chairs/c194-black/5.jpg', 'Stainless steel chair with fabric.', 149.00, 149.00, NULL, '2026-10-06 06:57:53', '2026-10-10 05:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `Dining Tables`
--

CREATE TABLE `Dining Tables` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Dining Tables`
--

INSERT INTO `Dining Tables` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(36, 1, 'e7b22a44-dd19-73b3-bbe6-e5650b076525', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'BL-151', 'https://www.nydiamondusa.com/product-page/bl-151', 'Images/nydaimondusa/Dining Tables/bl-151/1.jpg', 'Images/nydaimondusa/Dining Tables/bl-151/2.jpeg', NULL, NULL, NULL, NULL, 499.00, 499.00, NULL, '2026-10-06 06:36:19', '2026-10-10 05:32:31'),
(37, 1, 'a8148f19-2ebc-3264-72fa-10e54a726b42', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'BL-161', 'https://www.nydiamondusa.com/product-page/bl-161', 'Images/nydaimondusa/Dining Tables/bl-161/1.jpg', 'Images/nydaimondusa/Dining Tables/bl-161/2.jpeg', NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:36:20', '2026-10-10 05:32:33'),
(54, 1, '6efb9d92-3033-179e-25e4-22c884286632', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'RG2900', 'https://www.nydiamondusa.com/product-page/rg2900', 'Images/nydaimondusa/Dining Tables/rg2900/1.jpg', 'Images/nydaimondusa/Dining Tables/rg2900/2.jpeg', 'Images/nydaimondusa/Dining Tables/rg2900/3.jpeg', 'Images/nydaimondusa/Dining Tables/rg2900/4.jpeg', NULL, NULL, 1299.00, 1299.00, NULL, '2026-10-06 06:36:55', '2026-10-10 05:32:45'),
(55, 1, '3dc9822c-a223-9ef7-a048-1c2b22298e0d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'RG2880', 'https://www.nydiamondusa.com/product-page/rg2880', 'Images/nydaimondusa/Dining Tables/rg2880/1.jpg', 'Images/nydaimondusa/Dining Tables/rg2880/2.jpeg', 'Images/nydaimondusa/Dining Tables/rg2880/3.jpeg', 'Images/nydaimondusa/Dining Tables/rg2880/4.jpeg', NULL, NULL, 1299.00, 1299.00, NULL, '2026-10-06 06:37:00', '2026-10-10 05:32:48'),
(56, 1, '66f7697e-f417-7480-3f9a-9d7477420748', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'GF2625', 'https://www.nydiamondusa.com/product-page/gf2625', 'Images/nydaimondusa/Dining Tables/gf2625/1.jpeg', 'Images/nydaimondusa/Dining Tables/gf2625/2.jpeg', 'Images/nydaimondusa/Dining Tables/gf2625/3.jpeg', 'Images/nydaimondusa/Dining Tables/gf2625/4.jpeg', 'Images/nydaimondusa/Dining Tables/gf2625/5.jpeg', NULL, 1299.00, 1299.00, NULL, '2026-10-06 06:37:05', '2026-10-10 05:32:48'),
(57, 1, 'e60949e6-71fc-02ae-a844-c3b2312dba9f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'GF2616', 'https://www.nydiamondusa.com/product-page/gf2616', 'Images/nydaimondusa/Dining Tables/gf2616/1.jpeg', 'Images/nydaimondusa/Dining Tables/gf2616/2.jpeg', 'Images/nydaimondusa/Dining Tables/gf2616/3.jpeg', 'Images/nydaimondusa/Dining Tables/gf2616/4.jpeg', NULL, NULL, 699.00, 699.00, NULL, '2026-10-06 06:37:08', '2026-10-10 05:32:48'),
(79, 1, '582070b0-2e22-4201-b8b5-6f4919fddc84', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'GF2659', 'https://www.nydiamondusa.com/product-page/gf2659', 'Images/nydaimondusa/Dining Tables/gf2659/1.jpeg', NULL, NULL, NULL, NULL, NULL, 1199.00, 1199.00, NULL, '2026-10-06 06:38:05', '2026-10-10 05:33:00'),
(80, 1, '1a4e9b80-66fe-57b4-caec-34c9f139a742', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'GF2615', 'https://www.nydiamondusa.com/product-page/gf2615', 'Images/nydaimondusa/Dining Tables/gf2615/1.jpeg', 'Images/nydaimondusa/Dining Tables/gf2615/2.jpeg', 'Images/nydaimondusa/Dining Tables/gf2615/3.jpeg', NULL, NULL, NULL, 699.00, 699.00, NULL, '2026-10-06 06:38:09', '2026-10-10 05:33:00'),
(81, 1, '49a648f2-b101-99f1-692b-a20c8002cc84', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'G2076', 'https://www.nydiamondusa.com/product-page/g2076', 'Images/nydaimondusa/Dining Tables/g2076/1.jpeg', NULL, NULL, NULL, NULL, NULL, 899.00, 799.00, NULL, '2026-10-06 06:38:10', '2026-10-10 05:33:00'),
(83, 1, '10003340-7753-d0c8-d6ef-55c76cfb11a3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'PL-100 WHITE 50\"', 'https://www.nydiamondusa.com/product-page/pl-100-white-50', 'Images/nydaimondusa/Dining Tables/pl-100-white-50/1.jpeg', 'Images/nydaimondusa/Dining Tables/pl-100-white-50/2.jpeg', NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:38:14', '2026-10-10 05:33:00'),
(84, 1, 'd5c3247d-4a5b-b29e-c14a-83cc35296a38', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables | Special Collection', 'BL-100 BLACK 50\"', 'https://www.nydiamondusa.com/product-page/bl-100-black-50', 'Images/nydaimondusa/Dining Tables/bl-100-black-50/1.jpg', 'Images/nydaimondusa/Dining Tables/bl-100-black-50/2.jpeg', 'Images/nydaimondusa/Dining Tables/bl-100-black-50/3.jpeg', NULL, NULL, NULL, 599.00, 499.00, NULL, '2026-10-06 06:38:16', '2026-10-10 05:33:02'),
(120, 1, '460928fc-64f5-f763-36a1-6b87a2cd2677', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'SR-150 SILVER', 'https://www.nydiamondusa.com/product-page/sr-150-silver', 'Images/nydaimondusa/Dining Tables/sr-150-silver/1.jpg', NULL, NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:39:38', '2026-10-10 05:33:16'),
(121, 1, '967a9e68-c1a9-e987-a4ae-1e6e00747275', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'GR-150 GOLD', 'https://www.nydiamondusa.com/product-page/gr-150-gold', 'Images/nydaimondusa/Dining Tables/gr-150-gold/1.jpg', NULL, NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:39:39', '2026-10-10 05:33:16'),
(141, 1, '434b7a37-3dd6-44c5-a69d-b7262377a08d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'SR-146 DINING', 'https://www.nydiamondusa.com/product-page/sr-146-dining', 'Images/nydaimondusa/Dining Tables/sr-146-dining/1.jpg', NULL, NULL, NULL, NULL, NULL, 169.00, 169.00, NULL, '2026-10-06 06:40:20', '2026-10-10 05:33:17'),
(142, 1, 'b033d33f-8969-9e40-5e02-8f2cad5440f7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'GR-145 DINING', 'https://www.nydiamondusa.com/product-page/gr-145-dining', 'Images/nydaimondusa/Dining Tables/gr-145-dining/1.jpg', NULL, NULL, NULL, NULL, NULL, 179.00, 179.00, NULL, '2026-10-06 06:40:22', '2026-10-10 05:33:17'),
(143, 1, 'deaf14b6-4a53-a459-7e51-ffdad5e05fac', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'SC-141 DINING', 'https://www.nydiamondusa.com/product-page/sc-141', 'Images/nydaimondusa/Dining Tables/sc-141/1.jpg', NULL, NULL, NULL, NULL, NULL, 139.00, 139.00, NULL, '2026-10-06 06:40:26', '2026-10-10 05:33:17'),
(144, 1, 'f0c0252d-430b-6c3a-9d50-ea6463177b8f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'GC-140 DINING', 'https://www.nydiamondusa.com/product-page/gc-140-dining', 'Images/nydaimondusa/Dining Tables/gc-140-dining/1.jpg', NULL, NULL, NULL, NULL, NULL, 139.00, 139.00, NULL, '2026-10-06 06:40:28', '2026-10-10 05:33:17'),
(150, 1, 'a8b26791-e0b8-82e6-94d5-e7fa87fb50d5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables | Special Collection', 'G4012-W', 'https://www.nydiamondusa.com/product-page/g4012-w', 'Images/nydaimondusa/Dining Tables/g4012-w/1.jpg', 'Images/nydaimondusa/Dining Tables/g4012-w/2.jpg', NULL, NULL, NULL, NULL, 598.00, 299.00, NULL, '2026-10-06 06:40:39', '2026-10-10 05:33:17'),
(154, 1, '710fde3c-e493-1996-b94e-40c6f654a268', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'G1160-JAZZ GOLD', 'https://www.nydiamondusa.com/product-page/g1160-jazz-gold', 'Images/nydaimondusa/Dining Tables/g1160-jazz-gold/1.jpg', NULL, NULL, NULL, NULL, 'Dining table with stainless steel legs.', 899.00, 799.00, NULL, '2026-10-06 06:40:44', '2026-10-10 05:33:17'),
(266, 1, '37a4529a-a9d8-5765-7413-af6cf63445f5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'SL-136 SILVER', 'https://www.nydiamondusa.com/product-page/sl-136-silver', 'Images/nydaimondusa/Dining Tables/sl-136-silver/1.jpg', NULL, NULL, NULL, NULL, NULL, 145.00, 145.00, NULL, '2026-10-06 06:43:49', '2026-10-10 05:33:27'),
(267, 1, 'ad480f48-d0d5-4a0b-57ac-3cb1e8bd456d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'GL-135 GOLD', 'https://www.nydiamondusa.com/product-page/gl-135-gold', 'Images/nydaimondusa/Dining Tables/gl-135-gold/1.jpg', NULL, NULL, NULL, NULL, NULL, 149.00, 149.00, NULL, '2026-10-06 06:43:52', '2026-10-10 05:33:27'),
(268, 1, '346be3be-5b9f-71f5-b73b-b2fc792f6c6a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'SR-118 SILVER', 'https://www.nydiamondusa.com/product-page/sl-117-silver', 'Images/nydaimondusa/Dining Tables/sl-117-silver/1.jpg', NULL, NULL, NULL, NULL, NULL, 149.00, 149.00, NULL, '2026-10-06 06:43:54', '2026-10-10 05:33:27'),
(269, 1, '786e2359-510a-cc16-7b29-9458d64118ac', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'GR-117 GOLD', 'https://www.nydiamondusa.com/product-page/gl-117-gold', 'Images/nydaimondusa/Dining Tables/gl-117-gold/1.jpg', NULL, NULL, NULL, NULL, NULL, 159.00, 159.00, NULL, '2026-10-06 06:43:58', '2026-10-10 05:33:27'),
(270, 1, '8365a6f2-5ef4-ab94-7348-08a63d1384b6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'SC-115 SILVER', 'https://www.nydiamondusa.com/product-page/sl-115-silver', 'Images/nydaimondusa/Dining Tables/sl-115-silver/1.jpg', NULL, NULL, NULL, NULL, NULL, 139.00, 139.00, NULL, '2026-10-06 06:43:59', '2026-10-10 05:33:27'),
(271, 1, '72b1a4b1-df1c-2b9a-f55f-efa83660e200', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables | Special Collection', 'GC-114 GOLD', 'https://www.nydiamondusa.com/product-page/gl-114-gold', 'Images/nydaimondusa/Dining Tables/gl-114-gold/1.jpg', NULL, NULL, NULL, NULL, NULL, 139.00, 139.00, NULL, '2026-10-06 06:44:01', '2026-10-10 05:33:27'),
(272, 1, '8b758000-0963-a748-77fc-1be4ef7601af', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'SL-112 SILVER', 'https://www.nydiamondusa.com/product-page/sl-112-silver', 'Images/nydaimondusa/Dining Tables/sl-112-silver/1.jpg', NULL, NULL, NULL, NULL, NULL, 145.00, 145.00, NULL, '2026-10-06 06:44:09', '2026-10-10 05:33:27'),
(273, 1, 'e3b8baf2-84c1-da5d-c9b6-43367aab26a9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'GL-111 GOLD', 'https://www.nydiamondusa.com/product-page/gl-111-gold', 'Images/nydaimondusa/Dining Tables/gl-111-gold/1.jpg', NULL, NULL, NULL, NULL, NULL, 149.00, 149.00, NULL, '2026-10-06 06:44:10', '2026-10-10 05:33:27'),
(337, 1, 'b929b116-1d93-1ce1-34cc-dc9b4485bfdb', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'GLOW', 'https://www.nydiamondusa.com/product-page/glow', 'Images/nydaimondusa/Dining Tables/glow/1.jpg', NULL, NULL, NULL, NULL, NULL, 699.00, 699.00, NULL, '2026-10-06 06:46:55', '2026-10-10 05:33:41'),
(360, 1, '2f3235d4-513e-2258-e1b4-ddbfb548ab49', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'DINING-G1713 CREAM', 'https://www.nydiamondusa.com/product-page/dining-1911-cream', 'Images/nydaimondusa/Dining Tables/dining-1911-cream/1.jpg', NULL, NULL, NULL, NULL, NULL, 899.00, 749.00, NULL, '2026-10-06 06:47:36', '2026-10-10 05:33:43'),
(371, 1, '6a28fe5d-10c3-20ca-b979-7c28314ce3e8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'G-2093', 'https://www.nydiamondusa.com/product-page/g-2093', 'Images/nydaimondusa/Dining Tables/g-2093/1.jpg', NULL, NULL, NULL, NULL, NULL, 899.00, 899.00, NULL, '2026-10-06 06:47:48', '2026-10-10 05:33:44'),
(372, 1, '49c86040-59c6-107d-fbc3-ef618f6d7fdb', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'G1010', 'https://www.nydiamondusa.com/product-page/dinning-g1010', 'Images/nydaimondusa/Dining Tables/dinning-g1010/1.jpg', 'Images/nydaimondusa/Dining Tables/dinning-g1010/2.jpg', NULL, NULL, NULL, NULL, 1199.00, 1199.00, NULL, '2026-10-06 06:47:49', '2026-10-10 05:33:44'),
(396, 1, 'dd98ac81-1cce-0ce0-65d7-841167090b98', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'G2077 - WHITE MARBLE', 'https://www.nydiamondusa.com/product-page/g2077-white-marble', 'Images/nydaimondusa/Dining Tables/g2077-white-marble/1.jpg', NULL, NULL, NULL, NULL, NULL, 899.00, 899.00, NULL, '2026-10-06 06:49:24', '2026-10-10 05:33:51'),
(397, 1, '9fba57e2-1650-f651-e775-3b74068e0f7e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'G333 - JAZZ WHITE\'80', 'https://www.nydiamondusa.com/product-page/g333-jazz-white', 'Images/nydaimondusa/Dining Tables/g333-jazz-white/1.jpg', NULL, NULL, NULL, NULL, NULL, 499.00, 499.00, NULL, '2026-10-06 06:49:25', '2026-10-10 05:33:51'),
(408, 1, 'a5cc0090-bc8b-eca8-9678-ac0711ba29cc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'G480-JAZZ WHITE GOLD', 'https://www.nydiamondusa.com/product-page/g480-jazz-white-gold', 'Images/nydaimondusa/Dining Tables/g480-jazz-white-gold/1.jpg', NULL, NULL, NULL, NULL, 'Round dining table.', 749.00, 699.00, NULL, '2026-10-06 06:50:15', '2026-10-10 05:33:55'),
(438, 1, '96e29b26-c2ca-63e1-52d3-cacb9ae4f4ce', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'G1640', 'https://www.nydiamondusa.com/product-page/g1640', 'Images/nydaimondusa/Dining Tables/g1640/1.jpg', NULL, NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:50:56', '2026-10-10 05:34:01'),
(466, 1, '0b58d6aa-b67e-7ca6-e58d-a7a6475f4100', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'G-805', 'https://www.nydiamondusa.com/product-page/g-805', 'Images/nydaimondusa/Dining Tables/g-805/1.jpg', 'Images/nydaimondusa/Dining Tables/g-805/2.jpg', NULL, NULL, NULL, 'Gold dinning table.', 1199.00, 1199.00, NULL, '2026-10-06 06:51:31', '2026-10-10 05:34:04'),
(473, 1, '7f7969d8-74e5-fc3c-a370-1c33ead6b7a2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'G1160-BEIGE GOLD', 'https://www.nydiamondusa.com/product-page/g1160-beige-gold', 'Images/nydaimondusa/Dining Tables/g1160-beige-gold/1.jpeg', NULL, NULL, NULL, NULL, 'Dining table with stainless steel legs.', 899.00, 799.00, NULL, '2026-10-06 06:51:37', '2026-10-10 05:34:04'),
(474, 1, 'cfc39455-139b-9003-d3e1-509ee83b6ad1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'G750-BEIGE GOLD', 'https://www.nydiamondusa.com/product-page/g750-beige-gold', 'Images/nydaimondusa/Dining Tables/g750-beige-gold/1.jpeg', NULL, NULL, NULL, NULL, 'Dining table with stainless steel legs.', 899.00, 899.00, NULL, '2026-10-06 06:51:38', '2026-10-10 05:34:04'),
(532, 1, '86d4f764-22d0-af3f-5952-8d2d6b61f198', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', 'G1160-BLACK GOLD', 'https://www.nydiamondusa.com/product-page/g1160-black-gold', 'Images/nydaimondusa/Dining Tables/g1160-black-gold/1.jpg', NULL, NULL, NULL, NULL, 'Dining table with stainless steel legs.', 899.00, 799.00, NULL, '2026-10-06 06:54:39', '2026-10-10 05:34:16'),
(577, 1, 'c2e85072-c873-53fd-0fe7-2f73dcb4d562', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Dining Tables', '868-3237-LIGHT GRAY', 'https://www.nydiamondusa.com/product-page/868-3237-light-gray', 'Images/nydaimondusa/Dining Tables/868-3237-light-gray/1.jpg', 'Images/nydaimondusa/Dining Tables/868-3237-light-gray/2.jpg', 'Images/nydaimondusa/Dining Tables/868-3237-light-gray/3.jpg', 'Images/nydaimondusa/Dining Tables/868-3237-light-gray/4.jpeg', 'Images/nydaimondusa/Dining Tables/868-3237-light-gray/5.jpg', 'Dining table with stainless steel legs.', 649.00, 649.00, NULL, '2026-10-06 06:56:54', '2026-10-10 05:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `Fire Places`
--

CREATE TABLE `Fire Places` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Fire Places`
--

INSERT INTO `Fire Places` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(6, 1, '40d2cc39-52b2-44bb-47b8-01527a97ea32', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'BAHAMAS BLACK', 'https://www.nydiamondusa.com/product-page/bahamas-black', 'Images/nydaimondusa/Fire Places/bahamas-black/1.jpeg', NULL, NULL, NULL, NULL, 'Black fireplace with LED.', 799.00, 699.00, NULL, '2026-10-06 06:35:52', '2026-10-10 05:32:18'),
(7, 1, '35f7a362-18e1-51dd-9585-949022ecb078', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'BAHAMAS WHITE', 'https://www.nydiamondusa.com/product-page/bahamas-white', 'Images/nydaimondusa/Fire Places/bahamas-white/1.jpeg', NULL, NULL, NULL, NULL, 'White fireplace with LED.', 799.00, 699.00, NULL, '2026-10-06 06:35:53', '2026-10-10 05:32:18'),
(8, 1, '9698602b-f771-ea1d-fd43-fcc812f774be', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'REID', 'https://www.nydiamondusa.com/product-page/reid', 'Images/nydaimondusa/Fire Places/reid/1.jpg', 'Images/nydaimondusa/Fire Places/reid/2.jpeg', NULL, NULL, NULL, 'Black fireplace with LED.', 799.00, 599.00, NULL, '2026-10-06 06:35:54', '2026-10-10 05:32:19'),
(9, 1, 'f270e76c-53c6-0589-3f89-a5a8b85f88dc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'Lucia', 'https://www.nydiamondusa.com/product-page/lucia', 'Images/nydaimondusa/Fire Places/lucia/1.jpg', 'Images/nydaimondusa/Fire Places/lucia/2.jpeg', NULL, NULL, NULL, 'White fireplace with LED.', 799.00, 599.00, NULL, '2026-10-06 06:35:55', '2026-10-10 05:32:20'),
(65, 1, '5a78e1bd-a120-3c4f-3b85-cd32eb9a5502', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'QATAR BLK', 'https://www.nydiamondusa.com/product-page/qatar-blk', 'Images/nydaimondusa/Fire Places/qatar-blk/1.jpg', 'Images/nydaimondusa/Fire Places/qatar-blk/2.jpeg', NULL, NULL, NULL, 'White fireplace with LED.', 799.00, 799.00, NULL, '2026-10-06 06:37:37', '2026-10-10 05:33:00'),
(87, 1, 'ba24d39c-eccd-bbea-806e-0ddfbf5e78f5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NY-3800', 'https://www.nydiamondusa.com/product-page/ny-3800', 'Images/nydaimondusa/Fire Places/ny-3800/1.jpeg', 'Images/nydaimondusa/Fire Places/ny-3800/2.jpeg', NULL, NULL, NULL, NULL, 649.00, 649.00, NULL, '2026-10-06 06:38:22', '2026-10-10 05:33:04'),
(102, 1, 'c70e1757-6824-b601-8d7c-28524b6f3db5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'SYRIA-BLACK', 'https://www.nydiamondusa.com/product-page/syria-black', 'Images/nydaimondusa/Fire Places/syria-black/1.jpeg', NULL, NULL, NULL, NULL, 'Black fireplace with LED.', 799.00, 799.00, NULL, '2026-10-06 06:39:01', '2026-10-10 05:33:11'),
(103, 1, '807155c9-ab15-730c-6efc-8d59f584319d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'SYRIA WHITE', 'https://www.nydiamondusa.com/product-page/syria-white', 'Images/nydaimondusa/Fire Places/syria-white/1.jpeg', NULL, NULL, NULL, NULL, 'White fireplace with LED.', 799.00, 799.00, NULL, '2026-10-06 06:39:02', '2026-10-10 05:33:11'),
(104, 1, '57132bfa-0e98-a2d5-b52a-1635e94882ab', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'CHIL', 'https://www.nydiamondusa.com/product-page/chil', 'Images/nydaimondusa/Fire Places/chil/1.jpeg', NULL, NULL, NULL, NULL, 'White glass fireplace with LED.', 699.00, 599.00, NULL, '2026-10-06 06:39:03', '2026-10-10 05:33:11'),
(202, 1, '7b619692-b199-9bae-0b4e-98e997572bd3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NY-4000', 'https://www.nydiamondusa.com/product-page/ny-4000', 'Images/nydaimondusa/Fire Places/ny-4000/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 649.00, NULL, '2026-10-06 06:42:12', '2026-10-10 05:33:21'),
(204, 1, 'dd0565e3-92ad-1d97-6055-c2517d25c830', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NY-2800', 'https://www.nydiamondusa.com/product-page/ny-2800', 'Images/nydaimondusa/Fire Places/ny-2800/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 649.00, NULL, '2026-10-06 06:42:15', '2026-10-10 05:33:21'),
(205, 1, '9683e382-4ab3-70da-0210-36500ce13f73', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NY-700 GREY', 'https://www.nydiamondusa.com/product-page/ny-700-grey', 'Images/nydaimondusa/Fire Places/ny-700-grey/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 499.00, NULL, '2026-10-06 06:42:16', '2026-10-10 05:33:21'),
(206, 1, '6c9a1abd-309d-536c-0be2-0b30549cd18e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NY-500 WHITE', 'https://www.nydiamondusa.com/product-page/ny-500-white', 'Images/nydaimondusa/Fire Places/ny-500-white/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 499.00, NULL, '2026-10-06 06:42:16', '2026-10-10 05:33:21'),
(215, 1, '665c894c-5a93-910a-9130-accb6dbbaa00', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NYSHELF 7 WHITE', 'https://www.nydiamondusa.com/product-page/nyshelf-7-white', 'Images/nydaimondusa/Fire Places/nyshelf-7-white/1.jpg', 'Images/nydaimondusa/Fire Places/nyshelf-7-white/2.jpg', 'Images/nydaimondusa/Fire Places/nyshelf-7-white/3.jpg', 'Images/nydaimondusa/Fire Places/nyshelf-7-white/4.jpg', NULL, NULL, 349.00, 349.00, NULL, '2026-10-06 06:42:35', '2026-10-10 05:33:24'),
(216, 1, 'd17802cb-c2ad-1f96-27cf-f7b32772aaf3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NYSHELF 8 BLACK', 'https://www.nydiamondusa.com/product-page/nyshelf-8-black', 'Images/nydaimondusa/Fire Places/nyshelf-8-black/1.jpg', 'Images/nydaimondusa/Fire Places/nyshelf-8-black/2.jpg', 'Images/nydaimondusa/Fire Places/nyshelf-8-black/3.jpg', NULL, NULL, NULL, 349.00, 349.00, NULL, '2026-10-06 06:42:37', '2026-10-10 05:33:24'),
(217, 1, '9111673e-2514-3b8c-c1e2-4dc4a4fa4c23', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NYSHELF 9 BLACK', 'https://www.nydiamondusa.com/product-page/nyshelf-8-9-black', 'Images/nydaimondusa/Fire Places/nyshelf-8-9-black/1.jpg', 'Images/nydaimondusa/Fire Places/nyshelf-8-9-black/2.jpg', 'Images/nydaimondusa/Fire Places/nyshelf-8-9-black/3.jpg', NULL, NULL, NULL, 349.00, 349.00, NULL, '2026-10-06 06:42:38', '2026-10-10 05:33:24'),
(218, 1, 'b2488ab3-259b-6a19-9e0a-77eb2f6e3c58', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NYSHELF 6 WHITE', 'https://www.nydiamondusa.com/product-page/nyshelf-6-white', 'Images/nydaimondusa/Fire Places/nyshelf-6-white/1.jpg', 'Images/nydaimondusa/Fire Places/nyshelf-6-white/2.jpg', 'Images/nydaimondusa/Fire Places/nyshelf-6-white/3.jpg', 'Images/nydaimondusa/Fire Places/nyshelf-6-white/4.jpg', NULL, NULL, 349.00, 349.00, NULL, '2026-10-06 06:42:39', '2026-10-10 05:33:24'),
(219, 1, '9ff9a872-397f-3755-e7a3-cd4abb2cb008', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NY-3600 SILVER', 'https://www.nydiamondusa.com/product-page/ny-3600-silver', 'Images/nydaimondusa/Fire Places/ny-3600-silver/1.jpg', NULL, NULL, NULL, NULL, NULL, 499.00, 499.00, NULL, '2026-10-06 06:42:40', '2026-10-10 05:33:24'),
(223, 1, '4b564906-8dac-462f-6031-8240ef374c46', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NY-3300BLK', 'https://www.nydiamondusa.com/product-page/ny-3300blk', 'Images/nydaimondusa/Fire Places/ny-3300blk/1.jpg', NULL, NULL, NULL, NULL, NULL, 499.00, 499.00, NULL, '2026-10-06 06:42:43', '2026-10-10 05:33:24'),
(224, 1, '20a5748b-0ce2-f232-1dc9-9c193e612630', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NY-2300 GREY', 'https://www.nydiamondusa.com/product-page/ny-2300-grey', 'Images/nydaimondusa/Fire Places/ny-2300-grey/1.jpg', 'Images/nydaimondusa/Fire Places/ny-2300-grey/2.jpg', NULL, NULL, NULL, NULL, 649.00, 649.00, NULL, '2026-10-06 06:42:45', '2026-10-10 05:33:24'),
(225, 1, '229b7e78-7f75-5f4d-a5a4-5af22b88fca8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NY-3000 WHITE', 'https://www.nydiamondusa.com/product-page/ny-3000-white', 'Images/nydaimondusa/Fire Places/ny-3000-white/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 649.00, NULL, '2026-10-06 06:42:46', '2026-10-10 05:33:24'),
(229, 1, '84c4026b-62a6-06ed-7af9-173f0e4b0c88', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'ROSSI-SOLID WOOD', 'https://www.nydiamondusa.com/product-page/rossi', 'Images/nydaimondusa/Fire Places/rossi/1.jpg', NULL, NULL, NULL, NULL, NULL, 1299.00, 999.00, NULL, '2026-10-06 06:42:49', '2026-10-10 05:33:25'),
(230, 1, 'adbc0d88-72f9-e2ad-32e0-ea67a28d90d0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'TOFFO-SOLID WOOD', 'https://www.nydiamondusa.com/product-page/messi', 'Images/nydaimondusa/Fire Places/messi/1.jpg', NULL, NULL, NULL, NULL, NULL, 1299.00, 999.00, NULL, '2026-10-06 06:42:50', '2026-10-10 05:33:25'),
(231, 1, '8326ba43-c078-6852-5d78-ce7a07b1e9a5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'THUNDER', 'https://www.nydiamondusa.com/product-page/thunder', 'Images/nydaimondusa/Fire Places/thunder/1.jpg', 'Images/nydaimondusa/Fire Places/thunder/2.jpg', NULL, NULL, NULL, NULL, 699.00, 699.00, NULL, '2026-10-06 06:42:52', '2026-10-10 05:33:25'),
(233, 1, '2fd56290-2d58-d2ea-7c79-0a9e117d31e5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'PACERS', 'https://www.nydiamondusa.com/product-page/pacers', 'Images/nydaimondusa/Fire Places/pacers/1.jpg', 'Images/nydaimondusa/Fire Places/pacers/2.jpg', NULL, NULL, NULL, NULL, 699.00, 699.00, NULL, '2026-10-06 06:42:56', '2026-10-10 05:33:25'),
(234, 1, '1524a370-05e8-9e7f-cf23-49b16db8127b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NY-3700', 'https://www.nydiamondusa.com/product-page/ny-3700', 'Images/nydaimondusa/Fire Places/ny-3700/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 649.00, NULL, '2026-10-06 06:42:57', '2026-10-10 05:33:25'),
(279, 1, 'a5877f99-c504-f5c0-88fe-c0e7b969a348', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'STEEKERS', 'https://www.nydiamondusa.com/product-page/steekers', 'Images/nydaimondusa/Fire Places/steekers/1.jpg', NULL, NULL, NULL, NULL, NULL, 699.00, 699.00, NULL, '2026-10-06 06:44:17', '2026-10-10 05:33:28'),
(286, 1, '34f15e20-fdae-d56c-5571-b3920afbf47a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NUGGETS -GREY', 'https://www.nydiamondusa.com/product-page/nuggets-grey', 'Images/nydaimondusa/Fire Places/nuggets-grey/1.jpg', NULL, NULL, NULL, NULL, NULL, 749.00, 749.00, NULL, '2026-10-06 06:44:27', '2026-10-10 05:33:29'),
(289, 1, 'c131d8ec-d65b-f2e8-25dd-b7a14c15cee2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'ROCKERS', 'https://www.nydiamondusa.com/product-page/rockers', 'Images/nydaimondusa/Fire Places/rockers/1.jpg', NULL, NULL, NULL, NULL, NULL, 749.00, 749.00, NULL, '2026-10-06 06:44:31', '2026-10-10 05:33:29'),
(312, 1, '33f834fc-ef18-1776-027b-f2931465cdde', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'LEBANOW', 'https://www.nydiamondusa.com/product-page/lebanow', 'Images/nydaimondusa/Fire Places/lebanow/1.jpg', NULL, NULL, NULL, NULL, 'White fireplace with LED.', 699.00, 699.00, NULL, '2026-10-06 06:44:57', '2026-10-10 05:33:34'),
(313, 1, 'b28abafa-b251-8fc4-469c-ec845f753c0d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'LOWELL-B', 'https://www.nydiamondusa.com/product-page/lowell-b', 'Images/nydaimondusa/Fire Places/lowell-b/1.jpg', NULL, NULL, NULL, NULL, 'DIMENSIONS:\nPLEASE SELECT SIZE:', 699.00, 699.00, NULL, '2026-10-06 06:44:57', '2026-10-06 07:23:13'),
(314, 1, 'f254095d-0e13-64b8-ccc2-73f233b1d576', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'LOWELL-W', 'https://www.nydiamondusa.com/product-page/lowell-w', 'Images/nydaimondusa/Fire Places/lowell-w/1.jpg', NULL, NULL, NULL, NULL, 'DIMENSIONS:\nPLEASE SELECT SIZE:', 699.00, 699.00, NULL, '2026-10-06 06:44:58', '2026-10-06 07:23:13'),
(315, 1, '0d3f8b81-0d7f-24f4-9436-d69c21f38103', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'LOWELL-S', 'https://www.nydiamondusa.com/product-page/lowell-s', 'Images/nydaimondusa/Fire Places/lowell-s/1.jpg', NULL, NULL, NULL, NULL, 'DIMENSIONS:\nPLEASE SELECT SIZE:', 699.00, 699.00, NULL, '2026-10-06 06:44:59', '2026-10-06 07:23:14'),
(317, 1, 'e6ebee5f-ecca-8cc2-26cd-2e7a4a06d79b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'JORDAN-BLACK', 'https://www.nydiamondusa.com/product-page/jordan-black', 'Images/nydaimondusa/Fire Places/jordan-black/1.jpg', NULL, NULL, NULL, NULL, NULL, 699.00, 699.00, NULL, '2026-10-06 06:45:00', '2026-10-10 05:33:35'),
(318, 1, '7fa755b2-13c5-906d-7abd-ea9afc1c612f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'LYNN-BLACK', 'https://www.nydiamondusa.com/product-page/lynn-black', 'Images/nydaimondusa/Fire Places/lynn-black/1.png', NULL, NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-06 06:45:01', '2026-10-10 05:33:35'),
(319, 1, '4e5b4b4d-8530-ced6-3d03-4061e21520e1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'G810', 'https://www.nydiamondusa.com/product-page/g1922', 'Images/nydaimondusa/Fire Places/g1922/1.jpg', NULL, NULL, NULL, NULL, 'TV stand.', 699.00, 699.00, NULL, '2026-10-06 06:45:02', '2026-10-10 05:33:35'),
(329, 1, '9c639acb-b9e3-6dc0-f413-da10e2294d85', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'LONDON', 'https://www.nydiamondusa.com/product-page/london-2', 'Images/nydaimondusa/Fire Places/london-2/1.jpg', 'Images/nydaimondusa/Fire Places/london-2/2.jpg', 'Images/nydaimondusa/Fire Places/london-2/3.jpg', NULL, NULL, 'White fireplace.', 699.00, 599.00, NULL, '2026-10-06 06:46:45', '2026-10-10 05:33:40'),
(333, 1, '6f2560d7-4e5e-7180-fd7e-7c785f6ed6a2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'NARRY', 'https://www.nydiamondusa.com/product-page/narry', 'Images/nydaimondusa/Fire Places/narry/1.jpg', NULL, NULL, NULL, NULL, 'Fireplace with black and gold trim.', 799.00, 799.00, NULL, '2026-10-06 06:46:50', '2026-10-10 05:33:41'),
(334, 1, '961c7f20-c4dc-35ee-4563-3b7dc4c10c0c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'GUNHILL', 'https://www.nydiamondusa.com/product-page/gunhill', 'Images/nydaimondusa/Fire Places/gunhill/1.jpg', NULL, NULL, NULL, NULL, 'Fireplace with grey and gold trim.', 799.00, 799.00, NULL, '2026-10-06 06:46:51', '2026-10-10 05:33:41'),
(340, 1, '76ae1eba-d5f3-c69e-7ce3-20f4db008797', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'OREGON', 'https://www.nydiamondusa.com/product-page/oregon', 'Images/nydaimondusa/Fire Places/oregon/1.jpg', NULL, NULL, NULL, NULL, NULL, 699.00, 699.00, NULL, '2026-10-06 06:46:59', '2026-10-10 05:33:41'),
(362, 1, '40eeb5cb-9feb-7837-ad93-68981b60e368', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'LYNN- GREY', 'https://www.nydiamondusa.com/product-page/lynn-grey', 'Images/nydaimondusa/Fire Places/lynn-grey/1.jpg', NULL, NULL, NULL, NULL, 'Mirror & glass.', 749.00, 599.00, NULL, '2026-10-06 06:47:39', '2026-10-10 05:33:44'),
(373, 1, '89bc3be4-5210-5c4a-9047-3907777b3bcc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'BRAZIL', 'https://www.nydiamondusa.com/product-page/brazil-1', 'Images/nydaimondusa/Fire Places/brazil-1/1.jpg', NULL, NULL, NULL, NULL, 'TV stand fireplace with LED.', 649.00, 649.00, NULL, '2026-10-06 06:47:50', '2026-10-10 05:33:44'),
(419, 1, '88cdf5df-1439-b54e-f1cd-f97b3a602299', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'E-20 TV STAND WHITE & BLACK', 'https://www.nydiamondusa.com/product-page/e-20-tv-stand-white-black', 'Images/nydaimondusa/Fire Places/e-20-tv-stand-white-black/1.jpg', NULL, NULL, NULL, NULL, 'TV stand.', 499.00, 499.00, NULL, '2026-10-06 06:50:33', '2026-10-10 05:33:59'),
(420, 1, 'a00ef151-5dcf-4951-7a99-0dde623c074f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'E-20 TV STAND BLACK & WHITE', 'https://www.nydiamondusa.com/product-page/e-20-tv-stand-black-white', 'Images/nydaimondusa/Fire Places/e-20-tv-stand-black-white/1.jpg', NULL, NULL, NULL, NULL, 'TV stand.', 499.00, 499.00, NULL, '2026-10-06 06:50:33', '2026-10-10 05:33:59'),
(421, 1, 'e3629310-bec2-7753-7f31-45905ef96f28', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'E-20 TV STAND LIGHT GREY & WHITE', 'https://www.nydiamondusa.com/product-page/e-20-tv-stand-light-grey-white', 'Images/nydaimondusa/Fire Places/e-20-tv-stand-light-grey-white/1.jpg', NULL, NULL, NULL, NULL, 'TV stand.', 499.00, 499.00, NULL, '2026-10-06 06:50:34', '2026-10-10 05:33:59'),
(439, 1, '53212c41-f289-7478-2f8b-141ca783fd4b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'G2015 IN JAZZ WHITE MARBLE', 'https://www.nydiamondusa.com/product-page/ny-g2014-beige', 'Images/nydaimondusa/Fire Places/ny-g2014-beige/1.jpg', 'Images/nydaimondusa/Fire Places/ny-g2014-beige/2.jpg', NULL, NULL, NULL, 'TV stand with fireplace.', 999.00, 999.00, NULL, '2026-10-06 06:50:57', '2026-10-10 05:34:01'),
(494, 1, '11c87e7a-4f61-d6c9-6929-ebade6eb0faa', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'LYNN', 'https://www.nydiamondusa.com/product-page/lynn', 'Images/nydaimondusa/Fire Places/lynn/1.jpeg', NULL, NULL, NULL, NULL, 'Mirror & glass.', 749.00, 599.00, NULL, '2026-10-06 06:53:47', '2026-10-10 05:34:08'),
(507, 1, 'b9e937c5-1b99-e571-1076-1c5f46dc7899', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'G2013 BLACK', 'https://www.nydiamondusa.com/product-page/g2013', 'Images/nydaimondusa/Fire Places/g2013/1.jpeg', NULL, NULL, NULL, NULL, 'TV stand with fireplace.', 999.00, 999.00, NULL, '2026-10-06 06:54:04', '2026-10-10 05:34:14'),
(508, 1, 'f9a3281e-b69f-6ebe-9aad-65c28248b11c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Fire Places', 'G2012 GREY', 'https://www.nydiamondusa.com/product-page/g2012', 'Images/nydaimondusa/Fire Places/g2012/1.jpeg', NULL, NULL, NULL, NULL, 'TV stand with fireplace.', 999.00, 999.00, NULL, '2026-10-06 06:54:04', '2026-10-10 05:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `Living Rooms`
--

CREATE TABLE `Living Rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Living Rooms`
--

INSERT INTO `Living Rooms` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(2, 1, '86a2a175-730b-730a-6f0b-3f5ad94594ea', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '8226 White', 'https://www.nydiamondusa.com/product-page/8226-white', 'Images/nydaimondusa/Living Rooms/8226-white/1.jpg', 'Images/nydaimondusa/Living Rooms/8226-white/2.jpeg', NULL, NULL, NULL, 'LED power recliner seats with headrest.', 1599.00, 1450.00, NULL, '2026-10-06 06:35:47', '2026-10-10 05:32:12'),
(3, 1, '6c0441c8-31cb-6195-28d7-389216d4e9de', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '8226 Black', 'https://www.nydiamondusa.com/product-page/8226-black', 'Images/nydaimondusa/Living Rooms/8226-black/1.jpg', 'Images/nydaimondusa/Living Rooms/8226-black/2.jpeg', NULL, NULL, NULL, 'LED power recliner seats with headrest.', 1599.00, 1450.00, NULL, '2026-10-06 06:35:48', '2026-10-10 05:32:13'),
(4, 1, 'd08dc23b-bcb2-907f-fd36-eb5a90b4a321', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '8225 White', 'https://www.nydiamondusa.com/product-page/8225-white', 'Images/nydaimondusa/Living Rooms/8225-white/1.jpg', 'Images/nydaimondusa/Living Rooms/8225-white/2.jpeg', NULL, NULL, NULL, 'LED power recliner seats with headrest.', 1499.00, 1350.00, NULL, '2026-10-06 06:35:50', '2026-10-10 05:32:15'),
(5, 1, '08530a20-251f-cec7-27bc-666ff48e22d2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '8225  Black', 'https://www.nydiamondusa.com/product-page/8225-black', 'Images/nydaimondusa/Living Rooms/8225-black/1.jpg', 'Images/nydaimondusa/Living Rooms/8225-black/2.jpeg', NULL, NULL, NULL, 'LED power recliner seats with headrest.', 1499.00, 1350.00, NULL, '2026-10-06 06:35:51', '2026-10-10 05:32:18'),
(11, 1, 'ae23dcd5-1abb-b257-dbff-d71e641891ad', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'FS-486 GREY', 'https://www.nydiamondusa.com/product-page/fs-486-grey', 'Images/nydaimondusa/Living Rooms/fs-486-grey/1.jpg', 'Images/nydaimondusa/Living Rooms/fs-486-grey/2.jpeg', 'Images/nydaimondusa/Living Rooms/fs-486-grey/3.jpeg', NULL, NULL, 'Velvet sofa love with gold legs.', 1199.00, 999.00, NULL, '2026-10-06 06:35:57', '2026-10-10 05:32:24'),
(12, 1, '54d9e8a4-a5ca-964f-d2cb-dae8fd874f39', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'FS-486 TAUPE', 'https://www.nydiamondusa.com/product-page/fs-486-taupe', 'Images/nydaimondusa/Living Rooms/fs-486-taupe/1.jpg', 'Images/nydaimondusa/Living Rooms/fs-486-taupe/2.jpeg', 'Images/nydaimondusa/Living Rooms/fs-486-taupe/3.jpeg', NULL, NULL, 'Velvet sofa love with gold legs.', 1199.00, 999.00, NULL, '2026-10-06 06:35:58', '2026-10-10 05:32:25'),
(44, 1, '9777a2e7-b956-c432-a1fe-d7669c4444b6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '489-TAUPE', 'https://www.nydiamondusa.com/product-page/489-grey-1', 'Images/nydaimondusa/Living Rooms/489-grey-1/1.jpg', 'Images/nydaimondusa/Living Rooms/489-grey-1/2.jpeg', NULL, NULL, NULL, NULL, 799.00, 799.00, NULL, '2026-10-06 06:36:31', '2026-10-10 05:32:35'),
(45, 1, '43a0fcf7-a08f-3893-e455-e95731632cf8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '489-GREY', 'https://www.nydiamondusa.com/product-page/489-grey', 'Images/nydaimondusa/Living Rooms/489-grey/1.jpg', 'Images/nydaimondusa/Living Rooms/489-grey/2.jpeg', NULL, NULL, NULL, NULL, 799.00, 799.00, NULL, '2026-10-06 06:36:32', '2026-10-10 05:32:37'),
(46, 1, '8e47835b-8758-6502-a8c1-53015b12200e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '489-BLACK', 'https://www.nydiamondusa.com/product-page/489-black', 'Images/nydaimondusa/Living Rooms/489-black/1.jpg', 'Images/nydaimondusa/Living Rooms/489-black/2.jpeg', NULL, NULL, NULL, NULL, 799.00, 799.00, NULL, '2026-10-06 06:36:33', '2026-10-10 05:32:39'),
(47, 1, '52b870db-fe5c-de1e-1f11-884708365e49', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'SY603-WHITE', 'https://www.nydiamondusa.com/product-page/sy603-white', 'Images/nydaimondusa/Living Rooms/sy603-white/1.jpg', 'Images/nydaimondusa/Living Rooms/sy603-white/2.jpeg', NULL, NULL, NULL, NULL, 1799.00, 1799.00, NULL, '2026-10-06 06:36:34', '2026-10-10 05:32:40'),
(48, 1, 'a659b394-c645-c0ec-c9ca-d298cec3bcd3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'SY202-BROWN', 'https://www.nydiamondusa.com/product-page/sy202-brown', 'Images/nydaimondusa/Living Rooms/sy202-brown/1.jpg', 'Images/nydaimondusa/Living Rooms/sy202-brown/2.jpeg', NULL, NULL, NULL, NULL, 899.00, 899.00, NULL, '2026-10-06 06:36:35', '2026-10-10 05:32:42'),
(49, 1, 'b14ae8ff-ddcc-2537-763d-d4baa16e6dbf', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'SY201-BLACK', 'https://www.nydiamondusa.com/product-page/sy201-black', 'Images/nydaimondusa/Living Rooms/sy201-black/1.jpg', 'Images/nydaimondusa/Living Rooms/sy201-black/2.jpeg', NULL, NULL, NULL, NULL, 1499.00, 1499.00, NULL, '2026-10-06 06:36:36', '2026-10-10 05:32:44'),
(58, 1, '209eb13c-7969-b933-743c-79073eda5664', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'NYC3001 COGNAC', 'https://www.nydiamondusa.com/product-page/nyc3100-cognac', 'Images/nydaimondusa/Living Rooms/nyc3100-cognac/1.jpg', 'Images/nydaimondusa/Living Rooms/nyc3100-cognac/2.jpeg', 'Images/nydaimondusa/Living Rooms/nyc3100-cognac/3.jpeg', 'Images/nydaimondusa/Living Rooms/nyc3100-cognac/4.jpeg', 'Images/nydaimondusa/Living Rooms/nyc3100-cognac/5.jpeg', 'A power-reclining sectional with an LED power bar built into the corner.', 2299.00, 2299.00, NULL, '2026-10-06 06:37:14', '2026-10-10 05:32:49'),
(59, 1, '7cd88a3a-43df-955a-b8ed-8a75afafec9a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'NYC3001 WHITE', 'https://www.nydiamondusa.com/product-page/nyc3001-white', 'Images/nydaimondusa/Living Rooms/nyc3001-white/1.jpg', 'Images/nydaimondusa/Living Rooms/nyc3001-white/2.jpeg', 'Images/nydaimondusa/Living Rooms/nyc3001-white/3.jpeg', 'Images/nydaimondusa/Living Rooms/nyc3001-white/4.jpeg', 'Images/nydaimondusa/Living Rooms/nyc3001-white/5.jpeg', 'A power-reclining sectional with an LED power bar built into the corner.', 2299.00, 2299.00, NULL, '2026-10-06 06:37:19', '2026-10-10 05:32:50'),
(60, 1, '8a869348-efb6-58ef-6d5f-c025c4646556', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'NYC3001 GREY', 'https://www.nydiamondusa.com/product-page/nyc3001-grey', 'Images/nydaimondusa/Living Rooms/nyc3001-grey/1.jpg', 'Images/nydaimondusa/Living Rooms/nyc3001-grey/2.jpeg', 'Images/nydaimondusa/Living Rooms/nyc3001-grey/3.jpeg', 'Images/nydaimondusa/Living Rooms/nyc3001-grey/4.jpeg', 'Images/nydaimondusa/Living Rooms/nyc3001-grey/5.jpeg', 'A power-reclining sectional with an LED power bar built into the corner.', 2299.00, 2299.00, NULL, '2026-10-06 06:37:25', '2026-10-10 05:32:51'),
(61, 1, '1d9a59d1-766b-347b-028f-c84215b0cb86', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'NYC3001  BLK', 'https://www.nydiamondusa.com/product-page/nyc3001-blk', 'Images/nydaimondusa/Living Rooms/nyc3001-blk/1.jpg', 'Images/nydaimondusa/Living Rooms/nyc3001-blk/2.jpeg', 'Images/nydaimondusa/Living Rooms/nyc3001-blk/3.jpeg', 'Images/nydaimondusa/Living Rooms/nyc3001-blk/4.jpeg', NULL, 'A power-reclining sectional with an LED power bar built into the corner.', 2299.00, 2299.00, NULL, '2026-10-06 06:37:28', '2026-10-10 05:32:53'),
(62, 1, '0749de41-1e46-1e5f-0360-5e7f44ade5d0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '1051 COGNAC', 'https://www.nydiamondusa.com/product-page/1051-cognac', 'Images/nydaimondusa/Living Rooms/1051-cognac/1.jpg', 'Images/nydaimondusa/Living Rooms/1051-cognac/2.jpeg', 'Images/nydaimondusa/Living Rooms/1051-cognac/3.jpeg', NULL, NULL, 'Sofa and love seat massage heat.', 1699.00, 1699.00, NULL, '2026-10-06 06:37:30', '2026-10-10 05:32:54'),
(63, 1, '6474b692-9835-1673-7edb-30bc70426eb0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '1051 BEIGE', 'https://www.nydiamondusa.com/product-page/1051-beige', 'Images/nydaimondusa/Living Rooms/1051-beige/1.jpg', 'Images/nydaimondusa/Living Rooms/1051-beige/2.jpeg', 'Images/nydaimondusa/Living Rooms/1051-beige/3.jpeg', NULL, NULL, 'Sofa and love seat massage heat.', 1699.00, 1699.00, NULL, '2026-10-06 06:37:33', '2026-10-10 05:32:56'),
(64, 1, '0e566507-85bd-c478-c3bb-aefa7c908fa0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '1051 BLACK', 'https://www.nydiamondusa.com/product-page/1051-black', 'Images/nydaimondusa/Living Rooms/1051-black/1.jpg', 'Images/nydaimondusa/Living Rooms/1051-black/2.jpeg', 'Images/nydaimondusa/Living Rooms/1051-black/3.jpeg', NULL, NULL, 'Sofa and love seat massage heat.', 1699.00, 1699.00, NULL, '2026-10-06 06:37:35', '2026-10-10 05:32:57'),
(105, 1, 'e94d64b0-55de-88f2-a0ef-9e9af04f7bc1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '8116-CREAM', 'https://www.nydiamondusa.com/product-page/8116-cream', 'Images/nydaimondusa/Living Rooms/8116-cream/1.jpg', 'Images/nydaimondusa/Living Rooms/8116-cream/2.jpg', 'Images/nydaimondusa/Living Rooms/8116-cream/3.jpg', NULL, NULL, NULL, 849.00, 849.00, NULL, '2026-10-06 06:39:06', '2026-10-10 05:33:11'),
(106, 1, 'e17c08d6-2a71-22c1-0738-7b6dba890cd9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '1088-GREY', 'https://www.nydiamondusa.com/product-page/8116-grey', 'Images/nydaimondusa/Living Rooms/8116-grey/1.jpg', 'Images/nydaimondusa/Living Rooms/8116-grey/2.jpg', 'Images/nydaimondusa/Living Rooms/8116-grey/3.jpg', NULL, NULL, 'LAF sofa.', 849.00, 749.00, NULL, '2026-10-06 06:39:09', '2026-10-10 05:33:11'),
(107, 1, 'ea6bde4e-0ad7-7e28-6f92-8efa192288da', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '1088-BLACK', 'https://www.nydiamondusa.com/product-page/8116-black', 'Images/nydaimondusa/Living Rooms/8116-black/1.jpg', 'Images/nydaimondusa/Living Rooms/8116-black/2.jpg', 'Images/nydaimondusa/Living Rooms/8116-black/3.jpg', 'Images/nydaimondusa/Living Rooms/8116-black/4.jpg', NULL, 'LAF sofa.', 849.00, 749.00, NULL, '2026-10-06 06:39:11', '2026-10-10 05:33:12'),
(108, 1, '22f62ac5-90cd-f601-93d6-9ef6377c48e4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '8116-BLACK', 'https://www.nydiamondusa.com/product-page/1088-black', 'Images/nydaimondusa/Living Rooms/1088-black/1.jpg', 'Images/nydaimondusa/Living Rooms/1088-black/2.jpg', 'Images/nydaimondusa/Living Rooms/1088-black/3.jpg', NULL, NULL, NULL, 849.00, 849.00, NULL, '2026-10-06 06:39:15', '2026-10-10 05:33:12'),
(109, 1, '3d67a3f6-7a87-ee77-d4d0-1a5f886566a6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '8116-GREY', 'https://www.nydiamondusa.com/product-page/1088-grey', 'Images/nydaimondusa/Living Rooms/1088-grey/1.jpg', 'Images/nydaimondusa/Living Rooms/1088-grey/2.jpg', 'Images/nydaimondusa/Living Rooms/1088-grey/3.jpg', NULL, NULL, NULL, 849.00, 849.00, NULL, '2026-10-06 06:39:16', '2026-10-10 05:33:12'),
(110, 1, '57bc43f5-b73e-d6ca-507e-c8e59ad50bd8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'FS472-GREY', 'https://www.nydiamondusa.com/product-page/fs472-grey', 'Images/nydaimondusa/Living Rooms/fs472-grey/1.jpg', 'Images/nydaimondusa/Living Rooms/fs472-grey/2.jpg', NULL, NULL, NULL, NULL, 849.00, 799.00, NULL, '2026-10-06 06:39:17', '2026-10-10 05:33:13'),
(111, 1, '217e2c2c-7b3d-9b72-a4d6-3ac83aa4d4f7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'FS472-BLACK', 'https://www.nydiamondusa.com/product-page/fs472-black', 'Images/nydaimondusa/Living Rooms/fs472-black/1.jpg', 'Images/nydaimondusa/Living Rooms/fs472-black/2.jpg', NULL, NULL, NULL, NULL, 849.00, 799.00, NULL, '2026-10-06 06:39:18', '2026-10-10 05:33:14'),
(116, 1, 'bff9156b-a96d-4f69-ab8f-8975e5f5998e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '2678Y-BLACK', 'https://www.nydiamondusa.com/product-page/2678y-black', 'Images/nydaimondusa/Living Rooms/2678y-black/1.jpg', 'Images/nydaimondusa/Living Rooms/2678y-black/2.jpeg', NULL, NULL, NULL, 'LED sofa with dropdown center.', 799.00, 799.00, NULL, '2026-10-06 06:39:30', '2026-10-10 05:33:16'),
(117, 1, '37c85129-be1c-82b9-64e1-ff3638a2e1be', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '7700-CHOCOLATE', 'https://www.nydiamondusa.com/product-page/7700-chocolate', 'Images/nydaimondusa/Living Rooms/7700-chocolate/1.jpg', 'Images/nydaimondusa/Living Rooms/7700-chocolate/2.jpg', NULL, NULL, NULL, 'LED power recliner seats with headrest.', 1499.00, 1499.00, NULL, '2026-10-06 06:39:32', '2026-10-10 05:33:16'),
(175, 1, '5d696059-19f2-0c5d-a6cd-e0ea26d641ec', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '2259D-GREY', 'https://www.nydiamondusa.com/product-page/2259d-grey', 'Images/nydaimondusa/Living Rooms/2259d-grey/1.jpg', NULL, NULL, NULL, NULL, NULL, 1299.00, 1299.00, NULL, '2026-10-06 06:41:22', '2026-10-10 05:33:18'),
(209, 1, 'a33c887c-fe0b-4077-5763-e207f7d7c446', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '7800-BROWN', 'https://www.nydiamondusa.com/product-page/7800-brown', 'Images/nydaimondusa/Living Rooms/7800-brown/1.jpg', 'Images/nydaimondusa/Living Rooms/7800-brown/2.jpg', 'Images/nydaimondusa/Living Rooms/7800-brown/3.jpg', NULL, NULL, NULL, 1499.00, 1499.00, NULL, '2026-10-06 06:42:21', '2026-10-10 05:33:22'),
(210, 1, '3f224b03-9843-4273-c5c4-379c11d60bde', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '7700-LIGHT GREY', 'https://www.nydiamondusa.com/product-page/7700-light-grey', 'Images/nydaimondusa/Living Rooms/7700-light-grey/1.jpg', 'Images/nydaimondusa/Living Rooms/7700-light-grey/2.jpg', 'Images/nydaimondusa/Living Rooms/7700-light-grey/3.jpg', 'Images/nydaimondusa/Living Rooms/7700-light-grey/4.jpg', NULL, 'LED power recliner seats with headrest.', 1599.00, 1599.00, NULL, '2026-10-06 06:42:24', '2026-10-10 05:33:23'),
(211, 1, 'e2eae241-0873-fddc-e34c-684944d34d00', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', '7700-BLACK', 'https://www.nydiamondusa.com/product-page/7700-black', 'Images/nydaimondusa/Living Rooms/7700-black/1.jpg', 'Images/nydaimondusa/Living Rooms/7700-black/2.jpg', 'Images/nydaimondusa/Living Rooms/7700-black/3.jpg', 'Images/nydaimondusa/Living Rooms/7700-black/4.jpg', NULL, 'LED power recliner seats with headrest.', 1599.00, 1599.00, NULL, '2026-10-06 06:42:27', '2026-10-10 05:33:23'),
(405, 1, '5ea86827-30a7-9af2-1902-8555bdb9247d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'MS2222 BLACK', 'https://www.nydiamondusa.com/product-page/ms2272-black', 'Images/nydaimondusa/Living Rooms/ms2272-black/1.jpg', NULL, NULL, NULL, NULL, NULL, 1499.00, 1499.00, NULL, '2026-10-06 06:50:11', '2026-10-10 05:33:55'),
(417, 1, 'f75d35f9-c0b9-52c5-5e8c-6493428d7e1a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'MS2258 -D. GREY', 'https://www.nydiamondusa.com/product-page/ms2258-d-grey', 'Images/nydaimondusa/Living Rooms/ms2258-d-grey/1.jpg', 'Images/nydaimondusa/Living Rooms/ms2258-d-grey/2.jpg', NULL, NULL, NULL, NULL, 1499.00, 1499.00, NULL, '2026-10-06 06:50:31', '2026-10-10 05:33:57'),
(418, 1, 'd18ed6fa-fb08-5f97-0c7c-277c7fb663e3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'MS2258 -BLACK', 'https://www.nydiamondusa.com/product-page/ms2258-black', 'Images/nydaimondusa/Living Rooms/ms2258-black/1.jpg', 'Images/nydaimondusa/Living Rooms/ms2258-black/2.jpg', NULL, NULL, NULL, NULL, 1499.00, 1499.00, NULL, '2026-10-06 06:50:32', '2026-10-10 05:33:59'),
(422, 1, '1bf66f36-bad4-9bde-e66d-f9ac68a78b16', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'E-18 LIGHT GREY & WHITE', 'https://www.nydiamondusa.com/product-page/e-18-light-grey', 'Images/nydaimondusa/Living Rooms/e-18-light-grey/1.jpg', 'Images/nydaimondusa/Living Rooms/e-18-light-grey/2.jpg', NULL, NULL, NULL, NULL, 1999.00, 1999.00, NULL, '2026-10-06 06:50:36', '2026-10-10 05:33:59'),
(434, 1, 'fd23a223-0915-d154-4357-0760c95d595f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'E-18 BLACK & RED', 'https://www.nydiamondusa.com/product-page/e-18-black-red', 'Images/nydaimondusa/Living Rooms/e-18-black-red/1.jpg', 'Images/nydaimondusa/Living Rooms/e-18-black-red/2.jpg', NULL, NULL, NULL, NULL, 1999.00, 1999.00, NULL, '2026-10-06 06:50:50', '2026-10-10 05:34:00'),
(435, 1, 'd8fd57ac-2e93-a490-acaa-1eaaae1dbc57', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'E-18 BLACK & WHITE', 'https://www.nydiamondusa.com/product-page/e-18-black-white', 'Images/nydaimondusa/Living Rooms/e-18-black-white/1.jpg', 'Images/nydaimondusa/Living Rooms/e-18-black-white/2.jpg', 'Images/nydaimondusa/Living Rooms/e-18-black-white/3.jpg', NULL, NULL, NULL, 1999.00, 1999.00, NULL, '2026-10-06 06:50:52', '2026-10-10 05:34:00'),
(463, 1, '35bc8e57-80ee-9502-f3ba-771f5be1f011', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'MS2213-GREY', 'https://www.nydiamondusa.com/product-page/ms2213-grey', 'Images/nydaimondusa/Living Rooms/ms2213-grey/1.jpeg', NULL, NULL, NULL, NULL, 'RAF sofa.', 1499.00, 1299.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-06 06:51:28', '2026-10-10 05:34:03'),
(481, 1, '2be43d5e-a859-4660-2745-73628ade0a43', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Living Rooms', 'MS2213-CREAM', 'https://www.nydiamondusa.com/product-page/ms2213-cream', 'Images/nydaimondusa/Living Rooms/ms2213-cream/1.jpeg', NULL, NULL, NULL, NULL, 'RAF sofa.', 1499.00, 1299.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-06 06:51:47', '2026-10-10 05:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `Mirrors`
--

CREATE TABLE `Mirrors` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Mirrors`
--

INSERT INTO `Mirrors` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(129, 1, '3d7e854d-bb36-37a2-64b9-808b8a9b6c80', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'ISLA', 'https://www.nydiamondusa.com/product-page/isla', 'Images/nydaimondusa/Mirrors/isla/1.jpeg', NULL, NULL, NULL, NULL, 'Wall mirror.', 199.00, 199.00, NULL, '2026-10-06 06:39:49', '2026-10-10 05:33:17'),
(148, 1, '2da2c88e-98a8-d1c5-74b5-5f6e2896ee3a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'M-103 GOLD', 'https://www.nydiamondusa.com/product-page/m-103-gold', 'Images/nydaimondusa/Mirrors/m-103-gold/1.jpg', NULL, NULL, NULL, NULL, 'Gold mirror.', 199.00, 199.00, NULL, '2026-10-06 06:40:35', '2026-10-10 05:33:17'),
(149, 1, '79d32a64-69cc-fba2-4d62-fd7cdacc60bb', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'M106 GOLD', 'https://www.nydiamondusa.com/product-page/m106-gold', 'Images/nydaimondusa/Mirrors/m106-gold/1.jpg', NULL, NULL, NULL, NULL, 'Gold mirror.', 199.00, 199.00, NULL, '2026-10-06 06:40:36', '2026-10-10 05:33:17'),
(178, 1, 'e0256c5a-e04c-1427-112c-7c4e2d90148e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'M105-GOLD', 'https://www.nydiamondusa.com/product-page/m105-gold', 'Images/nydaimondusa/Mirrors/m105-gold/1.jpg', 'Images/nydaimondusa/Mirrors/m105-gold/2.jpg', NULL, NULL, NULL, 'Round gold mirror.', 249.00, 249.00, NULL, '2026-10-06 06:41:27', '2026-10-10 05:33:18'),
(227, 1, 'bab3993c-f2f2-7773-2c9f-b1ff6c22fe67', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'BRONCOS', 'https://www.nydiamondusa.com/product-page/colts', 'Images/nydaimondusa/Mirrors/colts/1.jpg', NULL, NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:42:47', '2026-10-10 05:33:24'),
(228, 1, '5dde0f54-402a-b1a9-f26c-f12e59724cf8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'SAINTS', 'https://www.nydiamondusa.com/product-page/saints', 'Images/nydaimondusa/Mirrors/saints/1.jpg', NULL, NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:42:48', '2026-10-10 05:33:25'),
(238, 1, 'bb7de9fd-39de-7c1b-e258-46ff032419f0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'RAMZI', 'https://www.nydiamondusa.com/product-page/ramzi', 'Images/nydaimondusa/Mirrors/ramzi/1.jpg', NULL, NULL, NULL, NULL, 'Glossy grey gold silver mirror.', 249.00, 249.00, NULL, '2026-10-06 06:43:01', '2026-10-10 05:33:25'),
(240, 1, 'f1c53c53-b691-89e3-2c7b-e5c64522a4ab', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'JOMANA', 'https://www.nydiamondusa.com/product-page/jomana', 'Images/nydaimondusa/Mirrors/jomana/1.jpg', NULL, NULL, NULL, NULL, 'Glossy white gold silver mirror.', 249.00, 249.00, NULL, '2026-10-06 06:43:04', '2026-10-10 05:33:26'),
(280, 1, '6a61c1f6-294e-3e92-0a47-b2a7569a12a7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'NY-038', 'https://www.nydiamondusa.com/product-page/ny-038', 'Images/nydaimondusa/Mirrors/ny-038/1.jpg', NULL, NULL, NULL, NULL, NULL, 199.00, 199.00, NULL, '2026-10-06 06:44:18', '2026-10-10 05:33:28'),
(282, 1, 'df2dcd41-439a-7385-08d7-f9afe873eac9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'NY-040', 'https://www.nydiamondusa.com/product-page/ny-040', 'Images/nydaimondusa/Mirrors/ny-040/1.jpg', NULL, NULL, NULL, NULL, NULL, 199.00, 199.00, NULL, '2026-10-06 06:44:20', '2026-10-10 05:33:29'),
(331, 1, '40df76a4-4509-77c2-1b17-ab7aca5f5458', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'M40', 'https://www.nydiamondusa.com/product-page/m40', 'Images/nydaimondusa/Mirrors/m40/1.jpg', 'Images/nydaimondusa/Mirrors/m40/2.jpg', NULL, NULL, NULL, 'Diamond shaped gold trim mirror.', 299.00, 299.00, NULL, '2026-10-06 06:46:47', '2026-10-10 05:33:41'),
(357, 1, '23133465-e575-f520-f503-8fa511480ae5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'SUGAR', 'https://www.nydiamondusa.com/product-page/sugar', 'Images/nydaimondusa/Mirrors/sugar/1.jpg', NULL, NULL, NULL, NULL, 'Wall mirror.', 199.00, 199.00, NULL, '2026-10-06 06:47:34', '2026-10-10 05:33:42'),
(359, 1, '8e51fcfb-6464-b400-f926-579cef5473f0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'SALINA', 'https://www.nydiamondusa.com/product-page/salina', 'Images/nydaimondusa/Mirrors/salina/1.jpg', NULL, NULL, NULL, NULL, 'Gold mirror.', 199.00, 199.00, NULL, '2026-10-06 06:47:35', '2026-10-10 05:33:43'),
(361, 1, 'd949b3b8-6fef-02b3-a9b8-458f324b9f08', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'NY MIRROR-19', 'https://www.nydiamondusa.com/product-page/ny-mirror-19', 'Images/nydaimondusa/Mirrors/ny-mirror-19/1.jpg', 'Images/nydaimondusa/Mirrors/ny-mirror-19/2.jpg', NULL, NULL, NULL, 'Gold mirror design.', 299.00, 299.00, NULL, '2026-10-06 06:47:37', '2026-10-10 05:33:44'),
(369, 1, 'e07b3835-f1a7-b086-a083-4f82adc84835', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'NY MIRROR-11', 'https://www.nydiamondusa.com/product-page/ny-mirror-11', 'Images/nydaimondusa/Mirrors/ny-mirror-11/1.jpg', NULL, NULL, NULL, NULL, 'Gold silver mirror.', 249.00, 249.00, NULL, '2026-10-06 06:47:46', '2026-10-10 05:33:44'),
(370, 1, '576d1ca9-47ec-04f3-846b-cc698b8e37d0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'NY-MIRROR-14', 'https://www.nydiamondusa.com/product-page/ny-mirror-14', 'Images/nydaimondusa/Mirrors/ny-mirror-14/1.jpg', NULL, NULL, NULL, NULL, 'Silver mirror.', 249.00, 249.00, NULL, '2026-10-06 06:47:47', '2026-10-10 05:33:44'),
(374, 1, 'c05d3cc2-4518-d109-b9ad-b9e6f1fd2fc7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'RANA MIRROR', 'https://www.nydiamondusa.com/product-page/rana-mirror', 'Images/nydaimondusa/Mirrors/rana-mirror/1.jpg', 'Images/nydaimondusa/Mirrors/rana-mirror/2.jpg', 'Images/nydaimondusa/Mirrors/rana-mirror/3.jpg', 'Images/nydaimondusa/Mirrors/rana-mirror/4.jpg', 'Images/nydaimondusa/Mirrors/rana-mirror/5.jpg', NULL, 179.00, 179.00, NULL, '2026-10-06 06:48:06', '2026-10-10 05:33:44'),
(378, 1, '7fa50acd-acf6-e23d-5fe4-4f7d9320b04a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'ORANGE', 'https://www.nydiamondusa.com/product-page/orange', 'Images/nydaimondusa/Mirrors/orange/1.jpg', 'Images/nydaimondusa/Mirrors/orange/2.jpg', 'Images/nydaimondusa/Mirrors/orange/3.jpg', NULL, NULL, NULL, 199.00, 199.00, NULL, '2026-10-06 06:48:29', '2026-10-10 05:33:45'),
(379, 1, '1901238b-69c1-c267-ca0b-a18d32d853e1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'CORONA', 'https://www.nydiamondusa.com/product-page/corona', 'Images/nydaimondusa/Mirrors/corona/1.jpg', 'Images/nydaimondusa/Mirrors/corona/2.jpg', NULL, NULL, NULL, 'Gold frame mirror with gold design.', 179.00, 179.00, NULL, '2026-10-06 06:48:34', '2026-10-10 05:33:45'),
(380, 1, '4a328c4b-b09a-8206-6cc8-0b4e7858b1f4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'CEDAR', 'https://www.nydiamondusa.com/product-page/cedar', 'Images/nydaimondusa/Mirrors/cedar/1.jpg', 'Images/nydaimondusa/Mirrors/cedar/2.jpg', NULL, NULL, NULL, NULL, 149.00, 149.00, NULL, '2026-10-06 06:48:44', '2026-10-10 05:33:45'),
(381, 1, '60c47815-630f-755f-e8bf-e24d5daa04de', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'NORMAN', 'https://www.nydiamondusa.com/product-page/norman', 'Images/nydaimondusa/Mirrors/norman/1.jpg', 'Images/nydaimondusa/Mirrors/norman/2.jpg', 'Images/nydaimondusa/Mirrors/norman/3.jpg', NULL, NULL, NULL, 149.00, 149.00, NULL, '2026-10-06 06:48:54', '2026-10-10 05:33:45'),
(382, 1, '2d8bd533-7c1c-8ff8-a6bd-78a0af58683f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'CARY', 'https://www.nydiamondusa.com/product-page/cary', 'Images/nydaimondusa/Mirrors/cary/1.jpg', 'Images/nydaimondusa/Mirrors/cary/2.jpg', NULL, NULL, NULL, 'Squared gold mirror.', 149.00, 149.00, NULL, '2026-10-06 06:48:59', '2026-10-10 05:33:45'),
(389, 1, '64726293-3495-4fa2-7859-457b70217ffa', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'NY MIRROR-13', 'https://www.nydiamondusa.com/product-page/ny-mirror-13', 'Images/nydaimondusa/Mirrors/ny-mirror-13/1.png', NULL, NULL, NULL, NULL, 'Gold mirror design.', 249.00, 249.00, NULL, '2026-10-06 06:49:15', '2026-10-10 05:33:46'),
(390, 1, 'c87b147e-735d-9532-ee6f-b65f44edc509', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'NY MIRROR-12', 'https://www.nydiamondusa.com/product-page/ny-mirror-12', 'Images/nydaimondusa/Mirrors/ny-mirror-12/1.png', NULL, NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:49:16', '2026-10-10 05:33:46'),
(391, 1, '41a4df42-20ef-dd1f-fe77-e00521fac7fc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'NY MIRROR-10', 'https://www.nydiamondusa.com/product-page/ny-mirror-10', 'Images/nydaimondusa/Mirrors/ny-mirror-10/1.png', NULL, NULL, NULL, NULL, NULL, 249.00, 249.00, NULL, '2026-10-06 06:49:19', '2026-10-10 05:33:46'),
(498, 1, 'c91caee0-eefb-d3e0-90e4-e0e5acff17d9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'CLIFTON', 'https://www.nydiamondusa.com/product-page/clifton', 'Images/nydaimondusa/Mirrors/clifton/1.jpg', 'Images/nydaimondusa/Mirrors/clifton/2.jpg', 'Images/nydaimondusa/Mirrors/clifton/3.jpeg', 'Images/nydaimondusa/Mirrors/clifton/4.jpg', NULL, 'Mirror.', 399.00, 399.00, NULL, '2026-10-06 06:53:55', '2026-10-10 05:34:11'),
(590, 1, '52ba706e-d3d3-c087-21a2-cd3cad41496b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'NEDO', 'https://www.nydiamondusa.com/product-page/nedo', 'Images/nydaimondusa/Mirrors/nedo/1.jpg', NULL, NULL, NULL, NULL, 'Crushed diamond mirror.', 99.00, 99.00, NULL, '2026-10-06 06:57:17', '2026-10-10 05:34:24'),
(591, 1, 'e062c85e-54cd-bdb8-5721-d616ca8d607a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'NY-HEART MIRROR', 'https://www.nydiamondusa.com/product-page/ny-heart-mirror', 'Images/nydaimondusa/Mirrors/ny-heart-mirror/1.jpg', NULL, NULL, NULL, NULL, 'Crushed diamond mirror.', 99.00, 99.00, NULL, '2026-10-06 06:57:18', '2026-10-10 05:34:24'),
(653, 1, '5499f2e9-e630-44ed-bcce-58c8d53c32c6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'NY-P MIRROR', 'https://www.nydiamondusa.com/product-page/ny-p-mirror-1', 'Images/nydaimondusa/Mirrors/ny-p-mirror-1/1.jpg', NULL, NULL, NULL, NULL, 'Mirror glass.', 199.00, 199.00, NULL, '2026-10-06 06:58:58', '2026-10-10 05:34:32'),
(684, 1, 'f564459f-25d3-3271-11bb-a774636a48db', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Mirrors', 'GD-8F01 (GUNHILL)', 'https://www.nydiamondusa.com/product-page/gd-8f01', 'Images/nydaimondusa/Mirrors/gd-8f01/1.png', NULL, NULL, NULL, NULL, 'Long mirror.', 249.00, 249.00, NULL, '2026-10-06 06:59:45', '2026-10-10 05:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `Packages, Rugs & Pillows`
--

CREATE TABLE `Packages, Rugs & Pillows` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Packages, Rugs & Pillows`
--

INSERT INTO `Packages, Rugs & Pillows` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(344, 1, '436e21a3-4fac-e9ae-735c-f6e55a629eef', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY PILLOW-13-14-15-16-17-18', 'https://www.nydiamondusa.com/product-page/ny-pillow-13-14-15-16-17-18', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-pillow-13-14-15-16-17-18/1.jpg', NULL, NULL, NULL, NULL, NULL, 6.00, 6.00, NULL, '2026-10-06 06:47:23', '2026-10-10 05:33:42'),
(345, 1, '6b1009e4-39c2-9172-37f6-33b32eab101f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY PILLOW-7-8-9-10-11-12', 'https://www.nydiamondusa.com/product-page/ny-pillow-7-8-9-10-11-12', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-pillow-7-8-9-10-11-12/1.jpg', NULL, NULL, NULL, NULL, NULL, 6.00, 6.00, NULL, '2026-10-06 06:47:24', '2026-10-10 05:33:42'),
(346, 1, 'b7942793-f7f6-ca61-487e-3bc04841d901', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY PILLOW-1-2-3-4-5-6', 'https://www.nydiamondusa.com/product-page/ny-pillow-1-2-3-4-5-6', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-pillow-1-2-3-4-5-6/1.jpg', NULL, NULL, NULL, NULL, NULL, 6.00, 6.00, NULL, '2026-10-06 06:47:24', '2026-10-10 05:33:42'),
(578, 1, '93d4cf22-77d2-ade6-9749-4b8adf95de1c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PILLOW NAVY BLUE', 'https://www.nydiamondusa.com/product-page/ny-pillow-navy-blue', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-pillow-navy-blue/1.png', NULL, NULL, NULL, NULL, NULL, 9.00, 9.00, NULL, '2026-10-06 06:56:55', '2026-10-10 05:34:23'),
(579, 1, 'f2251195-b5d8-cf23-8fa6-a340f41b8ad8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PACKAGE NAVY BLUE', 'https://www.nydiamondusa.com/product-page/ny-package-navy-blue', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-navy-blue/1.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-navy-blue/2.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-navy-blue/3.png', NULL, NULL, NULL, 179.00, 129.00, NULL, '2026-10-06 06:57:00', '2026-10-10 05:34:23'),
(587, 1, '17e8f19d-5342-d6fb-88e9-372c28e53f3e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PACKAGE YELLOW', 'https://www.nydiamondusa.com/product-page/ny-package-yellow', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-yellow/1.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-yellow/2.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-yellow/3.png', NULL, NULL, NULL, 179.00, 129.00, NULL, '2026-10-06 06:57:15', '2026-10-10 05:34:23'),
(588, 1, 'c45c1b0c-63b3-ea30-0d18-4ab462c2ac62', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PACKAGE BLUE', 'https://www.nydiamondusa.com/product-page/ny-package-blue', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-blue/1.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-blue/2.png', NULL, NULL, NULL, NULL, 179.00, 129.00, NULL, '2026-10-06 06:57:15', '2026-10-10 05:34:24'),
(619, 1, '0ce01417-3ccf-1227-d15b-1418c0ba716f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PILLOW YELLOW', 'https://www.nydiamondusa.com/product-page/ny-pillow-yellow', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-pillow-yellow/1.png', NULL, NULL, NULL, NULL, NULL, 9.00, 9.00, NULL, '2026-10-06 06:58:15', '2026-10-10 05:34:28'),
(638, 1, '63f069c8-ad0b-f8dc-2af5-3d4252be05fc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PACKAGE BURGANDY', 'https://www.nydiamondusa.com/product-page/ny-package-burgandy', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-burgandy/1.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-burgandy/2.png', NULL, NULL, NULL, NULL, 179.00, 129.00, NULL, '2026-10-06 06:58:44', '2026-10-10 05:34:30'),
(639, 1, '17653d27-bdec-d16b-f33b-e98d9555068c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PACKAGE RED', 'https://www.nydiamondusa.com/product-page/ny-package-red', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-red/1.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-red/2.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-red/3.png', NULL, NULL, NULL, 179.00, 129.00, NULL, '2026-10-06 06:58:46', '2026-10-10 05:34:30'),
(640, 1, '8fc3ffdd-7744-7c50-27c5-4a0a44735f62', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PACKAGE GRAY', 'https://www.nydiamondusa.com/product-page/ny-package-gray', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-gray/1.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-gray/2.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-gray/3.png', NULL, NULL, NULL, 179.00, 129.00, NULL, '2026-10-06 06:58:48', '2026-10-10 05:34:30'),
(641, 1, 'f88f0004-bf0a-3114-fa98-a41c21ffbb6c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PACKAGE WHITE', 'https://www.nydiamondusa.com/product-page/ny-package-white', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-white/1.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-white/2.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-white/3.png', NULL, NULL, NULL, 179.00, 129.00, NULL, '2026-10-06 06:58:50', '2026-10-10 05:34:31'),
(642, 1, '10455914-5c91-9dcc-09be-e5c143faea8d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PACKAGE BLACK', 'https://www.nydiamondusa.com/product-page/ny-package-black', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-black/1.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-black/2.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package-black/3.png', NULL, NULL, NULL, 179.00, 129.00, NULL, '2026-10-06 06:58:51', '2026-10-10 05:34:31'),
(643, 1, 'cc7cc8aa-fcd9-1fb8-90dd-65d44f1b2af4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-RUG BURGANDY', 'https://www.nydiamondusa.com/product-page/ny-rug-burgandy', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-rug-burgandy/1.png', NULL, NULL, NULL, NULL, NULL, 59.00, 59.00, NULL, '2026-10-06 06:58:53', '2026-10-10 05:34:31'),
(644, 1, '7202713c-d79b-962a-8442-6737e705aecd', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-RUG GRAY', 'https://www.nydiamondusa.com/product-page/ny-rug-gray', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-rug-gray/1.png', NULL, NULL, NULL, NULL, NULL, 59.00, 59.00, NULL, '2026-10-06 06:58:53', '2026-10-10 05:34:31'),
(645, 1, '64912d7a-3f85-7392-ebae-a0305ecf26a8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-RUG RED', 'https://www.nydiamondusa.com/product-page/ny-rug-red', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-rug-red/1.png', NULL, NULL, NULL, NULL, NULL, 59.00, 59.00, NULL, '2026-10-06 06:58:54', '2026-10-10 05:34:31'),
(646, 1, '4fd496ba-4cd7-08e1-cd07-7e3a06ee03dc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-RUG WHITE', 'https://www.nydiamondusa.com/product-page/ny-rug-white', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-rug-white/1.png', NULL, NULL, NULL, NULL, NULL, 59.00, 59.00, NULL, '2026-10-06 06:58:54', '2026-10-10 05:34:31'),
(647, 1, 'a10bc243-9c05-86f5-049a-b529cec1228f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-RUG BLACK', 'https://www.nydiamondusa.com/product-page/ny-rug-black', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-rug-black/1.png', NULL, NULL, NULL, NULL, NULL, 59.00, 59.00, NULL, '2026-10-06 06:58:55', '2026-10-10 05:34:31'),
(648, 1, 'fe68937a-c64e-ea92-6693-2258622f952d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PILLOW GRAY', 'https://www.nydiamondusa.com/product-page/ny-pillow-gray', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-pillow-gray/1.png', NULL, NULL, NULL, NULL, NULL, 9.00, 9.00, NULL, '2026-10-06 06:58:55', '2026-10-10 05:34:31'),
(649, 1, 'fcfcfbd8-672a-c375-345b-7423de478891', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PILLOW BURGANDY', 'https://www.nydiamondusa.com/product-page/ny-pillow-burgandy', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-pillow-burgandy/1.png', NULL, NULL, NULL, NULL, NULL, 9.00, 9.00, NULL, '2026-10-06 06:58:56', '2026-10-10 05:34:31'),
(650, 1, '8ddc8914-1721-f8e8-c76a-9bcf628c58b2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PILLOW WHITE', 'https://www.nydiamondusa.com/product-page/ny-pillow-white', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-pillow-white/1.png', NULL, NULL, NULL, NULL, NULL, 9.00, 9.00, NULL, '2026-10-06 06:58:56', '2026-10-10 05:34:31'),
(651, 1, '245a5af9-6650-8503-a4fb-d6c9506e73d1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PILLOW RED', 'https://www.nydiamondusa.com/product-page/ny-pillow-red', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-pillow-red/1.png', NULL, NULL, NULL, NULL, NULL, 9.00, 9.00, NULL, '2026-10-06 06:58:57', '2026-10-10 05:34:32'),
(652, 1, '984d3c94-d884-57ed-dce3-b2a11e4b313d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PILLOW BLACK', 'https://www.nydiamondusa.com/product-page/ny-pillow-black', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-pillow-black/1.png', NULL, NULL, NULL, NULL, NULL, 9.00, 9.00, NULL, '2026-10-06 06:58:57', '2026-10-10 05:34:32'),
(672, 1, 'f0a82e10-ef5d-7002-1a6f-b4222aa7f713', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PILLOW PINK', 'https://www.nydiamondusa.com/product-page/ny-pillow', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-pillow/1.png', NULL, NULL, NULL, NULL, NULL, 9.00, 9.00, NULL, '2026-10-06 06:59:22', '2026-10-10 05:34:34'),
(673, 1, '736672ef-213f-98cb-b5e5-e2f4dd98b39f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-RUG PINK', 'https://www.nydiamondusa.com/product-page/ny-rug', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-rug/1.png', NULL, NULL, NULL, NULL, NULL, 59.00, 59.00, NULL, '2026-10-06 06:59:23', '2026-10-10 05:34:34'),
(674, 1, 'b7c48cc6-144d-30b2-7d89-8929c6f93178', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Packages, Rugs & Pillows', 'NY-PACKAGE PINK', 'https://www.nydiamondusa.com/product-page/ny-package', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package/1.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package/2.png', 'Images/nydaimondusa/Packages, Rugs & Pillows/ny-package/3.png', NULL, NULL, NULL, 179.00, 129.00, NULL, '2026-10-06 06:59:25', '2026-10-10 05:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `Pictures Frames`
--

CREATE TABLE `Pictures Frames` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Pictures Frames`
--

INSERT INTO `Pictures Frames` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(13, 1, '63cdbb40-155c-c25e-2e3d-1abdbc872c9b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5066', 'https://www.nydiamondusa.com/product-page/ny-5066', 'Images/nydaimondusa/Pictures Frames/ny-5066/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:35:59', '2026-10-10 05:32:25'),
(14, 1, 'a39365ae-03a9-214d-caae-e9b6bdb4cbd5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5064', 'https://www.nydiamondusa.com/product-page/ny-5064', 'Images/nydaimondusa/Pictures Frames/ny-5064/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:00', '2026-10-10 05:32:25'),
(15, 1, '1953a842-f256-2c94-69e2-9b37a57199fc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5058', 'https://www.nydiamondusa.com/product-page/ny-5058', 'Images/nydaimondusa/Pictures Frames/ny-5058/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 179.00, NULL, '2026-10-06 06:36:01', '2026-10-06 07:23:12'),
(16, 1, '5c29b04a-9df6-3d40-0485-e0de49a0af41', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5055', 'https://www.nydiamondusa.com/product-page/ny-5055', 'Images/nydaimondusa/Pictures Frames/ny-5055/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 179.00, NULL, '2026-10-06 06:36:02', '2026-10-06 07:23:12'),
(17, 1, '7d816240-ef98-99a9-b19e-72ebad11af92', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5044', 'https://www.nydiamondusa.com/product-page/ny-5044', 'Images/nydaimondusa/Pictures Frames/ny-5044/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:03', '2026-10-10 05:32:25'),
(18, 1, '47e1ccef-d444-c5ed-a6e2-4d2f248be1b0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5046', 'https://www.nydiamondusa.com/product-page/ny-5046', 'Images/nydaimondusa/Pictures Frames/ny-5046/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:04', '2026-10-10 05:32:25'),
(19, 1, 'ca9afa9e-41bc-1265-fb61-ee33e4733345', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5049', 'https://www.nydiamondusa.com/product-page/ny-5049', 'Images/nydaimondusa/Pictures Frames/ny-5049/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:05', '2026-10-10 05:32:25'),
(20, 1, '7c37bdff-709d-e1a2-1faa-5df2ff9d71f3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5078', 'https://www.nydiamondusa.com/product-page/ny-5078', 'Images/nydaimondusa/Pictures Frames/ny-5078/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:06', '2026-10-10 05:32:25'),
(21, 1, '66b666e2-0c2a-4e77-0987-511f062c901a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5074', 'https://www.nydiamondusa.com/product-page/ny-5074', 'Images/nydaimondusa/Pictures Frames/ny-5074/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:07', '2026-10-10 05:32:25'),
(22, 1, '7331d15a-0344-5f81-3be0-a0b6fa27aba9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5072', 'https://www.nydiamondusa.com/product-page/ny-5072', 'Images/nydaimondusa/Pictures Frames/ny-5072/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:08', '2026-10-10 05:32:25'),
(23, 1, '65484c6f-8ecc-7ab7-5f6d-9c4b56d3918c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5065', 'https://www.nydiamondusa.com/product-page/ny-5065', 'Images/nydaimondusa/Pictures Frames/ny-5065/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:09', '2026-10-10 05:32:25'),
(24, 1, '026d7fb5-a0cf-0b2c-3a50-a877a413cab6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5059', 'https://www.nydiamondusa.com/product-page/ny-5059', 'Images/nydaimondusa/Pictures Frames/ny-5059/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:10', '2026-10-10 05:32:25'),
(25, 1, 'b011d77a-c579-1dc7-d174-0cb75af92fc0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5051', 'https://www.nydiamondusa.com/product-page/ny-5051', 'Images/nydaimondusa/Pictures Frames/ny-5051/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:10', '2026-10-10 05:32:25'),
(26, 1, '2ddf07d6-1a2b-6108-9ba7-0be24698d491', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5060', 'https://www.nydiamondusa.com/product-page/ny-5060', 'Images/nydaimondusa/Pictures Frames/ny-5060/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:12', '2026-10-10 05:32:25'),
(27, 1, '112c37b7-9ed2-5d58-d430-f7a45c8f2a58', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5043', 'https://www.nydiamondusa.com/product-page/ny-5043-1', 'Images/nydaimondusa/Pictures Frames/ny-5043-1/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:13', '2026-10-10 05:32:25'),
(28, 1, 'f29adf8b-898c-1925-affd-2991ab8dfe8e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5052', 'https://www.nydiamondusa.com/product-page/ny-5052', 'Images/nydaimondusa/Pictures Frames/ny-5052/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:14', '2026-10-10 05:32:25'),
(29, 1, '4b8b1bb5-50be-d78e-4eb4-1f2da18548ba', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5050', 'https://www.nydiamondusa.com/product-page/ny-5050', 'Images/nydaimondusa/Pictures Frames/ny-5050/1.jpeg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:36:14', '2026-10-10 05:32:25'),
(171, 1, 'f02dfe7e-a892-2d2e-d89a-85cf79ed72c1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5040', 'https://www.nydiamondusa.com/product-page/ny-5040', 'Images/nydaimondusa/Pictures Frames/ny-5040/1.jpg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:41:18', '2026-10-10 05:33:18'),
(347, 1, 'a722a562-adef-4935-a1de-e9132f4848dd', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5001', 'https://www.nydiamondusa.com/product-page/ny-5001', 'Images/nydaimondusa/Pictures Frames/ny-5001/1.jpg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:47:25', '2026-10-10 05:33:42'),
(348, 1, 'e419453a-b235-438a-b1ce-f7f17cf72e49', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5011', 'https://www.nydiamondusa.com/product-page/ny-5011', 'Images/nydaimondusa/Pictures Frames/ny-5011/1.jpg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:47:26', '2026-10-10 05:33:42'),
(349, 1, '8bba8caa-bccb-42f6-85cb-a0d6c263cab6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5025', 'https://www.nydiamondusa.com/product-page/ny-5025', 'Images/nydaimondusa/Pictures Frames/ny-5025/1.jpg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:47:27', '2026-10-10 05:33:42'),
(350, 1, 'e387b322-60d9-4248-b771-67866e5a0033', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5005', 'https://www.nydiamondusa.com/product-page/ny-5005', 'Images/nydaimondusa/Pictures Frames/ny-5005/1.jpg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:47:27', '2026-10-10 05:33:42'),
(351, 1, 'cdd472cb-cc5c-49f0-b5eb-d08be9b80fcd', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5007', 'https://www.nydiamondusa.com/product-page/ny-5007', 'Images/nydaimondusa/Pictures Frames/ny-5007/1.jpg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:47:29', '2026-10-10 05:33:42'),
(352, 1, '50cc601d-bfd8-4f4b-bf6f-c09db65b59ac', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5002', 'https://www.nydiamondusa.com/product-page/ny-5002', 'Images/nydaimondusa/Pictures Frames/ny-5002/1.jpg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:47:29', '2026-10-10 05:33:42'),
(353, 1, '955dd06c-5132-4f81-80f9-0b5e26ff4923', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5006', 'https://www.nydiamondusa.com/product-page/ny-5006', 'Images/nydaimondusa/Pictures Frames/ny-5006/1.jpg', NULL, NULL, NULL, NULL, 'Gold frame with crystals.', 179.00, 125.00, NULL, '2026-10-06 06:47:30', '2026-10-10 05:33:42'),
(354, 1, '9bf75f4e-cb56-4513-81d6-0b67ba51336b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5019', 'https://www.nydiamondusa.com/product-page/ny-5019', 'Images/nydaimondusa/Pictures Frames/ny-5019/1.jpg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:47:31', '2026-10-10 05:33:42'),
(355, 1, 'b3d13cae-b02b-4a0d-9852-6ee61bcf935f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Pictures Frames', 'NY-5017', 'https://www.nydiamondusa.com/product-page/ny-5017', 'Images/nydaimondusa/Pictures Frames/ny-5017/1.jpg', NULL, NULL, NULL, NULL, NULL, 179.00, 125.00, NULL, '2026-10-06 06:47:32', '2026-10-10 05:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `Selfie Mirrors`
--

CREATE TABLE `Selfie Mirrors` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Selfie Mirrors`
--

INSERT INTO `Selfie Mirrors` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(53, 1, '9fcf7611-9409-50c9-aba4-4eb4aa166ad3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Selfie Mirrors', 'M70', 'https://www.nydiamondusa.com/product-page/m70', 'Images/nydaimondusa/Selfie Mirrors/m70/1.jpeg', 'Images/nydaimondusa/Selfie Mirrors/m70/2.jpeg', NULL, NULL, NULL, 'Gold stainless steal mirror.', 349.00, 349.00, NULL, '2026-10-06 06:36:51', '2026-10-10 05:32:44'),
(118, 1, '64512c7e-d2f2-9e2e-eb8b-434369b8c613', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Selfie Mirrors', 'M-101', 'https://www.nydiamondusa.com/product-page/m-101', 'Images/nydaimondusa/Selfie Mirrors/m-101/1.jpg', 'Images/nydaimondusa/Selfie Mirrors/m-101/2.jpg', 'Images/nydaimondusa/Selfie Mirrors/m-101/3.jpg', NULL, NULL, 'White stand up mirror.', 299.00, 299.00, NULL, '2026-10-06 06:39:35', '2026-10-10 05:33:16'),
(119, 1, '1742ca6c-56c6-611c-e98e-21094047537c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Selfie Mirrors', 'M-102', 'https://www.nydiamondusa.com/product-page/m-102', 'Images/nydaimondusa/Selfie Mirrors/m-102/1.jpg', 'Images/nydaimondusa/Selfie Mirrors/m-102/2.jpg', 'Images/nydaimondusa/Selfie Mirrors/m-102/3.jpg', NULL, NULL, 'Black stand up mirror.', 299.00, 299.00, NULL, '2026-10-06 06:39:37', '2026-10-10 05:33:16'),
(193, 1, 'a7efecbd-7198-8208-e168-ebfd6e0e9563', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Selfie Mirrors', 'NYFM-51 BLACK', 'https://www.nydiamondusa.com/product-page/nyfm-51-black', 'Images/nydaimondusa/Selfie Mirrors/nyfm-51-black/1.jpeg', 'Images/nydaimondusa/Selfie Mirrors/nyfm-51-black/2.jpg', NULL, NULL, NULL, NULL, 299.00, 299.00, NULL, '2026-10-06 06:41:54', '2026-10-10 05:33:19'),
(194, 1, 'edac6803-8cf9-cce0-856b-e926540c5e5a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Selfie Mirrors', 'NYFM-54 SILVER', 'https://www.nydiamondusa.com/product-page/nyfm-54-silver', 'Images/nydaimondusa/Selfie Mirrors/nyfm-54-silver/1.jpg', 'Images/nydaimondusa/Selfie Mirrors/nyfm-54-silver/2.jpg', NULL, NULL, NULL, NULL, 299.00, 299.00, NULL, '2026-10-06 06:41:56', '2026-10-10 05:33:19'),
(195, 1, '60aa782e-90b6-b83c-03e2-9efaa4482821', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Selfie Mirrors', 'NYFM-52 GOLD', 'https://www.nydiamondusa.com/product-page/nyfm-52-gold', 'Images/nydaimondusa/Selfie Mirrors/nyfm-52-gold/1.jpg', 'Images/nydaimondusa/Selfie Mirrors/nyfm-52-gold/2.jpg', NULL, NULL, NULL, NULL, 299.00, 299.00, NULL, '2026-10-06 06:41:59', '2026-10-10 05:33:19'),
(196, 1, 'dacb0a0f-1393-ae6c-4b23-f4ca3f067c78', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Selfie Mirrors', 'NYFM-42 GOLD', 'https://www.nydiamondusa.com/product-page/nyfm-42-gold', 'Images/nydaimondusa/Selfie Mirrors/nyfm-42-gold/1.jpg', 'Images/nydaimondusa/Selfie Mirrors/nyfm-42-gold/2.jpg', NULL, NULL, NULL, NULL, 299.00, 299.00, NULL, '2026-10-06 06:42:00', '2026-10-10 05:33:19'),
(197, 1, 'c9972f8a-ec15-424c-abde-58d6f1a3a717', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Selfie Mirrors', 'NYFM-31 BLACK', 'https://www.nydiamondusa.com/product-page/nyfm-31-black', 'Images/nydaimondusa/Selfie Mirrors/nyfm-31-black/1.jpeg', 'Images/nydaimondusa/Selfie Mirrors/nyfm-31-black/2.jpg', NULL, NULL, NULL, NULL, 299.00, 299.00, NULL, '2026-10-06 06:42:03', '2026-10-10 05:33:19'),
(589, 1, '3c754386-eac1-5822-f579-b239229e38ce', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Selfie Mirrors', 'COSTA', 'https://www.nydiamondusa.com/product-page/couster', 'Images/nydaimondusa/Selfie Mirrors/couster/1.jpg', NULL, NULL, NULL, NULL, 'Selfie mirror.', 99.00, 99.00, NULL, '2026-10-06 06:57:16', '2026-10-10 05:34:24'),
(683, 1, 'a75db83e-e1ce-9abb-33d3-4b63d27b02b1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Selfie Mirrors', 'NYFM-8 (GARCIA)', 'https://www.nydiamondusa.com/product-page/nyfm-8-garcia', 'Images/nydaimondusa/Selfie Mirrors/nyfm-8-garcia/1.jpg', NULL, NULL, NULL, NULL, 'Selfie mirror.', 199.00, 199.00, NULL, '2026-10-06 06:59:44', '2026-10-10 05:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `Swing Chair`
--

CREATE TABLE `Swing Chair` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Swing Chair`
--

INSERT INTO `Swing Chair` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(611, 1, 'cda6b1b8-f8f9-c2e9-efa7-cda8436ba967', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Swing Chair', 'NY-SWING 404', 'https://www.nydiamondusa.com/product-page/ny-swing-404', 'Images/nydaimondusa/Swing Chair/ny-swing-404/1.jpg', NULL, NULL, NULL, NULL, 'Acrylic silver swing chair.', 499.00, 499.00, NULL, '2026-10-06 06:58:08', '2026-10-10 05:34:27'),
(612, 1, 'f3f72cc6-24c3-2565-a664-c2868f141442', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Swing Chair', 'NY-SWING 303', 'https://www.nydiamondusa.com/product-page/ny-swing-303', 'Images/nydaimondusa/Swing Chair/ny-swing-303/1.jpg', NULL, NULL, NULL, NULL, 'Acrylic gold swing chair.', 499.00, 499.00, NULL, '2026-10-06 06:58:09', '2026-10-10 05:34:28'),
(613, 1, 'b5962488-791c-084f-a743-7ca3e4abbf0d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Swing Chair', 'NY-SWING 202', 'https://www.nydiamondusa.com/product-page/ny-swing-202', 'Images/nydaimondusa/Swing Chair/ny-swing-202/1.jpg', NULL, NULL, NULL, NULL, 'Acrylic silver swing chair.', 499.00, 499.00, NULL, '2026-10-06 06:58:09', '2026-10-10 05:34:28'),
(614, 1, '9935f650-6da6-cc83-5a5c-01baea13a207', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Swing Chair', 'NY-SWING 101', 'https://www.nydiamondusa.com/product-page/ny-swing-101', 'Images/nydaimondusa/Swing Chair/ny-swing-101/1.jpg', NULL, NULL, NULL, NULL, 'Acrylic gold swing chair.', 549.00, 549.00, NULL, '2026-10-06 06:58:10', '2026-10-10 05:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `Trees`
--

CREATE TABLE `Trees` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Trees`
--

INSERT INTO `Trees` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(509, 1, '65045116-fffc-b95d-40e6-ec5ca4c22d33', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Trees', 'NYTREE-WHITE SILVER', 'https://www.nydiamondusa.com/product-page/nytree-white-silver', 'Images/nydaimondusa/Trees/nytree-white-silver/1.jpg', NULL, NULL, NULL, NULL, 'Flamingo feather standing floor lamp.', 549.00, 549.00, NULL, '2026-10-06 06:54:05', '2026-10-10 05:34:14'),
(625, 1, '46e7637f-390b-461c-f836-bef17d4dc3e6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Trees', 'NYTREE-WHITE GOLD', 'https://www.nydiamondusa.com/product-page/nytree-white', 'Images/nydaimondusa/Trees/nytree-white/1.jpg', NULL, NULL, NULL, NULL, 'Flamingo feather standing floor lamp.', 549.00, 549.00, NULL, '2026-10-06 06:58:23', '2026-10-10 05:34:29'),
(626, 1, 'd3aad119-9d3d-4bf2-04cf-249d2fc1b557', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Trees', 'NYTREE-GRAY GOLD', 'https://www.nydiamondusa.com/product-page/nytree-gray', 'Images/nydaimondusa/Trees/nytree-gray/1.jpg', NULL, NULL, NULL, NULL, 'Flamingo feather standing floor lamp.', 549.00, 549.00, NULL, '2026-10-06 06:58:27', '2026-10-10 05:34:29'),
(627, 1, 'b2dca41a-4280-622a-f64d-fb793cc1ce91', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Trees', 'NYTREE-PINK', 'https://www.nydiamondusa.com/product-page/nytree-pink', 'Images/nydaimondusa/Trees/nytree-pink/1.jpg', NULL, NULL, NULL, NULL, 'Flamingo feather standing floor lamp.', 549.00, 549.00, NULL, '2026-10-06 06:58:28', '2026-10-10 05:34:29'),
(628, 1, '964a4a8f-447e-d617-c9eb-af0ca0b97358', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Trees', 'NYTREE-RED', 'https://www.nydiamondusa.com/product-page/nytree-red', 'Images/nydaimondusa/Trees/nytree-red/1.jpg', NULL, NULL, NULL, NULL, 'Flamingo feather standing floor lamp.', 549.00, 549.00, NULL, '2026-10-06 06:58:29', '2026-10-10 05:34:29'),
(629, 1, '362f1a6d-e256-8be3-8464-193d0b134031', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Trees', 'NYTREE-PURPLE', 'https://www.nydiamondusa.com/product-page/nytree-blue', 'Images/nydaimondusa/Trees/nytree-blue/1.jpg', NULL, NULL, NULL, NULL, 'Flamingo feather standing floor lamp.', 549.00, 549.00, NULL, '2026-10-06 06:58:29', '2026-10-10 05:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `Uncategorized`
--

CREATE TABLE `Uncategorized` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Uncategorized`
--

INSERT INTO `Uncategorized` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(692, 1, 'b6d84e55-6bc3-54a2-2a36-3b202eec332e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NYT-490', 'https://www.nydiamondusa.com/product-page/nyt-490', 'Images/nydaimondusa/Uncategorized/nyt-490/1.jpeg', NULL, NULL, NULL, NULL, NULL, 79.00, 79.00, NULL, '2026-10-10 05:33:04', '2026-10-10 05:33:04'),
(693, 1, 'ddfe18bc-4a30-62ad-fa40-8ce755b5bca6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '1942-GREY', 'https://www.nydiamondusa.com/product-page/1942-grey', 'Images/nydaimondusa/Uncategorized/1942-grey/1.jpg', 'Images/nydaimondusa/Uncategorized/1942-grey/2.jpg', NULL, NULL, NULL, 'Sofa and love seat.', 1299.00, 1299.00, NULL, '2026-10-10 05:33:18', '2026-10-10 05:33:18'),
(694, 1, 'fdbd1ace-4e3c-edd0-d7cf-605f54638806', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-3900', 'https://www.nydiamondusa.com/product-page/ny-3900', 'Images/nydaimondusa/Uncategorized/ny-3900/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 649.00, NULL, '2026-10-10 05:33:21', '2026-10-10 05:33:21'),
(695, 1, '6d7c19a8-c236-ead1-88c3-7d8dce60d870', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-2700', 'https://www.nydiamondusa.com/product-page/ny-2700', 'Images/nydaimondusa/Uncategorized/ny-2700/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 649.00, NULL, '2026-10-10 05:33:21', '2026-10-10 05:33:21'),
(696, 1, '437057d4-8c4e-ec36-50fe-975fe132f81e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-2400', 'https://www.nydiamondusa.com/product-page/ny-2400-1', 'Images/nydaimondusa/Uncategorized/ny-2400-1/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 649.00, NULL, '2026-10-10 05:33:21', '2026-10-10 05:33:21'),
(697, 1, 'cab7648c-bd25-b4de-673b-5b2848343d24', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '2221-BLACK', 'https://www.nydiamondusa.com/product-page/2221-black', 'Images/nydaimondusa/Uncategorized/2221-black/1.jpg', 'Images/nydaimondusa/Uncategorized/2221-black/2.jpg', NULL, NULL, NULL, NULL, 1599.00, 1599.00, NULL, '2026-10-10 05:33:24', '2026-10-10 05:33:24'),
(698, 1, '1ae594b6-3d4b-dcc9-be00-09cafa0b0d4f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '2221-CREAM', 'https://www.nydiamondusa.com/product-page/2221-cream', 'Images/nydaimondusa/Uncategorized/2221-cream/1.jpg', 'Images/nydaimondusa/Uncategorized/2221-cream/2.jpg', NULL, NULL, NULL, NULL, 1599.00, 1599.00, NULL, '2026-10-10 05:33:24', '2026-10-10 05:33:24'),
(699, 1, '4a6ed7eb-15bb-d706-d99c-b86321aacb77', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '2221 GREY', 'https://www.nydiamondusa.com/product-page/2222-3-grey', 'Images/nydaimondusa/Uncategorized/2222-3-grey/1.jpg', 'Images/nydaimondusa/Uncategorized/2222-3-grey/2.jpg', NULL, NULL, NULL, NULL, 1599.00, 1599.00, NULL, '2026-10-10 05:33:24', '2026-10-10 05:33:24'),
(700, 1, '77dfde9b-f7ab-dbf2-d15a-4d9d84808b10', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BUCKS', 'https://www.nydiamondusa.com/product-page/bucks', 'Images/nydaimondusa/Uncategorized/bucks/1.jpg', 'Images/nydaimondusa/Uncategorized/bucks/2.jpg', NULL, NULL, NULL, NULL, 699.00, 699.00, NULL, '2026-10-10 05:33:25', '2026-10-10 05:33:25'),
(701, 1, '71770e98-5a8b-3c6b-a0c2-ef0180ed56b2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-1000', 'https://www.nydiamondusa.com/product-page/ny-1000-1', 'Images/nydaimondusa/Uncategorized/ny-1000-1/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 649.00, NULL, '2026-10-10 05:33:25', '2026-10-10 05:33:25'),
(702, 1, 'd87e185c-1159-eb07-5dce-b17f0f8a108a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-2600', 'https://www.nydiamondusa.com/product-page/ny-2600-1', 'Images/nydaimondusa/Uncategorized/ny-2600-1/1.jpg', NULL, NULL, NULL, NULL, NULL, 749.00, 649.00, NULL, '2026-10-10 05:33:25', '2026-10-10 05:33:25'),
(703, 1, 'c68c6d9b-1ce8-be25-add6-c5e2f032e3a4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'JETS', 'https://www.nydiamondusa.com/product-page/jets', 'Images/nydaimondusa/Uncategorized/jets/1.jpg', NULL, NULL, NULL, NULL, NULL, 699.00, 699.00, NULL, '2026-10-10 05:33:25', '2026-10-10 05:33:25'),
(704, 1, '7cfafc1f-cf63-df34-9b1f-b4db6166b950', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '1942-BLACK', 'https://www.nydiamondusa.com/product-page/1942-black', 'Images/nydaimondusa/Uncategorized/1942-black/1.jpg', 'Images/nydaimondusa/Uncategorized/1942-black/2.jpg', 'Images/nydaimondusa/Uncategorized/1942-black/3.jpg', NULL, NULL, 'Sofa and love seat.', 1299.00, 1299.00, NULL, '2026-10-10 05:33:26', '2026-10-10 05:33:26'),
(705, 1, '544494f3-6577-8553-9a38-907ebae04e29', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '1942-CHOCOLATE', 'https://www.nydiamondusa.com/product-page/1942-chocolate', 'Images/nydaimondusa/Uncategorized/1942-chocolate/1.jpg', 'Images/nydaimondusa/Uncategorized/1942-chocolate/2.jpg', 'Images/nydaimondusa/Uncategorized/1942-chocolate/3.jpg', NULL, NULL, 'Sofa and love seat.', 1299.00, 1299.00, NULL, '2026-10-10 05:33:26', '2026-10-10 05:33:26'),
(706, 1, 'f9e94487-2362-6405-f5ce-b19d9d014178', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-2100 WHITE', 'https://www.nydiamondusa.com/product-page/ny-2100-white', 'Images/nydaimondusa/Uncategorized/ny-2100-white/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 499.00, NULL, '2026-10-10 05:33:27', '2026-10-10 05:33:27'),
(707, 1, 'b5b8b608-b05a-e34b-d28b-b4a827682465', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-1900 WHITE', 'https://www.nydiamondusa.com/product-page/ny-1900-white', 'Images/nydaimondusa/Uncategorized/ny-1900-white/1.jpg', NULL, NULL, NULL, NULL, NULL, 649.00, 649.00, NULL, '2026-10-10 05:33:27', '2026-10-10 05:33:27'),
(708, 1, 'e7b5322f-5160-1ff4-f464-5457ecd0e0d4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'SR4438B', 'https://www.nydiamondusa.com/product-page/sr4438b', 'Images/nydaimondusa/Uncategorized/sr4438b/1.jpg', 'Images/nydaimondusa/Uncategorized/sr4438b/2.jpg', NULL, NULL, NULL, 'Coffe table with multiple LED colors.', 399.00, 399.00, NULL, '2026-10-10 05:33:27', '2026-10-10 05:33:27'),
(709, 1, '6e595336-b929-b488-8976-6ba74fca0cae', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'SR4438W', 'https://www.nydiamondusa.com/product-page/sr4438w', 'Images/nydaimondusa/Uncategorized/sr4438w/1.jpg', NULL, NULL, NULL, NULL, 'Coffe table with multiple LED colors.', 399.00, 399.00, NULL, '2026-10-10 05:33:28', '2026-10-10 05:33:28'),
(710, 1, 'd4a747a5-e384-2f83-29c3-bde4befc2fb0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C4045B', 'https://www.nydiamondusa.com/product-page/c4045b', 'Images/nydaimondusa/Uncategorized/c4045b/1.jpg', 'Images/nydaimondusa/Uncategorized/c4045b/2.jpg', NULL, NULL, NULL, NULL, 1399.00, 1399.00, NULL, '2026-10-10 05:33:28', '2026-10-10 05:33:28'),
(711, 1, 'e1958d05-038b-0fbc-258e-d3c7da86f5c4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C4045W', 'https://www.nydiamondusa.com/product-page/c4045w', 'Images/nydaimondusa/Uncategorized/c4045w/1.jpg', 'Images/nydaimondusa/Uncategorized/c4045w/2.jpg', NULL, NULL, NULL, NULL, 1399.00, 1399.00, NULL, '2026-10-10 05:33:28', '2026-10-10 05:33:28'),
(712, 1, '82aa6ae6-338b-7459-ee6e-71ad94170d64', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'EAGLES', 'https://www.nydiamondusa.com/product-page/eagles', 'Images/nydaimondusa/Uncategorized/eagles/1.jpg', NULL, NULL, NULL, NULL, NULL, 699.00, 699.00, NULL, '2026-10-10 05:33:28', '2026-10-10 05:33:28'),
(713, 1, '00dd4506-3440-e123-bf33-58a82b1fcdba', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'CAVALIERS-BLACK', 'https://www.nydiamondusa.com/product-page/cavaliers-black', 'Images/nydaimondusa/Uncategorized/cavaliers-black/1.jpg', NULL, NULL, NULL, NULL, NULL, 749.00, 749.00, NULL, '2026-10-10 05:33:29', '2026-10-10 05:33:29'),
(714, 1, '47dbf544-4fff-0137-d500-2c3053000147', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NIGIA-WHITE', 'https://www.nydiamondusa.com/product-page/nigia-white', 'Images/nydaimondusa/Uncategorized/nigia-white/1.jpg', NULL, NULL, NULL, NULL, NULL, 749.00, 749.00, NULL, '2026-10-10 05:33:29', '2026-10-10 05:33:29'),
(715, 1, '75ba5ceb-49d0-95b0-f01e-ac869eaf2c2b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MS2260-BLACK', 'https://www.nydiamondusa.com/product-page/ms2260-black', 'Images/nydaimondusa/Uncategorized/ms2260-black/1.jpg', NULL, NULL, NULL, NULL, 'RAF sofa.', 1299.00, 999.00, NULL, '2026-10-10 05:33:41', '2026-10-10 05:33:41'),
(716, 1, 'cbc15140-b81c-5ffc-6293-2bddbf2a1b8b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'TYLER', 'https://www.nydiamondusa.com/product-page/tyler', 'Images/nydaimondusa/Uncategorized/tyler/1.jpg', NULL, NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-10 05:33:41', '2026-10-10 05:33:41'),
(717, 1, '7791f242-965e-3056-d1bb-2f901688f365', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'WARREN', 'https://www.nydiamondusa.com/product-page/warren', 'Images/nydaimondusa/Uncategorized/warren/1.jpg', NULL, NULL, NULL, NULL, NULL, 599.00, 599.00, NULL, '2026-10-10 05:33:41', '2026-10-10 05:33:41'),
(718, 1, '7c70cdcf-ee26-f16d-6aa3-f32e19becc41', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY STOOLS-9-10-11', 'https://www.nydiamondusa.com/product-page/ny-stools-9-10-11', 'Images/nydaimondusa/Uncategorized/ny-stools-9-10-11/1.png', 'Images/nydaimondusa/Uncategorized/ny-stools-9-10-11/2.png', 'Images/nydaimondusa/Uncategorized/ny-stools-9-10-11/3.png', NULL, NULL, NULL, 49.00, 49.00, NULL, '2026-10-10 05:33:41', '2026-10-10 05:33:41'),
(719, 1, '73abe207-975b-2cf3-6104-94ff71200064', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY STOOLS-6-7-8', 'https://www.nydiamondusa.com/product-page/ny-stools-6-7-8', 'Images/nydaimondusa/Uncategorized/ny-stools-6-7-8/1.png', 'Images/nydaimondusa/Uncategorized/ny-stools-6-7-8/2.png', 'Images/nydaimondusa/Uncategorized/ny-stools-6-7-8/3.png', NULL, NULL, NULL, 39.00, 39.00, NULL, '2026-10-10 05:33:41', '2026-10-10 05:33:41'),
(720, 1, '422bc9c6-12b4-c48e-96df-ff2cbc307b67', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'VERMONT-S', 'https://www.nydiamondusa.com/product-page/vermont-s-buffet', 'Images/nydaimondusa/Uncategorized/vermont-s-buffet/1.jpg', NULL, NULL, NULL, NULL, 'Silver buffet sideboard.', 749.00, 599.00, NULL, '2026-10-10 05:33:42', '2026-10-10 05:33:42'),
(721, 1, '06e28b08-3cc2-c41e-2805-e4d91b17f70d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '2285 GRAY', 'https://www.nydiamondusa.com/product-page/2285-gray', 'Images/nydaimondusa/Uncategorized/2285-gray/1.png', NULL, NULL, NULL, NULL, NULL, 1299.00, 1299.00, NULL, '2026-10-10 05:33:45', '2026-10-10 05:33:45'),
(722, 1, 'a8ebc170-4098-ca90-2d84-34246493126d', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, '2285 CREAM', 'https://www.nydiamondusa.com/product-page/2285-white', 'Images/nydaimondusa/Uncategorized/2285-white/1.png', NULL, NULL, NULL, NULL, NULL, 1299.00, 1299.00, NULL, '2026-10-10 05:33:45', '2026-10-10 05:33:45'),
(723, 1, '7c39c0f7-555b-aa25-9368-949fa0371cf9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'GM005 WHITE', 'https://www.nydiamondusa.com/product-page/gm005-white', 'Images/nydaimondusa/Uncategorized/gm005-white/1.png', 'Images/nydaimondusa/Uncategorized/gm005-white/2.png', NULL, NULL, NULL, NULL, 1599.00, 1599.00, NULL, '2026-10-10 05:33:45', '2026-10-10 05:33:45'),
(724, 1, '47b5788b-9a07-c14f-7f5b-480cc8acb2ba', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'GM005 BLACK', 'https://www.nydiamondusa.com/product-page/gm005-black', 'Images/nydaimondusa/Uncategorized/gm005-black/1.png', 'Images/nydaimondusa/Uncategorized/gm005-black/2.png', NULL, NULL, NULL, NULL, 1599.00, 1599.00, NULL, '2026-10-10 05:33:45', '2026-10-10 05:33:45'),
(725, 1, '421777d1-270d-f623-7a07-1db2288af3a0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'GM004 BLACK', 'https://www.nydiamondusa.com/product-page/gm004-black', 'Images/nydaimondusa/Uncategorized/gm004-black/1.png', 'Images/nydaimondusa/Uncategorized/gm004-black/2.png', NULL, NULL, NULL, NULL, 1599.00, 1599.00, NULL, '2026-10-10 05:33:46', '2026-10-10 05:33:46'),
(726, 1, '27d10b38-f46e-0f58-71a1-398c3e05b4f4', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'GM004 WHITE', 'https://www.nydiamondusa.com/product-page/gm004-white', 'Images/nydaimondusa/Uncategorized/gm004-white/1.png', 'Images/nydaimondusa/Uncategorized/gm004-white/2.png', NULL, NULL, NULL, NULL, 1599.00, 1599.00, NULL, '2026-10-10 05:33:46', '2026-10-10 05:33:46'),
(727, 1, 'a76b6281-39e0-a298-58ef-824997403888', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ZETA CHAIR BLACK', 'https://www.nydiamondusa.com/product-page/zeta-chair-cray', 'Images/nydaimondusa/Uncategorized/zeta-chair-cray/1.jpg', NULL, NULL, NULL, NULL, ' ', 499.00, 499.00, NULL, '2026-10-10 05:33:51', '2026-10-10 05:33:51'),
(728, 1, '9b1d3840-b8bd-4aa5-9593-5cfbef80cc07', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ZETA SOFA & LOVESEAT ORANGE', 'https://www.nydiamondusa.com/product-page/zeta-sofa-loveseat-orange', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-orange/1.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-orange/2.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-orange/3.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-orange/4.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-orange/5.jpg', 'Sofa & loveseat.', 1499.00, 1499.00, NULL, '2026-10-10 05:33:51', '2026-10-10 05:33:51'),
(729, 1, '94f667c7-1f9a-3a1e-052c-a3bab456d772', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ZETA SOFA & LOVESEAT GREY', 'https://www.nydiamondusa.com/product-page/zeta-sofa-loveseat-gray', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-gray/1.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-gray/2.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-gray/3.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-gray/4.jpg', NULL, 'Sofa & loveseat.', 1499.00, 1499.00, NULL, '2026-10-10 05:33:54', '2026-10-10 05:33:54'),
(730, 1, 'd57fc3ac-54a1-2b75-e7e9-8c95623de7c9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ZETA SOFA & LOVESEAT BURGANDY', 'https://www.nydiamondusa.com/product-page/zeta-sofa-loveseat-burgandy', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-burgandy/1.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-burgandy/2.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-burgandy/3.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-burgandy/4.jpg', 'Images/nydaimondusa/Uncategorized/zeta-sofa-loveseat-burgandy/5.jpg', 'Sofa & loveseat.', 1499.00, 1499.00, NULL, '2026-10-10 05:33:55', '2026-10-10 05:33:55'),
(731, 1, '48eaaddc-c336-73c9-43cf-246f1ad22c11', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ZETA SOFA & LOVESEAT CREAM', 'https://www.nydiamondusa.com/product-page/zeta-cream', 'Images/nydaimondusa/Uncategorized/zeta-cream/1.jpg', 'Images/nydaimondusa/Uncategorized/zeta-cream/2.jpg', NULL, NULL, NULL, 'Sofa & loveseat.', 1499.00, 1499.00, NULL, '2026-10-10 05:33:55', '2026-10-10 05:33:55'),
(732, 1, '9e877a6d-d6c8-5703-c143-eea78a4f7b42', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BC9762 BLACK', 'https://www.nydiamondusa.com/product-page/bc9762-black', 'Images/nydaimondusa/Uncategorized/bc9762-black/1.png', 'Images/nydaimondusa/Uncategorized/bc9762-black/2.png', NULL, NULL, NULL, NULL, 1599.00, 1299.00, NULL, '2026-10-10 05:33:55', '2026-10-10 05:33:55'),
(733, 1, '70a51112-0b40-5b95-513a-6549f2175694', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BC9762 WHITE', 'https://www.nydiamondusa.com/product-page/bc9762-sectional', 'Images/nydaimondusa/Uncategorized/bc9762-sectional/1.png', NULL, NULL, NULL, NULL, NULL, 1599.00, 1599.00, NULL, '2026-10-10 05:33:55', '2026-10-10 05:33:55'),
(734, 1, 'fde40b8e-b181-4d1e-3b39-27bb8944dc49', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MS2212-RED', 'https://www.nydiamondusa.com/product-page/ms2212-red', 'Images/nydaimondusa/Uncategorized/ms2212-red/1.jpg', NULL, NULL, NULL, NULL, 'Sofa: loveseat: velvet sofa loveseat.', 1299.00, 1299.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-10 05:33:55', '2026-10-10 05:33:55'),
(735, 1, '6617fa54-a413-d596-6d66-48d7ffaa6754', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'TEKSAS-CREAM', 'https://www.nydiamondusa.com/product-page/teksas-cream', 'Images/nydaimondusa/Uncategorized/teksas-cream/1.jpg', NULL, NULL, NULL, NULL, 'Velvet sectional.', 1199.00, 899.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-10 05:34:00', '2026-10-10 05:34:00'),
(736, 1, '2f8443c7-a5c3-81eb-6a49-5937b280b0cb', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'E-18 GREY & WHITE', 'https://www.nydiamondusa.com/product-page/e-18-grey-white', 'Images/nydaimondusa/Uncategorized/e-18-grey-white/1.jpg', 'Images/nydaimondusa/Uncategorized/e-18-grey-white/2.jpg', NULL, NULL, NULL, 'Dimensions:\n \nDescription:', 1999.00, 1999.00, NULL, '2026-10-10 05:34:00', '2026-10-10 05:34:00'),
(737, 1, 'abf01520-7231-da9a-ab26-16ab13687c2a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ARIANA-GREY', 'https://www.nydiamondusa.com/product-page/ariana-grey-1', 'Images/nydaimondusa/Uncategorized/ariana-grey-1/1.jpg', NULL, NULL, NULL, NULL, 'Velvet sectional.', 1299.00, 1299.00, NULL, '2026-10-10 05:34:00', '2026-10-10 05:34:00'),
(738, 1, '584f9b82-8a9a-4e2a-b0d4-f895ef195e55', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ARIANA-CREAM', 'https://www.nydiamondusa.com/product-page/ariana-cream', 'Images/nydaimondusa/Uncategorized/ariana-cream/1.jpg', NULL, NULL, NULL, NULL, 'Velvet sectional.', 1299.00, 1299.00, NULL, '2026-10-10 05:34:01', '2026-10-10 05:34:01'),
(739, 1, 'aaaa104f-6cd6-dc62-1aa8-92d95d3b7706', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ARIANA-NAVYBLUE', 'https://www.nydiamondusa.com/product-page/ariana-navyblue', 'Images/nydaimondusa/Uncategorized/ariana-navyblue/1.jpg', NULL, NULL, NULL, NULL, 'Velvet sectional.', 1299.00, 1299.00, NULL, '2026-10-10 05:34:02', '2026-10-10 05:34:02'),
(740, 1, 'e96dbb97-0284-accf-ad9e-3be8d1b9d598', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ARIANA-GREEN', 'https://www.nydiamondusa.com/product-page/ariana-green', 'Images/nydaimondusa/Uncategorized/ariana-green/1.jpg', NULL, NULL, NULL, NULL, 'Velvet sectional.', 1299.00, 1299.00, NULL, '2026-10-10 05:34:02', '2026-10-10 05:34:02'),
(741, 1, 'a509ebb2-d51c-523c-d661-a451392b7d2f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MS2217-BLACK', 'https://www.nydiamondusa.com/product-page/ms2217-black-1', 'Images/nydaimondusa/Uncategorized/ms2217-black-1/1.jpg', NULL, NULL, NULL, NULL, NULL, 1299.00, 1299.00, NULL, '2026-10-10 05:34:03', '2026-10-10 05:34:03'),
(742, 1, 'ad290543-53c0-8ee2-5b21-2431648d46d7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MS2217-CREAM', 'https://www.nydiamondusa.com/product-page/ms2217-cream', 'Images/nydaimondusa/Uncategorized/ms2217-cream/1.jpg', NULL, NULL, NULL, NULL, NULL, 1299.00, 1299.00, NULL, '2026-10-10 05:34:04', '2026-10-10 05:34:04'),
(743, 1, '7e9bc9aa-5322-1e1d-886e-4a0524e868b6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'TEKSAS-GREY', 'https://www.nydiamondusa.com/product-page/teksas-grey', 'Images/nydaimondusa/Uncategorized/teksas-grey/1.jpeg', NULL, NULL, NULL, NULL, 'Velvet sectional.', 1199.00, 899.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-10 05:34:04', '2026-10-10 05:34:04'),
(744, 1, 'e8eeedd4-1b6a-2a00-530c-b152354690d7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ARIANA-BLACK', 'https://www.nydiamondusa.com/product-page/ariana-grey', 'Images/nydaimondusa/Uncategorized/ariana-grey/1.jpg', NULL, NULL, NULL, NULL, 'Velvet sectional.', 1299.00, 1299.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-10 05:34:05', '2026-10-10 05:34:05'),
(745, 1, '9a116648-7290-8bdb-79b8-5d5269806f59', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'ARIANA-YELLOW', 'https://www.nydiamondusa.com/product-page/ariana-yellow', 'Images/nydaimondusa/Uncategorized/ariana-yellow/1.jpeg', NULL, NULL, NULL, NULL, 'Velvet sectional.', 1299.00, 1299.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-10 05:34:05', '2026-10-10 05:34:05'),
(746, 1, '71f3f3f0-d6ef-ee33-5b14-11703da200c7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MS2199', 'https://www.nydiamondusa.com/product-page/stella-cream', 'Images/nydaimondusa/Uncategorized/stella-cream/1.jpg', NULL, NULL, NULL, NULL, NULL, 1399.00, 1399.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-10 05:34:05', '2026-10-10 05:34:05'),
(747, 1, '23eedd2a-51c4-e66d-4182-e1f56b13b473', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MS2212-CREAM', 'https://www.nydiamondusa.com/product-page/ms2212-cream', 'Images/nydaimondusa/Uncategorized/ms2212-cream/1.jpeg', 'Images/nydaimondusa/Uncategorized/ms2212-cream/2.jpg', NULL, NULL, NULL, 'Sofa: loveseat: velvet sofa loveseat.', 1299.00, 1299.00, 'Once product has been recieved, please check it for any noticeable damges and contact us immeditely.', '2026-10-10 05:34:05', '2026-10-10 05:34:05'),
(748, 1, 'abe18f98-f3a6-766e-e1c7-3415aca55cfe', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'JUDY BLACK', 'https://www.nydiamondusa.com/product-page/judy-black', 'Images/nydaimondusa/Uncategorized/judy-black/1.jpg', 'Images/nydaimondusa/Uncategorized/judy-black/2.jpg', 'Images/nydaimondusa/Uncategorized/judy-black/3.jpg', 'Images/nydaimondusa/Uncategorized/judy-black/4.jpg', 'Images/nydaimondusa/Uncategorized/judy-black/5.jpg', 'Velvet vanity chair.', 99.00, 99.00, NULL, '2026-10-10 05:34:08', '2026-10-10 05:34:08'),
(749, 1, '461413af-9a10-d722-abb6-b1c80d81f40b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-257', 'https://www.nydiamondusa.com/product-page/ny-257', 'Images/nydaimondusa/Uncategorized/ny-257/1.jpeg', NULL, NULL, NULL, NULL, NULL, 299.00, 299.00, NULL, '2026-10-10 05:34:14', '2026-10-10 05:34:14'),
(750, 1, '193e7d2b-6087-19d5-7bf0-754f7f074d3c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C9020-GRAY', 'https://www.nydiamondusa.com/product-page/ch9020-gray', 'Images/nydaimondusa/Uncategorized/ch9020-gray/1.jpg', NULL, NULL, NULL, NULL, 'Stainless steel chair with fabric.', 99.00, 99.00, NULL, '2026-10-10 05:34:15', '2026-10-10 05:34:15'),
(751, 1, '99345da4-e31f-a207-380f-9dc22e16d228', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'PIC 3464', 'https://www.nydiamondusa.com/product-page/b-28', 'Images/nydaimondusa/Uncategorized/b-28/1.jpg', NULL, NULL, NULL, NULL, 'Acrylic picture frame.', 125.00, 125.00, NULL, '2026-10-10 05:34:16', '2026-10-10 05:34:16'),
(752, 1, 'eeeb4e8f-8519-5b31-5395-9e244286a7cc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'PIC 1001', 'https://www.nydiamondusa.com/product-page/b-07', 'Images/nydaimondusa/Uncategorized/b-07/1.jpg', NULL, NULL, NULL, NULL, 'Acrylic picture frame.', 125.00, 125.00, NULL, '2026-10-10 05:34:16', '2026-10-10 05:34:16'),
(753, 1, 'a5e125bc-52ea-d787-782c-deee9b108125', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BONJOUR MIRROR-6 WHITE', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-6-white', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-white/1.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-white/2.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-white/3.jpg', NULL, NULL, 'Mirror & LED lights bulbs.', 329.00, 329.00, NULL, '2026-10-10 05:34:17', '2026-10-10 05:34:17'),
(754, 1, 'dddf3721-486d-f095-fdb5-b1b4588cb715', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BONJOUR MIRROR-6 PINK', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-6-pink', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-pink/1.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-pink/2.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-pink/3.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-pink/4.jpg', NULL, 'Mirror & LED lights bulbs.', 329.00, 329.00, NULL, '2026-10-10 05:34:17', '2026-10-10 05:34:17'),
(755, 1, 'e3d60178-1efd-2d81-31cf-536128b0744e', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BONJOUR MIRROR-6 GRAY', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-6-gray', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-gray/1.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-gray/2.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-gray/3.jpg', NULL, NULL, 'Mirror & LED lights bulbs.', 329.00, 329.00, NULL, '2026-10-10 05:34:17', '2026-10-10 05:34:17'),
(756, 1, 'b3cab0a4-5530-8e81-bba8-8b3654135e0f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BONJOUR MIRROR-6 BLACK', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-6-black', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-black/1.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-black/2.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-6-black/3.jpg', NULL, NULL, 'Mirror & LED lights bulbs.', 329.00, 329.00, NULL, '2026-10-10 05:34:17', '2026-10-10 05:34:17'),
(757, 1, '44dd1223-c1de-e0cc-ae5a-89a05ec7c90f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BONJOUR MIRROR-5 WHITE', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-5-white', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-5-white/1.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-5-white/2.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-5-white/3.jpg', NULL, NULL, 'Mirror & LED lights bulbs.', 449.00, 449.00, NULL, '2026-10-10 05:34:17', '2026-10-10 05:34:17'),
(758, 1, 'fa289b40-4a8f-7ae8-7bd3-f6cd368ed0b0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BONJOUR MIRROR-5 GRAY', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-5-gray', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-5-gray/1.jpg', 'Images/nydaimondusa/Uncategorized/bonjour-mirror-5-gray/2.jpg', NULL, NULL, NULL, 'Mirror & LED lights bulbs.', 449.00, 449.00, NULL, '2026-10-10 05:34:17', '2026-10-10 05:34:17'),
(759, 1, '7a033ecf-8ba9-4057-4f0c-a695c176490f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C338-GRAY', 'https://www.nydiamondusa.com/product-page/c338-gray', 'Images/nydaimondusa/Uncategorized/c338-gray/1.jpeg', 'Images/nydaimondusa/Uncategorized/c338-gray/2.jpeg', NULL, NULL, NULL, 'Stainless steel dining chair with fabric.', 149.00, 149.00, NULL, '2026-10-10 05:34:20', '2026-10-10 05:34:20'),
(760, 1, '3fd2fe93-8d94-babc-e998-65c65626d42a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'TOLEDO', 'https://www.nydiamondusa.com/product-page/toledo', 'Images/nydaimondusa/Uncategorized/toledo/1.jpeg', NULL, NULL, NULL, NULL, NULL, 799.00, 799.00, NULL, '2026-10-10 05:34:23', '2026-10-10 05:34:23'),
(761, 1, '71cc30f9-d815-1e5c-99de-3e5d874fc5ca', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C291-GRAY', 'https://www.nydiamondusa.com/product-page/c291-gray', 'Images/nydaimondusa/Uncategorized/c291-gray/1.jpg', 'Images/nydaimondusa/Uncategorized/c291-gray/2.jpg', 'Images/nydaimondusa/Uncategorized/c291-gray/3.jpg', 'Images/nydaimondusa/Uncategorized/c291-gray/4.jpg', 'Images/nydaimondusa/Uncategorized/c291-gray/5.jpg', 'Stainless steel chair with fabric.', 99.00, 99.00, NULL, '2026-10-10 05:34:24', '2026-10-10 05:34:24'),
(762, 1, 'abe5a2c6-ac5f-e13a-effd-7273e2f0a307', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C253-BLUE', 'https://www.nydiamondusa.com/product-page/c253-blue', 'Images/nydaimondusa/Uncategorized/c253-blue/1.jpg', 'Images/nydaimondusa/Uncategorized/c253-blue/2.jpg', 'Images/nydaimondusa/Uncategorized/c253-blue/3.jpg', 'Images/nydaimondusa/Uncategorized/c253-blue/4.jpg', 'Images/nydaimondusa/Uncategorized/c253-blue/5.jpg', 'Stainless steel chair with fabric.', 149.00, 149.00, NULL, '2026-10-10 05:34:24', '2026-10-10 05:34:24'),
(763, 1, '6ee79fe5-96d1-0f18-5cb6-765457245322', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C253-GRAY', 'https://www.nydiamondusa.com/product-page/c253-gray', 'Images/nydaimondusa/Uncategorized/c253-gray/1.jpg', 'Images/nydaimondusa/Uncategorized/c253-gray/2.jpg', 'Images/nydaimondusa/Uncategorized/c253-gray/3.jpg', 'Images/nydaimondusa/Uncategorized/c253-gray/4.jpg', 'Images/nydaimondusa/Uncategorized/c253-gray/5.jpg', 'Stainless steel chair with fabric.', 149.00, 149.00, NULL, '2026-10-10 05:34:24', '2026-10-10 05:34:24'),
(764, 1, 'ed29ba96-f69c-1fbc-d2fc-bf41bc9dc084', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'C253-BLACK', 'https://www.nydiamondusa.com/product-page/c253-black', 'Images/nydaimondusa/Uncategorized/c253-black/1.jpg', 'Images/nydaimondusa/Uncategorized/c253-black/2.jpg', 'Images/nydaimondusa/Uncategorized/c253-black/3.jpg', NULL, NULL, 'Stainless steel chair with fabric.', 149.00, 149.00, NULL, '2026-10-10 05:34:24', '2026-10-10 05:34:24'),
(765, 1, 'fbd5d7d1-5c2c-a9d8-fbd2-cfd38da48272', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'JIM6-15', 'https://www.nydiamondusa.com/product-page/ny6-7-cigar-2', 'Images/nydaimondusa/Uncategorized/ny6-7-cigar-2/1.jpg', NULL, NULL, NULL, NULL, 'Acrylic picture frame.', 125.00, 125.00, NULL, '2026-10-10 05:34:28', '2026-10-10 05:34:28'),
(766, 1, '6a87b5a8-38e5-60fe-8c07-4204f3b6e246', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'GS004-13D \"CRUZ\"', 'https://www.nydiamondusa.com/product-page/gs004-13d-cruz', 'Images/nydaimondusa/Uncategorized/gs004-13d-cruz/1.jpg', 'Images/nydaimondusa/Uncategorized/gs004-13d-cruz/2.jpg', NULL, NULL, NULL, 'Mirror, glass, crystal knobs.', 600.00, 600.00, NULL, '2026-10-10 05:34:35', '2026-10-10 05:34:35'),
(767, 1, '7218d2e4-93af-05b8-dad1-d2c7ecd3d9de', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-BLK COFFEE', 'https://www.nydiamondusa.com/product-page/ny-blk-coffee', 'Images/nydaimondusa/Uncategorized/ny-blk-coffee/1.jpg', NULL, NULL, NULL, NULL, 'Black glass coffee table.', 549.00, 549.00, NULL, '2026-10-10 05:34:36', '2026-10-10 05:34:36'),
(768, 1, '0d869848-ef83-217d-05eb-5c37eaa5e949', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'NY-BLK FIRE (WASHINGTON)', 'https://www.nydiamondusa.com/product-page/ny-blk-fire-washington', 'Images/nydaimondusa/Uncategorized/ny-blk-fire-washington/1.jpg', NULL, NULL, NULL, NULL, 'Black glass fireplace.', 400.00, 400.00, NULL, '2026-10-10 05:34:36', '2026-10-10 05:34:36'),
(769, 1, 'af174580-6865-50a1-5240-85db4109f0dc', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'MAZA', 'https://www.nydiamondusa.com/product-page/maza', 'Images/nydaimondusa/Uncategorized/maza/1.jpg', NULL, NULL, NULL, NULL, NULL, 549.00, 549.00, NULL, '2026-10-10 05:34:36', '2026-10-10 05:34:36'),
(770, 1, '28e803b0-2058-7894-0d79-607ddb0bc7b1', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'JAVA', 'https://www.nydiamondusa.com/product-page/java', 'Images/nydaimondusa/Uncategorized/java/1.png', NULL, NULL, NULL, NULL, NULL, 849.00, 849.00, NULL, '2026-10-10 05:34:37', '2026-10-10 05:34:37'),
(771, 1, 'b3f4e2c1-4823-be73-36ea-e4b2e338e4a7', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', NULL, 'BAYA', 'https://www.nydiamondusa.com/product-page/baya', 'Images/nydaimondusa/Uncategorized/baya/1.png', NULL, NULL, NULL, NULL, 'Gold glass coffee table.', 599.00, 599.00, NULL, '2026-10-10 05:34:37', '2026-10-10 05:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `US Upholstery`
--

CREATE TABLE `US Upholstery` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `US Upholstery`
--

INSERT INTO `US Upholstery` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(547, 1, '3ba71c09-5ce3-950a-7081-b4d4b17734ca', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'US Upholstery', 'NY-907 GRAY', 'https://www.nydiamondusa.com/product-page/ny-907-gray', 'Images/nydaimondusa/US Upholstery/ny-907-gray/1.jpeg', 'Images/nydaimondusa/US Upholstery/ny-907-gray/2.jpeg', 'Images/nydaimondusa/US Upholstery/ny-907-gray/3.jpeg', NULL, NULL, NULL, 799.00, 799.00, NULL, '2026-10-06 06:55:14', '2026-10-10 05:34:18'),
(548, 1, '95a0c185-084d-9276-68c9-8554df68c87c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'US Upholstery', 'NY-907 COLORED', 'https://www.nydiamondusa.com/product-page/ny-907', 'Images/nydaimondusa/US Upholstery/ny-907/1.jpeg', 'Images/nydaimondusa/US Upholstery/ny-907/2.jpeg', 'Images/nydaimondusa/US Upholstery/ny-907/3.jpeg', NULL, NULL, NULL, 799.00, 799.00, NULL, '2026-10-06 06:55:18', '2026-10-10 05:34:18'),
(549, 1, 'a0527231-4f58-aed3-8201-537c0f5fd477', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'US Upholstery', 'NY-1218', 'https://www.nydiamondusa.com/product-page/ny-1218', 'Images/nydaimondusa/US Upholstery/ny-1218/1.jpeg', 'Images/nydaimondusa/US Upholstery/ny-1218/2.jpeg', NULL, NULL, NULL, 'American made one chaise sectional.', 599.00, 599.00, NULL, '2026-10-06 06:55:20', '2026-10-10 05:34:18'),
(550, 1, '9d0d9b36-1b28-db2f-54a7-3b397b1390cf', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'US Upholstery', 'NY-908', 'https://www.nydiamondusa.com/product-page/ny-908', 'Images/nydaimondusa/US Upholstery/ny-908/1.jpeg', NULL, NULL, NULL, NULL, 'American made double chaise sectional.', 799.00, 799.00, NULL, '2026-10-06 06:55:20', '2026-10-10 05:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `Vanities`
--

CREATE TABLE `Vanities` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Vanities`
--

INSERT INTO `Vanities` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(38, 1, '696ef725-6c23-d56a-08d4-3226e94e0f92', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'GS01-WHITE', 'https://www.nydiamondusa.com/product-page/gs01-white', 'Images/nydaimondusa/Vanities/gs01-white/1.jpeg', NULL, NULL, NULL, NULL, 'White vanity.', 649.00, 649.00, NULL, '2026-10-06 06:36:21', '2026-10-10 05:32:33'),
(122, 1, 'da2a5aaf-3965-3908-4ad3-9732eb8edaf5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'K010', 'https://www.nydiamondusa.com/product-page/k010', 'Images/nydaimondusa/Vanities/k010/1.jpeg', 'Images/nydaimondusa/Vanities/k010/2.jpeg', NULL, NULL, NULL, NULL, 279.00, 279.00, NULL, '2026-10-06 06:39:41', '2026-10-10 05:33:16'),
(123, 1, 'aed408f4-6815-2835-1c07-ee319a70c1ad', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'ALLY-PINK', 'https://www.nydiamondusa.com/product-page/ally-pink', 'Images/nydaimondusa/Vanities/ally-pink/1.jpeg', 'Images/nydaimondusa/Vanities/ally-pink/2.jpeg', 'Images/nydaimondusa/Vanities/ally-pink/3.jpeg', NULL, NULL, 'Pink vanity.', 499.00, 499.00, NULL, '2026-10-06 06:39:42', '2026-10-10 05:33:16'),
(125, 1, 'ebb4502d-5d0f-f4c0-8540-13f3ba1d0c82', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'SUZY', 'https://www.nydiamondusa.com/product-page/suzy-1', 'Images/nydaimondusa/Vanities/suzy-1/1.jpeg', 'Images/nydaimondusa/Vanities/suzy-1/2.jpeg', NULL, NULL, NULL, 'White vanity.', 599.00, 599.00, NULL, '2026-10-06 06:39:45', '2026-10-10 05:33:16'),
(130, 1, 'd78af123-aaf1-84db-2ba2-7f4d76c68af6', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'MIA', 'https://www.nydiamondusa.com/product-page/mia', 'Images/nydaimondusa/Vanities/mia/1.jpg', 'Images/nydaimondusa/Vanities/mia/2.jpg', NULL, NULL, NULL, NULL, 449.00, 449.00, NULL, '2026-10-06 06:39:52', '2026-10-10 05:33:17'),
(131, 1, '6067d472-51ba-9bf7-90d7-8a677b17b8b9', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'SUZIE', 'https://www.nydiamondusa.com/product-page/susie', 'Images/nydaimondusa/Vanities/susie/1.jpg', 'Images/nydaimondusa/Vanities/susie/2.jpg', NULL, NULL, NULL, NULL, 349.00, 349.00, NULL, '2026-10-06 06:39:54', '2026-10-10 05:33:17'),
(189, 1, '03a6a0d6-827e-ab8f-2ca7-b4c5b9123d7a', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'AEIEA VANITY', 'https://www.nydiamondusa.com/product-page/aeiea-vanity', 'Images/nydaimondusa/Vanities/aeiea-vanity/1.jpg', 'Images/nydaimondusa/Vanities/aeiea-vanity/2.jpg', NULL, NULL, NULL, 'All white vanity.', 379.00, 379.00, NULL, '2026-10-06 06:41:47', '2026-10-10 05:33:19'),
(190, 1, '1a001251-1b7f-4d38-038c-c15ee751caff', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'ANDREA VANITY', 'https://www.nydiamondusa.com/product-page/andrea-vanity', 'Images/nydaimondusa/Vanities/andrea-vanity/1.jpg', 'Images/nydaimondusa/Vanities/andrea-vanity/2.jpg', NULL, NULL, NULL, 'White vanity.', 379.00, 379.00, NULL, '2026-10-06 06:41:48', '2026-10-10 05:33:19'),
(191, 1, '4861d85a-9ded-e631-c280-fd6bd1af5e45', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'ELLA VANITY', 'https://www.nydiamondusa.com/product-page/ella-vanity', 'Images/nydaimondusa/Vanities/ella-vanity/1.jpg', 'Images/nydaimondusa/Vanities/ella-vanity/2.jpg', 'Images/nydaimondusa/Vanities/ella-vanity/3.jpg', NULL, NULL, 'All white vanity.', 299.00, 299.00, NULL, '2026-10-06 06:41:50', '2026-10-10 05:33:19'),
(283, 1, '0a10c4d4-8c79-72e2-8914-35d797e8de4c', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'CANDACE', 'https://www.nydiamondusa.com/product-page/candace', 'Images/nydaimondusa/Vanities/candace/1.jpg', 'Images/nydaimondusa/Vanities/candace/2.jpg', NULL, NULL, NULL, 'White vanity with champagne gold finish.', 499.00, 499.00, NULL, '2026-10-06 06:44:22', '2026-10-10 05:33:29'),
(320, 1, 'bc87054f-030e-7b75-5427-c8d7bf825677', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'ADRIANNA', 'https://www.nydiamondusa.com/product-page/adrianna', 'Images/nydaimondusa/Vanities/adrianna/1.jpg', 'Images/nydaimondusa/Vanities/adrianna/2.jpg', 'Images/nydaimondusa/Vanities/adrianna/3.jpg', 'Images/nydaimondusa/Vanities/adrianna/4.jpg', 'Images/nydaimondusa/Vanities/adrianna/5.jpg', NULL, 449.00, 449.00, NULL, '2026-10-06 06:45:06', '2026-10-10 05:33:35'),
(545, 1, 'eb0a5570-03d4-0e43-7183-0df445c59faf', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'NY-K004', 'https://www.nydiamondusa.com/product-page/ny-k004', 'Images/nydaimondusa/Vanities/ny-k004/1.jpeg', 'Images/nydaimondusa/Vanities/ny-k004/2.jpeg', 'Images/nydaimondusa/Vanities/ny-k004/3.jpeg', 'Images/nydaimondusa/Vanities/ny-k004/4.jpeg', 'Images/nydaimondusa/Vanities/ny-k004/5.jpeg', NULL, 379.00, 379.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:55:06', '2026-10-10 05:34:18'),
(546, 1, '214bf23b-8b1a-7e9d-578b-5c27fa74d489', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'NY-K005', 'https://www.nydiamondusa.com/product-page/ny-k005', 'Images/nydaimondusa/Vanities/ny-k005/1.jpeg', 'Images/nydaimondusa/Vanities/ny-k005/2.jpeg', 'Images/nydaimondusa/Vanities/ny-k005/3.jpeg', 'Images/nydaimondusa/Vanities/ny-k005/4.jpeg', NULL, NULL, 379.00, 379.00, 'Once product has been recieved, please check items for any noticeable damges or scratches and contact us immeditely.\n\nReport only within 48H and pictures must be provided.', '2026-10-06 06:55:11', '2026-10-10 05:34:18'),
(675, 1, '7fca3789-889d-1425-f2f3-8b3e5349f637', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'GS011 \"CAMILLA\"', 'https://www.nydiamondusa.com/product-page/gs011-camilla', 'Images/nydaimondusa/Vanities/gs011-camilla/1.jpeg', 'Images/nydaimondusa/Vanities/gs011-camilla/2.jpg', 'Images/nydaimondusa/Vanities/gs011-camilla/3.jpg', 'Images/nydaimondusa/Vanities/gs011-camilla/4.jpg', 'Images/nydaimondusa/Vanities/gs011-camilla/5.jpg', 'Bevelled mirror & glass.', 599.00, 599.00, NULL, '2026-10-06 06:59:28', '2026-10-10 05:34:34'),
(676, 1, '89cd7119-5a37-1e61-c4ef-78a6aeb6547f', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'GS009 \"VANESSA\"', 'https://www.nydiamondusa.com/product-page/gs009-vanessa', 'Images/nydaimondusa/Vanities/gs009-vanessa/1.jpeg', 'Images/nydaimondusa/Vanities/gs009-vanessa/2.jpg', 'Images/nydaimondusa/Vanities/gs009-vanessa/3.jpg', 'Images/nydaimondusa/Vanities/gs009-vanessa/4.jpg', 'Images/nydaimondusa/Vanities/gs009-vanessa/5.jpg', 'Mirror glass.', 600.00, 499.00, NULL, '2026-10-06 06:59:32', '2026-10-10 05:34:34'),
(677, 1, 'c833bfd2-8e61-6ace-c84d-fa3adc4e3565', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'GS128 \"AMOR\"', 'https://www.nydiamondusa.com/product-page/gs128-amor', 'Images/nydaimondusa/Vanities/gs128-amor/1.jpg', NULL, NULL, NULL, NULL, 'Bevelled mirror & glass.', 499.00, 499.00, NULL, '2026-10-06 06:59:33', '2026-10-10 05:34:34'),
(678, 1, '799d21e3-51ef-0afd-ee1a-617f208ff3e0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanities', 'GS008 \"ALLISON\"', 'https://www.nydiamondusa.com/product-page/gs008-allison', 'Images/nydaimondusa/Vanities/gs008-allison/1.jpg', 'Images/nydaimondusa/Vanities/gs008-allison/2.jpg', 'Images/nydaimondusa/Vanities/gs008-allison/3.jpg', 'Images/nydaimondusa/Vanities/gs008-allison/4.jpg', 'Images/nydaimondusa/Vanities/gs008-allison/5.jpg', 'Bevelled mirror & glass.', 499.00, 499.00, NULL, '2026-10-06 06:59:37', '2026-10-10 05:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `Vanity Mirrors`
--

CREATE TABLE `Vanity Mirrors` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `org_price` decimal(12,2) DEFAULT NULL,
  `discounted_price` decimal(12,2) DEFAULT NULL,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Vanity Mirrors`
--

INSERT INTO `Vanity Mirrors` (`id`, `user_id`, `external_id`, `site_host`, `site_name`, `category`, `sub_category`, `product_title`, `product_link`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `org_price`, `discounted_price`, `policy`, `created_at`, `updated_at`) VALUES
(124, 1, '8df19528-39df-1a93-c5b9-0efd9ddbd3d3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR-35', 'https://www.nydiamondusa.com/product-page/bonjour-35', 'Images/nydaimondusa/Vanity Mirrors/bonjour-35/1.jpeg', NULL, NULL, NULL, NULL, NULL, 349.00, 349.00, NULL, '2026-10-06 06:39:44', '2026-10-10 05:33:16'),
(126, 1, '711201bb-a85f-c4e2-13a7-4b10f0080ba3', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'SUZY', 'https://www.nydiamondusa.com/product-page/suzy', 'Images/nydaimondusa/Vanity Mirrors/suzy/1.jpeg', NULL, NULL, NULL, NULL, NULL, 349.00, 349.00, NULL, '2026-10-06 06:39:46', '2026-10-10 05:33:16'),
(186, 1, 'db90fc2b-54e4-8b53-d351-dba455bf3106', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'ANDREA MIRROR', 'https://www.nydiamondusa.com/product-page/andrea-mirror', 'Images/nydaimondusa/Vanity Mirrors/andrea-mirror/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/andrea-mirror/2.jpg', 'Images/nydaimondusa/Vanity Mirrors/andrea-mirror/3.jpg', 'Images/nydaimondusa/Vanity Mirrors/andrea-mirror/4.jpg', NULL, 'LED mirror.', 129.00, 129.00, NULL, '2026-10-06 06:41:41', '2026-10-10 05:33:19'),
(187, 1, '0145e4d3-0916-740b-5f02-9a81c6f699fe', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'ELLA MIRROR', 'https://www.nydiamondusa.com/product-page/ella-mirror', 'Images/nydaimondusa/Vanity Mirrors/ella-mirror/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/ella-mirror/2.jpg', NULL, NULL, NULL, NULL, 139.00, 139.00, NULL, '2026-10-06 06:41:42', '2026-10-10 05:33:19'),
(188, 1, '1df18024-5f2b-2483-e1d3-b90d05e79af5', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'AEIEA MIRROR', 'https://www.nydiamondusa.com/product-page/aeiba-mirror', 'Images/nydaimondusa/Vanity Mirrors/aeiba-mirror/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/aeiba-mirror/2.jpg', NULL, NULL, NULL, 'LED mirror.', 129.00, 129.00, NULL, '2026-10-06 06:41:45', '2026-10-10 05:33:19'),
(284, 1, 'd2590b6c-e660-2cca-215c-f363ed0ef320', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR-11', 'https://www.nydiamondusa.com/product-page/bonjour-11', 'Images/nydaimondusa/Vanity Mirrors/bonjour-11/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-11/2.jpg', NULL, NULL, NULL, 'White crushed diamonds mirror with bulbs.', 325.00, 325.00, NULL, '2026-10-06 06:44:25', '2026-10-10 05:33:29'),
(285, 1, 'b3f3acdb-afc2-cab8-8ea6-d415f2fc76f0', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR-7', 'https://www.nydiamondusa.com/product-page/bonjour-7', 'Images/nydaimondusa/Vanity Mirrors/bonjour-7/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-7/2.jpg', NULL, NULL, NULL, 'White mirror with bulbs.', 325.00, 325.00, NULL, '2026-10-06 06:44:27', '2026-10-10 05:33:29'),
(458, 1, 'cb41c7f9-172d-8de3-94dc-0bcef2caeac8', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BON- BLACK LUGGAGE', 'https://www.nydiamondusa.com/product-page/bon-black-luggage', 'Images/nydaimondusa/Vanity Mirrors/bon-black-luggage/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bon-black-luggage/2.jpg', 'Images/nydaimondusa/Vanity Mirrors/bon-black-luggage/3.jpg', NULL, NULL, 'Portable vanity travel case.', 299.00, 299.00, NULL, '2026-10-06 06:51:21', '2026-10-10 05:34:03'),
(459, 1, '08c2061c-3881-1477-a9f0-2b737586b6ad', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BON- PINK LUGGAGE', 'https://www.nydiamondusa.com/product-page/bon-pink-luggage', 'Images/nydaimondusa/Vanity Mirrors/bon-pink-luggage/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bon-pink-luggage/2.jpg', NULL, NULL, NULL, 'Portable vanity travel case.', 299.00, 299.00, NULL, '2026-10-06 06:51:22', '2026-10-10 05:34:03'),
(503, 1, 'e3931ae4-837b-8e3d-976f-c36a90f2fe04', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR MIRROR-8 WHITE', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-8-white', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-8-white/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-8-white/2.jpg', NULL, NULL, NULL, 'Mirror & LED light bulb.', 199.00, 199.00, NULL, '2026-10-06 06:54:00', '2026-10-10 05:34:14'),
(504, 1, '5e0119cd-ddb4-f69f-f2b0-d4f4d539025b', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR MIRROR-8 CHROME', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-8-chrome', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-8-chrome/1.jpg', NULL, NULL, NULL, NULL, 'Mirror & LED lights bulb.', 199.00, 199.00, NULL, '2026-10-06 06:54:01', '2026-10-10 05:34:14'),
(540, 1, 'a8fc1c3e-2927-4b8c-fdf0-d75af0cde986', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR MIRROR-5 PINK', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-5-pink', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-5-pink/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-5-pink/2.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-5-pink/3.jpg', NULL, NULL, 'Mirror & LED lights bulbs.', 449.00, 449.00, NULL, '2026-10-06 06:54:57', '2026-10-10 05:34:17'),
(542, 1, '4bda3f1c-18b1-9bf3-f441-cc096daaa7f2', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR MIRROR-5 BLACK', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-5', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-5/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-5/2.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-5/3.jpg', NULL, NULL, 'Mirror & LED lights bulbs.', 449.00, 449.00, NULL, '2026-10-06 06:55:01', '2026-10-10 05:34:18'),
(630, 1, 'd35738b5-8ba6-f417-7abb-ef692507e685', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR MIRROR-3 BLACK', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-3-black', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-3-black/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-3-black/2.jpg', NULL, NULL, NULL, 'Mirror & LED lights bulbs.', 449.00, 449.00, NULL, '2026-10-06 06:58:31', '2026-10-10 05:34:29'),
(631, 1, 'cc61a1f9-86df-206a-f34a-7b6379ff09ac', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR MIRROR-3 GRAY', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-3-gray', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-3-gray/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-3-gray/2.jpg', NULL, NULL, NULL, 'Mirror & LED lights bulbs.', 449.00, 449.00, NULL, '2026-10-06 06:58:32', '2026-10-10 05:34:30'),
(632, 1, 'b08f2ec5-9cee-beff-636d-c4ab6e84b8fe', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR MIRROR-3 PINK', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-3-pink', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-3-pink/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-3-pink/2.jpg', NULL, NULL, NULL, 'Mirror & LED lights bulbs.', 449.00, 449.00, NULL, '2026-10-06 06:58:33', '2026-10-10 05:34:30'),
(633, 1, '1a4c1f8d-dae4-6ddf-f6fb-e443a9d59331', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR MIRROR-3 WHITE', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-3-white', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-3-white/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-3-white/2.jpg', NULL, NULL, NULL, 'Mirror & LED lights bulbs.', 449.00, 449.00, NULL, '2026-10-06 06:58:34', '2026-10-10 05:34:30'),
(634, 1, '2eca1b58-772d-e813-a2fb-fd07c3ddb389', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR MIRROR-2 WHITE', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-2-white', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-2-white/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-2-white/2.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-2-white/3.jpg', NULL, NULL, 'Mirror.', 349.00, 349.00, NULL, '2026-10-06 06:58:36', '2026-10-10 05:34:30'),
(635, 1, '77376d71-a9a8-eeb2-3502-1c4978878303', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR MIRROR-2 BLACK', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-2-black', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-2-black/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-2-black/2.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-2-black/3.jpg', NULL, NULL, 'Mirror & LED lights bulbs.', 349.00, 349.00, NULL, '2026-10-06 06:58:38', '2026-10-10 05:34:30'),
(636, 1, 'fb2deef6-5941-d037-8817-c19e1bb49c25', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR MIRROR-2 GRAY', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-2-gray', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-2-gray/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-2-gray/2.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-2-gray/3.jpg', NULL, NULL, 'Mirror & LED lights bulbs.', 349.00, 349.00, NULL, '2026-10-06 06:58:42', '2026-10-10 05:34:30'),
(637, 1, '4e2b6dbb-2086-cc8e-93b8-411d3549e317', 'nydiamondusa.com', 'nydiamondusa.com', 'Dealer Products', 'Vanity Mirrors', 'BONJOUR MIRROR-1 WHITE', 'https://www.nydiamondusa.com/product-page/bonjour-mirror-1-white', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-1-white/1.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-1-white/2.jpg', 'Images/nydaimondusa/Vanity Mirrors/bonjour-mirror-1-white/3.jpg', NULL, NULL, 'Mirror & LED lights bulbs.', 399.00, 399.00, NULL, '2026-10-06 06:58:44', '2026-10-10 05:34:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Accesory Lighting & Lamps`
--
ALTER TABLE `Accesory Lighting & Lamps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct35a876ff3acd4009c720_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct35a876ff3acd4009c720_user_id_index` (`user_id`),
  ADD KEY `ct35a876ff3acd4009c720_site_host_index` (`site_host`),
  ADD KEY `ct35a876ff3acd4009c720_sub_category_index` (`sub_category`);

--
-- Indexes for table `Accessories`
--
ALTER TABLE `Accessories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct5dd495876e242b861da3_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct5dd495876e242b861da3_user_id_index` (`user_id`),
  ADD KEY `ct5dd495876e242b861da3_site_host_index` (`site_host`),
  ADD KEY `ct5dd495876e242b861da3_sub_category_index` (`sub_category`);

--
-- Indexes for table `Bar Stools & Vanity Stools`
--
ALTER TABLE `Bar Stools & Vanity Stools`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct3ffcd2a786fb062e2843_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct3ffcd2a786fb062e2843_user_id_index` (`user_id`),
  ADD KEY `ct3ffcd2a786fb062e2843_site_host_index` (`site_host`),
  ADD KEY `ct3ffcd2a786fb062e2843_sub_category_index` (`sub_category`);

--
-- Indexes for table `Bean Bag`
--
ALTER TABLE `Bean Bag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cte64ab361a14fdaf2499d_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `cte64ab361a14fdaf2499d_user_id_index` (`user_id`),
  ADD KEY `cte64ab361a14fdaf2499d_site_host_index` (`site_host`),
  ADD KEY `cte64ab361a14fdaf2499d_sub_category_index` (`sub_category`);

--
-- Indexes for table `Bedroom Collections`
--
ALTER TABLE `Bedroom Collections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct21e4b95ba36b61d59701_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct21e4b95ba36b61d59701_user_id_index` (`user_id`),
  ADD KEY `ct21e4b95ba36b61d59701_site_host_index` (`site_host`),
  ADD KEY `ct21e4b95ba36b61d59701_sub_category_index` (`sub_category`);

--
-- Indexes for table `Beds`
--
ALTER TABLE `Beds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct1115d0ddee85309ed245_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct1115d0ddee85309ed245_user_id_index` (`user_id`),
  ADD KEY `ct1115d0ddee85309ed245_site_host_index` (`site_host`),
  ADD KEY `ct1115d0ddee85309ed245_sub_category_index` (`sub_category`);

--
-- Indexes for table `Chandeliers`
--
ALTER TABLE `Chandeliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ctd4c9225f7a851f9e2a12_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ctd4c9225f7a851f9e2a12_user_id_index` (`user_id`),
  ADD KEY `ctd4c9225f7a851f9e2a12_site_host_index` (`site_host`),
  ADD KEY `ctd4c9225f7a851f9e2a12_sub_category_index` (`sub_category`);

--
-- Indexes for table `Chests & Dressers & Night Stand`
--
ALTER TABLE `Chests & Dressers & Night Stand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct0d0f8701ab9e5f9ad86f_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct0d0f8701ab9e5f9ad86f_user_id_index` (`user_id`),
  ADD KEY `ct0d0f8701ab9e5f9ad86f_site_host_index` (`site_host`),
  ADD KEY `ct0d0f8701ab9e5f9ad86f_sub_category_index` (`sub_category`);

--
-- Indexes for table `Coffee Tables`
--
ALTER TABLE `Coffee Tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cta5fae2facdb2b66a6bf1_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `cta5fae2facdb2b66a6bf1_user_id_index` (`user_id`),
  ADD KEY `cta5fae2facdb2b66a6bf1_site_host_index` (`site_host`),
  ADD KEY `cta5fae2facdb2b66a6bf1_sub_category_index` (`sub_category`);

--
-- Indexes for table `Consoles-Buffet`
--
ALTER TABLE `Consoles-Buffet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ctef96030fbed89e2a48d3_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ctef96030fbed89e2a48d3_user_id_index` (`user_id`),
  ADD KEY `ctef96030fbed89e2a48d3_site_host_index` (`site_host`),
  ADD KEY `ctef96030fbed89e2a48d3_sub_category_index` (`sub_category`);

--
-- Indexes for table `Dealer Products`
--
ALTER TABLE `Dealer Products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct2ae1a3fb9512207a9826_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct2ae1a3fb9512207a9826_user_id_index` (`user_id`),
  ADD KEY `ct2ae1a3fb9512207a9826_site_host_index` (`site_host`),
  ADD KEY `ct2ae1a3fb9512207a9826_sub_category_index` (`sub_category`);

--
-- Indexes for table `Dining Chairs`
--
ALTER TABLE `Dining Chairs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct96e8e91fca49ca4b19aa_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct96e8e91fca49ca4b19aa_user_id_index` (`user_id`),
  ADD KEY `ct96e8e91fca49ca4b19aa_site_host_index` (`site_host`),
  ADD KEY `ct96e8e91fca49ca4b19aa_sub_category_index` (`sub_category`);

--
-- Indexes for table `Dining Tables`
--
ALTER TABLE `Dining Tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct1ee7edb0c1c25604647f_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct1ee7edb0c1c25604647f_user_id_index` (`user_id`),
  ADD KEY `ct1ee7edb0c1c25604647f_site_host_index` (`site_host`),
  ADD KEY `ct1ee7edb0c1c25604647f_sub_category_index` (`sub_category`);

--
-- Indexes for table `Fire Places`
--
ALTER TABLE `Fire Places`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct42e962ccddc266fcdc37_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct42e962ccddc266fcdc37_user_id_index` (`user_id`),
  ADD KEY `ct42e962ccddc266fcdc37_site_host_index` (`site_host`),
  ADD KEY `ct42e962ccddc266fcdc37_sub_category_index` (`sub_category`);

--
-- Indexes for table `Living Rooms`
--
ALTER TABLE `Living Rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ctd450d4d80cc0c4209cee_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ctd450d4d80cc0c4209cee_user_id_index` (`user_id`),
  ADD KEY `ctd450d4d80cc0c4209cee_site_host_index` (`site_host`),
  ADD KEY `ctd450d4d80cc0c4209cee_sub_category_index` (`sub_category`);

--
-- Indexes for table `Mirrors`
--
ALTER TABLE `Mirrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct8da5d90703aae2c1e813_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct8da5d90703aae2c1e813_user_id_index` (`user_id`),
  ADD KEY `ct8da5d90703aae2c1e813_site_host_index` (`site_host`),
  ADD KEY `ct8da5d90703aae2c1e813_sub_category_index` (`sub_category`);

--
-- Indexes for table `Packages, Rugs & Pillows`
--
ALTER TABLE `Packages, Rugs & Pillows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct0337e135c10b0e33817b_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct0337e135c10b0e33817b_user_id_index` (`user_id`),
  ADD KEY `ct0337e135c10b0e33817b_site_host_index` (`site_host`),
  ADD KEY `ct0337e135c10b0e33817b_sub_category_index` (`sub_category`);

--
-- Indexes for table `Pictures Frames`
--
ALTER TABLE `Pictures Frames`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ctaeee532913d113263efd_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ctaeee532913d113263efd_user_id_index` (`user_id`),
  ADD KEY `ctaeee532913d113263efd_site_host_index` (`site_host`),
  ADD KEY `ctaeee532913d113263efd_sub_category_index` (`sub_category`);

--
-- Indexes for table `Selfie Mirrors`
--
ALTER TABLE `Selfie Mirrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct06513eaaac8ab26cd501_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct06513eaaac8ab26cd501_user_id_index` (`user_id`),
  ADD KEY `ct06513eaaac8ab26cd501_site_host_index` (`site_host`),
  ADD KEY `ct06513eaaac8ab26cd501_sub_category_index` (`sub_category`);

--
-- Indexes for table `Swing Chair`
--
ALTER TABLE `Swing Chair`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct3a9611614d5915cb5c62_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct3a9611614d5915cb5c62_user_id_index` (`user_id`),
  ADD KEY `ct3a9611614d5915cb5c62_site_host_index` (`site_host`),
  ADD KEY `ct3a9611614d5915cb5c62_sub_category_index` (`sub_category`);

--
-- Indexes for table `Trees`
--
ALTER TABLE `Trees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct3ba0289362b2a2fc6fea_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct3ba0289362b2a2fc6fea_user_id_index` (`user_id`),
  ADD KEY `ct3ba0289362b2a2fc6fea_site_host_index` (`site_host`),
  ADD KEY `ct3ba0289362b2a2fc6fea_sub_category_index` (`sub_category`);

--
-- Indexes for table `Uncategorized`
--
ALTER TABLE `Uncategorized`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_8d40d123b2e1e296` (`user_id`,`external_id`),
  ADD KEY `uncategorized_user_id_index` (`user_id`),
  ADD KEY `uncategorized_site_host_index` (`site_host`),
  ADD KEY `uncategorized_sub_category_index` (`sub_category`);

--
-- Indexes for table `US Upholstery`
--
ALTER TABLE `US Upholstery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct5a6603e8703010a88880_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct5a6603e8703010a88880_user_id_index` (`user_id`),
  ADD KEY `ct5a6603e8703010a88880_site_host_index` (`site_host`),
  ADD KEY `ct5a6603e8703010a88880_sub_category_index` (`sub_category`);

--
-- Indexes for table `Vanities`
--
ALTER TABLE `Vanities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct37afb195f9ee9aa2845b_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct37afb195f9ee9aa2845b_user_id_index` (`user_id`),
  ADD KEY `ct37afb195f9ee9aa2845b_site_host_index` (`site_host`),
  ADD KEY `ct37afb195f9ee9aa2845b_sub_category_index` (`sub_category`);

--
-- Indexes for table `Vanity Mirrors`
--
ALTER TABLE `Vanity Mirrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ct3971f16514f20aa0a3ca_user_id_external_id_unique` (`user_id`,`external_id`),
  ADD KEY `ct3971f16514f20aa0a3ca_user_id_index` (`user_id`),
  ADD KEY `ct3971f16514f20aa0a3ca_site_host_index` (`site_host`),
  ADD KEY `ct3971f16514f20aa0a3ca_sub_category_index` (`sub_category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Accesory Lighting & Lamps`
--
ALTER TABLE `Accesory Lighting & Lamps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=681;

--
-- AUTO_INCREMENT for table `Accessories`
--
ALTER TABLE `Accessories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=683;

--
-- AUTO_INCREMENT for table `Bar Stools & Vanity Stools`
--
ALTER TABLE `Bar Stools & Vanity Stools`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;

--
-- AUTO_INCREMENT for table `Bean Bag`
--
ALTER TABLE `Bean Bag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `Bedroom Collections`
--
ALTER TABLE `Bedroom Collections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `Beds`
--
ALTER TABLE `Beds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT for table `Chandeliers`
--
ALTER TABLE `Chandeliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT for table `Chests & Dressers & Night Stand`
--
ALTER TABLE `Chests & Dressers & Night Stand`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- AUTO_INCREMENT for table `Coffee Tables`
--
ALTER TABLE `Coffee Tables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=687;

--
-- AUTO_INCREMENT for table `Consoles-Buffet`
--
ALTER TABLE `Consoles-Buffet`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=575;

--
-- AUTO_INCREMENT for table `Dealer Products`
--
ALTER TABLE `Dealer Products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=692;

--
-- AUTO_INCREMENT for table `Dining Chairs`
--
ALTER TABLE `Dining Chairs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=598;

--
-- AUTO_INCREMENT for table `Dining Tables`
--
ALTER TABLE `Dining Tables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=578;

--
-- AUTO_INCREMENT for table `Fire Places`
--
ALTER TABLE `Fire Places`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT for table `Living Rooms`
--
ALTER TABLE `Living Rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT for table `Mirrors`
--
ALTER TABLE `Mirrors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=685;

--
-- AUTO_INCREMENT for table `Packages, Rugs & Pillows`
--
ALTER TABLE `Packages, Rugs & Pillows`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=675;

--
-- AUTO_INCREMENT for table `Pictures Frames`
--
ALTER TABLE `Pictures Frames`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- AUTO_INCREMENT for table `Selfie Mirrors`
--
ALTER TABLE `Selfie Mirrors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=684;

--
-- AUTO_INCREMENT for table `Swing Chair`
--
ALTER TABLE `Swing Chair`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=615;

--
-- AUTO_INCREMENT for table `Trees`
--
ALTER TABLE `Trees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=630;

--
-- AUTO_INCREMENT for table `Uncategorized`
--
ALTER TABLE `Uncategorized`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=772;

--
-- AUTO_INCREMENT for table `US Upholstery`
--
ALTER TABLE `US Upholstery`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=551;

--
-- AUTO_INCREMENT for table `Vanities`
--
ALTER TABLE `Vanities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=679;

--
-- AUTO_INCREMENT for table `Vanity Mirrors`
--
ALTER TABLE `Vanity Mirrors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=638;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

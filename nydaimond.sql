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
-- Database: `nydaimond`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_notices`
--

CREATE TABLE `account_notices` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `message_id` bigint UNSIGNED DEFAULT NULL,
  `kind` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shown_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `cleared_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_notices`
--

INSERT INTO `account_notices` (`id`, `user_id`, `message_id`, `kind`, `title`, `body`, `url`, `shown_at`, `read_at`, `cleared_at`, `created_at`, `updated_at`) VALUES
(9, 1, NULL, 'complete', 'Scrape complete', 'foagroup.com saved 2 products.', '/sites/foagroup.com', '2026-10-10 05:52:17', '2026-10-10 02:03:57', '2026-10-10 05:52:17', '2026-10-10 02:03:51', '2026-10-10 05:52:17'),
(10, 1, NULL, 'complete', 'Scrape complete', 'nydiamondusa.com saved 80 new products.', '/sites/nydiamondusa.com', '2026-10-10 05:52:17', NULL, '2026-10-10 05:52:17', '2026-10-10 05:34:37', '2026-10-10 05:52:17'),
(11, 1, NULL, 'update', 'Catalog updated', 'nydiamondusa.com updated 610 products.', '/sites/nydiamondusa.com', '2026-10-10 05:52:17', NULL, '2026-10-10 05:52:17', '2026-10-10 05:34:37', '2026-10-10 05:52:17'),
(12, 4, NULL, 'complete', 'Scrape complete', 'aliexpress.com saved 3 new products.', '/sites/aliexpress.com', '2026-10-10 05:52:20', NULL, '2026-10-10 05:52:20', '2026-10-10 05:46:59', '2026-10-10 05:52:20'),
(13, 4, NULL, 'update', 'Catalog updated', 'aliexpress.com updated 26 products.', '/sites/aliexpress.com', '2026-10-10 05:52:20', NULL, '2026-10-10 05:52:20', '2026-10-10 05:46:59', '2026-10-10 05:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_categories`
--

CREATE TABLE `catalog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `database_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_categories`
--

INSERT INTO `catalog_categories` (`id`, `host`, `category`, `table_name`, `folder`, `created_at`, `updated_at`, `database_name`) VALUES
(1, 'aliexpress.com', 'Furniture', 'Furniture', 'Images/aliexpress/Furniture', '2026-10-10 02:29:10', '2026-10-10 04:39:09', 'aliexpress.com'),
(2, 'aliexpress.com', 'Home', 'Home', 'Images/aliexpress/Home', '2026-10-10 02:29:10', '2026-10-10 05:46:59', 'aliexpress.com'),
(3, 'foagroup.com', 'Bed', 'Bed', 'Images/foagroup/Bed', '2026-10-10 02:29:11', '2026-10-10 04:39:09', 'foagroup.com'),
(4, 'foagroup.com', 'Chair', 'Chair', 'Images/foagroup/Chair', '2026-10-10 02:29:12', '2026-10-10 04:39:09', 'foagroup.com'),
(5, 'foagroup.com', 'Nightstand', 'Nightstand', 'Images/foagroup/Nightstand', '2026-10-10 02:29:12', '2026-10-10 04:39:10', 'foagroup.com'),
(6, 'foagroup.com', 'Catalog', 'Catalog', 'Images/foagroup/Catalog', '2026-10-10 02:29:12', '2026-10-10 04:39:10', 'foagroup.com'),
(7, 'foagroup.com', 'Dresser', 'Dresser', 'Images/foagroup/Dresser', '2026-10-10 02:29:13', '2026-10-10 04:39:10', 'foagroup.com'),
(8, 'foagroup.com', 'Mirror', 'Mirror', 'Images/foagroup/Mirror', '2026-10-10 02:29:16', '2026-10-10 04:39:10', 'foagroup.com'),
(9, 'foagroup.com', 'Chest', 'Chest', 'Images/foagroup/Chest', '2026-10-10 02:29:20', '2026-10-10 04:39:10', 'foagroup.com'),
(10, 'foagroup.com', 'Media Chest', 'Media Chest', 'Images/foagroup/Media Chest', '2026-10-10 02:29:21', '2026-10-10 04:39:10', 'foagroup.com'),
(11, 'foagroup.com', 'Daybed', 'Daybed', 'Images/foagroup/Daybed', '2026-10-10 02:29:21', '2026-10-10 04:39:10', 'foagroup.com'),
(12, 'foagroup.com', 'Headboard', 'Headboard', 'Images/foagroup/Headboard', '2026-10-10 02:29:22', '2026-10-10 04:39:10', 'foagroup.com'),
(13, 'foagroup.com', 'Accessory', 'Accessory', 'Images/foagroup/Accessory', '2026-10-10 02:29:22', '2026-10-10 04:39:10', 'foagroup.com'),
(14, 'foagroup.com', 'Set', 'Set', 'Images/foagroup/Set', '2026-10-10 02:29:22', '2026-10-10 04:39:10', 'foagroup.com'),
(15, 'foagroup.com', 'Bunk Bed', 'Bunk Bed', 'Images/foagroup/Bunk Bed', '2026-10-10 02:29:22', '2026-10-10 04:39:10', 'foagroup.com'),
(16, 'foagroup.com', 'Armoire', 'Armoire', 'Images/foagroup/Armoire', '2026-10-10 02:29:25', '2026-10-10 04:39:10', 'foagroup.com'),
(17, 'foagroup.com', 'Desk', 'Desk', 'Images/foagroup/Desk', '2026-10-10 02:29:25', '2026-10-10 04:39:11', 'foagroup.com'),
(18, 'foagroup.com', 'Mattress', 'Mattress', 'Images/foagroup/Mattress', '2026-10-10 02:29:26', '2026-10-10 04:39:11', 'foagroup.com'),
(19, 'foagroup.com', 'Foundation', 'Foundation', 'Images/foagroup/Foundation', '2026-10-10 02:29:26', '2026-10-10 04:39:11', 'foagroup.com'),
(20, 'foagroup.com', 'Bed Frame', 'Bed Frame', 'Images/foagroup/Bed Frame', '2026-10-10 02:29:26', '2026-10-10 04:39:11', 'foagroup.com'),
(21, 'foagroup.com', 'Table', 'Table', 'Images/foagroup/Table', '2026-10-10 02:29:27', '2026-10-10 04:39:11', 'foagroup.com'),
(22, 'foagroup.com', 'Miscellaneous', 'Miscellaneous', 'Images/foagroup/Miscellaneous', '2026-10-10 02:29:28', '2026-10-10 04:39:11', 'foagroup.com'),
(23, 'foagroup.com', 'Wall Art', 'Wall Art', 'Images/foagroup/Wall Art', '2026-10-10 02:29:29', '2026-10-10 04:39:11', 'foagroup.com'),
(24, 'nydiamondusa.com', 'Dining Chairs', 'Dining Chairs', 'Images/nydaimondusa/Dining Chairs', '2026-10-10 02:29:29', '2026-10-10 05:34:24', 'nydiamondusa.com'),
(25, 'nydiamondusa.com', 'Living Rooms', 'Living Rooms', 'Images/nydaimondusa/Living Rooms', '2026-10-10 02:29:29', '2026-10-10 05:34:05', 'nydiamondusa.com'),
(26, 'nydiamondusa.com', 'Fire Places', 'Fire Places', 'Images/nydaimondusa/Fire Places', '2026-10-10 02:29:29', '2026-10-10 05:34:14', 'nydiamondusa.com'),
(27, 'nydiamondusa.com', 'Pictures Frames', 'Pictures Frames', 'Images/nydaimondusa/Pictures Frames', '2026-10-10 02:29:30', '2026-10-10 05:33:42', 'nydiamondusa.com'),
(28, 'nydiamondusa.com', 'Dining Tables', 'Dining Tables', 'Images/nydaimondusa/Dining Tables', '2026-10-10 02:29:30', '2026-10-10 05:34:22', 'nydiamondusa.com'),
(29, 'nydiamondusa.com', 'Vanities', 'Vanities', 'Images/nydaimondusa/Vanities', '2026-10-10 02:29:30', '2026-10-10 05:34:34', 'nydiamondusa.com'),
(30, 'nydiamondusa.com', 'Coffee Tables', 'Coffee Tables', 'Images/nydaimondusa/Coffee Tables', '2026-10-10 02:29:30', '2026-10-10 05:34:36', 'nydiamondusa.com'),
(31, 'nydiamondusa.com', 'Bedroom Collections', 'Bedroom Collections', 'Images/nydaimondusa/Bedroom Collections', '2026-10-10 02:29:31', '2026-10-10 05:33:04', 'nydiamondusa.com'),
(32, 'nydiamondusa.com', 'Selfie Mirrors', 'Selfie Mirrors', 'Images/nydaimondusa/Selfie Mirrors', '2026-10-10 02:29:31', '2026-10-10 05:34:35', 'nydiamondusa.com'),
(33, 'nydiamondusa.com', 'Accessories', 'Accessories', 'Images/nydaimondusa/Accessories', '2026-10-10 02:29:32', '2026-10-10 05:34:35', 'nydiamondusa.com'),
(34, 'nydiamondusa.com', 'Consoles-Buffet', 'Consoles-Buffet', 'Images/nydaimondusa/Consoles-Buffet', '2026-10-10 02:29:32', '2026-10-10 05:34:22', 'nydiamondusa.com'),
(35, 'nydiamondusa.com', 'Dealer Products', 'Dealer Products', 'Images/nydaimondusa/Dealer Products', '2026-10-10 02:29:32', '2026-10-10 04:39:12', 'nydiamondusa.com'),
(36, 'nydiamondusa.com', 'Chests & Dressers & Night Stand', 'Chests & Dressers & Night Stand', 'Images/nydaimondusa/Chests & Dressers & Night Stand', '2026-10-10 02:29:32', '2026-10-10 05:34:23', 'nydiamondusa.com'),
(37, 'nydiamondusa.com', 'Vanity Mirrors', 'Vanity Mirrors', 'Images/nydaimondusa/Vanity Mirrors', '2026-10-10 02:29:33', '2026-10-10 05:34:30', 'nydiamondusa.com'),
(38, 'nydiamondusa.com', 'Mirrors', 'Mirrors', 'Images/nydaimondusa/Mirrors', '2026-10-10 02:29:33', '2026-10-10 05:34:35', 'nydiamondusa.com'),
(39, 'nydiamondusa.com', 'Accesory Lighting & Lamps', 'Accesory Lighting & Lamps', 'Images/nydaimondusa/Accesory Lighting & Lamps', '2026-10-10 02:29:34', '2026-10-10 05:34:35', 'nydiamondusa.com'),
(40, 'nydiamondusa.com', 'Bean Bag', 'Bean Bag', 'Images/nydaimondusa/Bean Bag', '2026-10-10 02:29:34', '2026-10-10 05:33:18', 'nydiamondusa.com'),
(41, 'nydiamondusa.com', 'Beds', 'Beds', 'Images/nydaimondusa/Beds', '2026-10-10 02:29:37', '2026-10-10 05:34:03', 'nydiamondusa.com'),
(42, 'nydiamondusa.com', 'Chandeliers', 'Chandeliers', 'Images/nydaimondusa/Chandeliers', '2026-10-10 02:29:37', '2026-10-10 05:34:07', 'nydiamondusa.com'),
(43, 'nydiamondusa.com', 'Packages, Rugs & Pillows', 'Packages, Rugs & Pillows', 'Images/nydaimondusa/Packages, Rugs & Pillows', '2026-10-10 02:29:37', '2026-10-10 05:34:34', 'nydiamondusa.com'),
(44, 'nydiamondusa.com', 'Bar Stools & Vanity Stools', 'Bar Stools & Vanity Stools', 'Images/nydaimondusa/Bar Stools & Vanity Stools', '2026-10-10 02:29:40', '2026-10-10 05:34:08', 'nydiamondusa.com'),
(45, 'nydiamondusa.com', 'Trees', 'Trees', 'Images/nydaimondusa/Trees', '2026-10-10 02:29:40', '2026-10-10 05:34:29', 'nydiamondusa.com'),
(46, 'nydiamondusa.com', 'US Upholstery', 'US Upholstery', 'Images/nydaimondusa/US Upholstery', '2026-10-10 02:29:40', '2026-10-10 05:34:18', 'nydiamondusa.com'),
(47, 'nydiamondusa.com', 'Swing Chair', 'Swing Chair', 'Images/nydaimondusa/Swing Chair', '2026-10-10 02:29:41', '2026-10-10 05:34:28', 'nydiamondusa.com'),
(48, 'nydiamondusa.com', 'Uncategorized', 'Uncategorized', 'Images/nydaimondusa/Uncategorized', '2026-10-10 05:33:04', '2026-10-10 05:34:37', 'nydiamondusa.com');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_10_06_113500_create_products_table', 2),
(5, '2026_10_07_104700_create_scrape_runs_table', 3),
(6, '2026_10_07_113400_add_site_to_products_table', 4),
(7, '2026_10_07_165000_widen_scrape_url_columns', 5),
(8, '2026_10_09_150000_create_roles_and_permissions_tables', 6),
(9, '2026_10_09_151500_add_google_id_to_users_table', 7),
(10, '2026_10_09_152000_add_github_id_to_users_table', 8),
(11, '2026_10_09_160000_add_profile_fields_to_users_table', 9),
(12, '2026_10_09_170000_add_user_id_to_catalogs', 10),
(13, '2026_10_09_174500_add_plan_to_users_table', 11),
(14, '2026_10_09_175500_default_users_without_a_subscription', 12),
(15, '2026_10_10_105500_create_account_notices_table', 13),
(16, '2026_10_10_111800_add_cleared_at_and_notice_messages', 14),
(17, '2026_10_10_112400_link_notices_to_sent_messages', 15),
(18, '2026_10_10_113300_add_url_to_account_notices', 16),
(19, '2026_10_10_120000_split_catalogs_into_category_tables', 17),
(20, '2026_10_10_143000_rename_category_tables_to_readable_names', 18),
(21, '2026_10_10_144500_group_categories_inside_catalog_databases', 19);

-- --------------------------------------------------------

--
-- Table structure for table `notice_messages`
--

CREATE TABLE `notice_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `sender_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `audience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient_count` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'View catalogs', 'catalogs.view', '2026-10-09 05:07:14', '2026-10-09 05:07:14'),
(2, 'Delete products', 'products.delete', '2026-10-09 05:07:14', '2026-10-09 05:07:14'),
(3, 'Delete catalogs', 'catalogs.delete', '2026-10-09 05:07:14', '2026-10-09 05:07:14'),
(4, 'Run scrapes', 'scrape.run', '2026-10-09 05:07:14', '2026-10-09 05:07:14'),
(5, 'Manage users', 'users.manage', '2026-10-09 05:07:14', '2026-10-09 05:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 4),
(2, 4),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Opens everything, including users and deleting a catalog.', '2026-10-09 05:07:14', '2026-10-09 05:07:14'),
(4, 'User', 'user', 'Opens catalogs, runs scrapes, and deletes products.', '2026-10-09 05:16:27', '2026-10-09 05:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `scrape_runs`
--

CREATE TABLE `scrape_runs` (
  `id` bigint UNSIGNED NOT NULL,
  `site_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prompt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `saved_count` int UNSIGNED NOT NULL DEFAULT '0',
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scrape_runs`
--

INSERT INTO `scrape_runs` (`id`, `site_url`, `prompt`, `status`, `saved_count`, `message`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'https://www.nydiamondusa.com/', 'Chandeliers ki sari products scrape karo, images aur price ke sath.', 'completed', 7, 'Saved 7 products from Chandeliers.', '2026-10-07 00:49:01', '2026-10-07 07:39:57', 1),
(2, 'https://www.foagroup.com/categories/bedroom/bed.html', 'scrape every image and this title, discription, price,Discount_price, catagory, product_link, policy.', 'failed', 0, 'HTTP request returned status code 403:\n<html>\r\n<head><title>403 Forbidden</title></head>\r\n<body>\r\n<center><h1>403 Forbidden</h1></center>\r\n</body>\r\n</html>\r\n\n', '2026-10-07 00:59:48', '2026-10-07 00:59:52', 1),
(3, 'https://www.foagroup.com/categories/bedroom/bed.html', 'scrape every image and this title, discription, price,Discount_price, catagory, product_link, policy.', 'failed', 0, 'HTTP request returned status code 403:\n<html>\r\n<head><title>403 Forbidden</title></head>\r\n<body>\r\n<center><h1>403 Forbidden</h1></center>\r\n</body>\r\n</html>\r\n\n', '2026-10-07 01:00:41', '2026-10-07 01:00:45', 1),
(4, 'https://www.foagroup.com/categories/bedroom/bed.html', 'scrape every image and this title, discription, price,Discount_price, catagory, product_link, policy.', 'completed', 0, 'Saved 0 products with images, title, description, price, category, link, and policy.', '2026-10-07 01:10:07', '2026-10-07 01:10:21', 1),
(5, 'https://www.foagroup.com/categories/bedroom/bed.html', 'scrape every image and this title, discription, price,Discount_price, catagory, product_link, policy.', 'failed', 238, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 01:16:33', '2026-10-07 04:18:46', 1),
(6, 'https://www.foagroup.com/categories/bedroom/nightstand.html', 'scrape every image and this title, discription, price,Discount_price, catagory, product_link, policy.', 'completed', 90, 'Saved 90 products with images, title, description, price, category, link, and policy.', '2026-10-07 01:50:36', '2026-10-07 02:06:29', 1),
(7, 'https://www.foagroup.com/categories/bedroom/dresser.html', 'scrape everything', 'completed', 0, 'Duplicate Dresser link. The newer scrape is next in line.', '2026-10-07 02:03:09', '2026-10-07 02:06:26', 1),
(8, 'https://www.foagroup.com/categories/bedroom/dresser.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 90, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:03:53', '2026-10-07 02:52:53', 1),
(9, 'https://www.foagroup.com/categories/bedroom/nightstand.html', 'scrape every image and this title, discription, price,Discount_price, catagory, product_link, policy.', 'failed', 114, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:09:28', '2026-10-07 03:34:34', 1),
(10, 'https://www.foagroup.com/categories/bedroom/mirror.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 154, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:11:33', '2026-10-07 03:18:11', 1),
(11, 'https://www.foagroup.com/categories/bedroom/chest.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 114, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 04:36:13', 1),
(12, 'https://www.foagroup.com/categories/bedroom/media-chest.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 9, 'Saved 9 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 04:38:04', 1),
(13, 'https://www.foagroup.com/categories/bedroom/daybed.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 8, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 04:41:05', 1),
(14, 'https://www.foagroup.com/categories/bedroom/headboard.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 1, 'Saved 1 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 04:42:22', 1),
(15, 'https://www.foagroup.com/categories/bedroom/accessory.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 3, 'Saved 3 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 04:43:50', 1),
(16, 'https://www.foagroup.com/categories/bedroom/set.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 8, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 04:46:38', 1),
(17, 'https://www.foagroup.com/categories/youth/bed.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 04:50:00', 1),
(18, 'https://www.foagroup.com/categories/youth/bunk-bed.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 111, 'Saved 111 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 05:07:17', 1),
(19, 'https://www.foagroup.com/categories/youth/nightstand.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 37, 'Saved 37 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 05:13:34', 1),
(20, 'https://www.foagroup.com/categories/youth/dresser.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 8, 'Chrome closed the page connection.', '2026-10-07 02:29:34', '2026-10-07 05:17:13', 1),
(21, 'https://www.foagroup.com/categories/youth/mirror.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 30, 'Saved 30 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 05:23:10', 1),
(22, 'https://www.foagroup.com/categories/youth/chest.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 30, 'Saved 30 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 05:29:07', 1),
(23, 'https://www.foagroup.com/categories/youth/armoire.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 1, 'Saved 1 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 05:30:45', 1),
(24, 'https://www.foagroup.com/categories/youth/desk.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 1, 'Saved 1 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 05:32:10', 1),
(25, 'https://www.foagroup.com/categories/youth/accessory.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 46, 'Saved 46 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 05:39:59', 1),
(26, 'https://www.foagroup.com/categories/youth/set.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 05:43:32', 1),
(27, 'https://www.foagroup.com/categories/mattress/mattress.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 40, 'Saved 40 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 05:50:06', 1),
(28, 'https://www.foagroup.com/categories/mattress/foundation.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 5, 'Saved 5 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 05:51:43', 1),
(29, 'https://www.foagroup.com/categories/mattress/bed-frame.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 13, 'Saved 13 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 05:54:48', 1),
(30, 'https://www.foagroup.com/categories/dining/table.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 24, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 06:10:15', 1),
(31, 'https://www.foagroup.com/categories/dining/chair.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'cURL error 6: Could not resolve host: www.foagroup.com (see https://curl.se/libcurl/c/libcurl-errors.html) for https://www.foagroup.com/_api/v1/access-tokens', '2026-10-07 02:29:34', '2026-10-07 06:10:16', 1),
(32, 'https://www.foagroup.com/categories/dining/bench.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'cURL error 6: Could not resolve host: www.foagroup.com (see https://curl.se/libcurl/c/libcurl-errors.html) for https://www.foagroup.com/_api/v1/access-tokens', '2026-10-07 02:29:34', '2026-10-07 06:10:16', 1),
(33, 'https://www.foagroup.com/categories/dining/counterht-table.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'cURL error 6: Could not resolve host: www.foagroup.com (see https://curl.se/libcurl/c/libcurl-errors.html) for https://www.foagroup.com/_api/v1/access-tokens', '2026-10-07 02:29:34', '2026-10-07 06:10:17', 1),
(34, 'https://www.foagroup.com/categories/dining/counterht-chair.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'cURL error 6: Could not resolve host: www.foagroup.com (see https://curl.se/libcurl/c/libcurl-errors.html) for https://www.foagroup.com/_api/v1/access-tokens', '2026-10-07 02:29:34', '2026-10-07 06:10:17', 1),
(35, 'https://www.foagroup.com/categories/dining/counterht-bench.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'cURL error 6: Could not resolve host: www.foagroup.com (see https://curl.se/libcurl/c/libcurl-errors.html) for https://www.foagroup.com/_api/v1/access-tokens', '2026-10-07 02:29:34', '2026-10-07 06:10:17', 1),
(36, 'https://www.foagroup.com/categories/dining/server.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'cURL error 6: Could not resolve host: www.foagroup.com (see https://curl.se/libcurl/c/libcurl-errors.html) for https://www.foagroup.com/_api/v1/access-tokens', '2026-10-07 02:29:34', '2026-10-07 06:10:18', 1),
(37, 'https://www.foagroup.com/categories/dining/hutch-buffet.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'cURL error 6: Could not resolve host: www.foagroup.com (see https://curl.se/libcurl/c/libcurl-errors.html) for https://www.foagroup.com/_api/v1/access-tokens', '2026-10-07 02:29:34', '2026-10-07 06:10:18', 1),
(38, 'https://www.foagroup.com/categories/dining/curio.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'cURL error 6: Could not resolve host: www.foagroup.com (see https://curl.se/libcurl/c/libcurl-errors.html) for https://www.foagroup.com/_api/v1/access-tokens', '2026-10-07 02:29:34', '2026-10-07 06:10:18', 1),
(39, 'https://www.foagroup.com/categories/dining/recreation.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'cURL error 6: Could not resolve host: www.foagroup.com (see https://curl.se/libcurl/c/libcurl-errors.html) for https://www.foagroup.com/_api/v1/access-tokens', '2026-10-07 02:29:34', '2026-10-07 06:10:19', 1),
(40, 'https://www.foagroup.com/categories/dining/bar.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'cURL error 6: Could not resolve host: www.foagroup.com (see https://curl.se/libcurl/c/libcurl-errors.html) for https://www.foagroup.com/_api/v1/access-tokens', '2026-10-07 02:29:34', '2026-10-07 06:10:19', 1),
(41, 'https://www.foagroup.com/categories/dining/accessory.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 3, 'Saved 3 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 06:12:03', 1),
(42, 'https://www.foagroup.com/categories/dining/set.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 06:14:42', 1),
(43, 'https://www.foagroup.com/categories/upholstery/sofa.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 06:16:56', 1),
(44, 'https://www.foagroup.com/categories/upholstery/loveseat.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 06:19:10', 1),
(45, 'https://www.foagroup.com/categories/upholstery/chair.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 90, 'Saved 90 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:34', '2026-10-07 06:25:15', 1),
(46, 'https://www.foagroup.com/categories/upholstery/chaise.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 06:25:19', 1),
(47, 'https://www.foagroup.com/categories/upholstery/ottoman.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 06:25:22', 1),
(48, 'https://www.foagroup.com/categories/upholstery/modular.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 06:25:27', 1),
(49, 'https://www.foagroup.com/categories/upholstery/sectional.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 06:25:30', 1),
(50, 'https://www.foagroup.com/categories/upholstery/manual-sofa.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'The site blocked the catalog request. Open the category link again from the Scrape page.', '2026-10-07 02:29:34', '2026-10-07 06:25:34', 1),
(51, 'https://www.foagroup.com/categories/upholstery/manual-loveseat.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:36', 1),
(52, 'https://www.foagroup.com/categories/upholstery/manual-recliner.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:37', 1),
(53, 'https://www.foagroup.com/categories/upholstery/manual-sectional.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:39', 1),
(54, 'https://www.foagroup.com/categories/upholstery/power-sofa.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:41', 1),
(55, 'https://www.foagroup.com/categories/upholstery/power-loveseat.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:42', 1),
(56, 'https://www.foagroup.com/categories/upholstery/power-recliner.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:44', 1),
(57, 'https://www.foagroup.com/categories/upholstery/power-sectional.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:46', 1),
(58, 'https://www.foagroup.com/categories/upholstery/sleeper.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:47', 1),
(59, 'https://www.foagroup.com/categories/upholstery/futon-sofa.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:49', 1),
(60, 'https://www.foagroup.com/categories/living/coffee-table.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:51', 1),
(61, 'https://www.foagroup.com/categories/living/side-table.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:52', 1),
(62, 'https://www.foagroup.com/categories/living/console-table.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:54', 1),
(63, 'https://www.foagroup.com/categories/living/tv-console.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:56', 1),
(64, 'https://www.foagroup.com/categories/outdoor/seating.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:57', 1),
(65, 'https://www.foagroup.com/categories/outdoor/dining.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:25:59', 1),
(66, 'https://www.foagroup.com/categories/outdoor/chair.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:26:01', 1),
(67, 'https://www.foagroup.com/categories/outdoor/bench.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:26:02', 1),
(68, 'https://www.foagroup.com/categories/outdoor/umbrella.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:26:04', 1),
(69, 'https://www.foagroup.com/categories/outdoor/canopy.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:26:06', 1),
(70, 'https://www.foagroup.com/categories/outdoor/accessory.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:34', '2026-10-07 06:26:08', 1),
(71, 'https://www.foagroup.com/categories/accent/vanity.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:35', '2026-10-07 06:26:09', 1),
(72, 'https://www.foagroup.com/categories/accent/shelf-cabinet.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:35', '2026-10-07 06:26:11', 1),
(73, 'https://www.foagroup.com/categories/accent/table-stand.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:35', '2026-10-07 06:26:13', 1),
(74, 'https://www.foagroup.com/categories/accent/desk.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:35', '2026-10-07 06:26:14', 1),
(75, 'https://www.foagroup.com/categories/accent/office-chair.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:35', '2026-10-07 06:26:16', 1),
(76, 'https://www.foagroup.com/categories/accent/chair.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:35', '2026-10-07 06:26:18', 1),
(77, 'https://www.foagroup.com/categories/accent/bench.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:35', '2026-10-07 06:26:19', 1),
(78, 'https://www.foagroup.com/categories/accent/ottoman.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:35', '2026-10-07 06:26:21', 1),
(79, 'https://www.foagroup.com/categories/accent/rug.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:35', '2026-10-07 06:26:22', 1),
(80, 'https://www.foagroup.com/categories/accent/pillow.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:35', '2026-10-07 06:26:24', 1),
(81, 'https://www.foagroup.com/categories/accent/lamp.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:35', '2026-10-07 06:26:26', 1),
(82, 'https://www.foagroup.com/categories/accent/accessory.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 2, 'Saved 2 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:35', '2026-10-09 07:02:10', 1),
(83, 'https://www.foagroup.com/categories/accent/pet-house.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 0, 'Saved 0 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:35', '2026-10-09 06:37:04', 1),
(84, 'https://www.foagroup.com/categories/accent/wall-art.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 2, 'Saved 2 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:35', '2026-10-10 02:03:51', 1),
(85, 'https://www.foagroup.com/categories/accent/bathroom-vanity.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 02:29:35', '2026-10-07 06:26:32', 1),
(86, 'https://www.foagroup.com/categories/accent/miscellaneous.html', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 1, 'Saved 1 products with images, title, description, price, category, link, and policy.', '2026-10-07 02:29:35', '2026-10-07 07:39:11', 1),
(90, 'https://foagroup.com', 'scrape again', 'failed', 8, 'Human Verification. This category was stopped so it does not keep waiting.', '2026-10-07 07:10:02', '2026-10-09 06:54:43', 1),
(91, 'https://www.nydiamondusa.com/chandeliers', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 691, 'Saved 691 products from all categories.', '2026-10-07 07:45:12', '2026-10-07 07:45:26', 1),
(92, 'https://www.nydiamondusa.com/wallmirrors', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 691, 'Saved 691 products from all categories.', '2026-10-07 07:50:44', '2026-10-07 07:52:33', 1),
(93, 'https://www.aliexpress.com/', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'The AliExpress page did not include products. Open the category link again from the Scrape page.', '2026-10-09 06:55:05', '2026-10-09 06:55:07', 4),
(94, 'https://aliexpress.com', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'The AliExpress page did not include products. Open the category link again from the Scrape page.', '2026-10-09 06:58:06', '2026-10-09 06:58:09', 4),
(95, 'https://www.aliexpress.com/p/calp-plus/index.html?spm=a2g0o.home.category.5.3dd16278nPPpIA&osf=category_navigate_newTab2&queryFrom=kingKong&categoryTab=furniture', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'failed', 0, 'The AliExpress page did not include products. Open the category link again from the Scrape page.', '2026-10-09 07:00:38', '2026-10-09 07:04:21', 4),
(96, 'https://www.aliexpress.com/p/calp-plus/index.html?spm=a2g0o.home.category.5.3dd16278nPPpIA&osf=category_navigate_newTab2&queryFrom=kingKong&categoryTab=furniture', 'scrape id, category, sub_category, product_title, product_link, image1, 2, 3, 4, 5, desc, org_price, discounted_price, policy', 'completed', 60, 'Saved 60 products in the aliexpress.com catalog.', '2026-10-09 07:19:46', '2026-10-09 07:21:35', 4),
(97, 'https://aliexpress.com', 'scrap images', 'completed', 29, 'Saved 29 products in the aliexpress.com catalog.', '2026-10-10 01:04:39', '2026-10-10 01:05:00', 4),
(98, 'https://nydiamondusa.com', 'scrape more product', 'completed', 690, 'Saved 690 products from all categories.', '2026-10-10 05:32:05', '2026-10-10 05:34:37', 1),
(99, 'https://aliexpress.com', 'scrape again product', 'completed', 29, 'Saved 29 products in the aliexpress.com catalog.', '2026-10-10 05:46:50', '2026-10-10 05:46:59', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('oH6TIink4MN67nsDcoS4AbwSgvz67QqyCzTCAr8b', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/3.20.21 Chrome/148.0.7778.280 Electron/42.10.0 Safari/537.36', 'eyJfdG9rZW4iOiI1bFJkRDRNUmdmUEtFRFFQVENZOEtZR3dmekVoVnBNUGJoMmRKbkZuIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjgwMDBcL25vdGljZXMiLCJyb3V0ZSI6Im5vdGljZXMuaW5kZXgifSwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjEsInBhc3N3b3JkX2hhc2hfd2ViIjoiZWVhNmEwMDU1YTM4NTAwOWFhN2VhNzgwMmUyNzU3ZjdhOTMxMGEwNmUyZmE3ZjJiNDE0YTg3MWM2OGJiMjBmNCJ9', 1791786535),
('xKnRfrYPDEjqtXTiH860k0I25r8cWalMxeuGZuEK', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiIwbFQ1ZUViaU8wS21GTkdZak5ucXZKOUlCQW9QbkpjaDJoM3JlcWFPIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvbG9jYWxob3N0OjgwMDBcL25vdGljZXMiLCJyb3V0ZSI6Im5vdGljZXMuaW5kZXgifSwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjEsInBhc3N3b3JkX2hhc2hfd2ViIjoiZWVhNmEwMDU1YTM4NTAwOWFhN2VhNzgwMmUyNzU3ZjdhOTMxMGEwNmUyZmE3ZjJiNDE0YTg3MWM2OGJiMjBmNCJ9', 1791786517);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifications` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `notifications`, `email`, `google_id`, `github_id`, `email_verified_at`, `password`, `role_id`, `plan`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'avatars/1-1791545173.jpg', 1, 'admin@catalogs.test', NULL, NULL, '2026-10-09 05:07:14', '$2y$12$HbB.5tWfyd.QWiWsnOMGYO.Us5xMxQGJqpasnGDQ8rfJUh9i/8tum', 1, 'catalog', NULL, '2026-10-09 05:07:14', '2026-10-10 01:18:39'),
(4, 'ali', 'avatars/4-1791543190.png', 1, 'admin@gmail.com', NULL, NULL, NULL, '$2y$12$lq8aCRC25tSunqVyRsuaOetlig8hstBUl8DY2T4zlxKQt1mNqeMjm', 4, 'starter', NULL, '2026-10-09 05:20:29', '2026-10-10 01:11:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_notices`
--
ALTER TABLE `account_notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_notices_user_id_index` (`user_id`),
  ADD KEY `account_notices_message_id_index` (`message_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `catalog_categories`
--
ALTER TABLE `catalog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catalog_categories_host_category_unique` (`host`,`category`),
  ADD KEY `catalog_categories_host_index` (`host`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_messages`
--
ALTER TABLE `notice_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_messages_sender_id_index` (`sender_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_external_id_unique` (`external_id`),
  ADD KEY `products_sub_category_index` (`sub_category`),
  ADD KEY `products_site_host_index` (`site_host`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `scrape_runs`
--
ALTER TABLE `scrape_runs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scrape_runs_status_index` (`status`),
  ADD KEY `scrape_runs_user_id_index` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`),
  ADD UNIQUE KEY `users_github_id_unique` (`github_id`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_notices`
--
ALTER TABLE `account_notices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `catalog_categories`
--
ALTER TABLE `catalog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `notice_messages`
--
ALTER TABLE `notice_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2075;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scrape_runs`
--
ALTER TABLE `scrape_runs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

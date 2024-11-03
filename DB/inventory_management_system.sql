 -- create database inventory_management_system;

-- drop database inventory_management_system;

-- use inventory_management_system;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Laptops', 'laptops', NULL, NULL),
(2, 1, 'Hardware', 'hardware', NULL, NULL),
(3, 1, 'Smartphones', 'smartphones', NULL, NULL),
(4, 1, 'Speakers', 'speakers', NULL, NULL),
(5, 1, 'Software', 'software', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `uuid`, `user_id`, `name`, `email`, `phone`, `address`, `photo`, `account_holder`, `account_number`, `bank_name`, `created_at`, `updated_at`) VALUES
(1, 'db0de2e2-3bd9-4e29-b675-39de20fb76bc', 1, 'Miss Rosemary Larson DDS', 'marcellus.emmerich@example.com', '(947) 276-9090', '90569 Mueller Parks Suite 406\nWest Erick, CO 83690-0946', NULL, 'Rosa Gottlieb', '53533150', 'BSI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(2, '6e8b80ef-6dc7-4c74-a359-521c69adf56c', 1, 'Sage Kerluke', 'abbigail.mosciski@example.com', '+1-629-626-6040', '3165 Iliana Forks\nYostton, UT 80787', NULL, 'Miss Karen Williamson', '95744111', 'BRI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(3, 'b5fe6795-1311-440f-9451-583708e1601a', 1, 'Dr. Michale Pfeffer IV', 'gaylord.tressie@example.org', '+1 (321) 372-8040', '49440 Reyes Fords Apt. 685\nNorth Orphatown, FL 49056', NULL, 'Prof. Reese Satterfield', '17038090', 'BSI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(4, '234503b8-dc90-487a-b070-7f94e47c8618', 1, 'Prof. Britney Sporer', 'kutch.lysanne@example.com', '+1-609-985-6509', '635 Lakin Center Apt. 012\nWest Alanisburgh, WI 63708', NULL, 'Rowland Daugherty', '38880942', 'Mandiri', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(5, 'd6b274e7-ed4a-41e1-8979-9807d525a5d1', 1, 'Carmelo Denesik III', 'wyman.wehner@example.net', '1-470-792-1909', '8514 Spencer Spur Apt. 800\nDemondburgh, DC 37739-8841', NULL, 'Kellie Gislason', '87995437', 'Mandiri', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(6, '14e8a5b3-8c0d-4bf4-8a72-a7421626a34e', 1, 'Dr. Mayra Heathcote Jr.', 'ferry.maci@example.net', '+1-810-551-7063', '53843 Hyman Grove Suite 759\nPort Broderick, MO 51243-6818', NULL, 'Alfonso Harvey', '50292208', 'BSI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(7, 'ace100fa-1671-4c4f-9e24-c04748658299', 1, 'Miss Macie Gleason', 'lprohaska@example.org', '1-817-216-5616', '109 Sydnee Parkways\nKutchfort, ME 75459-4571', NULL, 'Telly Kreiger', '24698319', 'BSI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(8, '0d9f31a5-3572-4dfd-a6d1-842644935e6e', 1, 'Kyla Douglas IV', 'xcollins@example.org', '1-775-660-7193', '6236 Josh Club\nDanaside, DE 57740-5434', NULL, 'Dr. Elfrieda Johns', '26276632', 'Mandiri', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(9, '960d2b74-f01c-45a8-a753-ee62c9b85d06', 1, 'Sabina Cassin', 'thills@example.com', '+19727242898', '3332 Santa Lock\nEast Gabriella, HI 32557-5670', NULL, 'Makayla Corwin', '27522807', 'BNI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(10, '894c42d2-7a52-4bbd-bd1e-9b3a825dacdc', 1, 'Dr. Mireille Hirthe DVM', 'beier.davon@example.net', '(609) 738-6620', '2925 Alexandra Drives Suite 394\nBoylehaven, NJ 29191', NULL, 'Angie Heidenreich', '52569634', 'Mandiri', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(11, '27a8ee93-c9d5-4478-9e28-26070fdb808b', 1, 'Evans Mayer V', 'ettie.von@example.net', '+1.316.402.8296', '2031 Casper Manors Suite 063\nPort Sim, NJ 75802-9734', NULL, 'Katrine Bergnaum III', '49679249', 'BRI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(12, '6309d168-3b88-49f4-a50e-a19c8913eb04', 1, 'Ramon Schowalter', 'margret.schiller@example.net', '(270) 209-3448', '291 Jasper Street\nKassulkeville, WV 04267', NULL, 'Cordie Turner', '62926081', 'BSI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(13, '783a6cbf-5d88-4517-8e54-f3ec8865395d', 1, 'Rudolph Hermiston', 'schmeler.alexys@example.net', '(586) 915-2835', '55273 Selmer Valley Suite 965\nShaniamouth, MO 70156', NULL, 'Maiya Ferry', '99693703', 'BCA', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(14, '4bce3bed-1473-494b-ab1d-a6ef81be5c8c', 1, 'Ryan Wiegand III', 'stephanie04@example.net', '862-377-6046', '6360 Joannie Springs\nRaestad, GA 97670-6772', NULL, 'Prof. Shanna Beier', '85358036', 'BCA', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(15, 'd1b0b4c7-c590-4996-8ee1-30a8f9ff16b9', 1, 'Mrs. Audreanne Stoltenberg I', 'mbartell@example.org', '872.474.9561', '30527 Kuvalis Inlet\nHillardstad, AZ 80941', NULL, 'Ernesto Schmitt', '61123459', 'Mandiri', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(16, '9e8bfff1-005f-4049-aa15-cadc12595b6f', 1, 'Gayani Athukorala', 'gayani@oulook.com', '0782912885', 'No.45, Ahaliyagoda,Rathnapura', '', 'Gayani Athukoral', '1237894556', 'BRI', '2024-11-03 10:35:13', '2024-11-03 10:35:13');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_30_150318_create_customers_table', 1),
(6, '2023_05_01_111143_create_suppliers_table', 1),
(7, '2023_05_02_114617_create_categories_table', 1),
(8, '2023_05_02_122454_create_units_table', 1),
(9, '2023_05_02_140630_create_products_table', 1),
(10, '2023_05_04_084431_create_orders_table', 1),
(11, '2023_05_04_084646_create_order_details_table', 1),
(12, '2023_05_04_173440_create_shoppingcart_table', 1),
(13, '2023_05_06_142348_create_purchases_table', 1),
(14, '2023_05_06_143104_create_purchase_details_table', 1),
(15, '2023_11_03_140528_create_quotations_table', 1),
(16, '2023_11_03_140529_create_quotation_details_table', 1),
(17, '2023_11_17_183122_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_status` tinyint(4) NOT NULL COMMENT '0 - Pending / 1 - Complete',
  `total_products` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `pay` int(11) NOT NULL,
  `due` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uuid`, `user_id`, `customer_id`, `order_date`, `order_status`, `total_products`, `sub_total`, `vat`, `total`, `invoice_no`, `payment_type`, `pay`, `due`, `created_at`, `updated_at`) VALUES
(1, '5eacb7cf-8091-4ba1-a725-d573340d11ec', 1, 2, '2024-10-29 00:00:00', 0, 1, 1400, 336, 1736, 'INV-000001', 'HandCash', 1734, 2, '2024-10-29 10:51:37', '2024-10-29 10:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitcost` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `unitcost`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1400, 1400, '2024-10-29 10:51:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `buying_price` int(11) NOT NULL COMMENT 'Buying Price',
  `selling_price` int(11) NOT NULL COMMENT 'Selling Price',
  `quantity_alert` int(11) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax_type` tinyint(4) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `uuid`, `user_id`, `name`, `slug`, `code`, `quantity`, `buying_price`, `selling_price`, `quantity_alert`, `tax`, `tax_type`, `notes`, `product_image`, `category_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(1, 'b6546c20-b165-41f6-b586-7e5e900cf1d4', 1, 'iPhone 14 Pro', 'iphone-14-pro', '1', 10, 90000, 140000, 10, 24, 1, NULL, 'assets/img/products/ip14.png', 3, 3, '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(2, '64966b86-91c3-4f9d-8ac1-3fdcd8225ef0', 1, 'ASUS Laptop', 'asus-laptop', '2', 10, 90000, 140000, 10, 24, 1, NULL, 'assets/img/products/ip14.png', 1, 3, '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(3, '86c3ddb5-36f8-4b62-9cde-0c8cd4b30fec', 1, 'Logitech Keyboard', 'logitech-keyboard', '3', 10, 90000, 140000, 10, 24, 1, NULL, 'assets/img/products/keyboard.jpg', 2, 3, '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(4, '301cace2-141d-44b8-a1dd-75b883c4792b', 1, 'Logitech Speakers', 'logitech-speakers', '4', 10, 90000, 140000, 10, 24, 1, NULL, 'assets/img/products/speaker.png', 4, 3, '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(5, '75d2a560-0556-401f-b4c9-3e2925178a2d', 1, 'AutoCAD v7.0', 'autocad-v7.0', '5', 10, 90000, 140000, 10, 24, 1, NULL, 'assets/img/products/autocard.png', 5, 3, '2024-10-09 12:15:21', '2024-10-09 12:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) NOT NULL,
  `purchase_no` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `total_amount` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitcost` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(255) NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) NOT NULL,
  `tax_percentage` int(11) NOT NULL DEFAULT 0,
  `tax_amount` int(11) NOT NULL DEFAULT 0,
  `discount_percentage` int(11) NOT NULL DEFAULT 0,
  `discount_amount` int(11) NOT NULL DEFAULT 0,
  `shipping_amount` int(11) NOT NULL DEFAULT 0,
  `total_amount` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0 - Pending / 1 - Complete / 2 - Cancel',
  `note` text DEFAULT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `date`, `reference`, `customer_id`, `customer_name`, `tax_percentage`, `tax_amount`, `discount_percentage`, `discount_amount`, `shipping_amount`, `total_amount`, `status`, `note`, `uuid`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2024-11-03', 'QT-00001', 11, 'Evans Mayer V', 0, 396, 5, 87, 10, 2055, 2, NULL, '937f5183-5428-429a-b912-961ab7a94a86', 1, '2024-11-03 10:22:25', '2024-11-03 10:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_details`
--

CREATE TABLE `quotation_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `product_discount_amount` int(11) NOT NULL,
  `product_discount_type` varchar(255) NOT NULL DEFAULT 'fixed',
  `product_tax_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_details`
--

INSERT INTO `quotation_details` (`id`, `quotation_id`, `product_id`, `product_name`, `product_code`, `quantity`, `price`, `unit_price`, `sub_total`, `product_discount_amount`, `product_discount_type`, `product_tax_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Logitech Keyboard', '3', 1, 1736, 1400, 1736, 0, 'fixed', 336, '2024-11-03 10:22:26', '2024-11-03 10:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `uuid`, `user_id`, `name`, `email`, `phone`, `address`, `shopname`, `type`, `photo`, `account_holder`, `account_number`, `bank_name`, `created_at`, `updated_at`) VALUES
(1, 'deda4fd1-21d9-4e63-bac6-6d9666f4ad32', 1, 'Kattie Borer', 'alene35@example.org', '+1-872-829-5940', '5030 Wiegand Club\nZemlakbury, PA 84347', 'Abernathy, Stanton and Yost', 'producer', NULL, 'Emelia Kerluke Jr.', '38701352', 'BRI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(2, '081c1076-2155-4a76-9b63-9b807be90602', 1, 'Mrs. Rosie Streich', 'conn.katheryn@example.com', '+19519406214', '2569 Rohan Villages\nBodemouth, TX 77025', 'Fahey and Sons', 'wholesaler', NULL, 'Mr. Lourdes Thiel Sr.', '20858764', 'BSI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(3, '35783ca8-2ae6-4c7f-992c-6da1b24fde3f', 1, 'Modesta Rowe', 'lillian.lockman@example.org', '+1 (781) 210-4728', '179 Concepcion Estates Apt. 837\nRatkechester, MN 52076-3098', 'Hodkiewicz-Hessel', 'producer', NULL, 'Ms. Vanessa O\'Connell', '62715187', 'BNI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(4, 'c9bcc571-761f-4f26-b54d-d02366e7d747', 1, 'Pierce Bahringer', 'johnston.laisha@example.org', '+12125215487', '10351 Shyann Corner\nDachburgh, WV 71185-0274', 'Krajcik Group', 'wholesaler', NULL, 'Antone Klein', '12228261', 'BRI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(5, 'fb9b4733-38ba-4eb6-8411-96e82bd19b56', 1, 'Dr. Mozelle Emmerich', 'garfield.roberts@example.net', '+13305808514', '2186 Antoinette Stravenue Apt. 457\nNorth Nickville, GA 50440', 'Schmidt-Quitzon', 'wholesaler', NULL, 'Aleen Yost', '47225579', 'Mandiri', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(6, '3421c8a9-a211-4bc7-8a81-782177910b1d', 1, 'Destany Durgan', 'carlie85@example.org', '+1 (726) 898-0922', '84912 Gust Manors Suite 500\nWest Tre, CA 81783-8993', 'Dach Group', 'distributor', NULL, 'Arno Schimmel', '71504432', 'BCA', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(7, '67ca621c-dc7b-429d-beee-3b49bb7297e2', 1, 'Mallie Paucek', 'destinee32@example.com', '+1-732-633-3267', '3324 Langworth Center Apt. 120\nNorth Jayceetown, LA 34177', 'Denesik-Reilly', 'distributor', NULL, 'Blaise Halvorson MD', '19293968', 'Mandiri', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(8, '06879645-369d-437b-9bd8-8bc0faf992f0', 1, 'Nova Bins', 'zita.pouros@example.org', '(551) 880-5229', '910 Reichert Turnpike Apt. 996\nDickiborough, AZ 28429-3344', 'Labadie, Ratke and Renner', 'wholesaler', NULL, 'Kevon Kassulke', '85109126', 'Mandiri', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(9, '78cafc05-c66a-40b0-bb44-23b27da9589a', 1, 'Mable Brekke', 'elza13@example.net', '(814) 599-3632', '2867 Anderson Corners\nSteubermouth, DE 60255', 'Kertzmann-Prohaska', 'producer', NULL, 'Katharina Douglas', '83722461', 'Mandiri', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(10, '581799bf-a40a-454a-8850-6a3349463836', 1, 'Prof. Jacky Stokes', 'zstehr@example.org', '341.794.7597', '916 Wendy Garden\nBoyleberg, NE 91339', 'Rosenbaum Ltd', 'distributor', NULL, 'Laney Romaguera', '98623127', 'BNI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(11, '33aa7036-9224-4f80-aa1b-d8a3cf8919ab', 1, 'Mrs. Susie Stroman', 'constance.koelpin@example.net', '1-573-509-0771', '1701 Dewayne Crest\nWest Lexusview, PA 14626', 'Bartoletti, Stiedemann and Herzog', 'distributor', NULL, 'Dr. Laisha Metz', '27131007', 'BCA', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(12, '281a52a2-7035-49a4-8ee6-839e1d5d47d3', 1, 'Dr. Candida Predovic Sr.', 'nfeil@example.org', '+1-956-788-1321', '944 Guy Corner Apt. 201\nBednarhaven, AZ 84775', 'Barrows-Heathcote', 'wholesaler', NULL, 'Anderson Kirlin', '48302483', 'BSI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(13, '9259d7c7-ffc3-4989-8625-c4dfb98049c5', 1, 'Beaulah Friesen', 'lindsey.kertzmann@example.org', '1-270-793-1111', '106 Weston Lane\nLake Isom, NE 87323', 'Bauch, Paucek and Little', 'wholesaler', NULL, 'Hazle Conn DVM', '79630101', 'Mandiri', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(14, 'fafefaab-deee-4d14-861f-848e8c006531', 1, 'Casimir Hagenes', 'ismitham@example.org', '+1-320-800-9837', '9697 Elenora Freeway Suite 815\nWeberview, KS 38559', 'Pacocha-Kirlin', 'wholesaler', NULL, 'Felton Hirthe V', '92721686', 'BSI', '2024-10-09 12:15:21', '2024-10-09 12:15:21'),
(15, 'ffca5bdc-88ce-4111-a8bd-baa617ceace6', 1, 'Prof. Emanuel Moen', 'ekohler@example.net', '+1.904.479.2684', '2402 Delia Mall\nPort Milliebury, WA 57943-7637', 'Kerluke, Kuvalis and Bechtelar', 'distributor', NULL, 'Rubie Swift MD', '38507746', 'BNI', '2024-10-09 12:15:21', '2024-10-09 12:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `user_id`, `name`, `slug`, `short_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'Meters', 'meters', 'm', NULL, NULL),
(2, 1, 'Centimeters', 'centimeters', 'cm', NULL, NULL),
(3, 1, 'Piece', 'piece', 'pc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `store_address` varchar(255) DEFAULT NULL,
  `store_phone` varchar(255) DEFAULT NULL,
  `store_email` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `username`, `name`, `email`, `email_verified_at`, `password`, `store_name`, `store_address`, `store_phone`, `store_email`, `remember_token`, `created_at`, `updated_at`, `photo`) VALUES
(1, '15a89bb0-f5b1-425c-b7fa-5eda817d8e24', 'admin', 'Admin', 'admin@admin.com', '2024-10-09 12:15:19', '$2y$10$gGiVDnfvNShBQIINYcVOduuaxbCI2LpvKyTmyRGVUayKtLvIjoKwe', NULL, NULL, NULL, NULL, NULL, '2024-10-09 12:15:19', '2024-11-03 08:25:15', '1814709787071607.jpg'),
(2, '5834483b-96b6-4d10-a752-ef04546a9259', NULL, 'quest', 'quest@quest.com', '2024-10-09 12:15:20', '$2y$10$tJnty6C2AOYvS05AU5xtRenqtx.IggCg46in4BhUUg7wmjzld.A/K', NULL, NULL, NULL, NULL, NULL, '2024-10-09 12:15:21', NULL, 'admin.jpg'),
(3, '530fc7eb-5797-4e81-a1de-c8dbfe0c0d15', NULL, 'user', 'user@user.com', '2024-10-09 12:15:21', '$2y$10$CepJ4fYNjOg/DR2uUYXt9ejJ/0arq071xfLxUQsUtSyXQgW3gZTkK', NULL, NULL, NULL, NULL, NULL, '2024-10-09 12:15:21', NULL, 'admin.jpg'),
(4, '0da20010-c0e3-4670-a58b-1897b531e655', 'kavinda', 'Kavinda Perera', 'kavinda@gmail.com', NULL, '$2y$10$W9.ooQOBgRqJxwbeqnZqIeIn11RkwCzkr92iabnOETDGbHcXSNSha', NULL, NULL, NULL, NULL, NULL, '2024-10-29 10:53:48', '2024-10-29 10:53:48', NULL),
(5, '3df96370-dba7-46cb-a446-27e5e1781e54', 'test', 'test', 'yohanvishvajith@gmail.com', NULL, '$2y$10$E1qlvO1uwQOrEeE/l8kbxu/8.hWCwe/z7dqQpZnzwJYTwOE4wikpS', NULL, NULL, NULL, NULL, NULL, '2024-10-29 10:56:56', '2024-10-29 10:56:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`),
  ADD KEY `purchases_user_id_foreign` (`user_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_customer_id_foreign` (`customer_id`),
  ADD KEY `quotations_user_id_foreign` (`user_id`);

--
-- Indexes for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_details_quotation_id_foreign` (`quotation_id`),
  ADD KEY `quotation_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`),
  ADD UNIQUE KEY `suppliers_phone_unique` (`phone`),
  ADD KEY `suppliers_user_id_foreign` (`user_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quotation_details`
--
ALTER TABLE `quotation_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_details_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `quotations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD CONSTRAINT `quotation_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `quotation_details_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

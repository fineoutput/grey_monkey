-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 11:54 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a_basic_panel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_sidebar`
--

CREATE TABLE `admin_sidebar` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `url` varchar(2000) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_sidebar`
--

INSERT INTO `admin_sidebar` (`id`, `name`, `url`, `icon`, `seq`) VALUES
(1, 'Dashboard', 'admin_index', 'fa fa-bar-chart', 1),
(2, 'Team', '#', 'fas fa-users-cog', 2),
(3, 'Sliders', 'sliders.index', 'fa fa-picture-o', 3),
(4, 'Users', 'users.index', 'fa fa-users', 4),
(5, 'Category', 'category.index', 'fa fa-th-large', 5),
(7, 'Contact Enquiries', 'contact_enquiry', 'fa fa-envelope', 8),
(8, 'Orders', '#', 'fa fa-shopping-bag', 7);

-- --------------------------------------------------------

--
-- Table structure for table `admin_sidebar2`
--

CREATE TABLE `admin_sidebar2` (
  `id` int(11) NOT NULL,
  `main_id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `url` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_sidebar2`
--

INSERT INTO `admin_sidebar2` (`id`, `main_id`, `name`, `url`) VALUES
(1, 2, 'View Team', 'view_team'),
(2, 2, 'Add Team', 'add_team_view'),
(3, 8, 'New Orders', 'new_orders'),
(4, 8, 'Accepted Orders', 'accepted_orders'),
(5, 8, 'Dispatched Orders', 'dispatched_orders'),
(6, 8, 'Delivered Orders', 'delivered_orders'),
(7, 8, 'Rejected Orders', 'rejected_orders');

-- --------------------------------------------------------

--
-- Table structure for table `admin_teams`
--

CREATE TABLE `admin_teams` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(2000) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(2000) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `power` int(11) NOT NULL,
  `services` varchar(1000) DEFAULT NULL,
  `ip` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_teams`
--

INSERT INTO `admin_teams` (`id`, `name`, `email`, `password`, `phone`, `address`, `image`, `power`, `services`, `ip`, `created_at`, `updated_at`, `deleted_at`, `added_by`, `is_active`) VALUES
(37, 'demo', 'demo@gmail.com', '202cb962ac59075b964b07152d234b70', '9809786655', '16, vaishali nagar, jaipur', '', 1, '[\"999\"]', '183.83.42.146', '2020-10-28 14:10:45', '2023-03-02 09:50:48', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `ip` varchar(255) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `is_active`, `ip`, `added_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nitesh', 'uploads/image/category/1708435946.png', 1, '127.0.0.1', 37, '2024-02-20 15:43:46', '2024-02-20 10:13:46', '2024-02-20 10:13:46'),
(2, 'Category', 'uploads/image/category/1708507513.jpg', 1, '127.0.0.1', 37, '2024-02-21 03:55:13', '2024-02-21 03:55:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `message`, `ip`, `added_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'NItesh', 'ns@gmail.com', '4587458748', 'hello', NULL, NULL, '2024-02-20 15:57:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE `order1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `final_amount` varchar(255) DEFAULT NULL,
  `payment_status` tinyint(4) DEFAULT NULL COMMENT '0 for not paid, 1 for paid',
  `order_status` int(11) DEFAULT NULL COMMENT '1 for placed, 2 for accepted, 3 for dispatched , 4 for delivered, 5 for rejected',
  `payment_type` tinyint(4) DEFAULT NULL COMMENT '1 for cod, 2 for online',
  `address` varchar(500) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order1`
--

INSERT INTO `order1` (`id`, `user_id`, `final_amount`, `payment_status`, `order_status`, `payment_type`, `address`, `ip`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1500', 1, 4, 1, 'Shyam Nagar', NULL, '2024-02-20 10:11:38', '2024-02-21 04:46:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order2`
--

CREATE TABLE `order2` (
  `id` int(11) NOT NULL,
  `main_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `gst_percentage` varchar(255) DEFAULT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order2`
--

INSERT INTO `order2` (`id`, `main_id`, `product_id`, `quantity`, `price`, `gst_percentage`, `total_price`, `ip`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 2, '100', '2', '200', NULL, '2024-02-21 09:08:01', NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `mrp` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `gst_percentage` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) DEFAULT NULL,
  `gst` varchar(255) DEFAULT NULL,
  `is_top` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `ip` varchar(255) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `sku`, `description`, `mrp`, `price`, `gst_percentage`, `selling_price`, `gst`, `is_top`, `image`, `image2`, `image3`, `image4`, `is_active`, `ip`, `added_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'gfsgs', 'ngng', '<p>,j,j,</p>', '1500', '1545.45', '10', '1700', '154.55', 1, 'uploads/image/products/1708443463.png', NULL, NULL, NULL, 1, '127.0.0.1', 37, '2024-02-20 17:09:03', '2024-02-20 10:13:46', '2024-02-04 18:30:00'),
(2, 1, 'gfsgs', 'ngng', '<p>,j,j,</p>', '1500', '1545.45', '10', '1700', '154.55', 1, 'uploads/image/products/1708443463.png', NULL, NULL, NULL, 1, '127.0.0.1', 37, '2024-02-20 15:43:46', '2024-02-20 10:13:46', '2024-02-20 10:13:46'),
(3, 2, 'cscsc', 'c', '<p>cscs</p>', '1500', '1545.45', '10', '1700', '154.55', 1, 'uploads/image/products/1708508339.jpg', NULL, NULL, NULL, 1, '127.0.0.1', 37, '2024-02-21 04:08:59', '2024-02-21 04:08:59', NULL),
(4, 2, 'cscsc', 'c', '<p>cscs</p>', '1500', '1545.45', '10', '1700', '154.55', 1, 'uploads/image/products/1708508362.jpg', NULL, NULL, NULL, 1, '127.0.0.1', 37, '2024-02-21 04:09:22', '2024-02-21 04:09:22', NULL),
(5, 2, 'cscsc', 'c', '<p>cscs</p>', '1500', '1545.45', '10', '1700', '154.55', 1, 'uploads/image/products/1708508373.jpg', NULL, NULL, NULL, 1, '127.0.0.1', 37, '2024-02-21 09:43:56', '2024-02-21 04:13:56', '2024-02-21 04:13:56'),
(6, 2, 'cscsc', 'c', '<p>cscs</p>', '1500', '1545.45', '10', '1700', '154.55', 1, 'uploads/image/products/1708508408.jpg', NULL, NULL, NULL, 0, '127.0.0.1', 37, '2024-02-21 09:42:22', '2024-02-21 04:12:22', '2024-02-21 04:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `ip` varchar(255) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `is_active`, `ip`, `added_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'uploads/image/sliders/1708432668.jpg', 1, '127.0.0.1', 37, '2024-02-20 12:43:45', '2024-02-20 07:13:45', '2024-02-20 07:13:45'),
(5, 'uploads/image/sliders/1708433033.jpg', 1, '127.0.0.1', 37, '2024-02-20 12:45:17', '2024-02-20 07:15:17', '2024-02-20 07:15:17'),
(6, 'uploads/image/sliders/1708433124.jpg', 1, '127.0.0.1', 37, '2024-02-20 12:47:18', '2024-02-20 07:17:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `ip` varchar(255) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `is_active`, `ip`, `added_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nitesh', 'ns@gmail.com', '5181818181', '202cb962ac59075b964b07152d234b70', 1, '127.0.0.1', 37, '2024-02-21 08:59:46', '2024-02-20 07:55:24', '2024-02-11 18:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_sidebar`
--
ALTER TABLE `admin_sidebar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_sidebar2`
--
ALTER TABLE `admin_sidebar2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_teams`
--
ALTER TABLE `admin_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order1`
--
ALTER TABLE `order1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order2`
--
ALTER TABLE `order2`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_sidebar`
--
ALTER TABLE `admin_sidebar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_sidebar2`
--
ALTER TABLE `admin_sidebar2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_teams`
--
ALTER TABLE `admin_teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order1`
--
ALTER TABLE `order1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order2`
--
ALTER TABLE `order2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

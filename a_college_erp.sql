-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 12:45 PM
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
-- Database: `a_college_erp`
--

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
(11, '2023_02_27_131959_create_bookings_table', 1),
(12, '2023_02_27_163216_create_customers_table', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\adminmodel\\CustomersModel', 7, 'auth_token', '00690321093e658b6c7108d64aee23ce20dd8932e4a12541b66382d74eb9efcc', '[\"*\"]', NULL, '2023-11-06 06:24:24', '2023-11-06 06:24:24'),
(3, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'd4d0cc5b39d570aa2d3d195e7f862a7be8999e6a83acd57737d404b24bd38c82', '[\"*\"]', NULL, '2023-11-06 06:25:51', '2023-11-06 06:25:51'),
(4, 'App\\adminmodel\\CustomersModel', 9, 'auth_token', 'e3c57147e0b6eb52a953908b6fc1909feb645011941c8d0d2d61d24e5e7b6116', '[\"*\"]', NULL, '2023-11-06 06:31:07', '2023-11-06 06:31:07'),
(5, 'App\\adminmodel\\CustomersModel', 10, 'auth_token', 'c6fee27f377b53daf747c2988be121de17027018069b4734f6e6d9a03c6911ff', '[\"*\"]', NULL, '2023-11-06 07:03:31', '2023-11-06 07:03:31'),
(6, 'App\\adminmodel\\CustomersModel', 11, 'auth_token', '1e6d2864827be9af3d2b4f4ae8f68fcc005821e92b5f6a47d92639212cd6483b', '[\"*\"]', NULL, '2023-11-06 07:27:28', '2023-11-06 07:27:28'),
(7, 'App\\adminmodel\\CustomersModel', 12, 'auth_token', 'e23a0b68b8bfbe2838fcc12d52c804db548faca9eb219a7c126a438bd81040df', '[\"*\"]', NULL, '2023-11-06 07:46:50', '2023-11-06 07:46:50'),
(8, 'App\\adminmodel\\CustomersModel', 13, 'auth_token', '9eb886a18fed0d380cf300bb345550ac6c2c20067b9ca44cb4190f80a6b33bc4', '[\"*\"]', NULL, '2023-11-06 07:53:04', '2023-11-06 07:53:04'),
(9, 'App\\adminmodel\\CustomersModel', 14, 'auth_token', '93120382b90ffa463e5e1add451a1903f80f48a525349cbfdc4884ac40ce059b', '[\"*\"]', NULL, '2023-11-06 08:33:13', '2023-11-06 08:33:13'),
(10, 'App\\adminmodel\\CustomersModel', 15, 'auth_token', '76e5b9f82a8d9bfb270a6c3cd6455036bab5645897282b1e7dc7cb1b4c264346', '[\"*\"]', NULL, '2023-11-06 08:38:02', '2023-11-06 08:38:02'),
(11, 'App\\adminmodel\\CustomersModel', 16, 'auth_token', '763c921680d785212aee5144503af869ace91d0105d8e0fcaa2afb3b3a23796f', '[\"*\"]', NULL, '2023-11-06 08:42:04', '2023-11-06 08:42:04'),
(12, 'App\\adminmodel\\CustomersModel', 17, 'auth_token', 'e02bd6b41babb0bea6a3522357c47c577c7d4256068d9f02b7c3266f8a842601', '[\"*\"]', NULL, '2023-11-06 08:46:13', '2023-11-06 08:46:13'),
(13, 'App\\adminmodel\\CustomersModel', 18, 'auth_token', 'a5f6169b181caaad38d82f709b1931f967ada7519cb2cee5d68111f28c3a93ca', '[\"*\"]', NULL, '2023-11-06 08:51:43', '2023-11-06 08:51:43'),
(14, 'App\\adminmodel\\CustomersModel', 19, 'auth_token', '0e3c3e75a221d7e02ba4910253b4d0960b8d6d35c52bf477a5121c592501feb7', '[\"*\"]', NULL, '2023-11-06 08:55:19', '2023-11-06 08:55:19'),
(15, 'App\\adminmodel\\CustomersModel', 20, 'auth_token', 'aa83bf6fadb2fb9294c2b24dbf794706985b3599e5a0c5a8863d916eb72fe7a3', '[\"*\"]', NULL, '2023-11-06 08:58:06', '2023-11-06 08:58:06'),
(16, 'App\\adminmodel\\CustomersModel', 21, 'auth_token', '3f40440a320e5f6837899b5aeeb36e7f578267aae46fa2a749010ceb65c81ae4', '[\"*\"]', NULL, '2023-11-06 09:07:54', '2023-11-06 09:07:54'),
(17, 'App\\adminmodel\\CustomersModel', 22, 'auth_token', '6b46e7c8ec6b056428a0012377663cf78a5c86e2c53d33e81d65d20385fbe3de', '[\"*\"]', NULL, '2023-11-06 09:22:17', '2023-11-06 09:22:17'),
(18, 'App\\adminmodel\\CustomersModel', 23, 'auth_token', '4cb0f069be3b8093c80fee96b0f4dfdddb80f47174513f7137a67044b93ed52d', '[\"*\"]', NULL, '2023-11-06 09:22:55', '2023-11-06 09:22:55'),
(19, 'App\\adminmodel\\CustomersModel', 24, 'auth_token', '345661aa713303cc41bfa19459581792760c922f069d76fb00978353ee69d79b', '[\"*\"]', NULL, '2023-11-06 09:23:33', '2023-11-06 09:23:33'),
(20, 'App\\adminmodel\\CustomersModel', 25, 'auth_token', '93bc3e28f7923cf6275387aeb1df0e910b200d5a4adf0ab34cf199ac889397eb', '[\"*\"]', NULL, '2023-11-06 09:25:43', '2023-11-06 09:25:43'),
(21, 'App\\adminmodel\\CustomersModel', 26, 'auth_token', '63a78fd18c9419d44cf1efbafa54b3b7b771fa36f1fee112f2d7a6ac9d187b41', '[\"*\"]', NULL, '2023-11-06 09:26:04', '2023-11-06 09:26:04'),
(22, 'App\\adminmodel\\CustomersModel', 27, 'auth_token', 'a47ad329d76bd970d9dac695e18a23a1cf8debf170bf15bf113a750f7f786bc6', '[\"*\"]', NULL, '2023-11-07 00:50:12', '2023-11-07 00:50:12'),
(23, 'App\\adminmodel\\CustomersModel', 28, 'auth_token', '15dc5343cf921523f434fb0feaf11fc463fc508198ba8a107e74b7c654762783', '[\"*\"]', NULL, '2023-11-07 01:51:27', '2023-11-07 01:51:27'),
(24, 'App\\adminmodel\\CustomersModel', 29, 'auth_token', 'cfa6026c28a93592b65b5dad2aab43d1d3d761e92d4fcf93440e3094d0bd6330', '[\"*\"]', NULL, '2023-11-07 02:05:31', '2023-11-07 02:05:31'),
(25, 'App\\adminmodel\\CustomersModel', 30, 'auth_token', '960bb3773766090b17f9b028812e816b6e19b8ccba86d194f1f5451ac0d8eee3', '[\"*\"]', NULL, '2023-11-07 02:26:17', '2023-11-07 02:26:17'),
(26, 'App\\adminmodel\\CustomersModel', 31, 'auth_token', 'ccbb55d44851f81cbfdadbbc8e80adb68f7139770f0146f7d1daedfd8b97294a', '[\"*\"]', NULL, '2023-11-07 02:28:02', '2023-11-07 02:28:02'),
(27, 'App\\adminmodel\\CustomersModel', 32, 'auth_token', 'fa13cd377c4baeb1057044eea4a47d178d7de28be07ff40b6507005e8c230d3a', '[\"*\"]', NULL, '2023-11-07 02:30:51', '2023-11-07 02:30:51'),
(28, 'App\\adminmodel\\CustomersModel', 33, 'auth_token', '85d4c797cd09aa1b2d72c31848e84f59de810265712c3bb427e80f9b2e37b694', '[\"*\"]', NULL, '2023-11-07 02:46:26', '2023-11-07 02:46:26'),
(29, 'App\\adminmodel\\CustomersModel', 34, 'auth_token', '1c2c436659bf15446943901410b2867c0c24d214abdfa7d0a3dea471b1eb3d16', '[\"*\"]', NULL, '2023-11-07 02:52:23', '2023-11-07 02:52:23'),
(30, 'App\\adminmodel\\CustomersModel', 35, 'auth_token', '3e8e38ba1f4afefd68dd5100cace79510935dcb2be2e7b955cee003958da1fbd', '[\"*\"]', NULL, '2023-11-07 02:55:45', '2023-11-07 02:55:45'),
(31, 'App\\adminmodel\\CustomersModel', 36, 'auth_token', 'c4812a61d6dd5f3f4eb4d6f06a09284502bde076cfd56739c9a260a53b26e267', '[\"*\"]', NULL, '2023-11-07 04:26:30', '2023-11-07 04:26:30'),
(32, 'App\\adminmodel\\CustomersModel', 37, 'auth_token', '7362ea5ba5c3de25ba3bed018494aca5d603116e7e08bddab8a5c1fecb69d312', '[\"*\"]', NULL, '2023-11-07 06:48:44', '2023-11-07 06:48:44'),
(33, 'App\\adminmodel\\CustomersModel', 38, 'auth_token', '8b90ee07bc22adc0f3edc47a51b7e4c7abc59ab441d756a7dc65fa2f6dfb2a65', '[\"*\"]', NULL, '2023-11-07 07:08:48', '2023-11-07 07:08:48'),
(34, 'App\\adminmodel\\CustomersModel', 39, 'auth_token', 'ce6d01d45c50ce7141cdd35563468af2022d20805a0dff36736b83177ab2be4b', '[\"*\"]', NULL, '2023-11-07 07:23:23', '2023-11-07 07:23:23'),
(35, 'App\\adminmodel\\CustomersModel', 40, 'auth_token', '2c3f0bb63bd03dbbc8a1629b026e722afd38c31cd9bc18bf98312b97fbfdcd82', '[\"*\"]', NULL, '2023-11-09 01:10:13', '2023-11-09 01:10:13'),
(36, 'App\\adminmodel\\CustomersModel', 41, 'auth_token', 'f210478dc196aed893df8326f2688a33cd950920c28fe5617399c29066d0882a', '[\"*\"]', NULL, '2023-11-09 01:15:12', '2023-11-09 01:15:12'),
(37, 'App\\adminmodel\\CustomersModel', 42, 'auth_token', '523eb131eaaafb49ea27e3dd47063663a6a2ad2ffdb34f864e3592d02b56cf2a', '[\"*\"]', NULL, '2023-11-09 01:28:28', '2023-11-09 01:28:28'),
(38, 'App\\adminmodel\\CustomersModel', 43, 'auth_token', '016bf8bf3d9d32328d91293d94293d64c4a76d16eda5cd41604f90e0bdc7adf0', '[\"*\"]', NULL, '2023-11-09 02:38:02', '2023-11-09 02:38:02'),
(39, 'App\\adminmodel\\CustomersModel', 44, 'auth_token', '38b79690e68423c315b871ab5a39d34b32db0f861a559a17535f760b18c1213b', '[\"*\"]', NULL, '2023-11-09 02:42:03', '2023-11-09 02:42:03'),
(40, 'App\\adminmodel\\CustomersModel', 45, 'auth_token', '2a159c714c7dfe2ffb14b7b05b88068b8a63e8dc11db62ddb59d1e3beaa39ff3', '[\"*\"]', NULL, '2023-11-09 02:53:17', '2023-11-09 02:53:17'),
(41, 'App\\adminmodel\\CustomersModel', 46, 'auth_token', '06077445aa9a8964f02a5645247da306bfc2ed5d13754882e894b97995824fbe', '[\"*\"]', NULL, '2023-11-09 03:05:02', '2023-11-09 03:05:02'),
(42, 'App\\adminmodel\\CustomersModel', 47, 'auth_token', '2b5ec57b273fec8225f867a252746b2f61c1ac3bb709fb6e539fa967bfc0c529', '[\"*\"]', NULL, '2023-11-09 03:21:25', '2023-11-09 03:21:25'),
(43, 'App\\adminmodel\\CustomersModel', 48, 'auth_token', 'a258bc140bbae8688339a7bd9e2c1410cde7b21be43cbbe639f47447f34c1530', '[\"*\"]', NULL, '2023-11-09 04:40:25', '2023-11-09 04:40:25'),
(44, 'App\\adminmodel\\CustomersModel', 49, 'auth_token', 'ae36105c22c0d8ace340ca8b2d95821fd6588cae66baf40cda2f58cd25a5787f', '[\"*\"]', NULL, '2023-11-09 04:41:05', '2023-11-09 04:41:05'),
(45, 'App\\adminmodel\\CustomersModel', 50, 'auth_token', '455c6320a1f651849f51ba95ccba004c4b4c28451e846de0405b693e8a1028b1', '[\"*\"]', NULL, '2023-11-09 05:15:59', '2023-11-09 05:15:59'),
(46, 'App\\adminmodel\\CustomersModel', 51, 'auth_token', '4b9c36c03eb500d56c80016201053131427b1e940dcc17a88216db04bcd9ccae', '[\"*\"]', NULL, '2023-11-09 05:20:45', '2023-11-09 05:20:45'),
(47, 'App\\adminmodel\\CustomersModel', 52, 'auth_token', '3c6979c085e003585c8dd8a1909311da53b1f45ec29bb1493bb53ae216266531', '[\"*\"]', NULL, '2023-11-09 05:25:03', '2023-11-09 05:25:03'),
(48, 'App\\adminmodel\\CustomersModel', 53, 'auth_token', 'dcb3665fc8af60b29e0c44c5360b5ef49956d8a6dd2e1dd7c37f46d6c37c6fd8', '[\"*\"]', NULL, '2023-11-09 05:26:34', '2023-11-09 05:26:34'),
(49, 'App\\adminmodel\\CustomersModel', 54, 'auth_token', '55e65a83627657d560fd73431a3fc6781346eecab3f1bb055f1e0297aa25052e', '[\"*\"]', NULL, '2023-11-09 05:28:09', '2023-11-09 05:28:09'),
(50, 'App\\adminmodel\\CustomersModel', 55, 'auth_token', '7efd8ec94bcc81ee1c8af1b4a5d3b67d1ce6f489e7c7ec7cac288237b3b090f9', '[\"*\"]', NULL, '2023-11-09 05:29:28', '2023-11-09 05:29:28'),
(51, 'App\\adminmodel\\CustomersModel', 56, 'auth_token', 'ab2377ed6fb5b0ea36692c5103b6615df687fd67eea163ae18d3e02fac9cc78e', '[\"*\"]', NULL, '2023-11-09 05:30:10', '2023-11-09 05:30:10'),
(52, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '61c12a9d95db629c6a28bf9c9c06e50ab271ff3bb47a9f644909d34a4d24e723', '[\"*\"]', NULL, '2023-11-09 05:40:06', '2023-11-09 05:40:06'),
(53, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '36cb7f854795ed19667f4fa3ca2b26794d0bb104d7474b04b00ffadd36aa0e40', '[\"*\"]', NULL, '2023-11-09 05:43:44', '2023-11-09 05:43:44'),
(54, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '6560556854010483adbfa94ce28f8d96b7433bef8cc17e4b53fcd16204c8205c', '[\"*\"]', NULL, '2023-11-09 05:47:09', '2023-11-09 05:47:09'),
(55, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '35bed6adae8f15240359db80286fd027fe2b1518fb9f05d832d71f4321df796c', '[\"*\"]', NULL, '2023-11-09 05:52:35', '2023-11-09 05:52:35'),
(56, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'eabe4613bde3fe6886debe1467dfb75e6154775f6ce6a09c8a4f714b63ee2ea8', '[\"*\"]', NULL, '2023-11-11 06:49:40', '2023-11-11 06:49:40'),
(57, 'App\\adminmodel\\CustomersModel', 57, 'auth_token', '2df034f55475a24765c0eeacc4a65914d3aa2494dda738199f04149ca13d7d33', '[\"*\"]', NULL, '2023-11-11 06:53:33', '2023-11-11 06:53:33'),
(58, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'c596130f9175834d1d5c29355c8a8cff4e8b1dede1a80a7b6224562f821ba7d7', '[\"*\"]', NULL, '2023-11-17 06:30:15', '2023-11-17 06:30:15'),
(59, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'cc59e6f5b11d6fd059e410abd70cec197fb0646f35e282b4b087da936b425b55', '[\"*\"]', NULL, '2023-11-17 06:30:35', '2023-11-17 06:30:35'),
(60, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '00e895ec607fe16e432395adeb4aa7198493a74d7318b143d68beb7b6f16776a', '[\"*\"]', NULL, '2023-11-17 06:47:33', '2023-11-17 06:47:33'),
(61, 'App\\adminmodel\\CustomersModel', 57, 'auth_token', '9a74e5a483f12e1f4768bf02654e8755756f0aa939be92d8167153815f27f9d8', '[\"*\"]', NULL, '2023-11-17 06:48:59', '2023-11-17 06:48:59'),
(62, 'App\\adminmodel\\CustomersModel', 57, 'auth_token', '2cb0f05e51d3639ada1be5e629c30c11b07c8a2e8a8eeae6b99598ec7fc1ddc8', '[\"*\"]', NULL, '2023-11-17 06:50:14', '2023-11-17 06:50:14'),
(63, 'App\\adminmodel\\CustomersModel', 57, 'auth_token', '9905ee2276b54c93d098903e00ccc11967305e1eb8a41b9a77262abb60a373ef', '[\"*\"]', NULL, '2023-11-17 06:50:41', '2023-11-17 06:50:41'),
(64, 'App\\adminmodel\\CustomersModel', 57, 'auth_token', '1a456ce9c69c18834a43e669bc202886211f5ed2f11b5553b771adeaa3d2d551', '[\"*\"]', NULL, '2023-11-17 06:53:05', '2023-11-17 06:53:05'),
(65, 'App\\adminmodel\\CustomersModel', 57, 'auth_token', 'f0d416e2ba130a388dcde2f0b847436876143dc813c41a4ae4235a302bce4260', '[\"*\"]', NULL, '2023-11-17 06:53:05', '2023-11-17 06:53:05'),
(66, 'App\\adminmodel\\CustomersModel', 57, 'auth_token', '16d6532637aedc52974d4bf2b21edd832a17224356684257ceab49f3bca341b0', '[\"*\"]', NULL, '2023-11-17 06:54:11', '2023-11-17 06:54:11'),
(67, 'App\\adminmodel\\CustomersModel', 57, 'auth_token', '936bf5dca7389c7c05a2f1ba29d5cf68f578ee21bc51247d808e32e0539b7bbe', '[\"*\"]', NULL, '2023-11-17 07:04:36', '2023-11-17 07:04:36'),
(68, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '3c098f82ab7d9472d2403d93c2423785e97ed0da310ecbaf0d2d7ac4d8870dd3', '[\"*\"]', NULL, '2023-11-18 01:37:10', '2023-11-18 01:37:10'),
(69, 'App\\adminmodel\\CustomersModel', 57, 'auth_token', '09563051aadcb1096cc1c19fad7a3b00beb318d5451ba147304b7399bd6065cf', '[\"*\"]', NULL, '2023-11-18 09:35:40', '2023-11-18 09:35:40'),
(70, 'App\\adminmodel\\CustomersModel', 58, 'auth_token', '64a36051afa8de45b6744bc58effabc39367bdf7a1940e732ced5de718d632d6', '[\"*\"]', NULL, '2023-11-20 05:48:28', '2023-11-20 05:48:28'),
(71, 'App\\adminmodel\\CustomersModel', 58, 'auth_token', '4035486ed7ea3811ff25c652d51c154a12262200b85bd036834b57031dc28d46', '[\"*\"]', NULL, '2023-11-20 06:43:07', '2023-11-20 06:43:07'),
(72, 'App\\adminmodel\\CustomersModel', 58, 'auth_token', '9e18a8d7dbc7948f51fc8e5778718a6ab544aef48e3d2a1014f01ff4a87e5ffd', '[\"*\"]', NULL, '2023-11-20 06:47:41', '2023-11-20 06:47:41'),
(73, 'App\\adminmodel\\CustomersModel', 59, 'auth_token', 'e4a82087db92b82e4c152da5d5f50563b6899c479270b5a71c30e71adc27b599', '[\"*\"]', NULL, '2023-11-20 09:30:55', '2023-11-20 09:30:55'),
(74, 'App\\adminmodel\\CustomersModel', 60, 'auth_token', '22b99d9d0fb4663bacda6510f15da9c1846091c364fdeac6c00e6c56462bfdb7', '[\"*\"]', NULL, '2023-11-20 09:35:20', '2023-11-20 09:35:20'),
(75, 'App\\adminmodel\\CustomersModel', 61, 'auth_token', '0af5787102aeac83aaccbd62b9e39b512f49f35fa59ee63a22cd7d642413e768', '[\"*\"]', NULL, '2023-11-20 09:37:05', '2023-11-20 09:37:05'),
(76, 'App\\adminmodel\\CustomersModel', 61, 'auth_token', '1c35839d6e432a9a59ca0bedede012665afc81aee7ace325cab786b8f1744560', '[\"*\"]', NULL, '2023-11-20 09:41:12', '2023-11-20 09:41:12'),
(77, 'App\\adminmodel\\CustomersModel', 62, 'auth_token', 'fd071b73f3690fb81812912300493a13d54a5901adfc652cf6bb5ac7964264e0', '[\"*\"]', NULL, '2023-11-20 10:32:20', '2023-11-20 10:32:20'),
(78, 'App\\adminmodel\\CustomersModel', 63, 'auth_token', '45823c2e17ca2f0cf024bd1df7fb062dbc2896bf8b886b920a9853f2be63e529', '[\"*\"]', NULL, '2023-11-20 10:33:07', '2023-11-20 10:33:07'),
(79, 'App\\adminmodel\\CustomersModel', 64, 'auth_token', '602382fa08743c5fb267a1095baa9ad3f38e739b9c13ed5f0dcd952116c933f7', '[\"*\"]', NULL, '2023-11-20 10:36:46', '2023-11-20 10:36:46'),
(80, 'App\\adminmodel\\CustomersModel', 63, 'auth_token', '92eaf5ec35d80d2b3b2cf7a67a99711a2336f3872c41fd360056bc5827d6ee3e', '[\"*\"]', NULL, '2023-11-20 10:36:47', '2023-11-20 10:36:47'),
(81, 'App\\adminmodel\\CustomersModel', 63, 'auth_token', '4dc9f9155cb4aae52e7cdf6a1a7b8f0167863b790ea03a0de36e5264b2bf916a', '[\"*\"]', NULL, '2023-11-20 10:36:48', '2023-11-20 10:36:48'),
(82, 'App\\adminmodel\\CustomersModel', 63, 'auth_token', '5571ddbbe737e1ea3804c3bdbe2f27bcb5c20beb320a5bf82a349bcf4df026be', '[\"*\"]', NULL, '2023-11-20 10:36:48', '2023-11-20 10:36:48'),
(83, 'App\\adminmodel\\CustomersModel', 63, 'auth_token', '79cda0d01cd62e3e9371ccaea55fe31c32987ca39da5ad0781fc0eb922d24bbe', '[\"*\"]', NULL, '2023-11-20 10:36:48', '2023-11-20 10:36:48'),
(84, 'App\\adminmodel\\CustomersModel', 63, 'auth_token', 'fa2996d4673a068da25c5ce2616a0330b37740e9eadf81cff176dd11f9a33190', '[\"*\"]', NULL, '2023-11-20 10:36:48', '2023-11-20 10:36:48'),
(85, 'App\\adminmodel\\CustomersModel', 63, 'auth_token', 'cd378347ff980ce9902fb1916cdea504459cfefa529b56cc093eaf901ae19b6b', '[\"*\"]', NULL, '2023-11-20 10:36:49', '2023-11-20 10:36:49'),
(86, 'App\\adminmodel\\CustomersModel', 63, 'auth_token', '946c32c7b10c5bd6653e92c6f812ae7cd4770abefd0f55e3f6b4813ab65727eb', '[\"*\"]', NULL, '2023-11-20 10:36:49', '2023-11-20 10:36:49'),
(87, 'App\\adminmodel\\CustomersModel', 63, 'auth_token', '3b7d7d87155a5a56d1ee7779cf99f8a009cac52ba0f86ed94b6f906cbbc63baa', '[\"*\"]', NULL, '2023-11-20 10:36:49', '2023-11-20 10:36:49'),
(88, 'App\\adminmodel\\CustomersModel', 62, 'auth_token', 'e6263a1d0cb3f51f0740026d91737ce10efb5ecc669655f030b070bd9d794e9b', '[\"*\"]', NULL, '2023-11-20 10:38:39', '2023-11-20 10:38:39'),
(89, 'App\\adminmodel\\CustomersModel', 64, 'auth_token', 'cad1d5b20891b8abb25c1c69e86277f0f58aedd00b2b0c244a6d54750d066cbf', '[\"*\"]', NULL, '2023-11-20 23:26:45', '2023-11-20 23:26:45'),
(90, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'b48d960ffe5f17b9f4f19a52103d8a0fd46a2aa6b97a4ab9b790536df86b1519', '[\"*\"]', NULL, '2023-11-20 23:47:10', '2023-11-20 23:47:10'),
(91, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '5abd55ad7714e2ba46a94ffceb20a75543a35cb5cd0c12bf043a834d1740839f', '[\"*\"]', NULL, '2023-11-21 01:07:16', '2023-11-21 01:07:16'),
(92, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '36d2c26e0c16ca5ced1dc55cd36beff4271302b8683cd4b7eb9dda204c0944df', '[\"*\"]', NULL, '2023-11-21 02:17:06', '2023-11-21 02:17:06'),
(93, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '199abde895a69df96aae19396a8330e8119c49242551a43eccc1d2b21b76be46', '[\"*\"]', NULL, '2023-11-21 02:26:17', '2023-11-21 02:26:17'),
(94, 'App\\adminmodel\\CustomersModel', 65, 'auth_token', 'b185a402ed03c876adc62558b9de52d36773a60badb8c258a948d17615515fbf', '[\"*\"]', NULL, '2023-11-21 02:43:00', '2023-11-21 02:43:00'),
(95, 'App\\adminmodel\\CustomersModel', 66, 'auth_token', '204c8e21d598f7611629da8d938c7c1c044e63d67cc9476d4bf9311d3301d4f2', '[\"*\"]', NULL, '2023-11-21 02:46:02', '2023-11-21 02:46:02'),
(96, 'App\\adminmodel\\CustomersModel', 66, 'auth_token', 'db388af0bda556eca7938c12be2c8b0c51039d91af343e680b0d387ae1a169c3', '[\"*\"]', NULL, '2023-11-21 02:47:08', '2023-11-21 02:47:08'),
(97, 'App\\adminmodel\\CustomersModel', 66, 'auth_token', '2966a6fe713a0a8207c47d892eef7d602f24dee297d541367fc02fa9227ae13f', '[\"*\"]', NULL, '2023-11-21 02:47:33', '2023-11-21 02:47:33'),
(98, 'App\\adminmodel\\CustomersModel', 67, 'auth_token', 'af0f7abae2e35269e9e1158dc8c643bdfeb27cc11a6972859f6efe55c253c707', '[\"*\"]', NULL, '2023-11-21 02:58:12', '2023-11-21 02:58:12'),
(99, 'App\\adminmodel\\CustomersModel', 67, 'auth_token', '757568043a4b48ecf5ab3b2e07ae8ebf14055828801dab0968aeacee36e02da8', '[\"*\"]', NULL, '2023-11-21 02:59:16', '2023-11-21 02:59:16'),
(100, 'App\\adminmodel\\CustomersModel', 68, 'auth_token', '7caa147815d6a122457e6c429e398b927ed2367fb00a31341c337062aae98d0f', '[\"*\"]', NULL, '2023-11-21 03:10:01', '2023-11-21 03:10:01'),
(101, 'App\\adminmodel\\CustomersModel', 68, 'auth_token', '30e6a3e61e6b2c8e943a8b688335724ac8967d64602b67351c0fb92d62654c08', '[\"*\"]', NULL, '2023-11-21 03:10:58', '2023-11-21 03:10:58'),
(102, 'App\\adminmodel\\CustomersModel', 68, 'auth_token', '206e282c8cb640492319d05a8d01dfeac407f159ab3ddc34d0c854831798495e', '[\"*\"]', NULL, '2023-11-21 03:23:03', '2023-11-21 03:23:03'),
(103, 'App\\adminmodel\\CustomersModel', 68, 'auth_token', '9d51d595e9dc934b48b0c5792876dd100bd7824e5ae8ae63017a0b3fef1bf352', '[\"*\"]', NULL, '2023-11-21 03:47:14', '2023-11-21 03:47:14'),
(104, 'App\\adminmodel\\CustomersModel', 68, 'auth_token', '3e4a52982ace5b7497fb3a9a8b50bf4dd8c46276f1f2313dbb09c3dfaa4427c1', '[\"*\"]', NULL, '2023-11-21 03:47:46', '2023-11-21 03:47:46'),
(105, 'App\\adminmodel\\CustomersModel', 68, 'auth_token', 'b6d51d13ef0dbfc6c36f97a978479c06823228c81fedd3cb27115e6f47badb80', '[\"*\"]', NULL, '2023-11-21 05:04:37', '2023-11-21 05:04:37'),
(106, 'App\\adminmodel\\CustomersModel', 69, 'auth_token', 'bd5cd7f8366a26d6159def1d428e1dc933b89fb206b7ecb558cfd0910161474d', '[\"*\"]', NULL, '2023-11-21 05:05:08', '2023-11-21 05:05:08'),
(107, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '5db215c3710e767638be1dd026993c73e98883298722cc151db06d6c8c3420d7', '[\"*\"]', NULL, '2023-11-21 05:23:45', '2023-11-21 05:23:45'),
(108, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'edcb14816ee6162b52a73bbe30495be7f7c9ebb1a06c377cc46000729a811966', '[\"*\"]', NULL, '2023-11-21 05:24:51', '2023-11-21 05:24:51'),
(109, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '3ad51d001054f053018a0f2c8faae4f01d081224227b36cc9d8e90dfeeac664f', '[\"*\"]', NULL, '2023-11-21 06:14:05', '2023-11-21 06:14:05'),
(110, 'App\\adminmodel\\CustomersModel', 70, 'auth_token', '9bed3ccc248c7690cb7ef962bcce7d7e5b559e3de4d68f14ce7b41cf256634b7', '[\"*\"]', NULL, '2023-11-21 07:12:22', '2023-11-21 07:12:22'),
(111, 'App\\adminmodel\\CustomersModel', 71, 'auth_token', 'a7f0cd7c29f007d92f7d0fa9fccd432449d9e5a91da3614a71527c3bb3df5af8', '[\"*\"]', NULL, '2023-11-21 07:13:47', '2023-11-21 07:13:47'),
(112, 'App\\adminmodel\\CustomersModel', 70, 'auth_token', '2f34560a06daf690c7946a762f07c3ea06b11d77e7bd56a0e6f6ead3688918fd', '[\"*\"]', NULL, '2023-11-21 07:14:34', '2023-11-21 07:14:34'),
(113, 'App\\adminmodel\\CustomersModel', 72, 'auth_token', 'b8687b4d1fe554e014a6c15e168fde08cf44367cd1abb4106040dcb6137399be', '[\"*\"]', NULL, '2023-11-21 07:15:07', '2023-11-21 07:15:07'),
(114, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'c737af8388c321abdf465ee15cbd0bdc3059df077798fb66ab4bce3fd9a55914', '[\"*\"]', NULL, '2023-11-21 07:23:54', '2023-11-21 07:23:54'),
(115, 'App\\adminmodel\\CustomersModel', 58, 'auth_token', '202338a57b8ed3d2d60e367967682fcdd4e122f84c3c9bbc8dcbbf279bdcfc4d', '[\"*\"]', NULL, '2023-11-22 01:11:25', '2023-11-22 01:11:25'),
(116, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'ead074ce1ab0d80256f5482c671df82fcb7d363265c0b45a62b49cac3a36d1c1', '[\"*\"]', NULL, '2023-11-22 01:54:04', '2023-11-22 01:54:04'),
(117, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'db6fae4c3116a8ae69e71320c8a0c8e38a9a4ea07d75be9970879cffcf330936', '[\"*\"]', NULL, '2023-11-22 01:55:09', '2023-11-22 01:55:09'),
(118, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '039edc52925ea2081e7c5aaf5bb00a5056e23d0c6d1764f2602f9d01e9877be8', '[\"*\"]', NULL, '2023-11-22 06:35:30', '2023-11-22 06:35:30'),
(119, 'App\\adminmodel\\HostModel', 1, 'auth_token', '41b8931ad42588af4fe66bf90b6d070571ca0a44a2727b58c394907cead7a272', '[\"*\"]', NULL, '2023-11-22 08:09:16', '2023-11-22 08:09:16'),
(120, 'App\\adminmodel\\HostModel', 1, 'auth_token', 'e50d7eca0dbd0190be0fc42637cbacd5b063a6754a354170e87298e8f95c0a16', '[\"*\"]', NULL, '2023-11-22 08:12:23', '2023-11-22 08:12:23'),
(121, 'App\\adminmodel\\HostModel', 1, 'auth_token', '4ec2d3a4c368cbd49d56c24b6a497a05a8cf715dffb718befa71e229e3c372e2', '[\"*\"]', NULL, '2023-11-22 08:13:05', '2023-11-22 08:13:05'),
(122, 'App\\adminmodel\\HostModel', 1, 'auth_token', '34ee007802ed9cb0a336ea6290728778d686557dfebf71b02ea7bfce1d9b7b64', '[\"*\"]', NULL, '2023-11-22 08:18:04', '2023-11-22 08:18:04'),
(123, 'App\\adminmodel\\HostModel', 1, 'auth_token', '57da44b378d020cc35ff8094078942a25713aa5516b0858d290113257379dd04', '[\"*\"]', NULL, '2023-11-22 08:20:22', '2023-11-22 08:20:22'),
(124, 'App\\adminmodel\\HostModel', 1, 'auth_token', '9b3c5fd75061e9fce9e3901f7639db61f14b1a8dec64f4366320a66a8369302f', '[\"*\"]', NULL, '2023-11-22 08:21:32', '2023-11-22 08:21:32'),
(125, 'App\\adminmodel\\HostModel', 1, 'auth_token', '5c9c110ecc6f222be11a057b0ad1675e41cc09f4a5d96a74f4ac36ed74eefedd', '[\"*\"]', NULL, '2023-11-22 08:22:32', '2023-11-22 08:22:32'),
(126, 'App\\adminmodel\\HostModel', 1, 'auth_token', '2972e091aca9851c46fd3d2accee3f41ec3d2935e55d3e1cee62fea90ef992ed', '[\"*\"]', NULL, '2023-11-22 08:22:45', '2023-11-22 08:22:45'),
(127, 'App\\adminmodel\\HostModel', 1, 'auth_token', 'd386d0ac650c5e6aad3eed07b0f7a767acec78f042fc62a86612a80c3a4b1713', '[\"*\"]', NULL, '2023-11-22 08:25:32', '2023-11-22 08:25:32'),
(128, 'App\\adminmodel\\HostModel', 1, 'auth_token', '889ae6aaa3792ab94d48dd0c6c2f9ec86c7c834aa2790d184596169e7b013647', '[\"*\"]', NULL, '2023-11-22 08:27:00', '2023-11-22 08:27:00'),
(129, 'App\\adminmodel\\HostModel', 1, 'auth_token', '478abca11234d9d28a124369b595a42e1e7f1e8520e7089476c30bb767f99343', '[\"*\"]', NULL, '2023-11-22 08:28:50', '2023-11-22 08:28:50'),
(130, 'App\\adminmodel\\HostModel', 1, 'auth_token', '73067862dabd66292b999fc6ddcafaa481e97274526194e75a4b7d0ce167dd44', '[\"*\"]', NULL, '2023-11-22 08:29:13', '2023-11-22 08:29:13'),
(131, 'App\\adminmodel\\HostModel', 1, 'auth_token', 'a3ad1c98bf7c73105f9411541e11cce910aedc9b9aed8d51d685bd28c87f2469', '[\"*\"]', NULL, '2023-11-22 08:31:34', '2023-11-22 08:31:34'),
(132, 'App\\adminmodel\\HostModel', 1, 'auth_token', '13b8e17b6733882b52f7a89eb2e9afe45d49613a69d3efa02c5167a710aba1e2', '[\"*\"]', NULL, '2023-11-22 08:33:39', '2023-11-22 08:33:39'),
(133, 'App\\adminmodel\\HostModel', 1, 'auth_token', '051e452ccc778713e49e8a4e912914215dde0e6744d8af9f9c7e0e9d648ea851', '[\"*\"]', NULL, '2023-11-22 08:34:02', '2023-11-22 08:34:02'),
(134, 'App\\adminmodel\\HostModel', 1, 'auth_token', 'ffb3dda06425b449d998a09554a2acf76b604a41ea8f912ba859acf2d15febe9', '[\"*\"]', NULL, '2023-11-22 08:34:30', '2023-11-22 08:34:30'),
(135, 'App\\adminmodel\\HostModel', 1, 'auth_token', '355fc5e813451411eb8d00f88a0773be28c0bb3397d070358f25df22d7ee1617', '[\"*\"]', NULL, '2023-11-22 08:34:51', '2023-11-22 08:34:51'),
(136, 'App\\adminmodel\\HostModel', 1, 'auth_token', '1659e2bcea0c7daa3eb195600a848c080e47a2098810fa2b3a5457a5ec0e0739', '[\"*\"]', NULL, '2023-11-22 08:35:25', '2023-11-22 08:35:25'),
(137, 'App\\adminmodel\\HostModel', 1, 'auth_token', 'dd5099951c1a691410db236bad4324dbfc2328084c32c34a8ad0d985394976a6', '[\"*\"]', NULL, '2023-11-22 08:36:01', '2023-11-22 08:36:01'),
(138, 'App\\adminmodel\\HostModel', 1, 'auth_token', '381ef48f596a940f3eb856bea6edf0e750bd5864e91b7bab6a6262267e6009bb', '[\"*\"]', NULL, '2023-11-22 08:37:25', '2023-11-22 08:37:25'),
(139, 'App\\adminmodel\\HostModel', 1, 'auth_token', '19407960a6d6d53b3e5be4e5ea264086fdaa0497eb94b2f23f7b0b420c86b5bf', '[\"*\"]', NULL, '2023-11-22 23:41:47', '2023-11-22 23:41:47'),
(140, 'App\\adminmodel\\HostModel', 1, 'auth_token', 'f8fc2f04ed32b9556d3e0e5661e0ce8b4b2ddfb7f702b1404b817ed06649c6f9', '[\"*\"]', NULL, '2023-11-22 23:41:47', '2023-11-22 23:41:47'),
(141, 'App\\adminmodel\\HostModel', 1, 'auth_token', 'cc1a62d8457e94b1292d07ccd13b15aeb675ebae6857244f405f09783af604cf', '[\"*\"]', NULL, '2023-11-22 23:50:07', '2023-11-22 23:50:07'),
(142, 'App\\adminmodel\\HostModel', 1, 'auth_token', 'aa635300631d82762c8fcf84a19fbb774b8fe259a2e8dffcb206a3f2d5ee8c76', '[\"*\"]', NULL, '2023-11-22 23:51:11', '2023-11-22 23:51:11'),
(143, 'App\\adminmodel\\HostModel', 1, 'auth_token', '8db952a802ca85501a7695b580e3c70c74209af24404fef2437f080ba293eb68', '[\"*\"]', NULL, '2023-11-23 00:14:19', '2023-11-23 00:14:19'),
(144, 'App\\adminmodel\\HostModel', 1, 'auth_token', '74a4671dccd12d444aaeeb47928a79e4265549fe7a961ee583ccf716254ea0c0', '[\"*\"]', NULL, '2023-11-23 00:56:02', '2023-11-23 00:56:02'),
(145, 'App\\adminmodel\\HostModel', 1, 'auth_token', '2a89e6d650388cf4a677627ee435d05f994ce727548265961d8855c822926e46', '[\"*\"]', NULL, '2023-11-23 01:19:14', '2023-11-23 01:19:14'),
(146, 'App\\adminmodel\\CustomersModel', 73, 'auth_token', '4d6b91d89982fa68d013d40f326f7c5bfc0ebb04614ae8aa606e75bc3b8373d3', '[\"*\"]', NULL, '2023-11-23 02:07:20', '2023-11-23 02:07:20'),
(147, 'App\\adminmodel\\HostModel', 1, 'auth_token', '68ac95a5895006b2277c164d6fe182a049b684a4a6fb48a13d7cb8b402785927', '[\"*\"]', NULL, '2023-11-23 04:40:48', '2023-11-23 04:40:48'),
(148, 'App\\adminmodel\\HostModel', 1, 'auth_token', '3ad87ca303e718ae8fab71d8b4d061b22a2f52fea940cb4b765ae4f669f4a690', '[\"*\"]', NULL, '2023-11-23 05:02:07', '2023-11-23 05:02:07'),
(149, 'App\\adminmodel\\HostModel', 1, 'auth_token', '55c61b461f22301e95d700b1a854221c456e231be4b2589c5498b69faeb94de3', '[\"*\"]', NULL, '2023-11-23 05:02:42', '2023-11-23 05:02:42'),
(150, 'App\\adminmodel\\HostModel', 1, 'auth_token', '56ec89d4eedd19502b415660b1047d5ebb1b0d79cbc8d216274c237c38fd2c2a', '[\"*\"]', NULL, '2023-11-23 05:02:55', '2023-11-23 05:02:55'),
(151, 'App\\adminmodel\\HostModel', 1, 'auth_token', 'a5cdf6ac9d87c6e6a47df468fc66ce58ffe616fad93f19a9fb1fcd9d1becabde', '[\"*\"]', NULL, '2023-11-23 05:06:33', '2023-11-23 05:06:33'),
(152, 'App\\adminmodel\\HostModel', 1, 'auth_token', '9fc1492adc7d516112ba0a0fcd7f627cad3a89d9c9b8a914c90a068a89a33d2d', '[\"*\"]', NULL, '2023-11-23 05:06:42', '2023-11-23 05:06:42'),
(153, 'App\\adminmodel\\HostModel', 1, 'auth_token', 'd6ba68f6e28b8a175cb86de545b8c31026ccacdcd925d7e093cf5974cac9f351', '[\"*\"]', NULL, '2023-11-23 05:14:40', '2023-11-23 05:14:40'),
(154, 'App\\adminmodel\\CustomersModel', 62, 'auth_token', '61e0b171cc8573f3d6821059ab8ba88b7c139c657a2681802ad785971c22aa99', '[\"*\"]', NULL, '2023-11-23 08:25:01', '2023-11-23 08:25:01'),
(155, 'App\\adminmodel\\CustomersModel', 74, 'auth_token', '602da4842b56cc24c595e22ef6ba9a6269c2e4f01792f4f29dcee29a1cfd6c70', '[\"*\"]', NULL, '2023-11-24 03:47:14', '2023-11-24 03:47:14'),
(156, 'App\\adminmodel\\CustomersModel', 74, 'auth_token', 'aab7260015df7892f7a9f9835cb31640e70db00f38810b9fd2996d498a5e488c', '[\"*\"]', NULL, '2023-11-24 03:55:51', '2023-11-24 03:55:51'),
(157, 'App\\adminmodel\\CustomersModel', 73, 'auth_token', '7252f5ae8a673855c9622e24aff9133f3f1e92afe4325c652679efe981377637', '[\"*\"]', NULL, '2023-11-24 04:09:45', '2023-11-24 04:09:45'),
(158, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '41d3adeba6dab2ab3d34546a1958a31463bdcc1387234e943d1d51e79c65b3c0', '[\"*\"]', NULL, '2023-11-30 02:21:33', '2023-11-30 02:21:33'),
(159, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'b1354c95c70488035a41cbac6d3100af4139c4d7920058b03e3242dfabbe2743', '[\"*\"]', NULL, '2023-11-30 02:22:23', '2023-11-30 02:22:23'),
(160, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '663e7b835593e1802b49aeaf18ac39e5caa32a38d4a5e86d55914326be67016c', '[\"*\"]', NULL, '2023-11-30 02:25:15', '2023-11-30 02:25:15'),
(161, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '37ef588eb76751d3b4b6f3968630cdd6fcc1b6ce2870adae2cf8c2d04c9eae1f', '[\"*\"]', NULL, '2023-11-30 02:25:36', '2023-11-30 02:25:36'),
(162, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'a36af0135d67e0d0eeb6ac2d7100b2631e549fbd8be73e8a7f5dacd6a6914e55', '[\"*\"]', NULL, '2023-11-30 02:29:15', '2023-11-30 02:29:15'),
(163, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '95fb6ce9d2771735083456b9537ab89442a5d66c39071ee0fc51b3b425e40261', '[\"*\"]', NULL, '2023-11-30 02:30:36', '2023-11-30 02:30:36'),
(164, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '5204d30d504dfb053059d5bd018c5b2254d55a8a6d5cd7a89fec06ff5e44deb9', '[\"*\"]', NULL, '2023-11-30 02:30:36', '2023-11-30 02:30:36'),
(165, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '8e877a77cb1e87e1aa249a7b91ad8ea9b871e95a609254a3050dbc292895fd02', '[\"*\"]', NULL, '2023-11-30 02:31:31', '2023-11-30 02:31:31'),
(166, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '2bf6136ed2ae8add96309af44d6d993d26d95507b91ad533248eaf4b19eedda2', '[\"*\"]', NULL, '2023-11-30 02:42:07', '2023-11-30 02:42:07'),
(167, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '38f332d96e867661dc5b1204b457e3aea85caa81b20d206cdda2930b8dcf8c3a', '[\"*\"]', NULL, '2023-11-30 02:44:10', '2023-11-30 02:44:10'),
(168, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '3f9bf9fa06f9e4fa5d383c7e31e43cb752c1ddc00efefbb847febe86f6ccfc5e', '[\"*\"]', NULL, '2023-11-30 04:19:51', '2023-11-30 04:19:51'),
(169, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '3c25d4e178c2e04cd1351026f40a21d0dfe5b5344de4fec55c77883c478011bd', '[\"*\"]', NULL, '2023-11-30 04:21:28', '2023-11-30 04:21:28'),
(170, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '30c0cc1bb5d2d7c64dc33b427df22422ee177e47d26083e8195eb02702f69480', '[\"*\"]', NULL, '2023-11-30 04:22:55', '2023-11-30 04:22:55'),
(171, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'b97b8536058ffa404281e2a5227485af74fe96bd91dce22443831b7e6fce039a', '[\"*\"]', NULL, '2023-11-30 04:24:13', '2023-11-30 04:24:13'),
(172, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '927f7492bb002f80120c8d775dc2a522c57d356ed5b4ddfa14185dc9afff5863', '[\"*\"]', NULL, '2023-11-30 04:25:01', '2023-11-30 04:25:01'),
(173, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'e9e5fe53b1ecd2ceb48a0d9328c6a17d418dc131551d96f6f1c2c66494bea785', '[\"*\"]', NULL, '2023-11-30 04:27:12', '2023-11-30 04:27:12'),
(174, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'e0a26b82d160bdf16d96a5e1b3770c969c4a9ce347090b634d87063d77377e65', '[\"*\"]', NULL, '2023-11-30 04:27:50', '2023-11-30 04:27:50'),
(175, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'bc16ff084764598d2f6083e63ae4a01abd81fff659147b18bcbc9a06564951f7', '[\"*\"]', NULL, '2023-11-30 04:28:41', '2023-11-30 04:28:41'),
(176, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '1500308d60fbb7c60b6f4708b028d940c34dba56ad3fb66b2b28c1eed6589a2a', '[\"*\"]', NULL, '2023-11-30 05:11:13', '2023-11-30 05:11:13'),
(177, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'cbe7b503add54d51e3151cd1f71555908691917f46a8a1b73aa205ae418bf613', '[\"*\"]', NULL, '2023-11-30 05:11:43', '2023-11-30 05:11:43'),
(178, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '1e3c92256140b9abc9f9fdcd1912e53cafdbc720570bc88bdefeffeee1147758', '[\"*\"]', NULL, '2023-11-30 05:13:09', '2023-11-30 05:13:09'),
(179, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '28b3d22c38ca8a803d6a192c4c0f6cf304845bd1953b66b8930c1b0146a2ee84', '[\"*\"]', NULL, '2023-11-30 05:19:29', '2023-11-30 05:19:29'),
(180, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '5673d77b13dd2377447b85ffc68efd5283c44a1f1abf1e0a1786379cc3dbc582', '[\"*\"]', NULL, '2023-11-30 05:22:40', '2023-11-30 05:22:40'),
(181, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'f263a5bc0982488aca8fb43e172304f2bae6ef71d2b29d4cb86e3fc4b2e3cd68', '[\"*\"]', NULL, '2023-11-30 05:24:24', '2023-11-30 05:24:24'),
(182, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '21af9e307741d5a78c51c737261eb56add74bd7134024d6ae8aad71e341954fd', '[\"*\"]', NULL, '2023-11-30 05:39:32', '2023-11-30 05:39:32'),
(183, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '4487f80236a9f8cc50611308b5a8d40407bbf01216ebfe8f13fb01c2a21a89fb', '[\"*\"]', NULL, '2023-11-30 05:40:10', '2023-11-30 05:40:10'),
(184, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '0d767b94950a05becce913694554854b0b39c4b1d7ae4c92e4af9efc29603181', '[\"*\"]', NULL, '2023-11-30 05:40:32', '2023-11-30 05:40:32'),
(185, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '0a5c02ced622852b7852131920559603aaf496ca29706bbe42ba33e4a83d2c2a', '[\"*\"]', NULL, '2023-11-30 05:40:52', '2023-11-30 05:40:52'),
(186, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '79273f2b73f278599b46380eef73978198a3ae4d6906f09075bb45d27cb11524', '[\"*\"]', NULL, '2023-11-30 05:50:20', '2023-11-30 05:50:20'),
(187, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'f9361c2e0aed1ad02e9661f0dd4a251c464dc56e20954886446dd2a4010e04e8', '[\"*\"]', NULL, '2023-11-30 09:00:15', '2023-11-30 09:00:15'),
(188, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'dece8586f2671260ee72e389d504b10c7d1d4da58f6e566cab7f12c8d3528051', '[\"*\"]', NULL, '2023-12-01 06:37:42', '2023-12-01 06:37:42'),
(189, 'App\\adminmodel\\HostModel', 1, 'auth_token', '926563b7c6de9db7f068d49eac9d43bea4592242f8767c91847f3b75467ca29c', '[\"*\"]', NULL, '2023-12-01 07:53:03', '2023-12-01 07:53:03'),
(190, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '5527e53dc7339c4d96b075921bff6648a9472cd3e74122c3799d752532b9ed24', '[\"*\"]', NULL, '2023-12-05 01:44:36', '2023-12-05 01:44:36'),
(191, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '7bf32aae698a604b66cb7c50c65d7c8ee0a12ece506f4fe22b6d33fc3c84fe7f', '[\"*\"]', NULL, '2023-12-05 01:45:27', '2023-12-05 01:45:27'),
(192, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'e5821f2ef6509c76462a0d62fa3f8a03a91b94a95d77949d7fe0abdd122e473a', '[\"*\"]', NULL, '2023-12-05 01:52:04', '2023-12-05 01:52:04'),
(193, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '3c16fbb7da582035ace2f6eec036f6239aa105772b5d2d90021a84292c645561', '[\"*\"]', NULL, '2023-12-06 02:28:15', '2023-12-06 02:28:15'),
(194, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '71398ca8ae5e192e529d6e81f98257a1a4317b8c8582ee10efa6ac6028651553', '[\"*\"]', NULL, '2023-12-06 02:35:09', '2023-12-06 02:35:09'),
(195, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '94e565bf2148bddb31af57188d4dd7c305bbbca4bc31f2a017c8063dee0e9dca', '[\"*\"]', NULL, '2023-12-06 02:46:01', '2023-12-06 02:46:01'),
(196, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'c2708553233955da1c06d99a1014c0294b72771e9b222526c4d1224a4e25926f', '[\"*\"]', NULL, '2023-12-06 04:17:31', '2023-12-06 04:17:31'),
(197, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'daa6d99054b5843b724866bc7b2ade964f004f1dde0adaa00750b66957d64190', '[\"*\"]', NULL, '2023-12-06 04:29:47', '2023-12-06 04:29:47'),
(198, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '685026de84a2da02f92c64db6bea8780158cb121ab4b5d04c0e457dfd418b638', '[\"*\"]', NULL, '2023-12-06 04:31:46', '2023-12-06 04:31:46'),
(199, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'f2904fd5a827b892d75adb77525b81c5e82d97ff51c5ebd4813ee45d280e0608', '[\"*\"]', NULL, '2023-12-06 04:56:53', '2023-12-06 04:56:53'),
(200, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'db93e4c2656b41ecf1845492aa46e98d71efa797dbca4db5559b96a63065612f', '[\"*\"]', NULL, '2023-12-06 04:57:38', '2023-12-06 04:57:38'),
(201, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '5d42cd61ac1b524b72555242a365f2911feed4265f8a7314aa1d72f9b33d83c8', '[\"*\"]', NULL, '2023-12-06 04:58:06', '2023-12-06 04:58:06'),
(202, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'd6b4eafe8952a9de5bb3c0ae54a67e82536c41c6147735d0f28b077ed3993f39', '[\"*\"]', NULL, '2023-12-07 01:50:56', '2023-12-07 01:50:56'),
(203, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '96a1e67a16d5e8d73dd86c0241adb0df74649304001d6d58d2ddecaef344b5fa', '[\"*\"]', NULL, '2023-12-07 01:52:20', '2023-12-07 01:52:20'),
(204, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '47bba6e29459b394b3d4ba92f5ef243f769690b9a974592ed66eb8ce7866c373', '[\"*\"]', NULL, '2023-12-07 01:55:08', '2023-12-07 01:55:08'),
(205, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '8830979a44de8b9bbda817965238a30b2900a6302d77baea5095d1b113a10f6c', '[\"*\"]', NULL, '2023-12-07 01:55:36', '2023-12-07 01:55:36'),
(206, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '822ea321b5a99986316ad4320106fbc797c0610f356371af9e1be4bbdb3fc4da', '[\"*\"]', NULL, '2023-12-07 01:57:32', '2023-12-07 01:57:32'),
(207, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '2044adaee1b1643c7199450e1aa05a6be508f201ba422f318eda9e1aa55b10b3', '[\"*\"]', NULL, '2023-12-07 02:00:02', '2023-12-07 02:00:02'),
(208, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '7a27866a3db297188b7bb5eddabd55422b00a643d9a1aff717e9fd3dc983a24e', '[\"*\"]', NULL, '2023-12-11 03:39:17', '2023-12-11 03:39:17'),
(209, 'App\\adminmodel\\CustomersModel', 73, 'auth_token', 'f8e24bd0edf4f04ff0214bcc2669755401c95b3358a0915725459e3dd0b27a43', '[\"*\"]', NULL, '2023-12-11 06:44:51', '2023-12-11 06:44:51'),
(210, 'App\\adminmodel\\HostModel', 2, 'auth_token', 'a7f7e0ad62a6fb5c347906ccf5eee945dd78f117084237eee0d3e1710779d5cc', '[\"*\"]', NULL, '2023-12-13 01:45:24', '2023-12-13 01:45:24'),
(211, 'App\\adminmodel\\CustomersModel', 74, 'auth_token', 'acfd8c42ac8087e7fa26b16f10d155afa85c9da62e84e26c6dfe7d6a41ad17b8', '[\"*\"]', NULL, '2023-12-13 01:49:46', '2023-12-13 01:49:46'),
(212, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', '255ac99ced6673d620f13c7e6b9b1058908326659508fb65763496fcc9a599a7', '[\"*\"]', NULL, '2023-12-14 08:18:31', '2023-12-14 08:18:31'),
(213, 'App\\adminmodel\\HostModel', 3, 'auth_token', '6768d32218cf782a325ec062b61e693fee7f142ff0f945bad555e6b1a01bad0a', '[\"*\"]', NULL, '2023-12-15 06:02:11', '2023-12-15 06:02:11'),
(214, 'App\\adminmodel\\CustomersModel', 62, 'auth_token', '7be9e0a4d151171b04e019e5614b34d96e62a62d4163cd0132a4c9b3e0ee3e15', '[\"*\"]', NULL, '2023-12-15 06:22:26', '2023-12-15 06:22:26'),
(215, 'App\\adminmodel\\HostModel', 3, 'auth_token', 'c84c66c748bbb1915854ae546ce3cf44ba3652f847f4be9b6cf3ccc07a09ed7a', '[\"*\"]', NULL, '2023-12-18 01:41:53', '2023-12-18 01:41:53'),
(216, 'App\\adminmodel\\CustomersModel', 62, 'auth_token', '4c6635fa20245cc90673a2c4e2fdb95208fdacc30b2fc29677b6db7ee738aad7', '[\"*\"]', NULL, '2023-12-18 03:38:03', '2023-12-18 03:38:03'),
(217, 'App\\adminmodel\\HostModel', 3, 'auth_token', '34cad5d3bbc60011a9f6c418366368308adb95f1de3eccc6000dfd410c161571', '[\"*\"]', NULL, '2023-12-18 03:49:10', '2023-12-18 03:49:10'),
(218, 'App\\adminmodel\\HostModel', 3, 'auth_token', '5e80cd88c9d259dc2d8f88bda7d9249228bfbbc04ee5a207455530500b062043', '[\"*\"]', NULL, '2023-12-18 03:51:00', '2023-12-18 03:51:00'),
(219, 'App\\adminmodel\\HostModel', 3, 'auth_token', '049fd8cfef8cc3dcdb3848c2cef0bf3b512b9db39b148e1e013cb082d9284af4', '[\"*\"]', NULL, '2023-12-18 05:59:55', '2023-12-18 05:59:55'),
(220, 'App\\adminmodel\\HostModel', 3, 'auth_token', 'f153d14e0ec065c21eb8324e143b5289ae2500bd9a90e044cd53fa98c6a161b0', '[\"*\"]', NULL, '2023-12-18 06:04:59', '2023-12-18 06:04:59'),
(221, 'App\\adminmodel\\HostModel', 3, 'auth_token', '4a8c6647ddadfb63f6bf10327baba65d08524196d941572bf294a1fbe538082d', '[\"*\"]', NULL, '2023-12-18 06:27:00', '2023-12-18 06:27:00'),
(222, 'App\\adminmodel\\HostModel', 3, 'auth_token', 'ccc1131d098ac871ffd454a6242be1d44981dd8898ed635c94444029728ca0fd', '[\"*\"]', NULL, '2023-12-18 06:38:59', '2023-12-18 06:38:59'),
(223, 'App\\adminmodel\\CustomersModel', 64, 'auth_token', 'c1fed3c2c34603f0e37f674693bd8f8a75c1437831443ec4232ea1b87f96b8ee', '[\"*\"]', NULL, '2023-12-19 04:22:25', '2023-12-19 04:22:25'),
(224, 'App\\adminmodel\\HostModel', 3, 'auth_token', '23fca93b845ece7890a25aabf6cef4b1cf859b73493c7189c72084643c6baab5', '[\"*\"]', NULL, '2023-12-19 04:50:31', '2023-12-19 04:50:31'),
(225, 'App\\adminmodel\\HostModel', 3, 'auth_token', '1b856bf09aa8c9ce80bb2d00c0a19e8de0974d13fed656fbd9f2665bdb253bd3', '[\"*\"]', NULL, '2023-12-19 04:50:44', '2023-12-19 04:50:44'),
(226, 'App\\adminmodel\\HostModel', 3, 'auth_token', 'c5dff24cdc892f59ca1eea84ef86e4259ed5827ffcff6f3202e9ee898e8ef0c1', '[\"*\"]', NULL, '2023-12-19 04:51:33', '2023-12-19 04:51:33'),
(227, 'App\\adminmodel\\CustomersModel', 75, 'auth_token', '6afbdbcf3e6378a430e8f22d104e5b59bc26e42e722c4c3f83077c5c97f14ef9', '[\"*\"]', NULL, '2023-12-19 10:59:35', '2023-12-19 10:59:35'),
(228, 'App\\adminmodel\\CustomersModel', 75, 'auth_token', 'ea1f9eae22ec665697036d1a0745d4c251318bbaddc494402f8e1e7e1d4b3ac3', '[\"*\"]', NULL, '2023-12-19 11:00:57', '2023-12-19 11:00:57'),
(229, 'App\\adminmodel\\HostModel', 1, 'auth_token', 'eaf5aeae0376708c5aeb97547a55f1c7c51aecbfb8f7fea414af2ace4119e6f1', '[\"*\"]', NULL, '2023-12-22 08:50:51', '2023-12-22 08:50:51'),
(230, 'App\\adminmodel\\CustomersModel', 2, 'auth_token', '58f05a56c1009aa9768a50133b3c72bf046fd2ef07c8446a7b63fb71586868fe', '[\"*\"]', NULL, '2023-12-27 01:14:20', '2023-12-27 01:14:20'),
(231, 'App\\adminmodel\\CustomersModel', 1, 'auth_token', '3ea0156420331a59b48902847684d8492c5ffebd5a2cd84f521cbe4f0f13f4f4', '[\"*\"]', NULL, '2023-12-27 01:14:20', '2023-12-27 01:14:20'),
(232, 'App\\adminmodel\\CustomersModel', 1, 'auth_token', '3a65054d5c93777c7397b56a8bb9e76ad3c3eda6fb7cc6d1dfcb857e4f668191', '[\"*\"]', NULL, '2023-12-27 03:10:26', '2023-12-27 03:10:26'),
(233, 'App\\adminmodel\\CustomersModel', 1, 'auth_token', '59a92e49767cadf9cd2b9aa3eefc7aba11848272af37bf026a9b950577580420', '[\"*\"]', NULL, '2023-12-27 03:11:46', '2023-12-27 03:11:46'),
(234, 'App\\adminmodel\\HostModel', 1, 'auth_token', '9eede9aa704f50f35dfde079948447f6ced4bb249e929a8398ee750691566598', '[\"*\"]', NULL, '2023-12-27 03:17:13', '2023-12-27 03:17:13'),
(235, 'App\\adminmodel\\HostModel', 1, 'auth_token', '8862e6daa2af8b93200c6d8eaeb415eb1286266d447a901aba744597155cdbda', '[\"*\"]', NULL, '2023-12-27 03:24:28', '2023-12-27 03:24:28'),
(236, 'App\\adminmodel\\HostModel', 1, 'auth_token', '4b9f804b644ccd7c7db5ad3d6512d4455cb9f28ae3a05be5ca263b262c96535c', '[\"*\"]', NULL, '2023-12-27 03:30:25', '2023-12-27 03:30:25'),
(237, 'App\\adminmodel\\CustomersModel', 3, 'auth_token', 'fae71d07c336283e2d44675423ce8503eeabab4639e7922551e4492b4d3b7a49', '[\"*\"]', NULL, '2024-01-01 01:42:08', '2024-01-01 01:42:08'),
(238, 'App\\adminmodel\\CustomersModel', 3, 'auth_token', '226c4fadd31946e09c5f0d767a2774b61958a1a3668958a43f98e7ca1a57b665', '[\"*\"]', NULL, '2024-01-01 02:04:38', '2024-01-01 02:04:38'),
(239, 'App\\adminmodel\\HostModel', 2, 'auth_token', '819c0cbae9b421496f26f574eca502c1d19d3c1f7b6087575f9bb3f881c1588f', '[\"*\"]', NULL, '2024-01-01 02:23:09', '2024-01-01 02:23:09'),
(240, 'App\\adminmodel\\CustomersModel', 3, 'auth_token', '978253a68cfb4f0033a1b634d43572897447cae5825afe6448b123f46bb088b0', '[\"*\"]', NULL, '2024-01-01 04:28:01', '2024-01-01 04:28:01'),
(241, 'App\\adminmodel\\CustomersModel', 4, 'auth_token', '33ee2402e53aceefe8fe3dfe9914b140c59a444aca2f1d58b9d76751edd05f21', '[\"*\"]', NULL, '2024-01-04 07:15:46', '2024-01-04 07:15:46'),
(242, 'App\\adminmodel\\CustomersModel', 4, 'auth_token', '8a862628eb402a4119741c6fa0e3777f63aef8cd556bd7982a9c6f47194f3409', '[\"*\"]', NULL, '2024-01-04 07:17:40', '2024-01-04 07:17:40'),
(243, 'App\\adminmodel\\CustomersModel', 4, 'auth_token', '19e9d7b8f7955f456a0f7633d6cf4ec84eff4f7632694e82fbeb9bcbeddac629', '[\"*\"]', NULL, '2024-01-04 07:17:48', '2024-01-04 07:17:48'),
(244, 'App\\adminmodel\\HostModel', 1, 'auth_token', '98458958dd1afd517fc6b54fa4afc2274b9efb830824ad0f36a342b72150458e', '[\"*\"]', NULL, '2024-01-04 07:24:53', '2024-01-04 07:24:53'),
(245, 'App\\adminmodel\\HostModel', 3, 'auth_token', 'ba9e57aba795cea8e5a78ec235f795b5c5db574390120e0795366b84adfe44cc', '[\"*\"]', NULL, '2024-01-04 08:51:04', '2024-01-04 08:51:04'),
(246, 'App\\adminmodel\\CustomersModel', 5, 'auth_token', '4bfda0002e8bae24cc2b3e583e028d14a1616c063dd28097b6f53d91134542f7', '[\"*\"]', NULL, '2024-01-05 01:44:08', '2024-01-05 01:44:08'),
(247, 'App\\adminmodel\\CustomersModel', 6, 'auth_token', '22717b45dc6d4aef7522aedd51de0664ca957546e61dbd289b05695b23b00794', '[\"*\"]', NULL, '2024-01-05 02:01:31', '2024-01-05 02:01:31'),
(248, 'App\\adminmodel\\CustomersModel', 1, 'auth_token', 'aab11334f510b1e0573053cb5f8033364725e7249e76753a89aef5319f24e6f8', '[\"*\"]', NULL, '2024-01-05 02:36:11', '2024-01-05 02:36:11'),
(249, 'App\\adminmodel\\CustomersModel', 7, 'auth_token', '9741882bf43e15ac43186b187a72b8338681f02f3c02a94cd0e12de591ae227e', '[\"*\"]', NULL, '2024-01-11 07:23:59', '2024-01-11 07:23:59'),
(250, 'App\\adminmodel\\HostModel', 5, 'auth_token', 'ca3c24887f639a5d6b08a59caf54edac2dc93908a1d6e662f1d8b53c6981336c', '[\"*\"]', NULL, '2024-01-11 07:25:55', '2024-01-11 07:25:55'),
(251, 'App\\adminmodel\\CustomersModel', 7, 'auth_token', '995725fd7b4daa64f2abff89fa015f9975e80c08b9f846f900d6b4ad4f78b03e', '[\"*\"]', NULL, '2024-01-11 07:28:05', '2024-01-11 07:28:05'),
(252, 'App\\adminmodel\\CustomersModel', 7, 'auth_token', '988a6291fd1f13fa257be08af44f93bccd205bdcfd53c074016d7eba58c0033c', '[\"*\"]', NULL, '2024-01-11 07:33:46', '2024-01-11 07:33:46'),
(253, 'App\\adminmodel\\HostModel', 5, 'auth_token', '61b02503165153e6359d1d1f2bb4b582b0076006d043f60672b2420cbefc0bdc', '[\"*\"]', NULL, '2024-01-11 07:44:07', '2024-01-11 07:44:07'),
(254, 'App\\adminmodel\\HostModel', 5, 'auth_token', '39b5af106f4cb658363022b41cc84c9694abba9bf5ab95bdf8d58aa6b57a9fc3', '[\"*\"]', NULL, '2024-01-11 07:45:25', '2024-01-11 07:45:25'),
(255, 'App\\adminmodel\\CustomersModel', 8, 'auth_token', 'd8a334947b64d53b2b941e39b3e1d81799f9201c616ae31a9ed5bd671801a60c', '[\"*\"]', NULL, '2024-01-12 02:31:24', '2024-01-12 02:31:24'),
(256, 'App\\adminmodel\\HostModel', 6, 'auth_token', 'fbdb2142fc355d0db45a34880d1d6fb4b5c324b54a8a0dac423043a72b9ba5d4', '[\"*\"]', NULL, '2024-01-19 04:34:54', '2024-01-19 04:34:54'),
(257, 'App\\adminmodel\\HostModel', 6, 'auth_token', '7e836e2678476ad5678e6cd71b4d59eef2bd248772287f51abd40800275c94c8', '[\"*\"]', NULL, '2024-01-19 04:38:55', '2024-01-19 04:38:55'),
(258, 'App\\adminmodel\\CustomersModel', 9, 'auth_token', '60de4d02d40c482165c94f82215db5f1734757d2d1f12b2cf003ee62272f41ae', '[\"*\"]', NULL, '2024-01-19 04:59:58', '2024-01-19 04:59:58'),
(259, 'App\\adminmodel\\CustomersModel', 9, 'auth_token', '7a15667f74ed8cba978417eac3dc4bd1fd51a31553045f5cda0ca9299f8e79e5', '[\"*\"]', NULL, '2024-01-19 05:05:00', '2024-01-19 05:05:00'),
(260, 'App\\adminmodel\\CustomersModel', 9, 'auth_token', '07f72431b79c04d5922cc24e590141b120d1dc68ab142e61b4855d113d6c3ea5', '[\"*\"]', NULL, '2024-01-19 05:11:27', '2024-01-19 05:11:27'),
(261, 'App\\adminmodel\\CustomersModel', 4, 'auth_token', '2d21f0e35471dfa371ceedef817c31571a39de9e980a40809b7ce5a31c4e7a36', '[\"*\"]', NULL, '2024-01-19 05:25:54', '2024-01-19 05:25:54'),
(262, 'App\\adminmodel\\CustomersModel', 4, 'auth_token', '5b2ceead10c9e2002961e59931cb63f068c8cbdb986923a82e7719edb117c696', '[\"*\"]', NULL, '2024-01-19 05:33:27', '2024-01-19 05:33:27'),
(263, 'App\\adminmodel\\HostModel', 6, 'auth_token', '0a058e1d33d49177523b04f1a9e1ca8d48aee959ad9b9420ec68b6fd2beee6fd', '[\"*\"]', NULL, '2024-01-19 06:23:34', '2024-01-19 06:23:34'),
(264, 'App\\adminmodel\\HostModel', 1, 'auth_token', '9a54cebf830c0f0ff47f84f8675daab9fd32cffe65f52157acdc845a9ffbfcfe', '[\"*\"]', NULL, '2024-01-19 06:28:00', '2024-01-19 06:28:00'),
(265, 'App\\adminmodel\\HostModel', 1, 'auth_token', '1b8d66f59650fde567a19c1639c3a3df830ec723183d1d3f2ec789428d1f955c', '[\"*\"]', NULL, '2024-01-19 06:29:29', '2024-01-19 06:29:29'),
(266, 'App\\adminmodel\\CustomersModel', 4, 'auth_token', 'b612267ec7f3cc8cf207455774fc3ea27fa526c2a763614af6900f31c8705e33', '[\"*\"]', NULL, '2024-01-19 06:30:49', '2024-01-19 06:30:49'),
(267, 'App\\adminmodel\\HostModel', 6, 'auth_token', '17791abf39137e5e59f20e16eaeab7801a18db535d858a19ddbfd132056e2dfd', '[\"*\"]', NULL, '2024-01-19 06:33:39', '2024-01-19 06:33:39');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(268, 'App\\adminmodel\\CustomersModel', 10, 'auth_token', '26860657fd6f1b115b4ad171fcea2a314ed40481f7eb85cc1b0d4629deb30dd0', '[\"*\"]', NULL, '2024-01-20 02:01:49', '2024-01-20 02:01:49'),
(269, 'App\\adminmodel\\CustomersModel', 9, 'auth_token', '85e8eae00a5ce5a7c07f5f779a9a46041758bbb3de18e3617fcbbc86cdd44878', '[\"*\"]', NULL, '2024-01-20 02:04:53', '2024-01-20 02:04:53'),
(270, 'App\\adminmodel\\CustomersModel', 9, 'auth_token', 'f3e0fd3c255df9551861058b6aac9dd0afedbbfe11943b11d8302a80382622ec', '[\"*\"]', NULL, '2024-01-20 02:07:21', '2024-01-20 02:07:21'),
(271, 'App\\adminmodel\\HostModel', 6, 'auth_token', '1735c5329a169354eb940f5e5b1ed19a87e6d026bf03af9cd1c03287dae5b5d6', '[\"*\"]', NULL, '2024-01-20 02:25:17', '2024-01-20 02:25:17'),
(272, 'App\\adminmodel\\CustomersModel', 3, 'auth_token', '64458ea2d7d94621e74371fad10501bf4265fc09a229209ec1ed67d78982cb8b', '[\"*\"]', NULL, '2024-01-22 06:02:55', '2024-01-22 06:02:55'),
(273, 'App\\adminmodel\\HostModel', 2, 'auth_token', 'fda48f1953afde08b1202b308414c3d712279b3e51250ec62f6a57e6e6fa83cf', '[\"*\"]', NULL, '2024-01-23 04:30:20', '2024-01-23 04:30:20'),
(274, 'App\\adminmodel\\CustomersModel', 3, 'auth_token', '8c912a34df92e8d68a9b6a89b5416ac511c5f7bbe4727eabab6bdc2afb636c7c', '[\"*\"]', NULL, '2024-01-23 06:53:37', '2024-01-23 06:53:37'),
(275, 'App\\adminmodel\\HostModel', 2, 'auth_token', 'bc2f351615353e821770c6c80665f006534d33224f319d101e6baec268dd6e01', '[\"*\"]', NULL, '2024-01-23 10:22:59', '2024-01-23 10:22:59'),
(276, 'App\\adminmodel\\CustomersModel', 3, 'auth_token', 'd0515f691f7c929ce4d402bad3054a5cee15df956968cbfa233e2c9a9445a98e', '[\"*\"]', NULL, '2024-01-23 10:32:58', '2024-01-23 10:32:58'),
(277, 'App\\adminmodel\\CustomersModel', 3, 'auth_token', '2a099267cc79888b337148de3bba3982709c7712922b785bec526c57d918143f', '[\"*\"]', NULL, '2024-01-24 01:48:30', '2024-01-24 01:48:30'),
(278, 'App\\adminmodel\\HostModel', 2, 'auth_token', '563501c8cc4307d96656ef213c33c98cef56257f5b5d70246a89204df91c598f', '[\"*\"]', NULL, '2024-01-24 02:07:41', '2024-01-24 02:07:41'),
(279, 'App\\adminmodel\\HostModel', 2, 'auth_token', '1d9fef8f7cdc00306158f666e4de8353c0a6c442b8cc41e1e86659fed5d50029', '[\"*\"]', NULL, '2024-01-24 02:11:21', '2024-01-24 02:11:21'),
(280, 'App\\adminmodel\\CustomersModel', 1, 'auth_token', '3603698e378f58f12c7bb7e88ea66f601d110272cfc853628ce1c560a9a10f23', '[\"*\"]', NULL, '2024-01-26 01:30:12', '2024-01-26 01:30:12'),
(281, 'App\\adminmodel\\CustomersModel', 6, 'auth_token', 'e5df1cec9651bf5349870f5359f4a827901958754d17075f7593d309ebb21f07', '[\"*\"]', NULL, '2024-01-26 02:27:40', '2024-01-26 02:27:40'),
(282, 'App\\adminmodel\\CustomersModel', 11, 'auth_token', '0b17943450c552515f48e6519e2c7aa3e6e13b3b5e55c146ea343df840c1aa09', '[\"*\"]', NULL, '2024-01-26 02:28:05', '2024-01-26 02:28:05'),
(283, 'App\\adminmodel\\HostModel', 5, 'auth_token', '445f9a1448b89253e424dd8cdf6d2527af99719d031ba547c202dabffd0983ea', '[\"*\"]', NULL, '2024-01-26 02:41:36', '2024-01-26 02:41:36'),
(284, 'App\\adminmodel\\HostModel', 5, 'auth_token', '43b9cab7b6f9b242dc7449676aeca67e6b85f91261d18c70cf52fc322c6b7bac', '[\"*\"]', NULL, '2024-01-26 03:59:11', '2024-01-26 03:59:11'),
(285, 'App\\adminmodel\\CustomersModel', 4, 'auth_token', '2cc665edb7c7a1971d3136dd2c893064b8b49b70f1a10c099cbe62ba3e2eaaca', '[\"*\"]', NULL, '2024-01-30 12:57:46', '2024-01-30 12:57:46'),
(286, 'App\\adminmodel\\HostModel', 6, 'auth_token', '9a38fc538bd7c1041a717944ef037c4e0ef383d924766e5f770ebd5bff38fc5d', '[\"*\"]', NULL, '2024-01-31 07:46:39', '2024-01-31 07:46:39'),
(287, 'App\\adminmodel\\CustomersModel', 9, 'auth_token', 'bac98426c4c3ff320f1cc8591524715eb39a4bcae68acdd7537aa022fc33cf16', '[\"*\"]', NULL, '2024-01-31 07:53:21', '2024-01-31 07:53:21'),
(288, 'App\\adminmodel\\HostModel', 6, 'auth_token', 'e38aa83a24c82180f827a8bf147782c0b44a816f8a636577b66e4e846ab025a2', '[\"*\"]', NULL, '2024-01-31 07:58:50', '2024-01-31 07:58:50'),
(289, 'App\\adminmodel\\CustomersModel', 4, 'auth_token', 'aab79a8fac1cba86408a5e67683560ed355d8474fd14e374a1b36f0762ab1fac', '[\"*\"]', NULL, '2024-01-31 08:21:58', '2024-01-31 08:21:58'),
(290, 'App\\adminmodel\\CustomersModel', 9, 'auth_token', 'd699d90dfdc8b6d3ddd38e27bac8ae144bcb9f536ff73771858897d4dac95e9e', '[\"*\"]', NULL, '2024-01-31 08:37:35', '2024-01-31 08:37:35'),
(291, 'App\\adminmodel\\CustomersModel', 4, 'auth_token', '6bcb09dfeef6ebb176862e73ea1359c02663e1fc3e68eb059b37c8b9492ca6b8', '[\"*\"]', NULL, '2024-01-31 08:49:07', '2024-01-31 08:49:07'),
(292, 'App\\adminmodel\\CustomersModel', 4, 'auth_token', '5b2d0ec96a82fcf5db6518eab37f5380e8d1c9d8ee4ff3735898b50e3a567ce6', '[\"*\"]', NULL, '2024-01-31 08:49:10', '2024-01-31 08:49:10'),
(293, 'App\\adminmodel\\CustomersModel', 9, 'auth_token', 'fbf9b8b1c65b33a875f2ba59c026c8a143b20f364979510ca884bafd5ca69a99', '[\"*\"]', NULL, '2024-02-01 09:46:24', '2024-02-01 09:46:24'),
(294, 'App\\adminmodel\\CustomersModel', 3, 'auth_token', 'f8c76ff6b1e7dff17de10979ad13bf7fb54337c9bcd8a3a04d47dbdeec219260', '[\"*\"]', NULL, '2024-02-02 02:01:17', '2024-02-02 02:01:17'),
(295, 'App\\adminmodel\\CustomersModel', 9, 'auth_token', 'ecb72e6a601dfb7ed88f5a8692014b90207927d6eec4521975b20e9ec5f73cfd', '[\"*\"]', NULL, '2024-02-02 02:01:56', '2024-02-02 02:01:56'),
(296, 'App\\adminmodel\\CustomersModel', 1, 'auth_token', 'f425651f9bf1676576ded285f3140b3450b7c049caff81f99ea52c30327a27aa', '[\"*\"]', NULL, '2024-02-02 02:04:31', '2024-02-02 02:04:31'),
(297, 'App\\adminmodel\\HostModel', 7, 'auth_token', '514d2f0ef0073c7a2045856a8d2f7c15214ea8d50218497264f158da79250299', '[\"*\"]', NULL, '2024-02-02 02:41:26', '2024-02-02 02:41:26'),
(298, 'App\\adminmodel\\HostModel', 5, 'auth_token', 'bbbe1e25dcf31534820b799845361a7255d5b50af87e6d7f7178cf36b3547a87', '[\"*\"]', NULL, '2024-02-02 02:48:47', '2024-02-02 02:48:47'),
(299, 'App\\adminmodel\\HostModel', 7, 'auth_token', '5a89bc7960b86716173766ecaf87ec9786d971cba52ea218c1e1d38b9251b61f', '[\"*\"]', NULL, '2024-02-02 02:49:04', '2024-02-02 02:49:04'),
(300, 'App\\adminmodel\\HostModel', 5, 'auth_token', 'e44d64d4ba9d8099ec3041535db0c4d528ac8c18fd452ba806e4a929b73ed1ca', '[\"*\"]', NULL, '2024-02-02 03:12:39', '2024-02-02 03:12:39'),
(301, 'App\\adminmodel\\HostModel', 7, 'auth_token', '93c9f27d02bb01b6b9428af61d7ed33272fde2a73cbe29251a6df48e8e2df6c0', '[\"*\"]', NULL, '2024-02-02 03:19:41', '2024-02-02 03:19:41'),
(302, 'App\\adminmodel\\CustomersModel', 12, 'auth_token', 'd5c8f3ce9b6c68d4c7874429f917253d2203c2ca0ef1440817e172fb289e69bd', '[\"*\"]', NULL, '2024-02-02 05:29:20', '2024-02-02 05:29:20'),
(303, 'App\\adminmodel\\CustomersModel', 12, 'auth_token', 'd0d9384715b27f9dc2d8434163dd998125023f81fdb40dcb0a9d062e3b5754b5', '[\"*\"]', NULL, '2024-02-02 05:30:11', '2024-02-02 05:30:11'),
(304, 'App\\adminmodel\\HostModel', 8, 'auth_token', '4701e52730dabfbf16fcba3f60c8ddea1b0124e9574a9b1395a23f493007431e', '[\"*\"]', NULL, '2024-02-02 05:41:16', '2024-02-02 05:41:16'),
(305, 'App\\adminmodel\\CustomersModel', 13, 'auth_token', 'bd5c7eae6092731f2574f64fe8e42aa4026035060e530f67d1c1f3dc5c998a38', '[\"*\"]', NULL, '2024-02-02 06:03:34', '2024-02-02 06:03:34'),
(306, 'App\\adminmodel\\CustomersModel', 14, 'auth_token', 'c28c05318d80b32f57b422e729845882c2e925e92dd65288af23f5adcd2d7634', '[\"*\"]', NULL, '2024-02-03 06:39:40', '2024-02-03 06:39:40'),
(307, 'App\\adminmodel\\CustomersModel', 13, 'auth_token', '5d360cb300a152f9105b3adc7a5010db3eec5c30dbc989458eeb10e1878d71e2', '[\"*\"]', NULL, '2024-02-03 06:39:53', '2024-02-03 06:39:53'),
(308, 'App\\adminmodel\\HostModel', 8, 'auth_token', 'e9d3154884abffc42910322731e6e027f7d7c826731573b424174e598132b54c', '[\"*\"]', NULL, '2024-02-06 05:59:32', '2024-02-06 05:59:32'),
(309, 'App\\adminmodel\\ManagerModel', 2, 'auth_token', '9f6395a6272e7bdefd39d229e350f38f35e34d70147601e0113fcc50c494f4d8', '[\"*\"]', NULL, '2024-02-06 06:14:51', '2024-02-06 06:14:51'),
(310, 'App\\adminmodel\\ManagerModel', 2, 'auth_token', 'ce1cb62da55fac9385f8f40843d0091ba69329d7a67a5a232be863b09c0d1102', '[\"*\"]', NULL, '2024-02-06 07:15:47', '2024-02-06 07:15:47'),
(311, 'App\\adminmodel\\CustomersModel', 13, 'auth_token', '47bf550fc0356116223c580ee1c657eafb7437146b4b8015edf2f9af8c771d86', '[\"*\"]', NULL, '2024-02-06 07:20:16', '2024-02-06 07:20:16'),
(312, 'App\\adminmodel\\ManagerModel', 2, 'auth_token', '4dd234f3f465a37073c7faab97f8814667a8e223681f60bc7a2c4e84408a621f', '[\"*\"]', NULL, '2024-02-06 07:27:54', '2024-02-06 07:27:54'),
(313, 'App\\adminmodel\\ManagerModel', 2, 'auth_token', '610812b0d7055aa8f022d608ee39445334678ab101ef8bcaf2fd7da67987e871', '[\"*\"]', NULL, '2024-02-06 07:28:25', '2024-02-06 07:28:25'),
(314, 'App\\adminmodel\\HostModel', 7, 'auth_token', 'd6cacba97196c98878e4fb2e6832fe71a70849b8d3d89240cd30be166bc29771', '[\"*\"]', NULL, '2024-02-07 01:33:44', '2024-02-07 01:33:44'),
(315, 'App\\adminmodel\\CustomersModel', 15, 'auth_token', '934a4d116ef33606e57d6128be0f7da6aa7dddecd7b9e1fe2922e195b2a331f2', '[\"*\"]', NULL, '2024-02-07 01:48:35', '2024-02-07 01:48:35'),
(316, 'App\\adminmodel\\HostModel', 8, 'auth_token', 'b0be223f30173c07b1e17dec7fc1f1d3928e022bd936c065135b4c77d3ee24d2', '[\"*\"]', NULL, '2024-02-07 01:54:01', '2024-02-07 01:54:01'),
(317, 'App\\adminmodel\\CustomersModel', 13, 'auth_token', '6a0e4f3a6018f180a4d1111643e15d4591a6d96ccbd96fd89dc4db6d5aac08fd', '[\"*\"]', NULL, '2024-02-07 03:14:18', '2024-02-07 03:14:18'),
(318, 'App\\adminmodel\\HostModel', 8, 'auth_token', '8ef53bd5169667f69b1e7c1a94c8f655aae8663bdfe78948ce3809eac0b2ac07', '[\"*\"]', NULL, '2024-02-09 02:42:33', '2024-02-09 02:42:33'),
(319, 'App\\adminmodel\\HostModel', 8, 'auth_token', '7e37df4e49295270f6f2a1e69433fe7ab649352a567b87680ea84c809f39de51', '[\"*\"]', NULL, '2024-02-09 03:36:56', '2024-02-09 03:36:56'),
(320, 'App\\adminmodel\\HostModel', 8, 'auth_token', '874b1a9b19215a4ad9e8cb4155244efee4239624bc3f27092ef7f90ddbdc62ec', '[\"*\"]', NULL, '2024-02-09 03:51:35', '2024-02-09 03:51:35'),
(321, 'App\\adminmodel\\HostModel', 8, 'auth_token', 'c060213ed11cfc15b40a1a4cb2eadc958cd5b2e0ac0c44771f96f54da61ee9a0', '[\"*\"]', NULL, '2024-02-09 03:55:17', '2024-02-09 03:55:17'),
(322, 'App\\adminmodel\\CustomersModel', 13, 'auth_token', 'a9e03e765e5b34dafcedd4b812c891381b78d7546d3ebff7f173b12045d2c94d', '[\"*\"]', NULL, '2024-02-09 04:45:07', '2024-02-09 04:45:07'),
(323, 'App\\adminmodel\\HostModel', 8, 'auth_token', 'b6a0907bc0928ffa408f878ae4c960f8fe26e8e05709bdd8d6a6cc6021556e8b', '[\"*\"]', NULL, '2024-02-09 04:45:46', '2024-02-09 04:45:46'),
(324, 'App\\adminmodel\\HostModel', 8, 'auth_token', '2b2256c9ad43051d94bc00d96457bda0d6d618dc478b55c9d6ae26c9fdf198f8', '[\"*\"]', NULL, '2024-02-09 04:46:54', '2024-02-09 04:46:54'),
(325, 'App\\adminmodel\\HostModel', 8, 'auth_token', '76cf8e8677dda818183baefb4a2e60a2d319629f57addbcfcae88b7af5a909d9', '[\"*\"]', NULL, '2024-02-09 04:47:59', '2024-02-09 04:47:59'),
(326, 'App\\adminmodel\\HostModel', 7, 'auth_token', '6987aad3127b99ed7ff0b34b5b4562f571b9ae2e855e1325c4219e10e73245ff', '[\"*\"]', NULL, '2024-02-09 10:18:48', '2024-02-09 10:18:48'),
(327, 'App\\adminmodel\\HostModel', 7, 'auth_token', '5749821dc7dd00c7400c4b8a701499ed79522e23c63a5d24de776ae3d558abc0', '[\"*\"]', NULL, '2024-02-09 10:38:55', '2024-02-09 10:38:55'),
(328, 'App\\adminmodel\\HostModel', 9, 'auth_token', 'cd564411ae7fcf1ef458fd795a51aeab6b3b9464224a65d53573e9a0893574b0', '[\"*\"]', NULL, '2024-02-09 10:46:39', '2024-02-09 10:46:39'),
(329, 'App\\adminmodel\\ManagerModel', 3, 'auth_token', '7722e25aa0b89b3f7862088db225b4045add184a320cd14d74ee71abd2356655', '[\"*\"]', NULL, '2024-02-09 10:47:21', '2024-02-09 10:47:21'),
(330, 'App\\adminmodel\\ManagerModel', 3, 'auth_token', '8db8afb2ffb7d491afea4678a41d2cc506553dbe2f71fb44a0e11e2d89b3f72d', '[\"*\"]', NULL, '2024-02-12 03:33:39', '2024-02-12 03:33:39'),
(331, 'App\\adminmodel\\CustomersModel', 16, 'auth_token', '7842c45f9b4c6cdbbc36c18e6497fe470453ebecbf59cf47e5ded6e07ff3f8e3', '[\"*\"]', NULL, '2024-02-12 03:57:15', '2024-02-12 03:57:15'),
(332, 'App\\adminmodel\\CustomersModel', 16, 'auth_token', 'c1077bafa22d7fed39ee6d8954bb43136bab2c6e0e482f4629dc9b54854d2d32', '[\"*\"]', NULL, '2024-02-12 04:03:47', '2024-02-12 04:03:47'),
(333, 'App\\adminmodel\\CustomersModel', 13, 'auth_token', 'b1f31d245134db68440c14b2bb0f59d4408fc0350d54da063a1773605773ce59', '[\"*\"]', NULL, '2024-02-12 07:46:48', '2024-02-12 07:46:48'),
(334, 'App\\adminmodel\\CustomersModel', 13, 'auth_token', '44068e185c3ff94a010c428bf61a46c694f39ed8849a0da13b2cd0d666277bb4', '[\"*\"]', NULL, '2024-02-13 02:25:47', '2024-02-13 02:25:47'),
(335, 'App\\adminmodel\\CustomersModel', 13, 'auth_token', 'cb906569bc4e9cb9ed254c245c7f69547fff122c52ee591ae485077d15245340', '[\"*\"]', NULL, '2024-02-13 03:12:01', '2024-02-13 03:12:01'),
(336, 'App\\adminmodel\\CustomersModel', 13, 'auth_token', '81387d48c2c7a0ac0a6b789cc88663bc7d33feb9632e1a244a21656e0606577a', '[\"*\"]', NULL, '2024-02-13 05:15:52', '2024-02-13 05:15:52'),
(337, 'App\\adminmodel\\CustomersModel', 13, 'auth_token', 'f17c3bb11e42cdccfc9037a01ad81fb7183f30ceb085bd28402e7de382608f54', '[\"*\"]', NULL, '2024-02-13 05:16:32', '2024-02-13 05:16:32'),
(338, 'App\\adminmodel\\CustomersModel', 14, 'auth_token', '59b52bdc1734aef2732887775b316f717094cc3126396a6879fbe7ac4549e7a4', '[\"*\"]', NULL, '2024-02-15 01:12:41', '2024-02-15 01:12:41'),
(339, 'App\\adminmodel\\CustomersModel', 14, 'auth_token', '49540507172f049b11d6bfafc9a9725568cc6ca43618c1a5faf514a242ed8883', '[\"*\"]', NULL, '2024-02-15 01:16:49', '2024-02-15 01:16:49'),
(340, 'App\\adminmodel\\CustomersModel', 14, 'auth_token', 'ae6619c3e6ba15214269b5f40adb54d4d4b26813b695b822521fc110e720395f', '[\"*\"]', NULL, '2024-02-15 01:16:49', '2024-02-15 01:16:49'),
(341, 'App\\adminmodel\\ManagerModel', 5, 'auth_token', '88045d73e40db8105a2c047d9b709e7034d4f6eee3b8fdfb100c036ae78beda1', '[\"*\"]', NULL, '2024-02-15 01:20:54', '2024-02-15 01:20:54'),
(342, 'App\\adminmodel\\ManagerModel', 4, 'auth_token', '92e27e90ef45e446d8181838819389fcf9fb2b06766451c5959875cf8d239c83', '[\"*\"]', NULL, '2024-02-15 01:22:17', '2024-02-15 01:22:17'),
(343, 'App\\adminmodel\\ManagerModel', 4, 'auth_token', 'f9044e33f98abd5d5e97490403458fb846e20d752a47abf0ef0d47a112c8ca06', '[\"*\"]', NULL, '2024-02-15 08:30:30', '2024-02-15 08:30:30'),
(344, 'App\\adminmodel\\ManagerModel', 5, 'auth_token', '1429018c15fb4e0840949c81a987d1532033814670dd709f1d9564e0ff03a7c9', '[\"*\"]', NULL, '2024-02-15 08:48:22', '2024-02-15 08:48:22'),
(345, 'App\\adminmodel\\ManagerModel', 4, 'auth_token', 'f7f9d0b82f5abf3354caff0181b8e6f95de26eb7017fb5c8f28d60cc230163ef', '[\"*\"]', NULL, '2024-02-15 08:48:29', '2024-02-15 08:48:29'),
(346, 'App\\adminmodel\\HostModel', 10, 'auth_token', 'ebda5edc48a3937112e1c14cd0308fb02130885b1225d24bc95f9ee6301cfb41', '[\"*\"]', NULL, '2024-02-16 02:51:05', '2024-02-16 02:51:05'),
(347, 'App\\adminmodel\\HostModel', 8, 'auth_token', 'a272b15563b33060493825183853b46887202173a207c301b145e33a2379124d', '[\"*\"]', NULL, '2024-02-16 04:54:03', '2024-02-16 04:54:03'),
(348, 'App\\adminmodel\\HostModel', 8, 'auth_token', '0557a545aa30e2ac404882f117d791caad72ad5f428e6755f34ae289484a3964', '[\"*\"]', NULL, '2024-02-16 04:57:33', '2024-02-16 04:57:33'),
(349, 'App\\adminmodel\\HostModel', 8, 'auth_token', 'e8a9356f93dca98a6c2e14494695b71ec44cc3aabfffd4e867066aefde0a6a1e', '[\"*\"]', NULL, '2024-02-16 05:04:22', '2024-02-16 05:04:22'),
(350, 'App\\adminmodel\\ManagerModel', 4, 'auth_token', 'e9dff6ed7331920185170b44020c6ee3d21da292beb2cb733d2e7aea8b95ea87', '[\"*\"]', NULL, '2024-02-16 05:04:43', '2024-02-16 05:04:43'),
(351, 'App\\adminmodel\\HostModel', 8, 'auth_token', '4a675e6d1c975d6d56d8b30f4894d2acfe9ad667c4e116844861b511a2e5e49a', '[\"*\"]', NULL, '2024-02-16 05:14:53', '2024-02-16 05:14:53'),
(352, 'App\\adminmodel\\HostModel', 10, 'auth_token', 'cc285c684dd5c601449fdff25765cf547bc2293c315f2d8bb1ea276a4f573d69', '[\"*\"]', NULL, '2024-02-16 08:28:45', '2024-02-16 08:28:45'),
(353, 'App\\adminmodel\\HostModel', 10, 'auth_token', '83ce635e97b30115050f6b56978d849d143f9c99ca0cf855ed45615b92b4abb0', '[\"*\"]', NULL, '2024-02-16 08:31:01', '2024-02-16 08:31:01'),
(354, 'App\\adminmodel\\CustomersModel', 14, 'auth_token', '39b9c4c7e26b3410c20ec4087fb5d20535f14782398bc7e3945fa623ef4c1e8c', '[\"*\"]', NULL, '2024-02-16 08:50:32', '2024-02-16 08:50:32'),
(355, 'App\\adminmodel\\ManagerModel', 4, 'auth_token', '81afb653916c5d2009f50e05de17757a6d59e313656b36bdd0c8b4c736bb1efa', '[\"*\"]', NULL, '2024-02-16 08:52:25', '2024-02-16 08:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_sidebar`
--

CREATE TABLE `tbl_admin_sidebar` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `url` varchar(2000) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin_sidebar`
--

INSERT INTO `tbl_admin_sidebar` (`id`, `name`, `url`, `icon`, `seq`) VALUES
(1, 'Dashboard', 'admin_index', 'fas fa-cogs', 1),
(2, 'Team', '#', 'fas fa-users-cog', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_sidebar2`
--

CREATE TABLE `tbl_admin_sidebar2` (
  `id` int(11) NOT NULL,
  `main_id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `url` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin_sidebar2`
--

INSERT INTO `tbl_admin_sidebar2` (`id`, `main_id`, `name`, `url`) VALUES
(1, 2, 'View Team', 'view_team'),
(2, 2, 'Add Team', 'add_team_view');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team`
--

CREATE TABLE `tbl_team` (
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
-- Dumping data for table `tbl_team`
--

INSERT INTO `tbl_team` (`id`, `name`, `email`, `password`, `phone`, `address`, `image`, `power`, `services`, `ip`, `created_at`, `updated_at`, `deleted_at`, `added_by`, `is_active`) VALUES
(37, 'demo', 'demo@gmail.com', '202cb962ac59075b964b07152d234b70', '9809786655', '16, vaishali nagar, jaipur', '', 1, '[\"999\"]', '183.83.42.146', '2020-10-28 14:10:45', '2023-03-02 09:50:48', NULL, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbl_admin_sidebar`
--
ALTER TABLE `tbl_admin_sidebar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_sidebar2`
--
ALTER TABLE `tbl_admin_sidebar2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_team`
--
ALTER TABLE `tbl_team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- AUTO_INCREMENT for table `tbl_admin_sidebar`
--
ALTER TABLE `tbl_admin_sidebar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_admin_sidebar2`
--
ALTER TABLE `tbl_admin_sidebar2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `tbl_team`
--
ALTER TABLE `tbl_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

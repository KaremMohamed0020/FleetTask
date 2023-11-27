-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 08:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fleet_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `available_seats` int(11) NOT NULL DEFAULT 12,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `trip_id`, `available_seats`, `created_at`, `updated_at`) VALUES
(1, 1, 12, NULL, NULL),
(2, 2, 0, NULL, NULL),
(3, 3, 12, NULL, NULL),
(4, 4, 12, NULL, NULL),
(5, 5, 0, NULL, NULL);

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_11_26_221656_create_stations_table', 1),
(11, '2023_11_26_221704_create_trips_table', 1),
(12, '2023_11_26_221708_create_buses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('fb44b8fbe53fa187bda6741a512cb527448478d5ba8a1b6c2a5e3b04cf3df26675a593cde0de6f70', 1, 1, 'Fleet', '[]', 0, '2023-11-27 16:54:44', '2023-11-27 16:54:45', '2024-11-27 18:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'UFKxj2yrWEOIFW8K46ml8GbSkW90pg1k7MuFP2D9', NULL, 'http://localhost', 1, 0, 0, '2023-11-27 16:53:49', '2023-11-27 16:53:49'),
(2, NULL, 'Laravel Password Grant Client', '8lafKKtAPRnN5e7ZvM5Uq6q4RMcYl41uoh97lnSz', 'users', 'http://localhost', 0, 1, 0, '2023-11-27 16:53:49', '2023-11-27 16:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-11-27 16:53:49', '2023-11-27 16:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cairo', NULL, NULL),
(2, 'Alexandria', NULL, NULL),
(3, 'Port Said', NULL, NULL),
(4, 'Suez', NULL, NULL),
(5, 'Ismailia', NULL, NULL),
(6, 'Gharbia', NULL, NULL),
(7, 'Monufia', NULL, NULL),
(8, 'Dakahlia', NULL, NULL),
(9, 'Damietta', NULL, NULL),
(10, 'Sharqia', NULL, NULL),
(11, 'Qalyubia', NULL, NULL),
(12, 'Kafr El Sheikh', NULL, NULL),
(13, 'Giza', NULL, NULL),
(14, 'Faiyum', NULL, NULL),
(15, 'Beni Suef', NULL, NULL),
(16, 'Minya', NULL, NULL),
(17, 'Asyut', NULL, NULL),
(18, 'Sohag', NULL, NULL),
(19, 'Qena', NULL, NULL),
(20, 'Luxor', NULL, NULL),
(21, 'Aswan', NULL, NULL),
(22, 'Red Sea', NULL, NULL),
(23, 'New Valley', NULL, NULL),
(24, 'Matrouh', NULL, NULL),
(25, 'North Sinai', NULL, NULL),
(26, 'South Sinai', NULL, NULL),
(27, '6th of October', NULL, NULL),
(28, 'Helwan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `station_trip`
--

CREATE TABLE `station_trip` (
  `station_id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `station_trip`
--

INSERT INTO `station_trip` (`station_id`, `trip_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(2, 5),
(4, 4),
(13, 3),
(16, 4),
(16, 5),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(18, 4),
(18, 5),
(19, 4),
(20, 2),
(20, 3),
(20, 5),
(21, 3),
(21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cairo to Asyut', NULL, NULL),
(2, 'Alexandria to Luxor', NULL, NULL),
(3, 'Giza to Aswan', NULL, NULL),
(4, 'Suez to Qena', NULL, NULL),
(5, 'Aswan to Alexandria', NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@example.com', NULL, '$2y$12$tojH.ykzMT4Lgs8djGXmquPt3bEXI9X/lftQnZrbaFaGFa6n6Kpvi', NULL, '2023-11-27 16:47:06', '2023-11-27 16:47:06'),
(2, 'Mr. Warren Turcotte IV', 'savion.legros@example.org', '2023-11-27 17:32:54', '$2y$12$PY3E3JcLBN44XWv9mAZbLeZ4ROyqibg1hm8suY.jHpcUyD5NXIuCi', 'CgsaS96Ip2', '2023-11-27 17:32:55', '2023-11-27 17:32:55'),
(3, 'Ubaldo Wehner', 'gislason.dorian@example.net', '2023-11-27 17:32:57', '$2y$12$PY3E3JcLBN44XWv9mAZbLeZ4ROyqibg1hm8suY.jHpcUyD5NXIuCi', '3XUd5Y9HBz', '2023-11-27 17:32:57', '2023-11-27 17:32:57'),
(4, 'Dr. Maxwell Yost', 'maximus.gutmann@example.com', '2023-11-27 17:32:57', '$2y$12$PY3E3JcLBN44XWv9mAZbLeZ4ROyqibg1hm8suY.jHpcUyD5NXIuCi', 'LHXJvVlCPs', '2023-11-27 17:32:57', '2023-11-27 17:32:57'),
(5, 'Dr. Hugh Schumm', 'schaefer.taylor@example.org', '2023-11-27 17:36:11', '$2y$12$TXAvN4bn11/x69FYikndmeyM.34T6HIcyChL4.ATUywjMwQDFULNS', 'GPEG1m1pcv', '2023-11-27 17:36:11', '2023-11-27 17:36:11'),
(6, 'Leonie Kilback', 'lily68@example.com', '2023-11-27 17:36:11', '$2y$12$TXAvN4bn11/x69FYikndmeyM.34T6HIcyChL4.ATUywjMwQDFULNS', 'Fn7f0RxcIZ', '2023-11-27 17:36:11', '2023-11-27 17:36:11'),
(7, 'Brad Rippin MD', 'sipes.neil@example.org', '2023-11-27 17:36:11', '$2y$12$TXAvN4bn11/x69FYikndmeyM.34T6HIcyChL4.ATUywjMwQDFULNS', 'GIfpmHZ4q9', '2023-11-27 17:36:11', '2023-11-27 17:36:11'),
(8, 'Reuben Mayert', 'bret97@example.net', '2023-11-27 17:37:32', '$2y$12$sWlgA4bhKmAge3ePcRTU3.dGk93oCklL583IHiYxmeFNjxRV0RUji', '0nn7R0fjEk', '2023-11-27 17:37:32', '2023-11-27 17:37:32'),
(9, 'Dr. Chandler Lind', 'cassin.rosemary@example.com', '2023-11-27 17:37:32', '$2y$12$sWlgA4bhKmAge3ePcRTU3.dGk93oCklL583IHiYxmeFNjxRV0RUji', '6PoJ3sWyxk', '2023-11-27 17:37:32', '2023-11-27 17:37:32'),
(10, 'Melyna Satterfield', 'kari21@example.com', '2023-11-27 17:37:32', '$2y$12$sWlgA4bhKmAge3ePcRTU3.dGk93oCklL583IHiYxmeFNjxRV0RUji', '0dny7yYz1O', '2023-11-27 17:37:32', '2023-11-27 17:37:32'),
(11, 'Darren Von DDS', 'homenick.doris@example.com', '2023-11-27 17:38:11', '$2y$12$NeuXc8ufi/WK48/tXjaqI.EFEUiBeA8a4YdiUFdl83TE5M08lM8EK', '53lzAGmvZ3', '2023-11-27 17:38:11', '2023-11-27 17:38:11'),
(12, 'Prof. Orin Shields', 'virgie49@example.org', '2023-11-27 17:38:11', '$2y$12$NeuXc8ufi/WK48/tXjaqI.EFEUiBeA8a4YdiUFdl83TE5M08lM8EK', 'yytwj5oZYT', '2023-11-27 17:38:11', '2023-11-27 17:38:11'),
(13, 'Dr. Victor Thiel', 'walter.kuhlman@example.net', '2023-11-27 17:38:11', '$2y$12$NeuXc8ufi/WK48/tXjaqI.EFEUiBeA8a4YdiUFdl83TE5M08lM8EK', 'R2gvSyQRwg', '2023-11-27 17:38:11', '2023-11-27 17:38:11'),
(14, 'Yesenia Hyatt', 'troy.daniel@example.net', '2023-11-27 17:42:01', '$2y$12$jbvrlexwdYIQoV7DKeIAQOGkrMy.V7AlcYSFfI4/2PwOyZyNwsd1W', 'pU3G0lzibE', '2023-11-27 17:42:01', '2023-11-27 17:42:01'),
(15, 'Dr. Eusebio Hettinger', 'ariane.anderson@example.com', '2023-11-27 17:42:01', '$2y$12$jbvrlexwdYIQoV7DKeIAQOGkrMy.V7AlcYSFfI4/2PwOyZyNwsd1W', 'ty5D18uqiB', '2023-11-27 17:42:01', '2023-11-27 17:42:01'),
(16, 'Esta VonRueden', 'edgardo14@example.net', '2023-11-27 17:42:01', '$2y$12$jbvrlexwdYIQoV7DKeIAQOGkrMy.V7AlcYSFfI4/2PwOyZyNwsd1W', 'Dd8KAyzXPQ', '2023-11-27 17:42:01', '2023-11-27 17:42:01'),
(17, 'Eladio Nolan', 'zlemke@example.org', '2023-11-27 17:43:24', '$2y$12$DHEEN2T3ZeEqd7XH5IF8o.LyM0MJGQbFlL/q2iCry.DSKV/EE1egC', 'QfJ6AEER7i', '2023-11-27 17:43:24', '2023-11-27 17:43:24'),
(18, 'Tia Schuster', 'elyse97@example.org', '2023-11-27 17:43:24', '$2y$12$DHEEN2T3ZeEqd7XH5IF8o.LyM0MJGQbFlL/q2iCry.DSKV/EE1egC', 'dKUBrfYbVb', '2023-11-27 17:43:24', '2023-11-27 17:43:24'),
(19, 'Oral Feil', 'mwalker@example.com', '2023-11-27 17:43:24', '$2y$12$DHEEN2T3ZeEqd7XH5IF8o.LyM0MJGQbFlL/q2iCry.DSKV/EE1egC', 'tLG5FmDYqm', '2023-11-27 17:43:24', '2023-11-27 17:43:24'),
(20, 'Juanita Schmidt', 'imckenzie@example.com', '2023-11-27 17:44:33', '$2y$12$WsWia7D5QQaMp4QtaJHiP.QHCPDJCK.HM35hUqiThe9BbmOx.608C', 'RPBhXIfsOU', '2023-11-27 17:44:33', '2023-11-27 17:44:33'),
(21, 'Albina Feest', 'mattie16@example.net', '2023-11-27 17:44:34', '$2y$12$WsWia7D5QQaMp4QtaJHiP.QHCPDJCK.HM35hUqiThe9BbmOx.608C', 'lQBoDs9cJP', '2023-11-27 17:44:34', '2023-11-27 17:44:34'),
(22, 'Marcellus Beahan', 'ibeatty@example.net', '2023-11-27 17:44:34', '$2y$12$WsWia7D5QQaMp4QtaJHiP.QHCPDJCK.HM35hUqiThe9BbmOx.608C', '1oxEZAUyyu', '2023-11-27 17:44:34', '2023-11-27 17:44:34'),
(23, 'Charlene Harber', 'carmen.swaniawski@example.net', '2023-11-27 17:48:19', '$2y$12$3A2x0.4FcAYzKlEzwfXtW.2NXSsdppcLQ4E1VLTIV3HZhBG7xgxNW', 'WctUxzqh1W', '2023-11-27 17:48:20', '2023-11-27 17:48:20'),
(24, 'Dr. Annetta Jacobs', 'bogan.travon@example.net', '2023-11-27 17:48:20', '$2y$12$3A2x0.4FcAYzKlEzwfXtW.2NXSsdppcLQ4E1VLTIV3HZhBG7xgxNW', 'd42YHWkz4d', '2023-11-27 17:48:20', '2023-11-27 17:48:20'),
(25, 'Emilio Cremin', 'vcartwright@example.org', '2023-11-27 17:48:20', '$2y$12$3A2x0.4FcAYzKlEzwfXtW.2NXSsdppcLQ4E1VLTIV3HZhBG7xgxNW', 'TIG20puVFm', '2023-11-27 17:48:20', '2023-11-27 17:48:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buses_trip_id_foreign` (`trip_id`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `station_trip`
--
ALTER TABLE `station_trip`
  ADD PRIMARY KEY (`station_id`,`trip_id`),
  ADD KEY `station_trip_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
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
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buses`
--
ALTER TABLE `buses`
  ADD CONSTRAINT `buses_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `station_trip`
--
ALTER TABLE `station_trip`
  ADD CONSTRAINT `station_trip_station_id_foreign` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`),
  ADD CONSTRAINT `station_trip_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 03:28 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 is InAcrive|1 Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `description`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'sfs', 'sfs', '2022-07-12 18:30:00', '2022-07-12 18:30:00', 1, '2022-07-01 07:04:46', '2022-07-01 07:04:46'),
(2, 6, 'cscdd', 'cscdd', '2022-07-12 18:30:00', '2022-07-12 18:30:00', 1, '2022-07-01 07:07:10', '2022-07-01 07:07:10'),
(3, 6, 'dfjdn', 'dfjdn', '2022-07-10 18:30:00', '2022-07-10 18:30:00', 1, '2022-07-01 07:09:12', '2022-07-01 07:09:12'),
(4, 6, 'sjkcn', 'sjkcn', '2022-07-18 18:30:00', '2022-07-18 18:30:00', 1, '2022-07-01 07:12:24', '2022-07-01 07:12:24'),
(5, 6, 'sdsnd', 'sdsnd', '2022-07-01 18:30:00', '2022-07-01 18:30:00', 1, '2022-07-01 07:13:20', '2022-07-01 07:13:20'),
(6, 7, 'dds', 'dds', '2022-07-14 18:30:00', '2022-07-14 18:30:00', 1, '2022-07-01 07:41:32', '2022-07-01 07:41:32'),
(7, 7, 'xssdcdjbv', 'xssdcdjbv', '2022-07-11 18:30:00', '2022-07-11 18:30:00', 1, '2022-07-01 07:46:51', '2022-07-01 07:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `parent_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `parent_id`, `parent_title`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'user_profile', 'Screenshot (3).png', '2022-07-01 05:17:34', '2022-07-01 05:17:34'),
(2, 2, 'user_profile', 'Screenshot (8).png', '2022-07-01 05:25:07', '2022-07-01 05:25:07'),
(3, 3, 'user_profile', 'Screenshot (13).png', '2022-07-01 05:29:30', '2022-07-01 05:29:30'),
(4, 4, 'user_profile', 'Screenshot (13).png', '2022-07-01 05:32:19', '2022-07-01 05:32:19'),
(5, 5, 'user_profile', 'Screenshot (8).png', '2022-07-01 05:36:10', '2022-07-01 05:36:10'),
(6, 6, 'user_profile', 'Screenshot (8).png', '2022-07-01 05:38:39', '2022-07-01 05:38:39'),
(7, 7, 'user_profile', 'Screenshot (9).png', '2022-07-01 05:39:34', '2022-07-01 05:39:34'),
(8, 8, 'user_profile', 'Screenshot (9).png', '2022-07-01 05:50:12', '2022-07-01 05:50:12'),
(9, 3, 'blog_image', '70C:\\xampp\\tmp\\php3D3B.tmp', '2022-07-01 07:09:12', '2022-07-01 07:09:12'),
(10, 4, 'blog_image', '94png', '2022-07-01 07:12:24', '2022-07-01 07:12:24'),
(11, 5, 'blog_image', '14.png', '2022-07-01 07:13:21', '2022-07-01 07:13:21'),
(12, 6, 'blog_image', '10.png', '2022-07-01 07:41:33', '2022-07-01 07:41:33'),
(13, 7, 'blog_image', '13.png', '2022-07-01 07:46:51', '2022-07-01 07:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_07_01_085423_create_permission_tables', 1),
(5, '2022_07_01_091203_create_images_table', 1),
(6, '2022_07_01_112628_create_blogs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'blog-create', 'web', '2022-07-01 04:03:46', '2022-07-01 04:03:46'),
(2, 'blog-edit', 'web', '2022-07-01 04:03:46', '2022-07-01 04:03:46'),
(3, 'blog-delete', 'web', '2022-07-01 04:03:47', '2022-07-01 04:03:47'),
(4, 'blog-list', 'web', '2022-07-01 04:03:47', '2022-07-01 04:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-07-01 04:05:10', '2022-07-01 04:05:10'),
(2, 'User', 'web', '2022-07-01 04:05:11', '2022-07-01 04:05:11');

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
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `date`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'cskdkn', 'c dcn', 'p@gmail.com', '2022-07-12 18:30:00', NULL, '$2y$10$Jp2dVfR2TaaqpomfMwMf/e3fmRsipopO7/Q1MJwPwOpLGfcH/sXyO', 1, NULL, '2022-07-01 05:17:34', '2022-07-01 05:17:34'),
(2, 'cskdkn', 'c dcn', 'pss@gmail.com', '2022-07-12 18:30:00', NULL, '$2y$10$GMGgTa72PA34o86IPE6Kr.bWZ5YguoBnpUF4H2qbCcPwAC83Q62Zm', 1, NULL, '2022-07-01 05:25:07', '2022-07-01 05:25:07'),
(3, 'dnsaj', 'nsnk', 'd@gmail.com', '2022-07-13 18:30:00', NULL, '$2y$10$jOMBr5C.51g51IcF9Yy.xecKTscbYmi6U.xN9KaIWQ0RXjj/.7rGy', 1, NULL, '2022-07-01 05:29:30', '2022-07-01 05:29:30'),
(4, 'bsdb', 'cjdsncj', 'g@gmail.com', '2022-07-06 18:30:00', NULL, '$2y$10$C89VuoMBTMtb9tw1ATNShOP8j8Se.cYnQnz2m3V/4Sd0dZ0OLS38K', 1, NULL, '2022-07-01 05:32:19', '2022-07-01 05:32:19'),
(5, 'ccjdbb', 'jds', 'h@gmail.com', '2022-07-06 18:30:00', NULL, '$2y$10$Unb90NyuJThpaZxlU0Wfce9DQW.70hUgaBD9JMLqHgYsyJr8uCdgy', 2, NULL, '2022-07-01 05:36:10', '2022-07-01 05:36:10'),
(6, 'priyal', 'ghetiya', 'priyal@gmail.com', '2022-07-05 18:30:00', NULL, '$2y$10$gw73LTfzGxQxcjZY4UCdtupw640lT0OZxeCJym0oXFM77UfKYp7N2', 1, NULL, '2022-07-01 05:38:39', '2022-07-01 05:38:39'),
(7, 'user', 'test', 'user@gmail.com', '2022-07-01 13:07:48', NULL, '$2y$10$vTyWR66lkG2JHo9VdoCRLepG9xilHY5O6TsgqaazqvnZ8jd4TPTVK', 2, NULL, '2022-07-01 05:39:34', '2022-07-01 05:39:34'),
(8, 'fsfshfb', 'sjdnjs', 'pr@gmail.com', '2022-07-07 18:30:00', NULL, '$2y$10$XHqS9S.Hk1noptHrN7BZkOOVb/tqvkYcqNTvrHvB9/rh6ep9klImG', 1, NULL, '2022-07-01 05:50:12', '2022-07-01 05:50:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

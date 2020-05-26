-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2020 at 11:29 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insta`
--

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `like` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `created_at`, `updated_at`, `user_id`, `post_id`, `like`) VALUES
(16, '2020-05-25 01:09:34', '2020-05-25 01:09:34', 24, 24, 1),
(17, '2020-05-25 01:09:36', '2020-05-25 01:09:36', 24, 23, 1),
(18, '2020-05-25 01:21:11', '2020-05-25 01:21:25', 23, 27, 0),
(19, '2020-05-25 01:21:13', '2020-05-25 01:21:13', 23, 26, 1),
(20, '2020-05-25 01:21:15', '2020-05-25 01:21:15', 23, 25, 1),
(21, '2020-05-25 01:21:20', '2020-05-25 01:21:20', 23, 23, 1),
(22, '2020-05-25 01:21:22', '2020-05-25 01:21:22', 23, 24, 1),
(23, '2020-05-25 01:24:02', '2020-05-25 01:24:02', 23, 28, 1),
(24, '2020-05-25 01:47:00', '2020-05-25 01:47:00', 23, 29, 1),
(25, '2020-05-25 02:31:08', '2020-05-25 02:31:08', 23, 30, 1),
(27, '2020-05-25 02:40:51', '2020-05-25 02:40:51', 26, 28, 1),
(28, '2020-05-25 02:40:54', '2020-05-25 02:40:54', 26, 31, 1),
(29, '2020-05-25 02:48:45', '2020-05-25 02:48:45', 26, 34, 1),
(30, '2020-05-25 03:13:00', '2020-05-25 03:13:00', 23, 41, 1),
(31, '2020-05-25 03:13:02', '2020-05-25 03:13:03', 23, 40, 0),
(32, '2020-05-25 03:13:05', '2020-05-25 03:13:05', 23, 39, 1),
(33, '2020-05-25 03:13:09', '2020-05-25 03:13:09', 23, 38, 1),
(34, '2020-05-25 03:13:10', '2020-05-25 03:13:10', 23, 37, 1),
(35, '2020-05-25 03:25:21', '2020-05-25 03:25:21', 28, 48, 1),
(36, '2020-05-25 03:32:10', '2020-05-25 03:32:10', 26, 49, 0),
(37, '2020-05-25 03:32:11', '2020-05-25 03:32:11', 26, 48, 1),
(38, '2020-05-25 03:32:13', '2020-05-25 03:32:13', 26, 47, 0),
(39, '2020-05-25 03:32:18', '2020-05-25 03:32:18', 26, 46, 1),
(40, '2020-05-25 03:32:20', '2020-05-25 03:32:20', 26, 44, 1),
(41, '2020-05-25 03:32:21', '2020-05-25 03:32:21', 26, 43, 1),
(44, '2020-05-25 03:32:33', '2020-05-25 03:32:33', 26, 40, 0),
(45, '2020-05-26 00:19:51', '2020-05-26 00:19:51', 23, 49, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_29_071849_create_posts_table', 1),
(4, '2019_12_29_113708_add_user_id_to_posts', 1),
(5, '2020_05_12_051417_add_cover_image_to_posts', 1),
(7, '2020_05_19_045150_create_likes_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(23, '1st post', 'hello ;)', '2020-05-25 01:06:42', '2020-05-25 01:06:42', 23, 'hi_1590389502.jpg'),
(25, 'F.R.I.E.N.D.S.', '<3', '2020-05-25 01:11:14', '2020-05-25 01:11:14', 24, 'friends_1590389774.jpg'),
(26, 'HARRY', 'harry styles <3', '2020-05-25 01:13:25', '2020-05-25 01:13:25', 24, 'harrryyy_1590389905.jpg'),
(27, 'wallpaper', 'scenes', '2020-05-25 01:15:08', '2020-05-25 01:16:16', 24, '1_1590390076.jpg'),
(28, 'hello', '5’8 my height but my attitude 7.0 :P', '2020-05-25 01:23:36', '2020-05-25 02:35:10', 23, 'sa_1590394810.jpg'),
(31, 'Lisa', 'Don’t Study me. You won’t Graduate!', '2020-05-25 02:40:38', '2020-05-25 02:40:38', 26, 'b_1590395138.jpeg'),
(32, 'Lisa', 'Sorry if I Looked interested, I’m not.', '2020-05-25 02:42:27', '2020-05-25 02:42:27', 26, 'a_1590395247.jpeg'),
(33, 'Lisa', 'A flower does not think of competing with the flower next to it. It just blooms.', '2020-05-25 02:45:29', '2020-05-25 02:45:29', 26, 'daisy_1590395429.jpg'),
(34, 'HARRY', 'I LOVE HIS SONGS <3', '2020-05-25 02:47:51', '2020-05-25 02:47:51', 26, 'harry_1590395571.jpg'),
(35, 'Bestfriend', 'meet my best friend <3', '2020-05-25 02:52:52', '2020-05-25 02:53:25', 23, '97058478_727266538012637_2049934263419142144_n_1590395905.jpg'),
(36, 'hy', 'after a long time :P', '2020-05-25 02:55:05', '2020-05-25 02:55:05', 23, '96363455_2550549951863039_6695266939679277056_n_1590396005.jpg'),
(37, 'scenes', 'Ô, Sunlight! The most precious gold to be found on Earth.', '2020-05-25 03:02:07', '2020-05-25 03:02:07', 24, '2_1590396427.jpg'),
(38, 'hey', 'Its me', '2020-05-25 03:03:24', '2020-05-25 03:03:24', 24, 'c_1590396504.jpeg'),
(39, 'my 1st post', 'hi im asmit ;)', '2020-05-25 03:07:34', '2020-05-25 03:07:34', 27, 'd_1590396754.jpg'),
(40, 'anime', 'Nostalgic :)', '2020-05-25 03:09:06', '2020-05-25 03:09:06', 27, 'e_1590396846.jpg'),
(41, 'Roses', 'for her ;P', '2020-05-25 03:12:03', '2020-05-25 03:12:03', 27, 'IMG_20190606_200217_417_1590397023.jpg'),
(42, 'hy', 'Exhale the bullshit.', '2020-05-25 03:14:16', '2020-05-25 03:14:16', 23, 'IMG-3c8c2ea449651d302d873957c07df26e-V_1590397156.jpg'),
(43, 'Lisa', 'MY HAIR IS GROWING <3', '2020-05-25 03:16:28', '2020-05-25 03:16:28', 26, 'f_1590397288.jpeg'),
(46, 'hello', 'this is my first post :)', '2020-05-25 03:22:22', '2020-05-25 03:22:22', 28, 'h_1590397642.jpg'),
(47, 'hello', 'newari dress ;)', '2020-05-25 03:23:22', '2020-05-25 03:23:22', 23, 'DSC_8096.NEF_1590397702.jpg'),
(48, 'krishma', 'I know, I’m lucky that I’m so cute.', '2020-05-25 03:25:16', '2020-05-25 03:25:16', 28, 'i_1590397816.jpg'),
(49, 'scenes', 'guess the place ;P', '2020-05-25 03:31:44', '2020-05-25 03:31:44', 26, 'j_1590398204.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(23, 'Salina Bajracharya', 'salina12@gmail.com', '2020-05-25 01:05:42', '$2y$10$0FpUURxrgIFgfBbyylhKW.zkpjq8z/cIsxz3/6l.ztVCrbWFixGha', NULL, '2020-05-25 01:05:16', '2020-05-25 01:05:42'),
(24, 'sallu', 'sallu123@gmail.com', '2020-05-25 01:09:27', '$2y$10$uIg/GcELkK0Pibzm/B4BzOngkVbeOV3qsInLw1lByA58abs9oD9p2', NULL, '2020-05-25 01:09:08', '2020-05-25 01:09:27'),
(26, 'Lisa', 'lisa1234@gmail.com', '2020-05-25 02:40:05', '$2y$10$noKbTcNEyB34i9KxQIL90eoxFDbCd2C5gfkw8pybMjVRZ6Kxvf3L.', NULL, '2020-05-25 02:39:50', '2020-05-25 02:40:05'),
(27, 'Asmit', 'demigod@gmail.com', '2020-05-25 03:06:38', '$2y$10$N6pmgRxphVcpzvqpSzw4SeIeuo.YqkDGHk9.g8Jy5Cem3Uhi49MhK', NULL, '2020-05-25 03:06:12', '2020-05-25 03:06:38'),
(28, 'krishma', 'krishma@gmail.com', '2020-05-25 03:21:40', '$2y$10$Ok.rDhqBCUQ4iwkG8NxMeOzXamyVjMELHYfrYdl2QeX6vdNmvdVa6', NULL, '2020-05-25 03:21:26', '2020-05-25 03:21:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

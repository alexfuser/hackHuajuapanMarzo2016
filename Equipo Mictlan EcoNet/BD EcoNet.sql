-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 12, 2016 at 02:17 PM
-- Server version: 5.5.47-MariaDB-1ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `GREEN`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, '0', 1, 1, '2016-03-12 15:22:56', '2016-03-12 15:22:56'),
(2, 'comment 2', 1, 1, '2016-03-12 15:24:48', '2016-03-12 15:24:48'),
(3, '                                                Estas bien pinshi feo', 1, 20, '2016-03-12 19:42:07', '2016-03-12 19:42:07'),
(4, 'es cierto                                                ', 1, 20, '2016-03-12 19:47:44', '2016-03-12 19:47:44'),
(5, '                                                shido', 1, 19, '2016-03-12 20:25:57', '2016-03-12 20:25:57'),
(6, '                                                holitas', 1, 20, '2016-03-12 22:15:17', '2016-03-12 22:15:17'),
(7, 'popochas', 1, 20, '2016-03-12 22:15:31', '2016-03-12 22:15:31'),
(8, 'tonto', 1, 0, '2016-03-12 22:35:57', '2016-03-12 22:35:57'),
(9, 'nice', 1, 0, '2016-03-12 22:36:45', '2016-03-12 22:36:45'),
(10, 'hola', 1, 22, '2016-03-12 22:39:08', '2016-03-12 22:39:08'),
(11, 'estas bine pishi tonto gio', 1, 22, '2016-03-12 22:45:02', '2016-03-12 22:45:02'),
(12, 'asasdasd', 1, 24, '2016-03-12 22:49:16', '2016-03-12 22:49:16'),
(13, 'ta triste el kevo', 1, 21, '2016-03-12 22:57:51', '2016-03-12 22:57:51'),
(14, 'bebe emoxho', 1, 19, '2016-03-12 23:07:09', '2016-03-12 23:07:09'),
(15, 'Te amo kevin', 3, 22, '2016-03-12 23:39:55', '2016-03-12 23:39:55'),
(16, 'Cambió mi vida entera', 1, 27, '2016-03-13 01:02:47', '2016-03-13 01:02:47'),
(17, 'pero eso es un gasto demasiado grande!!', 1, 28, '2016-03-13 01:44:32', '2016-03-13 01:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_03_12_115228_addPhotoFieldtoPostTable', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `user_id`, `type`, `created_at`, `updated_at`, `photo`) VALUES
(1, '', 'post 1', 1, 0, '2016-03-12 15:07:31', '2016-03-12 15:07:31', ''),
(19, '', 'Daniel alejadnor idfjdkfjd dkjfdksjfs dsjflsdfjsl sfjlsjdflk dlsjflskdfj jsldfkjls jflskdfjlsd jkldsfjlsk jfldskfjlskj lksjdflskjdf lkjdflskjdflds jslkdfjlskdfjldskfj jdlskfjsl jldkjfls', 1, 3, '2016-03-12 18:43:01', '2016-03-12 18:43:01', ''),
(20, '', 'Daniel alejandro', 1, 1, '2016-03-12 18:47:34', '2016-03-12 18:47:34', '77240IMG_20150521_210823.jpg'),
(21, '', 'KEvo!!!', 1, 1, '2016-03-12 18:52:48', '2016-03-12 18:52:48', '25639IMG_20150521_210816.jpg'),
(22, '¿Cómo cosechar tu semilla y no moriri en el intento?', 'Ps no se :(... pero les dejo una foto del kevo', 1, 1, '2016-03-12 21:14:04', '2016-03-12 21:14:04', '9892IMG_20150521_210823.jpg'),
(23, 'cococo', 'alksndasndalskd                                                ', 1, 2, '2016-03-12 22:18:27', '2016-03-12 22:18:27', ''),
(24, 'cachuate', 'como cocechar cacahuates en el espacio D:                                                ', 1, 1, '2016-03-12 22:20:04', '2016-03-12 22:20:04', ''),
(25, 'Un tip para todos', 'Tips ', 1, 2, '2016-03-13 00:32:09', '2016-03-13 00:32:09', ''),
(26, 'Tips', 'Tips everywhere', 1, 2, '2016-03-13 00:35:05', '2016-03-13 00:35:05', ''),
(27, 'Sugerencias', ':p', 1, 3, '2016-03-13 00:55:38', '2016-03-13 00:55:38', '95023funny_law-wallpaper-1920x1080.jpg'),
(28, 'Haz que tus tomates crescan!!', 'Debes usar agua del garrafon!', 1, 3, '2016-03-13 01:44:09', '2016-03-13 01:44:09', '');

-- --------------------------------------------------------

--
-- Table structure for table `postTypes`
--

CREATE TABLE IF NOT EXISTS `postTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `postTypes`
--

INSERT INTO `postTypes` (`id`, `name`) VALUES
(1, 'Pregunta'),
(2, 'Tip'),
(3, 'Sugerencia');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'esau', 'esau.opr@gmail.com', '$2y$10$P4uzTfne4TpqmvIPEEnQ/.NSfXEZUTTcMY2SgDQsVYfr7Wg0DkY82', 'FmwhZRTzQmCx35G8bgZqGli4lUbFHxso7XhJiL317u4avDzyALuYhqNBEKHD', '2016-03-12 13:10:19', '2016-03-12 23:39:06'),
(2, 'daniel', 'daniel@mail.com', '$2y$10$KyzLjNfifhCWO6Y0g/4u3OwcuqXF4qu611OfZhHKQOQHLhVo5wjEK', 'UmwUE9P3tIMRH4zWwry6YMinGw2ahopJjLZkNjgmGRsCvbp8HIcUKtaRYVvM', '2016-03-12 13:38:17', '2016-03-12 13:50:17'),
(3, 'Topogio', 'topogio@topitos.com', '$2y$10$exS/YdXgh3JheN9EjMmXvueGF1r3JiRof86j9fNz/uaec7TOH/eS.', 'O2RqqN0CAg65BURmowOZgqnup6pXhTB6W1sD0T75p7wb1gu4IWRSAL3yo3L7', '2016-03-12 23:39:39', '2016-03-13 00:13:36');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

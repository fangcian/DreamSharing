-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1:3306
-- 產生時間： 2018 年 05 月 25 日 02:54
-- 伺服器版本: 5.7.19
-- PHP 版本： 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `dream_share`
--
CREATE DATABASE IF NOT EXISTS `dream_share` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dream_share`;

-- --------------------------------------------------------

--
-- 資料表結構 `analysis`
--
-- 建立時間: 2018 年 05 月 23 日 07:36
-- 最後更新: 2018 年 05 月 23 日 07:36
--

DROP TABLE IF EXISTS `analysis`;
CREATE TABLE IF NOT EXISTS `analysis` (
  `id` int(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 資料表新增前先清除舊資料 `analysis`
--

TRUNCATE TABLE `analysis`;
-- --------------------------------------------------------

--
-- 資料表結構 `dreams`
--
-- 建立時間: 2018 年 05 月 23 日 07:36
-- 最後更新: 2018 年 05 月 23 日 07:36
--

DROP TABLE IF EXISTS `dreams`;
CREATE TABLE IF NOT EXISTS `dreams` (
  `id` int(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` varchar(600) NOT NULL,
  `date` datetime NOT NULL,
  `account` varchar(20) NOT NULL,
  `share_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 資料表新增前先清除舊資料 `dreams`
--

TRUNCATE TABLE `dreams`;
-- --------------------------------------------------------

--
-- 資料表結構 `favorites`
--
-- 建立時間: 2018 年 05 月 23 日 07:36
-- 最後更新: 2018 年 05 月 23 日 07:36
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `fid` int(20) NOT NULL,
  `flag` varchar(20) NOT NULL,
  `account` varchar(20) NOT NULL,
  `article_id` varchar(20) NOT NULL,
  PRIMARY KEY (`fid`),
  KEY `account` (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 資料表新增前先清除舊資料 `favorites`
--

TRUNCATE TABLE `favorites`;
-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--
-- 建立時間: 2018 年 05 月 23 日 07:58
-- 最後更新: 2018 年 05 月 23 日 07:58
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增前先清除舊資料 `migrations`
--

TRUNCATE TABLE `migrations`;
-- --------------------------------------------------------

--
-- 資料表結構 `replys`
--
-- 建立時間: 2018 年 05 月 23 日 07:36
-- 最後更新: 2018 年 05 月 23 日 07:36
--

DROP TABLE IF EXISTS `replys`;
CREATE TABLE IF NOT EXISTS `replys` (
  `id` int(20) NOT NULL,
  `content` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `account` varchar(20) NOT NULL,
  `did` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`account`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 資料表新增前先清除舊資料 `replys`
--

TRUNCATE TABLE `replys`;
-- --------------------------------------------------------

--
-- 資料表結構 `users`
--
-- 建立時間: 2018 年 05 月 23 日 07:58
-- 最後更新: 2018 年 05 月 23 日 07:58
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增前先清除舊資料 `users`
--

TRUNCATE TABLE `users`;
--
-- 資料表的匯出資料 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `account`, `password`, `sex`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '小胖', '123456@aa.aa', 'a123456', '$2y$10$hCC6EDcGbyYKoG0kDtP5fOa3j5kaNSeAKe5Wl3jXp2YXjcpjdhpXq', 'M', 'DybQSIdKoBOcbZpCeglTYDwrhWigWLxKvVSyv3YmAUcTBMIbX7oL5y8Xg8fd', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

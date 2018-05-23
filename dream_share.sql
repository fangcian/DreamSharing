-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1:3306
-- 產生時間： 2018-05-09 07:33:50
-- 伺服器版本: 5.7.19
-- PHP 版本： 5.6.31

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
-- 建立時間: 2018-05-09 07:23:57
-- 最後更新: 2018-05-09 07:23:57
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
-- 建立時間: 2018-05-09 07:23:44
-- 最後更新: 2018-05-09 07:23:44
-- 最後檢查: 2018-05-09 07:23:44
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
-- 資料表結構 `favorite`
--
-- 建立時間: 2018-05-09 07:26:41
-- 最後更新: 2018-05-09 07:26:41
-- 最後檢查: 2018-05-09 07:26:41
--

DROP TABLE IF EXISTS `favorite`;
CREATE TABLE IF NOT EXISTS `favorite` (
  `fid` varchar(20) NOT NULL,
  `flag` varchar(20) NOT NULL,
  `account` varchar(20) NOT NULL,
  PRIMARY KEY (`fid`,`account`),
  KEY `account` (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 資料表新增前先清除舊資料 `favorite`
--

TRUNCATE TABLE `favorite`;
-- --------------------------------------------------------

--
-- 資料表結構 `replys`
--
-- 建立時間: 2018-05-09 07:33:05
-- 最後更新: 2018-05-09 07:33:05
-- 最後檢查: 2018-05-09 07:33:05
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
-- 建立時間: 2018-05-09 07:24:28
-- 最後更新: 2018-05-09 07:24:28
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `account` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `sex` char(2) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  PRIMARY KEY (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 資料表新增前先清除舊資料 `users`
--

TRUNCATE TABLE `users`;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

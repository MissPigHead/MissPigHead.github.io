-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-01-20 19:01:55
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `webpage`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`id`, `email`, `pw`) VALUES
(1, 'misspighead@gmail.com', '10902php');

-- --------------------------------------------------------

--
-- 資料表結構 `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'github,tel,email,etc.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'linkpath,id,num..',
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'social media,common',
  `sh` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `contact`
--

INSERT INTO `contact` (`id`, `name`, `value`, `type`, `sh`) VALUES
(1, 'tel', '0927775101', 'tel', 1),
(3, 'email', 'misspighead@gmail.com', 'email', 1),
(4, 'codepen', 'https://codepen.io/misspighead', 'link', 1),
(5, 'linkedin', 'https://www.linkedin.com/in/lmisspighead/', 'link', 1),
(6, 'github', 'https://github.com/MissPigHead', 'link', 1),
(7, 'location', 'XinDian, New Taipei City, Taiwan', 'location', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `period` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ex:2012:08~2014:01',
  `company` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `experience`
--

INSERT INTO `experience` (`id`, `period`, `company`, `title`, `sh`) VALUES
(2, '2018-2019', 'SIT', 'Project Coordinator', 1),
(3, '2018', 'Dimension Data', 'Project Coordinator', 1),
(5, '2014-2017', 'ACTS Corp.', 'Project Manager', 1),
(6, '2013', 'QBlinks Inc.', 'Co-founder, Project Manager', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `filepath` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `session` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'session used in'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `introduction`
--

CREATE TABLE `introduction` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `introduction`
--

INSERT INTO `introduction` (`id`, `name`, `value`, `sh`) VALUES
(1, 'intro_CH', '歷經電視紀錄片執行製作、家電企劃，近年在通訊產業擔任專案經理，假日於庇護工場擔任講師。\r\n2020下半年，在興趣驅使下，展開網頁工程師之路。', 0),
(2, 'intro', 'Hi! I am Ling, an experienced telecommunication project manager, major customers are FET, TWM, Nokia, and Ericsson.\r\nNow I\'m a growing web designer.\r\nWelcome to contact me!', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `personal`
--

CREATE TABLE `personal` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_CH` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date NOT NULL,
  `per_img` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'img file path'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `personal`
--

INSERT INTO `personal` (`id`, `name`, `name_CH`, `birth`, `per_img`) VALUES
(1, 'Ling-Ling, Chang', '張綾凌', '1982-11-22', '');

-- --------------------------------------------------------

--
-- 資料表結構 `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'img file path',
  `period` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) NOT NULL,
  `title_CH` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_CH` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_CH` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `session`
--

CREATE TABLE `session` (
  `id` int(1) NOT NULL,
  `sess_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sess_name_CH` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `session`
--

INSERT INTO `session` (`id`, `sess_name`, `sess_name_CH`) VALUES
(1, 'Personal Information', '個人基本資料'),
(2, 'Introduction', '自傳'),
(3, 'Work Experience', '工作經驗'),
(4, 'Education', '學歷'),
(5, 'Objective', '求職目標'),
(6, 'Portfolio', '作品集'),
(7, 'img', '圖片庫'),
(8, 'Skills', '技能');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `introduction`
--
ALTER TABLE `introduction`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `introduction`
--
ALTER TABLE `introduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `session`
--
ALTER TABLE `session`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

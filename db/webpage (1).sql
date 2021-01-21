-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-01-21 10:00:27
-- 伺服器版本： 10.4.17-MariaDB
-- PHP 版本： 7.4.13

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
  `company_CH` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_CH` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_CH` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `experience`
--

INSERT INTO `experience` (`id`, `period`, `company`, `company_CH`, `title`, `title_CH`, `description`, `description_CH`, `sh`) VALUES
(2, '2018-2019', 'SIT', '勝和科技', 'Project Specialist', '專案專員', '', '', 1),
(3, '2018', 'Dimension Data', '台灣岱凱', 'Project Coordinator', '專案專員', '', '', 1),
(5, '2014-2017', 'ACTS Corp.', '聯瑞科技', 'Project Manager', '專案經理', '⦁ Precise control of budget and schedule \r\n⦁ Excellent management of customer relationship \r\n⦁ Rich experience at leading projects of new product/customer introduction ', '⦁ 精準掌控成本與時程\r\n⦁ 良好的客戶關係\r\n⦁ 優秀的新客戶及新產品導入經驗', 1),
(6, '2013', 'QBlinks Inc.', '酷比令有限公司', 'Co-founder, Project Manager', '共同創辦人, 專案經理', '⦁ Responsible for project management and general affairs. ', '⦁ 管理、規劃並執行公司登記、ODM發包、Oracle ERP導入，等內外大小事宜。', 1);

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
(2, 'intro', 'Hi! I am Ling, an experienced telecommunication project manager, major customers are FET, TWM, Nokia, and Ericsson.\r\nNow I\'m a growing web designer.\r\nWelcome to contact me!', 0),
(3, 'intro_CH', '我是張綾凌，曾多方嘗試不同產業和職務，擁有包容的態度及靈活的視角，也因個性誠懇踏實、實事求是，長期在各領域中皆受主管賞識，賦予重要任務。\r\n\r\n2008年，我於中國《奧運手牽手》十八省聯播節目轉播基地，管理10餘人團隊，完備現場百人各項需求；亦因靈巧調度能力，受鳳凰衛視製作人之邀參與製作。執行作品含金鐘獎最佳教育節目獎《最後島嶼—台灣防衛戰1950-1955》等。\r\n\r\n2013年，我與當時團隊共同成立酷比令有限公司；對內控管軟體開發進度，對外ODM管理、專利申請、安規認證等，並負責財務、總務大小事宜，更成功為公司導入ERP系統。\r\n\r\n2014年，我於通訊業擔任專案經理。在工程期間缺乏資源下，亦曾經獨立負責車輛電力整合，在公司內部負責跨職能的角色。\r\n\r\n我具備高度學習、邏輯與組織能力，重效率、守承諾，長期獲得良好客戶滿意度。歡迎您與我聯絡！', 1);

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
-- 資料表結構 `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `company` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_name_CH` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_CH` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `project`
--

INSERT INTO `project` (`id`, `company`, `period`, `project_name`, `project_name_CH`, `description`, `description_CH`) VALUES
(1, '5', '2014 ~ 2017', 'FET - Mobile Stateful Firewall Expansion & MA', '遠傳電信 - Mobile Stateful Firewall 建置案 及 維護案', '', '建置內容為行動網路與骨幹界接的中繼防火墻；維護案為駐點監控設備狀態 。\r\n★ 相關專案文件在2015年被選為遠傳電信專案管理示範文件。'),
(2, '5', '2014 ~ 2017 ', 'FET - TEMS Benchmark Test Tool Integration & MA', '遠傳電信 - TEMS Benchmark Test Tool 訊號場測儀器系統整合案', '', '前期設備為行動裝置為主，後期導入車載式場測系統，亦包含車輛電力整合，及相關後分析軟體驗證等任務 。\r\n★ 獨立完成測試車輛電力及機構改裝設計。'),
(3, '5', '2015', 'FET - ROADM - Core Network Transportation Expansion -East', '遠傳電信 - ROADM 花東建置案', '', '參與ROADM骨幹網路花東地區建置案。此為遠傳電信環台骨幹網路後期專案：花東接中橫、坊山的機房及設備建置，建置期間遇農曆年前搶工潮，且各案場皆為偏遠地區，專案團隊依舊在時限及預算內完成。'),
(4, '5', '2015', 'FET - CWDM - EBU Network Transportation Expansion', '遠傳電信 - CWDM建置案', '', '負責EBU 用戶至遠傳機房端CWDM 傳輸系統建置。\r\n案場如台積電、中嘉、萊爾福、全台物流等。'),
(5, '5', '2016 ~ 2017', 'Ericsson Taiwan - Google Field Installation', '台灣愛立信 - Google 機房建置案', '', '協助愛立信完成 Google 彰濱、台北、頭城海纜站等各地機房設備建置、光纖布放等派工。\r\n負責三方溝通協調、專案時程和成本掌控。'),
(6, '5', '', 'NSN (Nokia) - TEMS Benchmark Test Tool Integration', '台灣諾基亞 - TEMS 訊號場測儀器系統整合案', '', ''),
(7, '6', '', '', '產品生產與開發', '', '- 與外部團隊合作ODM，負責ID /ME /EE 硬體相關開發及生產控管\r\n- 控管內部軟體開發進度\r\n- 負責FCC, CE, UL, NCC 等相關安規測試，與外部團隊共同撰寫品質驗證計劃\r\n- 負責全球物料採購與庫存管理\r\n- 負責產品專利申請(發明專利：台、中、美；設計專利：台、美、歐)\r\n'),
(8, '6', '', '', '公司營運', '', '- 負責導入Oracle ERP System，含系統流程規、操作SOP制定\r\n- 公司零用金等日常財務管理\r\n- 總務管理'),
(9, '6', '', '', '公司成立', '', '- 負責公司商業登記、營業登記等法人註冊事宜\r\n- 負責CI /Website 設計發包\r\n- 負責公司商標註冊(台、中、美、歐)');

-- --------------------------------------------------------

--
-- 資料表結構 `session`
--

CREATE TABLE `session` (
  `id` int(1) NOT NULL,
  `table_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name_CH` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `session`
--

INSERT INTO `session` (`id`, `table_name`, `table_name_CH`) VALUES
(1, 'Personal Information', '個人基本資料'),
(2, 'Introduction', '自傳'),
(3, 'Work Experience', '工作經驗'),
(4, 'Education', '學歷'),
(5, 'Objective', '求職目標'),
(6, 'Portfolio', '作品集'),
(7, 'img', '圖片庫'),
(8, 'Skills', '技能');

-- --------------------------------------------------------

--
-- 資料表結構 `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `skill` int(11) NOT NULL,
  `description` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `icon` int(11) NOT NULL,
  `sh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- 資料表索引 `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `skill`
--
ALTER TABLE `skill`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `session`
--
ALTER TABLE `session`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

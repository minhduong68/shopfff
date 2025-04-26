-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 24, 2020 lúc 08:09 PM
-- Phiên bản máy phục vụ: 10.2.33-MariaDB-log-cll-lve
-- Phiên bản PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `naptienf_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giftcode`
--

CREATE TABLE `giftcode` (
  `id` int(255) NOT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `action` varchar(999) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `giftcode` varchar(999) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `percent` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'true',
  `expire` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `time` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `homthinhbian`
--

CREATE TABLE `homthinhbian` (
  `id` int(255) NOT NULL,
  `kimcuong` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `giatien` varchar(999) NOT NULL DEFAULT '0',
  `nguoimua` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_nopad_ci NOT NULL DEFAULT 'null',
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `napthe`
--

CREATE TABLE `napthe` (
  `id` int(255) NOT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tranid` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `napthe`
--

INSERT INTO `napthe` (`id`, `username`, `type`, `amount`, `serial`, `pin`, `tranid`, `status`, `time`) VALUES
(64, 'jinkgamer8487', 'VIETTEL', '10000', '10005046002859', '615727438742794', '68343', '1', 1603528753),
(65, 'jinkgamer8487', 'VIETTEL', '50000', '55010068572360', '211698055398256', '90800', '1', 1603528907);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nickff`
--

CREATE TABLE `nickff` (
  `id` int(255) NOT NULL,
  `taikhoan` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhanvat` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dangky` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pet` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noibat` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `2fa` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nguoimua` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `random_freefire`
--

CREATE TABLE `random_freefire` (
  `id` int(255) NOT NULL,
  `name` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cname` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `mota` varchar(999) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `random_freefire`
--

INSERT INTO `random_freefire` (`id`, `name`, `cname`, `thumb`, `giatien`, `mota`, `status`, `time`) VALUES
(13, 'Random Free Fire 150K', 'random-acc-150k', 'https://i.imgur.com/pQeAWow.gif', '150000', NULL, 'true', 1598959694),
(14, 'Random Free Fire 100K', 'random-acc-100k', 'https://i.imgur.com/HCLvHR4.gif', '100000', NULL, 'true', 1598980630),
(15, 'Random Free Fire 50K', 'random-acc-50k', 'https://i.imgur.com/u6ACWUI.gif', '50000', NULL, 'true', 1598980645),
(16, 'Random Free Fire 20K', 'random-acc-20k', 'https://i.imgur.com/o5jblY1.gif', '20000', NULL, 'true', 1598980656),
(17, 'Random Free Fire 10K', 'random-acc-10k', 'https://i.imgur.com/YMZincz.gif', '10000', NULL, 'true', 1599068140),
(28, 'asdasd', 'asdasd', 'https://i.imgur.com/YMZincz.gif', '100000', '<p>121</p>\r\n', 'true', 1603286552);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `random_freefire_nick`
--

CREATE TABLE `random_freefire_nick` (
  `id` int(255) NOT NULL,
  `cname` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2fa` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `nguoimua` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rut_kim_cuong`
--

CREATE TABLE `rut_kim_cuong` (
  `id` int(255) NOT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idgame` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `kimcuong` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `noidung` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `rut_kim_cuong`
--

INSERT INTO `rut_kim_cuong` (`id`, `username`, `idgame`, `kimcuong`, `noidung`, `status`, `time`) VALUES
(18, 'hahahaaza1', '23131', '230', 'sdsds', '1', 1603297332);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(255) NOT NULL,
  `key` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(9, 'web_logo', '{\"url\":\"https:\\/\\/i.imgur.com\\/PrRLMK3.png\",\"height\":\"30\",\"width\":\"100\"}'),
(10, 'web_banner', '{\"url\":\"https:\\/\\/i.imgur.com\\/twd6Ld3.gif\"}'),
(8, 'web_title', '{\"title\":\"Shop Ch\\u00ednh Th\\u1ee9c C\\u1ee7a Garena FreeFire\",\"name\":\"SHOPMATHUAT.COM\"}'),
(12, 'web_admin', '{\"name\":\"\\u0110\\u1ea1t Light\",\"phone\":\"0382440207\",\"facebook\":\"https:\\/\\/www.facebook.com\\/dat.lightdzz\",\"youtube\":\"https:\\/\\/www.youtube.com\\/c\"}'),
(13, 'web_thongbao', '{\"thongbao\":\"<center><b>SHOPMATHUAT \\u0110ANG GI\\u1ea2M GI\\u00c1 TO\\u00c0N B\\u1ed8!<\\/b><\\/center>\\r\\n<center><b>\\u2605 H\\u1ed7 tr\\u1ee3 n\\u1ea1p th\\u1ebb b\\u1eb1ng c\\u00e1c lo\\u1ea1i th\\u1ebb c\\u00e0o:<font color=\\\"orange\\\"> Viettel, Mobifone, Vinaphone<\\/font> v\\u00e0 <font color=\\\"orange\\\">Ho\\u00e0n To\\u00e0n T\\u1ef1 \\u0110\\u1ed9ng 100%<\\/font><\\/b><\\/center>\\r\\n<center><b>\\u01afu ti\\u00ean n\\u1ea1p th\\u1ebb Viettel v\\u00e0 Vinaphone \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c x\\u1eed l\\u00ed t\\u1ef1 \\u0111\\u00f4ng!<\\/b><\\/center>\",\"time\":\"18\"}'),
(16, 'hinhanh_game', '{\"banaccff\":\"https:\\/\\/i.imgur.com\\/QMCLud3.jpg\",\"vanmayff\":\"https:\\/\\/i.imgur.com\\/97ay0wP.gif\",\"homthinhff\":\"https:\\/\\/i.imgur.com\\/7vXohcY.gif\",\"lattheff\":\"https:\\/\\/i.imgur.com\\/WB0A70a.gif\",\"sieucapff\":\"https:\\/\\/i.imgur.com\\/W23Ev8N.gif\",\"codesungff\":\"https:\\/\\/i.imgur.com\\/Hlji2zs.gif\"}'),
(11, 'web_color', '{\"color\":\"#797f66\"}'),
(14, 'hienthi_game', '{\"banaccff\":\"1\",\"vanmayff\":\"1\",\"homthinhff\":\"1\",\"lattheff\":\"1\",\"sieucapff\":\"1\",\"codesungff\":\"1\"}'),
(15, 'hienthi_web', '{\"napthe_mobile\":\"1\",\"napthe_pc\":\"1\",\"vongquay\":\"1\",\"dichvu\":\"1\",\"random\":\"1\"}'),
(17, 'web_napthe', '{\"kieunap\":\"naptudong\",\"api_key\":\"6b45b308-c01a-4331-b28e-c08c2f08c347\"}'),
(18, 'web_brick', '{\"kieunap\":\"naptudong\",\"api_key\":\"6b45b308-c01a-4331-b28e-c08c2f08c347\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_bingo`
--

CREATE TABLE `setting_bingo` (
  `item_1` int(11) NOT NULL,
  `item_2` int(11) NOT NULL,
  `item_3` int(11) NOT NULL,
  `item_4` int(11) NOT NULL,
  `item_5` int(11) NOT NULL,
  `item_6` int(11) NOT NULL,
  `item_7` int(11) NOT NULL,
  `item_8` int(11) NOT NULL,
  `item_9` int(11) NOT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `nohu_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `nohu_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sudung` int(255) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting_bingo`
--

INSERT INTO `setting_bingo` (`item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`, `item_9`, `giatien`, `nohu_from`, `nohu_to`, `sudung`) VALUES
(10, 10, 10, 10, 10, 10, 10, 10, 10, '50000', '100', '200', 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_latthe`
--

CREATE TABLE `setting_latthe` (
  `item_1` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_2` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_3` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_4` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_5` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_6` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting_latthe`
--

INSERT INTO `setting_latthe` (`item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `giatien`) VALUES
('10', '10', '10', '10', '10', '10', '30000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_sieucap`
--

CREATE TABLE `setting_sieucap` (
  `item_1` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_2` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_3` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_4` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting_sieucap`
--

INSERT INTO `setting_sieucap` (`item_1`, `item_2`, `item_3`, `item_4`, `giatien`) VALUES
('10', '10', '10', '10', '19000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `fbid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(255) NOT NULL,
  `name` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_nap` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `kimcuong` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `quanhuy` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `token` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `verify` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verify_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fbid`, `admin`, `name`, `username`, `password`, `email`, `money`, `money_nap`, `kimcuong`, `quanhuy`, `token`, `auth`, `ip`, `verify`, `verify_code`, `time`) VALUES
(6, '0', 1, 'Administrator', 'hahahaaza1', 'e8af4d47e1853ff33b6260bd87bcaf6f', 'hahahaaza1@gmail.vcom', '2258150', '0', '93547', '0', 'f0ddb2ea71f08a18b1894d2dce281fc318db6817da9b4615952f29f8db1c', '015e797c50f7a3d98b56cf6cd0d683c85a82a6dfa4139a702dd81e3a3195', '113.163.194.219', 'true', '85267', 1602021364),
(13, '0', 0, 'Lê Văn Hiếu', 'jinkgamer8487', 'c5cf4472e10645fddad96c383eb3c05c', 'jinkgamer8487@gmail.com', '60000', '0', '0', '0', 'b2405ccc04c400dbf7408355dd5f8ad6b13fb6c23b7b9469437e4cbd073f', 'dea01c3cc02387ac19025631fa28b7afb263fd224d37626105c3af6052b6', '113.185.75.220', 'true', '63013', 1603528740);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_history_system`
--

CREATE TABLE `user_history_system` (
  `id` int(255) NOT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_name` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sotien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `mota` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user_history_system`
--

INSERT INTO `user_history_system` (`id`, `username`, `action`, `action_name`, `sotien`, `mota`, `time`) VALUES
(418, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Bá»¯a Tiá»‡c BĂ£i Biá»ƒn', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 0 Kim CÆ°Æ¡ng', 1602246447),
(419, 'kunkeypr', 'VĂ²ng Quay SiĂªu Cáº¥p', 'VĂ²ng Quay SiĂªu Cáº¥p', '-19,000Ä‘', 'Nháº­n ÄÆ°á»£c 100 Kim CÆ°Æ¡ng', 1602246515),
(420, 'kunkeypr', 'HĂ²m Kim CÆ°Æ¡ng', 'HĂ²m Kim CÆ°Æ¡ng', '-30,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 20 Kim CÆ°Æ¡ng', 1602246574),
(421, 'kunkeypr', 'Bingo FreeFire', 'Bingo FreeFire', '-20,000Ä‘', 'Báº¡n TrĂºng 250 Kim CÆ°Æ¡ng', 1602246672),
(422, 'kunkeypr', 'Láº­t Tháº» FreeFire', 'Láº­t Tháº» FreeFire', '-30,000Ä‘', 'Báº¡n TrĂºng 500 Kim CÆ°Æ¡ng', 1602246717),
(423, 'kunkeypr', 'Mua Nick FreeFire', 'Mua Nick Freefire #5', '-30,000Ä‘', 'Mua Nick Freefire #5', 1602246789),
(424, 'kunkeypr', 'VĂ²ng Quay Code SĂºng', 'Ăªrsdfsdf', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c Code Mp40 Sáº¥m SĂ©t', 1602246809),
(425, 'kunkeypr', 'Mua Acc Random', '23926', '-50,000Ä‘', 'Mua Acc #23926 Loáº¡i Random Free Fire 50K', 1602246917),
(426, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Bá»¯a Tiá»‡c BĂ£i Biá»ƒn', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 222 Kim CÆ°Æ¡ng', 1602533027),
(427, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Bá»¯a Tiá»‡c BĂ£i Biá»ƒn', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 245 Kim CÆ°Æ¡ng', 1602533040),
(428, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Bá»¯a Tiá»‡c BĂ£i Biá»ƒn', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 0 Kim CÆ°Æ¡ng', 1602533058),
(429, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Bá»¯a Tiá»‡c BĂ£i Biá»ƒn', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 110 Kim CÆ°Æ¡ng', 1602533074),
(430, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Bá»¯a Tiá»‡c BĂ£i Biá»ƒn', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 7999 Kim CÆ°Æ¡ng', 1602533136),
(431, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Bá»¯a Tiá»‡c BĂ£i Biá»ƒn', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 4111 Kim CÆ°Æ¡ng', 1602533151),
(432, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Bá»¯a Tiá»‡c BĂ£i Biá»ƒn', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 110 Kim CÆ°Æ¡ng', 1602533187),
(433, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Bá»¯a Tiá»‡c BĂ£i Biá»ƒn', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 110 Kim CÆ°Æ¡ng', 1602533200),
(434, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Bá»¯a Tiá»‡c BĂ£i Biá»ƒn', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 110 Kim CÆ°Æ¡ng', 1602533214),
(435, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Bá»¯a Tiá»‡c BĂ£i Biá»ƒn', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 7999 Kim CÆ°Æ¡ng', 1602533227),
(436, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Bá»¯a Tiá»‡c BĂ£i Biá»ƒn', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 7999 Kim CÆ°Æ¡ng', 1602533240),
(437, 'kunkeypr', 'Láº­t Tháº» FreeFire', 'Láº­t Tháº» FreeFire', '-30,000Ä‘', 'Báº¡n TrĂºng 9999 Kim CÆ°Æ¡ng', 1602533299),
(438, 'kunkeypr', 'Láº­t Tháº» FreeFire', 'Láº­t Tháº» FreeFire', '-30,000Ä‘', 'ChĂºc Báº¡n May Máº¯n Láº§n Sau!', 1602533313),
(439, 'kunkeypr', 'Láº­t Tháº» FreeFire', 'Láº­t Tháº» FreeFire', '-30,000Ä‘', 'Báº¡n TrĂºng 10 Kim CÆ°Æ¡ng', 1602533320),
(440, 'kunkeypr', 'Láº­t Tháº» FreeFire', 'Láº­t Tháº» FreeFire', '-30,000Ä‘', 'Báº¡n TrĂºng 5000 Kim CÆ°Æ¡ng', 1602533325),
(441, 'kunkeypr', 'RĂºt Kim CÆ°Æ¡ng Freefire', 'RĂºt Kim CÆ°Æ¡ng Freefire', '-90 kc', 'RĂºt 90 kim cÆ°Æ¡ng vĂ o ID 1234123', 1602538797),
(442, 'kunkeypr', 'Mua Nick FreeFire', 'Mua Nick Freefire #9', '-10,000Ä‘', 'Mua Nick Freefire #9', 1602603487),
(443, 'kunkeypr', 'Mua Nick FreeFire', 'Mua Nick Freefire #8', '-60,000Ä‘', 'Mua Nick Freefire #8', 1602606574),
(444, 'kunkeypr', 'Mua Nick FreeFire', 'Mua Nick Freefire #7', '-15,000Ä‘', 'Mua Nick Freefire #7', 1602608374),
(445, 'kunkeypr', 'Mua Nick FreeFire', 'Mua Nick Freefire #6', '-24,000Ä‘', 'Mua Nick Freefire #6', 1602608940),
(446, 'kunkeypr', 'Mua Nick FreeFire', 'Mua Nick Freefire #10', '-0Ä‘', 'Mua Nick Freefire #10', 1602637044),
(447, 'kunkeypr', 'HĂ²m Kim CÆ°Æ¡ng', 'HĂ²m Kim CÆ°Æ¡ng', '-30,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 20 Kim CÆ°Æ¡ng', 1602645753),
(448, 'kunkeypr', 'HĂ²m Kim CÆ°Æ¡ng', 'HĂ²m Kim CÆ°Æ¡ng', '-30,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 20 Kim CÆ°Æ¡ng', 1602645759),
(449, 'kunkeypr', 'HĂ²m Kim CÆ°Æ¡ng', 'HĂ²m Kim CÆ°Æ¡ng', '-30,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 20 Kim CÆ°Æ¡ng', 1602645769),
(450, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Bá»¯a Tiá»‡c BĂ£i Biá»ƒn', '-20,000Ä‘', 'Nháº­n Ä‘Æ°á»£c  Kim CÆ°Æ¡ng', 1602677926),
(451, 'kunkeypr', 'RĂºt Kim CÆ°Æ¡ng Freefire', 'RĂºt Kim CÆ°Æ¡ng Freefire', '-230 kc', 'RĂºt 230 kim cÆ°Æ¡ng vĂ o ID 1234123', 1602695691),
(452, 'kunkeypr', 'RĂºt Kim CÆ°Æ¡ng Freefire', 'RĂºt Kim CÆ°Æ¡ng Freefire', '-230 kc', 'RĂºt 230 kim cÆ°Æ¡ng vĂ o ID 1234123', 1602696382),
(453, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'ame imouto', '-30,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 0 Kim CÆ°Æ¡ng', 1602784544),
(454, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Du Lá»‹ch MĂ¹a HĂ¨', '-19,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 235 Kim CÆ°Æ¡ng', 1602784562),
(455, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay Du Lá»‹ch MĂ¹a HĂ¨', '-19,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 2999 Kim CÆ°Æ¡ng', 1602784588),
(456, 'kunkeypr', 'Mua Acc Random', '23938', '-10,000Ä‘', 'Mua Acc #23938 Loáº¡i Random Free Fire 10K', 1602785621),
(457, 'kunkeypr', 'VĂ²ng Quay FreeFire', 'VĂ²ng Quay MĂ¹a HĂ¨', '-30,000Ä‘', 'Nháº­n Ä‘Æ°á»£c 0 Kim CÆ°Æ¡ng', 1602788278),
(458, 'hahahaaza1', 'Vòng Quay FreeFire', 'VĂ²ng Quay Ná»— HÅ© 20K', '-20,000đ', 'Nhận được 239 Kim Cương', 1603283625),
(459, 'hahahaaza1', 'Vòng Quay FreeFire', 'VĂ²ng Quay Du Lá»‹ch MĂ¹a HĂ¨', '-19,000đ', 'Nhận được 8000 Kim Cương', 1603296823),
(460, 'hahahaaza1', 'Rút Kim Cương Freefire', 'Rút Kim Cương Freefire', '-230 kc', 'Rút 230 kim cương vào ID 23131', 1603297332);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vongquay_codesung`
--

CREATE TABLE `vongquay_codesung` (
  `id` int(255) NOT NULL,
  `item_1` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `item_2` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `item_3` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `item_4` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `item_5` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `item_6` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `item_7` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `item_8` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `vongquay_codesung`
--

INSERT INTO `vongquay_codesung` (`id`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`, `giatien`) VALUES
(1, '10', '10', '10', '10', '10', '10', '10', '10', '20000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vongquay_codesung_gift`
--

CREATE TABLE `vongquay_codesung_gift` (
  `item_1` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_2` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_3` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_4` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_5` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_6` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_7` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_8` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `vongquay_codesung_gift`
--

INSERT INTO `vongquay_codesung_gift` (`item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`) VALUES
('1234567890098', '1234567890098', NULL, '1234567890098', 'Ăªrsdfsdf', 'sdfsdfdsf', 'sdfsdfsdf', 'czvvx');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vongquay_kimcuong`
--

CREATE TABLE `vongquay_kimcuong` (
  `id` int(255) NOT NULL,
  `name` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sudung` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT 'false',
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `vongquay_kimcuong`
--

INSERT INTO `vongquay_kimcuong` (`id`, `name`, `mota`, `giatien`, `sudung`, `status`, `time`) VALUES
(20, 'VĂ²ng Quay Sinh Nháº­t 30K', 'nothing in hre', '30000', '9211', 'true', 1597966784),
(21, 'VÒ€NG QUAY VÅ¨ KHĂ MÆ  Æ¯á»C 25K', 'Demo vĂ²ng quay 2', '25000', '4601', 'true', 1597970090),
(23, 'VĂ²ng Quay Ná»— HÅ© 20K', '', '20000', '2311', 'true', 1598034829),
(24, 'VĂ²ng Quay Bá»‹ Lá»—i 17K', '', '17000', '2025', 'true', 1598212811),
(26, 'VĂ²ng Quay Sinh Nháº­t Freefire', '', '20000', '1241', 'true', 1599290268),
(27, 'VĂ²ng Quay Táº¿t Trung Thu', '', '21000', '78418', 'true', 1599290494),
(28, 'VĂ²ng Quay Du Lá»‹ch MĂ¹a HĂ¨', '', '19000', '1134', 'true', 1599290683),
(32, '3423', 'rewrwe', '4234234', '0', 'true', 1603283317),
(33, 'Test', 'Hshsh', '0000', '0', 'false', 1603544166);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vongquay_kimcuong_gift`
--

CREATE TABLE `vongquay_kimcuong_gift` (
  `id` int(255) NOT NULL,
  `id_vongquay` int(255) NOT NULL,
  `item_1` varchar(999) NOT NULL,
  `item_2` varchar(999) NOT NULL,
  `item_3` varchar(999) NOT NULL,
  `item_4` varchar(999) NOT NULL,
  `item_5` varchar(999) NOT NULL,
  `item_6` varchar(999) NOT NULL,
  `item_7` varchar(999) NOT NULL,
  `item_8` varchar(999) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `vongquay_kimcuong_gift`
--

INSERT INTO `vongquay_kimcuong_gift` (`id`, `id_vongquay`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`) VALUES
(22, 23, '{\"text\":\"N\\u01b0\\u1edbc D\\u1eeba M\\u00e1t L\\u1ea1nh T\\u0103ng B\\u1ea1n 10% May M\\u1eafn Nh\\u00e9\",\"kimcuong\":\"0\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 99 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"99\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 239 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"239\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 349 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"349\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"999\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 3.999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"3999\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 15.000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"15000\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 25.000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"25000\",\"tyle\":\"10\"}'),
(23, 24, '{\"text\":\"Ch\\u00fac B\\u1ea1n May M\\u1eafn L\\u1ea7n Sau\",\"kimcuong\":\"0\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 80 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"80\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 150 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"150\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 1.000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"1000\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 3.000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"3000\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 4.500 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"4500\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 9.999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"9999\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng B\\u1ea1n \\u0110\\u00e3 Tr\\u00fang 15.000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"15000\",\"tyle\":\"10\"}'),
(20, 21, '{\"text\":\"Qu\\u00e1i R\\u1eebng H\\u1ea1 G\\u1ee5c\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"25 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"25\",\"tyle\":\"80\"}', '{\"text\":\"40 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"40\",\"tyle\":\"20\"}', '{\"text\":\"80 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"80\",\"tyle\":\"0\"}', '{\"text\":\"120 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"120\",\"tyle\":\"0\"}', '{\"text\":\"250 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"250\",\"tyle\":\"25\"}', '{\"text\":\"300 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"300\",\"tyle\":\"0\"}', '{\"text\":\"400 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"400\",\"tyle\":\"25\"}'),
(19, 20, '{\"text\":\"N\\u01b0\\u1edbc D\\u1eeba M\\u00e1t L\\u1ea1nh\",\"kimcuong\":\"0\",\"tyle\":\"10\"}', '{\"text\":\"80 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"80\",\"tyle\":\"10\"}', '{\"text\":\"150 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"150\",\"tyle\":\"10\"}', '{\"text\":\"1000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"1000\",\"tyle\":\"10\"}', '{\"text\":\"3000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"3000\",\"tyle\":\"10\"}', '{\"text\":\"4500  Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"4500\",\"tyle\":\"10\"}', '{\"text\":\"9999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"9999\",\"tyle\":\"10\"}', '{\"text\":\"15999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"15999\",\"tyle\":\"10\"}'),
(24, 25, '{\"text\":\"q\",\"kimcuong\":\"0\",\"tyle\":\"10\"}', '{\"text\":\"a\",\"kimcuong\":\"0\",\"tyle\":\"10\"}', '{\"text\":\"s\",\"kimcuong\":\"0\",\"tyle\":\"10\"}', '{\"text\":\"h\",\"kimcuong\":\"0\",\"tyle\":\"10\"}', '{\"text\":\"h\",\"kimcuong\":\"0\",\"tyle\":\"10\"}', '{\"text\":\"h\",\"kimcuong\":\"0\",\"tyle\":\"10\"}', '{\"text\":\"h\",\"kimcuong\":\"0\",\"tyle\":\"10\"}', '{\"text\":\"h\",\"kimcuong\":\"0\",\"tyle\":\"10\"}'),
(25, 26, '{\"text\":\"9999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"9999\",\"tyle\":\"10\"}', '{\"text\":\"3000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"3000\",\"tyle\":\"10\"}', '{\"text\":\"1000\",\"kimcuong\":\"1000\",\"tyle\":\"10\"}', '{\"text\":\"350 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"350\",\"tyle\":\"10\"}', '{\"text\":\"6000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"6000\",\"tyle\":\"10\"}', '{\"text\":\"250 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"250\",\"tyle\":\"10\"}', '{\"text\":\"100 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"100\",\"tyle\":\"10\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng Sinh Nh\\u1eadt\",\"kimcuong\":\"0\",\"tyle\":\"10\"}'),
(26, 27, '{\"text\":\"18999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"18999\",\"tyle\":\"10\"}', '{\"text\":\"Ng\\u00f4i Sao May M\\u1eafn\",\"kimcuong\":\"0\",\"tyle\":\"10\"}', '{\"text\":\"8000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"8000\",\"tyle\":\"10\"}', '{\"text\":\"235 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"235\",\"tyle\":\"10\"}', '{\"text\":\"5999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"5999\",\"tyle\":\"10\"}', '{\"text\":\"1111 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"1111\",\"tyle\":\"10\"}', '{\"text\":\"2999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"2999\",\"tyle\":\"10\"}', '{\"text\":\"100 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"100\",\"tyle\":\"10\"}'),
(27, 28, '{\"text\":\"Du L\\u1ecbch M\\u00f9a H\\u00e8\",\"kimcuong\":\"0\",\"tyle\":\"10\"}', '{\"text\":\"100 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"100\",\"tyle\":\"10\"}', '{\"text\":\"235 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"235\",\"tyle\":\"10\"}', '{\"text\":\"263 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"263\",\"tyle\":\"10\"}', '{\"text\":\"1111 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"1111\",\"tyle\":\"10\"}', '{\"text\":\"2999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"2999\",\"tyle\":\"10\"}', '{\"text\":\"8000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"8000\",\"tyle\":\"10\"}', '{\"text\":\"9000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"9000\",\"tyle\":\"10\"}'),
(31, 32, '{\"text\":\"24\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"23423423\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"423423\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"4ewrwe\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"werwerw\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"erwerwr\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"werwer\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"wer\",\"kimcuong\":\"0\",\"tyle\":\"0\"}'),
(32, 33, '{\"text\":\"1\",\"kimcuong\":\"01\",\"tyle\":\"0100\"}', '{\"text\":\"2\",\"kimcuong\":\"02\",\"tyle\":\"0100\"}', '{\"text\":\"3\",\"kimcuong\":\"03\",\"tyle\":\"0100\"}', '{\"text\":\"4\",\"kimcuong\":\"04\",\"tyle\":\"00000\"}', '{\"text\":\"5\",\"kimcuong\":\"05\",\"tyle\":\"0\"}', '{\"text\":\"6\",\"kimcuong\":\"06\",\"tyle\":\"0\"}', '{\"text\":\"7\",\"kimcuong\":\"07\",\"tyle\":\"0\"}', '{\"text\":\"8\",\"kimcuong\":\"08\",\"tyle\":\"0\"}');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `homthinhbian`
--
ALTER TABLE `homthinhbian`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `napthe`
--
ALTER TABLE `napthe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nickff`
--
ALTER TABLE `nickff`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `random_freefire`
--
ALTER TABLE `random_freefire`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `random_freefire_nick`
--
ALTER TABLE `random_freefire_nick`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rut_kim_cuong`
--
ALTER TABLE `rut_kim_cuong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_history_system`
--
ALTER TABLE `user_history_system`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vongquay_codesung`
--
ALTER TABLE `vongquay_codesung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vongquay_kimcuong`
--
ALTER TABLE `vongquay_kimcuong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vongquay_kimcuong_gift`
--
ALTER TABLE `vongquay_kimcuong_gift`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `homthinhbian`
--
ALTER TABLE `homthinhbian`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT cho bảng `napthe`
--
ALTER TABLE `napthe`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `nickff`
--
ALTER TABLE `nickff`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `random_freefire`
--
ALTER TABLE `random_freefire`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `random_freefire_nick`
--
ALTER TABLE `random_freefire_nick`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23943;

--
-- AUTO_INCREMENT cho bảng `rut_kim_cuong`
--
ALTER TABLE `rut_kim_cuong`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user_history_system`
--
ALTER TABLE `user_history_system`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- AUTO_INCREMENT cho bảng `vongquay_codesung`
--
ALTER TABLE `vongquay_codesung`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vongquay_kimcuong`
--
ALTER TABLE `vongquay_kimcuong`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `vongquay_kimcuong_gift`
--
ALTER TABLE `vongquay_kimcuong_gift`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2022-10-31 08:42:43
-- 服务器版本： 10.4.21-MariaDB
-- PHP 版本： 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `qing`
--

-- --------------------------------------------------------

--
-- 表的结构 `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `urlname` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `data`
--

INSERT INTO `data` (`id`, `urlname`, `number`) VALUES
(1, '北京', '1'),
(2, '天津', '2'),
(3, '河北', '3'),
(4, ' 山西', '4'),
(5, '海南', '5'),
(6, ' 内蒙古', '6'),
(7, ' 辽宁', '7'),
(8, ' 吉林', '8'),
(9, '黑龙江', '9'),
(10, '上海', '10'),
(11, '江苏', '11'),
(12, '浙江', '12'),
(13, '安徽', '13'),
(14, '福建', '14'),
(15, '江西', '15'),
(16, '山东', '16'),
(17, '台湾', '17'),
(18, '河南', '18'),
(19, '湖北', '19'),
(20, '湖南', '20'),
(21, '广东', '21'),
(22, '广西', '22'),
(23, ' 香港', '22'),
(24, '澳门', '23'),
(25, ' 重庆', '24'),
(26, '四川', '25'),
(27, '贵州', '26'),
(28, '西藏', '29'),
(29, '陕西', '30'),
(30, '甘肃', '31'),
(31, '青海', '32'),
(32, '宁夏', '33'),
(33, '新疆', '34'),
(34, '云南', '34');

--
-- 转储表的索引
--

--
-- 表的索引 `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

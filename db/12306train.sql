-- phpMyAdmin SQL Dump
-- version 4.2.10.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2014-11-23 07:54:52
-- 服务器版本： 5.6.16
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `12306train`
--
CREATE DATABASE IF NOT EXISTS `12306train` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `12306train`;

-- --------------------------------------------------------

--
-- 表的结构 `Admin`
--

DROP TABLE IF EXISTS `Admin`;
CREATE TABLE IF NOT EXISTS `Admin` (
  `admin_id` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_pw` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `Admin`
--

INSERT INTO `Admin` (`admin_id`, `admin_pw`) VALUES
('root', 'root'),
('王璐瑶', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `Conductor`
--

DROP TABLE IF EXISTS `Conductor`;
CREATE TABLE IF NOT EXISTS `Conductor` (
  `conductor_id` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `conductor_pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `Conductor`
--

INSERT INTO `Conductor` (`conductor_id`, `conductor_pwd`) VALUES
('001', '001'),
('002', '002'),
('003', '003'),
('004', '004'),
('王璐瑶', '1110');

-- --------------------------------------------------------

--
-- 表的结构 `Nei_station`
--

DROP TABLE IF EXISTS `Nei_station`;
CREATE TABLE IF NOT EXISTS `Nei_station` (
  `station_name1` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `station_name2` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `neighbor_distance` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `Nei_station`
--

INSERT INTO `Nei_station` (`station_name1`, `station_name2`, `neighbor_distance`) VALUES
('上海虹桥站', '苏州北站', 50),
('兰州站', '宝鸡站', 90),
('北京南站', '天津西站', 10),
('北京南站', '安阳', 900),
('北京南站', '石家庄', 160),
('南京南站', '常州北站', 126),
('南京南站', '蚌埠南站', 174),
('呵呵站', '哈哈站', 400),
('哈哈站', '呵呵站', 400),
('四川站', '重庆东站', 100),
('天津西站', '北京南站', 10),
('天津西站', '宣城西站', 10),
('天津西站', '沧州西站', 88),
('安阳', '北京南站', 900),
('安阳', '新乡站', 200),
('安阳', '石家庄', 70),
('宝鸡站', '兰州站', 90),
('宝鸡站', '郑州站', 130),
('宣城东站', '宣城西站', 30),
('宣城南站', '宣城西站', 50),
('宣城西站', '天津西站', 10),
('宣城西站', '宣城东站', 30),
('宣城西站', '宣城南站', 50),
('宣城西站', '黄山东站', 300),
('常州北站', '南京南站', 126),
('常州北站', '苏州北站', 83),
('徐州东站', '枣庄站', 63),
('徐州东站', '蚌埠南站', 156),
('徐州东站', '连云港站', 71),
('徐州东站', '郑州站', 246),
('德州东站', '沧州西站', 108),
('德州东站', '泰安站', 135),
('新乡站', '安阳', 200),
('新乡站', '郑州站', 210),
('新疆南站', '西藏北站', 300),
('曲阜东站', '枣庄站', 163),
('曲阜东站', '泰安站', 71),
('李子站', '橙子站', 200),
('枣庄站', '徐州东站', 63),
('枣庄站', '曲阜东站', 163),
('橙子站', '李子站', 200),
('橙子站', '香蕉站', 200),
('武汉站', '许昌站', 130),
('武汉站', '长沙站', 80),
('沧州西站', '天津西站', 88),
('沧州西站', '德州东站', 108),
('泰安站', '德州东站', 135),
('泰安站', '曲阜东站', 71),
('火龙果站', '芒果站', 300),
('火龙果站', '青苹果站', 200),
('石家庄', '北京南站', 160),
('石家庄', '安阳', 70),
('芒果站', '火龙果站', 300),
('苏州北站', '上海虹桥站', 50),
('苏州北站', '常州北站', 83),
('苹果站', '香蕉站', 200),
('蚌埠南站', '南京南站', 174),
('蚌埠南站', '徐州东站', 156),
('西藏北站', '新疆南站', 300),
('许昌站', '武汉站', 130),
('许昌站', '郑州站', 120),
('连云港站', '徐州东站', 71),
('郑州站', '宝鸡站', 130),
('郑州站', '徐州东站', 246),
('郑州站', '新乡站', 210),
('郑州站', '许昌站', 120),
('重庆东站', '四川站', 100),
('长沙站', '武汉站', 80),
('青苹果站', '火龙果站', 200),
('香蕉站', '橙子站', 200),
('香蕉站', '苹果站', 200),
('黄山东站', '宣城西站', 300);

-- --------------------------------------------------------

--
-- 表的结构 `Station_Information`
--

DROP TABLE IF EXISTS `Station_Information`;
CREATE TABLE IF NOT EXISTS `Station_Information` (
  `station_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Image_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `Station_Information`
--

INSERT INTO `Station_Information` (`station_name`, `Image_name`) VALUES
('上海虹桥站', '������������ 2014-11-23 ������10.32.06.png'),
('兰州站', NULL),
('北京南站', NULL),
('南京南站', NULL),
('呵呵站', NULL),
('哈哈站', NULL),
('四川站', NULL),
('天津西站', NULL),
('安阳', NULL),
('宝鸡站', NULL),
('宣城东站', NULL),
('宣城南站', NULL),
('宣城西站', NULL),
('常州北站', NULL),
('徐州东站', NULL),
('德州东站', NULL),
('新乡站', NULL),
('新疆南站', NULL),
('曲阜东站', NULL),
('李子站', NULL),
('枣庄站', NULL),
('橙子站', NULL),
('武汉站', NULL),
('沧州西站', NULL),
('泰安站', NULL),
('火龙果站', NULL),
('石家庄', NULL),
('福建站', NULL),
('芒果站', NULL),
('苏州北站', NULL),
('苹果站', NULL),
('蚌埠南站', NULL),
('西藏北站', NULL),
('许昌站', NULL),
('连云港站', NULL),
('郑州站', NULL),
('重庆东站', NULL),
('长沙站', NULL),
('青苹果站', NULL),
('香蕉站', NULL),
('黄山东站', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `Time1_train_station`
--

DROP TABLE IF EXISTS `Time1_train_station`;
CREATE TABLE IF NOT EXISTS `Time1_train_station` (
  `trainID` char(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pass_stationName` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_stop` enum('0','1') COLLATE utf8_unicode_ci DEFAULT NULL,
  `squanceNum` int(8) DEFAULT NULL,
  `timeInfo` time DEFAULT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `num4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `Time1_train_station`
--

INSERT INTO `Time1_train_station` (`trainID`, `pass_stationName`, `is_stop`, `squanceNum`, `timeInfo`, `num1`, `num2`, `num3`, `num4`) VALUES
('G1001', '上海虹桥站', '1', 13, NULL, 100, 200, 300, 400),
('G1001', '北京南站', '1', 1, NULL, 100, 200, 300, 400),
('G1001', '南京南站', '1', 10, NULL, 100, 200, 300, 400),
('G1001', '天津西站', '1', 2, NULL, 100, 200, 300, 400),
('G1001', '常州北站', '1', 11, NULL, 100, 200, 300, 400),
('G1001', '徐州东站', '1', 8, NULL, 100, 200, 300, 400),
('G1001', '德州东站', '1', 4, NULL, 100, 200, 300, 400),
('G1001', '曲阜东站', '1', 6, NULL, 100, 200, 300, 400),
('G1001', '枣庄站', '0', 7, NULL, 100, 200, 300, 400),
('G1001', '沧州西站', '0', 3, NULL, 100, 200, 300, 400),
('G1001', '泰安站', '1', 5, NULL, 100, 200, 300, 400),
('G1001', '苏州北站', '1', 12, NULL, 100, 200, 300, 400),
('G1001', '蚌埠南站', '0', 9, NULL, 100, 200, 300, 400),
('G1002', '南京南站', '1', 9, NULL, 100, 150, 300, 400),
('G1002', '天津西站', '1', 1, NULL, 100, 150, 300, 400),
('G1002', '徐州东站', '1', 7, NULL, 100, 150, 300, 400),
('G1002', '德州东站', '1', 3, NULL, 100, 150, 300, 400),
('G1002', '曲阜东站', '0', 5, NULL, 100, 150, 300, 400),
('G1002', '枣庄站', '1', 6, NULL, 100, 150, 300, 400),
('G1002', '沧州西站', '0', 2, NULL, 100, 150, 300, 400),
('G1002', '泰安站', '0', 4, NULL, 100, 150, 300, 400),
('G1002', '蚌埠南站', '0', 8, NULL, 100, 150, 300, 400),
('G1011', '上海虹桥站', '1', 1, NULL, 100, 200, 300, 400),
('G1011', '北京南站', '1', 13, NULL, 100, 200, 300, 400),
('G1011', '南京南站', '1', 4, NULL, 100, 200, 300, 400),
('G1011', '天津西站', '1', 12, NULL, 100, 200, 300, 400),
('G1011', '常州北站', '1', 3, NULL, 100, 200, 300, 400),
('G1011', '徐州东站', '1', 6, NULL, 100, 200, 300, 400),
('G1011', '德州东站', '1', 10, NULL, 100, 200, 300, 400),
('G1011', '曲阜东站', '1', 8, NULL, 100, 200, 300, 400),
('G1011', '枣庄站', '0', 7, NULL, 100, 200, 300, 400),
('G1011', '沧州西站', '0', 11, NULL, 100, 200, 300, 400),
('G1011', '泰安站', '1', 9, NULL, 100, 200, 300, 400),
('G1011', '苏州北站', '1', 2, NULL, 100, 200, 300, 400),
('G1011', '蚌埠南站', '0', 5, NULL, 100, 200, 300, 400),
('G1012', '南京南站', '1', 1, NULL, 100, 148, 300, 400),
('G1012', '天津西站', '1', 9, NULL, 100, 150, 300, 400),
('G1012', '徐州东站', '1', 3, NULL, 100, 148, 300, 400),
('G1012', '德州东站', '1', 7, NULL, 100, 148, 300, 400),
('G1012', '曲阜东站', '0', 5, NULL, 100, 148, 300, 400),
('G1012', '枣庄站', '1', 4, NULL, 100, 148, 300, 400),
('G1012', '沧州西站', '0', 8, NULL, 100, 148, 300, 400),
('G1012', '泰安站', '0', 6, NULL, 100, 148, 300, 400),
('G1012', '蚌埠南站', '0', 2, NULL, 100, 148, 300, 400),
('G2244', '橙子站', '1', 3, NULL, 100, 100, 100, 100),
('G2244', '苹果站', '1', 1, NULL, 100, 100, 100, 100),
('G2244', '香蕉站', '0', 2, NULL, 100, 100, 100, 100),
('G8097', '火龙果站', '0', 2, NULL, 100, 98, 100, 100),
('G8097', '芒果站', '1', 1, NULL, 100, 98, 100, 100),
('G8097', '青苹果站', '1', 3, NULL, 100, 100, 100, 100),
('G877', '上海虹桥站', '1', 4, NULL, 200, 100, 100, 300),
('G877', '南京南站', '1', 1, NULL, 200, 100, 100, 300),
('G877', '常州北站', '0', 2, NULL, 200, 100, 100, 300),
('G877', '苏州北站', '1', 3, NULL, 200, 100, 100, 300),
('G9090', '呵呵站', '1', 2, NULL, NULL, NULL, NULL, NULL),
('G9090', '哈哈站', '1', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `Time2_train_station`
--

DROP TABLE IF EXISTS `Time2_train_station`;
CREATE TABLE IF NOT EXISTS `Time2_train_station` (
  `trainID` char(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pass_stationName` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_stop` enum('0','1') COLLATE utf8_unicode_ci DEFAULT NULL,
  `squanceNum` int(8) DEFAULT NULL,
  `timeInfo` time DEFAULT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `num4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `Time2_train_station`
--

INSERT INTO `Time2_train_station` (`trainID`, `pass_stationName`, `is_stop`, `squanceNum`, `timeInfo`, `num1`, `num2`, `num3`, `num4`) VALUES
('G1001', '上海虹桥站', '1', 13, NULL, 100, 200, 300, 400),
('G1001', '北京南站', '1', 1, NULL, 100, 200, 300, 400),
('G1001', '南京南站', '1', 10, NULL, 100, 200, 300, 400),
('G1001', '天津西站', '1', 2, NULL, 100, 200, 300, 400),
('G1001', '常州北站', '1', 11, NULL, 100, 200, 300, 400),
('G1001', '徐州东站', '1', 8, NULL, 100, 200, 300, 400),
('G1001', '德州东站', '1', 4, NULL, 100, 200, 300, 400),
('G1001', '曲阜东站', '1', 6, NULL, 100, 200, 300, 400),
('G1001', '枣庄站', '0', 7, NULL, 100, 200, 300, 400),
('G1001', '沧州西站', '0', 3, NULL, 100, 200, 300, 400),
('G1001', '泰安站', '1', 5, NULL, 100, 200, 300, 400),
('G1001', '苏州北站', '1', 12, NULL, 100, 200, 300, 400),
('G1001', '蚌埠南站', '0', 9, NULL, 100, 200, 300, 400),
('G1002', '南京南站', '1', 9, NULL, 100, 150, 300, 400),
('G1002', '天津西站', '1', 1, NULL, 100, 150, 300, 400),
('G1002', '徐州东站', '1', 7, NULL, 100, 150, 300, 400),
('G1002', '德州东站', '1', 3, NULL, 100, 150, 300, 400),
('G1002', '曲阜东站', '0', 5, NULL, 100, 150, 300, 400),
('G1002', '枣庄站', '1', 6, NULL, 100, 150, 300, 400),
('G1002', '沧州西站', '0', 2, NULL, 100, 150, 300, 400),
('G1002', '泰安站', '0', 4, NULL, 100, 150, 300, 400),
('G1002', '蚌埠南站', '0', 8, NULL, 100, 150, 300, 400),
('G1011', '上海虹桥站', '1', 1, NULL, 100, 200, 300, 400),
('G1011', '北京南站', '1', 13, NULL, 100, 200, 300, 400),
('G1011', '南京南站', '1', 4, NULL, 100, 200, 300, 400),
('G1011', '天津西站', '1', 12, NULL, 100, 200, 300, 400),
('G1011', '常州北站', '1', 3, NULL, 100, 200, 300, 400),
('G1011', '徐州东站', '1', 6, NULL, 100, 200, 300, 400),
('G1011', '德州东站', '1', 10, NULL, 100, 200, 300, 400),
('G1011', '曲阜东站', '1', 8, NULL, 100, 200, 300, 400),
('G1011', '枣庄站', '0', 7, NULL, 100, 200, 300, 400),
('G1011', '沧州西站', '0', 11, NULL, 100, 200, 300, 400),
('G1011', '泰安站', '1', 9, NULL, 100, 200, 300, 400),
('G1011', '苏州北站', '1', 2, NULL, 100, 200, 300, 400),
('G1011', '蚌埠南站', '0', 5, NULL, 100, 200, 300, 400),
('G1012', '南京南站', '1', 1, NULL, 100, 150, 300, 400),
('G1012', '天津西站', '1', 9, NULL, 100, 150, 300, 400),
('G1012', '徐州东站', '1', 3, NULL, 100, 150, 300, 400),
('G1012', '德州东站', '1', 7, NULL, 100, 150, 300, 400),
('G1012', '曲阜东站', '0', 5, NULL, 100, 150, 300, 400),
('G1012', '枣庄站', '1', 4, NULL, 100, 150, 300, 400),
('G1012', '沧州西站', '0', 8, NULL, 100, 150, 300, 400),
('G1012', '泰安站', '0', 6, NULL, 100, 150, 300, 400),
('G1012', '蚌埠南站', '0', 2, NULL, 100, 150, 300, 400),
('G2244', '橙子站', '1', 3, NULL, 100, 100, 100, 100),
('G2244', '苹果站', '1', 1, NULL, 100, 100, 100, 100),
('G2244', '香蕉站', '0', 2, NULL, 100, 100, 100, 100),
('G8097', '火龙果站', '0', 2, NULL, 100, 100, 100, 100),
('G8097', '芒果站', '1', 1, NULL, 100, 100, 100, 100),
('G8097', '青苹果站', '1', 3, NULL, 100, 100, 100, 100),
('G877', '上海站', '1', 4, NULL, 200, 100, 100, 300),
('G877', '南京南站', '1', 1, NULL, 200, 100, 100, 300),
('G877', '常州北站', '0', 2, NULL, 200, 100, 100, 300),
('G877', '苏州北站', '1', 3, NULL, 200, 100, 100, 300),
('G9090', '呵呵站', '1', 2, NULL, NULL, NULL, NULL, NULL),
('G9090', '哈哈站', '1', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `Time3_train_station`
--

DROP TABLE IF EXISTS `Time3_train_station`;
CREATE TABLE IF NOT EXISTS `Time3_train_station` (
  `trainID` char(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pass_stationName` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_stop` enum('0','1') COLLATE utf8_unicode_ci DEFAULT NULL,
  `squanceNum` int(8) DEFAULT NULL,
  `timeInfo` time DEFAULT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `num4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `Time3_train_station`
--

INSERT INTO `Time3_train_station` (`trainID`, `pass_stationName`, `is_stop`, `squanceNum`, `timeInfo`, `num1`, `num2`, `num3`, `num4`) VALUES
('G1001', '上海虹桥站', '1', 13, NULL, 100, 200, 300, 400),
('G1001', '北京南站', '1', 1, NULL, 100, 200, 300, 400),
('G1001', '南京南站', '1', 10, NULL, 100, 200, 300, 400),
('G1001', '天津西站', '1', 2, NULL, 100, 200, 300, 400),
('G1001', '常州北站', '1', 11, NULL, 100, 200, 300, 400),
('G1001', '徐州东站', '1', 8, NULL, 100, 200, 300, 400),
('G1001', '德州东站', '1', 4, NULL, 100, 200, 300, 400),
('G1001', '曲阜东站', '1', 6, NULL, 100, 200, 300, 400),
('G1001', '枣庄站', '0', 7, NULL, 100, 200, 300, 400),
('G1001', '沧州西站', '0', 3, NULL, 100, 200, 300, 400),
('G1001', '泰安站', '1', 5, NULL, 100, 200, 300, 400),
('G1001', '苏州北站', '1', 12, NULL, 100, 200, 300, 400),
('G1001', '蚌埠南站', '0', 9, NULL, 100, 200, 300, 400),
('G1002', '南京南站', '1', 9, NULL, 100, 150, 300, 400),
('G1002', '天津西站', '1', 1, NULL, 100, 150, 300, 400),
('G1002', '徐州东站', '1', 7, NULL, 100, 150, 300, 400),
('G1002', '德州东站', '1', 3, NULL, 100, 150, 300, 400),
('G1002', '曲阜东站', '0', 5, NULL, 100, 150, 300, 400),
('G1002', '枣庄站', '1', 6, NULL, 100, 150, 300, 400),
('G1002', '沧州西站', '0', 2, NULL, 100, 150, 300, 400),
('G1002', '泰安站', '0', 4, NULL, 100, 150, 300, 400),
('G1002', '蚌埠南站', '0', 8, NULL, 100, 150, 300, 400),
('G1011', '上海虹桥站', '1', 1, NULL, 100, 200, 300, 400),
('G1011', '北京南站', '1', 13, NULL, 100, 200, 300, 400),
('G1011', '南京南站', '1', 4, NULL, 100, 200, 300, 400),
('G1011', '天津西站', '1', 12, NULL, 100, 200, 300, 400),
('G1011', '常州北站', '1', 3, NULL, 100, 200, 300, 400),
('G1011', '徐州东站', '1', 6, NULL, 100, 200, 300, 400),
('G1011', '德州东站', '1', 10, NULL, 100, 200, 300, 400),
('G1011', '曲阜东站', '1', 8, NULL, 100, 200, 300, 400),
('G1011', '枣庄站', '0', 7, NULL, 100, 200, 300, 400),
('G1011', '沧州西站', '0', 11, NULL, 100, 200, 300, 400),
('G1011', '泰安站', '1', 9, NULL, 100, 200, 300, 400),
('G1011', '苏州北站', '1', 2, NULL, 100, 200, 300, 400),
('G1011', '蚌埠南站', '0', 5, NULL, 100, 200, 300, 400),
('G1012', '南京南站', '1', 1, NULL, 100, 150, 300, 400),
('G1012', '天津西站', '1', 9, NULL, 100, 150, 300, 400),
('G1012', '徐州东站', '1', 3, NULL, 100, 150, 300, 400),
('G1012', '德州东站', '1', 7, NULL, 100, 150, 300, 400),
('G1012', '曲阜东站', '0', 5, NULL, 100, 150, 300, 400),
('G1012', '枣庄站', '1', 4, NULL, 100, 150, 300, 400),
('G1012', '沧州西站', '0', 8, NULL, 100, 150, 300, 400),
('G1012', '泰安站', '0', 6, NULL, 100, 150, 300, 400),
('G1012', '蚌埠南站', '0', 2, NULL, 100, 150, 300, 400),
('G2244', '橙子站', '1', 3, NULL, 100, 100, 100, 100),
('G2244', '苹果站', '1', 1, NULL, 100, 100, 100, 100),
('G2244', '香蕉站', '0', 2, NULL, 100, 100, 100, 100),
('G8097', '火龙果站', '0', 2, NULL, 100, 100, 100, 100),
('G8097', '芒果站', '1', 1, NULL, 100, 100, 100, 100),
('G8097', '青苹果站', '1', 3, NULL, 100, 100, 100, 100),
('G877', '上海站', '1', 4, NULL, 200, 100, 100, 300),
('G877', '南京南站', '1', 1, NULL, 200, 100, 100, 300),
('G877', '常州北站', '0', 2, NULL, 200, 100, 100, 300),
('G877', '苏州北站', '1', 3, NULL, 200, 100, 100, 300),
('G9090', '呵呵站', '1', 2, NULL, NULL, NULL, NULL, NULL),
('G9090', '哈哈站', '1', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `Train_Information`
--

DROP TABLE IF EXISTS `Train_Information`;
CREATE TABLE IF NOT EXISTS `Train_Information` (
  `trainID` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `train_type` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `num4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `Train_Information`
--

INSERT INTO `Train_Information` (`trainID`, `train_type`, `num1`, `num2`, `num3`, `num4`) VALUES
('G1001', 'G', 100, 200, 300, 400),
('G1002', 'G', 100, 150, 300, 400),
('G1003', 'G', 200, 200, 100, 100),
('G1011', 'G', 100, 200, 300, 400),
('G1012', 'G', 100, 150, 300, 400),
('G110', 'G', 200, 200, 300, 400),
('G11111', 'G', 222, 333, 444, 555),
('G199', 'G', 100, 200, 300, 400),
('G2244', 'G', 100, 100, 100, 100),
('G3001', 'G', 100, 200, 300, 400),
('G3002', 'G', 100, 200, 300, 400),
('G3011', 'G', 100, 200, 300, 400),
('G3012', 'G', 100, 200, 300, 400),
('G333', 'G', 100, 200, 100, 200),
('G6444', 'G', 100, 200, 300, 400),
('G6655', 'G', 100, 200, 300, 400),
('G6666', 'G', 100, 200, 300, 400),
('G7550', 'G', 100, 200, 300, 400),
('G777', 'G', 333, 333, 333, 333),
('G7878', 'G', 100, 200, 300, 400),
('G8097', 'G', 100, 100, 100, 100),
('G8484', 'G', 100, 200, 300, 400),
('G877', 'G', 200, 100, 100, 300),
('G888', 'G', 100, 200, 300, 400),
('G9090', 'G', 100, 100, 100, 200),
('G999', 'G', 100, 100, 200, 300),
('T1001', 'T', 100, 200, 300, 400),
('T1011', 'T', 200, 200, 200, 500);

-- --------------------------------------------------------

--
-- 表的结构 `User_info`
--

DROP TABLE IF EXISTS `User_info`;
CREATE TABLE IF NOT EXISTS `User_info` (
`id` int(20) NOT NULL,
  `trainID` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromStation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `toStation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `train_type` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seat_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timeDate` date DEFAULT NULL,
  `price` double DEFAULT NULL,
  `num` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `User_info`
--

INSERT INTO `User_info` (`id`, `trainID`, `fromStation`, `toStation`, `train_type`, `seat_type`, `timeDate`, `price`, `num`) VALUES
(1, 'G1001', '上海虹桥站', '南京南站', '高铁', '特等座', '2014-11-23', 10000, 0),
(3, 'G1001', '兰州站', '兰州站', '高铁', '特等座', '2014-11-23', 1000, NULL),
(5, 'G1001', '天津西站', '南京南站', '高铁', '特等座', '2014-11-08', 1234, 3),
(6, 'G1001', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 0, 4),
(7, 'G1001', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 0, 4),
(8, 'G1001', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 0, 4),
(9, 'G1001', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 0, 4),
(10, 'G1001', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 0, 4),
(11, 'G1001', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 0, 4),
(12, 'G1001', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 0, 4),
(13, 'G1001', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 0, 4),
(14, 'G1001', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 0, 4),
(15, 'G1001', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 0, 4),
(16, 'G1001', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 0, 4),
(17, 'G1001', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 0, 4),
(18, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 0, 4),
(19, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 0, 4),
(20, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 0, 4),
(21, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 0, 4),
(22, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(23, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(24, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(25, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(26, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(27, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(28, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(29, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(30, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(31, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(32, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(33, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(34, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(35, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(36, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(37, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(38, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(40, 'G1001', '天津西站', '南京南站', '高铁', '一等座', '2014-11-23', 1896.84, 4),
(43, 'G1011', '南京南站', '天津西站', '高铁', '特等座', '2014-11-23', 2155.5, 3),
(44, 'G1011', '南京南站', '天津西站', '高铁', '特等座', '2014-11-23', 2155.5, 3),
(46, 'G1011', '南京南站', '天津西站', '高铁', '特等座', '2014-11-23', 2155.5, 3),
(47, 'G1011', '南京南站', '天津西站', '高铁', '特等座', '2014-11-23', 2155.5, 3),
(48, 'G1011', '南京南站', '天津西站', '高铁', '特等座', '2014-11-23', 2155.5, 3),
(49, 'G1011', '南京南站', '天津西站', '高铁', '特等座', '2014-11-23', 2155.5, 3),
(50, 'G1011', '南京南站', '天津西站', '高铁', '特等座', '2014-11-23', 2155.5, 3),
(51, 'G1011', '南京南站', '天津西站', '高铁', '特等座', '2014-11-23', 2155.5, 3),
(52, 'G1011', '南京南站', '天津西站', '高铁', '特等座', '2014-11-23', 2155.5, 3),
(53, 'G1002', '天津西站', '枣庄站', '高铁', '一等座', '2014-11-25', 279.67, 1),
(54, 'G1002', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 1437, 1),
(55, 'G1002', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 1437, 1),
(56, 'G1002', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 1437, 1),
(57, 'G1002', '天津西站', '南京南站', '高铁', '商务座', '2014-11-23', 1437, 1),
(59, 'G877', '南京南站', '苏州北站', '高铁', '商务座', '2014-11-23', 313.5, 1),
(61, 'G2244', '苹果站', '橙子站', '高铁', '特等座', '2014-11-23', 300, 1),
(63, 'G1012', '南京南站', '天津西站', '高铁', '特等座', '2014-11-23', 1437, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `Conductor`
--
ALTER TABLE `Conductor`
 ADD PRIMARY KEY (`conductor_id`);

--
-- Indexes for table `Nei_station`
--
ALTER TABLE `Nei_station`
 ADD PRIMARY KEY (`station_name1`,`station_name2`), ADD KEY `station_name2` (`station_name2`);

--
-- Indexes for table `Station_Information`
--
ALTER TABLE `Station_Information`
 ADD PRIMARY KEY (`station_name`);

--
-- Indexes for table `Time1_train_station`
--
ALTER TABLE `Time1_train_station`
 ADD PRIMARY KEY (`trainID`,`pass_stationName`), ADD KEY `pass_stationName` (`pass_stationName`);

--
-- Indexes for table `Time2_train_station`
--
ALTER TABLE `Time2_train_station`
 ADD PRIMARY KEY (`trainID`,`pass_stationName`), ADD KEY `pass_stationName` (`pass_stationName`);

--
-- Indexes for table `Time3_train_station`
--
ALTER TABLE `Time3_train_station`
 ADD PRIMARY KEY (`trainID`,`pass_stationName`), ADD KEY `pass_stationName` (`pass_stationName`);

--
-- Indexes for table `Train_Information`
--
ALTER TABLE `Train_Information`
 ADD PRIMARY KEY (`trainID`);

--
-- Indexes for table `User_info`
--
ALTER TABLE `User_info`
 ADD PRIMARY KEY (`id`), ADD KEY `trainID` (`trainID`), ADD KEY `fromStation` (`fromStation`), ADD KEY `toStation` (`toStation`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `User_info`
--
ALTER TABLE `User_info`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- 限制导出的表
--

--
-- 限制表 `Nei_station`
--
ALTER TABLE `Nei_station`
ADD CONSTRAINT `nei_station_ibfk_1` FOREIGN KEY (`station_name1`) REFERENCES `Station_Information` (`station_name`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `nei_station_ibfk_2` FOREIGN KEY (`station_name2`) REFERENCES `Station_Information` (`station_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `Time1_train_station`
--
ALTER TABLE `Time1_train_station`
ADD CONSTRAINT `time1_train_station_ibfk_1` FOREIGN KEY (`trainID`) REFERENCES `Train_Information` (`trainID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `time1_train_station_ibfk_2` FOREIGN KEY (`pass_stationName`) REFERENCES `Station_Information` (`station_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `User_info`
--
ALTER TABLE `User_info`
ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`trainID`) REFERENCES `Train_Information` (`trainID`),
ADD CONSTRAINT `user_info_ibfk_2` FOREIGN KEY (`trainID`) REFERENCES `Train_Information` (`trainID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `user_info_ibfk_3` FOREIGN KEY (`fromStation`) REFERENCES `Station_Information` (`station_name`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `user_info_ibfk_4` FOREIGN KEY (`toStation`) REFERENCES `Station_Information` (`station_name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

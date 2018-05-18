-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2018 at 05:15 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `audiowatermarkdemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `multimedia`
--

CREATE TABLE `multimedia` (
  `id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parentid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `song` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `singer` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `multimedia`
--

INSERT INTO `multimedia` (`id`, `parentid`, `song`, `singer`, `url`, `type`, `owner`) VALUES
('1DQyACeKoIZBqFp_s-nuWdvzao9wwQnWS', '1IWs9RphnU423_odfVJVifNOjsoFH6OfP', 'Ngắm Hoa Lệ Rơi', 'Châu Khải Phong', 'https://drive.google.com/file/d/1DQyACeKoIZBqFp_s-nuWdvzao9wwQnWS/view?usp=sharing', 'music', 'tester'),
('1hM3ghkaRUDHHt7hcqpg3vZ0XXolFzaYH', '1hM3ghkaRUDHHt7hcqpg3vZ0XXolFzaYH', 'Party Shaker', 'R.I.O. , Nicco', 'https://drive.google.com/file/d/1hM3ghkaRUDHHt7hcqpg3vZ0XXolFzaYH/view?usp=sharing', 'music', 'administrator'),
('1ibNLpaQCRYYyJe2XkTkYrMMKIoBFDSJ7', '1ibNLpaQCRYYyJe2XkTkYrMMKIoBFDSJ7', 'One More Round', 'TomE Raghav', 'https://drive.google.com/file/d/1ibNLpaQCRYYyJe2XkTkYrMMKIoBFDSJ7/view?usp=sharing', 'music', 'administrator'),
('1IWs9RphnU423_odfVJVifNOjsoFH6OfP', '1IWs9RphnU423_odfVJVifNOjsoFH6OfP', 'Ngắm Hoa Lệ Rơi', 'Châu Khải Phong', 'https://drive.google.com/file/d/1IWs9RphnU423_odfVJVifNOjsoFH6OfP/view?usp=sharing', 'music', 'administrator'),
('1N-trgweYqXAQqatN4LTNaU2kLUCWkBx4', '1N-trgweYqXAQqatN4LTNaU2kLUCWkBx4', 'What I\'ve Done', 'Linkin Park', 'https://drive.google.com/file/d/1N-trgweYqXAQqatN4LTNaU2kLUCWkBx4/view?usp=sharing', 'music', 'administrator'),
('1uY9gI5sT6ZgzrGgw9rRCqwX0Qf7CxmgU', '1uY9gI5sT6ZgzrGgw9rRCqwX0Qf7CxmgU', 'Numb', 'Linkin Park', 'https://drive.google.com/file/d/1uY9gI5sT6ZgzrGgw9rRCqwX0Qf7CxmgU/view?usp=sharing', 'music', 'administrator'),
('logo', 'logo', NULL, NULL, 'http://localhost/audiowatermarkdemo/picture/logo.png', 'picture', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `multimediatype`
--

CREATE TABLE `multimediatype` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `multimediatype`
--

INSERT INTO `multimediatype` (`id`) VALUES
('music'),
('picture'),
('video');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`) VALUES
('admin'),
('user');

-- --------------------------------------------------------

--
-- Table structure for table `siteinfo`
--

CREATE TABLE `siteinfo` (
  `companyname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `slogan` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seokeywords` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seodescription` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `copyright` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `copyright_ln2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `siteinfo`
--

INSERT INTO `siteinfo` (`companyname`, `slogan`, `seokeywords`, `seodescription`, `facebook`, `logo`, `copyright`, `copyright_ln2`) VALUES
('Audio Watermark Demo', 'Nguyễn Hoàng Sơn _ N14DCAT083 _ PTITHCM', 'audio, watermark, demo', 'Audio Watermark Demo', 'https://www.facebook.com/thangiap.nguyen', 'logo', '{companyname} © 2018', 'From Ho Chi Minh city with <span id=\"heart\">❤</span>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `permission`) VALUES
('administrator', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a', 'admin'),
('tester', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `multimediatype`
--
ALTER TABLE `multimediatype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD PRIMARY KEY (`companyname`),
  ADD KEY `logo` (`logo`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission` (`permission`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD CONSTRAINT `multimedia_ibfk_1` FOREIGN KEY (`type`) REFERENCES `multimediatype` (`id`),
  ADD CONSTRAINT `multimedia_ibfk_2` FOREIGN KEY (`owner`) REFERENCES `user` (`id`);

--
-- Constraints for table `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD CONSTRAINT `siteinfo_ibfk_1` FOREIGN KEY (`logo`) REFERENCES `multimedia` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`permission`) REFERENCES `permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

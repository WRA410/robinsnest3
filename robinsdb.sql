-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2016 at 07:34 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robinsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `user` varchar(16) DEFAULT NULL,
  `friend` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`user`, `friend`) VALUES
('Grant', 'Not Grant'),
('Not Grant', 'Grant'),
('Grant', 'Jerry'),
('Not Grant', 'Jerry'),
('Jerry', 'grant'),
('Jerry', 'Not Grant'),
('Grant', 'grant');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `user` varchar(16) DEFAULT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`user`, `pass`) VALUES
('Grant', 'wra410'),
('Not Grant', 'wra410'),
('Jerry', 'wra410');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `auth` varchar(16) DEFAULT NULL,
  `recip` varchar(16) DEFAULT NULL,
  `pm` char(1) DEFAULT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL,
  `message` varchar(4096) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `auth`, `recip`, `pm`, `time`, `message`) VALUES
(1, 'Grant', 'Grant', '0', 1480444628, 'I like turtles. They too are awesome.'),
(2, 'Not Grant', 'Grant', '0', 1480444699, 'I like turtles more. I think they are more awesome.'),
(3, 'Not Grant', 'Not Grant', '0', 1481067478, '1'),
(4, 'Not Grant', 'Not Grant', '0', 1481067480, '2'),
(5, 'Not Grant', 'Not Grant', '0', 1481067482, '3'),
(6, 'Not Grant', 'Not Grant', '0', 1481067712, '4'),
(7, 'Jerry', 'Jerry', '0', 1481067999, '5'),
(8, 'Jerry', 'Jerry', '0', 1481068001, '6'),
(9, 'Jerry', 'Jerry', '0', 1481068003, '7'),
(22, 'Jerry', 'Jerry', '0', 1481070249, '8'),
(25, 'Jerry', 'Jerry', '0', 1481072818, 'Well you see, I believe that as a weeb, we should be respected by those who are not Otakus, because as weebs, we are also Otakus and we are to be reveared and respected by all who would think to make fun of us...... Stop making fun of us ;u;'),
(27, 'Grant', 'Grant', '0', 1481074283, 'I DISAGREE ANGERLY!!!!'),
(28, 'Jerry', 'Jerry', '0', 1481564522, ';u;');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `user` varchar(16) DEFAULT NULL,
  `text` varchar(4096) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`user`, `text`) VALUES
('Grant', 'I am Grant. I am Awesome'),
('Not Grant', 'I am more awesome then Grant.'),
('Jerry', 'Hi, My name is Harry');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD KEY `user` (`user`(6)),
  ADD KEY `friend` (`friend`(6));

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD KEY `user` (`user`(6));

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth` (`auth`(6)),
  ADD KEY `recip` (`recip`(6));

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD KEY `user` (`user`(6));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

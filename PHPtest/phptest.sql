-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2022 at 11:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phptest`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(12) UNSIGNED NOT NULL,
  `department_name` varchar(256) NOT NULL,
  `department_leader` varchar(256) NOT NULL,
  `department_phone` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `department_leader`, `department_phone`) VALUES
(1, 'Dev', 'john.doe', '(566) 576-1111'),
(2, 'Marketing', 'maureen.biologist', '(566) 576-2222'),
(3, 'Sales', 'peg.legge', '(566) 576-3333'),
(4, 'Management', 'liz.erd', '(566) 576-4444'),
(5, 'IT', 'constance.noring', '(566) 576-5555');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(12) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `manager`, `username`, `email`, `department`, `phone_number`, `address`, `start_date`, `end_date`, `status`) VALUES
(1, 'John Doe', 'liz.erd', 'john.doe', 'john.doe@gmail.com', 'Dev', '(566) 576-7803', 'Prishtine, L.Dardania', '2015-03-02 00:00:00', '2022-05-10 00:00:00', 'P'),
(2, 'Sarah Jones', 'john.doe', 'john.doe', 'sarah.jones@gmail.com', 'Dev', '(566) 576-7805', 'Prishtine, L.Dardania', '2020-02-02 00:00:00', '2022-05-10 00:00:00', 'P'),
(3, 'Olive Yew', 'liz.erd', 'olive.yew', 'olive.yew@gmail.com', 'HR', '(566) 576-7806', 'Prishtine, L.Dardania', '2020-02-02 00:00:00', '2021-03-15 00:00:00', 'P'),
(4, 'Maureen Biologist', 'liz.erd', 'maureen.biologist', 'maureen.biologist@gmail.com', 'Marketing', '(566) 576-7808', 'Prishtine, L.Dardania', '2015-01-01 00:00:00', '2022-05-10 00:00:00', 'P'),
(5, 'Teri Dactyl', 'maureen.biologist', 'teri.dactyl', 'teri.dactyl@gmail.com', 'Marketing', '(566) 576-7809', 'Prishtine, L.Dardania', '2021-04-01 00:00:00', '2022-05-10 00:00:00', 'P'),
(6, 'Peg Legge', 'liz.erd', 'peg.legge', 'peg.legge@gmail.com', 'Sales', '(566) 576-7810', 'Prishtine, L.Dardania', '2010-05-10 00:00:00', '2022-05-10 00:00:00', 'P'),
(7, 'Allie Grater', 'peg.legge', 'allie.grater', 'allie.grater@gmail.com', 'Sales', '(566) 576-7811', 'Prishtine, L.Dardania', '2015-03-02 00:00:00', '2022-05-10 00:00:00', 'P'),
(8, 'Liz Erd', '', 'liz.erd', 'liz.erd@gmail.com', 'Management', '(566) 576-7812', 'Prishtine, L.Dardania', '2016-01-01 00:00:00', '2100-12-31 00:00:00', 'A'),
(9, 'A. Mused', 'liz.erd', 'a.mused', 'a.mused@gmail.com', 'Management', '(566) 576-7813', 'Prishtine, L.Dardania', '2020-02-02 00:00:00', '2022-05-10 00:00:00', 'P'),
(10, 'Constance Noring', 'liz.erd', 'constance.noring', 'constance.noring@gmail.com', 'IT', '(566) 576-7814', 'Prishtine, L.Dardania', '2020-02-02 00:00:00', '2022-05-10 00:00:00', 'P'),
(11, 'Lois Di Nominator', 'constance.noring', 'lois.nominator', 'lois.nominator@gmail.com', 'IT', '(566) 576-7815', 'Prishtine, L.Dardania', '2021-04-01 00:00:00', '2022-05-10 00:00:00', 'P'),
(12, 'Minnie Van Ryder', 'constance.noring', 'minnie.ryder', 'minnie.ryder@gmail.com', 'IT', '(566) 576-7816', 'Prishtine, L.Dardania', '2015-01-01 00:00:00', '2022-05-10 00:00:00', 'P'),
(13, 'Lynn O’Leeum', 'liz.erd', 'lynn.leeum', 'lynn.leeum@gmail.com', 'Finance', '(566) 576-7817', 'Prishtine, L.Dardania', '2021-04-01 00:00:00', '2021-03-15 00:00:00', 'P'),
(14, 'P. Ann O’Recital', 'lynn.leeum', 'p.recital', 'p.recital@gmail.com', 'Finance', '(566) 576-7818', 'Prishtine, L.Dardania', '2015-03-02 00:00:00', '2022-05-10 00:00:00', 'P'),
(15, 'Ray O’Sun', 'lynn.leeum', 'ray.sun', 'ray.sun@gmail.com', 'Finance', '(566) 576-7819', 'Prishtine, L.Dardania', '2016-01-01 00:00:00', '2022-05-10 00:00:00', 'P'),
(16, 'Lee A. Sun', 'liz.erd', 'lee.sun', 'lee.sun@gmail.com', 'Sales', '(566) 576-7820', 'Prishtine, L.Dardania', '2020-02-02 00:00:00', '2021-03-15 00:00:00', 'P'),
(17, 'Ray Sin', 'lee.sun', 'ray.sin', 'ray.sin@gmail.com', 'Sales', '(566) 576-7821', 'Prishtine, L.Dardania', '2020-02-02 00:00:00', '2021-03-15 00:00:00', 'P'),
(18, 'Isabelle Ringing', 'lee.sun', 'isabelle.ringing', 'isabelle.ringing@gmail.com', 'Sales', '(566) 576-7822', 'Prishtine, L.Dardania', '2021-04-01 00:00:00', '2022-05-10 00:00:00', 'P'),
(19, 'Rita Book', 'lee.sun', 'rita.book', 'rita.book@gmail.com', 'Sales', '(566) 576-7823', 'Prishtine, L.Dardania', '2015-01-01 00:00:00', '2022-05-10 00:00:00', 'P'),
(20, 'Paige Turner', 'lee.sun', 'paige.turner', 'paige.turner@gmail.com', 'Sales', '(566) 576-7824', 'Prishtine, L.Dardania', '2021-04-01 00:00:00', '2021-03-15 00:00:00', 'P'),
(21, 'Rhoda Report', 'lee.sun', 'rhoda.report', 'rhoda.report@gmail.com', 'Sales', '(566) 576-7825', 'Prishtine, L.Dardania', '2015-03-02 00:00:00', '2021-03-15 00:00:00', 'P'),
(22, 'Augusta Wind', 'john.doe', 'augusta.wind', 'augusta.wind@gmail.com', 'Dev', '(566) 576-7826', 'Prishtine, L.Dardania', '2016-01-01 00:00:00', '2022-05-10 00:00:00', 'P'),
(23, 'Chris Anthemum', 'john.doe', 'chris.anthemum', 'chris.anthemum@gmail.com', 'Dev', '(566) 576-7827', 'Prishtine, L.Dardania', '2020-02-02 00:00:00', '2021-03-15 00:00:00', 'P'),
(24, 'Anne Teak', 'john.doe', 'anne.teak', 'anne.teak@gmail.com', 'Dev', '(566) 576-7828', 'Prishtine, L.Dardania', '2020-02-02 00:00:00', '2021-03-15 00:00:00', 'P'),
(25, 'Anita Bath', 'john.doe', 'anita.bath', 'anita.bath@gmail.com', 'Dev', '(566) 576-7829', 'Prishtine, L.Dardania', '2021-04-01 00:00:00', '2021-03-15 00:00:00', 'P'),
(26, 'I.M. Tired', 'john.doe', 'i.tired', 'i.tired@gmail.com', 'Dev', '(566) 576-7831', 'Prishtine, L.Dardania', '2021-04-01 00:00:00', '2021-12-31 00:00:00', 'P'),
(27, 'Anita Letterback', 'john.doe', 'anita.letterback', 'anita.letterback@gmail.com', 'Dev', '(566) 576-7832', 'Prishtine, L.Dardania', '2016-01-01 00:00:00', '2022-05-10 00:00:00', 'P'),
(28, 'Simon Salmon', 'john.doe', 'simon.salmon', 'simon.salmon@gmail.com', 'Dev', '(566) 576-7833', 'Prishtine, L.Dardania', '2021-03-15 00:00:00', '2021-03-15 00:00:00', 'P'),
(29, 'Sunday Morning', 'lee.sun', 'sunday.morning', 'sunday.morning@gmail.com', 'Sales', '(566) 576-7834', 'Prishtine, L.Dardania', '2021-03-15 00:00:00', '2021-03-15 00:00:00', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `factories`
--

CREATE TABLE `factories` (
  `id` int(9) NOT NULL,
  `name` varchar(31) NOT NULL,
  `uid` varchar(31) NOT NULL,
  `class` varchar(63) NOT NULL,
  `icon` varchar(31) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(46, '2020-02-22-222222', 'Tests\\Support\\Database\\Migrations\\ExampleMigration', 'tests', 'Tests\\Support', 1665349144, 1),
(47, '2022-10-08-114704', 'App\\Database\\Migrations\\Employees', 'default', 'App', 1665349874, 2),
(48, '2022-10-08-114806', 'App\\Database\\Migrations\\Departments', 'default', 'App', 1665349874, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factories`
--
ALTER TABLE `factories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `uid` (`uid`),
  ADD KEY `deleted_at_id` (`deleted_at`,`id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `factories`
--
ALTER TABLE `factories`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

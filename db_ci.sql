-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 05:01 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `icon`, `url`, `is_active`) VALUES
(1, 'Dashboard', 'fa fa-tachometer', 'dashboard', 1),
(2, 'Pengguna', 'fa fa-users', 'users', 1),
(4, 'Menu', 'fa fa-navicon', 'menu', 1),
(5, 'Pengaturan', 'fa fa-gear', 'pengaturan', 1),
(6, 'Hak Akses', 'fa fa-shield', 'role', 1),
(7, 'Hak Akses Menu', 'fa fa-th-list', 'access', 1),
(14, 'Keluar', 'fa fa-sign-out', 'auth/logout', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama_sistem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama_sistem`) VALUES
(1, 'E-Arsip');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Petugas'),
(3, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `th_id_arsip`
--

CREATE TABLE `th_id_arsip` (
  `id` varchar(8) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `loan` varchar(30) NOT NULL,
  `produk` varchar(100) NOT NULL,
  `plafound` bigint(20) NOT NULL,
  `tanggal_cair` date NOT NULL,
  `Developer` varchar(100) NOT NULL,
  `nama_proyek` varchar(300) NOT NULL,
  `cabang` varchar(50) NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tr_pd`
--

CREATE TABLE `tr_pd` (
  `id` int(11) NOT NULL,
  `surat_Permohonan` varchar(300) NOT NULL,
  `nama_nasabah` varchar(255) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `no_loan` varchar(50) NOT NULL,
  `tanggal_pencairan` date NOT NULL,
  `alasan` text NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ttd_id_arsip`
--

CREATE TABLE `ttd_id_arsip` (
  `id` int(11) NOT NULL,
  `nama_dokumen` varchar(300) NOT NULL,
  `link_dokumen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `nama`, `email`, `password`, `img`, `date_created`) VALUES
(4, 1, 'admin', 'admin@admin.com', '$2y$10$wKPD3q3p4zhQrISUcHfRTeSLPQY9VyvQxilWMTxEG9MzzessAFK9O', 'images.png', 1562505744),
(8, 2, 'petugas', 'petugas@petugas.com', '$2y$10$oAdBYej2nXsqqoI8aEXL/OWlsguZCf0Cuh7tV.OMTXUV/QCAMfdAa', 'default.png', 1563071177),
(9, 3, 'adit', 'adit@gmail.com', '$2y$10$ssbRmLrX996Q1BR6SS8c7Ofh8fQfy2Kr1koUmgna28L4Zqa0pvMk6', 'default.PNG', 1689772557),
(10, 3, 'Nurdian', 'nurdian@gamil.com', '$2y$10$wKPD3q3p4zhQrISUcHfRTeSLPQY9VyvQxilWMTxEG9MzzessAFK9O', 'default.PNG', 1689947654);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 1, 4),
(4, 3, 1),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(11, 1, 2),
(20, 2, 1),
(21, 1, 13),
(22, 2, 13),
(23, 1, 14),
(24, 2, 14),
(25, 3, 2),
(26, 3, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `th_id_arsip`
--
ALTER TABLE `th_id_arsip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_pd`
--
ALTER TABLE `tr_pd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ttd_id_arsip`
--
ALTER TABLE `ttd_id_arsip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tr_pd`
--
ALTER TABLE `tr_pd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ttd_id_arsip`
--
ALTER TABLE `ttd_id_arsip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

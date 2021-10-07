-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 05, 2019 at 10:39 PM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.2.14-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_vispro_tiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_kelas`
--

CREATE TABLE `t_kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kelas`
--

INSERT INTO `t_kelas` (`id`, `nama`, `harga`) VALUES
(1, 'Executive', '150000'),
(2, 'Bisnis', '130000'),
(3, 'Ekonomi', '110000');

-- --------------------------------------------------------

--
-- Table structure for table `t_kereta`
--

CREATE TABLE `t_kereta` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kereta`
--

INSERT INTO `t_kereta` (`id`, `kode`, `nama`) VALUES
(1, 'ARG001', 'Argo Parahyangan'),
(2, 'KHRP', 'Kahuripan');

-- --------------------------------------------------------

--
-- Table structure for table `t_order`
--

CREATE TABLE `t_order` (
  `id` int(11) NOT NULL,
  `no_ktp` varchar(255) NOT NULL,
  `nama_pemesan` varchar(255) NOT NULL,
  `nama_penumpang` varchar(255) NOT NULL,
  `id_tiket` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_order`
--

INSERT INTO `t_order` (`id`, `no_ktp`, `nama_pemesan`, `nama_penumpang`, `id_tiket`, `id_kelas`) VALUES
(3, '32021532512451', 'Rangga Darmajati', 'Rangga Darmajati', 1, 1),
(4, '3210932392839', 'Lista Darmajati', 'Lista Darmajati', 2, 2),
(5, '122323213', 'Jhon Dee', 'Jhon dee', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_stasiun`
--

CREATE TABLE `t_stasiun` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_stasiun`
--

INSERT INTO `t_stasiun` (`id`, `nama`, `kode`) VALUES
(1, 'Gambir', 'GBR'),
(2, 'Bandung', 'BDG'),
(3, 'Kutoarjo', 'KTRJ');

-- --------------------------------------------------------

--
-- Table structure for table `t_tiket`
--

CREATE TABLE `t_tiket` (
  `id` int(11) NOT NULL,
  `id_st_asal` int(11) NOT NULL,
  `id_st_tujuan` int(11) NOT NULL,
  `tgl_brangkat` date NOT NULL,
  `id_kereta` int(11) NOT NULL,
  `jam_brangkat` time NOT NULL,
  `jam_tiba` time NOT NULL,
  `qty` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_tiket`
--

INSERT INTO `t_tiket` (`id`, `id_st_asal`, `id_st_tujuan`, `tgl_brangkat`, `id_kereta`, `jam_brangkat`, `jam_tiba`, `qty`) VALUES
(1, 1, 2, '2019-05-10', 1, '05:05:00', '08:05:00', '97'),
(2, 1, 2, '2019-05-09', 1, '08:05:00', '11:05:00', '92'),
(5, 2, 1, '2019-05-06', 2, '05:30:00', '14:30:00', '100'),
(6, 2, 3, '2019-05-08', 2, '07:30:00', '18:30:00', '100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_kelas`
--
ALTER TABLE `t_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_kereta`
--
ALTER TABLE `t_kereta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_order`
--
ALTER TABLE `t_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_stasiun`
--
ALTER TABLE `t_stasiun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_tiket`
--
ALTER TABLE `t_tiket`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_kelas`
--
ALTER TABLE `t_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `t_kereta`
--
ALTER TABLE `t_kereta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `t_order`
--
ALTER TABLE `t_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `t_stasiun`
--
ALTER TABLE `t_stasiun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `t_tiket`
--
ALTER TABLE `t_tiket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

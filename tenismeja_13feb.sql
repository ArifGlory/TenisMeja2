-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2020 at 04:57 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tenismeja`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `level` enum('pelatih','admin') NOT NULL DEFAULT 'pelatih'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `nama`, `level`) VALUES
(1, 'admin', 'ByNSJQVjBCMHJQRwAjNSIQRm', 'Admin TTC', 'admin'),
(2, 'luffy', 'ByNSJQVjBCMHJQRwAjNSIQRm', 'Luffy', 'pelatih'),
(3, 'glory', 'VnIGcQdhDygOLFUhUzJUZgQx', 'Glory', 'pelatih');

-- --------------------------------------------------------

--
-- Table structure for table `detail_evaluasi`
--

CREATE TABLE `detail_evaluasi` (
  `iddetailevaluasi` int(11) NOT NULL,
  `idevaluasi` int(11) NOT NULL,
  `driveforehand` varchar(50) NOT NULL,
  `drivebackhand` varchar(50) NOT NULL,
  `pushforehand` varchar(50) NOT NULL,
  `pushbackhand` varchar(50) NOT NULL,
  `smashforehand` varchar(50) NOT NULL,
  `smashbackhand` varchar(50) NOT NULL,
  `blockforehand` varchar(50) NOT NULL,
  `blockbackhand` varchar(50) NOT NULL,
  `chopforehand` varchar(50) NOT NULL,
  `chopbackhand` varchar(50) NOT NULL,
  `serviceforehand` varchar(50) NOT NULL,
  `servicebackhand` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_evaluasi`
--

INSERT INTO `detail_evaluasi` (`iddetailevaluasi`, `idevaluasi`, `driveforehand`, `drivebackhand`, `pushforehand`, `pushbackhand`, `smashforehand`, `smashbackhand`, `blockforehand`, `blockbackhand`, `chopforehand`, `chopbackhand`, `serviceforehand`, `servicebackhand`) VALUES
(2, 2, '100,100,100,100,100', '100,100,100,100,100', '44,22,39,2,74', '8,9,4,28,76', '45,54,55,20,8', '87,78,12,35,43', '95,37,7,55,20', '63,56,87,39,74', '95,36,84,97,19', '94,85,8,4,72', '61,34,79,25,66', '99,86,97,70,9'),
(4, 4, '57,57,61,78,53', '12,90,19,92,99', '51,68,58,96,7', '77,41,56,58,86', '2,7,98,4,40', '70,4,79,80,15', '63,67,65,38,98', '54,61,71,48,6', '78,87,59,23,67', '77,34,38,3,4', '76,97,89,41,23', '36,41,8,52,22'),
(5, 5, '61,2,27,48,4', '98,21,74,78,4', '45,55,89,28,26', '74,23,34,81,24', '91,16,90,84,32', '31,31,85,85,71', '51,10,71,62,79', '93,11,75,63,26', '12,8,7,30,54', '34,17,7,56,17', '30,37,45,33,90', '79,67,8,18,96');

-- --------------------------------------------------------

--
-- Table structure for table `evaluasi`
--

CREATE TABLE `evaluasi` (
  `idevaluasi` int(11) NOT NULL,
  `idatlet` int(11) NOT NULL,
  `total_nilai` int(11) NOT NULL,
  `kategori_nilai` varchar(100) NOT NULL,
  `pesan evaluasi` text NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `drive_forehand` int(11) NOT NULL,
  `drive_backhand` int(11) NOT NULL,
  `push_forehand` int(11) NOT NULL,
  `push_backhand` int(11) NOT NULL,
  `smash_forehand` int(11) NOT NULL,
  `block_forehand` int(11) NOT NULL,
  `block_backhand` int(11) NOT NULL,
  `chop_forehand` int(11) NOT NULL,
  `chop_backhand` int(11) NOT NULL,
  `service_forehand` int(11) NOT NULL,
  `service_backhand` int(11) NOT NULL,
  `smash_backhand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluasi`
--

INSERT INTO `evaluasi` (`idevaluasi`, `idatlet`, `total_nilai`, `kategori_nilai`, `pesan evaluasi`, `tanggal`, `drive_forehand`, `drive_backhand`, `push_forehand`, `push_backhand`, `smash_forehand`, `block_forehand`, `block_backhand`, `chop_forehand`, `chop_backhand`, `service_forehand`, `service_backhand`, `smash_backhand`) VALUES
(2, 3, 58, 'Kurang', '', '2020-01-03 15:05:04', 100, 100, 36, 25, 36, 43, 64, 66, 53, 53, 72, 51),
(4, 1, 52, 'Kurang', '', '2020-01-16 22:14:36', 61, 62, 56, 64, 30, 66, 48, 63, 31, 65, 32, 50),
(5, 3, 47, 'Kurang', '', '2020-01-16 22:15:18', 28, 55, 49, 47, 63, 55, 54, 22, 26, 47, 54, 61);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `idjadwal` int(11) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `waktu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`idjadwal`, `hari`, `waktu`) VALUES
(3, 'Senin', '10:00 AM'),
(4, 'Kamis', '8:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idatlet` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `kategori` enum('pemula','kadet','senior') NOT NULL DEFAULT 'pemula',
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idatlet`, `username`, `nama`, `password`, `kategori`, `tanggal_lahir`, `jenis_kelamin`, `phone`) VALUES
(1, 'tapisdev', 'Tapisdev', 'ByNSJQVjBCMHJQRwAjNSIQRm', 'pemula', '1995-10-04', 'L', '89677728283'),
(3, 'zoro', 'Zoro', 'ACRVIlI0DygHJVImVmcEdwBi', 'senior', '2000-12-06', 'L', '9038348834'),
(6, 'sanji', 'sanji', 'ACRVIlI0DygHJVImVmcEdwBi', 'senior', '2000-12-06', 'L', '9038348834'),
(26, 'mutiasyifa', 'Mutia Syifa Fitiani', 'syifa123', 'pemula', '2009-09-23', 'P', '082156728578'),
(27, 'braydonsusilo', 'Braydon Juvensim Susilo', 'UmUEdlY0BytSYFAyU21WZ1VhUzA=', 'pemula', '2010-02-12', 'L', '082186761839'),
(28, 'sendyeryanto', 'Sendy Eryanto', 'V3EFYFA9BzYEKwc7AGJWZQ==', 'senior', '1996-07-23', 'L', '082179773066'),
(29, 'saudakbar', 'Laode Saud Akbar', 'Cy1QMQdxVWRTNAU6Wzg=', 'senior', '2000-05-08', 'L', '082377677285'),
(30, 'anaqidavala', 'Anaqi Davala s', 'Cj5QPgJgAiYPMAU5BmQHNA==', 'senior', '2002-12-12', 'L', '0895618001569'),
(31, 'ajengaullia', 'Ajeng Aullia Martina', 'BjIEbgdhBzxUZQQ4VTcFNg==', 'senior', '1997-03-01', 'P', '08975751929'),
(32, 'yesianitasari', 'Yesi Anita Sari', 'UX0LblEhBDgGYVFuVzQ=', 'senior', '1998-09-08', 'P', '085764565644'),
(33, 'mayangratri', 'Mayang Ratri', 'UGgFZFUvDjpUbARuUjMBMwE0', 'senior', '1997-03-14', 'P', '082281609914'),
(34, 'jonathanyusman', 'Jonathan Yusman', 'AD8AbwVsU2lSNQA/B2Q=', 'senior', '2002-09-03', 'L', '085383582300'),
(35, 'callistagunawan', 'Callista Gunawan', 'BDIFZARrDzZSbQxyUHRVNFdgUTNQYg==', 'kadet', '2007-05-15', 'P', '081272075000'),
(36, 'mrifki', 'Muhammad Rifki', 'UG4Caw1lU29TNFdoBWY=', 'senior', '1998-11-30', 'L', '082282946568'),
(37, 'denisruntuboy', 'Denis Yohanes Runtuboy', 'CzoHYgNuDzMAJVVpAGIFNg==', 'senior', '2002-03-10', 'L', '089631958028'),
(38, 'dilaayu', 'Dila Ayu Pradista', 'BDVQOQFuAzcCZQA/UzA=', 'senior', '2003-07-15', 'P', '0895640062581'),
(39, 'putrik', 'Putri Khairunnisa', 'BCEGc1AnByBTbAM/AGIIOw==', 'senior', '2004-01-19', 'P', '089530324874'),
(40, 'kandita', 'Kandita Prahasanti Andoko Putri', 'CjQAYVI/BzZRbgx1ADFWZwczUDM=', 'senior', '2004-04-09', 'P', '083160406313'),
(41, 'mdhafin', 'M Dhafin Rafi Khairan', 'CjtSOlY0ADNSbVIxB2YIOlNm', 'senior', '2004-05-04', 'L', '087893419412'),
(42, 'ameliaamanda', 'Amelia Amanda', 'BTFSPwJkV24DZFdoAmE=', 'kadet', '2005-04-16', 'P', '089690720144'),
(43, 'zakiedo', 'Zaki Edo', 'VXoGZwJqU28FYlVqVzQ=', 'kadet', '2006-05-24', 'L', '082307294942'),
(44, 'rianp', 'Rian Pamungkas', 'ASYGbwFjDzQCZQwzWjk=', 'kadet', '2006-06-23', 'L', '085268563746'),
(45, 'mfarel', 'Muhammad Farel Mughini', 'AzBXNlIjAzMEPlZqWzkDMA==', 'kadet', '2007-03-17', 'L', '0895640521676'),
(46, 'mfadil', 'M Fadillah Ramdhan', 'BzRVNANkUGxSaAU5VzUENw==', 'kadet', '2007-10-08', 'L', '082278069477'),
(47, 'deboraruntuboy', 'Debora Marthavina Runtuboy', 'VWRQNVAxV20OKgRoUjNVZ1Bl', 'kadet', '2007-10-08', 'P', '08975751929'),
(48, 'novitasalsabila', 'Novita Salsabila', 'UGtRPgdyDzMPLQZqVTRUZgcy', 'pemula', '2010-01-19', 'P', '08127252433'),
(49, 'mrosyid', 'M. Rosyid Taufiqurahman', 'VXJXOAV1BSkAP1c+WzoENldi', 'pemula', '2009-01-17', 'L', '089525289252'),
(50, 'aisyahdini', 'Aisyah Rahma Dini Putri', 'VmdXPgJvDjIGYVdoVzQ=', 'pemula', '2002-11-30', 'P', '081994854382'),
(51, 'putriaprilia', 'Selvi Aprilia Putri', 'ByJXIgVyAyQFOgM/B2VUZw==', 'pemula', '2005-04-25', 'L', '089628767092');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `detail_evaluasi`
--
ALTER TABLE `detail_evaluasi`
  ADD PRIMARY KEY (`iddetailevaluasi`);

--
-- Indexes for table `evaluasi`
--
ALTER TABLE `evaluasi`
  ADD PRIMARY KEY (`idevaluasi`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`idjadwal`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idatlet`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_evaluasi`
--
ALTER TABLE `detail_evaluasi`
  MODIFY `iddetailevaluasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `evaluasi`
--
ALTER TABLE `evaluasi`
  MODIFY `idevaluasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `idjadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idatlet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

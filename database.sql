-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2022 at 01:36 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(120) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tj_transport` varchar(50) NOT NULL,
  `uang_makan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tj_transport`, `uang_makan`) VALUES
(1, 'Admin', '8000000', '600000', '500000'),
(2, 'Software Engineer', '7000000', '500000', '400000'),
(3, 'Customer Service', '6000000', '400000', '300000'),
(4, 'Digital Marketing', '5000000', '300000', '200000'),
(5, 'Finance', '4000000', '300000', '200000');

-- --------------------------------------------------------

--
-- Table structure for table `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpha`) VALUES
(1, '112021', '14197075', 'Amalia Fitri Falahan', 'Perempuan', 'Admin', 22, 0, 0),
(2, '112021', '14197045', 'Aulia Rahman Syah', 'Laki-Laki', 'Software Engineer', 21, 0, 1),
(3, '112021', '14197077', 'Aditia Nuzlar', 'Laki-laki', 'Customer Service', 21, 1, 0),
(4, '112021', '14197043', 'Angga Prayudha Putra', 'Laki-laki', 'Digital Marketing', 20, 1, 1),
(5, '112021', '14197072', 'Gianlyardi Jetro Timoti Rusli', 'Laki-laki', 'Finance', 20, 0, 2),
(6, '122021', '14197075', 'Amalia Fitri Falahan', 'Perempuan', 'Admin', 21, 1, 0),
(7, '122021', '14197045', 'Aulia Rahman Syah', 'Laki-Laki', 'Software Engineer', 22, 0, 0),
(8, '122021', '14197077', 'Aditia Nuzlar', 'Laki-laki', 'Customer Service', 21, 0, 1),
(9, '122021', '14197043', 'Angga Prayudha Putra', 'Laki-laki', 'Digital Marketing', 20, 2, 0),
(10, '122021', '14197072', 'Gianlyardi Jetro Timoti Rusli', 'Laki-laki', 'Finance', 21, 1, 0),
(11, '022022', '14197077', 'Aditia Nuzlar', 'Laki-Laki', 'Customer Service', 21, 0, 0),
(12, '022022', '14197075', 'Amalia Fitri Falahan', 'Perempuan', 'Admin', 0, 0, 1),
(13, '022022', '14197043', 'Angga Prayudha Putra', 'Laki-Laki', 'Digital Marketing', 19, 1, 1),
(14, '022022', '14197045', 'Aulia Rahman Syah', 'Laki-Laki', 'Software Engineer', 20, 0, 1),
(15, '022022', '14197072', 'Gianlyardi Jetro Timoti Rusli', 'Laki-Laki', 'Finance', 20, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(32) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nik`, `nama_pegawai`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `status`, `photo`, `hak_akses`) VALUES
(1, '14197075', 'Amalia Fitri Falahan', 'amalia', '51e0a46ceb9b9f53a96281bd6b4f38e8', 'Perempuan', 'Admin', '2014-05-05', 'Karyawan Tetap', 'pegawai-220222-00f855d606.jpeg', 1),
(2, '14197045', 'Aulia Rahman Syah', 'aulia', '614913bc360cdfd1c56758cb87eb9e8f', 'Laki-Laki', 'Software Engineer', '2016-04-04', 'Karyawan Tetap', 'pegawai-220222-f4cd21d6b2.jpeg', 2),
(3, '14197077', 'Aditia Nuzlar', 'adit', '486b6c6b267bc61677367eb6b6458764', 'Laki-Laki', 'Customer Service', '2018-03-05', 'Karyawan Tetap', 'pegawai-220222-de9ff6c3ec.png', 2),
(4, '14197043', 'Angga Prayudha Putra', 'angga', '8479c86c7afcb56631104f5ce5d6de62', 'Laki-Laki', 'Digital marketing', '2020-02-03', 'Karyawan Tidak Tetap', 'pegawai-220222-8a78a18afa.jpeg', 2),
(5, '14197072', 'Gianlyardi Jetro Timoti Rusli', 'gian', '56ea9c664e8c9f1ad611cf8e5f1bb41c', 'Laki-Laki', 'Finance', '2022-01-03', 'Karyawan Tidak Tetap', 'pegawai-220222-43088a0a3a.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(120) NOT NULL,
  `jml_potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(1, 'Alpha', 150000),
(2, 'Sakit', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

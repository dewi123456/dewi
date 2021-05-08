-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2021 at 06:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_anggota`
--

CREATE TABLE `tabel_anggota` (
  `id_anggota` int(25) NOT NULL,
  `nama_anggota` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan','','') NOT NULL,
  `no_hp` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_anggota`
--

INSERT INTO `tabel_anggota` (`id_anggota`, `nama_anggota`, `kelas`, `jenis_kelamin`, `no_hp`, `alamat`) VALUES
(1, 'Dewi Novita Sari', 'XI RPL 2', 'perempuan', '085703288786', 'padaemut'),
(2, 'Hilda Liasti', 'XI RPL 2', 'perempuan', '085703148807', 'padaemut'),
(3, 'Nabila Cahyanto', 'XI RPL 2', 'perempuan', '083116677022', 'langensari'),
(4, 'ayu ', 'XI RPL 2', 'perempuan', '087825172600', 'langensari');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_buku`
--

CREATE TABLE `tabel_buku` (
  `id_buku` int(11) NOT NULL,
  `nama_buku` varchar(150) NOT NULL,
  `jenis_buku` enum('fiksi','non fiksi','','') NOT NULL,
  `penulis_buku` varchar(100) NOT NULL,
  `penerbit_buku` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_buku`
--

INSERT INTO `tabel_buku` (`id_buku`, `nama_buku`, `jenis_buku`, `penulis_buku`, `penerbit_buku`) VALUES
(1, 'kisah untuk geri', 'non fiksi', 'eriska febriani', 'PT gramedia pustaka utama'),
(2, 'Dilan', 'non fiksi', 'nanada', 'PT gramedia pustaka utama'),
(3, 'Matematika', 'fiksi', 'melati dwi cantika', 'PT gramedia pustaka');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_peminjaman`
--

CREATE TABLE `tabel_peminjaman` (
  `id_peminjam` int(25) NOT NULL,
  `nama_peminjam` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `nama_buku` varchar(200) NOT NULL,
  `tanggal_pinjam` varchar(200) NOT NULL,
  `tanggal_kembali` varchar(200) NOT NULL,
  `tanggal_pengembalian` varchar(100) NOT NULL,
  `telat` varchar(25) NOT NULL,
  `denda` varchar(25) NOT NULL,
  `jumlah_pinjam` varchar(50) NOT NULL,
  `petugas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_peminjaman`
--

INSERT INTO `tabel_peminjaman` (`id_peminjam`, `nama_peminjam`, `kelas`, `nama_buku`, `tanggal_pinjam`, `tanggal_kembali`, `tanggal_pengembalian`, `telat`, `denda`, `jumlah_pinjam`, `petugas`) VALUES
(1, 'Dewi Novita ', 'XI RPL 2', 'B.Indonesia', 'Ibu.Heny Wahyu Rahayu', '8/4/2021', '10/4/2021', '2 hari', 'RP. 2000', '1', 'Ibu.Heni Wahyu Rahayu'),
(2, 'Nabila Cahyani', 'XI RPL 2', 'Matematika', '5/4/2021', '7/4/2021', '10/4/2021', '3 hari', 'RP.3000', '5', 'Ibu.Heni Wahyu Rahayu');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id_user` int(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(25) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `no_hp` int(25) NOT NULL,
  `level` enum('Admin','Pengguna','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`id_user`, `username`, `password`, `nama_user`, `alamat`, `no_hp`, `level`) VALUES
(1, 'Admin', 12345678, 'Admin', 'langensari', 853213458, 'Admin'),
(2, 'pengguna1', 123456, 'pengguna1', 'langensari', 8532212, 'Pengguna');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_anggota`
--
ALTER TABLE `tabel_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `tabel_buku`
--
ALTER TABLE `tabel_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tabel_peminjaman`
--
ALTER TABLE `tabel_peminjaman`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_anggota`
--
ALTER TABLE `tabel_anggota`
  MODIFY `id_anggota` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tabel_buku`
--
ALTER TABLE `tabel_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tabel_peminjaman`
--
ALTER TABLE `tabel_peminjaman`
  MODIFY `id_peminjam` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

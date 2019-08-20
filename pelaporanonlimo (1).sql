-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2018 at 11:42 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelaporanonlimo`
--

-- --------------------------------------------------------

--
-- Table structure for table `catatan_penggantian`
--

CREATE TABLE `catatan_penggantian` (
  `id_catatan` smallint(6) NOT NULL,
  `tanggal_penggantian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sparepart_sebelum` varchar(100) NOT NULL,
  `pengganti_sparepart` varchar(100) NOT NULL,
  `alasan_diganti` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_user` smallint(6) NOT NULL,
  `stasiun` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laporan_operator`
--

CREATE TABLE `laporan_operator` (
  `id_laporan` smallint(6) NOT NULL,
  `waktu_pelaporan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jenis_laporan` varchar(45) NOT NULL,
  `kondisi` varchar(45) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_user` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_operator`
--

INSERT INTO `laporan_operator` (`id_laporan`, `waktu_pelaporan`, `jenis_laporan`, `kondisi`, `keterangan`, `foto`, `id_user`) VALUES
(1, '2018-04-23 06:24:57', 'pembersihan', 'bagus', 'sudah dilakukan pembersihan sensor hari ini', 'image/kalshdk.jpg', 5),
(2, '2018-05-08 06:24:57', 'pemberitahuan', 'tidak ada apa apa', 'berkumpul', 'image/kumpul.png', 1),
(3, '2018-04-16 06:24:57', 'pembersihan', 'bagus', 'sudah dilakukan pembersihan sensor hari ini', 'image/kalshdk.jpg', 5),
(4, '2018-05-08 09:15:48', 'bencana', 'banjir', 'banjur setinggi pintu', 'image/banjir.png', 5),
(5, '2018-05-15 06:09:20', 'pembersihan', 'bagus', 'sudah bersih', 'laporan_1526364560.jpg', 2),
(6, '2018-05-15 06:09:50', 'pembersihan', 'bagus', 'sudah bersih', 'laporan_1526364590.jpg', 2),
(7, '2018-05-15 06:12:00', 'pembersihan', 'bagus', 'sudah bersih', 'laporan_1526364720.jpg', 2),
(8, '2018-05-15 06:19:27', 'pembersihan', 'bagus', 'sudah bersih', 'C:/xampp/htdocs/cobaWebService/uploads/laporan_1526365167.jpg', 2),
(9, '2018-05-15 07:33:22', 'pembersihan', 'bagus', 'sudah bersih', 'laporan_1526369601.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi_peringatan`
--

CREATE TABLE `notifikasi_peringatan` (
  `id_notifikasi` smallint(6) NOT NULL,
  `tanggal_notifikasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isi_notifikasi` varchar(100) NOT NULL,
  `id_user` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stasiun`
--

CREATE TABLE `stasiun` (
  `id_stasiun` varchar(8) NOT NULL,
  `nama_stasiun` varchar(100) NOT NULL,
  `alamat_stasiun` varchar(250) NOT NULL,
  `latitude` decimal(8,5) DEFAULT NULL,
  `longitude` decimal(8,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stasiun`
--

INSERT INTO `stasiun` (`id_stasiun`, `nama_stasiun`, `alamat_stasiun`, `latitude`, `longitude`) VALUES
('ADMIN', 'ADMIN DATA CENTER', 'ONLIMO', '0.00000', '0.00000'),
('BPPT1', 'IPAL BPPT DL OSS', 'Jl. MH. Thamrin No. 8 Gedung II BPPT, Jakarta Pusat', '-6.18511', '106.82147'),
('BPPT2', 'IPAL BPPT DL GSM', 'Jl. MH. Thamrin No. 8 Gedung II BPPT, Jakarta Pusat', '-6.18511', '106.82147'),
('GEOS1', 'IPAL Geostek DL OSS', 'Gedung Geostek Puspitek Serpong', '-6.35815', '106.67168'),
('GEOS2', 'IPAL Geostek DL GSM', 'Gedung Geostek Puspitek Serpong', '-6.35815', '106.67168'),
('KALBRTR', 'KALIBRATOR', 'PERUSAHAAN SENSOR XX', '0.00000', '0.00000'),
('KLHK1', 'Stasiun Pemantauan Masjid Istiqlal', 'Halaman masjid Istiqlal', '-6.17140', '106.83103'),
('KLHK10', 'Stasiun Pemantauan Bendung Gerak Babat', 'Bendung Gerak Babat, Lamongan, Jawa Timur', '-7.04107', '112.21772'),
('KLHK2', 'Stasiun Pintu Air Manggarai', 'Pintu Air Manggarai, Jakarta Selatan', '-6.20784', '106.84850'),
('KLHK3', 'Stasiun Pemantauan Pintu Air Irigasi Majalaya', 'Desa Ibu, Pintu Air Irigasi Wangisagara, Majalaya', '-7.07405', '107.74887'),
('KLHK4', 'Stasiun Pemantauan Kelapa Dua', 'Srengseng Sawah Kelapa Dua, Depok', '-6.35264', '106.83564'),
('KLHK5', 'Stasiun Pemantauan Bendung Empang', 'Bendung Empang, Bogor', '-6.60777', '106.79288'),
('KLHK6', 'Stasiun Pemantauan Bendung Pasar Baru', 'Bendung Pasar Baru, Tangerang', '-6.16079', '106.62772'),
('KLHK7', 'Stasiun Pemantauan Bendung Gerak Serayu', 'Bendung Gerak Serayu, Banyumas, Jawa Tengah', '-7.52544', '109.20233'),
('KLHK8', 'Stasiun Pemantauan Bendung Wanganaji', 'Bendung Wanganaji, Wonosobo, Jawa Tengah', '-7.29888', '109.91708'),
('KLHK9', 'Stasiun Pemantauan Bendung Colo', 'Bendung Colo, Sukoharjo, Jawa Timur', '-7.75060', '110.90203'),
('XX', 'Stasiun Percobaan', 'Geostek', '-6.18450', '106.82186');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` smallint(6) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `no_telepon` varchar(12) NOT NULL,
  `foto_profil` varchar(255) NOT NULL DEFAULT 'default.png',
  `level` smallint(6) NOT NULL,
  `id_stasiun` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `email`, `no_telepon`, `foto_profil`, `level`, `id_stasiun`) VALUES
(1, 'Ferlie Deanada', 'admin', 'admin', 'ferlie@gmail.com', '08512345656', 'image/default.png', 1, 'ADMIN'),
(2, 'Iman Warkim', 'iman01', '123456', 'imanW@email.com', '081289834863', 'image/default.png', 0, 'KLHK1'),
(3, 'Wahyu Widodo', 'Wahyu', '123456', 'wahyu@email.com', '081212487083', 'image/default.png', 0, 'KLHK2'),
(4, 'Iman Julaeman', 'iman02', '123456', 'iman@email.com', '087821513457', 'image/default.png', 0, 'KLHK3'),
(5, 'Hasnul Achmad', 'hasnul', '123456', 'hasnul@email.com', '085697871893', 'image/default.png', 0, 'KLHK4'),
(6, 'Tofhan Sugiarta', 'tofhan', '123456', 'tofhan@email.com', '0', 'image/default.png', 0, 'KLHK5'),
(7, 'Azrul Ar Razi All Af Gani', 'azrul', '123456', 'azrul@gmail.com', '083813324108', 'image/default.png', 0, 'KLHK6'),
(8, 'Arief Rahman Wicaksono', 'arief', '123456', 'arief@gmail.com', '085747373545', 'image/default.png', 0, 'KLHK7'),
(9, 'Parno', 'parno', '123456', 'parno@gmail.com', '085743493009', 'image/default.png', 0, 'KLHK8'),
(10, 'Roslan Rochamdani', 'roslan', '123456', 'roslan@gmail.com', '081393455205', 'image/default.png', 0, 'KLHK9'),
(11, 'Samsul Maâ€™arif', 'samsul', '123456', 'samsul@gmail.com', '081259110988', 'image/default.png', 0, 'KLHK10'),
(12, 'freini', 'fre', '123456', 'fre@gmail.com', '08512345655', 'image/default.png', 2, 'KALBRTR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catatan_penggantian`
--
ALTER TABLE `catatan_penggantian`
  ADD PRIMARY KEY (`id_catatan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `stasiun` (`stasiun`) USING BTREE;

--
-- Indexes for table `laporan_operator`
--
ALTER TABLE `laporan_operator`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `notifikasi_peringatan`
--
ALTER TABLE `notifikasi_peringatan`
  ADD PRIMARY KEY (`id_notifikasi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `stasiun`
--
ALTER TABLE `stasiun`
  ADD PRIMARY KEY (`id_stasiun`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_stasiun` (`id_stasiun`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catatan_penggantian`
--
ALTER TABLE `catatan_penggantian`
  MODIFY `id_catatan` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `laporan_operator`
--
ALTER TABLE `laporan_operator`
  MODIFY `id_laporan` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `notifikasi_peringatan`
--
ALTER TABLE `notifikasi_peringatan`
  MODIFY `id_notifikasi` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `catatan_penggantian`
--
ALTER TABLE `catatan_penggantian`
  ADD CONSTRAINT `idx_catatan` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `idx_catatan2` FOREIGN KEY (`stasiun`) REFERENCES `stasiun` (`id_stasiun`);

--
-- Constraints for table `laporan_operator`
--
ALTER TABLE `laporan_operator`
  ADD CONSTRAINT `idx_laporan` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifikasi_peringatan`
--
ALTER TABLE `notifikasi_peringatan`
  ADD CONSTRAINT `idx_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `idx_stasiun` FOREIGN KEY (`id_stasiun`) REFERENCES `stasiun` (`id_stasiun`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jul 2021 pada 10.08
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `agenda` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `file` varchar(150) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `agenda`, `file`) VALUES
(3, 'jaga jarak masker', 'agenda_1626828865.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `instansi`
--

CREATE TABLE `instansi` (
  `id_instansi` int(2) NOT NULL,
  `instansi` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `logo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `instansi`
--

INSERT INTO `instansi` (`id_instansi`, `instansi`, `telp`, `alamat`, `logo`) VALUES
(1, 'Antrian Sembako Covid 19', '081319953079', 'Jl.Antilop RT 007 RW 007', 'logo_1383876609.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `username` varchar(40) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `id_loket` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`username`, `nama`, `telp`, `alamat`, `password`, `level`, `id_loket`) VALUES
('loket1', 'Muklis', '08984494040', 'jl. antilop 02 a', 'adcd7048512e64b48da55b027577886ee5a36350', 'Penjaga', 6),
('loket2', 'Ucok', '083823120', 'Jl.antilop 01\r\n', 'adcd7048512e64b48da55b027577886ee5a36350', 'Penjaga', 7),
('loket3', 'Basuki', '08971878158', 'jl. antilop 02', 'adcd7048512e64b48da55b027577886ee5a36350', 'Penjaga', 8),
('loket4', 'udin', '083458345', 'jl.antilop01', 'adcd7048512e64b48da55b027577886ee5a36350', 'Penjaga', 9),
('tio', 'Tio', '08384494040', 'jl, antilop 02', 'adcd7048512e64b48da55b027577886ee5a36350', 'Admin', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `loket`
--

CREATE TABLE `loket` (
  `id_loket` int(3) NOT NULL,
  `loket` varchar(40) DEFAULT NULL,
  `suara` varchar(150) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `loket`
--

INSERT INTO `loket` (`id_loket`, `loket`, `suara`, `status`) VALUES
(6, '1', NULL, 0),
(7, '2', NULL, 0),
(8, '3', NULL, 0),
(9, '4', NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `text_jalan`
--

CREATE TABLE `text_jalan` (
  `id_text` int(11) NOT NULL,
  `text` varchar(150) DEFAULT NULL,
  `img` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `text_jalan`
--

INSERT INTO `text_jalan` (`id_text`, `text`, `img`) VALUES
(6, 'jaga jarak dengan memakai masker', 'text_1626837953.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `no_antrian` int(11) DEFAULT NULL,
  `id_loket` int(3) NOT NULL DEFAULT 0,
  `username` varchar(40) DEFAULT NULL,
  `tgl` int(8) UNSIGNED ZEROFILL DEFAULT 00000000
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `no_antrian`, `id_loket`, `username`, `tgl`) VALUES
(19, 1, 8, 'loket3', 12112017),
(20, 2, 6, 'loket1', 12112017),
(21, 3, 6, 'loket1', 12112017),
(22, 4, 0, NULL, 12112017),
(23, 5, 0, NULL, 12112017),
(24, 6, 0, NULL, 12112017),
(25, 1, 0, NULL, 14112017),
(26, 2, 0, NULL, 14112017),
(27, 1, 6, 'loket1', 16112017),
(28, 2, 6, 'loket1', 16112017),
(29, 3, 7, 'loket2', 16112017),
(30, 1, 6, 'loket1', 17112017),
(31, 2, 7, 'loket2', 17112017),
(32, 3, 8, 'loket3', 17112017),
(33, 4, 9, 'loket4', 17112017),
(34, 5, 0, NULL, 17112017),
(35, 6, 0, NULL, 17112017),
(36, 7, 0, NULL, 17112017),
(37, 8, 0, NULL, 17112017),
(38, 9, 0, NULL, 17112017),
(39, 10, 0, NULL, 17112017),
(40, 11, 0, NULL, 17112017),
(41, 12, 0, NULL, 17112017),
(42, 13, 0, NULL, 17112017),
(43, 14, 0, NULL, 17112017),
(44, 15, 0, NULL, 17112017),
(45, 16, 0, NULL, 17112017),
(46, 17, 0, NULL, 17112017),
(47, 18, 0, NULL, 17112017),
(48, 19, 0, NULL, 17112017),
(49, 20, 0, NULL, 17112017),
(50, 21, 0, NULL, 17112017),
(51, 22, 0, NULL, 17112017),
(52, 23, 0, NULL, 17112017),
(53, 24, 0, NULL, 17112017),
(54, 25, 0, NULL, 17112017),
(55, 26, 0, NULL, 17112017),
(56, 27, 0, NULL, 17112017),
(57, 28, 0, NULL, 17112017),
(58, 29, 0, NULL, 17112017),
(59, 1, 6, 'loket1', 21072021),
(60, 2, 7, 'loket2', 21072021),
(61, 3, 8, 'loket3', 21072021),
(62, 4, 9, 'loket4', 21072021),
(63, 5, 0, NULL, 21072021),
(64, 6, 0, NULL, 21072021);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indeks untuk tabel `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `loket`
--
ALTER TABLE `loket`
  ADD PRIMARY KEY (`id_loket`);

--
-- Indeks untuk tabel `text_jalan`
--
ALTER TABLE `text_jalan`
  ADD PRIMARY KEY (`id_text`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id_instansi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `loket`
--
ALTER TABLE `loket`
  MODIFY `id_loket` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `text_jalan`
--
ALTER TABLE `text_jalan`
  MODIFY `id_text` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

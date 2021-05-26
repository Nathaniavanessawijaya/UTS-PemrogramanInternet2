-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Bulan Mei 2021 pada 12.08
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblabsen`
--

CREATE TABLE `tblabsen` (
  `idabsen` int(5) NOT NULL,
  `tglabsen` date NOT NULL,
  `masuk` time NOT NULL,
  `keluar` time NOT NULL,
  `kodedosen` varchar(5) NOT NULL,
  `sesi` char(1) NOT NULL,
  `kelassesi` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tblabsen`
--

INSERT INTO `tblabsen` (`idabsen`, `tglabsen`, `masuk`, `keluar`, `kodedosen`, `sesi`, `kelassesi`) VALUES
(1, '2021-05-02', '07:00:00', '09:00:00', 'D1', '1', 'Pagi'),
(2, '2021-05-02', '11:00:00', '13:30:00', 'D2', '2', 'Siang'),
(3, '2021-05-02', '14:30:00', '16:00:00', 'D3', '3', 'Sore'),
(4, '2021-05-02', '18:00:00', '19:30:00', 'D4', '4', 'Malam'),
(5, '2021-05-02', '08:00:00', '10:00:00', 'D5', '1', 'Pagi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbldosen`
--

CREATE TABLE `tbldosen` (
  `kodedosen` varchar(5) NOT NULL,
  `nids` varchar(12) NOT NULL,
  `nipy` varchar(12) NOT NULL,
  `namadosen` varchar(80) NOT NULL,
  `kodeprodi` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbldosen`
--

INSERT INTO `tbldosen` (`kodedosen`, `nids`, `nipy`, `namadosen`, `kodeprodi`) VALUES
('D1', '0224057001', '197005242003', 'Reza Ilyasa, M.Kom.', '1'),
('D2', '0230068801', '198806302010', ' Tiara Eka Putri, M.Kom.', '2'),
('D3', '0222047001', '197004222007', ' Suhadi Parman, S.T. ', '3'),
('D4', '0212066001', '196006122005', 'Sudadi Pranata, SE., M.Si. ', '4'),
('D5', '0214126001', '196012142005', 'Suwandi, SE., MM', '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbljadwal`
--

CREATE TABLE `tbljadwal` (
  `id` int(11) NOT NULL,
  `jadwalid` int(4) NOT NULL,
  `kodedosen` varchar(5) NOT NULL,
  `hari` varchar(8) NOT NULL,
  `thnakademik` varchar(8) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `kodemk` varchar(15) NOT NULL,
  `sesi` char(1) NOT NULL,
  `jammasuk` time NOT NULL,
  `jamkeluar` time NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `ruang` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  `kelassesi` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbljadwal`
--

INSERT INTO `tbljadwal` (`id`, `jadwalid`, `kodedosen`, `hari`, `thnakademik`, `semester`, `kodemk`, `sesi`, `jammasuk`, `jamkeluar`, `kelas`, `ruang`, `status`, `kelassesi`) VALUES
(1, 1, 'D1', '', '2021', '4', 'SI101', '', '07:00:00', '09:00:00', 'Lab. ', '102', 1, 'Pagi'),
(2, 2, 'D2', '', '2021', '2', 'TI101', '', '11:00:00', '13:30:00', 'Lab. ', '104', 2, 'Siang'),
(3, 3, 'D3', '', '2021', '6', 'DKV101', '', '14:30:00', '16:00:00', 'Lab. ', '103', 3, 'Sore'),
(4, 4, 'D4', '', '2021', '2', 'MB101', '', '18:00:00', '19:30:00', 'Lab. ', '201', 4, 'Malam'),
(5, 5, 'D5', '', '2021', '4', 'KA101', '', '08:00:00', '10:00:00', 'Lab. ', '202', 5, 'Pagi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblmkuliah`
--

CREATE TABLE `tblmkuliah` (
  `kodemk` varchar(15) NOT NULL,
  `namamk` varchar(60) NOT NULL,
  `sks` int(2) NOT NULL,
  `smt` int(1) NOT NULL,
  `kodeprodi` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tblmkuliah`
--

INSERT INTO `tblmkuliah` (`kodemk`, `namamk`, `sks`, `smt`, `kodeprodi`) VALUES
('DKV101', 'Animasi (3D Artist) ', 3, 6, '3'),
('KA101', 'Akuntansi Keuangan Menengah', 6, 4, '5'),
('MB101', 'Etika Profesi dan Bisnis', 2, 2, '4'),
('SI101', 'Pemrograman Internet 2', 4, 4, '1'),
('TI101', 'Rekayasa Aplikasi Internet', 3, 2, '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblprodi`
--

CREATE TABLE `tblprodi` (
  `kodeprodi` varchar(1) NOT NULL,
  `namaprodi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tblprodi`
--

INSERT INTO `tblprodi` (`kodeprodi`, `namaprodi`) VALUES
('1', 'Sistem Informasi'),
('2', 'Teknik Informatika'),
('3', 'Desain Komunikasi Visual'),
('4', 'Manajemen Bisnis'),
('5', 'Komputerisasi Akuntansi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tblabsen`
--
ALTER TABLE `tblabsen`
  ADD PRIMARY KEY (`idabsen`),
  ADD KEY `tbl_absen_ibfk_1` (`kodedosen`);

--
-- Indeks untuk tabel `tbldosen`
--
ALTER TABLE `tbldosen`
  ADD PRIMARY KEY (`kodedosen`);

--
-- Indeks untuk tabel `tbljadwal`
--
ALTER TABLE `tbljadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kodedosen` (`kodedosen`),
  ADD KEY `kodemk` (`kodemk`);

--
-- Indeks untuk tabel `tblmkuliah`
--
ALTER TABLE `tblmkuliah`
  ADD PRIMARY KEY (`kodemk`),
  ADD KEY `kodeprodi` (`kodeprodi`);

--
-- Indeks untuk tabel `tblprodi`
--
ALTER TABLE `tblprodi`
  ADD PRIMARY KEY (`kodeprodi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tblabsen`
--
ALTER TABLE `tblabsen`
  MODIFY `idabsen` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbljadwal`
--
ALTER TABLE `tbljadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tblabsen`
--
ALTER TABLE `tblabsen`
  ADD CONSTRAINT `tbl_absen_ibfk_1` FOREIGN KEY (`kodedosen`) REFERENCES `tbldosen` (`kodedosen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbljadwal`
--
ALTER TABLE `tbljadwal`
  ADD CONSTRAINT `tbljadwal_ibfk_1` FOREIGN KEY (`kodedosen`) REFERENCES `tbldosen` (`kodedosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbljadwal_ibfk_2` FOREIGN KEY (`kodemk`) REFERENCES `tblmkuliah` (`kodemk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tblmkuliah`
--
ALTER TABLE `tblmkuliah`
  ADD CONSTRAINT `tblmkuliah_ibfk_1` FOREIGN KEY (`kodeprodi`) REFERENCES `tblprodi` (`kodeprodi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

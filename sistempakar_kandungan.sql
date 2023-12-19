-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jul 2023 pada 08.39
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistempakar_kandungan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'ryanramadhan', 'ryan1234', 'Ryan Ramadhan'),
(4, 'Admin', 'admin1234', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `id_pengetahuan` int(5) NOT NULL,
  `kd_penyakit` varchar(5) NOT NULL,
  `kd_gejala` varchar(5) NOT NULL,
  `nilai_cf` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`id_pengetahuan`, `kd_penyakit`, `kd_gejala`, `nilai_cf`) VALUES
(1, 'P02', 'G01', 0.8),
(2, 'P02', 'G02', 1),
(3, 'P02', 'G03', 0.6),
(4, 'P02', 'G04', 0.6),
(5, 'P02', 'G05', 0.6),
(6, 'P02', 'G06', 1),
(7, 'P03', 'G07', 0.8),
(8, 'P03', 'G08', 0.8),
(9, 'P03', 'G09', 0.8),
(10, 'P03', 'G10', 0.8),
(11, 'P03', 'G11', 0.8),
(12, 'P03', 'G12', 0.8),
(13, 'P03', 'G13', 1),
(14, 'P03', 'G14', 1),
(15, 'P04', 'G15', 0.8),
(16, 'P04', 'G16', 0.8),
(17, 'P04', 'G17', 0.8),
(18, 'P04', 'G18', 0.8),
(19, 'P04', 'G19', 0.8),
(20, 'P04', 'G20', 1),
(21, 'P05', 'G21', 0.8),
(22, 'P05', 'G22', 1),
(23, 'P05', 'G23', 0.6),
(24, 'P05', 'G24', 0.6),
(25, 'P05', 'G25', 0.8),
(26, 'P06', 'G26', 0.6),
(27, 'P06', 'G27', 1),
(28, 'P06', 'G28', 0.8),
(29, 'P06', 'G29', 0.8),
(30, 'P07', 'G30', 0.6),
(31, 'P07', 'G31', 0.8),
(32, 'P07', 'G32', 0.6),
(33, 'P07', 'G33', 1),
(34, 'P07', 'G34', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kd_gejala` varchar(5) NOT NULL,
  `nama_gejala` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kd_gejala`, `nama_gejala`) VALUES
('G01', 'Terjadi pada usia kehamilan  (4-16 minggu)'),
('G02', 'Mual dan Muntah'),
('G03', 'Dehidrasi (Merasa Sering Haus)'),
('G04', 'Kehilangan Berat Badan'),
('G05', 'Turgor/Elastisitas Kulit Menurun'),
('G06', 'Pemeriksaan Lab Hasil Keton (+)'),
('G07', 'Terjadi pada usia kehamilan lebih dari 20 minggu'),
('G08', 'Kejang'),
('G09', 'Penurunan kesadaran'),
('G10', 'Penglihatan kabur'),
('G11', 'Nyeri kepala hebat'),
('G12', 'Nyeri Ulu hati'),
('G13', 'Tekanan Darah &gt;= 140/90 mmHg (Hasil Lab)'),
('G14', 'Protein Urin (+) (Hasil Lab)'),
('G15', 'Kuku, bibir, dan kulit tampak pucat'),
('G16', 'Detak jantung tidak teratur'),
('G17', 'Cepat Lelah'),
('G18', 'Sakit kepala'),
('G19', 'Nyeri dada'),
('G20', 'Kadar Hemoglobin (Hb) kurang dari 11 g/dL (Hasil Lab)'),
('G21', 'Terjadi pada usia kehamilan kurang dari 20 minggu'),
('G22', 'Perdarahan dari jalan lahir'),
('G23', 'Nyeri Perut Bagian bawah'),
('G24', 'Nyeri pinggang'),
('G25', 'Buah Kehamilan tidak baik (Hasil USG)'),
('G26', 'Terjadi pada usia kehamilan sebelum 37 minggu'),
('G27', 'Keluar cairan ketuban dari vagina'),
('G28', 'Cairan ketuban berkurang banyak (Hasil USG)'),
('G29', 'Kertas warna merah berubah menjadi biru  (Tes Lakmus)'),
('G30', 'Terjadi pada usia kehamilan lebih dari 28 minggu'),
('G31', 'Pendarahan dari jalan lahir berulang '),
('G32', 'Pendarahan tanpa ada rasa nyeri'),
('G33', 'Pendarahan keluar banyak'),
('G34', 'Plasenta menutupi jalan lahir (Hasil USG)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_konsultasi`
--

CREATE TABLE `hasil_konsultasi` (
  `id_hasil` int(11) NOT NULL,
  `id_konsultasi` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `kd_penyakit` varchar(50) NOT NULL,
  `nilai_akurasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_konsultasi`
--

INSERT INTO `hasil_konsultasi` (`id_hasil`, `id_konsultasi`, `id_pasien`, `kd_penyakit`, `nilai_akurasi`) VALUES
(1, 1, 1, 'P02', '0.99798'),
(2, 2, 2, 'P01', '0'),
(3, 3, 3, 'P02', '0.99798'),
(4, 4, 4, 'P01', '0'),
(5, 5, 6, 'P02', '0.99798'),
(6, 6, 7, 'P03', '1.00000'),
(7, 7, 8, 'P03', '1.00000'),
(8, 8, 9, 'P02', '0.90784'),
(9, 9, 9, 'P02', '0.90784'),
(10, 10, 0, 'P02', '0.90784'),
(11, 11, 10, 'P02', '0.36000'),
(12, 12, 11, 'P03', '0.98320'),
(13, 13, 12, 'P07', '1.00000'),
(14, 14, 13, 'P06', '1.00000'),
(15, 15, 14, 'P05', '1.00000'),
(16, 16, 15, 'P04', '1.00000'),
(17, 17, 16, 'P04', '0.99961'),
(18, 18, 17, 'P04', '0.87171'),
(19, 19, 18, 'P04', '0.92688'),
(20, 20, 19, 'P02', '0.99798'),
(21, 21, 20, 'P03', '1.00000'),
(22, 22, 21, 'P02', '0.74400'),
(23, 23, 22, 'P03', '0.80000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE `kondisi` (
  `id_kondisi` int(5) NOT NULL,
  `kondisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kondisi`
--

INSERT INTO `kondisi` (`id_kondisi`, `kondisi`) VALUES
(1, 'Tidak'),
(2, 'Sedikit Yakin'),
(3, 'Cukup Yakin'),
(4, 'Yakin'),
(5, 'Sangat Yakin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` int(10) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konsultasi`
--

INSERT INTO `konsultasi` (`id_konsultasi`, `tanggal`, `penyakit`, `gejala`) VALUES
(1, '07-03-2023 10:19:30', 'a:7:{s:3:\"P02\";s:7:\"0.99798\";s:3:\"P01\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"4\";s:3:\"G02\";s:1:\"4\";s:3:\"G03\";s:1:\"4\";s:3:\"G04\";s:1:\"4\";s:3:\"G05\";s:1:\"4\";s:3:\"G06\";s:1:\"4\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(2, '07-03-2023 10:23:27', 'a:7:{s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(3, '07-03-2023 10:30:22', 'a:7:{s:3:\"P02\";s:7:\"0.99798\";s:3:\"P01\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"4\";s:3:\"G02\";s:1:\"4\";s:3:\"G03\";s:1:\"4\";s:3:\"G04\";s:1:\"4\";s:3:\"G05\";s:1:\"4\";s:3:\"G06\";s:1:\"4\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(4, '07-03-2023 10:42:41', 'a:7:{s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(5, '07-16-2023 15:20:29', 'a:7:{s:3:\"P02\";s:7:\"0.99798\";s:3:\"P01\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"4\";s:3:\"G02\";s:1:\"4\";s:3:\"G03\";s:1:\"4\";s:3:\"G04\";s:1:\"4\";s:3:\"G05\";s:1:\"4\";s:3:\"G06\";s:1:\"4\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(6, '07-16-2023 15:26:45', 'a:7:{s:3:\"P03\";s:7:\"1.00000\";s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"4\";s:3:\"G08\";s:1:\"4\";s:3:\"G09\";s:1:\"4\";s:3:\"G10\";s:1:\"4\";s:3:\"G11\";s:1:\"4\";s:3:\"G12\";s:1:\"4\";s:3:\"G13\";s:1:\"4\";s:3:\"G14\";s:1:\"4\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(7, '07-16-2023 15:27:45', 'a:7:{s:3:\"P03\";s:7:\"1.00000\";s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"4\";s:3:\"G08\";s:1:\"4\";s:3:\"G09\";s:1:\"4\";s:3:\"G10\";s:1:\"4\";s:3:\"G11\";s:1:\"4\";s:3:\"G12\";s:1:\"4\";s:3:\"G13\";s:1:\"5\";s:3:\"G14\";s:1:\"5\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(8, '07-25-2023 16:22:58', 'a:7:{s:3:\"P02\";s:7:\"0.90784\";s:3:\"P01\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"4\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"3\";s:3:\"G04\";s:1:\"5\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(9, '07-25-2023 16:23:27', 'a:7:{s:3:\"P02\";s:7:\"0.90784\";s:3:\"P01\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"4\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"3\";s:3:\"G04\";s:1:\"5\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(10, '07-25-2023 16:23:39', 'a:7:{s:3:\"P02\";s:7:\"0.90784\";s:3:\"P01\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"4\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"3\";s:3:\"G04\";s:1:\"5\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(11, '07-25-2023 16:24:33', 'a:7:{s:3:\"P02\";s:7:\"0.36000\";s:3:\"P01\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"3\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(12, '07-25-2023 16:25:14', 'a:7:{s:3:\"P03\";s:7:\"0.98320\";s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"4\";s:3:\"G09\";s:1:\"4\";s:3:\"G10\";s:1:\"4\";s:3:\"G11\";s:1:\"4\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(13, '07-25-2023 22:07:11', 'a:7:{s:3:\"P07\";s:7:\"1.00000\";s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"4\";s:3:\"G31\";s:1:\"4\";s:3:\"G32\";s:1:\"4\";s:3:\"G33\";s:1:\"4\";s:3:\"G34\";s:1:\"4\";}'),
(14, '07-25-2023 22:07:40', 'a:7:{s:3:\"P06\";s:7:\"1.00000\";s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"4\";s:3:\"G27\";s:1:\"4\";s:3:\"G28\";s:1:\"4\";s:3:\"G29\";s:1:\"4\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(15, '07-25-2023 22:08:20', 'a:7:{s:3:\"P05\";s:7:\"1.00000\";s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"4\";s:3:\"G22\";s:1:\"4\";s:3:\"G23\";s:1:\"4\";s:3:\"G24\";s:1:\"4\";s:3:\"G25\";s:1:\"4\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(16, '07-25-2023 22:09:02', 'a:7:{s:3:\"P04\";s:7:\"1.00000\";s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"4\";s:3:\"G16\";s:1:\"4\";s:3:\"G17\";s:1:\"4\";s:3:\"G18\";s:1:\"4\";s:3:\"G19\";s:1:\"4\";s:3:\"G20\";s:1:\"4\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(17, '07-25-2023 22:09:29', 'a:7:{s:3:\"P04\";s:7:\"0.99961\";s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"2\";s:3:\"G16\";s:1:\"2\";s:3:\"G17\";s:1:\"2\";s:3:\"G18\";s:1:\"2\";s:3:\"G19\";s:1:\"2\";s:3:\"G20\";s:1:\"2\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(18, '07-25-2023 22:09:52', 'a:7:{s:3:\"P04\";s:7:\"0.87171\";s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"2\";s:3:\"G17\";s:1:\"2\";s:3:\"G18\";s:1:\"2\";s:3:\"G19\";s:1:\"2\";s:3:\"G20\";s:1:\"2\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(19, '07-25-2023 22:10:20', 'a:7:{s:3:\"P04\";s:7:\"0.92688\";s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"3\";s:3:\"G17\";s:1:\"3\";s:3:\"G18\";s:1:\"3\";s:3:\"G19\";s:1:\"3\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(20, '07-25-2023 22:10:47', 'a:7:{s:3:\"P02\";s:7:\"0.99798\";s:3:\"P01\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"4\";s:3:\"G02\";s:1:\"4\";s:3:\"G03\";s:1:\"4\";s:3:\"G04\";s:1:\"4\";s:3:\"G05\";s:1:\"4\";s:3:\"G06\";s:1:\"4\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(21, '07-25-2023 22:11:16', 'a:7:{s:3:\"P03\";s:7:\"1.00000\";s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"4\";s:3:\"G08\";s:1:\"4\";s:3:\"G09\";s:1:\"4\";s:3:\"G10\";s:1:\"4\";s:3:\"G11\";s:1:\"4\";s:3:\"G12\";s:1:\"4\";s:3:\"G13\";s:1:\"4\";s:3:\"G14\";s:1:\"4\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(22, '07-25-2023 22:11:33', 'a:7:{s:3:\"P02\";s:7:\"0.74400\";s:3:\"P01\";s:1:\"0\";s:3:\"P03\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"3\";s:3:\"G03\";s:1:\"3\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}'),
(23, '07-30-2023 13:25:44', 'a:7:{s:3:\"P03\";s:7:\"0.80000\";s:3:\"P01\";s:1:\"0\";s:3:\"P02\";s:1:\"0\";s:3:\"P04\";s:1:\"0\";s:3:\"P05\";s:1:\"0\";s:3:\"P06\";s:1:\"0\";s:3:\"P07\";s:1:\"0\";}', 'a:34:{s:3:\"G01\";s:1:\"1\";s:3:\"G02\";s:1:\"1\";s:3:\"G03\";s:1:\"1\";s:3:\"G04\";s:1:\"1\";s:3:\"G05\";s:1:\"1\";s:3:\"G06\";s:1:\"1\";s:3:\"G07\";s:1:\"1\";s:3:\"G08\";s:1:\"1\";s:3:\"G09\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"4\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:3:\"G19\";s:1:\"1\";s:3:\"G20\";s:1:\"1\";s:3:\"G21\";s:1:\"1\";s:3:\"G22\";s:1:\"1\";s:3:\"G23\";s:1:\"1\";s:3:\"G24\";s:1:\"1\";s:3:\"G25\";s:1:\"1\";s:3:\"G26\";s:1:\"1\";s:3:\"G27\";s:1:\"1\";s:3:\"G28\";s:1:\"1\";s:3:\"G29\";s:1:\"1\";s:3:\"G30\";s:1:\"1\";s:3:\"G31\";s:1:\"1\";s:3:\"G32\";s:1:\"1\";s:3:\"G33\";s:1:\"1\";s:3:\"G34\";s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(15) NOT NULL,
  `nama_pasien` varchar(30) NOT NULL,
  `usia` int(5) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `usia`, `email`, `alamat`) VALUES
(1, 'Nama Pasien 1', 23, 'pasien1@gmail.com', 'Karawang'),
(2, 'Nama Pasien 2', 21, 'pasien2@gmail.com', 'Jakarta'),
(3, 'Nama Pasien 3', 34, 'pasien4@gmail.com', 'Karawang'),
(4, 'Yulita', 21, 'yulita@gmail.com', 'Karawang'),
(5, 'tes ryan 2', 23, 'ryan@gmail.com', 'Karawang'),
(6, 'Nama Pasien 5', 21, 'pasien5@gmail.com', 'Cilamaya'),
(7, 'Riyanti', 24, 'riyanti@gmail.com', 'Pasir Jaya'),
(8, 'Sadiah', 21, 'saidah@gmail.com', 'Karawang'),
(9, 'tes', 4, 'ra@gmail.com', 'ea'),
(10, 'tes12', 34, 'ra@gmail.com', 'clmya'),
(11, 'wawan', 23, 'wan@gmail.com', 'Karawang'),
(12, 'ts1', 9, 'ra@gmail.com', 'wa'),
(13, 'ss', 23, 'ra@gmail.com', 'sa'),
(14, 'dsa', 9, 'ra@gmail.com', 'sa'),
(15, 'dsa', 9, 'ra@gmail.com', 's'),
(16, 'wawan', 4, 'ra@gmail.com', 'sa'),
(17, 'dsa', 9, 'ra@gmail.com', 'sa'),
(18, 'wawan', 9, 'ra@gmail.com', 'sa'),
(19, 'dsa', 9, 'ryan@gmail.com', 'sa'),
(20, 'wawan', 4, 'ryan@gmail.com', 'sa'),
(21, 'wawan', 9, 'salsa@gmail.com', 'Dusun Rawabebek 21/08, Desa  Rawagempol Wetan, Kecamatan Cilamaya Wetan, Kabupaten Karawang.'),
(23, 'ss', 4, 'ra@gmail.com', 'sd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kd_penyakit` varchar(10) NOT NULL,
  `nama_penyakit` varchar(255) NOT NULL,
  `penjelasan` varchar(255) NOT NULL,
  `solusi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kd_penyakit`, `nama_penyakit`, `penjelasan`, `solusi`) VALUES
('P01', 'Tidak Terindikasi Penyakit', 'Berdasarkan gejala yang anda alami dan pilih pada halaman sebelumnya, anda tidak terindikasi mengalami penyakit saat kehamilan  ', 'Tetap menjaga kesehatan dan mengonsumsi makanan sehat'),
('P02', 'HEG (Hiperemis Gravidarum)', 'HEG (Hiperemis Gravidarum) adalah mual dan muntah yang terjadi secara berlebihan selama hamil. Mual dan muntah (morning sickness) pada kehamilan trimester awal sebenarnya normal. Namun, pada hiperemesis gravidarum, mual dan muntah dapat terjadi sepanjang ', 'Pemberian obat oral, bila pemberian oral gagal maka dapat dilakukan pemberian infus cairan atau pemberian nutrisi, dan jika mual dan muntah hebat tetap terjadi maka pasien sebaiknya di rawat.\r\n'),
('P03', 'Preeklampsia', 'Preeklamsia adalah peningkatan tekanan darah dan kelebihan protein dalam urine yang terjadi setelah usia kehamilan lebih dari 20 minggu. Bila tidak segera ditangani, preeklamsia bisa menyebabkan komplikasi yang berbahaya bagi ibu dan janin.', 'Rawat jalan, pasien dianjurkan cukup istirahat, memantau tekanan darah dan proteinuria setiap hari, Dapat diberikan antioksidan dan kalsium., Kontrol tiap minggu ke bidan/dokter, dan Rawat jika terjadi PEB dengan  tekanan darah &gt;= 140/90 mmHg dan prote'),
('P04', 'Anemia', 'Anemia adalah kondisi ketika tubuh kekurangan sel darah merah yang sehat atau ketika sel darah merah tidak berfungsi dengan baik. Akibatnya, organ tubuh tidak mendapat cukup oksigen sehingga membuat penderita anemia pucat dan mudah lelah.', 'Mengonsumsi makanan yang mengandung  zat besi seperti telur, daging merah, sayuran hijau, dan kacang-kacangan, Mengonsumsi B12 seperti susu dan produk olahannya, tempe, dan tahu, Dan mengonsumsi vitamin C seperti buah dan sayur, Untuk penanganan lebih lan'),
('P05', 'Abortus', 'Abortus atau yang lebih sering disebut keguguran adalah kematian janin dalam kandungan sebelum usia kehamilan mencapai 20 minggu. Anda mungkin belum tahu macam-macam abortus yang bisa terjadi selama kehamilan', 'Dianjurkan untuk tidak melakukan aktivitas berlebihan dan Segera periksa ke bidan/dokter untuk penanganan lebih lanjut.\r\n'),
('P06', 'KPD (Ketuban Pecah Dini)', 'Ketuban pecah dini adalah kondisi ketika kantung ketuban pecah sebelum persalinan dimulai. Kondisi ini bisa terjadi ketika perkembangan janin belum sempurna, yaitu sebelum minggu ke-37 masa kehamilan. Namun, kondisi ini juga dapat terjadi ketika perkemban', 'Segera periksa ke bidan/dokter untuk penanganan lebih lanjut, Jika Usia kehamilan ?  28 mg maka terminasi, Jika Usia kehamilan  28 – 36 mg maka terminasi dan pematangan paru-paru janin, dan Jika Usia kehamilan ? 36 mg maka terminasi kehamilan.\r\n'),
('P07', 'Plasenta Previa', 'Plasenta previa adalah kondisi ketika ari-ari atau plasenta berada di bagian bawah rahim sehingga menutupi sebagian atau seluruh jalan lahir. Selain menutupi jalan lahir, plasenta previa juga dapat menyebabkan perdarahan hebat, baik sebelum maupun saat pe', 'Segera periksa ke bidan/dokter untuk penanganan lebih lanjut, Memperbanyak istirahat dan berbaring, Bila pendarahan sangat banyak dan tidak dapat dihentikan, maka dirujuk untuk perawatan lebih lanjut di rumah sakit.\r\n');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`id_pengetahuan`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indeks untuk tabel `hasil_konsultasi`
--
ALTER TABLE `hasil_konsultasi`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indeks untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id_kondisi`);

--
-- Indeks untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `id_pengetahuan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `hasil_konsultasi`
--
ALTER TABLE `hasil_konsultasi`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id_kondisi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

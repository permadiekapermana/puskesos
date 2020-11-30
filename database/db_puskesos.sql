-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2020 at 01:09 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_puskesos`
--

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `id_agama` varchar(11) NOT NULL,
  `agama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`id_agama`, `agama`) VALUES
('AGAM.000001', 'Islam'),
('AGAM.000002', 'Kristen Katolik'),
('AGAM.000003', 'Kristen Protestan'),
('AGAM.000004', 'Hindu'),
('AGAM.000005', 'Buddha');

-- --------------------------------------------------------

--
-- Table structure for table `blok`
--

CREATE TABLE `blok` (
  `id_blok` varchar(11) NOT NULL,
  `blok` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blok`
--

INSERT INTO `blok` (`id_blok`, `blok`) VALUES
('BLOK.000001', 'Bebekan'),
('BLOK.000002', 'Sampang'),
('BLOK.000003', 'Weringin'),
('BLOK.000004', 'Kedunguter');

-- --------------------------------------------------------

--
-- Table structure for table `kelahiran`
--

CREATE TABLE `kelahiran` (
  `id_kelahiran` varchar(11) NOT NULL,
  `id_penduduk` varchar(11) DEFAULT NULL,
  `ayah` varchar(11) DEFAULT NULL,
  `ibu` varchar(11) NOT NULL,
  `jam` varchar(10) NOT NULL,
  `lahir_di` varchar(30) NOT NULL,
  `nama_bidan` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `file_kelahiran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelahiran`
--

INSERT INTO `kelahiran` (`id_kelahiran`, `id_penduduk`, `ayah`, `ibu`, `jam`, `lahir_di`, `nama_bidan`, `keterangan`, `file_kelahiran`) VALUES
('KLHR.000001', 'PDDK.000012', 'PDDK.000003', 'PDDK.000004', '09.00 WIB', 'Puskesmas Kemlakagede', 'Evi Lestari', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kematian`
--

CREATE TABLE `kematian` (
  `id_kematian` varchar(11) NOT NULL,
  `id_penduduk` varchar(11) NOT NULL,
  `tgl_meninggal` date NOT NULL,
  `jam` varchar(10) NOT NULL,
  `tempat_meninggal` varchar(30) NOT NULL,
  `dimakamkan_di` varchar(30) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `file_surat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kematian`
--

INSERT INTO `kematian` (`id_kematian`, `id_penduduk`, `tgl_meninggal`, `jam`, `tempat_meninggal`, `dimakamkan_di`, `keterangan`, `file_surat`) VALUES
('KMTN.000001', 'PDDK.000003', '2020-07-05', '12.23 WIB', 'Kemlakagede', 'Kejoran', 'akan dikebumikan pada jam 13.30', '34Untitled.png');

-- --------------------------------------------------------

--
-- Table structure for table `kis`
--

CREATE TABLE `kis` (
  `id_kis` varchar(11) NOT NULL,
  `id_penduduk` varchar(11) NOT NULL,
  `nomor_kartu` varchar(20) NOT NULL,
  `tingkat` varchar(15) NOT NULL,
  `tgl_berlaku` date NOT NULL,
  `tgl_kadaluwarsa` date NOT NULL,
  `status_kis` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kis`
--

INSERT INTO `kis` (`id_kis`, `id_penduduk`, `nomor_kartu`, `tingkat`, `tgl_berlaku`, `tgl_kadaluwarsa`, `status_kis`) VALUES
('NKIS.000001', 'PDDK.000001', '131424254254', '3', '2020-03-14', '2020-02-14', 'Kadaluwarsa'),
('NKIS.000002', 'PDDK.000001', '7657657646', '3', '2020-03-14', '2020-03-14', 'Kadaluwarsa'),
('NKIS.000003', 'PDDK.000002', '43534544523534', '3', '2020-06-19', '2020-06-18', 'Kadaluwarsa'),
('NKIS.000004', 'PDDK.000011', '00006759774232', '3', '2020-06-29', '2020-06-30', 'Kadaluwarsa'),
('NKIS.000005', 'PDDK.000002', '131424254254', '3', '2020-07-03', '2020-07-04', 'Berlaku'),
('NKIS.000006', 'PDDK.000005', '0000342562388', '3', '2020-07-05', '2025-07-05', 'Berlaku'),
('NKIS.000007', 'PDDK.000004', '0000677777898', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000008', 'PDDK.000006', '0000342567387', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000009', 'PDDK.000007', '0000342561733', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000010', 'PDDK.000008', '0000342599689', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000011', 'PDDK.000009', '0000342522234', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000012', 'PDDK.000010', '0000342499738', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000013', 'PDDK.000011', '0000342561115', '3', '2020-07-19', '2025-07-10', 'Berlaku'),
('NKIS.000014', 'PDDK.000012', '0000342562955', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000015', 'PDDK.000013', '0000342562354', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000016', 'PDDK.000014', '0000342537866', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000017', 'PDDK.000015', '0000342349384', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000018', 'PDDK.000016', '0000342563995', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000019', 'PDDK.000017', '0000342222785', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000020', 'PDDK.000018', '0000342561885', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000021', 'PDDK.000019', '0000342767489', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000022', 'PDDK.000020', '0000342565554', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000023', 'PDDK.000021', '0000342444896', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000024', 'PDDK.000022', '0000342566638', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000025', 'PDDK.000023', '0000342565531', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000026', 'PDDK.000024', '0000342511187', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000027', 'PDDK.000025', '0000342569533', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000028', 'PDDK.000026', '0000342577334', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000029', 'PDDK.000027', '0000342563874', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000030', 'PDDK.000028', '0000342564445', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000031', 'PDDK.000029', '0000342534255', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000032', 'PDDK.000030', '0000342562228', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000033', 'PDDK.000031', '0000342567766', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000034', 'PDDK.000032', '0000342587895', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000035', 'PDDK.000033', '0000342563331', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000036', 'PDDK.000034', '0000342526997', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000037', 'PDDK.000035', '0000342511112', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000038', 'PDDK.000036', '0000342562225', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000039', 'PDDK.000037', '0000342233346', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000040', 'PDDK.000038', '0000342562777', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000041', 'PDDK.000039', '0000342561119', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000042', 'PDDK.000040', '0000342544432', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000043', 'PDDK.000041', '0000342119875', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000044', 'PDDK.000042', '0000342562221', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000045', 'PDDK.000043', '0000342562397', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000046', 'PDDK.000044', '0000342566554', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000047', 'PDDK.000045', '0000342560054', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000048', 'PDDK.000046', '0000342599935', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000049', 'PDDK.000047', '0000342232569', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000050', 'PDDK.000048', '0000342562344', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000051', 'PDDK.000049', '0000342562111', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000052', 'PDDK.000050', '0000342562381', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000053', 'PDDK.000051', '0000342562325', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000054', 'PDDK.000052', '0000342562444', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000055', 'PDDK.000053', '0000342562621', '3', '2020-07-19', '2025-07-19', 'Berlaku'),
('NKIS.000056', 'PDDK.000054', '0000342562449', '3', '2020-07-21', '2025-07-21', 'Berlaku');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` varchar(11) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `pekerjaan`) VALUES
('PKRJ.000001', 'Pelajar / Mahasiswa'),
('PKRJ.000002', 'Belum / Tidak Bekerja'),
('PKRJ.000003', 'Wiraswasta'),
('PKRJ.000004', 'Mengurus Rumah Tangga'),
('PKRJ.000005', '	Pegawai Negeri Sipil'),
('PKRJ.000006', 'Karyawan Swasta'),
('PKRJ.000007', 'Pedagang');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan` varchar(11) NOT NULL,
  `pendidikan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan`, `pendidikan`) VALUES
('PDIK.000001', 'Belum / Tidak Sekolah'),
('PDIK.000002', 'SD Sederajat'),
('PDIK.000003', 'SMP Sederajat'),
('PDIK.000004', 'SMA Sederajat'),
('PDIK.000005', 'Diploma I'),
('PDIK.000006', 'Diploma II'),
('PDIK.000007', 'Diploma III'),
('PDIK.000008', 'Strata I'),
('PDIK.000009', 'Strata II'),
('PDIK.000010', 'Strata III');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `id_penduduk` varchar(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `no_kk` varchar(16) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `gol_darah` varchar(2) DEFAULT NULL,
  `id_agama` varchar(11) NOT NULL,
  `id_pekerjaan` varchar(11) NOT NULL,
  `id_pendidikan` varchar(11) NOT NULL,
  `id_rt` varchar(11) NOT NULL,
  `status_nikah` varchar(20) NOT NULL,
  `status_tinggal` varchar(20) NOT NULL,
  `status_penduduk` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`id_penduduk`, `nik`, `no_kk`, `nama`, `tgl_lahir`, `tmp_lahir`, `jenis_kelamin`, `gol_darah`, `id_agama`, `id_pekerjaan`, `id_pendidikan`, `id_rt`, `status_nikah`, `status_tinggal`, `status_penduduk`) VALUES
('PDDK.000001', '3209356897980001', '5376535454', 'BARJO', '2002-08-07', 'cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Meninggal'),
('PDDK.000002', '3209350505960002', '3209354789580032', 'AHMAD MUCHYIDIN', '1996-05-09', 'cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000003', '3209350401660002', '3209352203110001', 'TUANO', '1964-01-04', 'cirenon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000006', 'PDIK.000002', 'NORT.000001', 'Menikah', 'Tetap', 'Meninggal'),
('PDDK.000004', '3209356301730003', '3209352203110001', 'MISNA', '0973-01-23', 'cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000002', 'NORT.000001', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000005', '3209352609930001', '3209352203110001', 'GANTAR SANTOSO', '1993-03-26', 'cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000003', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000006', '3209352104980001', '3209352203110001', 'AGUNG SUDRAJAT', '1999-04-21', 'cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000007', '3209352112030003', '3209352203110001', 'ANGGI ANGGARA', '2003-12-21', 'cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000008', '3209354112100001', '3209352203110001', 'FERLITA FADILAH', '2010-12-01', 'cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000001', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000009', '3209356104140002', '3209352203110001', 'GINA SEFRIYATI', '2014-04-21', 'cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000001', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000010', '3209350705700001', '3209352574000034', 'DAI SAMUDI', '1970-05-07', 'cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000003', 'NORT.000001', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000011', '3209357007780001', '3209354789580032', 'KAPSA', '1978-07-10', 'cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000002', 'NORT.000001', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000012', '3209358979000001', '3209352203110001', 'FANNY', '2020-06-29', 'cirebon', 'Perempuan', 'O', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000001', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000013', '3209351706650002', '3209353099760044', 'SUMIAH', '1965-06-17', 'cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000002', 'NORT.000001', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000014', '3209352008960001', '3209353099760044', 'TEGUH S', '1996-08-20', 'cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000015', '3209351811860001', '3209351807660006', 'MAEMUNAH', '1986-11-18', 'cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000003', 'NORT.000001', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000016', '3209352007990002', '3209351807660006', 'KARIYAH', '1999-07-20', 'cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000017', '3209351912000001', '3209351807660006', 'SARIFUDIN', '2000-12-19', 'cirebon', 'Laki-Laki', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000002', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000018', '3209350304020001', '3209351807660006', 'ANDI SUSILA', '2002-04-03', 'cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000001', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000019', '3209352505880001', '3209352204500012', 'RUSLANI', '1988-05-25', 'cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000006', 'PDIK.000004', 'NORT.000001', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000020', '3209352904950001', '3209352204500012', 'MUKTIAR JAYA', '1995-04-29', 'cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000021', '3209350109070002', '3209352204500012', 'DOLI', '2007-09-01', 'cirebon', 'Laki-Laki', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000022', '3209351302190003', '3209352204500012', 'JONI GUNAWAN', '2019-02-13', 'cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000001', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000023', '3209352709830001', '3209354609880006', 'ETI', '1983-09-27', 'cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000003', 'NORT.000001', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000024', '3209350510970001', '3209354609880006', 'RESA A', '1997-10-05', 'cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000025', '3209351211020002', '3209354609880006', 'MUH. RIZKI', '2002-11-12', 'cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000026', '3209350503120003', '3209354609880006', 'ABADI', '2012-03-05', 'cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000001', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000027', '3209352107840001', '3209355510790534', 'MUSLIM', '1984-07-21', 'cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000007', 'PDIK.000002', 'NORT.000004', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000028', '3209351809860001', '3209355510790534', 'ALIMI', '1986-09-18', 'cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000002', 'NORT.000005', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000029', '3209352011950002', '3209355510790534', 'PUTRI HERAWATI', '1995-11-20', 'cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000030', '3209352205970003', '3209355510790534', 'YUNITA MN', '1997-05-22', 'cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000031', '3209350101020004', '3209355510790534', 'FITRIYANI', '2002-01-01', 'cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000032', '3209351206050002', '3209355510790534', 'MUH. RIDWAN', '2005-06-12', 'cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000002', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000033', '3209351212080001', '3209355510790534', 'SANTIKA', '2008-12-12', 'cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000002', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000034', '3209350609100003', '3209355510790534', 'SAWIYAH', '2010-09-06', 'cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000002', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000035', '3209351709910001', '3209355510790534', 'ILHAM', '1991-09-17', 'cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000004', 'NORT.000004', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000036', '3209352010980002', '3209355510790534', 'SILA ARWIN', '1998-10-20', 'cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000037', '3209352211030001', '3209355510790534', 'BENTARS', '2003-11-22', 'cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000038', '3209352009060003', '3209355510790534', 'NASIPA', '2006-09-20', 'cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000002', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000039', '3209350305110004', '3209355510790534', 'AKLIMA', '2011-05-03', 'cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000002', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000040', '3209350708680001', '3209350805080019', 'ROSID', '1968-08-07', 'cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000004', 'NORT.000004', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000041', '3209354406990002', '3209356349970045', 'SADIYAH', '1999-06-14', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000001', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000042', '3209358905910001', '3209008905910001', 'BUDIYANTO', '1993-02-12', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000006', 'PDIK.000004', 'NORT.000001', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000043', '3209359829919180', '3209819829919180', 'SARAH', '1998-09-12', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000044', '3209350801190001', '3209351211080022', 'ABDUL SOMAD', '2019-01-08', 'Cirebon', 'Laki-Laki', 'B', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000001', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000045', '3209351110980006', '3209350610100010', 'ADANG SURYANA', '1998-10-11', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000046', '3209352308970002', '3209352511140000', 'ADE WATINI', '1997-08-23', 'Cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000047', '3209351711880001', '3209350309080014', 'ADI MUADI', '1988-11-17', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000001', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000048', '3209351905940002', '3209352609070131', 'ADI SUPARDI', '1994-05-19', 'Cirebon', 'Laki-Laki', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000049', '3209350911980001', '3209356743540023', 'RENDIKA', '1998-11-09', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000001', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000050', '3209352812990002', '3209356657080002', 'RIDHO ILLAHI', '1999-12-28', 'Cirebon', 'Laki-Laki', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000051', '3209351711970001', '3209357668440001', 'AMELIA', '1997-11-17', 'Cirebon', 'Perempuan', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000052', '3209352608020002', '3209357668440001', 'NADYA JANNAH', '2002-08-26', 'Cirebon', 'Perempuan', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000053', '3209353506770001', '3209354689900054', 'RIFKI SAPUTRA', '1977-06-15', 'Cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000007', 'PDIK.000003', 'NORT.000001', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000054', '3209350808990002', '3209354689900054', 'JULAIHA', '1999-08-08', 'Cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000055', '3209357311040001', '3209354689900054', 'NANDRA AJI', '2004-11-13', 'Cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000001', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000056', '3209351109950001', '3209356680050003', 'JUNAEDI', '1995-09-11', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000002', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000057', '3209351706990002', '3209356680050003', 'RAHMAWATI', '1999-06-17', 'Cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000002', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000058', '3209351212050001', '3209352543770011', 'NAYLA', '2005-12-12', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000002', 'NORT.000003', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000059', '3209350205770005', '3209351132310003', 'DARMO', '1977-05-02', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000002', 'NORT.000003', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000060', '3209356307880001', '3209356068480050', 'RINI', '1988-07-13', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000003', 'NORT.000003', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000061', '3209351102070003', '3209355574320100', 'ABDUL MAJID', '2007-02-11', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000002', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000062', '3209204504010002', '3209202302063907', 'AYU APRILIANI', '2001-04-05', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000003', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000063', '3209202407960003', '3209202302063907', 'KHAERUDIN', '1996-07-24', 'Cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000003', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000064', '3209352506080120', '3209352810070001', 'ALDIANSYAH', '2008-06-25', 'Cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000002', 'NORT.000003', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000065', '3209355901860001', '3209357740980804', 'DEPI RUSTIANA', '1986-01-19', 'Cirebon', 'Perempuan', 'O', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000003', 'NORT.000003', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000066', '3209356207790001', '3209350109080015', 'SITI KHODIJAH', '1979-07-12', 'Cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000004', 'NORT.000003', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000067', '3209356505610001', '3209350211080003', 'IJAH HADIJAH', '1961-09-15', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000003', 'NORT.000003', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000068', '3209350805080012', '3209352609740001', 'NUR YANTO', '1980-05-08', 'Cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000004', 'NORT.000003', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000069', '3209351910590001', '3209352110090008', 'SUNADI', '1959-10-19', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000006', 'PDIK.000004', 'NORT.000003', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000070', '3209350204920003', '3209352110090008', 'ACHMAD RIYADI', '1992-04-02', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000006', 'PDIK.000008', 'NORT.000003', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000071', '3209205111020003', '3209352110090008', 'SUCI AMELIA', '2020-10-11', 'Cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000001', 'NORT.000003', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000072', '3209205002680008', '3209355548880201', 'SITI CHODIJAH', '1980-06-10', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000003', 'NORT.000003', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000073', '3209205100550010', '3209352029550001', 'MASRIAH', '1950-05-10', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000003', 'NORT.000003', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000074', '3209200808790005', '3209354006740002', 'SUANDI', '1979-08-08', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000003', 'NORT.000004', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000075', '3209205911000005', '3209357338000020', 'SUPRIATIN', '2000-11-19', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000076', '3209200303940008', '3209357770200008', 'ROHMAT SAEFUDIN', '1994-03-03', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000077', '3514230109900003', '3209352658670200', 'AKHMAZALULI', '1990-09-10', 'Cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000006', 'PDIK.000004', 'NORT.000004', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000078', '3209204308880002', '3209351203320004', 'LILI', '1988-08-30', 'Cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000002', 'NORT.000004', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000079', '3209202007860002', '3209351203320004', 'KHALIL', '1986-07-20', 'Cirebon', 'Laki-Laki', 'B', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000003', 'NORT.000004', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000080', '3209351711980001', '3209352009880001', 'HERI WAHYUDI', '1998-11-17', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000081', '3209352001990002', '3209352009880001', 'DEDE WAHYUDI', '1999-01-20', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000082', '3209356704880003', '3209356712570001', 'MASPUPAH', '1988-04-17', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000003', 'NORT.000004', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000083', '3209350912950001', '3209352512880002', 'RUJITOH', '1995-12-09', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000084', '3209351107020002', '3209354408480001', 'SUNAMI', '2000-07-11', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000085', '3209352704980001', '3209352208890002', 'IRFAN BUDIANTO', '1998-04-27', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000086', '3209355611080002', '3209351203890002', 'TOMY NURIKHSAN', '2000-08-11', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000001', 'NORT.000004', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000087', '3209351901930001', '3209350801090072', 'MOH NUR HIDAYAT', '1993-01-19', 'Cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000005', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000088', '3209352603880001', '3209350801090072', 'RIFAI', '1988-03-26', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000004', 'NORT.000005', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000089', '3209355504860002', '3209350801090072', 'KUMAYAH', '1986-04-25', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000003', 'NORT.000005', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000090', '3209351010060003', '3209351301090027', 'ABDULLAH MUBAROK', '2006-10-10', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000002', 'NORT.000005', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000091', '3209354205800001', '3209352309070875', 'LILIS FARIDA', '1980-05-12', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000003', 'NORT.000006', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000092', '3209351204670003', '3209352807080033', 'ABDUL HAMID', '1967-04-12', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000004', 'NORT.000006', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000093', '3209351802980002', '3209351510700005', 'KARDI', '1998-02-18', 'Cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000006', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000094', '3209351704960001', '3209351510700005', 'YAN ROMANSA', '1996-04-17', 'Cirebon', 'Laki-Laki', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000006', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000095', '3209355206730006', '3209352056990004', 'ALDIANSYAH', '1973-06-12', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000004', 'NORT.000006', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000096', '3209062512050001', '3209351119450050', 'TUNISA', '2005-12-25', 'Cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000002', 'NORT.000006', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000097', '3209351203500002', '3209350905110013', 'ASIM', '1950-03-12', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000002', 'NORT.000006', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000098', '3209356808550001', '3209350905110013', 'RASITI', '1955-08-18', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000002', 'NORT.000006', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000099', '3209354704870001', '3209350905110013', 'SAADAH', '1987-04-07', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000003', 'NORT.000006', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000100', '3209202702720004', '3209356079900015', 'JAHARI', '1972-02-27', 'Cirebon', 'Perempuan', 'O', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000002', 'NORT.000006', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000101', '3209351607880001', '3209356457780001', 'KARMILA', '1988-07-16', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000003', 'NORT.000006', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000102', '3209351125990002', '3209356457780001', 'HENDI', '1999-05-11', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000006', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000103', '3209352509000002', '3209356457780001', 'NENDI', '2000-09-25', 'Cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000006', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000104', '3209350708960001', '3209356640780022', 'ALDO TRIANSYAH', '1996-08-07', 'Cirebon', 'Laki-Laki', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000006', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000105', '3209351212010002', '3209356640780022', 'ALDO FIRMANSYAH', '2001-12-12', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000006', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000106', '3209351101020001', '3209356640780022', 'LENI ANGGRAENI', '2002-01-11', 'Cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000006', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000107', '3209350607870001', '3209357749330001', 'HENDRA', '1987-07-06', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000003', 'NORT.000006', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000108', '3209351108990002', '3209357749330001', 'BUNGA', '1999-08-11', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000006', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000109', '3209350909000001', '3209357749330001', 'NINA LESTARI', '2000-09-09', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000006', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000110', '3209351012060002', '3209357749330001', 'SISKA LUGITA', '2006-12-10', 'Cirebon', 'Perempuan', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000006', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000111', '3209200505770009', '3209356457780001', 'TURIBA', '1977-05-05', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000007', 'PDIK.000004', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000112', '3209355805450001', '3209359332850008', 'YUIDA', '1945-05-08', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000002', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000113', '3209356411920001', '3209359332850008', 'SUGIARTI', '1992-11-14', 'Cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000007', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000114', '3209354510690009', '3209351859220021', 'ETI SUGIARTI', '1969-10-15', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000007', 'PDIK.000003', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000115', '3209201308850002', '3209351859220021', 'FERI EFENDI', '1985-08-13', 'Cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000006', 'PDIK.000005', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000116', '3209204205950006', '3209351859220021', 'NOVA SELASARI', '1995-05-12', 'Cirebon', 'Perempuan', 'B', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000007', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000117', '3209354409930002', '3209352003000001', 'DEVI SISWANI', '1993-09-24', 'Cirebon', 'Perempuan', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000007', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000118', '3209355404000001', '3209350103110004', 'AMELIANTI', '2000-04-14', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000007', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000119', '3209351209930002', '3209350704110007', 'SEPHTIA HARYANTO', '1993-09-12', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000004', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000120', '3209350601650001', '3209350704110007', 'UNTUNG SURAPATI', '1965-01-06', 'Cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000004', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000121', '3209352804100003', '3209350704110007', 'REGAN ARAFA', '2010-04-28', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000001', 'NORT.000007', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000122', '3209355606720002', '3209351910100011', 'ERI', '1972-06-16', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000004', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000123', '3209350704440001', '3209352806100002', 'YUSUF', '1944-04-07', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000002', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000124', '3209354204370001', '3209352806100002', 'KASANAH', '1970-03-20', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000002', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000125', '3209355610750001', '3209352806100002', 'KURNIMAH', '1975-10-06', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000004', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000126', '3209350111710001', '3209354046000004', 'ARIF SANJAYA', '1971-11-01', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000003', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000127', '3209354303690003', '3209354046000004', 'CICI S', '1969-03-13', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000007', 'PDIK.000004', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000128', '3209350105930002', '3209354046000004', 'FAIS SAROJI', '1993-05-01', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000007', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000129', '3209350412020001', '3209352043100003', 'RIZKI', '2002-12-04', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000007', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000130', '3209355202950002', '3209359158300002', 'ERNI SUCI', '1995-02-12', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000007', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000131', '3209352505040002', '3209356423780001', 'AHMAD RIZAL', '2004-05-25', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000007', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000132', '3209351506640005', '3209352229340001', 'SUWARDI', '1964-06-15', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000004', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000133', '3209357009030002', '3209352229340001', 'SRI REZEKI A', '2003-09-10', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000007', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000134', '3209354405070001', '3209352229340001', 'SITI ANISA', '2007-05-24', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000002', 'NORT.000007', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000135', '3209350808330001', '3209351014490002', 'MISKAD', '1933-08-08', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000001', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000136', '3209205010000009', '3209202302061746', 'OVI DWI YANTI', '2000-10-05', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000002', 'NORT.000007', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000137', '3209204803400002', '3209202402069386', 'KASINA', '1940-03-18', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000002', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000138', '3209356408780001', '3209351702100003', 'ENDANG', '1978-08-14', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000004', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000139', '3209352105730001', '3209352010090024', 'SUBANDI', '1973-05-21', 'Cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000003', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000140', '3209352406820003', '3209352010090024', 'AGUNG', '1982-06-24', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000005', 'PDIK.000005', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000141', '3529084107880039', '3209352010090024', 'NUR KHODIJAH', '1988-07-11', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000003', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000142', '3209356505400001', '3209353025560045', 'UMAMAH', '1940-05-15', 'Cirebon', 'Perempuan', 'O', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000003', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000143', '3209354909590001', '3209353025560045', 'NAIMA', '1959-09-19', 'Cirebon', 'Perempuan', 'O', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000004', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000144', '3209355007830004', '3209353025560045', 'SUMINI', '1983-07-25', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000003', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000145', '3209350101680002', '3209353111560045', 'ANDIDI', '1968-01-01', 'Cirebon', 'Laki-Laki', 'AB', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000003', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000146', '3209356308730001', '3209350704090005', 'ANISAH', '1973-08-13', 'Cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000003', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000147', '3209354501670001', '3209352009100016', 'AMINAH', '1967-01-25', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000002', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000148', '3209354202920002', '3209352506080044', 'HALIMAH', '1992-02-12', 'Cirebon', 'Perempuan', 'A', 'AGAM.000001', 'PKRJ.000004', 'PDIK.000003', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup'),
('PDDK.000149', '3209355204030001', '3209352506080044', 'NANDA', '2003-04-22', 'Cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000003', 'NORT.000007', 'Belum Menikah', 'Tetap', 'Hidup'),
('PDDK.000150', '3209350508830002', '3209350593370022', 'MUHAMMAD NURARIFIN', '1983-08-05', 'Cirebon', 'Laki-Laki', 'A', 'AGAM.000001', 'PKRJ.000003', 'PDIK.000004', 'NORT.000007', 'Menikah', 'Tetap', 'Hidup');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk_update`
--

CREATE TABLE `penduduk_update` (
  `id_update` varchar(11) NOT NULL,
  `id_penduduk` varchar(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `gol_darah` varchar(2) NOT NULL,
  `id_agama` varchar(11) NOT NULL,
  `id_pekerjaan` varchar(11) NOT NULL,
  `id_pendidikan` varchar(11) NOT NULL,
  `id_rt` varchar(11) NOT NULL,
  `status_nikah` varchar(20) NOT NULL,
  `status_tinggal` varchar(20) NOT NULL,
  `tgl_perbaikan` date NOT NULL,
  `status_perbaikan` varchar(15) NOT NULL,
  `puskesos` varchar(11) NOT NULL,
  `validator` varchar(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penduduk_update`
--

INSERT INTO `penduduk_update` (`id_update`, `id_penduduk`, `nik`, `no_kk`, `nama`, `tgl_lahir`, `tmp_lahir`, `jenis_kelamin`, `gol_darah`, `id_agama`, `id_pekerjaan`, `id_pendidikan`, `id_rt`, `status_nikah`, `status_tinggal`, `tgl_perbaikan`, `status_perbaikan`, `puskesos`, `validator`, `keterangan`) VALUES
('PVER.000001', 'PDDK.000001', '3209356897980001', '3209356548870001', 'barjo', '1997-08-07', 'cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', '2020-03-14', 'Valid', 'sumarjo', 'admin', ''),
('PVER.000002', 'PDDK.000002', '3209350505960002', '3209354789580032', 'Ahmad Muchyidin', '1996-05-09', 'cirebon', 'Laki-Laki', 'O', 'AGAM.000001', 'PKRJ.000001', 'PDIK.000004', 'NORT.000001', 'Belum Menikah', 'Tetap', '2020-06-19', 'Valid', 'sumarjo', 'admin', ''),
('PVER.000003', 'PDDK.000011', '3209357007780001', '3209354789580032', 'KAPSA', '1978-07-10', 'cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000002', 'NORT.000001', 'Menikah', 'Tetap', '2020-06-29', 'Ditolak', 'sumarjo', 'admin', 'sudah ada data penduduk atas nama KAPSA (data double)'),
('PVER.000004', 'PDDK.000011', '3209357007780001', '3209354789580032', 'KAPSA', '1978-07-10', 'cirebon', 'Perempuan', 'AB', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000002', 'NORT.000002', 'Menikah', 'Tetap', '2020-06-29', 'Valid', 'sumarjo', 'admin', NULL),
('PVER.000005', 'PDDK.000012', '3209358979000001', '3209352203110001', 'FANNY', '2020-06-29', 'cirebon', 'Perempuan', 'O', 'AGAM.000001', 'PKRJ.000002', 'PDIK.000001', 'NORT.000002', 'Belum Menikah', 'Tetap', '2020-06-29', 'Valid', 'sumarjo', 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_kis`
--

CREATE TABLE `pengajuan_kis` (
  `id_pengajuan` varchar(11) NOT NULL,
  `id_penduduk` varchar(11) NOT NULL,
  `askes` varchar(30) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `tgl_konfirmasi` date DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `petugas` varchar(11) NOT NULL,
  `validator` varchar(11) DEFAULT NULL,
  `file_kk` varchar(255) DEFAULT NULL,
  `file_pbb` varchar(255) DEFAULT NULL,
  `file_ktp` varchar(255) DEFAULT NULL,
  `file_listrik` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_kis`
--

INSERT INTO `pengajuan_kis` (`id_pengajuan`, `id_penduduk`, `askes`, `tgl_pengajuan`, `tgl_konfirmasi`, `status`, `petugas`, `validator`, `file_kk`, `file_pbb`, `file_ktp`, `file_listrik`) VALUES
('PKIS.000001', 'PDDK.000001', 'Astapada', '2020-03-14', '2020-03-14', 'Selesai', 'admin', 'admin', NULL, NULL, NULL, NULL),
('PKIS.000002', 'PDDK.000001', 'Astapada', '2020-03-14', '2020-03-14', 'Selesai', 'admin', 'admin', NULL, NULL, NULL, NULL),
('PKIS.000003', 'PDDK.000002', 'Astapada', '2020-06-19', '2020-06-20', 'Selesai', 'sumarjo', 'sumarjo', NULL, NULL, NULL, NULL),
('PKIS.000004', 'PDDK.000002', 'Astapada', '2020-06-20', '2020-06-19', 'Selesai', 'sumarjo', 'sumarjo', NULL, NULL, NULL, NULL),
('PKIS.000005', 'PDDK.000003', 'Astapada', '2020-06-29', '2020-06-29', 'Selesai', 'sumarjo', 'admin', NULL, NULL, NULL, NULL),
('PKIS.000006', 'PDDK.000004', 'Astapada', '2020-06-29', '2020-06-29', 'Selesai', 'sumarjo', 'admin', NULL, NULL, NULL, NULL),
('PKIS.000007', 'PDDK.000002', 'Astapada', '2020-07-03', '2020-07-03', 'Selesai', 'admin', 'admin', NULL, NULL, NULL, NULL),
('PKIS.000008', 'PDDK.000011', 'Astapada', '2020-07-03', '2020-07-03', 'Selesai', 'sumarjo', 'admin', NULL, NULL, NULL, NULL),
('PKIS.000009', 'PDDK.000001', 'Astapada', '2020-07-03', '2020-07-04', 'Selesai', 'sumarjo', 'sumarjo', NULL, NULL, NULL, NULL),
('PKIS.000010', 'PDDK.000003', 'p', '2020-07-03', '2020-07-03', 'Selesai', 'admin', 'admin', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `perbaikan_kis`
--

CREATE TABLE `perbaikan_kis` (
  `id_perbaikan` varchar(11) NOT NULL,
  `id_kis` varchar(11) NOT NULL,
  `id_pengajuan` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perbaikan_kis`
--

INSERT INTO `perbaikan_kis` (`id_perbaikan`, `id_kis`, `id_pengajuan`) VALUES
('FIXK.000001', 'NKIS.000001', 'PKIS.000002'),
('FIXK.000002', 'NKIS.000003', 'PKIS.000004'),
('FIXK.000003', 'NKIS.000004', 'PKIS.000008'),
('FIXK.000004', 'NKIS.000002', 'PKIS.000009');

-- --------------------------------------------------------

--
-- Table structure for table `rt`
--

CREATE TABLE `rt` (
  `id_rt` varchar(11) NOT NULL,
  `id_rw` varchar(11) NOT NULL,
  `rt` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rt`
--

INSERT INTO `rt` (`id_rt`, `id_rw`, `rt`) VALUES
('NORT.000001', 'NORW.000001', '001'),
('NORT.000002', 'NORW.000002', '002'),
('NORT.000003', 'NORW.000003', '003'),
('NORT.000004', 'NORW.000004', '001'),
('NORT.000005', 'NORW.000005', '002'),
('NORT.000006', 'NORW.000006', '003'),
('NORT.000007', 'NORW.000007', '004'),
('NORT.000008', 'NORW.000008', '003'),
('NORT.000009', 'NORW.000001', '002'),
('NORT.000010', 'NORW.000001', '003'),
('NORT.000011', 'NORW.000002', '001'),
('NORT.000012', 'NORW.000002', '003'),
('NORT.000013', 'NORW.000002', '004'),
('NORT.000014', 'NORW.000003', '001'),
('NORT.000015', 'NORW.000003', '002'),
('NORT.000016', 'NORW.000004', '002'),
('NORT.000017', 'NORW.000004', '003'),
('NORT.000018', 'NORW.000005', '001'),
('NORT.000019', 'NORW.000005', '003'),
('NORT.000020', 'NORW.000006', '001'),
('NORT.000021', 'NORW.000006', '002'),
('NORT.000022', 'NORW.000007', '001'),
('NORT.000023', 'NORW.000007', '002'),
('NORT.000024', 'NORW.000007', '003'),
('NORT.000025', 'NORW.000008', '001'),
('NORT.000026', 'NORW.000008', '002');

-- --------------------------------------------------------

--
-- Table structure for table `rw`
--

CREATE TABLE `rw` (
  `id_rw` varchar(11) NOT NULL,
  `id_blok` varchar(11) DEFAULT NULL,
  `rw` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rw`
--

INSERT INTO `rw` (`id_rw`, `id_blok`, `rw`) VALUES
('NORW.000001', 'BLOK.000002', '001'),
('NORW.000002', 'BLOK.000002', '002'),
('NORW.000003', 'BLOK.000001', '003'),
('NORW.000004', 'BLOK.000001', '004'),
('NORW.000005', 'BLOK.000003', '005'),
('NORW.000006', 'BLOK.000003', '006'),
('NORW.000007', 'BLOK.000003', '007'),
('NORW.000008', 'BLOK.000004', '008');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(11) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `level` varchar(15) NOT NULL,
  `user_aktif` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `user_aktif`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Ahmad Muchyidin', 'ahmadmuchyidin@gmail.com', '08981187272', 'admin', 'Y'),
('mahmud', 'e1aa6aa12922a1275c9c8f8e54bac8d6', 'mahmud', 'mahmud@gmail.com', '08976583869', 'puskesos', 'Y'),
('sumarjo', 'ac511bae0d3195c358013e16d3bc44e0', 'Sumarjo', 'sumarjo@gmail.com', '083823511765', 'puskesos', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `blok`
--
ALTER TABLE `blok`
  ADD PRIMARY KEY (`id_blok`);

--
-- Indexes for table `kelahiran`
--
ALTER TABLE `kelahiran`
  ADD PRIMARY KEY (`id_kelahiran`),
  ADD KEY `id_penduduk` (`id_penduduk`),
  ADD KEY `ayah` (`ayah`,`ibu`),
  ADD KEY `ibu` (`ibu`);

--
-- Indexes for table `kematian`
--
ALTER TABLE `kematian`
  ADD PRIMARY KEY (`id_kematian`),
  ADD KEY `id_penduduk` (`id_penduduk`);

--
-- Indexes for table `kis`
--
ALTER TABLE `kis`
  ADD PRIMARY KEY (`id_kis`),
  ADD KEY `id_penduduk` (`id_penduduk`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id_penduduk`),
  ADD KEY `id_agama` (`id_agama`),
  ADD KEY `id_pekerjaan` (`id_pekerjaan`),
  ADD KEY `id_pendidikan` (`id_pendidikan`),
  ADD KEY `id_rt` (`id_rt`);

--
-- Indexes for table `penduduk_update`
--
ALTER TABLE `penduduk_update`
  ADD PRIMARY KEY (`id_update`),
  ADD KEY `id_penduduk` (`id_penduduk`),
  ADD KEY `id_agama` (`id_agama`),
  ADD KEY `id_pekerjaan` (`id_pekerjaan`),
  ADD KEY `id_pendidikan` (`id_pendidikan`),
  ADD KEY `id_rt` (`id_rt`),
  ADD KEY `puskesos` (`puskesos`),
  ADD KEY `validator` (`validator`);

--
-- Indexes for table `pengajuan_kis`
--
ALTER TABLE `pengajuan_kis`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `id_penduduk` (`id_penduduk`),
  ADD KEY `username` (`petugas`);

--
-- Indexes for table `perbaikan_kis`
--
ALTER TABLE `perbaikan_kis`
  ADD PRIMARY KEY (`id_perbaikan`),
  ADD KEY `id_kis` (`id_kis`),
  ADD KEY `id_pengajuan` (`id_pengajuan`);

--
-- Indexes for table `rt`
--
ALTER TABLE `rt`
  ADD PRIMARY KEY (`id_rt`),
  ADD KEY `id_rw` (`id_rw`);

--
-- Indexes for table `rw`
--
ALTER TABLE `rw`
  ADD PRIMARY KEY (`id_rw`),
  ADD KEY `id_blok` (`id_blok`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelahiran`
--
ALTER TABLE `kelahiran`
  ADD CONSTRAINT `kelahiran_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `penduduk` (`id_penduduk`),
  ADD CONSTRAINT `kelahiran_ibfk_2` FOREIGN KEY (`ayah`) REFERENCES `penduduk` (`id_penduduk`),
  ADD CONSTRAINT `kelahiran_ibfk_3` FOREIGN KEY (`ibu`) REFERENCES `penduduk` (`id_penduduk`);

--
-- Constraints for table `kematian`
--
ALTER TABLE `kematian`
  ADD CONSTRAINT `kematian_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `penduduk` (`id_penduduk`);

--
-- Constraints for table `kis`
--
ALTER TABLE `kis`
  ADD CONSTRAINT `kis_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `penduduk` (`id_penduduk`);

--
-- Constraints for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD CONSTRAINT `penduduk_ibfk_1` FOREIGN KEY (`id_pendidikan`) REFERENCES `pendidikan` (`id_pendidikan`),
  ADD CONSTRAINT `penduduk_ibfk_2` FOREIGN KEY (`id_rt`) REFERENCES `rt` (`id_rt`),
  ADD CONSTRAINT `penduduk_ibfk_3` FOREIGN KEY (`id_pekerjaan`) REFERENCES `pekerjaan` (`id_pekerjaan`),
  ADD CONSTRAINT `penduduk_ibfk_4` FOREIGN KEY (`id_agama`) REFERENCES `agama` (`id_agama`);

--
-- Constraints for table `penduduk_update`
--
ALTER TABLE `penduduk_update`
  ADD CONSTRAINT `penduduk_update_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `penduduk` (`id_penduduk`),
  ADD CONSTRAINT `penduduk_update_ibfk_2` FOREIGN KEY (`id_pekerjaan`) REFERENCES `pekerjaan` (`id_pekerjaan`),
  ADD CONSTRAINT `penduduk_update_ibfk_3` FOREIGN KEY (`id_rt`) REFERENCES `rt` (`id_rt`),
  ADD CONSTRAINT `penduduk_update_ibfk_4` FOREIGN KEY (`id_pendidikan`) REFERENCES `pendidikan` (`id_pendidikan`),
  ADD CONSTRAINT `penduduk_update_ibfk_5` FOREIGN KEY (`id_agama`) REFERENCES `agama` (`id_agama`),
  ADD CONSTRAINT `penduduk_update_ibfk_6` FOREIGN KEY (`puskesos`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `penduduk_update_ibfk_7` FOREIGN KEY (`validator`) REFERENCES `users` (`username`);

--
-- Constraints for table `pengajuan_kis`
--
ALTER TABLE `pengajuan_kis`
  ADD CONSTRAINT `pengajuan_kis_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `penduduk` (`id_penduduk`),
  ADD CONSTRAINT `pengajuan_kis_ibfk_2` FOREIGN KEY (`petugas`) REFERENCES `users` (`username`);

--
-- Constraints for table `perbaikan_kis`
--
ALTER TABLE `perbaikan_kis`
  ADD CONSTRAINT `perbaikan_kis_ibfk_1` FOREIGN KEY (`id_kis`) REFERENCES `kis` (`id_kis`),
  ADD CONSTRAINT `perbaikan_kis_ibfk_2` FOREIGN KEY (`id_pengajuan`) REFERENCES `pengajuan_kis` (`id_pengajuan`);

--
-- Constraints for table `rt`
--
ALTER TABLE `rt`
  ADD CONSTRAINT `rt_ibfk_1` FOREIGN KEY (`id_rw`) REFERENCES `rw` (`id_rw`);

--
-- Constraints for table `rw`
--
ALTER TABLE `rw`
  ADD CONSTRAINT `rw_ibfk_1` FOREIGN KEY (`id_blok`) REFERENCES `blok` (`id_blok`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

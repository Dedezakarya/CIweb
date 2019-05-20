-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2019 at 04:06 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtu`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `NIP` varchar(20) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `birthday` datetime(6) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `notelp` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`NIP`, `nama_pegawai`, `jabatan`, `birthday`, `alamat`, `gender`, `username`, `password`, `notelp`, `email`) VALUES
('A123', 'Sutrisno', 'kepsek', '1978-12-02 00:00:00.000000', 'Jl melati no 34 Jember', 'male', 'sutrisno', 'sutris11', '085778909876', 'sutrisno@gmail.com'),
('H123', 'Hermawan', 'staff', '1897-11-11 00:00:00.000000', 'Jl teratai no 11 Jember', 'male', 'hermawan', 'hermawan11', '085667778899', 'hermawan11@gmail.com'),
('M256', 'andari', 'staff', '1977-05-05 00:00:00.000000', 'Jl cenderawasih No.11 Jember', 'female', 'andari', 'maudy', '081234675999', 'andarimaudy@gmail.com'),
('N122', 'Sutrisno', 'staff', '1888-10-10 00:00:00.000000', 'Jl Anggrek No.12 Jember', 'male', 'sutris', 'sutris88', '085664123456', 'sutrisno88@gmail.com'),
('T123', 'Vivin', 'staff', '1987-12-12 00:00:00.000000', 'Jl mawar No.90 Jember', 'female', 'vivin', 'vivin123', '085712344321', 'vivin12@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_datasiswa`
--

CREATE TABLE `tbl_datasiswa` (
  `NIS` varchar(10) NOT NULL,
  `id_kelas` varchar(10) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` datetime(6) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `anak_ke` varchar(10) NOT NULL,
  `alamat_siswa` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `telepon` varchar(12) NOT NULL,
  `sekolah_asal` varchar(100) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `alamat_ortu` varchar(100) NOT NULL,
  `telepon_ortu` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `nama_wali` varchar(100) NOT NULL,
  `alamat_wali` varchar(100) NOT NULL,
  `telepon_wali` varchar(100) NOT NULL,
  `pekerjaan_wali` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_datasiswa`
--

INSERT INTO `tbl_datasiswa` (`NIS`, `id_kelas`, `nama_siswa`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `anak_ke`, `alamat_siswa`, `kota`, `telepon`, `sekolah_asal`, `nama_ayah`, `nama_ibu`, `alamat_ortu`, `telepon_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `nama_wali`, `alamat_wali`, `telepon_wali`, `pekerjaan_wali`) VALUES
('2000456789', 'a1', 'Aulia Putri', 'Jember', '1997-07-17 00:00:00.000000', 'perempuan', 'islam', '1', 'Jl. Melati No.90', 'Jember', '089976562343', 'SMPN 2 Jember', 'Riko', 'Diyah', 'Jl. Melati No.90', '082134566547', 'swasta', 'buruh', '', '', '', ''),
('2001156789', 'b1', 'valda', 'jember', '2000-09-11 00:00:00.000000', 'perempuan', 'islam', '2', 'Jl pattimura No.28', 'Jember', '081231994355', 'SMPN 3 Jember', 'diyan', 'rita', 'Jl pattimura No.28 Jember', '085649123987', 'PNS', 'Ibu Rumah tangga', '', '', '', ''),
('2002111889', 'a3', 'Tiara', 'Jember', '2001-05-12 00:00:00.000000', 'perempuan', 'islam', '3', 'Jl pattimura No.14', 'Jember', '081113456133', 'SMPN 3 Jember', 'Dika', 'Ritasari', 'Jl pattimura No.14 Jember', '081234556788', 'PNS', 'buruh', '', '', '', ''),
('2003456789', 'b3', 'tika', 'bondowoso', '2000-10-02 00:00:00.000000', 'perempuan', 'islam', '1', 'Jl teratai No.11 ', 'Bondowoso', '085667893456', 'SMPN 1 Bondowoso', 'saleh', 'tata', 'Jl teratai No.11 Bondowoso', '082234556777', 'swasta', 'Ibu Rumah tangga', '', '', '', ''),
('2009789065', 'a2', 'Reza Putra', 'Lumajang', '1998-05-14 00:00:00.000000', 'laki-laki', 'islam', '2', 'Jl anggrek no.98', 'Lumajang', '085778908765', 'SMPN 2 Lumajang', 'mulyadi', 'siti', 'Jl angrek No.98 Lumajang', '085678909876', 'buruh', 'buruh', 'welas', 'Jl mawar no 85 Jember', '082167842346', 'swasta');

--
-- Triggers `tbl_datasiswa`
--
DELIMITER $$
CREATE TRIGGER `Block_NIS` BEFORE UPDATE ON `tbl_datasiswa` FOR EACH ROW begin
set new.NIS=OLD.NIS;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updatenohp` AFTER UPDATE ON `tbl_datasiswa` FOR EACH ROW begin
update tbl_datasiswa set telepon =OLD.telepon=new.telepon;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenispembayaran`
--

CREATE TABLE `tbl_jenispembayaran` (
  `id_jenispembayaran` varchar(10) NOT NULL,
  `nama_pembayaran` varchar(100) NOT NULL,
  `nominal` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jenispembayaran`
--

INSERT INTO `tbl_jenispembayaran` (`id_jenispembayaran`, `nama_pembayaran`, `nominal`) VALUES
('g1', 'uang gedung', 2500000),
('L1', 'LKS kelas x', 300000),
('L2', 'LKS kelas xi', 450000),
('L3', 'LKS kelas xii', 600000),
('p1', 'paket kelas x', 1000000),
('p2', 'paket kelas xi', 1100000),
('p3', 'paket kelas xii', 1200000),
('s1', 'spp kelas x', 1000000),
('s2', 'spp kelas xi', 1400000),
('s3', 'spp kelas xii', 1600000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` varchar(10) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `nama_kelas`) VALUES
('a1', 'X IPA 1'),
('a2', 'X IPA 2'),
('a3', 'X IPA 3'),
('b1', 'X IPS 1'),
('b2', 'X IPS 2'),
('b3', 'X IPS 3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lks`
--

CREATE TABLE `tbl_lks` (
  `id_lks` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah_barang` int(100) NOT NULL,
  `tanggal_datang` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_lks`
--

INSERT INTO `tbl_lks` (`id_lks`, `nama_barang`, `jumlah_barang`, `tanggal_datang`) VALUES
('L01', 'Matematika', 300, '2018-12-05'),
('L02', 'Kimia', 299, '2018-12-05'),
('L03', 'Fisika', 8000, '2018-12-07'),
('L04', 'Biologi', 8000, '2018-12-07'),
('L05', 'FISIKA', 10, '2019-01-02'),
('lks4', 'bahasa indonesia', 100000, '2019-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paket`
--

CREATE TABLE `tbl_paket` (
  `id_paket` varchar(10) NOT NULL,
  `nama_barang` varchar(40) NOT NULL,
  `jumlah_barang` int(40) NOT NULL,
  `tanggal_datang` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_paket`
--

INSERT INTO `tbl_paket` (`id_paket`, `nama_barang`, `jumlah_barang`, `tanggal_datang`) VALUES
('P01', 'Fisika', 300, '2018-12-28'),
('P02', 'Biologi', 300, '2018-12-28'),
('P03', 'Bahasa Indonesia', 45000, '2018-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` varchar(10) NOT NULL,
  `NIS` varchar(10) NOT NULL,
  `id_lks` varchar(10) DEFAULT NULL,
  `id_paket` varchar(10) DEFAULT NULL,
  `NIP` varchar(20) NOT NULL,
  `id_jenispembayaran` varchar(10) NOT NULL,
  `nominaltransaksi` int(100) NOT NULL,
  `tanggal_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `NIS`, `id_lks`, `id_paket`, `NIP`, `id_jenispembayaran`, `nominaltransaksi`, `tanggal_transaksi`) VALUES
('201', '2000456789', 'L01', NULL, 'A123', 'L1', 100000, '2019-01-28'),
('202', '2001156789', 'L02', NULL, 'H123', 'L2', 20000, '2019-01-15'),
('203', '2002111889', NULL, 'P02', 'M256', 'L3', 20000, '2019-01-09');

--
-- Triggers `tbl_transaksi`
--
DELIMITER $$
CREATE TRIGGER `updatebarang` AFTER INSERT ON `tbl_transaksi` FOR EACH ROW begin
update tbl_lks set jumlah_barang = (jumlah_barang-1) where id_lks=new.id_lks;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `tbl_datasiswa`
--
ALTER TABLE `tbl_datasiswa`
  ADD PRIMARY KEY (`NIS`),
  ADD UNIQUE KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `tbl_jenispembayaran`
--
ALTER TABLE `tbl_jenispembayaran`
  ADD PRIMARY KEY (`id_jenispembayaran`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tbl_lks`
--
ALTER TABLE `tbl_lks`
  ADD PRIMARY KEY (`id_lks`);

--
-- Indexes for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD UNIQUE KEY `NIS` (`NIS`),
  ADD UNIQUE KEY `NIP` (`NIP`),
  ADD UNIQUE KEY `id_jenispembayaran` (`id_jenispembayaran`),
  ADD UNIQUE KEY `id_barang` (`id_lks`),
  ADD UNIQUE KEY `id_paket` (`id_paket`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_datasiswa`
--
ALTER TABLE `tbl_datasiswa`
  ADD CONSTRAINT `tbl_datasiswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `tbl_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD CONSTRAINT `tbl_transaksi_ibfk_1` FOREIGN KEY (`NIS`) REFERENCES `tbl_datasiswa` (`NIS`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_transaksi_ibfk_2` FOREIGN KEY (`id_lks`) REFERENCES `tbl_lks` (`id_lks`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_transaksi_ibfk_3` FOREIGN KEY (`id_jenispembayaran`) REFERENCES `tbl_jenispembayaran` (`id_jenispembayaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_transaksi_ibfk_4` FOREIGN KEY (`NIP`) REFERENCES `tbl_admin` (`NIP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_transaksi_ibfk_5` FOREIGN KEY (`id_paket`) REFERENCES `tbl_paket` (`id_paket`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 02:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `id_destinasi` int(11) NOT NULL,
  `nama_lokasi` char(100) NOT NULL,
  `harga_tiket` varchar(20) NOT NULL,
  `kabupaten` char(100) NOT NULL,
  `kode_wisata` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`id_destinasi`, `nama_lokasi`, `harga_tiket`, `kabupaten`, `kode_wisata`) VALUES
(1, 'coban sewu', 'Rp.25.000,00', 'malang', '010001'),
(2, 'pantai sendangbiru', 'Rp.20.000,00', 'malang', '010002'),
(3, 'pantai 3 warna', 'Rp.25.000,00', 'malang', '010003'),
(4, 'puncak B29', 'Rp.20.000,00', 'lumajang', '020001'),
(5, 'pantai payangan', 'Rp.20.000,00', 'jember', '030001'),
(6, 'taman nasional baluran', 'Rp.35.000,00', 'situbondo', '040001'),
(7, 'pantai teluk hijau', 'Rp.25.000,00', 'banyuwangi', '050001'),
(8, 'pantai pulau merah', 'Rp.25.000,00', 'banyuwangi', '050002'),
(9, 'jawatan benculuk', 'Rp.20.000,00', 'banyuwangi', '050003'),
(10, 'kawah ijen', 'Rp.25.000,00', 'banyuwangi', '050004'),
(11, 'waduk bajul mati', 'Rp.20.000,00', 'banyuwangi', '050005'),
(12, 'pantai plengkung', 'Rp.20.000,00', 'banyuwangi', '050006');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `email`, `password`) VALUES
(1, '', ''),
(2, 'sama@gmail.com', '123456'),
(3, 'salsa@gmail.com', '123456'),
(4, 'arfand@gmail.com', '123456'),
(5, 'we@gmail.com', '123456'),
(6, 'hmhmho@gmail.com', '123456'),
(7, 'iya@gmail.com', '123456'),
(8, 'salma@gmail.com', '123456'),
(14, 'satu@gmail.com', '123456'),
(15, 'rifqaaliyya@gmai.com', '12345'),
(16, '', ''),
(17, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` char(100) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email_pelanggan`) VALUES
(1, 'deni eka', 'deniajij24@gmail.com'),
(2, 'roby ramadhan', 'robby44@gmail.com'),
(3, 'fadly', 'fadlyaja11@gmail.com'),
(4, 'nandya', 'nandyaaura@gmail.com'),
(5, 'rotul', 'rodhotuljannah114@gmail.com'),
(6, 'rifqa', 'rifqaaaa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_tiket`
--

CREATE TABLE `pemesanan_tiket` (
  `id_pemesanan` int(11) NOT NULL,
  `nama_pelanggan` char(100) NOT NULL,
  `kode_wisata` varchar(6) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `jumlah_tiket` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan_tiket`
--

INSERT INTO `pemesanan_tiket` (`id_pemesanan`, `nama_pelanggan`, `kode_wisata`, `email_pelanggan`, `jumlah_tiket`) VALUES
(1, 'deni eka', '01001', 'deniajijr24@gmail.com', '2'),
(2, 'nandya', '050002', 'nandyaaura@gmail.com', '4'),
(3, 'rotul', '030001', 'rodhotuljannah114@gmail.com', '1'),
(4, 'rifqa', '010001', 'rifqaaliya@gmail.com', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`id_destinasi`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pemesanan_tiket`
--
ALTER TABLE `pemesanan_tiket`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `id_destinasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pemesanan_tiket`
--
ALTER TABLE `pemesanan_tiket`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

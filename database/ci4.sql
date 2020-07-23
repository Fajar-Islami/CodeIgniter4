-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2020 at 06:29 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Hongkong', 'hongkong', 'fulan', 'jakarta', 'hongkong.jpg', NULL, NULL),
(2, 'Slogan Prancis', 'slogan-prancis', 'fulana gramed', 'gramedia', 'prancis.png', NULL, '2020-07-08 04:38:01'),
(12, 'qwerty qwq', 'qwerty-qwq', 'aaa', 'aaa', '1594194436_81d0c721e46ba77cf355.png', '2020-07-08 02:47:04', '2020-07-08 04:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-07-15-012116', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1594777134, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Summer Bruen', '80109 Schiller Rue\nNew Urbanton, PA 07974', '2020-07-14 23:27:02', '2020-07-14 23:27:02'),
(2, 'Rashawn Boehm', '6554 Gutmann Fields Apt. 615\nCielostad, IN 68817', '1975-07-13 20:12:46', '2020-07-14 23:30:16'),
(3, '西之園 充', '1006943  愛媛県山岸市中央区若松町井高8-1-9', '2006-09-24 02:47:08', '2020-07-14 23:33:26'),
(4, 'Martana Budiyanto S.Gz', 'Dk. Jamika No. 465, Surabaya 62920, KepR', '1997-10-08 14:32:12', '2020-07-14 23:34:06'),
(5, 'Rahmi Wahyuni S.Pt', 'Jr. Gajah Mada No. 153, Cilegon 60692, NTB', '1991-07-19 23:59:58', '2020-07-14 23:37:03'),
(6, 'Lala Putri Safitri S.H.', 'Psr. Imam Bonjol No. 743, Administrasi Jakarta Selatan 63034, SumUt', '1985-08-28 15:47:28', '2020-07-14 23:37:04'),
(7, 'Mila Nilam Yuniar S.Ked', 'Gg. Basoka Raya No. 704, Payakumbuh 50840, Bengkulu', '1994-04-26 03:35:45', '2020-07-14 23:37:04'),
(8, 'Zelda Safitri', 'Psr. Elang No. 75, Malang 13647, DIY', '1982-04-05 02:30:36', '2020-07-14 23:37:04'),
(9, 'Enteng Sihombing', 'Jr. Taman No. 414, Administrasi Jakarta Selatan 32343, KalSel', '2011-10-02 04:33:44', '2020-07-14 23:37:04'),
(10, 'Gamani Maryadi S.Farm', 'Jr. Bakau Griya Utama No. 744, Blitar 34589, Jambi', '2011-10-29 15:19:28', '2020-07-14 23:37:04'),
(11, 'Soleh Wacana', 'Dk. Pasirkoja No. 8, Tarakan 78445, KalUt', '1981-05-24 20:30:37', '2020-07-14 23:37:05'),
(12, 'Betania Suryatmi', 'Psr. Bambu No. 513, Tual 38306, Bengkulu', '1985-03-08 00:01:53', '2020-07-14 23:37:05'),
(13, 'Humaira Yolanda', 'Ki. Teuku Umar No. 786, Manado 93401, Gorontalo', '1970-10-20 19:43:16', '2020-07-14 23:37:05'),
(14, 'Martani Caturangga Mandala', 'Ki. Dewi Sartika No. 839, Padangpanjang 53002, Lampung', '1995-08-25 00:10:00', '2020-07-14 23:37:05'),
(15, 'Natalia Hariyah S.Ked', 'Ki. Bakau Griya Utama No. 506, Sawahlunto 46720, SulBar', '1974-12-10 18:56:27', '2020-07-14 23:37:05'),
(16, 'Mulyono Kusumo', 'Jr. Agus Salim No. 348, Pasuruan 52946, Bengkulu', '1978-03-09 06:59:52', '2020-07-14 23:37:05'),
(17, 'Uchita Lailasari', 'Ki. Gambang No. 651, Madiun 67364, SulSel', '1976-04-09 09:09:08', '2020-07-14 23:37:05'),
(18, 'Safina Namaga', 'Gg. Bak Mandi No. 301, Parepare 52556, KalTim', '1985-01-26 01:13:15', '2020-07-14 23:37:06'),
(19, 'Sabrina Utami', 'Kpg. Ekonomi No. 716, Tasikmalaya 74726, BaBel', '2006-10-01 02:02:57', '2020-07-14 23:37:06'),
(20, 'Damar Wijaya', 'Dk. Dipatiukur No. 802, Pekanbaru 60443, JaTeng', '2018-07-20 09:20:15', '2020-07-14 23:37:06'),
(21, 'Taufan Kusumo', 'Dk. Baranang No. 848, Surabaya 84028, Lampung', '2012-02-14 01:14:29', '2020-07-14 23:37:06'),
(22, 'Wardaya Mulyanto Kuswoyo', 'Kpg. Kalimalang No. 429, Pasuruan 92996, SumBar', '2005-05-05 02:37:04', '2020-07-14 23:37:06'),
(23, 'Nadine Farida M.TI.', 'Kpg. Baan No. 726, Administrasi Jakarta Barat 71300, Riau', '2017-06-02 22:28:14', '2020-07-14 23:37:06'),
(24, 'Dalimin Kardi Zulkarnain', 'Kpg. Sutoyo No. 854, Cirebon 72471, SulSel', '1997-02-07 00:46:42', '2020-07-14 23:37:07'),
(25, 'Limar Jaiman Tampubolon', 'Ds. Ters. Pasir Koja No. 805, Bukittinggi 16861, Bengkulu', '1997-06-24 19:36:50', '2020-07-14 23:37:07'),
(26, 'Marsito Nugroho', 'Ki. Moch. Toha No. 395, Cilegon 16005, Aceh', '2000-03-06 05:08:50', '2020-07-14 23:37:07'),
(27, 'Rahmi Widiastuti', 'Kpg. Abdul. Muis No. 440, Tebing Tinggi 55176, PapBar', '2019-10-15 22:29:19', '2020-07-14 23:37:07'),
(28, 'Joko Harsana Natsir', 'Ki. W.R. Supratman No. 25, Batu 42512, KepR', '1977-06-27 18:34:04', '2020-07-14 23:37:07'),
(29, 'Keisha Ciaobella Zulaika', 'Gg. Pasirkoja No. 916, Madiun 15546, NTT', '1995-09-01 22:09:46', '2020-07-14 23:37:07'),
(30, 'Kayla Hasanah', 'Jr. Padma No. 921, Blitar 33320, JaTim', '1992-02-13 08:04:32', '2020-07-14 23:37:07'),
(31, 'Silvia Lestari', 'Ds. Moch. Yamin No. 350, Bandung 71374, Gorontalo', '2005-11-05 08:03:03', '2020-07-14 23:37:08'),
(32, 'Cinta Ade Mulyani', 'Ds. Bahagia No. 546, Sibolga 87392, JaBar', '1983-03-09 11:05:20', '2020-07-14 23:37:08'),
(33, 'Kasim Wijaya', 'Jr. Babadan No. 177, Cimahi 33389, Maluku', '2006-09-24 10:23:56', '2020-07-14 23:37:08'),
(34, 'Asman Sinaga', 'Ki. Ikan No. 12, Makassar 54659, JaBar', '1980-08-07 15:13:07', '2020-07-14 23:37:08'),
(35, 'Raden Gunarto S.E.I', 'Kpg. Dago No. 782, Bima 14593, SumUt', '1974-09-11 17:43:38', '2020-07-14 23:37:08'),
(36, 'Kusuma Suryono S.I.Kom', 'Kpg. Rajawali Timur No. 951, Sorong 51857, KalUt', '2008-07-23 20:58:24', '2020-07-14 23:37:08'),
(37, 'Halima Kusmawati', 'Jr. Padma No. 168, Pekalongan 80254, NTT', '2000-11-22 21:03:55', '2020-07-14 23:37:08'),
(38, 'Raisa Nuraini S.Gz', 'Jln. Aceh No. 478, Semarang 30814, SulBar', '2019-03-24 08:57:50', '2020-07-14 23:37:09'),
(39, 'Kasim Mahendra', 'Jr. Madiun No. 434, Serang 17317, KalUt', '1994-12-09 08:35:42', '2020-07-14 23:37:09'),
(40, 'Yuliana Fujiati', 'Ds. Abdul Rahmat No. 993, Banjarbaru 55124, SulBar', '1970-10-28 09:58:58', '2020-07-14 23:37:09'),
(41, 'Gamanto Gara Mansur', 'Ki. Ciumbuleuit No. 166, Administrasi Jakarta Timur 13451, KalTim', '1987-01-23 22:42:09', '2020-07-14 23:37:09'),
(42, 'Talia Rahayu', 'Kpg. Jend. A. Yani No. 758, Administrasi Jakarta Pusat 35534, Banten', '2019-05-30 13:35:26', '2020-07-14 23:37:09'),
(43, 'Ganda Siregar', 'Gg. Baranang No. 939, Ternate 83065, SulTra', '2015-10-29 13:22:36', '2020-07-14 23:37:09'),
(44, 'Hesti Dinda Farida S.Ked', 'Jln. Babadak No. 369, Tebing Tinggi 37878, Aceh', '1976-04-19 23:55:39', '2020-07-14 23:37:09'),
(45, 'Ifa Wulandari S.Sos', 'Gg. Mulyadi No. 852, Manado 52194, Bengkulu', '2008-08-29 14:19:19', '2020-07-14 23:37:10'),
(46, 'Taufan Dalimin Sitompul', 'Dk. Lada No. 773, Palu 94216, JaTim', '1996-06-18 10:37:14', '2020-07-14 23:37:10'),
(47, 'Alika Haryanti', 'Ds. Basuki No. 300, Tomohon 33517, SulTeng', '2012-08-08 03:48:38', '2020-07-14 23:37:10'),
(48, 'Bala Jailani', 'Psr. Basuki Rahmat  No. 243, Balikpapan 64949, SumUt', '1982-08-12 12:17:46', '2020-07-14 23:37:10'),
(49, 'Faizah Ana Pratiwi', 'Ki. Bak Air No. 280, Batu 56563, Lampung', '2018-09-05 13:24:23', '2020-07-14 23:37:10'),
(50, 'Muni Cahyadi Saptono', 'Dk. Muwardi No. 117, Salatiga 24047, MalUt', '2005-05-14 08:46:05', '2020-07-14 23:37:10'),
(51, 'Paris Yulianti S.IP', 'Dk. Bara No. 198, Parepare 44831, Maluku', '1993-07-10 12:32:54', '2020-07-14 23:37:10'),
(52, 'Alambana Saptono', 'Kpg. Salak No. 407, Parepare 58455, BaBel', '1993-02-09 22:29:05', '2020-07-14 23:37:10'),
(53, 'Dadap Darmana Hutagalung', 'Kpg. Abdul Muis No. 274, Administrasi Jakarta Pusat 22011, SumSel', '1990-08-01 19:31:59', '2020-07-14 23:37:10'),
(54, 'Taufik Cahyadi Sirait S.Sos', 'Jln. Bak Air No. 994, Sukabumi 16999, NTB', '1990-09-22 20:01:24', '2020-07-14 23:37:10'),
(55, 'Slamet Putra', 'Psr. Kyai Gede No. 599, Pematangsiantar 91925, SulSel', '1994-12-08 11:04:13', '2020-07-14 23:37:10'),
(56, 'Hadi Tampubolon', 'Ds. Baladewa No. 985, Pagar Alam 84808, SumUt', '1976-11-29 07:26:20', '2020-07-14 23:37:11'),
(57, 'Eli Suryatmi', 'Psr. Achmad No. 421, Tegal 70842, BaBel', '2020-02-08 23:12:06', '2020-07-14 23:37:11'),
(58, 'Martana Situmorang', 'Kpg. Bakit  No. 140, Singkawang 90556, SulTeng', '1990-06-07 07:32:03', '2020-07-14 23:37:11'),
(59, 'Puput Yolanda', 'Kpg. Baya Kali Bungur No. 977, Makassar 80240, Aceh', '2012-08-03 18:39:33', '2020-07-14 23:37:11'),
(60, 'Purwanto Marbun', 'Ki. Setia Budi No. 300, Tual 87613, SulUt', '2005-02-02 17:09:51', '2020-07-14 23:37:11'),
(61, 'Carub Embuh Haryanto S.I.Kom', 'Gg. B.Agam Dlm No. 182, Kediri 26996, JaBar', '1988-09-17 05:35:43', '2020-07-14 23:37:11'),
(62, 'Hamima Yessi Handayani M.Farm', 'Psr. Baladewa No. 159, Padangsidempuan 80110, PapBar', '1998-12-14 15:39:04', '2020-07-14 23:37:11'),
(63, 'Galih Utama', 'Psr. Sudiarto No. 422, Padang 80705, Jambi', '2012-07-27 08:39:21', '2020-07-14 23:37:11'),
(64, 'Emas Balangga Siregar S.Pd', 'Gg. Kebangkitan Nasional No. 519, Mojokerto 86346, SumBar', '2000-08-03 10:42:39', '2020-07-14 23:37:11'),
(65, 'Warsita Halim', 'Ki. Kalimantan No. 570, Sibolga 40609, SumUt', '1975-11-16 07:17:52', '2020-07-14 23:37:12'),
(66, 'Garda Hutasoit M.TI.', 'Ki. Sumpah Pemuda No. 638, Sungai Penuh 42141, SumSel', '2000-03-08 05:56:10', '2020-07-14 23:37:12'),
(67, 'Rahmi Carla Prastuti S.E.', 'Psr. Moch. Toha No. 522, Tanjungbalai 82242, Gorontalo', '2002-06-02 10:57:16', '2020-07-14 23:37:12'),
(68, 'Paiman Wacana', 'Psr. Diponegoro No. 306, Tual 46019, Riau', '2018-08-28 06:05:41', '2020-07-14 23:37:12'),
(69, 'Bakiono Natsir', 'Kpg. Juanda No. 681, Cirebon 29864, KalTeng', '2019-03-21 22:15:08', '2020-07-14 23:37:13'),
(70, 'Irma Mulyani S.IP', 'Jr. Jagakarsa No. 106, Jayapura 93851, PapBar', '2016-03-29 23:25:31', '2020-07-14 23:37:13'),
(71, 'Cahyono Satya Gunarto S.T.', 'Jln. Supomo No. 343, Binjai 70695, SumUt', '1995-04-14 03:23:25', '2020-07-14 23:37:13'),
(72, 'Intan Sadina Lailasari', 'Gg. Gedebage Selatan No. 773, Bitung 36697, NTT', '2019-06-20 14:28:07', '2020-07-14 23:37:14'),
(73, 'Karman Jatmiko Situmorang S.IP', 'Psr. Baranang Siang Indah No. 880, Bima 53152, Jambi', '1982-05-27 18:18:04', '2020-07-14 23:37:14'),
(74, 'Nardi Lamar Kuswoyo', 'Jln. Salak No. 552, Batam 71600, Riau', '2018-12-18 05:01:46', '2020-07-14 23:37:14'),
(75, 'Titi Yulianti', 'Jln. Banal No. 499, Pekanbaru 84419, KalTeng', '1979-07-17 10:10:18', '2020-07-14 23:37:14'),
(76, 'Gada Megantara', 'Ki. Bahagia No. 592, Metro 71892, Riau', '1992-04-14 07:14:12', '2020-07-14 23:37:14'),
(77, 'Maya Kusmawati', 'Jln. Baja No. 264, Gorontalo 84477, NTB', '1993-12-03 22:16:54', '2020-07-14 23:37:14'),
(78, 'Elisa Susanti', 'Gg. Barat No. 331, Tanjung Pinang 21644, Bali', '1983-05-08 06:56:23', '2020-07-14 23:37:14'),
(79, 'Qori Hana Oktaviani S.IP', 'Ki. Sadang Serang No. 198, Palopo 44743, JaTim', '1973-04-24 13:02:15', '2020-07-14 23:37:14'),
(80, 'Nasim Virman Samosir', 'Psr. Bahagia No. 416, Langsa 44760, SumBar', '1991-10-10 21:47:59', '2020-07-14 23:37:14'),
(81, 'Raisa Laksmiwati S.I.Kom', 'Psr. Kebonjati No. 624, Bandung 96010, DKI', '1977-12-12 06:33:25', '2020-07-14 23:37:14'),
(82, 'Rafid Maryadi', 'Ki. Reksoninten No. 670, Ternate 77486, SumBar', '2017-04-13 20:47:45', '2020-07-14 23:37:14'),
(83, 'Cawisono Respati Rajata M.Ak', 'Gg. Muwardi No. 73, Bandar Lampung 73090, KalSel', '2008-10-01 23:31:23', '2020-07-14 23:37:15'),
(84, 'Oni Namaga S.Pd', 'Jr. Nakula No. 817, Banjarmasin 46435, Maluku', '1975-08-24 17:13:36', '2020-07-14 23:37:15'),
(85, 'Elisa Farida', 'Jr. Industri No. 515, Tanjungbalai 87448, Aceh', '1983-12-02 05:25:40', '2020-07-14 23:37:15'),
(86, 'Danang Bagus Maryadi', 'Jln. Baladewa No. 458, Bengkulu 43160, DKI', '1999-05-27 11:55:00', '2020-07-14 23:37:15'),
(87, 'Genta Uli Yuliarti', 'Ds. Baya Kali Bungur No. 799, Administrasi Jakarta Pusat 37329, Bengkulu', '1983-06-18 00:25:32', '2020-07-14 23:37:15'),
(88, 'Cahyadi Wibowo', 'Ki. Achmad Yani No. 146, Bengkulu 87263, NTB', '1975-05-04 00:10:39', '2020-07-14 23:37:15'),
(89, 'Putri Padma Nasyidah S.Kom', 'Kpg. K.H. Maskur No. 498, Jambi 93479, SumBar', '2014-04-18 04:47:31', '2020-07-14 23:37:15'),
(90, 'Fitriani Michelle Padmasari', 'Jln. Pasirkoja No. 163, Administrasi Jakarta Timur 49478, SulSel', '1986-08-17 08:59:36', '2020-07-14 23:37:15'),
(91, 'Mala Widiastuti', 'Ds. Nangka No. 619, Tanjung Pinang 87846, Riau', '1982-07-28 08:06:22', '2020-07-14 23:37:15'),
(92, 'Mahfud Pangestu', 'Jln. Adisucipto No. 974, Payakumbuh 93384, Bali', '2002-11-21 16:28:14', '2020-07-14 23:37:16'),
(93, 'Jarwi Kasusra Maheswara', 'Gg. Bappenas No. 809, Tebing Tinggi 40236, SumSel', '1985-01-23 14:32:26', '2020-07-14 23:37:16'),
(94, 'Fathonah Sudiati', 'Jln. Dipenogoro No. 623, Padang 16192, Bengkulu', '1991-04-30 17:49:19', '2020-07-14 23:37:16'),
(95, 'Raisa Laksmiwati', 'Ds. Jayawijaya No. 361, Magelang 64570, SulBar', '2003-01-21 08:58:37', '2020-07-14 23:37:16'),
(96, 'Amalia Puspita', 'Kpg. Bagis Utama No. 713, Semarang 41842, KalUt', '1979-06-27 21:11:26', '2020-07-14 23:37:16'),
(97, 'Bakianto Adiarja Wasita S.Sos', 'Ds. Suharso No. 536, Sorong 99080, Banten', '2013-04-14 19:34:55', '2020-07-14 23:37:16'),
(98, 'Tri Wibisono', 'Jr. Nanas No. 365, Batu 94814, Bengkulu', '1985-10-16 12:23:42', '2020-07-14 23:37:16'),
(99, 'Panca Zulkarnain', 'Kpg. Tambak No. 781, Tebing Tinggi 87889, NTT', '1998-04-18 01:57:59', '2020-07-14 23:37:16'),
(100, 'Shania Zulaika', 'Ds. Bagis Utama No. 851, Kendari 30824, SumSel', '1994-02-01 15:32:53', '2020-07-14 23:37:16'),
(101, 'Lili Hastuti', 'Kpg. Untung Suropati No. 626, Malang 48464, KalUt', '1978-02-07 18:12:26', '2020-07-14 23:37:16'),
(102, 'Kadir Adhiarja Hidayat M.Kom.', 'Ki. Pasteur No. 860, Sorong 27929, BaBel', '2017-05-08 14:48:03', '2020-07-14 23:37:16'),
(103, 'Yahya Hardiansyah', 'Psr. Sudirman No. 50, Langsa 53773, PapBar', '2016-12-14 11:28:11', '2020-07-14 23:37:17'),
(104, 'Pranata Siregar', 'Ki. Sunaryo No. 399, Tebing Tinggi 88365, KalUt', '1997-09-23 23:21:29', '2020-07-14 23:37:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

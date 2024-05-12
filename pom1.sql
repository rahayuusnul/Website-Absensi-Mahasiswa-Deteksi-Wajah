-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 12, 2024 at 08:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pom1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `username` char(100) NOT NULL,
  `password` char(100) NOT NULL,
  `level` enum('admin','user') NOT NULL,
  `nama` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `Last_Login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `level`, `nama`, `foto`, `Last_Login`) VALUES
(1, '191110073', '20111999', 'user', 'Sri Rahayu Usnul Khotimah', 'ayu.jpeg', '2024-05-12 12:41:12'),
(2, '191110023', 'valdy', 'user', 'Desiderius Valdino Hemi', 'user.jpg', '2024-05-12 12:41:12'),
(3, '191110034', 'juanta', 'user', 'Juanta Elieser Ginting', 'user.jpg', '2024-05-12 12:41:12'),
(4, '191110016', 'lamhot', 'user', 'Lamhot Daniel Simorangkir', 'user.jpg', '2024-05-12 12:41:12'),
(5, '191110106', 'ambrosius', 'user', 'Ambrosius Hutagaol', 'user.jpg', '2024-05-12 12:41:12'),
(6, '191110189', 'regi', 'user', 'Rigiar Aguero', 'user.jpg', '2024-05-12 12:41:12'),
(7, '191110051', 'hartawan', 'user', 'Hartawan Martin Sianturi', 'user.jpg', '2024-05-12 12:41:12'),
(8, '191110120', 'nafa', 'user', 'Nafa Anjelia Faradise', 'user.jpg', '2024-05-12 12:41:12'),
(9, '191110107', 'wiwinda', 'user', 'Wiwinda Aulia', 'user.jpg', '2024-05-12 12:41:12'),
(10, '191110114', 'azzah', 'admin', 'Azzah Faaizah', 'user.jpg', '2024-05-12 12:41:12'),
(14, '0509047901', 'imam', 'admin', 'Imam Suharjo, S.T., M.Eng.', 'imam.jpg', '2024-05-12 12:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `faces`
--

CREATE TABLE `faces` (
  `id` int(3) NOT NULL,
  `newuserid` char(15) NOT NULL,
  `newusername` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faces`
--

INSERT INTO `faces` (`id`, `newuserid`, `newusername`) VALUES
(1, '191110192', 'Amrul Letsoin'),
(2, '191110114', 'Azzah Faaizah'),
(3, '191110061', 'Efita Sari'),
(4, '191110020', 'Euvemia Safitri Mene'),
(5, '191110034', 'Juanta Elieser Ginting'),
(6, '191110189', 'Rigiar Aguero'),
(7, '191110006', 'Rizat Kapindo'),
(8, '191110073', 'Sri Rahayu Usnul Khotimah'),
(9, '191110124', 'Syaikh Fatahillah  Hadini'),
(10, '200810460', 'Ulfa Damayanti'),
(11, '191110106', 'Ambrosius Hutagaol'),
(12, '191110016', 'lamhot daniel simorangkir'),
(13, '191110051', 'Hartawan Martin Odniel Sianturi'),
(14, '191110107', 'Wiwinda Aulia'),
(15, '191110120', 'Nafa Anjelia Faradise'),
(16, '191110059', 'Muhammad Fahrurrozi'),
(17, '17111050', 'Rendra Abdillah Panjaitan'),
(18, '211110119', 'Arifqi Kartadinata'),
(19, '201110156', 'Muhammad Aminuddin'),
(20, '201110049', 'Trimurti mayuna'),
(21, '191110023', 'DESIDERIUS VALDINO HEMI'),
(22, '191110119', 'Syahrul Luneto'),
(23, '190210074', 'Randyanson Saragih'),
(24, '190210085', 'ainan tusamma salsabila'),
(25, '201110006', 'Reggy Novriadi'),
(26, '201110033', 'MUHAMMAD DAFFA RIZKYANSYAH'),
(27, '2102100249', 'yudi figo lestiadi'),
(28, '190210097', 'ainun najib'),
(29, '191110003', 'Muchammad Ramadhan'),
(30, '191110052', 'Andi mahirudin'),
(31, '191110130', 'Anugerah Ramadani'),
(32, '191110066', 'Nurdianto'),
(33, '191110030', 'Pipit Novita Sari'),
(34, '201110060', 'Raden Ayu Salma'),
(35, '211130127', 'Putra Takaelu'),
(36, '211130129', 'sultan dimas'),
(37, '21110130', 'Tri Lolangion'),
(38, '21110131', 'Priti Sambali'),
(39, '190610095', 'Fransisco A Ohoiwirin '),
(40, '200510137', 'Clemens Gilberrto Huik');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(3) NOT NULL,
  `nim` char(15) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `times` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `times`) VALUES
(1, '0    191110006\n', '0    Rizat Kapindo\r\nName: Nama, dtype: object', '0    21:12:40\r\nName: Absen, dtype: object'),
(2, '0    191110192\n', '0    Amrul Letsoin\r\nName: Nama, dtype: int64', '0    21:21:53\r\nName: Absen, dtype: object'),
(3, '0    191110114\n', '0    Azzah Faaizah\r\nName: Nama, dtype: object', '0    15:39:18\r\nName: Absen, dtype: object'),
(4, '0    191110061\n', '0    Efita Sari\r\nName: Nama, dtype: object', '0    15:40:07\r\nName: Absen, dtype: object'),
(5, '0    200810460\n', '0    ulfa damayanti\r\n1    Efita Sari\r\n2    Azzah Faaizah\r\nName: Nama, dtype: object', '0    15:41:50\n1    15:41:50\n2    09:02:59\nName: Time, dtype: object'),
(6, '0    191110106\n', '0    Ambrosius Hutagaol\r\nName: Nama, dtype: object', '0    18:32:26\r\nName: Absen, dtype: object'),
(7, '0    191110016\n', '0    lamhot daniel simorangkir\r\nName: Nama, dtype: object', '0    18:36:57\r\nName: Absen, dtype: object'),
(8, '0    191110051\n', '0    Hartawan Martin Odniel Sianturi\r\nName: Nama, dtype: object', '0    18:42:35\r\nName: Absen, dtype: object'),
(9, '0    191110107\n', '0    Wiwinda Aulia\r\nName: Nama, dtype: object', '0    20:31:44\r\nName: Absen, dtype: object'),
(10, '0    191110120\n', '0    Nafa Anjelia Faradise\r\nName: Nama, dtype: object', '0    20:33:33\r\nName: Absen, dtype: object'),
(11, '0    191110124\n', '0    Syaikh Fatahillah  Hadini\r\nName: Nama, dtype: object', '0    20:46:48\r\nName: Absen, dtype: object'),
(12, '0    191110034\n', '0    Juanta Elieser Ginting\r\nName: Nama, dtype: object', '0    16:36:38\r\nName: Absen, dtype: object'),
(13, '0    191110020\n', '0    Euvemia Safitri Mene\r\n1    Efita Sari\r\nName: Nama, dtype: object', '0    15:42:52\n1    15:42:52\nName: Time, dtype: object'),
(14, '0    191110073\n', '0    Sri Rahayu Usnul Khotimah\nName: Nama, dtype: object', '0    15:47:06\n1    15:47:06\nName: Time, dtype: object'),
(15, '0    191110189\n', '0    Rigiar Aguero\n1    Azzah Faaizah\n2    Efita Sari\nName: Nama, dtype: object', '0    17:32:10\n1    17:32:10\n2    17:32:10\nName: Time, dtype: object'),
(16, '0    191110073\n', '0    Sri Rahayu Usnul Khotimah\nName: Nama, dtype: object', '0    13:42:49\nName: Time, dtype: object'),
(17, '0    191110020\n', '0    Euvemia Safitri Mene\r\nName: Nama, dtype: object', '0    15:41:51\r\nName: Absen, dtype: object'),
(18, '0    17111050\n', '0    Rendra Abdillah Panjaitan\nName: Nama, dtype: object', '0    14:09:00\nName: Time, dtype: object'),
(19, '0    211110119\n', '0    Arifqi Kartadinata\nName: Nama, dtype: object', '0    14:20:31\nName: Time, dtype: object'),
(20, '0    201110156\n', '0    Muhammad Aminuddin\nName: Nama, dtype: object', '0    14:23:36\nName: Time, dtype: object'),
(21, '0    191110189\n', '0    Rigiar Aguero\nName: Nama, dtype: object', '0    15:46:48\nName: Time, dtype: object'),
(22, '0    201110049\n', '0    Trimurti mayuna\nName: Nama, dtype: object', '0    16:03:55\nName: Time, dtype: object'),
(23, '0    191110016\n', '0    lamhot daniel simorangkir\nName: Nama, dtype: object', '0    19:05:20\nName: Time, dtype: object'),
(24, '0    191110034\n', '0    Juanta Elieser Ginting\r\nName: Nama, dtype: object', '0    20:13:55\r\nName: Absen, dtype: object'),
(25, '0    191110059\n', '0    Muhammad Fahrurrozi\nName: Nama, dtype: object', '0    20:27:39\nName: Time, dtype: object'),
(26, '0    191110114\n', '0    Azzah Faaizah\r\n1    Rizat Kapindo\r\n2    Efita Sari\r\nName: Nama, dtype: object', '0    20:43:32\n1    20:43:32\n2    20:43:32\nName: Time, dtype: object'),
(27, '0    191110120\n', '0    Nafa Anjelia Faradise\nName: Nama, dtype: object', '0    21:16:34\nName: Time, dtype: object'),
(28, '0    191110107\n', '0    Wiwinda Aulia\r\nName: Nama, dtype: object', '0    21:38:46\r\nName: Absen, dtype: object'),
(29, '0    191110114\n', '0    Azzah Faaizah\r\nName: Nama, dtype: object', '0    21:48:34\r\nName: Absen, dtype: object'),
(30, '0    191110106\n', '0    Ambrosius Hutagaol\r\n1    Nafa Anjelia Faradise\r\n2    Wiwinda Aulia\r\nName: Nama, dtype: object', '0    21:59:48\n1    21:59:48\n2    21:59:48\nName: Time, dtype: object'),
(31, '0    191110073\n', '0    Sri Rahayu Usnul Khotimah\nName: Nama, dtype: object', '0    10:43:35\nName: Time, dtype: object'),
(32, '0    191110020\n', '0    Euvemia Safitri Mene\r\nName: Nama, dtype: object', '0    11:41:51\r\nName: Absen, dtype: object'),
(33, '0    17111050\n', '0    Rendra Abdillah Panjaitan\nName: Nama, dtype: object', '0    13:09:42\nName: Time, dtype: object'),
(34, '0    211110119\n', '0    Arifqi Kartadinata\nName: Nama, dtype: object', '0    13:21:06\nName: Time, dtype: object'),
(35, '0    201110156\n', '0    Muhammad Aminuddin\r\n1    Amrul Letsoin\r\nName: Nama, dtype: object', '0    14:24:17\n1    14:24:20\nName: Time, dtype: object'),
(36, '0    191110189\n', '0    Rigiar Aguero\nName: Nama, dtype: object', '0    15:49:08\nName: Time, dtype: object'),
(37, '0    201110049\n', '0    Trimurti mayuna\nName: Nama, dtype: object', '0    16:04:30\nName: Time, dtype: object'),
(38, '0    191110034\n', '0    Juanta Elieser Ginting\r\nName: Nama, dtype: object', '0    17:13:55\r\nName: Absen, dtype: object'),
(39, '0    191110016\n', '0    lamhot daniel simorangkir\nName: Nama, dtype: object', '0    19:06:58\nName: Time, dtype: object'),
(40, '0    191110114\n', '0    Azzah Faaizah\n1    Muhammad Fahrurrozi\nName: Nama, dtype: object', '0    19:48:34\n1    19:48:34\nName: Time, dtype: object'),
(41, '0    191110124\n', '0    Syaikh Fatahillah  Hadini\r\n1    Wiwinda Aulia\r\nName: Nama, dtype: object', '0    20:22:52\n1    20:22:52\nName: Time, dtype: object'),
(42, '0    191110120\n', '0    Nafa Anjelia Faradise\nName: Nama, dtype: object', '0    21:14:54\nName: Time, dtype: object'),
(43, '0    191110107\n', '0    Wiwinda Aulia\r\nName: Nama, dtype: object', '0    21:19:46\r\nName: Absen, dtype: object'),
(44, '0    191110114\n', '0    Azzah Faaizah\r\nName: Nama, dtype: object', '0    21:23:56\r\nName: Absen, dtype: object'),
(45, '0    191110120\n', '0    Nafa Anjelia Faradise\r\n1    Wiwinda Aulia\r\n2    Syaikh Fatahillah  Hadini\r\nName: Nama, dtype: object', '0    22:27:50\n1    22:27:51\n2    22:27:52\nName: Time, dtype: object'),
(46, '0    191110124\n', '0          Syaikh Fatahillah  Hadini\n1    Hartawan Martin Odniel Sianturi\nName: Nama, dtype: object', '0    10:26:38\n1    10:26:39\nName: Time, dtype: object'),
(47, '0    191110124\n', '0          Syaikh Fatahillah  Hadini\n1    Hartawan Martin Odniel Sianturi\n2                      Wiwinda Aulia\nName: Nama, dtype: object', '0    10:26:38\n1    10:26:39\n2    10:26:54\nName: Time, dtype: object'),
(48, '0    191110051\n', '0    Hartawan Martin Odniel Sianturi\n1                         Efita Sari\n2                 Ambrosius Hutagaol\nName: Nama, dtype: object', '0    10:33:30\n1    10:33:32\n2    10:33:33\nName: Time, dtype: object'),
(49, '0    191110114\n', '0     Azzah Faaizah\n1        Efita Sari\n2    ulfa damayanti\nName: Nama, dtype: object', '0    10:34:22\n1    10:34:22\n2    10:34:23\nName: Time, dtype: object'),
(50, '0    191110073\n', '0    Sri Rahayu Usnul Khotimah\nName: Nama, dtype: object', '0    11:40:17\nName: Time, dtype: object'),
(51, '0    191110073\n', '0    Sri Rahayu Usnul Khotimah\nName: Nama, dtype: object', '0    11:40:17\nName: Time, dtype: object'),
(52, '0    191110073\n', '0    Sri Rahayu Usnul Khotimah\n1                Azzah Faaizah\n2               ulfa damayanti\n3                   Efita Sari\n4           Arifqi Kartadinata\nName: Nama, dtype: object', '0    11:40:17\n1    11:43:49\n2    11:43:49\n3    11:43:49\n4    11:43:52\nName: Time, dtype: object'),
(53, '0    191110073\n', '0    Sri Rahayu Usnul Khotimah\n1                Azzah Faaizah\n2               ulfa damayanti\n3                   Efita Sari\n4           Arifqi Kartadinata\n5          Muhammad Fahrurrozi\nName: Nama, dtype: object', '0    11:40:17\n1    11:43:49\n2    11:43:49\n3    11:43:49\n4    11:43:52\n5    11:44:52\nName: Time, dtype: object'),
(54, '0    191110023\n', '0    DESIDERIUS VALDINO HEMI\nName: Nama, dtype: object', '0    11:22:48\nName: Time, dtype: object'),
(55, '0    191110061\n', '0                 Efita Sari\n1    DESIDERIUS VALDINO HEMI\nName: Nama, dtype: object', '0    11:23:51\n1    11:23:54\nName: Time, dtype: object'),
(56, '0    191110023\n', '0    DESIDERIUS VALDINO HEMI\nName: Nama, dtype: object', '0    11:24:45\nName: Time, dtype: object'),
(57, '0    191110119\n', '0    Syahrul Luneto\nName: Nama, dtype: object', '0    18:37:58\nName: Time, dtype: object'),
(58, '0    191110119\n', '0    Syahrul Luneto\nName: Nama, dtype: object', '0    18:38:31\nName: Time, dtype: object'),
(59, '0    191110119\n', '0    Syahrul Luneto\nName: Nama, dtype: object', '0    18:39:06\nName: Time, dtype: object'),
(60, '0    190210074\n', '0                 Randyanson Saragih\n1    Hartawan Martin Odniel Sianturi\n2                      Azzah Faaizah\nName: Nama, dtype: object', '0    18:54:04\n1    18:54:04\n2    18:54:04\nName: Time, dtype: object'),
(61, '0    191110051\n', '0    Hartawan Martin Odniel Sianturi\n1                      Azzah Faaizah\n2                 Randyanson Saragih\n3                 Ambrosius Hutagaol\nName: Nama, dtype: object', '0    18:57:27\n1    18:57:27\n2    18:57:27\n3    18:57:28\nName: Time, dtype: object'),
(62, '0    190210074\n', '0    Randyanson Saragih\nName: Nama, dtype: object', '0    18:58:53\nName: Time, dtype: object'),
(63, '0    190210085\n', '0    ainan tusamma salsabila\r\nName: Nama, dtype: object', '0    19:01:55\r\nName: Time, dtype: object'),
(64, '0    190210085\n', '0    ainan tusamma salsabila\nName: Nama, dtype: object', '0    19:02:22\nName: Time, dtype: object'),
(65, '0    190210085\n', '0    ainan tusamma salsabila\nName: Nama, dtype: object', '0    19:02:51\nName: Time, dtype: object'),
(66, '0    191110192\n', '0     Amrul Letsoin\n1    Reggy Novriadi\nName: Nama, dtype: object', '0    20:07:25\n1    20:07:26\nName: Time, dtype: object'),
(67, '0    201110006\n', '0    Reggy Novriadi\nName: Nama, dtype: object', '0    20:07:52\nName: Time, dtype: object'),
(68, '0    201110006\n', '0    Reggy Novriadi\nName: Nama, dtype: object', '0    20:08:20\nName: Time, dtype: object'),
(69, '0    191110107\n', '0                 Wiwinda Aulia\n1         Nafa Anjelia Faradise\n2            Randyanson Saragih\n3    MUHAMMAD DAFFA RIZKYANSYAH\n4                 Azzah Faaizah\nName: Nama, dtype: object', '0    20:32:42\n1    20:33:03\n2    20:33:03\n3    20:33:03\n4    20:33:05\nName: Time, dtype: object'),
(70, '0    191110107\n', '0                 Wiwinda Aulia\n1                 Azzah Faaizah\n2    MUHAMMAD DAFFA RIZKYANSYAH\nName: Nama, dtype: object', '0    20:33:41\n1    20:33:43\n2    20:33:43\nName: Time, dtype: object'),
(71, '0    191110120\n', '0         Nafa Anjelia Faradise\n1                 Wiwinda Aulia\n2    MUHAMMAD DAFFA RIZKYANSYAH\n3                 Azzah Faaizah\nName: Nama, dtype: object', '0    20:34:30\n1    20:34:31\n2    20:34:32\n3    20:34:32\nName: Time, dtype: object'),
(72, '0    2102100249', '0    yudi figo lestiadi\nName: Nama, dtype: object', '0    21:57:22\nName: Time, dtype: object'),
(73, '0     190210074', '0    yudi figo lestiadi\r\nName: Nama, dtype: object', '0    21:58:01\r\nName: Time, dtype: object'),
(74, '0     190210085', '0    yudi figo lestiadi\r\nName: Nama, dtype: object', '0    21:58:35\r\nName: Time, dtype: object'),
(75, '0    190210097\n', '0    ainun najib\nName: Nama, dtype: object', '0    09:54:49\nName: Time, dtype: object'),
(76, '0    190210097\n', '0    ainun najib\nName: Nama, dtype: object', '0    09:55:36\nName: Time, dtype: object'),
(77, '0    190210097\n', '0    ainun najib\nName: Nama, dtype: object', '0    09:56:19\nName: Time, dtype: object'),
(78, '0    191110003\n', '0    Muchammad Ramadhan\n1         Azzah Faaizah\nName: Nama, dtype: object', '0    10:49:53\n1    10:49:54\nName: Time, dtype: object'),
(79, '0    191110003\n', '0    Muchammad Ramadhan\nName: Nama, dtype: object', '0    10:50:21\nName: Time, dtype: object'),
(80, '0    191110003\n', '0    Muchammad Ramadhan\nName: Nama, dtype: object', '0    10:51:29\nName: Time, dtype: object'),
(81, '0    191110052\n', '0    Andi mahirudin\nName: Nama, dtype: object', '0    12:31:36\nName: Time, dtype: object'),
(82, '0    191110052\n', '0    Andi mahirudin\nName: Nama, dtype: object', '0    12:32:16\nName: Time, dtype: object'),
(83, '0    191110052\n', '0            Andi mahirudin\n1    Juanta Elieser Ginting\n2                Efita Sari\nName: Nama, dtype: object', '0    12:32:44\n1    12:32:45\n2    12:32:46\nName: Time, dtype: object'),
(84, '0    191110130\n', '0         Anugerah Ramadani\n1             Rizat Kapindo\n2             Amrul Letsoin\n3    Juanta Elieser Ginting\nName: Nama, dtype: object', '0    12:52:17\n1    12:52:17\n2    12:52:35\n3    12:52:37\nName: Time, dtype: object'),
(85, '0    191110192\n', '0        Amrul Letsoin\n1    Anugerah Ramadani\n2        Rizat Kapindo\nName: Nama, dtype: object', '0    12:53:21\n1    12:53:22\n2    12:53:23\nName: Time, dtype: object'),
(86, '0    191110034\n', '0    Juanta Elieser Ginting\n1             Rizat Kapindo\nName: Nama, dtype: object', '0    12:54:02\n1    12:54:02\nName: Time, dtype: object'),
(87, '0    191110066\n', '0    Nurdianto\nName: Nama, dtype: object', '0    13:53:53\nName: Time, dtype: object'),
(88, '0    191110066\n', '0    Nurdianto\nName: Nama, dtype: object', '0    13:54:33\nName: Time, dtype: object'),
(89, '0    190210097\n', '0    ainun najib\nName: Nama, dtype: object', '0    13:55:05\nName: Time, dtype: object'),
(93, '0    191110030\n', '0    Pipit Novita Sari\nName: Nama, dtype: object', '0    15:40:39\nName: Time, dtype: object'),
(94, '0    191110030\n', '0    Pipit Novita Sari\nName: Nama, dtype: object', '0    15:41:13\nName: Time, dtype: object'),
(95, '0    191110030\n', '0    Pipit Novita Sari\nName: Nama, dtype: object', '0    15:42:32\nName: Time, dtype: object'),
(96, '0    201110060\n', '0    Raden Ayu Salma\nName: Nama, dtype: object', '0    15:46:13\nName: Time, dtype: object'),
(97, '0    201110060\n', '0    Raden Ayu Salma\nName: Nama, dtype: object', '0    15:46:48\nName: Time, dtype: object'),
(98, '0    201110060\n', '0    Raden Ayu Salma\nName: Nama, dtype: object', '0    15:47:18\nName: Time, dtype: object'),
(100, '0    211130127\n', '0     Putra Takaelu\r\nName: Nama, dtype: object', '0    19:34:59\r\nName: Time, dtype: object'),
(101, '0    211130127\n', '0    Putra Takaelu\nName: Nama, dtype: object', '0    19:35:48\nName: Time, dtype: object'),
(102, '0    211130127\n', '0    Putra Takaelu\nName: Nama, dtype: object', '0    19:37:50\nName: Time, dtype: object'),
(103, '0    211130129\n', '0    sultan dimas\nName: Nama, dtype: object', '0    19:43:26\nName: Time, dtype: object'),
(104, '0    211130129\n', '0    sultan dimas\nName: Nama, dtype: object', '0    19:44:00\nName: Time, dtype: object'),
(105, '0    211130129\n', '0    sultan dimas\nName: Nama, dtype: object', '0    19:44:40\nName: Time, dtype: object'),
(106, '0    21110130', '0    Tri Lolangion\nName: Nama, dtype: object', '0    19:52:58\nName: Time, dtype: object'),
(107, '0    21110130', '0    Tri Lolangion\nName: Nama, dtype: object', '0    19:53:33\nName: Time, dtype: object'),
(108, '0    21110130', '0    Tri Lolangion\r\nName: Nama, dtype: object', '0    19:54:03\r\nName: Time, dtype: object'),
(109, '0     21110131\n', '0    Priti Sambali\n1    Putra Takaelu\nName: Nama, dtype: object', '0    19:55:25\n1    19:55:26\nName: Time, dtype: object'),
(110, '0     21110131\n', '0    Priti Sambali\r\nName: Nama, dtype: object', '0    19:55:58\r\nName: Time, dtype: object'),
(111, '0    21110131\nN', '0    Priti Sambali\nName: Nama, dtype: object', '0    19:56:30\nName: Time, dtype: object'),
(116, '0    190610095\n', '0    Fransisco A Ohoiwirin \nName: Nama, dtype: object', '0    20:36:01\nName: Time, dtype: object'),
(117, '0    190610095\n', '0    Fransisco A Ohoiwirin \nName: Nama, dtype: object', '0    20:36:32\nName: Time, dtype: object'),
(118, '0    190610095\n', '0    Fransisco A Ohoiwirin \nName: Nama, dtype: object', '0    20:37:00\nName: Time, dtype: object'),
(119, '0    200510137\n', '0    Clemens Gilberrto Huik\nName: Nama, dtype: object', '0    20:38:12\nName: Time, dtype: object'),
(121, '0    200510137\n', '0    Clemens Gilberrto Huik\nName: Nama, dtype: object', '0    20:39:24\nName: Time, dtype: object'),
(122, '0    200510137\n', '0    Clemens Gilberrto Huik\nName: Nama, dtype: object', '0    20:39:55\nName: Time, dtype: object'),
(123, '0    211110119', '0    Arifqi Kartadinata\r\nName: Nama, dtype: object', '0    20:47:12\r\nName: Time, dtype: object\r\n'),
(124, '0    201110156', '0    Muhammad Aminuddin\r\nName: Nama, dtype: object', '0    20:51:23\r\nName: Time, dtype: object\r\n'),
(125, '0    17111050', '0    Rendra Abdillah Panjaitan\r\nName: Nama, dtype: object', '0    20:55:47\r\nName: Time, dtype: object\r\n'),
(126, '0    201110049', '0    Trimurti mayuna\r\nName: Nama, dtype: object', '0    20:59:54\r\nName: Time, dtype: object\r\n'),
(127, '0    191110059', '0    Muhammad Fahrurrozi\r\nName: Nama, dtype: object', '0    21:05:18\r\nName: Time, dtype: object\r\n'),
(128, '0    191110051', '0    Hartawan Martin Odniel Sianturi\r\nName: Nama, dtype: object', '0    21:13:24\r\nName: Time, dtype: object\r\n'),
(129, '0    191110051', '0    Hartawan Martin Odniel Sianturi\r\nName: Nama, dtype: object', '0    21:14:45\r\nName: Time, dtype: object\r\n'),
(130, '0    191110106', '0    Ambrosius Hutagaol\r\nName: Nama, dtype: object', '0    21:17:31\r\nName: Time, dtype: object\r\n'),
(131, '0    191110106', '0    Ambrosius Hutagaol\r\nName: Nama, dtype: object', '0    21:18:38\r\nName: Time, dtype: object\r\n'),
(132, '0    200810460', '0    Ulfa Damayanti\r\nName: Nama, dtype: object', '0    21:20:02\r\nName: Time, dtype: object\r\n'),
(133, '0    200810460', '0    Ulfa Damayanti\r\nName: Nama, dtype: object', '0    21:21:11\r\nName: Time, dtype: object\r\n'),
(134, '0    191110061', '0    Efita Sari\r\nName: Nama, dtype: object', '0    21:24:22\r\nName: Time, dtype: object\r\n'),
(135, '0    191110061', '0    Efita Sari\r\nName: Nama, dtype: object', '0    21:25:34\r\nName: Time, dtype: object\r\n'),
(136, '0    191110124', '0    Syaikh Fatahillah Hadini\r\nName: Nama, dtype: object', '0    21:30:56\r\nName: Time, dtype: object\r\n'),
(137, '0    191110124', '0    Syaikh Fatahillah  Hadini\r\nName: Nama, dtype: object', '0    21:32:02\r\nName: Time, dtype: object\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faces`
--
ALTER TABLE `faces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `faces`
--
ALTER TABLE `faces`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Agu 2023 pada 16.40
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sihotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_bookings`
--

CREATE TABLE `ldg_bookings` (
  `bookingId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL DEFAULT 0,
  `bookingDtm` datetime NOT NULL,
  `floorId` int(11) DEFAULT NULL,
  `roomSizeId` int(11) DEFAULT NULL,
  `roomId` int(11) NOT NULL,
  `bookStartDate` datetime NOT NULL,
  `bookEndDate` datetime NOT NULL,
  `bookingComments` varchar(2048) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `ldg_bookings`
--

INSERT INTO `ldg_bookings` (`bookingId`, `customerId`, `bookingDtm`, `floorId`, `roomSizeId`, `roomId`, `bookStartDate`, `bookEndDate`, `bookingComments`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(16, 17, '2023-08-13 15:52:38', 5, 6, 14, '2023-08-13 00:00:00', '2023-08-14 00:00:00', '<p>Akan Checkin sekitar jam 3</p>', 0, 4, '2023-08-13 15:52:38', NULL, NULL),
(17, 18, '2023-08-13 15:53:26', 5, 6, 15, '2023-08-13 00:00:00', '2023-08-14 00:00:00', '<p>Akan Checkin Lambat sekitar jam 4</p>', 0, 4, '2023-08-13 15:53:26', NULL, NULL),
(18, 19, '2023-08-13 15:54:10', 6, 7, 24, '2023-08-13 00:00:00', '2023-08-15 00:00:00', '<p>Request Pewangi Ruangan</p>', 0, 4, '2023-08-13 15:54:10', NULL, NULL),
(19, 20, '2023-08-13 15:55:03', 7, 8, 29, '2023-08-13 00:00:00', '2023-08-16 00:00:00', '<p>Request Handuk 4 dan Tong Sampah 2 buah</p>', 0, 4, '2023-08-13 15:55:03', NULL, NULL),
(20, 20, '2023-08-13 15:55:55', 7, 8, 30, '2023-08-13 00:00:00', '2023-08-14 00:00:00', '', 0, 4, '2023-08-13 15:55:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_booking_customer_master`
--

CREATE TABLE `ldg_booking_customer_master` (
  `bcmId` bigint(20) NOT NULL,
  `bookingId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `createdDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_customer`
--

CREATE TABLE `ldg_customer` (
  `customerId` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `customerAddress` varchar(2048) DEFAULT NULL,
  `customerPhone` varchar(15) DEFAULT NULL,
  `customerEmail` varchar(128) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `ldg_customer`
--

INSERT INTO `ldg_customer` (`customerId`, `customerName`, `customerAddress`, `customerPhone`, `customerEmail`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(17, 'Anas Rafiq Al Bara', 'Unitomo', '201931420011', 'anas@gmail.com', 0, 4, '2023-08-13 15:16:25', NULL, NULL),
(18, 'Beni Saputra', 'Unitomo', '202031420009', 'beni@gmail.com', 0, 4, '2023-08-13 15:17:03', NULL, NULL),
(19, 'Caesare Pamungkas Putra Bagyana', 'Unitomo', '202031420010', 'caesare@gmail.com', 0, 4, '2023-08-13 15:17:29', NULL, NULL),
(20, 'Yenny Hariyanti', 'Unitomo', '202031420008', 'yenny@gmail.com', 0, 4, '2023-08-13 15:17:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_floor`
--

CREATE TABLE `ldg_floor` (
  `floorId` tinyint(4) NOT NULL,
  `floorCode` varchar(10) NOT NULL,
  `floorName` varchar(50) NOT NULL,
  `floorDescription` text NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Floor Table';

--
-- Dumping data untuk tabel `ldg_floor`
--

INSERT INTO `ldg_floor` (`floorId`, `floorCode`, `floorName`, `floorDescription`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(5, 'G01', 'Lantai Dasar', '<p>Lantai ini Diperuntukkan Tipe Kamar Budget</p>', 0, 4, '2023-08-13 15:22:23', NULL, NULL),
(6, 'F1', 'Floor 1', '<p>Lantai yang diperuntukkan Tipe Kamar Deluxe</p>', 0, 4, '2023-08-13 15:24:55', NULL, NULL),
(7, 'F2', 'Floor 2', '<p>Lantai ini diperuntukkan Tipe Kamar Suite</p>', 0, 4, '2023-08-13 15:28:23', 4, '2023-08-13 15:36:55'),
(8, 'TEST', 'Test', '<p>Test</p>', 0, 4, '2023-08-13 15:57:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_lodge`
--

CREATE TABLE `ldg_lodge` (
  `lodgeId` int(11) NOT NULL,
  `lodgeName` varchar(128) NOT NULL,
  `lodgeAddress` varchar(512) NOT NULL,
  `lodgeCity` varchar(50) NOT NULL,
  `lodgeState` varchar(50) NOT NULL,
  `lodgeCountry` varchar(50) DEFAULT NULL,
  `lodgePincode` varchar(10) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL DEFAULT 0,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Information of lodge';

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_reset_password`
--

CREATE TABLE `ldg_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` bigint(20) NOT NULL DEFAULT 1,
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `ldg_reset_password`
--

INSERT INTO `ldg_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(25, 'email@gmail.com', 'nxwY5JKbbNcTRju', 'Chrome 56.0.2924.87', '0.0.0.0', 0, 1, '2017-03-22 18:11:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_roles`
--

CREATE TABLE `ldg_roles` (
  `roleId` tinyint(4) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Information of roles';

--
-- Dumping data untuk tabel `ldg_roles`
--

INSERT INTO `ldg_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Manajer Hotel'),
(3, 'Resepsionis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_rooms`
--

CREATE TABLE `ldg_rooms` (
  `roomId` int(11) NOT NULL,
  `roomNumber` varchar(50) NOT NULL,
  `roomSizeId` int(11) NOT NULL COMMENT 'FK : ldg_room_sizes',
  `floorId` tinyint(4) NOT NULL COMMENT 'FK : ldg_floor',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL DEFAULT 0,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Information of rooms';

--
-- Dumping data untuk tabel `ldg_rooms`
--

INSERT INTO `ldg_rooms` (`roomId`, `roomNumber`, `roomSizeId`, `floorId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(14, 'B01', 6, 5, 0, 4, '2023-08-13 15:33:42', NULL, NULL),
(15, 'B02', 6, 5, 0, 4, '2023-08-13 15:33:49', NULL, NULL),
(16, 'B03', 6, 5, 0, 4, '2023-08-13 15:33:56', NULL, NULL),
(17, 'B04', 6, 5, 0, 4, '2023-08-13 15:34:07', NULL, NULL),
(18, 'B05', 6, 5, 0, 4, '2023-08-13 15:34:14', NULL, NULL),
(19, 'B06', 6, 5, 0, 4, '2023-08-13 15:34:27', NULL, NULL),
(20, 'B07', 6, 5, 0, 4, '2023-08-13 15:34:37', NULL, NULL),
(21, 'B08', 6, 5, 0, 4, '2023-08-13 15:34:42', NULL, NULL),
(22, 'B09', 6, 5, 0, 4, '2023-08-13 15:35:09', NULL, NULL),
(23, 'B10', 6, 5, 0, 4, '2023-08-13 15:35:22', NULL, NULL),
(24, 'D01', 7, 6, 0, 4, '2023-08-13 15:36:09', NULL, NULL),
(25, 'D02', 7, 6, 0, 4, '2023-08-13 15:36:18', NULL, NULL),
(26, 'D03', 7, 6, 0, 4, '2023-08-13 15:36:27', NULL, NULL),
(27, 'D04', 7, 6, 0, 4, '2023-08-13 15:36:34', NULL, NULL),
(28, 'D05', 7, 6, 0, 4, '2023-08-13 15:36:41', NULL, NULL),
(29, 'S01', 8, 7, 0, 4, '2023-08-13 15:38:04', NULL, NULL),
(30, 'S02', 8, 7, 0, 4, '2023-08-13 15:38:11', NULL, NULL),
(31, 'S03', 8, 7, 0, 4, '2023-08-13 15:38:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_room_base_fare`
--

CREATE TABLE `ldg_room_base_fare` (
  `bfId` bigint(20) NOT NULL,
  `sizeId` int(11) NOT NULL,
  `baseFareHour` double NOT NULL,
  `baseFareDay` double NOT NULL,
  `serviceTax` double NOT NULL,
  `serviceCharge` double NOT NULL,
  `fareTotal` double NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `ldg_room_base_fare`
--

INSERT INTO `ldg_room_base_fare` (`bfId`, `sizeId`, `baseFareHour`, `baseFareDay`, `serviceTax`, `serviceCharge`, `fareTotal`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(6, 6, 20000, 200000, 1, 11, 224000, 0, 4, '2023-08-13 15:48:17', 4, '2023-08-13 15:51:21'),
(7, 7, 45000, 450000, 2, 11, 508500, 0, 4, '2023-08-13 15:49:21', 4, '2023-08-13 15:51:14'),
(8, 8, 120000, 1000000, 5, 11, 1160000, 0, 4, '2023-08-13 15:49:51', 4, '2023-08-13 15:50:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_room_sizes`
--

CREATE TABLE `ldg_room_sizes` (
  `sizeId` int(11) NOT NULL,
  `sizeTitle` varchar(512) NOT NULL,
  `sizeDescription` text NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL DEFAULT 0,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Information of room sizes';

--
-- Dumping data untuk tabel `ldg_room_sizes`
--

INSERT INTO `ldg_room_sizes` (`sizeId`, `sizeTitle`, `sizeDescription`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(6, 'Budget Room', '<p>Dilengkapi :<br>Kasur Twin/Double Bed<br>AC<br>Smoking/Non Smoking Room</p>', 0, 4, '2023-08-13 15:30:59', NULL, NULL),
(7, 'Deluxe Room', '<p>Dilengkapi :<br>Double Bed<br>AC<br>Breakfast</p>', 0, 4, '2023-08-13 15:31:49', NULL, NULL),
(8, 'Suite Room', '<p>Dilengkapi :<br>2 King Size Bed<br>AC<br>Free Breakfast & Lunch<br><br></p>', 0, 4, '2023-08-13 15:33:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_users`
--

CREATE TABLE `ldg_users` (
  `userId` int(11) NOT NULL,
  `userEmail` varchar(128) NOT NULL,
  `userPassword` varchar(128) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userPhone` varchar(20) NOT NULL,
  `userAddress` varchar(1024) NOT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL DEFAULT 0,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Information of administrative users';

--
-- Dumping data untuk tabel `ldg_users`
--

INSERT INTO `ldg_users` (`userId`, `userEmail`, `userPassword`, `userName`, `userPhone`, `userAddress`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'email@gmail.com', '$2y$10$W0JwINh/A4eadWvp1.AxkejudEgv8Wg5vUMCcX4MKtdoCimQieBdK', 'Super Admin', '9890098900', 'Pune India', 1, 0, 1, '2017-01-01 00:00:00', NULL, NULL),
(2, 'subadmin@gmail.com', '$2y$10$sqyx0XUQhJxIJ6lq9adpV.ioq97zngNXeT33b/n5M2KbWdyzfALie', 'Sub Admin', '9890098900', '', 2, 0, 1, '2017-03-23 18:19:38', 1, '2023-07-29 22:37:44'),
(3, 'admin@example.com', '$2y$10$W0JwINh/A4eadWvp1.AxkejudEgv8Wg5vUMCcX4MKtdoCimQieBdK', 'Book Admin', '9890098900', '', 3, 0, 1, '2017-03-24 16:26:31', 1, '2023-07-29 22:38:07'),
(4, 'mainadmin@gmail.com', '$2y$10$fr5BbudQWUI3HLL/Sl7JuOhDsTXyPEDeTjwSD083zOpIBXQd.uELi', 'Adminutama', '0877777777', '', 1, 0, 1, '2023-08-12 03:36:24', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ldg_bookings`
--
ALTER TABLE `ldg_bookings`
  ADD PRIMARY KEY (`bookingId`);

--
-- Indeks untuk tabel `ldg_booking_customer_master`
--
ALTER TABLE `ldg_booking_customer_master`
  ADD PRIMARY KEY (`bcmId`);

--
-- Indeks untuk tabel `ldg_customer`
--
ALTER TABLE `ldg_customer`
  ADD PRIMARY KEY (`customerId`);

--
-- Indeks untuk tabel `ldg_floor`
--
ALTER TABLE `ldg_floor`
  ADD PRIMARY KEY (`floorId`),
  ADD UNIQUE KEY `floorCode` (`floorCode`);

--
-- Indeks untuk tabel `ldg_lodge`
--
ALTER TABLE `ldg_lodge`
  ADD PRIMARY KEY (`lodgeId`);

--
-- Indeks untuk tabel `ldg_reset_password`
--
ALTER TABLE `ldg_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ldg_roles`
--
ALTER TABLE `ldg_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indeks untuk tabel `ldg_rooms`
--
ALTER TABLE `ldg_rooms`
  ADD PRIMARY KEY (`roomId`);

--
-- Indeks untuk tabel `ldg_room_base_fare`
--
ALTER TABLE `ldg_room_base_fare`
  ADD PRIMARY KEY (`bfId`);

--
-- Indeks untuk tabel `ldg_room_sizes`
--
ALTER TABLE `ldg_room_sizes`
  ADD PRIMARY KEY (`sizeId`);

--
-- Indeks untuk tabel `ldg_users`
--
ALTER TABLE `ldg_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ldg_bookings`
--
ALTER TABLE `ldg_bookings`
  MODIFY `bookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `ldg_booking_customer_master`
--
ALTER TABLE `ldg_booking_customer_master`
  MODIFY `bcmId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ldg_customer`
--
ALTER TABLE `ldg_customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `ldg_floor`
--
ALTER TABLE `ldg_floor`
  MODIFY `floorId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `ldg_lodge`
--
ALTER TABLE `ldg_lodge`
  MODIFY `lodgeId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ldg_reset_password`
--
ALTER TABLE `ldg_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `ldg_roles`
--
ALTER TABLE `ldg_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ldg_rooms`
--
ALTER TABLE `ldg_rooms`
  MODIFY `roomId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `ldg_room_base_fare`
--
ALTER TABLE `ldg_room_base_fare`
  MODIFY `bfId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `ldg_room_sizes`
--
ALTER TABLE `ldg_room_sizes`
  MODIFY `sizeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `ldg_users`
--
ALTER TABLE `ldg_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

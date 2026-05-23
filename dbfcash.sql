-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2026 at 05:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbfcash`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblaccount`
--

CREATE TABLE `tblaccount` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblaccount`
--

INSERT INTO `tblaccount` (`id`, `username`, `password`, `type`) VALUES
(105, 'admin', 'admin123', 'administrator'),
(106, 'client', 'client123', 'client'),
(107, 'slardge1', 'tA6*7ww<u', 'administrator'),
(108, 'eboycott2', 'fK4=|.!$1Xc4xaU', 'client'),
(109, 'adeandreis3', 'uE2&\"s2q#fI3&fDZ', 'client'),
(110, 'ggeeritz74', 'lR3%FAl}b6', 'costumer'),
(111, 'lassandri5', 'uB5?c$R~6O3i*%', 'costumer'),
(112, 'alargent6', 'lR3%FAl}b,', 'costumer'),
(113, 'cos123', 'qweqwe', 'costumer'),
(114, 'dgethin8', 'dC0)zR`Z+ca\"\"W36', 'costumer'),
(116, 'johnrey', 'qweqwe123', 'costumer');

-- --------------------------------------------------------

--
-- Table structure for table `tblprofile`
--

CREATE TABLE `tblprofile` (
  `profileID` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `suffix` varchar(5) NOT NULL,
  `mothersmaidenfirstname` varchar(50) NOT NULL,
  `mothersmaidenmiddlename` varchar(50) NOT NULL,
  `mothersmaidenlastname` varchar(50) NOT NULL,
  `mothersmaidensuffix` varchar(5) NOT NULL,
  `mobilenumber` varchar(50) NOT NULL,
  `residentialnumber` varchar(50) DEFAULT NULL,
  `dateofbirth` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `civilstatus` varchar(10) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `placeofbirth` varchar(30) NOT NULL,
  `res_Address_HouseNumber` varchar(30) NOT NULL,
  `res_Address_Street` varchar(30) NOT NULL,
  `res_Address_Barangay` varchar(30) NOT NULL,
  `res_Address_Province` varchar(30) NOT NULL,
  `res_Address_zipcode` int(10) NOT NULL,
  `per_Address_HouseNumber` varchar(30) DEFAULT NULL,
  `per_Address_Street` varchar(30) DEFAULT NULL,
  `per_Address_Barangay` varchar(30) DEFAULT NULL,
  `per_Address_Province` varchar(30) DEFAULT NULL,
  `per_Address_zipcode` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblprofile`
--

INSERT INTO `tblprofile` (`profileID`, `firstname`, `middlename`, `lastname`, `suffix`, `mothersmaidenfirstname`, `mothersmaidenmiddlename`, `mothersmaidenlastname`, `mothersmaidensuffix`, `mobilenumber`, `residentialnumber`, `dateofbirth`, `email`, `gender`, `civilstatus`, `nationality`, `placeofbirth`, `res_Address_HouseNumber`, `res_Address_Street`, `res_Address_Barangay`, `res_Address_Province`, `res_Address_zipcode`, `per_Address_HouseNumber`, `per_Address_Street`, `per_Address_Barangay`, `per_Address_Province`, `per_Address_zipcode`) VALUES
(105, 'Juan', 'Carlos', 'Dela Cruz', '', 'Maria', 'Santos', 'Reyes', '', '+639171234567', '0281234567', '1990-05-12', 'juan.delacruz@email.com', 'Male', 'Single', 'Filipino', 'Manila', '123', 'Rizal Avenue', 'Barangay 45', 'Metro Manila', 1000, '123', 'Rizal Avenue', 'Barangay 45', 'Metro Manila', 1000),
(106, 'Maria', 'Elena', 'Santos', '', 'Teresa', 'Lopez', 'Aquino', '', '+639189876543', NULL, '1988-11-23', 'maria.santos@email.com', 'Female', 'Married', 'Filipino', 'Quezon City', '45-B', 'Magsaysay Blvd', 'San Jose', 'Metro Manila', 1100, NULL, NULL, NULL, NULL, NULL),
(107, 'Mark', 'Anthony', 'Gonzales', 'Jr.', 'Lourdes', 'Perez', 'Mendoza', '', '+639225554433', '0324123456', '1995-03-15', 'mark.g@email.com', 'Male', 'Single', 'Filipino', 'Cebu City', '7', 'Gorordo Ave', 'Kamputhaw', 'Cebu', 6000, '7', 'Gorordo Ave', 'Kamputhaw', 'Cebu', 6000),
(108, 'Ana', 'Patricia', 'Reyes', '', 'Carmen', 'Gomez', 'Castro', '', '+639087778899', NULL, '2001-08-09', 'ana.reyes@email.com', 'Female', 'Single', 'Filipino', 'Davao City', 'Sublot 4', 'Damosa St', 'Lanang', 'Davao del Sur', 8000, 'Sublot 4', 'Damosa St', 'Lanang', 'Davao del Sur', 8000),
(109, 'Crisanto', 'Bautista', 'Aquino', '', 'Corazon', 'Dizon', 'Villanueva', '', '+639154443322', '0459612345', '1983-12-30', 'cris_aquino@email.com', 'Male', 'Married', 'Filipino', 'Angeles City', 'Block 12', 'McArthur Highway', 'Balibago', 'Pampanga', 2009, 'Block 12', 'McArthur Highway', 'Balibago', 'Pampanga', 2009),
(110, 'Grace', 'Tan', 'Lim', '', 'Helen', 'Sy', 'Chua', '', '+639991112233', '0279001122', '1992-07-22', 'grace.lim@email.com', 'Female', 'Married', 'Filipino', 'Binondo', '888', 'Ongpin St', 'Barangay 289', 'Metro Manila', 1006, NULL, NULL, NULL, NULL, NULL),
(111, 'Joseph', 'Alvarez', 'Mercado', '', 'Rosa', 'Bermudez', 'Salazar', '', '+639278889900', NULL, '1997-01-18', 'j_mercado@email.com', 'Male', 'Single', 'Filipino', 'Cabanatuan', 'Lot 5', 'Burgos Extension', 'Kapitan Pepe', 'Nueva Ecija', 3100, 'Lot 5', 'Burgos Extension', 'Kapitan Pepe', 'Nueva Ecija', 3100),
(112, 'Christina', 'Luna', 'Castro', '', 'Alicia', 'Valdez', 'Sison', '', '+639473332211', '0744421234', '1985-09-05', 'tina.castro@email.com', 'Female', 'Widowed', 'Filipino', 'Baguio City', '14', 'Session Road', 'Malcom Square', 'Benguet', 2600, '22', 'Asin Road', 'San Luis', 'Benguet', 2600),
(113, 'Edgardo', 'Manuel', 'Ramos', 'III', 'Imelda', 'Soriano', 'Santiago', '', '+639165556677', '0495451234', '1979-10-14', 'ed.ramos@email.com', 'Male', 'Married', 'Filipino', 'Calamba', 'A-3', 'National Highway', 'Halang', 'Laguna', 4027, 'A-3', 'National Highway', 'Halang', 'Laguna', 4027),
(114, 'Michelle', 'Pineda', 'Valenzuela', '', 'Evangeline', 'Cruz', 'Del Rosario', '', '+639392224466', NULL, '1994-02-28', 'mich.v@email.com', 'Female', 'Single', 'Filipino', 'Iloilo City', '55', 'General Luna St', 'Sambag', 'Iloilo', 5000, NULL, NULL, NULL, NULL, NULL),
(116, 'John', 'Cruz', 'Reyes', '', 'Maria', 'Aquino', 'Cruz', 'ii', '09996473244', '09947833246', '08-16-1999', 'johnr.123@gmail.com', 'Male', 'Single', 'Filipino', 'Quezon City', '52', 'ilang ilang', 'Pingkian', 'Metro Manila', 1107, '53', 'ilang ilang', 'Pingkian', 'Metro Manila', 1107);

-- --------------------------------------------------------

--
-- Table structure for table `tblsavingsaccount`
--

CREATE TABLE `tblsavingsaccount` (
  `id` int(11) DEFAULT NULL,
  `balance` double DEFAULT 0,
  `openingDate` datetime DEFAULT current_timestamp(),
  `accountStatus` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsavingsaccount`
--

INSERT INTO `tblsavingsaccount` (`id`, `balance`, `openingDate`, `accountStatus`) VALUES
(110, 18336.74, '2024-02-09 11:00:28', 'Frozen'),
(111, 24215.33, '2025-06-18 23:27:27', 'Active'),
(112, 16134.46, '2022-06-06 19:27:48', 'Frozen'),
(113, 17336.74, '2025-06-16 11:48:22', 'Active'),
(114, 13813.71, '2024-07-20 11:03:59', 'Dormant'),
(116, 300, '2026-05-23 18:19:57', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransaction`
--

CREATE TABLE `tbltransaction` (
  `id` int(11) NOT NULL,
  `costumerID` int(11) NOT NULL,
  `amount` double NOT NULL,
  `transactionType` varchar(25) NOT NULL,
  `transactionDate` datetime NOT NULL DEFAULT current_timestamp(),
  `IssuedByID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltransaction`
--

INSERT INTO `tbltransaction` (`id`, `costumerID`, `amount`, `transactionType`, `transactionDate`, `IssuedByID`) VALUES
(6, 116, 500, 'deposit', '2026-05-23 18:27:39', 106),
(7, 113, 1000, 'withdraw', '2026-05-23 18:28:15', 106),
(8, 116, 200, 'withdraw', '2026-05-23 18:48:54', 106);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblaccount`
--
ALTER TABLE `tblaccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprofile`
--
ALTER TABLE `tblprofile`
  ADD UNIQUE KEY `costumerID` (`profileID`);

--
-- Indexes for table `tblsavingsaccount`
--
ALTER TABLE `tblsavingsaccount`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbltransaction`
--
ALTER TABLE `tbltransaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_costumer_account_transaction_id` (`costumerID`),
  ADD KEY `fk_transaction_issuedby_id` (`IssuedByID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaccount`
--
ALTER TABLE `tblaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `tblprofile`
--
ALTER TABLE `tblprofile`
  MODIFY `profileID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `tbltransaction`
--
ALTER TABLE `tbltransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblprofile`
--
ALTER TABLE `tblprofile`
  ADD CONSTRAINT `fk_account_id` FOREIGN KEY (`profileID`) REFERENCES `tblaccount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblsavingsaccount`
--
ALTER TABLE `tblsavingsaccount`
  ADD CONSTRAINT `fk_savingsAccount_id` FOREIGN KEY (`id`) REFERENCES `tblaccount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbltransaction`
--
ALTER TABLE `tbltransaction`
  ADD CONSTRAINT `fk_costumer_account_transaction_id` FOREIGN KEY (`costumerID`) REFERENCES `tblaccount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transaction_issuedby_id` FOREIGN KEY (`IssuedByID`) REFERENCES `tblaccount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

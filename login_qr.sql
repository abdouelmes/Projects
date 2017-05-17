-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2017 at 07:53 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_qr`
--

-- --------------------------------------------------------

--
-- Table structure for table `dash_qr`
--

CREATE TABLE `dash_qr` (
  `Reference` int(45) NOT NULL,
  `N_Carnets` int(11) NOT NULL,
  `N_Feuilles` int(11) NOT NULL,
  `Numero_Serie` int(11) NOT NULL,
  `Info_Client` varchar(45) NOT NULL,
  `Agence-Numero_Compte` varchar(45) NOT NULL,
  `Date_Creation` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `ID_Log` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dash_qr`
--

INSERT INTO `dash_qr` (`Reference`, `N_Carnets`, `N_Feuilles`, `Numero_Serie`, `Info_Client`, `Agence-Numero_Compte`, `Date_Creation`, `Status`, `ID_Log`) VALUES
(3000, 2, 50, 12212, 'salaheddine hammouda', 'settat-1287897897112', '2017/03/01', 'effectuée', 1);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `ID_Log` int(45) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Nom` varchar(45) NOT NULL,
  `Prenom` varchar(45) NOT NULL,
  `Organism` varchar(45) NOT NULL,
  `Fonction` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`ID_Log`, `Username`, `Password`, `Nom`, `Prenom`, `Organism`, `Fonction`) VALUES
(1, 'salah', 'salah', 'Hammouda', 'Salaheddine', 'Xerper', 'Programmer'),
(3, 'souhail', '123456', 'sohail', 'benhamou', 'hirafi', 'ceo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dash_qr`
--
ALTER TABLE `dash_qr`
  ADD PRIMARY KEY (`Reference`),
  ADD KEY `ID_Log` (`ID_Log`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`ID_Log`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dash_qr`
--
ALTER TABLE `dash_qr`
  MODIFY `Reference` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3001;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `ID_Log` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dash_qr`
--
ALTER TABLE `dash_qr`
  ADD CONSTRAINT `distinct_member` FOREIGN KEY (`ID_Log`) REFERENCES `log` (`ID_Log`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

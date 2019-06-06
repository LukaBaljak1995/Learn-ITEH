-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2018 at 02:52 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--Database: `learn_iteh`
--

-- --------------------------------------------------------

--
-- Table structure for table `Administrator`
--

CREATE TABLE `Administrator` (
  `email` varchar(50) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `sifra` varchar(150) NOT NULL,
  `uloga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Administrator`
--

INSERT INTO `Administrator` (`email`, `ime`, `prezime`, `sifra`, `uloga`) VALUES
('luxybaxy@gmail.com', 'Luka', 'Baljak', 'mojasifra', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `Definicija`
--

CREATE TABLE `Definicija` (
  `DefinicijaID` int(5) NOT NULL,
  `TekstDefinicije` varchar(500) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `TipDefinicijeID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Definicija`
--

INSERT INTO `Definicija` (`DefinicijaID`, `TekstDefinicije`, `Email`, `TipDefinicijeID`) VALUES
(1, 'Prva definicija', 'luxybaxy@gmail.com', 1),
(2, 'Druga Definicija', 'luxybaxy@gmail.com', 1),
(3, 'Treca definicija', 'luxybaxy@gmail.com', 1),
(4, 'Cetvrta (druga oblast doduse!)', 'luxybaxy@gmail.com', 2),
(5, 'Peta definicija ali iz prve oblasti', 'luxybaxy@gmail.com', 1),
(6, 'Sesta ali iz druge', 'luxybaxy@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Korisnik`
--

CREATE TABLE `Korisnik` (
  `email` varchar(50) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `sifra` varchar(150) NOT NULL,
  `uloga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Odgovor`
--

CREATE TABLE `Odgovor` (
  `Email` varchar(50) NOT NULL,
  `PitanjeID` int(5) NOT NULL,
  `Ocena` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Odgovor`
--

INSERT INTO `Odgovor` (`Email`, `PitanjeID`, `Ocena`) VALUES
('luk.abaljak@hotmail.com', 1, 1),
('luk.abaljak@hotmail.com', 2, 1),
('neko@gmail.com', 1, 1),
('neko@gmail.com', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Pitanje`
--

CREATE TABLE `Pitanje` (
  `PitanjeID` int(5) NOT NULL,
  `TekstPitanja` varchar(500) NOT NULL,
  `PonudjeniOdgovori` varchar(500) NOT NULL,
  `TacanOdgovor` varchar(250) NOT NULL,
  `DefinicijaID` int(5) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Pitanje`
--

INSERT INTO `Pitanje` (`PitanjeID`, `TekstPitanja`, `PonudjeniOdgovori`, `TacanOdgovor`, `DefinicijaID`, `Email`) VALUES
(1, 'Nije li PHP super?', 'Da@Onako@Ne@Sta znam', 'Da', 1, 'luxybaxy@gmail.com'),
(2, 'Kakav ti je PHP?', 'super@ne svidja mi se', 'super', 1, 'luxybaxy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `PoznavanjeDefinicije`
--

CREATE TABLE `PoznavanjeDefinicije` (
  `Email` varchar(50) NOT NULL,
  `DefinicijaID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PoznavanjeDefinicije`
--

INSERT INTO `PoznavanjeDefinicije` (`Email`, `DefinicijaID`) VALUES
('luk.abaljak@hotmail.com', 1),
('luk.abaljak@hotmail.com', 2),
('luk.abaljak@hotmail.com', 3),
('luk.abaljak@hotmail.com', 4),
('luk.abaljak@hotmail.com', 5),
('luk.abaljak@hotmail.com', 6),
('luxybaxy@gmail.com', 1),
('neko@gmail.com', 1),
('neko@gmail.com', 2),
('neko@gmail.com', 3),
('neko@gmail.com', 4),
('neko@gmail.com', 5),
('neko@gmail.com', 6);

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `email` varchar(50) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `sifra` varchar(150) NOT NULL,
  `uloga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`email`, `ime`, `prezime`, `sifra`, `uloga`) VALUES
('luk.abaljak@hotmail.com', 'Luka', 'Baljak', 'sifra', 'student'),
('neko@gmail.com', 'Neko', 'Nekic', 'sifra', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `TipDefinicije`
--

CREATE TABLE `TipDefinicije` (
  `TipDefinicijeID` int(5) NOT NULL,
  `Naziv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TipDefinicije`
--

INSERT INTO `TipDefinicije` (`TipDefinicijeID`, `Naziv`) VALUES
(1, 'Osnove PHP-a'),
(2, 'Objektno-orijentisano programiranje u PHP-u'),
(3, 'Rad sa bazama u PHP-u'),
(4, 'AJAX'),
(5, 'XML'),
(6, 'JSON');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Administrator`
--
ALTER TABLE `Administrator`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `Definicija`
--
ALTER TABLE `Definicija`
  ADD PRIMARY KEY (`DefinicijaID`),
  ADD KEY `tipdef_fk` (`TipDefinicijeID`);

--
-- Indexes for table `Korisnik`
--
ALTER TABLE `Korisnik`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `Odgovor`
--
ALTER TABLE `Odgovor`
  ADD PRIMARY KEY (`Email`,`PitanjeID`),
  ADD KEY `pitanje_fk` (`PitanjeID`);

--
-- Indexes for table `Pitanje`
--
ALTER TABLE `Pitanje`
  ADD PRIMARY KEY (`PitanjeID`),
  ADD KEY `DefinicijaID` (`DefinicijaID`),
  ADD KEY `Email` (`Email`);

--
-- Indexes for table `PoznavanjeDefinicije`
--
ALTER TABLE `PoznavanjeDefinicije`
  ADD PRIMARY KEY (`Email`,`DefinicijaID`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `TipDefinicije`
--
ALTER TABLE `TipDefinicije`
  ADD PRIMARY KEY (`TipDefinicijeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Definicija`
--
ALTER TABLE `Definicija`
  MODIFY `DefinicijaID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Pitanje`
--
ALTER TABLE `Pitanje`
  MODIFY `PitanjeID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `TipDefinicije`
--
ALTER TABLE `TipDefinicije`
  MODIFY `TipDefinicijeID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Definicija`
--
ALTER TABLE `Definicija`
  ADD CONSTRAINT `tipdef_fk` FOREIGN KEY (`TipDefinicijeID`) REFERENCES `TipDefinicije` (`TipDefinicijeID`);

--
-- Constraints for table `Odgovor`
--
ALTER TABLE `Odgovor`
  ADD CONSTRAINT `email_fk` FOREIGN KEY (`Email`) REFERENCES `Student` (`email`),
  ADD CONSTRAINT `pitanje_fk` FOREIGN KEY (`PitanjeID`) REFERENCES `Pitanje` (`PitanjeID`);

--
-- Constraints for table `Pitanje`
--
ALTER TABLE `Pitanje`
  ADD CONSTRAINT `pitanje_ibfk_1` FOREIGN KEY (`DefinicijaID`) REFERENCES `Definicija` (`DefinicijaID`),
  ADD CONSTRAINT `pitanje_ibfk_2` FOREIGN KEY (`Email`) REFERENCES `Administrator` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 dec 2022 om 12:19
-- Serverversie: 10.4.27-MariaDB
-- PHP-versie: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `harmonisator`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `facility`
--

CREATE TABLE `facility` (
  `fac_uid` int(11) NOT NULL COMMENT 'versie 0.3',
  `fac_label` varchar(255) DEFAULT NULL,
  `fac_definition` varchar(255) DEFAULT NULL,
  `fac_description` varchar(500) DEFAULT NULL,
  `fac_comment` text DEFAULT NULL,
  `fac_details` text DEFAULT NULL,
  `fac_target_group_code` varchar(255) DEFAULT NULL,
  `fac_the_uid` int(11) DEFAULT NULL,
  `fac_cluster_uid` int(11) DEFAULT NULL,
  `fac_g_provider_uid` int(11) DEFAULT NULL,
  `fac_g_intermediair_uid` int(11) DEFAULT NULL,
  `fac_p_contact_uid` int(11) DEFAULT NULL,
  `fac_input_code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `facility`
--

INSERT INTO `facility` (`fac_uid`, `fac_label`, `fac_definition`, `fac_description`, `fac_comment`, `fac_details`, `fac_target_group_code`, `fac_the_uid`, `fac_cluster_uid`, `fac_g_provider_uid`, `fac_g_intermediair_uid`, `fac_p_contact_uid`, `fac_input_code`) VALUES
(1, 'Verplichte schoolreisjes/kampen', NULL, 'Eerst via school. Voortgezet Onderwijs: alleen bijz. bijstand als sociaal isolement dreigt. Basis Ond: via Leergeld', 'Schoolreisjes', NULL, 'Kind', 8, 1, NULL, 3, NULL, '20221201-1210-excel-0001'),
(4, 'Bijles, huiswerkbegeleiding', NULL, 'aanvraag: www.samenvoorallekinderen.nl; intermediair; als < 110% bijstandsnorm; 110 - 150%: in overleg', 'Schoolkosten', NULL, 'Kind', 8, 2, NULL, 2, 1, '20221201-1210-excel-0002'),
(8, 'PC, laptop, tablet', '', 'Gezinslaptop: voor gezinnen met kinderen op de basisschool. \n', 'Voor kinderen op het Voortgezet Onderwijs kun je bij Baanbrekers een vergoeding voor de laptop aanvragen.', 'Eerst vragen ouders aan school. Daarna aanvragen via https://wegwijsplus.vught.nl/kindpakket. 10 - 17 jarigen.', 'Kind', 8, 3, 0, 3, 0, '20221201-1210-excel-0003'),
(10, 'Fiets', NULL, 'Via www.wegwijsplus.vught.nl/kindpakket. Vanaf 4 jaar. Bakkersrek is apart leverbaar.', 'Vervoer', NULL, 'Kind', 8, 4, NULL, 3, NULL, '20221201-1210-excel-0004'),
(15, 'Peuterzwemmen', NULL, 'aanvraag indienen via school, Wegwijs+, Leergeld, of Bureau Jeugdzorg; max. € 225 (totaalbudget)', 'Zwemlessen', NULL, 'Kind', 13, 5, NULL, 4, 2, '20221201-1210-excel-0005'),
(18, 'Muziek, dans, toneel, tekenles ', NULL, 'aanvraag indienen via school, Wegwijs+, Leergeld, of Bureau Jeugdzorg; max. € 425 (totaalbudget)', 'Cultuur', NULL, 'Kind', 14, 6, NULL, 4, 2, '20221201-1210-excel-0006'),
(23, 'Jarige Job (4 t/m 12 jaar)', NULL, 'aanvraag: www.samenvoorallekinderen.nl; intermediair; als < 110% bijstandsnorm; 110 - 150%: in overleg', 'Verjaardag', NULL, 'Kind', 4, 7, NULL, 2, 1, '20221201-1210-excel-0007'),
(26, 'Vakantieweek / weekend', NULL, 'aanvraag via verwijzers (Gemeente, Voedselbank, Vincentius, Leergeld, etc), niet als particulier', 'Kampen', NULL, 'Kind', 4, 8, NULL, 5, 3, '20221201-1210-excel-0008'),
(36, 'Inloopspreekuur', NULL, 'M.n. voor eenmalige geld-vragen. Is op woensdagmorgen, 10-12 u, Vincentiushuis, Ketting 20, Vught', 'Schulphulpverlening', NULL, 'Ouders', 4, 9, NULL, 5, NULL, '20221201-1210-excel-0009'),
(40, 'Aanmelden', NULL, 'Aanmelden via Wegwijs+. Piet van Doelen indiceert. Aparte leefgeldnorm.', 'Voedselbank', NULL, 'Ouders', 4, 10, NULL, 3, NULL, '20221201-1210-excel-0010'),
(44, 'Vluchtelingenwerk', NULL, 'Bij voorkeur < 1-2 weken van tevoren: naam gezin, evt. contactpersoon, hoe bereikbaar', 'Vluchtelingenwerk', NULL, 'Ouders', 4, 11, NULL, 6, NULL, '20221201-1210-excel-0011');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`fac_uid`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `facility`
--
ALTER TABLE `facility`
  MODIFY `fac_uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'versie 0.3', AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

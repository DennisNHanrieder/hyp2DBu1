-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Erstellungszeit: 04. Apr 2024 um 10:00
-- Server-Version: 11.2.3-MariaDB-1:11.2.3+maria~ubu2204
-- PHP-Version: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `QuizQuest`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PlayerAnswer`
--

CREATE TABLE IF NOT EXISTS `PlayerAnswer` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `QuestionID` int(11) DEFAULT NULL,
  `AnswerID` int(11) DEFAULT NULL,
  `Points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `PlayerAnswer`
--

INSERT INTO `PlayerAnswer` (`ID`, `UserID`, `QuestionID`, `AnswerID`, `Points`) VALUES
(11, 1, 1, 1, 10),
(12, 1, 2, 8, 10),
(13, 1, 3, 12, 10),
(14, 1, 4, 16, 10),
(15, 1, 5, 18, 10),
(16, 2, 1, 1, 10),
(17, 2, 2, 9, 0),
(18, 2, 3, 12, 10),
(19, 2, 4, 16, 10),
(20, 2, 5, 20, 0);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `PlayerAnswer`
--
ALTER TABLE `PlayerAnswer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `QuestionID` (`QuestionID`),
  ADD KEY `AnswerID` (`AnswerID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `PlayerAnswer`
--
ALTER TABLE `PlayerAnswer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `PlayerAnswer`
--
ALTER TABLE `PlayerAnswer`
  ADD CONSTRAINT `PlayerAnswer_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`ID`),
  ADD CONSTRAINT `PlayerAnswer_ibfk_2` FOREIGN KEY (`QuestionID`) REFERENCES `Question` (`ID`),
  ADD CONSTRAINT `PlayerAnswer_ibfk_3` FOREIGN KEY (`AnswerID`) REFERENCES `Answer` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

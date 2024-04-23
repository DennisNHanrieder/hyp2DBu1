-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Erstellungszeit: 22. Apr 2024 um 14:31
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
-- Tabellenstruktur für Tabelle `Answer`
--

CREATE TABLE `Answer` (
  `ID` int(11) NOT NULL,
  `Text` text NOT NULL,
  `isCorrect` tinyint(1) DEFAULT NULL,
  `QuestionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `Answer`
--

INSERT INTO `Answer` (`ID`, `Text`, `isCorrect`, `QuestionID`) VALUES
(1, 'Donau', 1, 1),
(2, 'Inn', 0, 1),
(3, 'Enns', 0, 1),
(4, 'Traun', 0, 1),
(5, 'Attersee', 0, 2),
(6, 'Traunsee', 0, 2),
(7, 'Mondsee', 0, 2),
(8, 'Neusiedler See', 1, 2),
(9, 'Nationalpark Gesäuse', 0, 3),
(10, 'Nationalpark Hohe Tauern', 0, 3),
(11, 'Nationalpark Donau-Auen', 0, 3),
(12, 'Nationalpark Kalkalpen', 1, 3),
(13, 'Wels', 0, 4),
(14, 'Steyr', 0, 4),
(15, 'Gmunden', 0, 4),
(16, 'Melk', 1, 4),
(17, 'Dachstein', 0, 5),
(18, 'Großer Priel', 1, 5),
(19, 'Traunstein', 0, 5),
(20, 'Grimming', 0, 5),
(21, 'Deutschland', 1, 6),
(22, 'Bielefeld', 0, 6),
(23, 'Frankreich', 0, 6),
(24, 'Bayern', 0, 6),
(25, 'Frankreich', 1, 7),
(26, 'An der Nordseeküste am plattdeutschen Strand', 0, 7),
(27, 'Spanien', 0, 7),
(28, 'Aufm Mond', 0, 7),
(29, 'Österreich', 1, 8),
(30, 'Kanada', 0, 8),
(31, 'Kongo', 0, 8),
(32, 'Bielefeld', 0, 8),
(33, 'U.S.A', 1, 9),
(34, 'Soviet Union', 0, 9),
(35, 'Römisches Reich', 0, 9),
(36, 'Bielefeld', 0, 9),
(37, 'Ist keine Hauptstadt', 1, 10),
(38, 'Gibts nicht', 0, 10),
(39, 'In Bielefeld', 0, 10),
(40, 'Kongo', 0, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Game`
--

CREATE TABLE `Game` (
  `ID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Difficulty` enum('easy','medium','hard') DEFAULT NULL,
  `Status` enum('private','public') DEFAULT NULL,
  `JoinCode` varchar(10) NOT NULL,
  `StartedAt` datetime DEFAULT NULL,
  `ClosedAt` datetime DEFAULT NULL,
  `CreaterID` int(11) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `Game`
--

INSERT INTO `Game` (`ID`, `Title`, `Description`, `Category`, `Difficulty`, `Status`, `JoinCode`, `StartedAt`, `ClosedAt`, `CreaterID`, `deletedAt`) VALUES
(1, 'Das große Oberösterreich-Quiz', 'Teste dein Wissen über Oberösterreich.', 'Geo', 'medium', 'public', 'OOEQZ', '2024-04-04 14:54:18', '2024-04-30 00:00:00', 1, NULL),
(2, 'Das große Hauptstadt-Quiz', 'Teste dein Wissen über  Hauptstädte', 'Geografie', 'easy', 'public', 'AOEQZ', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PlayerAnswer`
--

CREATE TABLE `PlayerAnswer` (
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
(11, 1, 1, 2, 10),
(12, 1, 2, 8, 10),
(13, 1, 3, 12, 10),
(14, 1, 4, 16, 10),
(15, 1, 5, 18, 10),
(16, 2, 1, 2, 10),
(17, 2, 2, 9, 0),
(18, 2, 3, 12, 10),
(19, 2, 4, 16, 10),
(20, 2, 5, 20, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Question`
--

CREATE TABLE `Question` (
  `ID` int(11) NOT NULL,
  `Question` text NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Subcategory` varchar(50) DEFAULT NULL,
  `GameID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `Question`
--

INSERT INTO `Question` (`ID`, `Question`, `Image`, `Subcategory`, `GameID`) VALUES
(1, 'Welcher Fluss fließt durch die Landeshauptstadt Linz?', NULL, 'Geografie', 1),
(2, 'Welcher der folgenden Seen liegt nicht in Oberösterreich?', NULL, 'Geografie', 1),
(3, 'Welcher Nationalpark befindet sich teilweise in Oberösterreich?', NULL, 'Geografie', 1),
(4, 'Welche der folgenden Städte ist keine Bezirkshauptstadt in Oberösterreich?', NULL, 'Geografie', 1),
(5, 'Welcher der folgenden Berge ist der höchste in Oberösterreich?', NULL, 'Geografie', 1),
(6, 'Wo liegt Berlin?', NULL, 'Geografie', 2),
(7, 'Wo liegt Paris?', NULL, 'Geografie', 2),
(8, 'Wo liegt Wien?', NULL, 'Geografie', 2),
(9, 'Wo liegt Washington Dc?', NULL, 'Geografie', 2),
(10, 'Wo liegt Bielefeld?', NULL, 'Geografie', 2);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `QuizRanking`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `QuizRanking` (
`QuizTitle` varchar(100)
,`PlayerName` varchar(50)
,`TotalPoints` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `User`
--

CREATE TABLE `User` (
  `ID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `User`
--

INSERT INTO `User` (`ID`, `Username`, `Password`, `Country`) VALUES
(1, 'max', 'password1', 'AUT'),
(2, 'marie', 'password2', 'USA'),
(3, 'marlene', 'password3', 'AUT');

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `usercountry`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `usercountry` (
`Username` varchar(50)
,`Country` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur des Views `QuizRanking`
--
DROP TABLE IF EXISTS `QuizRanking`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hypermedia`@`%` SQL SECURITY DEFINER VIEW `QuizRanking`  AS SELECT `G`.`Title` AS `QuizTitle`, `U`.`Username` AS `PlayerName`, sum(`PA`.`Points`) AS `TotalPoints` FROM (((`PlayerAnswer` `PA` join `Question` `Q` on(`PA`.`QuestionID` = `Q`.`ID`)) join `Game` `G` on(`Q`.`GameID` = `G`.`ID`)) join `User` `U` on(`PA`.`UserID` = `U`.`ID`)) GROUP BY `G`.`ID`, `U`.`ID` ORDER BY `G`.`Title` ASC, sum(`PA`.`Points`) DESC ;

-- --------------------------------------------------------

--
-- Struktur des Views `usercountry`
--
DROP TABLE IF EXISTS `usercountry`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hypermedia`@`%` SQL SECURITY DEFINER VIEW `usercountry`  AS SELECT `User`.`Username` AS `Username`, `User`.`Country` AS `Country` FROM `User` ;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Answer`
--
ALTER TABLE `Answer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `QuestionID` (`QuestionID`);

--
-- Indizes für die Tabelle `Game`
--
ALTER TABLE `Game`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CreaterID` (`CreaterID`);

--
-- Indizes für die Tabelle `PlayerAnswer`
--
ALTER TABLE `PlayerAnswer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `QuestionID` (`QuestionID`),
  ADD KEY `AnswerID` (`AnswerID`);

--
-- Indizes für die Tabelle `Question`
--
ALTER TABLE `Question`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GameID` (`GameID`);

--
-- Indizes für die Tabelle `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Answer`
--
ALTER TABLE `Answer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT für Tabelle `Game`
--
ALTER TABLE `Game`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `PlayerAnswer`
--
ALTER TABLE `PlayerAnswer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `Question`
--
ALTER TABLE `Question`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `User`
--
ALTER TABLE `User`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `Answer`
--
ALTER TABLE `Answer`
  ADD CONSTRAINT `Answer_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `Question` (`ID`);

--
-- Constraints der Tabelle `Game`
--
ALTER TABLE `Game`
  ADD CONSTRAINT `Game_ibfk_1` FOREIGN KEY (`CreaterID`) REFERENCES `User` (`ID`);

--
-- Constraints der Tabelle `PlayerAnswer`
--
ALTER TABLE `PlayerAnswer`
  ADD CONSTRAINT `PlayerAnswer_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`ID`),
  ADD CONSTRAINT `PlayerAnswer_ibfk_2` FOREIGN KEY (`QuestionID`) REFERENCES `Question` (`ID`),
  ADD CONSTRAINT `PlayerAnswer_ibfk_3` FOREIGN KEY (`AnswerID`) REFERENCES `Answer` (`ID`);

--
-- Constraints der Tabelle `Question`
--
ALTER TABLE `Question`
  ADD CONSTRAINT `Question_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `Game` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

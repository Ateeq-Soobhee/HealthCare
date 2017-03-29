-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 17, 2017 at 02:49 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FantasiBPL`
--

-- --------------------------------------------------------

--
-- Table structure for table `BatsMantable`
--

CREATE TABLE `BatsMantable` (
  `Serial` int(4) NOT NULL,
  `PlayerID` int(5) NOT NULL,
  `PlayerName` int(30) NOT NULL,
  `Innings` int(2) NOT NULL,
  `Run` int(3) NOT NULL,
  `StrikeRate` double NOT NULL,
  `4` int(11) NOT NULL,
  `6` int(11) NOT NULL,
  `50` int(2) NOT NULL,
  `100` int(2) NOT NULL,
  `Average` double NOT NULL,
  `HighInnings` int(11) NOT NULL,
  `Runout` int(11) NOT NULL,
  `Catch` int(11) NOT NULL,
  `TotalMatch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Btable`
--

CREATE TABLE `Btable` (
  `serial` int(4) NOT NULL,
  `PlayerID` int(5) NOT NULL,
  `PlayerName` varchar(30) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Action` varchar(10) NOT NULL,
  `Over` int(2) NOT NULL,
  `Wicket` int(2) NOT NULL,
  `5Wicket` int(2) NOT NULL,
  `Catch` int(2) NOT NULL,
  `Runout` int(2) NOT NULL,
  `ECO` double NOT NULL,
  `Average` double NOT NULL,
  `TotalMatch` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `MyTeam`
--

CREATE TABLE `MyTeam` (
  `Serial` int(3) NOT NULL,
  `UserID` int(3) NOT NULL,
  `TeamName` varchar(30) NOT NULL,
  `Player1` varchar(20) NOT NULL,
  `Player2` varchar(20) NOT NULL,
  `Player3` varchar(20) NOT NULL,
  `Player4` varchar(20) NOT NULL,
  `Player5` varchar(20) NOT NULL,
  `Player6` varchar(20) NOT NULL,
  `Player7` varchar(20) NOT NULL,
  `Player8` varchar(20) NOT NULL,
  `Player9` varchar(20) NOT NULL,
  `Player10` varchar(20) NOT NULL,
  `Player11` varchar(20) NOT NULL,
  `Player12` varchar(20) NOT NULL,
  `Player13` varchar(20) NOT NULL,
  `Player14` varchar(20) NOT NULL,
  `Balance` int(6) NOT NULL,
  `Points` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Player`
--

CREATE TABLE `Player` (
  `PlayerID` int(30) NOT NULL,
  `PlayerName` varchar(40) NOT NULL,
  `Speciality` varchar(20) NOT NULL,
  `MarketPrice` int(3) NOT NULL,
  `TeamId` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Player`
--

INSERT INTO `Player` (`PlayerID`, `PlayerName`, `Speciality`, `MarketPrice`, `TeamId`) VALUES
(1, 'Mehedi Maruf', 'Batsman', 4, 1),
(2, 'Evin Lewis', 'Batsman', 7, 1),
(3, 'Nasir Hossain', 'Allrounder', 8, 1),
(4, 'Mosaddek Hossain', 'Batsman', 7, 1),
(5, 'Kumar Sangakkara', 'Wicketkeeper batsman', 12, 1),
(6, 'Dwayne Bravo', 'Allrounder', 11, 1),
(7, 'Andre Russel', 'Allrounder', 10, 0),
(8, 'Shakib Al Hasan ', 'Allrounder', 14, 1),
(9, 'Alauddin Babu', 'Allrounder', 4, 1),
(10, 'Sunjamul Islam', 'Bowler', 3, 1),
(11, 'Abu Jayed', 'Bowler', 7, 0),
(12, 'Ravi Bopara', 'Allrounder', 10, 1),
(13, 'Matt Coles', 'Bowler', 8, 1),
(14, 'Irfan Sukkur', 'Batsman', 3, 1),
(29, 'Nurul hasan', 'Batsman', 5, 2),
(30, 'Mominul Haque', 'Batsman', 7, 2),
(31, 'Sabbir Rahman', 'Batsman', 9, 2),
(32, 'Samit Patel', 'Allrounder', 8, 2),
(33, 'James Franklin', 'Allrounder', 10, 2),
(34, 'Darren Sammy', 'Allrounder', 9, 2),
(35, 'Afif Hossain', 'Batsman', 3, 2),
(36, 'Mehedi hasan', 'Allrounder', 8, 2),
(37, 'Farhad Reza', 'Allrounder', 3, 2),
(38, 'Kesrick Williams', 'Bowler', 8, 2),
(39, 'Nazmul Islam', 'Bowler', 3, 2),
(40, 'Delwar Hossain', 'Bowler', 2, 2),
(41, 'Mohammad Sami', 'Bowler', 8, 2),
(42, 'Umar Akmal', 'Batsman', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Team`
--

CREATE TABLE `Team` (
  `Serial` int(5) NOT NULL,
  `TeamName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Team`
--

INSERT INTO `Team` (`Serial`, `TeamName`) VALUES
(1, 'Dhaka'),
(2, 'Rajshahi');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `UserID` int(3) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `Password` varchar(6) NOT NULL,
  `TeamName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`UserID`, `Name`, `Email`, `Password`, `TeamName`) VALUES
(1, 'Tabib', 'tabib@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `WicketKeeper`
--

CREATE TABLE `WicketKeeper` (
  `Serial` int(3) NOT NULL,
  `PlayerID` int(3) NOT NULL,
  `PlayerName` varchar(30) NOT NULL,
  `Catch` int(2) NOT NULL,
  `Stamp` int(2) NOT NULL,
  `Innings` int(2) NOT NULL,
  `Ranout` int(2) NOT NULL,
  `TotalMatch` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BatsMantable`
--
ALTER TABLE `BatsMantable`
  ADD PRIMARY KEY (`Serial`);

--
-- Indexes for table `Btable`
--
ALTER TABLE `Btable`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `MyTeam`
--
ALTER TABLE `MyTeam`
  ADD PRIMARY KEY (`Serial`);

--
-- Indexes for table `Player`
--
ALTER TABLE `Player`
  ADD PRIMARY KEY (`PlayerID`);

--
-- Indexes for table `Team`
--
ALTER TABLE `Team`
  ADD PRIMARY KEY (`Serial`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `WicketKeeper`
--
ALTER TABLE `WicketKeeper`
  ADD PRIMARY KEY (`Serial`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BatsMantable`
--
ALTER TABLE `BatsMantable`
  MODIFY `Serial` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Btable`
--
ALTER TABLE `Btable`
  MODIFY `serial` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `MyTeam`
--
ALTER TABLE `MyTeam`
  MODIFY `Serial` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Player`
--
ALTER TABLE `Player`
  MODIFY `PlayerID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `Team`
--
ALTER TABLE `Team`
  MODIFY `Serial` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `UserID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `WicketKeeper`
--
ALTER TABLE `WicketKeeper`
  MODIFY `Serial` int(3) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

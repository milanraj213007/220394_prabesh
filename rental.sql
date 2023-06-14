-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 06:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone_number` varchar(255) DEFAULT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `First_Name`, `Last_Name`, `Email`, `Phone_number`, `Address`) VALUES
(1, 'Milan', 'Raj', 'milan@gmail.com', '98177', 'kamalpokhari'),
(2, 'Zilan', 'Maj', 'zilan@gmail.com', '88177', 'ramalpokhari'),
(3, 'Michael', 'Johnson', 'michaeljohnson@gmail.com', '5555555555', '789 Oak Street, Village'),
(4, 'Sophia', 'Brown', 'sophiabrown@gmail.com', '1111111111', '987 Pine Street, County'),
(5, 'Robert', 'Davis', 'robertdavis@gmail.com', '2222222222', '654 Maple Street, State'),
(6, 'John', 'Doe', 'johndoe@gmail.com', '1234567890', '123 Main Street, City'),
(8, 'Emily', 'Smith', 'emilysmith@gmail.com', '9876543210', '456 Elm Street, Town');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Employee_ID` int(11) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone_number` varchar(255) DEFAULT NULL,
  `Position` varchar(255) NOT NULL,
  `Hire_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Employee_ID`, `First_Name`, `Last_Name`, `Email`, `Phone_number`, `Position`, `Hire_Date`) VALUES
(1, 'nare', 'dxt', 'nare@gmail.com', '9812', 'manager', '2022-02-02'),
(2, 'John', 'Smith', 'johnsmith@gmail.com', '1234567890', 'Sales Representative', '2021-01-15'),
(3, 'Emily', 'Johnson', 'emilyjohnson@gmail.com', '9876543210', 'Marketing Coordinator', '2023-03-10'),
(4, 'Michael', 'Brown', 'michaelbrown@gmail.com', '5555555555', 'Software Engineer', '2022-09-01'),
(5, 'Sophia', 'Davis', 'sophiadavis@gmail.com', '9876543210', 'Human Resources Manager', '2023-04-20'),
(6, 'Robert', 'Wilson', 'robertwilson@gmail.com', '1234567890', 'Financial Analyst', '2021-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `G_ID` int(11) NOT NULL,
  `Genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`G_ID`, `Genre`) VALUES
(1, 'Drama'),
(2, 'Crime'),
(3, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `Movie_ID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Release_Year` date DEFAULT NULL,
  `Director` varchar(255) NOT NULL,
  `Rating` int(11) NOT NULL,
  `G_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`Movie_ID`, `Title`, `Release_Year`, `Director`, `Rating`, `G_ID`) VALUES
(1, 'The Shawshank Redemption', '0000-00-00', 'Frank Darabont', 9, 1),
(2, 'The Godfather', '0000-00-00', 'Francis Ford Coppola', 9, 1),
(3, 'Pulp Fiction', '0000-00-00', 'Quentin Tarantino', 9, 2),
(4, 'The Dark Knight', '0000-00-00', 'Christopher Nolan', 9, 2),
(5, 'Fight Club', '0000-00-00', 'David Fincher', 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `Rental_ID` int(11) NOT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `Employee_ID` int(11) DEFAULT NULL,
  `Rental_Date` date NOT NULL,
  `Return_Date` date DEFAULT NULL,
  `Movie_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`G_ID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`Movie_ID`),
  ADD KEY `G_ID` (`G_ID`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`Rental_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Employee_ID` (`Employee_ID`),
  ADD KEY `Movie_ID` (`Movie_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `Employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `G_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `Movie_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `Rental_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`G_ID`) REFERENCES `genre` (`G_ID`);

--
-- Constraints for table `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `rentals_ibfk_2` FOREIGN KEY (`Employee_ID`) REFERENCES `employees` (`Employee_ID`),
  ADD CONSTRAINT `rentals_ibfk_3` FOREIGN KEY (`Movie_ID`) REFERENCES `movies` (`Movie_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

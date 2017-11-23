-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2017 at 07:02 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suwasetha`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `AppointmentID` varchar(100) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Telephone` int(10) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `DoctorName` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `DoctorID` varchar(50) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `Message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`AppointmentID`, `FullName`, `Telephone`, `Address`, `DoctorName`, `Date`, `Time`, `DoctorID`, `PatientID`, `Message`) VALUES
('ap001', 'Praneeth Kumarasinghe', 713378982, 'Colombo road, Galle', 'Nandana Keerthi', '2017-09-29', '18:00:00', 'd007', 'pt004', 'Who are the Dentists in the organization'),
('ap002', 'Sasindu Shanaka', 712234579, 'Galle road, Ahangama.', 'Pradeep Arachchige', '2017-08-02', '15:00:00', 'd001', 'pt003', 'Please Inform the all Doctor details with their categories'),
('ap005', 'Livini Kalpani', 782345678, 'Ahangama West, Ahangama.', 'Janaka Kandambhi', '2017-10-18', '18:50:00', '', 'pt003', 'Please inform me other time this doctor doing consultation'),
('ap009', 'Samith Batagoda', 701234567, 'No 30, Main road, Ahangama, Galle.', 'Malaka Udagamage', '2017-10-11', '13:00:00', '', '', 'I am not a regular patient and how to get membership'),
('ap010', 'Iresh Piyatissa', 752345678, 'No 50, Galle Road, Kataluwa', 'prasad maduwantha', '2017-11-01', '15:30:00', 'd001', 'pt002', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` varchar(50) NOT NULL,
  `DoctorName` varchar(100) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Experience` varchar(100) NOT NULL,
  `WorkDays` varchar(150) NOT NULL,
  `WorkingHours` varchar(100) NOT NULL,
  `Telephone` int(10) NOT NULL,
  `Email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `DoctorName`, `Category`, `Experience`, `WorkDays`, `WorkingHours`, `Telephone`, `Email`) VALUES
('d001', 'Malaka Udagamage', 'Cardiologist', '5 year', 'mon-fri', '9:00 - 16:00', 712345612, 'malaka@gmail.com'),
('d002', 'Pradeep Gammachchige', 'Allergist', '5 Years', 'Mon-sat', '8.30am-4.30pm', 76728292, 'pradeep@hotmail.com'),
('doc001', 'Nandana Keerthi', 'Cardiologist', '10 Years Experience in london', 'Mon-Wed', '4.00pm-8.00pm', 778190281, 'docnk@gmail.com'),
('doc004', 'Saman Chaminda', 'Audiologist', '25 years experience in government hospital', 'Mon-Thu', '10.00am-2.00pm', 7588299, 'docsamanaudio@gmail.com'),
('doc11122', 'Iresh Piyatissa', 'Dentist', '5 Years Experience in Private hospital', 'Mon-Thu', '4.45pm-9.30pm', 782311231, 'iresh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `MedicineID` varchar(50) NOT NULL,
  `MedicineName` varchar(100) NOT NULL,
  `Price` int(5) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `PatientID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `FullName` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Message` varchar(200) NOT NULL,
  `PatientID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatentID` varchar(50) NOT NULL,
  `FullName` varchar(150) NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Disease` varchar(100) NOT NULL,
  `Telephone` int(10) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Notes` varchar(200) NOT NULL,
  `DoctorID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_medicine`
--

CREATE TABLE `patient_medicine` (
  `PatientID` varchar(50) NOT NULL,
  `MedicineID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` varchar(20) NOT NULL,
  `PaymentType` varchar(50) NOT NULL,
  `Amount` int(10) NOT NULL,
  `PaidAmount` int(10) NOT NULL,
  `DueAmount` int(10) NOT NULL,
  `PaidDate` date NOT NULL,
  `PaidTime` time NOT NULL,
  `PatientID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `PaymentType`, `Amount`, `PaidAmount`, `DueAmount`, `PaidDate`, `PaidTime`, `PatientID`) VALUES
('p001', 'Cash', 10000, 5000, 5000, '2017-10-03', '06:00:00', 'pt002'),
('p002', 'Card', 3000, 3000, 0, '2017-08-10', '10:00:00', 'pt001'),
('p003', 'Cash', 1000, 1000, 0, '2017-11-15', '16:30:20', 'pt001'),
('p004', 'Cheque', 20000, 10000, 10000, '2017-10-02', '11:22:10', 'pt003'),
('p005', 'Cash', 500, 500, 0, '2017-11-01', '21:43:34', 'pt005');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ServiceID` varchar(50) NOT NULL,
  `ServiceType` varchar(50) NOT NULL,
  `ServiceName` varchar(50) NOT NULL,
  `SpecialNotes` varchar(150) NOT NULL,
  `StaffID` varchar(50) NOT NULL,
  `DoctorID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` varchar(50) NOT NULL,
  `MemberName` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Age` int(5) NOT NULL,
  `Telephone` int(10) NOT NULL,
  `MemberType` varchar(50) NOT NULL,
  `WorkDays` varchar(50) NOT NULL,
  `Holidays` varchar(50) NOT NULL,
  `WorkingHours` varchar(50) NOT NULL,
  `JobConnectedDate` date NOT NULL,
  `Salary` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userreg`
--

CREATE TABLE `userreg` (
  `UserID` varchar(50) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `UserType` varchar(50) NOT NULL,
  `Telephone` int(10) NOT NULL,
  `StaffID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userreg`
--

INSERT INTO `userreg` (`UserID`, `FullName`, `Password`, `UserType`, `Telephone`, `StaffID`) VALUES
('u001', 'praneeth Kumarasinghe', '12345', 'Admin', 712234598, 's002'),
('u002', 'Madusanka Nayanajith', '99999', 'Accountant', 915688991, 'st007'),
('u004', 'Iresh Piyatissa', '56789', 'Receptionist', 781234567, 'st003'),
('u005', 'Tharuka Nawarathne', '11111', 'Accountant', 712345632, 'st006'),
('u111', 'Eranga Madushan', '22222', 'Cashier', 773379082, 'st006');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppointmentID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`MedicineID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`FullName`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatentID`);

--
-- Indexes for table `patient_medicine`
--
ALTER TABLE `patient_medicine`
  ADD PRIMARY KEY (`PatientID`,`MedicineID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ServiceID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `userreg`
--
ALTER TABLE `userreg`
  ADD PRIMARY KEY (`UserID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2019 at 08:36 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `check_in` varchar(100) DEFAULT NULL,
  `check_out` varchar(100) NOT NULL,
  `total_price` int(10) NOT NULL,
  `remaining_price` int(10) NOT NULL,
  `payment_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `customer_id`, `room_id`, `booking_date`, `check_in`, `check_out`, `total_price`, `remaining_price`, `payment_status`) VALUES
(1, 1, 5, '2019-02-08 09:45:17', '13-11-2017', '15-11-2017', 3000, 0, 1),
(2, 2, 2, '2019-02-09 10:46:04', '13-11-2017', '16-11-2017', 6000, 0, 1),
(3, 3, 2, '2019-02-09 11:49:19', '11-11-2017', '14-11-2017', 6000, 0, 1),
(4, 4, 7, '2019-02-10 11:50:24', '11-11-2017', '15-11-2017', 10000, 0, 1),
(5, 5, 13, '2019-02-10 11:59:10', '17-11-2017', '20-11-2017', 12000, 0, 1),
(6, 6, 4, '2019-02-11 18:07:08', '12-02-2019', '16-02-2019', 15000, 0, 1),
(7, 7, 7, '2019-02-11 18:14:03', '11-02-2019', '14-02-2019', 8000, 0, 1),
(8, 8, 12, '2019-02-11 18:15:48', '14-02-2019', '19-02-2019', 18000, 0, 0),
(9, 9, 13, '2019-02-11 18:52:39', '19-02-2019', '27-02-2019', 27000, 0, 1),
(10, 10, 3, '2019-02-11 19:04:45', '12-02-2019', '13-02-2019', 4000, 0, 1),
(11, 11, 6, '2019-02-11 19:20:00', '14-02-2019', '22-02-2019', 13500, 0, 1),
(12, 12, 2, '2019-02-12 02:57:31', '14-02-2019', '17-02-2019', 6000, 0, 1),
(13, 13, 5, '2019-02-12 03:05:20', '12-02-2019', '16-02-2019', 5000, 5000, 0),
(14, 14, 11, '2019-02-12 03:43:23', '12-02-2019', '16-02-2019', 10000, 0, 1),
(15, 15, 9, '2019-02-22 14:49:35', '08-02-2019', '12-02-2019', 0, 0, 0),
(16, 16, 6, '2019-02-25 11:59:10', '25-02-2019', '26-02-2019', 3000, 0, 1),
(17, 17, 10, '2019-02-25 12:12:00', '26-02-2019', '27-02-2019', 3000, 0, 1),
(18, 18, 6, '2019-03-22 07:16:00', '22-03-2019', '23-03-2019', 3000, 3000, 0),
(19, 19, 3, '2019-03-22 09:45:38', '29-03-2019', '30-03-2019', 0, 0, 0),
(20, 20, 2, '2019-04-01 17:48:14', '01-04-2019', '02-04-2019', 3000, 0, 1),
(21, 21, 2, '2019-04-01 18:32:00', '05-04-2019', '07-04-2019', 4500, 4500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complainant_name` varchar(100) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `complaint` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resolve_status` tinyint(1) NOT NULL,
  `resolve_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `budget` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `complainant_name`, `complaint_type`, `complaint`, `created_at`, `resolve_status`, `resolve_date`, `budget`) VALUES
(1, 'Arun', 'Room Windows', 'Room Windows', '2019-02-09 11:51:24', 1, '2019-04-01 18:12:51', 1000),
(2, 'Sumangal', 'Light', 'Light', '2019-02-09 11:51:44', 1, '2019-04-01 18:13:13', 10000),
(3, 'Rajeev Kumar', 'Water', 'Water Crisis on Bathroom', '2019-02-09 12:01:17', 1, '2019-04-01 18:12:11', 1500),
(4, 'Aniket', 'Water', 'Water in boooooo', '2019-02-09 13:05:49', 0, '2019-04-01 18:12:26', NULL),
(5, 'Arun', 'Light', 'Light', '2019-02-25 12:52:52', 0, '2019-02-25 12:52:52', NULL),
(14, 'Hello', 'XYZ', 'cdfhghb', '2019-02-25 13:38:02', 0, '2019-02-25 13:38:02', NULL),
(15, 'Arun', 'Water ', 'Water', '2019-03-22 07:16:52', 1, '2019-03-22 07:17:17', 15000),
(16, 'ABC', 'Light', 'Light ', '2019-04-01 18:25:41', 0, '2019-04-01 18:25:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_card_type_id` int(10) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `contact_no`, `email`, `id_card_type_id`, `id_card_no`, `address`) VALUES
(1, 'Ravi Kumar Patel', 8775566122, '201452019@iiitvadodara.ac.in', 1, '422510099122', 'Ahmedabad'),
(2, 'Aniket Raj', 9887778878, '201452042@iiitvadodara.ac.in', 2, '422510099122', 'Ahmedabad'),
(3, 'Sunny Sunny', 9887665441, 'ajitkumarjain123@gmail.com', 1, '422510099122', 'Jaipur'),
(4, 'Uday  Kumar', 9888755544, '201452018@iiitvadoara.ac.in', 3, '0', 'Gujarat'),
(5, 'Prem Chand Saini', 9887554425, 'premchandsaini779@gmail.com', 1, '422510099122', 'Ahmedabad'),
(6, 'Arun Nimma', 9876543210, 'Arun@gmail.com', 3, '1234567890', 'Mumbai'),
(7, 'Akash kandare', 1234567890, 'Akash1@gmail.com', 3, 'abc/543210', 'Mumbai'),
(8, 'Sanket prabhu', 9876543199, 'Sanket@gmail.com', 1, '123456789000', 'mumbai'),
(9, 'Arunsksnkn Nimma', 4556676653222, 'abc@gmail.com', 3, '5656788765634', '4gbfvvfvd'),
(10, 'djkdj epokfek', 345576766453, 'dkljcdkjck@gmail.com', 2, 'kfkfkfkejfkejfkejfke', 'feojejfkef'),
(11, 'wekenkfnfn klekemkem', 434565676756, 'efmdfmd@gmail.com', 4, 'dkkeffkfkfkefkmfklmf', 'mdmdmkm'),
(12, 'Akash K', 1234567890, 'Akash1@gmail.com', 3, '45676778999', 'Mumbai'),
(13, 'Anil Nimma', 12656666664, 'Anil@gamil.com', 3, '567786434465', 'Mumbai'),
(14, 'Sanket Prabhu', 9876543210, 'sanket@gmail.com', 3, '45466765536', 'Mumbai'),
(15, 'Arun9 dklfkfk', 904895849854, 'abc@gmail.com', 3, 'hedkdk/873', 'Delhi'),
(16, 'Arun Nimma', 1234567890, 'abc@gmail.com', 2, '323434567778', 'Nizamabad'),
(17, 'Arun NImma', 9892610894, 'NImmaarun9@gmail.com', 1, '324566878663434', 'SIon,Mumbai'),
(18, 'Akash Khandare', 2344576783, 'Akash1@gmail.com', 2, '454rerreeefrr', 'Mumbai'),
(19, 'akash khandare', 9920806163, 'akashkhandare62@gmail.com', 1, '302548333043', 'room no no 5,shiv narayn chawl,dhravi cross road,dharavi,mumbai 400017'),
(20, 'XYZ MNO', 1234567890, 'XYZ@gmail.com', 1, '3556766435426', 'Delhi'),
(21, 'Sanket Prabhu', 32446678333, 'Sanket@gmail.com', 3, '343rfdwder3ed', 'Kolkata\n');

-- --------------------------------------------------------

--
-- Table structure for table `id_card_type`
--

CREATE TABLE `id_card_type` (
  `id_card_type_id` int(10) NOT NULL,
  `id_card_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_card_type`
--

INSERT INTO `id_card_type` (`id_card_type_id`, `id_card_type`) VALUES
(1, 'Aadhar Card'),
(2, 'Voter Id Card'),
(3, 'Pan Card'),
(4, 'Driving License');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `room_type_id` int(10) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `check_in_status` tinyint(1) NOT NULL,
  `check_out_status` tinyint(1) NOT NULL,
  `deleteStatus` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type_id`, `room_no`, `status`, `check_in_status`, `check_out_status`, `deleteStatus`) VALUES
(1, 2, 'A-101', NULL, 0, 0, 1),
(2, 2, 'A-102', 1, 0, 1, 0),
(3, 3, 'A-103', 1, 0, 1, 0),
(4, 4, 'A-104', NULL, 0, 1, 0),
(5, 1, 'B-101', 1, 0, 1, 0),
(6, 2, 'B-102', 1, 0, 1, 0),
(7, 3, 'B-103', NULL, 0, 1, 0),
(8, 4, 'B-104', NULL, 0, 0, 0),
(9, 1, 'C-101', 1, 1, 0, 0),
(10, 2, 'C-102', NULL, 0, 1, 0),
(11, 3, 'C-103', NULL, 0, 1, 0),
(12, 4, 'C-104', 1, 1, 0, 0),
(13, 4, 'D-101', NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(10) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `max_person` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type`, `price`, `max_person`) VALUES
(1, 'Single', 1000, 1),
(2, 'Double', 1500, 2),
(3, 'Triple', 2000, 3),
(4, 'Family', 3000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(10) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `shift_timing` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift`, `shift_timing`) VALUES
(1, 'Morning', '4:00 AM - 10:00 AM'),
(2, 'Day', '10:00 AM - 4:00PM'),
(3, 'Evening', '4:00 PM - 10:00 PM'),
(4, 'Night', '10:00PM - 4:00AM');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `staff_type_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `id_card_type` int(11) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `salary` bigint(20) NOT NULL,
  `joining_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`emp_id`, `emp_name`, `staff_type_id`, `shift_id`, `id_card_type`, `id_card_no`, `address`, `contact_no`, `salary`, `joining_date`, `updated_at`) VALUES
(1, 'Arun Nimma', 1, 3, 1, '422510099122', 'Jaipur, Rajasthan', 987554425, 100000, '2019-02-06 10:46:20', '2019-03-22 08:31:01'),
(2, 'Sanket Prabhu', 3, 3, 1, '422510099122', 'Jaipur, Rajasthan', 976543211, 10000, '2019-02-06 10:47:00', '2019-02-25 12:27:20'),
(3, 'Akash kanndare', 2, 4, 1, '422510099122', 'Ap #897-1459 Quam Avenue', 976543111, 10000, '2019-02-06 05:40:18', '2019-02-25 12:20:05'),
(4, 'Deepak Goyal', 2, 1, 2, '0', 'Ap #897-1459 Quam Avenue', 987654321, 100000, '2019-02-06 05:40:55', '2019-02-25 12:23:56'),
(5, 'Sharad Patel', 4, 1, 1, '12345341212', 'Ap #897-1459 Quam Avenue', 9876543212, 10000, '2019-02-06 05:41:31', '2019-02-11 19:38:07'),
(6, 'Vijay Anand', 3, 3, 3, '0', 'Ap #897-1459 Quam Avenue', 1234567890, 100000, '2019-02-06 05:42:03', '2019-02-11 19:40:39'),
(7, 'Lalit  Kumar', 2, 2, 1, '422510099122', 'Ap #897-1459 Quam Avenue', 12322332231, 100000, '2019-02-06 05:42:35', '2019-02-11 19:41:06'),
(8, 'Rajeev Kumar Singh', 1, 2, 4, '0', 'Ap #897-1459 Quam Avenue', 976543456, 10000, '2019-02-07 05:43:13', '2019-02-11 19:56:02'),
(9, 'Himanshu  Soni', 3, 2, 4, '0', 'Ap #897-1459 Quam Avenue', 98765432123, 100000, '2019-02-07 05:43:49', '2019-02-11 19:41:40'),
(10, 'Sandeep Merutha', 5, 2, 1, '422510099122', 'Ap #897-1459 Quam Avenue', 9887665534, 1000, '2019-02-07 06:30:45', '2019-02-11 19:41:58'),
(11, 'Aniket Raj', 3, 2, 1, '0', 'Ap #897-1459 Quam Avenue', 9887556655, 10000, '2019-02-08 07:04:03', '2019-02-11 19:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `staff_type`
--

CREATE TABLE `staff_type` (
  `staff_type_id` int(10) NOT NULL,
  `staff_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_type`
--

INSERT INTO `staff_type` (`staff_type_id`, `staff_type`) VALUES
(1, 'Manager'),
(2, 'Cleaning'),
(3, 'Reception'),
(4, 'Cook'),
(5, 'Waiter');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Job` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `Job`, `password`, `created_at`) VALUES
(1, 'Akash k', 'Akash', 'Akash1@gmail.com', 'Manager', 'b0baee9d279d34fa1dfd71aadb908c3f', '2019-02-10 09:57:20'),
(2, 'Arun Nimma', 'Arun', 'Arun@gmail.com', 'Admin', '25f9e794323b453885f5181f1b624d0b', '2019-02-09 09:51:28'),
(3, 'Sanket Prabhu', 'Sanket', 'Sanket@gmail.com', 'Manager', '01cfcd4f6b8770febfb40cb906715822', '2019-02-10 12:49:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id_type` (`id_card_type_id`);

--
-- Indexes for table `id_card_type`
--
ALTER TABLE `id_card_type`
  ADD PRIMARY KEY (`id_card_type_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `id_card_type` (`id_card_type`),
  ADD KEY `shift_id` (`shift_id`),
  ADD KEY `staff_type_id` (`staff_type_id`);

--
-- Indexes for table `staff_type`
--
ALTER TABLE `staff_type`
  ADD PRIMARY KEY (`staff_type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `id_card_type`
--
ALTER TABLE `id_card_type`
  MODIFY `id_card_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shift_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staff_type`
--
ALTER TABLE `staff_type`
  MODIFY `staff_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_card_type_id`) REFERENCES `id_card_type` (`id_card_type_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_card_type`) REFERENCES `id_card_type` (`id_card_type_id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`),
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`staff_type_id`) REFERENCES `staff_type` (`staff_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

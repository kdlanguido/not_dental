-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 09:33 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projects_not_dental`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointments`
--

CREATE TABLE `tbl_appointments` (
  `id` int(11) NOT NULL,
  `availability_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_booked` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_appointments`
--

INSERT INTO `tbl_appointments` (`id`, `availability_id`, `user_id`, `date_booked`, `status`) VALUES
(80, 1, 9, '2022-05-02', 'completed'),
(81, 2, 9, '2022-02-01', 'completed'),
(82, 3, 9, '2022-05-04', 'no-show');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment_cancellation_reason`
--

CREATE TABLE `tbl_appointment_cancellation_reason` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_appointment_cancellation_reason`
--

INSERT INTO `tbl_appointment_cancellation_reason` (`id`, `appointment_id`, `reason`) VALUES
(1, 71, 'test'),
(2, 74, 'test'),
(3, 75, 'test'),
(4, 76, 'testqwe'),
(5, 77, 'test'),
(6, 80, 'test'),
(7, 81, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment_details`
--

CREATE TABLE `tbl_appointment_details` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_appointment_details`
--

INSERT INTO `tbl_appointment_details` (`id`, `service_id`, `appointment_id`) VALUES
(63, 20, 40),
(64, 20, 41),
(65, 20, 42),
(66, 23, 43),
(67, 1, 44),
(68, 1, 45),
(69, 3, 45),
(70, 20, 45),
(71, 20, 46),
(72, 20, 47),
(73, 20, 48),
(74, 20, 49),
(75, 20, 50),
(76, 20, 51),
(77, 20, 52),
(78, 1, 53),
(79, 20, 54),
(80, 20, 55),
(81, 1, 56),
(82, 20, 57),
(83, 2, 58),
(84, 3, 58),
(85, 2, 59),
(86, 3, 59),
(87, 20, 60),
(88, 20, 61),
(89, 20, 62),
(90, 20, 63),
(91, 20, 64),
(92, 20, 65),
(93, 2, 66),
(94, 3, 66),
(95, 20, 67),
(96, 20, 68),
(97, 20, 69),
(98, 20, 70),
(99, 2, 71),
(100, 3, 71),
(101, 20, 73),
(102, 20, 74),
(103, 20, 75),
(104, 20, 76),
(105, 20, 77),
(106, 20, 78),
(107, 20, 79),
(108, 20, 80),
(109, 20, 81),
(110, 1, 82);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_available_appointments`
--

CREATE TABLE `tbl_available_appointments` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `services` varchar(50) NOT NULL DEFAULT 'ALL',
  `slot` int(11) NOT NULL DEFAULT 10,
  `physician` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_available_appointments`
--

INSERT INTO `tbl_available_appointments` (`id`, `date`, `time`, `services`, `slot`, `physician`) VALUES
(1, '2022-05-04', '7:00 - 8:00 AM', 'ALL', 9, 'Dra. Catherine Marcaig Jr Felisidad'),
(2, '2022-05-04', '8:00 - 9:00 AM', 'ALL', 10, 'Dra. Catherine Marcaig Jr Felisidad'),
(3, '2022-05-04', '9:00 - 11:00 AM', 'ALL', 10, 'Dra. Catherine Marcaig Jr Felisidad'),
(4, '2022-05-04', '12:00 - 1:00 PM', 'ALL', 10, 'Dra. Catherine Marcaig Jr Felisidad'),
(5, '2022-05-04', '1:00 - 3:00 PM', 'ALL', 10, 'Dra. Catherine Marcaig Jr Felisidad'),
(6, '2022-05-04', '3:00 - 5:00 PM', 'ALL', 10, 'Dra. Catherine Marcaig Jr Felisidad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lab_results`
--

CREATE TABLE `tbl_lab_results` (
  `id` int(11) NOT NULL,
  `dir` varchar(100) NOT NULL,
  `appointment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lab_results`
--

INSERT INTO `tbl_lab_results` (`id`, `dir`, `appointment_id`) VALUES
(4, 'APRES-49', 49),
(5, 'APRES-49', 49),
(6, 'APRES-49', 49),
(7, 'APRES-49', 49),
(8, 'APRES-49', 49),
(9, 'APRES-49', 49),
(10, 'APRES-49', 49),
(11, 'APRES-49', 49),
(12, 'APRES-49', 49);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_packages`
--

CREATE TABLE `tbl_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `sms` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_packages`
--

INSERT INTO `tbl_packages` (`id`, `name`, `price`, `description`, `status`, `picture`, `sms`) VALUES
(1, 'Basic 3', 300, 'BASIC 3 contains CHEST X-RAY, URINE ANALYSIS, AND FECALYSIS. This package includes a projection radiograph of the chest to detect problems affecting the chest, and tests on a stool (feces) sample to diagnose conditions affecting the digestive tract.', 'OK', '0', 0),
(2, 'Basic 5', 500, 'BASIC 5 contains a CHEST X-RAY, URINE, FECES, CBC, AND PHYSICAL EXAM. This package includes an analysis radiograph of the chest to diagnose conditions affecting the chest, a urine analysis to detect abnormalities indicative of disease or infection, stool (feces) testing to diagnose conditions affecting the digestive tract, blood cell counts to assess overall health.', 'OK', '0', 0),
(3, 'Basic 5 with Hepa B', 750, '', 'OK', '0', 0),
(4, 'Basic 5 with Drug Test', 800, '', 'OK', '0', 0),
(5, 'Complete Medical Exam', 1050, '', 'OK', '0', 0),
(6, 'Magic 5', 375, '', 'OK', '0', 0),
(7, 'Magic 8', 825, '', 'OK', '0', 0),
(8, 'Magic 10', 1125, '', 'OK', '0', 0),
(9, 'Magic 12', 1500, '', 'OK', '0', 0),
(10, 'Magic Plus', 1950, '', 'OK', 'src/uploaded/dental_clinic/package_pictures/275485425_1642370326109169_4198055818920009956_n.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_services`
--

CREATE TABLE `tbl_package_services` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_package_services`
--

INSERT INTO `tbl_package_services` (`id`, `service_id`, `package_id`) VALUES
(2, 2, 1),
(3, 3, 1),
(4, 1, 2),
(5, 4, 2),
(6, 2, 2),
(7, 3, 2),
(8, 5, 2),
(9, 10, 6),
(10, 11, 6),
(11, 12, 6),
(12, 13, 6),
(13, 14, 6),
(14, 10, 7),
(15, 11, 7),
(16, 12, 7),
(17, 13, 7),
(18, 14, 7),
(19, 15, 7),
(20, 16, 7),
(21, 17, 7),
(22, 10, 8),
(23, 11, 8),
(24, 12, 8),
(25, 13, 8),
(26, 14, 8),
(27, 15, 8),
(28, 16, 8),
(29, 17, 8),
(30, 18, 8),
(31, 19, 8),
(32, 10, 9),
(33, 11, 9),
(34, 12, 9),
(35, 13, 9),
(36, 14, 9),
(37, 15, 9),
(38, 16, 9),
(39, 17, 9),
(40, 18, 9),
(41, 19, 9),
(42, 28, 9),
(43, 29, 9),
(44, 10, 10),
(45, 11, 10),
(46, 12, 10),
(47, 13, 10),
(48, 14, 10),
(49, 15, 10),
(50, 16, 10),
(51, 17, 10),
(52, 18, 10),
(53, 19, 10),
(54, 28, 10),
(55, 29, 10),
(56, 1, 10),
(57, 30, 10),
(120, 32, 13),
(121, 30, 13),
(123, 29, 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_sms`
--

CREATE TABLE `tbl_package_sms` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `sms_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_package_sms`
--

INSERT INTO `tbl_package_sms` (`id`, `package_id`, `sms_id`) VALUES
(3, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile`
--

CREATE TABLE `tbl_profile` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `m_name` varchar(50) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `house_no` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `brgy` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `contact_no` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_profile`
--

INSERT INTO `tbl_profile` (`id`, `f_name`, `m_name`, `l_name`, `gender`, `house_no`, `street`, `brgy`, `city`, `province`, `user_id`, `age`, `bdate`, `contact_no`, `email`, `picture`) VALUES
(10, 'Arthur', 'M', 'Nery', 'Male', '2', 'Scorpion', 'Tibay', 'Manila', 'Mindanao', 9, 23, '1998-06-04', '09055297208', 'kdlanguido@gmail.com', 'src/uploaded/dental_clinic/profile_pictures/275556878_485765379909044_671446762147944174_n.png'),
(11, 'Jasmyn Icee', 'N/A', 'Languido', 'female', '24', 'Bonifacio High Street', 'Fort Bonifacio', 'Taguig', 'Metro Manila', 2, 23, '1998-06-04', '09055297208', 'kdlanguido@gmail.com', 'src/uploaded/dental_clinic/profile_pictures/275485425_1642370326109169_4198055818920009956_n.jpg'),
(21, 'test', 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, '', 'src/uploaded/dental_clinic/profile_pictures/123.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration_otp`
--

CREATE TABLE `tbl_registration_otp` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_registration_otp`
--

INSERT INTO `tbl_registration_otp` (`id`, `email`, `code`) VALUES
(20, 'kdlanguido@gmail.com', '121614'),
(21, 'kdlanguido@gmail.com', '646705'),
(22, 'kdlanguido@gmail.com', '272849'),
(23, 'alyastubigman@gmail.com', '508350'),
(24, 'jasmyniceecancino@gmail.com', '628034'),
(25, 'jasmyniceecancino@gmail.com', '145100'),
(26, 'jasmyniceecancino@gmail.com', '670745'),
(27, 'kdkdkdk@gmail.com', '350278'),
(28, 'jaydlangu2ido@gmail.com', '721137'),
(29, 'aweqwe@gmail.com', '757312'),
(30, 'aweqwe@gmail.com', '825917'),
(31, 'jaydlanguido2@gmail.com', '180032'),
(32, 'jaydlanguido2@gmail.com', '895766'),
(33, 'jaydlanguido2@gmail.com', '790016'),
(34, 'jaydlanguid2o@gmail.com', '209772'),
(35, 'jaydlanguidqweo@gmail.com', '974591'),
(36, 'q@gmail.com', '356032'),
(37, 'qwe@gmail.com', '589480'),
(38, 'qwe@gmail.com', '170817'),
(39, 'qwe@gmail.com', '546856');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `service` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` double NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `service`, `status`, `category`, `price`) VALUES
(1, 'Chest X-ray', 'OK', 'X-ray', 1000),
(2, 'Urinalysis', 'OK', 'Laboratory', 2),
(3, 'Fecalysis', 'OK', 'Laboratory', 1),
(4, 'CBC', 'OK', 'Laboratory', 1),
(5, 'Physical Exam', 'OK', 'Others', 500),
(6, 'Hepa B', 'OK', 'Laboratory', 2000),
(7, 'Drug Test', 'OK', 'Others', 1),
(8, 'Blood Typing w/ RH', 'OK', 'Laboratory', 1),
(9, 'VDRL', 'OK', 'Laboratory', 1),
(10, 'FBS', 'OK', 'Blood Chemistry', 1),
(11, 'BUN', 'OK', 'Blood Chemistry', 1),
(12, 'Creatinine', 'OK', 'Blood Chemistry', 1),
(13, 'Uric Acid', 'OK', 'Blood Chemistry', 1),
(14, 'Cholesterol', 'OK', 'Blood Chemistry', 1),
(15, 'HDL (good cholesterol)', 'OK', 'Blood Chemistry', 1),
(16, 'LDL (bad cholesterol)', 'OK', 'Blood Chemistry', 1),
(17, 'Triglycerides', 'OK', 'Blood Chemistry', 1),
(18, 'SGOT', 'OK', 'Blood Chemistry', 1),
(19, 'SGPT', 'OK', 'Blood Chemistry', 1),
(20, 'Chest AP/LAT', 'OK', 'X-ray', 1),
(21, 'APICO-LORDOTIC', 'OK', 'X-ray', 1),
(22, 'Pelvic', 'OK', 'Ultrasound', 1),
(23, 'BPS', 'OK', 'Ultrasound', 1),
(24, 'TVS', 'OK', 'Ultrasound', 1),
(25, 'Whole Abdomen', 'OK', 'Ultrasound', 1),
(26, 'KUB/PROSTATE', 'OK', 'Ultrasound', 1),
(27, 'HBT/PANCREAS', 'OK', 'Ultrasound', 1),
(28, 'Sodium', 'OK', 'Others', 1),
(29, 'Potassium', 'OK', 'Others', 1),
(30, 'ECG', 'OK', 'Others', 1),
(32, 'TEST', 'OK', 'X-ray', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_sms`
--

CREATE TABLE `tbl_service_sms` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `sms_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_service_sms`
--

INSERT INTO `tbl_service_sms` (`id`, `service_id`, `sms_id`) VALUES
(1, 1, 1),
(2, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_templates`
--

CREATE TABLE `tbl_sms_templates` (
  `id` int(11) NOT NULL,
  `sms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sms_templates`
--

INSERT INTO `tbl_sms_templates` (`id`, `sms`) VALUES
(1, 'Hi! This is Cheronzelle Clinic please be informed that your appointment date is on (@date and @time). \n\n\n\nPlease bring the ff:\n\nPea-sized stool (dumi) \n\nValid ID\n\n1x1 picture \n\n(₱@amount) and extra money. \n\nThank you!\n'),
(2, 'Hi! This is Cheronzelle Clinic please be informed that your appointment date is on (@date and @time). \n\n\n Please bring the ff: \n\n\nValid ID \n\n1x1 picture \n\n(@amount) and extra money. \n\n Thank you!\n'),
(3, 'Hi! This is Cheronzelle Clinic please be informed that your appointment date is on (@date and @time). Please do fasting from 10-12 hours & bring @amount) and extra money. \n Thank you!'),
(4, 'Hi! This is Cheronzelle Clinic please be informed that your appointment date is on (@date and @time). Please bring (@amount) and extra money. Thank you!<br>\n----------------\n•@date @time\n•@service\n•@amount');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `user_access` varchar(50) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `uid`, `pass`, `user_access`, `date_created`) VALUES
(2, 'admin', '1', 'admin', '2022-05-04'),
(9, 'testuser1', 'test1234', 'user', '2022-05-04'),
(20, 'test', 'test', 'admin', '2022-05-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_appointment_cancellation_reason`
--
ALTER TABLE `tbl_appointment_cancellation_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_appointment_details`
--
ALTER TABLE `tbl_appointment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_available_appointments`
--
ALTER TABLE `tbl_available_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lab_results`
--
ALTER TABLE `tbl_lab_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_packages`
--
ALTER TABLE `tbl_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_services`
--
ALTER TABLE `tbl_package_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_sms`
--
ALTER TABLE `tbl_package_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_registration_otp`
--
ALTER TABLE `tbl_registration_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service_sms`
--
ALTER TABLE `tbl_service_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sms_templates`
--
ALTER TABLE `tbl_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tbl_appointment_cancellation_reason`
--
ALTER TABLE `tbl_appointment_cancellation_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_appointment_details`
--
ALTER TABLE `tbl_appointment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `tbl_available_appointments`
--
ALTER TABLE `tbl_available_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_lab_results`
--
ALTER TABLE `tbl_lab_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_packages`
--
ALTER TABLE `tbl_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_package_services`
--
ALTER TABLE `tbl_package_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `tbl_package_sms`
--
ALTER TABLE `tbl_package_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_registration_otp`
--
ALTER TABLE `tbl_registration_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_service_sms`
--
ALTER TABLE `tbl_service_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sms_templates`
--
ALTER TABLE `tbl_sms_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2020 at 10:33 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hiring_channel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `user_id` int(11) DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `hire_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(1, 'Engineer'),
(2, 'Corporation'),
(3, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `corporate_name` text DEFAULT NULL,
  `type_id` int(255) NOT NULL,
  `image` text DEFAULT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `corporate_name`, `type_id`, `image`, `email`, `password`, `is_open`) VALUES
(1, 'Ahmad', 'Zaky', '', 3, '', 'a.zaky@gmail.com', '$2b$10$fuDiKwu3AEXDomGS5HZdleZ5LsOGETTVmucJex0.9ixRvkYxRIZpq', 1),
(2, 'Yusuf', 'Junaedi', 'PT. -P Jepang', 2, '', 'juned@gmail.com', '$2b$10$UmRCzDDKEQhQnIRm3OO7pOwv.DNPTnqM25YrywQDxdOMWoujTg/3u', 1),
(3, 'Taufiq', 'Widi', 'Master', 2, '', 't.widi@gmail.com', '$2b$10$v2e1QBPDFRDWUg/nW9NBE.8LmJsan0beJtDis1wCSP4Xnjska3yRO', 1),
(4, 'Gana', 'Wa', 'Kaskus', 2, '', 'gan@gmail.com', '$2b$10$Y81mjzVB4QwlHwtL58qn6.xcjqZeYPhqC7/ZbJtHCO/QSdGz94byO', 1),
(5, 'Wildan', 'Dhya', 'Inhouse', 2, '', 'wilwil@gmail.com', '$2b$10$Day6FnNeztleAmCukEtpqevGB0agEkisBhweRgIQYZ5p15pn2wF2a', 1),
(6, 'Nawi', 'Rudin', 'PCBox', 2, '', 'markus@gmail.com', '$2b$10$TNhHjbexs3DdWRxH23WjROMxiHY6FMDO9Pzc4nOGovD8Kcn6AmhkG', 1),
(7, 'Soleh', 'Huddin', 'Fresh G', 2, '', 'soleh@gmail.com', '$2b$10$YBypVgww9oyc/1no7rMM1eQD2uvCwz2Us38Z.J6q7G7sBnVYnSU/m', 1),
(8, 'Just', 'Faiz', '', 1, '', 'faiz@gmail.com', '$2b$10$HAGOCIu1DrpBEqDQ6tYsqOfqiR0okgo3cqoyfow6Yu7Iekcwlosba', 1),
(9, 'Gusti', 'Amelia', '', 1, '', 'amel@gmail.com', '$2b$10$pNpclYDxpo.5k6YQcwNpM.jCq3GfoDXIk5OdPglYwjU0gtLSpiZl.', 1),
(10, 'Fajar', 'Satria', '', 1, '', 'fajar@gmail.com', '$2b$10$RtvrJTknJiudG7OMk1zYOeMv7Q5TC9e16dCcuhIi98PCFy02Im6vG', 1),
(11, 'Achmad', 'Bastari', '', 1, '', 'Nanang@gmail.com', '$2b$10$qtTlyVxdL4.oEmBq2pNpfutEvFMjdzE9k/l4HbD3zSf4XPmY9Mbqu', 1),
(12, 'Stofberg', 'Deni', '', 1, '', 'Berg@gmail.com', '$2b$10$XIBcP.Pn7XEU4aZzOntilO1fppT5UthxE6l08LXLGjVyc4SsQ4Vvm', 1),
(13, 'Nugraha', 'Raka', '', 1, '', 'n.raka@gmail.com', '$2b$10$zu32E2ChFxwthuq9xmdoCOV9.tEsb9Hl4fDL6EAFtvMH1iU4FFMw.', 1),
(14, 'Ricardo', 'Kaka', '', 1, '', 'kaka22@gmail.com', '$2b$10$Kq61tllUckTG6j8pHDW9jukGKs6VTtlQOih3HRDJ/YsBEJFd/mT4a', 1),
(15, 'Riski', 'Kurniawan', '', 1, '', 'riski22@gmail.com', '$2b$10$A25T8Fyz2apdnepJPku3ver95xeTcJ6zehHDtexZ/wYXIX.x0pgIO', 1),
(16, 'Hadi', 'Kusuma', '', 1, '', 'hadi10@gmail.com', '$2b$10$ec46aig2eZovegTm1vVzjej8VtZj4WQNXH3GM11NTC97RowOQRONS', 1),
(17, 'Dwi', 'Novrian', '', 1, '', '12dwi@gmail.com', '$2b$10$3pDmiBeo9oCsGk/gOiDA6e76xr8dKBgiKZbDWUOd4lKRlBTRODQSO', 1),
(18, 'Arka', 'Demy', '', 1, '', 'arkademy@gmail.com', '$2b$10$7TQt8cs7OM3r7PSlMpJhBu0ENw6OiR1.Pp8ZgWoKuh/nSPJbfm6yO', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_detail`
--

CREATE TABLE `users_detail` (
  `user_id` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `field` text NOT NULL,
  `salary` text NOT NULL,
  `rating` int(11) NOT NULL,
  `total_project` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_detail`
--

INSERT INTO `users_detail` (`user_id`, `description`, `field`, `salary`, `rating`, `total_project`) VALUES
(1, '', '', '', 0, 0),
(2, '', '', '', 0, 0),
(3, '', '', '', 0, 0),
(4, '', '', '', 0, 0),
(5, '', '', '', 0, 0),
(6, '', '', '', 0, 0),
(7, '', '', '', 0, 0),
(8, '', '', '', 0, 0),
(9, '', '', '', 0, 0),
(10, '', '', '', 0, 0),
(11, '', '', '', 0, 0),
(12, '', '', '', 0, 0),
(13, '', '', '', 0, 0),
(14, '', '', '', 0, 0),
(15, '', '', '', 0, 0),
(16, '', '', '', 0, 0),
(17, '', '', '', 0, 0),
(18, '', '', '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `corporate_id` (`corporate_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `users_detail`
--
ALTER TABLE `users_detail`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`corporate_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `users_detail`
--
ALTER TABLE `users_detail`
  ADD CONSTRAINT `users_detail_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

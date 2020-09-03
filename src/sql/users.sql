-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2020 at 12:31 PM
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
(1, 'Ahmad', 'Zaky', '', 3, '', 'uhuy@gmail.com', '$2b$10$tUutxSIjGDF0weuzCcBZae8hssLHYQUl4YefJ2IwKpgVhQFN8eh4C', 1),
(2, 'Yusuf', 'Junaedi', 'PT. -p Jepang', 2, '', 'juned@gmail.com', '$2b$10$2fg10avXG.prbOxv23ZqR.5LlqPXvGxwxupKmKL.vExIiS.VBgAuq', 1),
(3, 'Taufiq', 'Widi', '', 1, '', 'topiq@gmail.com', '$2b$10$FvgTuDMEQm6uGCWdHekfW.OnGy.uHtUR.YVObqEO0poZ0jRbtzIbW', 1),
(4, 'Wildan', 'Dhya', '', 1, '', 'dhya@gmail.com', '$2b$10$JkmQaPbDj9biUKHGOwUq2ucIpSFsTlDyzcJEwROfVgkFAXXsb8FTG', 1),
(5, 'Gana', 'Widya', 'Kaskus', 2, '', 'kaskus@gmail.com', '$2b$10$AMXkm1qoDXKLVx78u.XNpuRWngM85AcdoRlg94l6MKCniQnGV8fiK', 1),
(6, 'Nawi', 'Ruddin', '', 1, '', 'nawi@gmail.com', '$2b$10$HLAzQdl7iqUN7B7nr8bijOopdfq3r8oac4Y9/Ymc3fajw.crXztd6', 1),
(7, 'Gusti', 'Amelia', '', 1, '', 'amel@gmail.com', '$2b$10$KnZQrhMstTW4Y91UOhanxezfPTBGPDfJXEAH8Zk69B/.iSPQMor.O', 1),
(8, 'Soleh', 'Udin', '', 1, '', 'soleh@gmail.com', '$2b$10$SVU5HhTxL2eqL3tjeL18CerwmmfBZONT9tHwr/2gwGPRVtaEBKo1u', 1),
(9, 'Justeze', 'Faiz', 'Kambing', 2, '', 'eeze@gmail.com', '$2b$10$QVbSsIE8RdKTDZ9fJalNeeb8SL/UHVTC4gdOv1mEi9EOlLImIKTOG', 1),
(10, 'Winda', 'Devita', 'Arka', 2, '', 'winda@gmail.com', '$2b$10$ER7vsfTuiiZEeK1fpSEM2.q38T0rrIsN8jH9nKw8696FucacW3BSO', 1),
(11, 'Fakhri', 'Ridho', 'Arkademy', 2, '', 'fakhri@gmail.com', '$2b$10$56JA4JeMW8ecD0ulh4VaKeGv/jrRZPydXm7Nm5wt23e7REcfGU6bm', 1),
(12, 'Kurniawan', 'Riski', 'BGA', 2, '', 'riski@gmail.com', '$2b$10$i9m5voORROznDK8hvIs74eYs4aorhGjPISw5cXwt0D4dRZhANmFAa', 1),
(13, 'Kusuma', 'Hadi', 'LRT', 2, '', 'hadi@gmail.com', '$2b$10$HiwoxwnhXSg5fOxsEw/rHufI1y7cO.iN89bfPCz5w64/YM7Pgfa5C', 1),
(14, 'Ramadhan', 'Hari', '', 1, '', 'rama@gmail.com', '$2b$10$5AkQypris0r8mLYrx48gQOcgZ4R8/kyuGrotQBIV7LXO2ykrgnmfG', 1),
(15, 'Wijanarko', 'Anton', '', 1, '', 'wija@gmail.com', '$2b$10$UwjwTqOxDiZesKLanLdY6OuhZnCMIyoLpHVTj90T2k5GqZN4T8Joa', 1),
(16, 'Muhammad', 'Ilham', '', 1, '', 'm.ilham@gmail.com', '$2b$10$LZAAJ6Sjem6IXZW9OHBX4.goM5eWe5Flbmud2kipqXjAS2GjLWOsC', 1),
(17, 'Ahmad', 'Lazuardi', '', 1, '', 'a.lazu@gmail.com', '$2b$10$6vNIHPvx1.9s9SGHIQ0aiOadnTMcTtMQHgwRtw/4NDnXgqJQSoXY.', 1),
(18, 'Muhammad', 'Chandra', '', 1, '', 'chan123@gmail.com', '$2b$10$k0lCd7RRiTtNzGprJ7Ou8eVfvcMRHzv6NHSkNAB8jcIX9/D/aQvWG', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD KEY `type_id` (`type_id`);

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
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

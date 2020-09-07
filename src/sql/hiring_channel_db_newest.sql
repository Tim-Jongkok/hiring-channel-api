-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 3.80.251.75
-- Generation Time: Sep 07, 2020 at 09:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

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
  `hire_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`user_id`, `corporate_id`, `rating`, `hire_date`) VALUES
(32, 9, 80, '2020-09-07 01:23:28'),
(32, 6, 80, '2020-09-07 01:23:33'),
(32, 11, 80, '2020-09-07 01:39:50'),
(32, 11, 80, '2020-09-07 01:39:52'),
(1, 10, 80, '2020-09-07 02:00:44'),
(1, 9, 80, '2020-09-07 02:01:06'),
(4, 66, 80, '2020-09-07 06:14:19');

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
(1, 'Taufiq', 'Widi', NULL, 1, 'http://3.80.251.75:8000/images/1599403492453-image.png', 'taufiqwidi@gmail.com', '', 1),
(2, 'Yusuf', 'Junaiedi', NULL, 1, 'http://3.80.251.75:8000/images/1599403554228-image.png', 'yusufjunaedi@gmail.com', '', 1),
(3, 'Gana', 'Wardhana', NULL, 1, 'http://3.80.251.75:8000/images/1599403567682-image.png', 'GanaWardhana@gmail.com', '', 1),
(4, 'Ahmad', 'Zaky', NULL, 1, 'http://3.80.251.75:8000/images/1599403577974-image.png', 'AhmadZaky@gmail.com', '', 0),
(5, 'Wildan', 'Dhya', NULL, 1, 'http://3.80.251.75:8000/images/1599403586388-image.png', 'wildandhya@gmail.com', '', 1),
(6, '', '', 'Traveloka', 2, 'http://3.80.251.75:8000/images/1599403677216-image.jpg', 'Traveloka@gmail.com', '', 1),
(7, '', '', 'Gojek', 2, 'http://3.80.251.75:8000/images/1599403695379-image.png', 'Gojek@gmail.com', '', 1),
(8, '', '', 'Shopee', 2, 'http://3.80.251.75:8000/images/1599403710083-image.jpeg', 'Shopee@gmail.com', '', 1),
(9, '', '', 'Bukalapak', 2, 'http://3.80.251.75:8000/images/1599403754706-image.png', 'bukalapak@gmail.com', '', 1),
(10, '', '', 'Tokopedia', 2, 'http://3.80.251.75:8000/images/1599403766595-image.jpg', 'tokopedia@gmail.com', '', 1),
(11, '', '', 'Telkom Indonesia', 2, 'http://3.80.251.75:8000/images/1599403781471-image.png', 'Telkom Indonesia', '', 1),
(12, '', '', 'Nalayan.id', 2, 'http://3.80.251.75:8000/images/1599403795706-image.png', 'Nalayan@gmail.com', '', 1),
(13, 'Faiz', 'Sulistyawan', NULL, 1, 'http://3.80.251.75:8000/images/1599404677914-image.jpeg', 'Faiz@gmail.com', '', 1),
(14, 'Nawi', 'rudin', NULL, 1, 'http://3.80.251.75:8000/images/1599404703097-image.jpeg', 'nawi@gmail.com', '', 1),
(15, 'Sholeh', '', NULL, 1, 'http://3.80.251.75:8000/images/1599404720845-image.jpeg', 'Sholeh@gmail.com', '', 1),
(16, 'Gusti', 'Amelia', NULL, 1, 'http://3.80.251.75:8000/images/1599404738330-image.jpeg', 'GustiAmelia@gmail.com', '', 1),
(17, 'Bambang', 'Pamungkas', NULL, 1, 'http://3.80.251.75:8000/images/1599404752398-image.jpeg', 'Bambang@gmail.com', '', 1),
(18, '', '', 'Indofood', 2, 'http://3.80.251.75:8000/images/1599404792314-image.jpg', 'indofood@gmail.com', '', 1),
(19, 'David', 'Beckham', NULL, 1, 'http://3.80.251.75:8000/images/1599404807406-image.jpeg', 'Beckham@gmail.com', '', 1),
(20, 'Paul', 'Pogba', NULL, 1, 'http://3.80.251.75:8000/images/1599404835055-image.jpeg', 'Pogba@gmail.com', '', 1),
(21, '', '', 'Orang Tua', 2, 'http://3.80.251.75:8000/images/1599404857103-image.jpg', 'Orangtua@gmail.com', '', 1),
(22, '', '', 'Chevrone', 2, 'http://3.80.251.75:8000/images/1599404872819-image.jpg', 'Chevrone@gmail.com', '', 1),
(23, '', '', 'IKEA', 2, 'http://3.80.251.75:8000/images/1599404895906-image.png', 'IKEA@gmail.com', '', 1),
(24, 'Rafi', 'Ahmad', NULL, 1, 'http://3.80.251.75:8000/images/1599404942124-image.jpg', 'RafiAhmad@gmail.com', '', 1),
(25, '', '', 'Bank BRI', 2, 'https://image.cermati.com/v1428073853/brands/jncpmca7gh5gu9cteq2t.png', 'BRI@gmail.com', '', 1),
(26, '', '', 'Bank Mandiri', 2, 'http://3.80.251.75:8000/images/1599404982021-image.png', 'Mandiri@gmail.com', '', 1),
(27, '', '', 'Nestle', 2, 'http://3.80.251.75:8000/images/1599404999436-image.jpg', 'Nestle@gmail.com', '', 1),
(28, 'Kiki', 'Zamzam', NULL, 1, 'http://3.80.251.75:8000/images/1599405020949-image.jpeg', 'kiki@gmail.com', '', 1),
(29, 'Jamal', 'Hidayat', NULL, 1, 'http://3.80.251.75:8000/images/1599405036073-image.jpeg', 'Jamal@gmail.com', '', 1),
(30, '', '', 'Kawan Lama', 2, 'http://3.80.251.75:8000/images/1599405052475-image.jpg', 'kawanlama@gmail.com', '', 1),
(31, '', '', 'Amazon', 2, 'http://3.80.251.75:8000/images/1599405077749-image.png', 'Amazon@gmail.com', '', 1),
(32, 'Lutfi', 'Anjay', '', 1, 'http://3.80.251.75:8000/images/1599405091865-image.jpeg', 'Anjay@gmail.com', '', 1),
(33, 'Henek', 'Dwitau', NULL, 1, 'http://3.80.251.75:8000/images/1599405112509-image.jpeg', 'henek@gmail.com', '', 1),
(34, '', '', 'Netmedia Tama', 2, 'http://3.80.251.75:8000/images/1599405122795-image.jpg', 'Netmedia@gmail.com', '', 1),
(35, '', '', 'Google', 2, 'http://3.80.251.75:8000/images/1599405133354-image.jpg', 'Google@gmail.com', '', 1),
(36, 'Tombus', 'Simanjuntak', NULL, 1, 'http://3.80.251.75:8000/images/1599405146798-image.jpeg', 'Tombus@gmail.com', '', 1),
(37, 'Jack', 'Brown', NULL, 1, 'http://3.80.251.75:8000/images/1599405160741-image.jpeg', 'jackbrown@gmail.com', '', 1),
(38, '', '', 'Mamikos', 2, 'http://3.80.251.75:8000/images/1599405172785-image.png', 'Mamikos@gmail.com', '', 1),
(39, '', '', 'Trans Crop', 2, 'http://3.80.251.75:8000/images/1599405196979-image.jpg', 'Transcrop@gmail.com', '', 1),
(40, 'Chris', 'Martin', NULL, 1, 'http://3.80.251.75:8000/images/1599405230406-image.jpeg', 'ChrisMartin@gmail.com', '', 1),
(41, 'Megan', 'Fox', NULL, 1, 'http://3.80.251.75:8000/images/1599405243959-image.jpeg', 'meganfox@gmail.com', '', 1),
(42, '', '', 'Prudential', 2, 'http://3.80.251.75:8000/images/1599405265152-image.jpg', 'Prudential@gmail.com', '', 1),
(43, '', '', 'JNE', 2, 'http://3.80.251.75:8000/images/1599405277809-image.jpg', 'JNE@gmail.com', '', 1),
(44, 'Otong', 'Coil', NULL, 1, 'http://3.80.251.75:8000/images/1599405289897-image.jpeg', 'Otongcoil@gmail.com', '', 1),
(45, 'Vina', 'Davina', NULL, 1, 'http://3.80.251.75:8000/images/1599405301233-image.jpeg', 'Vina@gmail.com', '', 1),
(46, 'Habibie', 'Alathas', NULL, 1, 'http://3.80.251.75:8000/images/1599405313198-image.jpeg', 'Habibie@gmail.com', '', 1),
(47, '', '', 'Alibaba', 2, 'http://3.80.251.75:8000/images/1599405328059-image.jpg', 'Alibaba@gmail.com', '', 1),
(48, '', '', 'Baran Energy', 2, 'https://cdn.ayobandung.com/images-bandung/post/articles/2019/07/25/58719/baran.png', 'Baranenergy@gmail.com', '', 1),
(49, 'Haikal', 'Hazz', NULL, 1, 'http://3.80.251.75:8000/images/1599405352736-image.jpeg', 'haikalhazz@gmail.com', '', 1),
(50, 'Aurelie', 'Moermans', NULL, 1, 'http://3.80.251.75:8000/images/1599405376363-image.jpeg', 'AureliMoermans@gmail.com', '', 1),
(51, '', '', 'facebook', 2, 'http://3.80.251.75:8000/images/1599405392296-image.jpeg', 'facebook@gmail.com', '', 1),
(52, '', '', 'Allianz  Life', 2, 'http://3.80.251.75:8000/images/1599405402327-image.jpg', 'Allianz@gmail.com', '', 1),
(53, '', '', 'Astra Internasional', 2, 'http://3.80.251.75:8000/images/1599405415287-image.jpg', 'Astra@gmail.com', '', 1),
(54, '', '', 'JD.id', 2, 'http://3.80.251.75:8000/images/1599405426495-image.jpg', 'JD.id@gmail.com', '', 1),
(55, '', '', 'Kredivo', 2, 'http://3.80.251.75:8000/images/1599405496302-image.jpg', 'Kredivo@gmail.com', '', 1),
(56, '', '', 'Tencent Tech', 2, 'http://3.80.251.75:8000/images/1599405516412-image.jpg', 'Tencent@gmail.com', '', 1),
(57, 'Mariam', 'Belina', NULL, 1, 'http://3.80.251.75:8000/images/1599405535025-image.jpeg', 'Meriam@gmail.com', '', 1),
(58, 'Astrid', 'Item', NULL, 1, 'http://3.80.251.75:8000/images/1599405551753-image.jpeg', 'Astriditem@gmail.com', '', 1),
(59, 'Anya', 'Geraldine', NULL, 1, 'http://3.80.251.75:8000/images/1599405572737-image.jpeg', 'AnyaGeraldine@gmail.com', '', 1),
(60, 'Jhony', 'Deep', NULL, 1, 'http://3.80.251.75:8000/images/1599405597666-image.jpeg', 'JhonyDeep@gmail.com', '', 1),
(65, 'Taufiq', 'Widi', '', 1, 'http://3.80.251.75:8000/images/1599432997966-image.jpg', 'razorback@mail.com', '$2b$10$KP/8Cm1blW.pTUd1untc0.C.3OJyX7d2jLSJIwTEYPEOQGyrDHXWC', 1),
(66, '', '', 'Pertamini', 2, 'http://3.80.251.75:8000/images/1599433787947-image.jpg', 'pertamini@yuhuu.co.id', '$2b$10$DjKm1o884QfNBccKxBor4.34sNGir/rESEoPABu6nPcr/9Dm712xm', 1),
(67, 'Mipand', 'Zuzuzu', '', 1, NULL, 'mipand@mail.com', '$2b$10$iWOBsrk5feGibAMvJ0KUhu2bNy0ImUtUqMlNJMdf9JrvgeQUEoSa.', 1),
(68, 'Yusup', 'Junaedi', '', 1, NULL, 'ucuppp@mail.com', '$2b$10$F.brQj0/KRirVOaCN3unX.Hh5qeR8asszXnIrzik8R3QhxgCZrV4C', 1),
(69, 'Arka', 'Demy', '', 1, NULL, 'arkademy@gmail.com', '$2b$10$kLPGkXU8/.8AtJ3xIgFHD.ZPh9BOVZy0UacBVC5ZIS9m2ocARHbQ.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_detail`
--

CREATE TABLE `users_detail` (
  `user_id` int(11) DEFAULT NULL,
  `description` text NOT NULL DEFAULT 'No description here',
  `field` text NOT NULL DEFAULT 'Unknown',
  `skill` text NOT NULL DEFAULT 'No Skill',
  `location` text NOT NULL DEFAULT 'Unknown',
  `rating` int(11) NOT NULL DEFAULT 0,
  `total_project` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_detail`
--

INSERT INTO `users_detail` (`user_id`, `description`, `field`, `skill`, `location`, `rating`, `total_project`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', 'Fullstack Mobile', 'Nodejs, Reactjs, Express, React Native, Mysql', '', 100, 80),
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', 'Fullstack Mobile', 'Reactjs, Nodejs, MySql, React Native, Express', '', 90, 78),
(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', 'Fullstack Mobile', 'React Native, Nodejs, Mysql, Reactjs, Expressjs', '', 78, 70),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', 'Fullstack Web Develover', 'Css, Javascript, Html, Boostrap, Reactjs, Expressjs, Nodejs', '', 68, 50),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', 'Fullstack Web Developer', 'HTML, CSS, Javascript, Boostrap, Reactjs', '', 60, 40),
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', 'Travel Agent', '', 'Depok', 80, 0),
(7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', 'Transportation Tech', '', 'Jakarta', 90, 0),
(8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', 'e-commerce', '', 'Bekasi', 78, 0),
(9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', 'e-commerce', '', 'Bandung', 85, 0),
(10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', 'e-commerce', '', 'Medan', 89, 0),
(11, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\',', 'Telekomumikasi ', '', 'Jakarta', 80, 0),
(12, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\',', 'fisheries e-commerce ', '', 'Jakarta', 30, 0),
(13, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\',', 'Mobile Develover', 'Nodejs, MySql, React native, Reactjs, Expressjs, Boostrap', '', 90, 70),
(14, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\',', 'Mobile Develover', 'MySql, React native, Reactjs, Expressjs Nodejs,, Boostrap', '', 90, 60),
(15, 'making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years', 'Web Developer', 'Javascript, Boostrap, CSS, HTML, Reactjs. Expressjs, Mysql, Nodejs', '', 90, 86),
(15, 'making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years', 'Web Developer', 'Javascript, Boostrap, CSS, HTML, Reactjs. Expressjs, Mysql, Nodejs', '', 90, 86),
(16, 'making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years', 'Mobile Developer', 'Javascript, Boostrap, CSS, HTML, Reactjs. Expressjs, Mysql, Nodejs, Vuejs', '', 89, 76),
(17, 'making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years', 'Mobile Developer', 'Javascript,  Reactjs. Expressjs, Mysql, Nodejs, Vuejs', '', 59, 26),
(18, 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Food Production', '', 'Karawang', 80, 0),
(19, 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Web Developer', 'HTML, CSS, Boostrap, Mysql, Vuejs, Reactjs, Nodejs, Expressjs', '', 80, 50),
(20, 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Mobile Developer', 'Mysql, Vuejs, Reactjs, Nodejs, Expressjs', '', 30, 20),
(21, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'Food Production', '', 'Karawang', 60, 0),
(22, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'Oil Energy', '', 'Samrinda', 90, 0),
(23, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'Furniture', '', 'Tangerang', 60, 0),
(24, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'Web Developer', 'HTML, CSS, Javascript, Boostrap', '', 76, 55),
(25, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'Bank And Finance', '', 'Aceh', 85, 0),
(26, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" ', 'Bank and Finance', '', 'Jakarta', 66, 0),
(27, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" ', 'Food Production', '', 'Jakarta', 96, 0),
(28, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" ', 'Mobile Developer', 'Nodejs, Mysql, Expressjs, reactjs', '', 66, 50),
(29, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" ', 'Web Developer', 'Html, CSS, Javascript, Boostrap, Vuejs, Reactjs', '', 46, 20),
(30, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" ', 'Furniture', '', 'Jakarta', 56, 0),
(31, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.', 'e-commerce', '', 'Jakarta', 90, 0),
(32, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.', 'Web Developer', 'HTML, CSS, Javasciprt, Reactjs', '', 60, 40),
(33, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.', 'Data Sciencetist', 'Phyton, Mysql, Mongodb', '', 80, 57),
(34, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.', 'Media Television', '', 'Depok', 80, 0),
(35, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.', 'Search Engine', '', 'Jakarta', 76, 0),
(36, 'The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Data Sciencetist', 'Pyhton, Mongodb, mySql, C/C++', '', 65, 44),
(37, 'The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Data Scientist', 'Mysql, Mongodb, Phyton, Php', '', 55, 30),
(38, 'The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'e-commerce', '', 'Karawang', 60, 0),
(39, 'The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Media television, Finance, Property', '', 'Jakarta', 0, 0),
(40, '\"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. ', 'Data Scienctist', 'Phyton, C/C++, Mysql', '', 78, 40),
(41, '\"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. ', 'Mobile Developer', 'Reactjs, Mysql, Nodejs, react native', '', 55, 67),
(42, '\"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. ', 'Health Insurance', '', 'Banten', 80, 0),
(43, '\"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. ', 'Logistic', '', 'Bekasi', 86, 0),
(44, '\"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. ', 'Web Developer', 'Html, CSS, Javascript, PHP, Boostrap', '', 70, 56),
(45, '\"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. ', 'Mobile Developer', 'Nodejs, Expressjs, Reactjs, React Native', '', 76, 44),
(46, ' Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical', 'Mobile Developer', 'Reactjs, Expressjs, React Native, Phython', '', 67, 43),
(47, ' Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical', 'e-commerce', '', 'Bogor', 76, 0),
(48, ' Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical', 'Energy listrik', '', 'Bandung', 45, 0),
(49, ' Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical', 'Data scientist', 'Python, Mysql, Mongodb', '', 67, 34),
(50, ' Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical', 'Data Scientist', 'Reactjs, Expressjs, React native', '', 67, 23),
(51, ' Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical', 'Social Media Tech', '', 'Bogor', 79, 0),
(52, ' Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical', 'Health Insurance', '', 'Karawang', 89, 0),
(53, ' Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical', 'Manufacturing mesin', '', 'Bekasi', 78, 0),
(54, ' Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical', 'e-commerce', '', 'Tangerang', 89, 0),
(55, ' \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'credit and payment online', '', 'Sukabumi', 77, 0),
(56, ' \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Games Developer', '', 'Sukabumi', 89, 0),
(57, ' \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Mobile Developer', 'Reactjs, Expressjs, Nodejs, React Native', '', 83, 47),
(58, ' \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Web Developer', 'HTML, CSS , Javascript, PHP', '', 45, 57),
(59, ' \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Data Scientist', 'Pyhton, Mysql, Mongodb', '', 47, 23),
(60, ' \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Mobile Developer', 'Reactjs, nodejs, React native, expressjs', '', 67, 35),
(65, 'Seorang Fullstack Developer', 'Unknown', 'ReactJS, ExpressJS, mysql, nodeJS, C/C++, Arduino', 'Yogyakarta', 0, 99),
(66, 'Ini adalah PT. Pertamina dengan kearifan lokal.', 'Oil and Gas', 'No Skill', 'In Your Heart', 0, 0),
(67, 'No description here', 'Unknown', 'No Skill', 'Unknown', 0, 0),
(68, 'No description here', 'Unknown', 'No Skill', 'Unknown', 0, 0),
(69, 'No description here', 'Unknown', 'No Skill', 'Unknown', 0, 0);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

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

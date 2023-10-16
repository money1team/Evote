-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 03:16 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'nurhodelta', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'Neovic', 'Devierte', 'facebook-profile-image.jpeg', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(31, 13, 'Rex', 'Omolleh', 'rex.jpeg', 'ODM'),
(32, 13, 'Noel', 'Khan', 'khan.jpeg', 'UDA'),
(33, 8, 'William', 'Ruto', 'Ruto.jpg', 'UDA'),
(34, 8, 'Raila', 'Odinga', 'Raila.jpeg', 'ODM'),
(35, 8, 'George', 'Wajackoyah', 'Wajackoyah.jpeg', 'ROOTS PARTY'),
(36, 8, 'David', 'Mwaure', 'wahiga.jpeg', 'AGANO PARTY'),
(37, 9, 'Johnson', 'Sakaja', 'Sakaja.jpeg', 'UDA'),
(38, 9, 'Polycarp', 'Igathe', 'igathe.jpeg', 'JUBILEE'),
(39, 10, 'Margaret', 'Wanjiru', 'Wanjiru.jpeg', 'UDA'),
(40, 10, 'Edwin', 'Sifuna', 'sifuna.jpeg', 'ODM'),
(41, 11, 'Millicent', 'Omanga', 'omanga.jpeg', 'UDA'),
(42, 11, 'Esther', 'Passaris', 'passaris.jpeg', 'ODM'),
(43, 12, 'Nickson', 'Korir', 'nickson.jpeg', 'UDA'),
(44, 12, 'Felix', 'Odiwour', 'jalas.jpeg', 'ODM');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'PRESIDENT', 1, 1),
(9, 'GOVERNOR', 1, 2),
(10, 'SENATOR', 1, 3),
(11, 'WOMAN REPRESENTATIVE', 1, 4),
(12, 'MEMBER OF PARLIAMENT (MP)', 1, 5),
(13, 'MEMBER OF COUNTY ASSEMBLY (MCA)', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(3, 'V3Q2vEcg4j7smRF', '$2y$10$LjFfYtRM./VAvZ0KUurzqOwZjVYM6oad.r.EJZA.kTZbRFiKhz3tC', 'William', 'Ruto', ''),
(4, '3I6vcEuCDhAVjan', '$2y$10$FsNJ8ahApoOcF4.x3svE2.WZHwb0CUl5j98aI6GsyUn/zRo2.gg/S', 'elvis', 'Kemboi', ''),
(5, '5tc6OP3amX8gGb4', '$2y$10$pXNmK3au5LbXkAbL25kz7urwLLLJBKzbPXSA5Pq/NDWFDMgcSSX.W', 'Ronaldo', 'kimutai', ''),
(6, 'BRFjJAZT3ey8vGQ', '$2y$10$i7sNFf/ayqh9Xqemum2OP.eecUJPnkzmpG94aRO/u5G1N2N7An2SC', 'Edu', 'Keta', ''),
(7, 'f7iUnwH1uJ49yAe', '$2y$10$oj3w.e.CmuSz1nXLfzn8P.i37UEn6BiYTNZGA.Ssb8hicClwm00Ii', 'Ishmael', 'Ishmael', '_status_IMG-20191020-WA0005.jpg'),
(9, 'MYbtaEuHz8fBwQe', 'ubI4M#zt', 'Vincent', 'Mutai', ''),
(10, 'mg9RaHMSJT4zFQP', 'GZ1R7YW%', 'sher', 'cheps', ''),
(11, 'TOf8PigbrmQo3Ze', 'LMnKwlId', 'Lynn', 'Ocey', ''),
(12, 'JoNTuflVO4vQz15', 'UPLb5%ok', 'Otuya', 'Alvin', ''),
(13, 'sZQcexudajRT64o', '$2y$10$HWEqyMVX1mX/3ArbqYVzF.e6UEKDi/Vrv1eCbQGRw3C19so31y5Ty', 'Velma', 'Atieno', ''),
(14, 'Uk1XMiIqDCtjmas', 'wLa7phnu', 'Roro', 'Kip', ''),
(15, 'SA5UjliexCO2VsT', '$rBowv_U', 'Purity', 'Wanjiku', ''),
(16, '1FKsH84bWIOfpX6', 'M$nUCg93', 'krusty', 'mutai', ''),
(17, 'MY2F4Xo38vHbult', 'fcEj*USe', 'Sasha', 'Lave', ''),
(18, 'GYO2RC8HqtkpSXW', 'S*D%iwUQ', 'Fella', 'Maem', ''),
(19, '7yUwJegEkmvS4ih', 'vdRQKE0F', 'Ngugi', 'Thiongo', ''),
(20, 'yq4Hof2GDXZKnRQ', '$2y$10$HAcfzaytRguEeGPkg0yAqO.4krOHaOutzPrUN0Nl.J9PtuG1ODphq', 'Obwocha', 'Brandon', ''),
(21, '87rWIDfSEzcRkoa', 'NmqiZ5xQ', 'Idhris', 'Ayeye', ''),
(22, 'Pu7Ts2RoQptBYJr', 'LFmn@4de', 'Arima', 'Jay', ''),
(23, 'Ux6JVYpDH5KiTA7', 'FHSZhrR$', 'Washa', 'Sheldon', ''),
(24, 'rAeN16jTn3ZGB7x', '4M6o5Z*g', 'Aketch', 'Maureen', ''),
(25, 'ajtyWTF3JvbrOeK', 'vwbE$L!9', 'Achola', 'Memphis', ''),
(26, '4QUlPRpvMFdznoD', 'DL%Emj8X', 'Kibet', 'Emm', ''),
(27, 'oj8RJTmGQLU4zXe', '$2y$10$Kl3hVql2bHpp2cEeDUhtw.majWJe3rXEwG9pRow1LFEjQ/JSACzHO', 'Mahia', 'Gor', ''),
(28, 'kXxYLody1HQwJ9c', '_LQ5%g!K', 'Mabil', 'Elisha', ''),
(29, 'hLOw4CfnPxZvQp1', 'WS&xdNnJ', 'Raila', 'odinga', 'Raila.jpeg'),
(30, 'aOopm3EXB5WJiD9', '_NBju#o4', 'George ', 'Wajackoyah', ''),
(31, 'x9dtLzQDkb74Gjs', 'Q8CoNq5e', 'Jonhson', 'Sakaja', 'Sakaja.jpeg'),
(32, 'iUsdZchtI6MPDuY', '#XUMA%1u', 'Edwin', 'Sifuna', 'sifuna.jpeg'),
(33, 'NuvXMw1VW8R6jf4', 'Yo*fOKAC', 'Polycarp', 'Igathe', 'igathe.jpeg'),
(34, '6ZAfuJRxl5XpaVn', '$2y$10$qUEptivIqeE8bEFmaCzqJeal2WbMG1BuyzVQtfA5fK31/tnbXF9O2', 'elii ', 'elito', ''),
(35, '6art8Dcug95Hzfk', 'LucMtEHy', 'edwin', 'mark', ''),
(36, 'EOJiDK6kvWyNMzu', 'uQ5a18r*', 'roroo', 'mark', ''),
(37, 'Pj28bHBYCnwhaOM', 'yuVD40LK', 'mara', 'kim', ''),
(38, 'jJ2Pm7NGLBCYX4D', 'L4iZvl@G', 'colloins', 'kim', ''),
(39, 'tUfGXSTyJA51Fbc', 'UWh*Xiz0', 'Dero', 'kim', ''),
(40, 'Nju1LWBbAVHcFzP', 'IE&csWx3', 'willy', 'mutua', ''),
(41, 'tuFpJlSz1e9UTLZ', '9N5FtZfV', 'Criss', 'rok', ''),
(42, 'tfwhknAFYosKzH3', 'i1yYHpcu', 'val', 'chem', ''),
(43, 'C1oJz9IMLGycEpt', '4cJ8T_i3', 'jamnty', 'jan', ''),
(44, '4bmKYiPJsRrId6c', '$2y$10$SAYswuV9FFoSmrruy7QrZOmi8DtrdDEXB9yvYMT4oqIxyc6StXIgu', 'Abel', 'ave', ''),
(45, 'DqGUu87bCAyivLa', '2Hg3rsec', 'Abel', 'ronny', ''),
(46, 'H1dwUjQpbfOYMKC', 'VbKx8iJW', 'Abel', 'ongaki', ''),
(47, 'welR3X62zOgUdi5', 'JicvNFuG', 'Afortech', 'Agnes', ''),
(48, 'qD4S96dpaeTcxEh', '$2y$10$SNSziLfaxh2qV6At9Qk/ee7Zl29wlr4lHLhwgBgsBFN.qJ0MGGg3m', 'Aggie', 'Client', ''),
(49, 'nCq3MY6wp9cslOf', '6slHr90K', 'Allan', 'Orowe', ''),
(50, 'TEnUreH1Xlb35Qq', 'XQLyVm*G', 'Ally', 'Orowe', ''),
(51, '2v3CLPfamriYFKM', 'VaXxl&v1', 'Alvin ', 'art', ''),
(52, 'FbMPrfkRpi3BueJ', '#EYx*jd!', 'Hawii ', 'Lee', ''),
(53, 'MpcE3lOCfGDwst8', 'cth*B1u3', 'Andy ', 'Agutu', ''),
(54, 'kihRVZsrO7qKm4Y', '5dwe8m#b', 'Anisha', 'moraa', ''),
(55, 'sYrxweiTbm5DpfM', '$2y$10$lLlFHiC7j2jngOz.nseMzeIP.vMnjXQjtsW6C2g4Rcz0BrpC/EEbm', 'Aunt ', 'daisy', ''),
(56, 'CgTLn7kXJQivbPy', '$2y$10$9azmvUFpn1KASbiFGbEv/OKpUZqieWue6lf8byPjy6rcPzkr7QSZK', 'Belinda ', 'Adeny', ''),
(57, 'mFYvMX5VjSt1fuP', 'lOaVPnz1', 'Benard ', 'Mokanya', ''),
(58, 'hZIviOab9CNQqT3', 'f6RW7HjD', 'Bethsheba', 'letin', ''),
(59, 'tofUaMyEAnGhpbF', 'priXqktH', 'Bett', 'Seskaa', ''),
(60, 'lQruqZwsXLyAP4I', 'BquzKWhx', 'Billy', 'ill', ''),
(61, 'zyxmD629vPWgUwi', 'F0MftPC@', 'Billy', 'Chirchir', ''),
(62, 'M1y8a7kQNqfBTmz', 'lCjJoXx%', 'Brian', 'Chirchir', ''),
(63, 'VhUwRBqX35nZTFa', 'v9_4WzFt', 'solomon', 'Rigathi', ''),
(64, 'lse9kQb2DZKS3Vr', 'W76iUHhF', 'Ishmael', 'pollycap', ''),
(65, 'CjGtMlEgnyWfYAX', '12qaHAVL', 'Brian', 'Brian', ''),
(66, 'hgyZMpPRIvc1tT7', 'BEasqc5k', 'Chacha', 'Simba', ''),
(67, 'LKDltO1cWT7MeFy', 'x8&lgB!h', 'Caroline', 'Hope', ''),
(68, 'M8PLZznFo96Xl1d', 'AFxWR3!5', 'Daisy', 'Chemutai', ''),
(69, 'JHYTGCxkfsgVrUe', 'MgcWi6%9', 'Ngoma', 'Maina', ''),
(70, 'QZOJEwuCWTFhv1U', 'dgU1Cnkm', 'Ian', 'Maina', ''),
(71, 'vkehrImjWHflqJB', 'U$NdP43&', 'Faith', 'Wamboi', ''),
(72, 'nwcKvxRqbVh3ejB', '0!PX7YjI', 'Ruth', 'Wamboi', ''),
(73, '2YfOBoGvJSUlTrI', 'labrkISZ', 'Ben', 'Mwas', ''),
(74, 'gh4fpI9nHZF6ai7', 'TZ3LD_q*', 'Daniel', 'Omondi', ''),
(75, 'uNGV8Bi6Rv4bSLk', 'HOP&0!#k', 'Davie', 'Okom', ''),
(76, 'j13scU7lTARSPry', '*LPhtqEM', 'Enock', 'Wakili', ''),
(77, 'OZ3n14uwq5fTSWA', 'gEYIa0l@', 'Eunie', 'Njeri', ''),
(78, '62WjpyImOfl7w3c', '1wa0RvjJ', 'Cyntha', 'Njeri', ''),
(79, '9tQDzebwnFm5Lxl', 'H%zlaG_0', 'Faith', 'Sambu', ''),
(80, 'Fv2ybg8Qip5nGlO', '#l39_5qn', 'Faith', 'Moh', ''),
(81, 'uzCKWANHnw3tVB7', 'ODu1%PHm', 'Filomena', 'Prestige', ''),
(82, 'wQAk8Zlt1S4L6UY', 'QXMOvtdN', 'Moi', 'Late', ''),
(83, 'y4AplJXsdHKQzNh', 'IALKghzu', 'Flex', 'omurwa', ''),
(84, 'mLhfsMBrk3oTZeG', 'uLeXKnpW', 'Frank', 'Tuk', ''),
(85, 'RFusPNtha5AeGo8', '754Yw#Wo', 'Gideon', 'Ketepa', ''),
(86, 'X2KznObEyfMZHgj', '$2y$10$2NSuX1a0UVE.zxqc0ewjoeRN8.DDMz0fQWtPnXfu580tjRomPW0Ai', 'Hamsoo', 'Dolad', ''),
(87, '2Rho3qXtbB5Divc', 'EvbGPC_h', 'Hope', 'Omoke', ''),
(88, 'kZ2o4Eubl7WsypS', 'zlDU0VyZ', 'Kelo', 'Kelly', ''),
(89, 'gWRMdpeItHQ9aA3', 'ypKfwVNC', 'Jay', 'Zee', ''),
(90, '8JdAVE2LS9xQoph', 'm#p36@Yb', 'Kay', 'Lee', ''),
(91, 'laOZTFfSdIQb7Cm', 'Lx6tS*my', 'Ali', 'moha', ''),
(92, 'zOmwRo3YWKSVLh1', 'kSm3_X#V', 'Abdul', 'Nas', ''),
(93, 'ZOIGXKbgzRmQFal', '$2y$10$gzA3I5eFgdIPm6PZMpmLJeCaPGZmkPCNyEqoX55CJxaMQ1wznOK7.', 'Eleli', 'Ayub', ''),
(94, 'TsytwXAmiEvc1bU', 'dLWgMycz', 'Sandra', 'Too', ''),
(95, 'lK4WtUwZpfdSubP', 'jG4VI$!b', 'Kevin', 'Philips', ''),
(96, 'OefhH3NsTB47ILV', 'OorT&KHG', 'Adala', 'Marwil', ''),
(97, 'm7snMjd5YP1Su2z', '$2y$10$8EiXrIFaSCfnYd2EmLOXY.fwF54mMsZhIstR9/xc/p8C6lM8xGtCW', 'Mason', 'Mount', '+254 711 592990 20200125_181232 (1).jpg'),
(98, 'De3ZRBcXpQjWwLv', '$2y$10$pjXwnC17WEwxNlu2jciMg.M/5GL1jJSu5BIAq1XNR5QA7wUJo1ewK', 'Ron', 'Ziy', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(81, 4, 18, 8),
(82, 4, 20, 9),
(83, 4, 22, 10),
(84, 4, 24, 11),
(85, 4, 28, 12),
(86, 4, 26, 13),
(87, 7, 18, 8),
(88, 7, 21, 9),
(89, 7, 23, 10),
(90, 7, 24, 11),
(91, 7, 29, 12),
(92, 7, 26, 13),
(93, 5, 35, 8),
(94, 5, 37, 9),
(95, 5, 40, 10),
(96, 5, 41, 11),
(97, 5, 43, 12),
(98, 5, 32, 13),
(99, 6, 33, 8),
(100, 6, 37, 9),
(101, 6, 39, 10),
(102, 6, 41, 11),
(103, 6, 43, 12),
(104, 6, 32, 13),
(105, 3, 34, 8),
(106, 3, 38, 9),
(107, 3, 40, 10),
(108, 3, 42, 11),
(109, 3, 44, 12),
(110, 3, 31, 13),
(111, 56, 33, 8),
(112, 56, 37, 9),
(113, 56, 39, 10),
(114, 56, 41, 11),
(115, 56, 43, 12),
(116, 56, 32, 13),
(117, 44, 33, 8),
(118, 44, 38, 9),
(119, 44, 40, 10),
(120, 44, 41, 11),
(121, 44, 44, 12),
(122, 44, 31, 13),
(123, 20, 36, 8),
(124, 20, 37, 9),
(125, 20, 39, 10),
(126, 20, 42, 11),
(127, 20, 43, 12),
(128, 20, 32, 13),
(129, 34, 33, 8),
(130, 34, 37, 9),
(131, 34, 39, 10),
(132, 34, 41, 11),
(133, 34, 43, 12),
(134, 34, 32, 13),
(135, 86, 34, 8),
(136, 86, 38, 9),
(137, 86, 40, 10),
(138, 86, 42, 11),
(139, 86, 44, 12),
(140, 86, 31, 13),
(141, 13, 34, 8),
(142, 13, 38, 9),
(143, 13, 39, 10),
(144, 13, 41, 11),
(145, 13, 43, 12),
(146, 13, 31, 13),
(147, 93, 35, 8),
(148, 93, 37, 9),
(149, 93, 40, 10),
(150, 93, 41, 11),
(151, 93, 43, 12),
(152, 93, 32, 13),
(153, 27, 34, 8),
(154, 27, 38, 9),
(155, 27, 40, 10),
(156, 27, 42, 11),
(157, 27, 44, 12),
(158, 27, 31, 13),
(159, 55, 35, 8),
(160, 55, 37, 9),
(161, 55, 39, 10),
(162, 55, 42, 11),
(163, 55, 44, 12),
(164, 55, 31, 13),
(165, 48, 34, 8),
(166, 48, 37, 9),
(167, 48, 40, 10),
(168, 48, 41, 11),
(169, 48, 43, 12),
(170, 48, 32, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

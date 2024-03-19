-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 19, 2024 at 11:58 AM
-- Server version: 10.11.3-MariaDB-log
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `group_user`
--

CREATE TABLE `group_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `active` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `group_user`
--

INSERT INTO `group_user` (`id`, `title`, `active`) VALUES
(1, 'Admin', 1),
(2, 'Mod', 1),
(3, 'Member', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `fax` char(15) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `group_id`, `first_name`, `last_name`, `email`, `phone`, `fax`, `active`, `created_at`, `updated_at`) VALUES
(103, 2, 'Winston', 'Schaden', 'ebert.zora@hotmail.com', '1-699-329-3148x7873', NULL, 0, '2024-03-19 11:30:12', '2024-03-19 04:30:12'),
(104, 1, 'Kaleb', 'Connelly', 'wwatsica@hotmail.com', '790-630-8975x90983', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(105, 3, 'Anjali', 'Dibbert', 'thurman48@cassinklocko.com', '1-426-704-6806', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(106, 2, 'Elinore', 'Cole', 'torp.jordy@smithconsidine.biz', '210.418.6597', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(107, 3, 'Susan', 'Walker', 'hipolito25@wuckert.info', '(135)020-2675', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(108, 3, 'Mitchell', 'Abernathy', 'pframi@bode.biz', '(328)519-5983x9559', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(109, 2, 'Lolita', 'Littel', 'kennedi76@gmail.com', '02157275664', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(110, 2, 'Jayson', 'Stamm', 'jaylan68@cartwright.org', '+56(0)6538279227', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(111, 1, 'Salvador', 'Wunsch', 'moises.hoppe@gmail.com', '1-799-235-4588', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(112, 1, 'Rosemarie', 'Adams', 'name.hayes@crona.net', '761.079.1017x62263', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(113, 3, 'Neil', 'Purdy', 'eldridge01@lubowitz.com', '09345148732', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(114, 2, 'Clyde', 'Kunde', 'albin.kunde@johnson.com', '+59(7)8198373673', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(115, 2, 'Lurline', 'Stroman', 'cdaniel@yahoo.com', '1-488-324-0372x952', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(116, 3, 'Kayden', 'Ward', 'farrell.sam@eichmann.com', '(801)929-8784', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(117, 3, 'Sydnie', 'Friesen', 'aortiz@kemmerjenkins.org', '174-274-6771', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(118, 2, 'Viva', 'Waelchi', 'brain38@green.org', '331-625-5436x2048', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(119, 1, 'Joshuah', 'Kautzer', 'miguel.upton@leuschke.info', '506-796-6416x257', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(120, 1, 'Julio', 'Skiles', 'karl04@yahoo.com', '(660)339-9625x188', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(121, 1, 'Krystina', 'Aufderhar', 'wisoky.veda@gmail.com', '(587)790-9346x153', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(122, 2, 'Audreanne', 'Turcotte', 'fdouglas@yahoo.com', '(543)962-1970x72541', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(123, 2, 'Ransom', 'Leffler', 'fstamm@yahoo.com', '(502)171-7363x99909', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(124, 3, 'Mae', 'Lynch', 'blanda.gaetano@yahoo.com', '(633)124-4886x67755', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(125, 1, 'Justina', 'Grimes', 'emmy.hilll@barrowsbrakus.net', '1-128-195-0160x071', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(126, 1, 'Fleta', 'McLaughlin', 'marjorie86@deckow.com', '1-970-723-8124', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(127, 2, 'Josh', 'Abshire', 'schuster.kathryn@yahoo.com', '02068279033', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(128, 2, 'Obie', 'Cassin', 'lazaro10@gmail.com', '1-562-036-7255', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(129, 1, 'Jaida', 'Miller', 'walton.crona@bogan.com', '(726)388-1672', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(130, 2, 'Ricky', 'Jast', 'collin.gaylord@hoeger.com', '+35(7)6800706328', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(131, 1, 'Calista', 'Schultz', 'arnulfo.harris@hillswaters.info', '835.602.7106', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(132, 2, 'Rex', 'Wilderman', 'jovan.beatty@gmail.com', '463-541-4556x919', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(133, 1, 'Lori', 'Smith', 'jeanette.ledner@cruickshank.info', '1-415-170-8064x1417', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(134, 2, 'Ian', 'Howe', 'sammy.gutkowski@hotmail.com', '863.772.4555x6282', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(135, 3, 'Lillie', 'Morissette', 'schultz.deonte@yahoo.com', '888-577-9803x01642', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(136, 1, 'Lurline', 'Raynor', 'becker.neva@lynchconsidine.com', '197.659.4647', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(137, 1, 'Christophe', 'Herzog', 'hailie31@dibbertrussel.com', '1-122-282-5958x7281', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(138, 3, 'Jovani', 'Skiles', 'zackery.lebsack@gmail.com', '1-970-899-2852x6226', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(139, 1, 'Tiara', 'Ledner', 'jdurgan@hotmail.com', '1-011-000-9800x868', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(140, 2, 'Alex', 'Hahn', 'claudine.kuvalis@gmail.com', '536.425.3773x929', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(141, 2, 'Jammie', 'Nicolas', 'franecki.clara@hotmail.com', '153.927.8657', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(142, 3, 'Leonor', 'Baumbach', 'savion34@yahoo.com', '1-313-094-1916', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(143, 1, 'Ressie', 'Barrows', 'kayli.willms@pfannerstilllittle.com', '1-545-576-7859', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(144, 2, 'Cortez', 'Ledner', 'sandra49@oreilly.biz', '1-666-191-4296', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(145, 1, 'Alessia', 'Ullrich', 'gracie34@gmail.com', '(455)796-0503x64896', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(146, 2, 'Dayton', 'Kiehn', 'marcelina.kozey@gmail.com', '972.327.9768x57975', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(147, 3, 'Eldred', 'Mayer', 'goldner.emil@yahoo.com', '+72(7)2335307492', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(148, 1, 'Kiarra', 'Ruecker', 'bupton@yahoo.com', '+41(6)5674799559', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(149, 2, 'Wayne', 'Collier', 'danika28@orn.org', '1-235-061-1198', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(150, 2, 'Mia', 'Kilback', 'jaunita31@hotmail.com', '(410)393-7642x177', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(151, 3, 'Jazmyn', 'McKenzie', 'smitham.franz@yahoo.com', '217-833-2808', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(152, 2, 'Triston', 'Kihn', 'gkilback@block.com', '1-930-585-4839', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(153, 1, 'Herman', 'Jenkins', 'trantow.demetris@gmail.com', '1-415-991-6631x004', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(154, 2, 'Elena', 'Cummings', 'xfadel@rutherfordmckenzie.com', '+62(6)3288928929', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(155, 3, 'Dallin', 'Witting', 'parisian.rosie@yahoo.com', '(048)471-9889x63375', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(156, 3, 'Carson', 'Abbott', 'evan.rippin@cruickshank.biz', '784.741.0139', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(157, 3, 'Gianni', 'Hills', 'blanda.johnson@eichmann.com', '(686)249-8503', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(158, 1, 'Queenie', 'Torphy', 'blanche09@gmail.com', '+26(6)9047277205', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(159, 3, 'Audra', 'McDermott', 'jennifer.baumbach@gmail.com', '(535)197-2522x801', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(160, 2, 'Evie', 'Johnson', 'trantow.ophelia@steuber.com', '+86(6)4487764149', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(161, 3, 'Margarette', 'Toy', 'vandervort.albert@marquardt.info', '186-391-6483x71546', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(162, 2, 'Jordon', 'Lebsack', 'kaleb74@lakin.info', '469.983.1510x41369', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(163, 1, 'Morris', 'Lesch', 'kylie.o\'connell@gmail.com', '+94(1)7148339539', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(164, 3, 'Greyson', 'Gislason', 'kaylin63@yahoo.com', '967-464-3736', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(165, 3, 'Milford', 'VonRueden', 'maryam58@gmail.com', '869.668.9345x6535', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(166, 3, 'Oswaldo', 'Bauch', 'qharvey@yahoo.com', '702.615.6335', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(167, 2, 'Lenore', 'Ferry', 'ltrantow@thompson.org', '1-680-450-1880x1881', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(168, 1, 'Jaylan', 'Reilly', 'moore.shania@okeefe.com', '522-563-6952', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(169, 3, 'Norval', 'Feest', 'ereichert@yahoo.com', '(633)121-9047', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(170, 2, 'Bridget', 'Stanton', 'stanton.deron@barrowsschuster.com', '118.863.2330x3576', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(171, 1, 'Carmen', 'Heathcote', 'leannon.carley@gmail.com', '178.305.4318x5067', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(172, 2, 'Joshua', 'Block', 'qsmitham@miller.com', '(526)424-4672', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(173, 2, 'Elfrieda', 'Mann', 'prunte@hotmail.com', '673.967.0826x163', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(174, 2, 'Verner', 'Keeling', 'gideon.stark@gmail.com', '(270)755-7364', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(175, 3, 'Maria', 'Shields', 'asanford@yahoo.com', '(222)833-8918x037', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(176, 1, 'Jameson', 'Ward', 'hamill.isabell@willritchie.org', '1-883-996-6011', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(177, 2, 'Brock', 'Breitenberg', 'bosco.veda@hotmail.com', '229-890-9420x8593', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(178, 3, 'Chaz', 'Buckridge', 'buster81@yahoo.com', '005.557.1446', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(179, 3, 'Camron', 'Cassin', 'dorcas21@durgangrant.com', '370.666.8051', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(180, 2, 'Patrick', 'Schumm', 'fidel.gutkowski@hotmail.com', '600-473-1310', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(181, 2, 'Jasper', 'Jones', 'parker.theodora@gmail.com', '1-562-147-8635', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(182, 2, 'Vickie', 'Leffler', 'schimmel.herbert@hayescrooks.net', '475-637-2273x21647', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(183, 1, 'Demetris', 'Klocko', 'rogahn.maggie@yahoo.com', '+98(6)7538908373', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(184, 3, 'Consuelo', 'Stark', 'daniella91@larkin.info', '196.092.1158x7234', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(185, 1, 'River', 'Swaniawski', 'catalina89@yahoo.com', '1-888-845-5337', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(186, 2, 'Otto', 'Tremblay', 'newell64@yahoo.com', '206-736-5879x118', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(187, 1, 'Grayson', 'Mann', 'ziemann.bud@moen.com', '1-941-681-8586x4439', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(188, 1, 'Donnie', 'Blanda', 'nhermiston@hotmail.com', '(345)191-4719', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(189, 2, 'Cathryn', 'Schultz', 'jast.nelle@yahoo.com', '(474)331-1457', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(190, 1, 'Myra', 'Heller', 'gibson.davonte@hotmail.com', '071.045.7048x5040', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(191, 2, 'Bennett', 'Schamberger', 'igrady@bauch.org', '577.389.9068x94095', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(192, 3, 'Isac', 'Senger', 'general69@yahoo.com', '+98(7)4711788121', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(193, 1, 'Dianna', 'Hayes', 'anais92@kirlin.com', '358.005.1962x9857', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(194, 3, 'Osvaldo', 'Rogahn', 'xadams@hotmail.com', '(106)718-3940', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(195, 2, 'Margarette', 'Aufderhar', 'leon60@monahan.com', '09271925609', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(196, 3, 'Judy', 'Rempel', 'rowe.madalyn@yahoo.com', '(949)951-4836x76518', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(197, 2, 'Lambert', 'Wiza', 'ehaag@gmail.com', '284.377.5480x957', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(198, 1, 'Warren', 'Wiza', 'njohnston@koss.com', '1-902-084-6181x45061', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(199, 1, 'Andy', 'Kohler', 'lera.murphy@yahoo.com', '(015)859-8926x50905', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(200, 2, 'Pamela', 'Wehner', 'kessler.micah@hauckschinner.biz', '297.131.9171x123', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(201, 3, 'Maria', 'Price', 'valerie29@nikolausmayer.com', '00951159832', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(202, 2, 'Adolfo', 'Ullrich', 'tanya.pfeffer@gmail.com', '1-483-535-0030', NULL, 0, '2024-03-19 11:30:03', '2024-03-19 04:30:03'),
(203, 3, 'Winston', 'Schaden', 'ebert.zora@hotmail.com', '1-699-329-3148x7873', NULL, 0, '2024-03-19 04:54:57', '2024-03-19 04:54:57'),
(204, 2, 'Kaleb', 'Connelly', 'wwatsica@hotmail.com', '790-630-8975x90983', NULL, 0, '2024-03-19 04:54:57', '2024-03-19 04:54:57'),
(205, 3, 'Anjali', 'Dibbert', 'thurman48@cassinklocko.com', '1-426-704-6806', NULL, 0, '2024-03-19 04:54:57', '2024-03-19 04:54:57'),
(206, 2, 'Elinore', 'Cole', 'torp.jordy@smithconsidine.biz', '210.418.6597', NULL, 0, '2024-03-19 04:54:57', '2024-03-19 04:54:57'),
(207, 3, 'Susan', 'Walker', 'hipolito25@wuckert.info', '(135)020-2675', NULL, 0, '2024-03-19 04:54:57', '2024-03-19 04:54:57'),
(208, 3, 'Mitchell', 'Abernathy', 'pframi@bode.biz', '(328)519-5983x9559', NULL, 0, '2024-03-19 04:54:57', '2024-03-19 04:54:57'),
(209, 2, 'Lolita', 'Littel', 'kennedi76@gmail.com', '02157275664', NULL, 0, '2024-03-19 04:54:57', '2024-03-19 04:54:57'),
(210, 2, 'Jayson', 'Stamm', 'jaylan68@cartwright.org', '+56(0)6538279227', NULL, 0, '2024-03-19 04:54:57', '2024-03-19 04:54:57'),
(211, 1, 'Salvador', 'Wunsch', 'moises.hoppe@gmail.com', '1-799-235-4588', NULL, 0, '2024-03-19 04:54:57', '2024-03-19 04:54:57'),
(212, 1, 'Rosemarie', 'Adams', 'name.hayes@crona.net', '761.079.1017x62263', NULL, 0, '2024-03-19 04:54:57', '2024-03-19 04:54:57'),
(213, 3, 'Neil', 'Purdy', 'eldridge01@lubowitz.com', '09345148732', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(214, 2, 'Clyde', 'Kunde', 'albin.kunde@johnson.com', '+59(7)8198373673', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(215, 2, 'Lurline', 'Stroman', 'cdaniel@yahoo.com', '1-488-324-0372x952', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(216, 3, 'Kayden', 'Ward', 'farrell.sam@eichmann.com', '(801)929-8784', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(217, 3, 'Sydnie', 'Friesen', 'aortiz@kemmerjenkins.org', '174-274-6771', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(218, 2, 'Viva', 'Waelchi', 'brain38@green.org', '331-625-5436x2048', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(219, 1, 'Joshuah', 'Kautzer', 'miguel.upton@leuschke.info', '506-796-6416x257', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(220, 1, 'Julio', 'Skiles', 'karl04@yahoo.com', '(660)339-9625x188', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(221, 1, 'Krystina', 'Aufderhar', 'wisoky.veda@gmail.com', '(587)790-9346x153', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(222, 2, 'Audreanne', 'Turcotte', 'fdouglas@yahoo.com', '(543)962-1970x72541', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(223, 2, 'Ransom', 'Leffler', 'fstamm@yahoo.com', '(502)171-7363x99909', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(224, 3, 'Mae', 'Lynch', 'blanda.gaetano@yahoo.com', '(633)124-4886x67755', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(225, 1, 'Justina', 'Grimes', 'emmy.hilll@barrowsbrakus.net', '1-128-195-0160x071', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(226, 1, 'Fleta', 'McLaughlin', 'marjorie86@deckow.com', '1-970-723-8124', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(227, 2, 'Josh', 'Abshire', 'schuster.kathryn@yahoo.com', '02068279033', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(228, 2, 'Obie', 'Cassin', 'lazaro10@gmail.com', '1-562-036-7255', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(229, 1, 'Jaida', 'Miller', 'walton.crona@bogan.com', '(726)388-1672', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(230, 2, 'Ricky', 'Jast', 'collin.gaylord@hoeger.com', '+35(7)6800706328', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(231, 1, 'Calista', 'Schultz', 'arnulfo.harris@hillswaters.info', '835.602.7106', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(232, 2, 'Rex', 'Wilderman', 'jovan.beatty@gmail.com', '463-541-4556x919', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(233, 1, 'Lori', 'Smith', 'jeanette.ledner@cruickshank.info', '1-415-170-8064x1417', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(234, 2, 'Ian', 'Howe', 'sammy.gutkowski@hotmail.com', '863.772.4555x6282', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(235, 3, 'Lillie', 'Morissette', 'schultz.deonte@yahoo.com', '888-577-9803x01642', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(236, 1, 'Lurline', 'Raynor', 'becker.neva@lynchconsidine.com', '197.659.4647', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(237, 1, 'Christophe', 'Herzog', 'hailie31@dibbertrussel.com', '1-122-282-5958x7281', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(238, 3, 'Jovani', 'Skiles', 'zackery.lebsack@gmail.com', '1-970-899-2852x6226', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(239, 1, 'Tiara', 'Ledner', 'jdurgan@hotmail.com', '1-011-000-9800x868', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(240, 2, 'Alex', 'Hahn', 'claudine.kuvalis@gmail.com', '536.425.3773x929', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(241, 2, 'Jammie', 'Nicolas', 'franecki.clara@hotmail.com', '153.927.8657', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(242, 3, 'Leonor', 'Baumbach', 'savion34@yahoo.com', '1-313-094-1916', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(243, 1, 'Ressie', 'Barrows', 'kayli.willms@pfannerstilllittle.com', '1-545-576-7859', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(244, 2, 'Cortez', 'Ledner', 'sandra49@oreilly.biz', '1-666-191-4296', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(245, 1, 'Alessia', 'Ullrich', 'gracie34@gmail.com', '(455)796-0503x64896', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(246, 2, 'Dayton', 'Kiehn', 'marcelina.kozey@gmail.com', '972.327.9768x57975', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(247, 3, 'Eldred', 'Mayer', 'goldner.emil@yahoo.com', '+72(7)2335307492', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(248, 1, 'Kiarra', 'Ruecker', 'bupton@yahoo.com', '+41(6)5674799559', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(249, 2, 'Wayne', 'Collier', 'danika28@orn.org', '1-235-061-1198', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(250, 2, 'Mia', 'Kilback', 'jaunita31@hotmail.com', '(410)393-7642x177', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(251, 3, 'Jazmyn', 'McKenzie', 'smitham.franz@yahoo.com', '217-833-2808', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(252, 2, 'Triston', 'Kihn', 'gkilback@block.com', '1-930-585-4839', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(253, 1, 'Herman', 'Jenkins', 'trantow.demetris@gmail.com', '1-415-991-6631x004', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(254, 2, 'Elena', 'Cummings', 'xfadel@rutherfordmckenzie.com', '+62(6)3288928929', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(255, 3, 'Dallin', 'Witting', 'parisian.rosie@yahoo.com', '(048)471-9889x63375', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(256, 3, 'Carson', 'Abbott', 'evan.rippin@cruickshank.biz', '784.741.0139', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(257, 3, 'Gianni', 'Hills', 'blanda.johnson@eichmann.com', '(686)249-8503', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(258, 1, 'Queenie', 'Torphy', 'blanche09@gmail.com', '+26(6)9047277205', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(259, 3, 'Audra', 'McDermott', 'jennifer.baumbach@gmail.com', '(535)197-2522x801', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(260, 2, 'Evie', 'Johnson', 'trantow.ophelia@steuber.com', '+86(6)4487764149', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(261, 3, 'Margarette', 'Toy', 'vandervort.albert@marquardt.info', '186-391-6483x71546', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(262, 2, 'Jordon', 'Lebsack', 'kaleb74@lakin.info', '469.983.1510x41369', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(263, 1, 'Morris', 'Lesch', 'kylie.o\'connell@gmail.com', '+94(1)7148339539', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(264, 3, 'Greyson', 'Gislason', 'kaylin63@yahoo.com', '967-464-3736', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(265, 3, 'Milford', 'VonRueden', 'maryam58@gmail.com', '869.668.9345x6535', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(266, 3, 'Oswaldo', 'Bauch', 'qharvey@yahoo.com', '702.615.6335', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(267, 2, 'Lenore', 'Ferry', 'ltrantow@thompson.org', '1-680-450-1880x1881', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(268, 1, 'Jaylan', 'Reilly', 'moore.shania@okeefe.com', '522-563-6952', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(269, 3, 'Norval', 'Feest', 'ereichert@yahoo.com', '(633)121-9047', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(270, 2, 'Bridget', 'Stanton', 'stanton.deron@barrowsschuster.com', '118.863.2330x3576', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(271, 1, 'Carmen', 'Heathcote', 'leannon.carley@gmail.com', '178.305.4318x5067', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(272, 2, 'Joshua', 'Block', 'qsmitham@miller.com', '(526)424-4672', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(273, 2, 'Elfrieda', 'Mann', 'prunte@hotmail.com', '673.967.0826x163', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(274, 2, 'Verner', 'Keeling', 'gideon.stark@gmail.com', '(270)755-7364', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(275, 3, 'Maria', 'Shields', 'asanford@yahoo.com', '(222)833-8918x037', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(276, 1, 'Jameson', 'Ward', 'hamill.isabell@willritchie.org', '1-883-996-6011', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(277, 2, 'Brock', 'Breitenberg', 'bosco.veda@hotmail.com', '229-890-9420x8593', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(278, 3, 'Chaz', 'Buckridge', 'buster81@yahoo.com', '005.557.1446', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(279, 3, 'Camron', 'Cassin', 'dorcas21@durgangrant.com', '370.666.8051', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(280, 2, 'Patrick', 'Schumm', 'fidel.gutkowski@hotmail.com', '600-473-1310', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(281, 2, 'Jasper', 'Jones', 'parker.theodora@gmail.com', '1-562-147-8635', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(282, 2, 'Vickie', 'Leffler', 'schimmel.herbert@hayescrooks.net', '475-637-2273x21647', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(283, 1, 'Demetris', 'Klocko', 'rogahn.maggie@yahoo.com', '+98(6)7538908373', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(284, 3, 'Consuelo', 'Stark', 'daniella91@larkin.info', '196.092.1158x7234', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(285, 1, 'River', 'Swaniawski', 'catalina89@yahoo.com', '1-888-845-5337', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(286, 2, 'Otto', 'Tremblay', 'newell64@yahoo.com', '206-736-5879x118', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(287, 1, 'Grayson', 'Mann', 'ziemann.bud@moen.com', '1-941-681-8586x4439', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(288, 1, 'Donnie', 'Blanda', 'nhermiston@hotmail.com', '(345)191-4719', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(289, 2, 'Cathryn', 'Schultz', 'jast.nelle@yahoo.com', '(474)331-1457', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(290, 1, 'Myra', 'Heller', 'gibson.davonte@hotmail.com', '071.045.7048x5040', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(291, 2, 'Bennett', 'Schamberger', 'igrady@bauch.org', '577.389.9068x94095', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(292, 3, 'Isac', 'Senger', 'general69@yahoo.com', '+98(7)4711788121', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(293, 1, 'Dianna', 'Hayes', 'anais92@kirlin.com', '358.005.1962x9857', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(294, 3, 'Osvaldo', 'Rogahn', 'xadams@hotmail.com', '(106)718-3940', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(295, 2, 'Margarette', 'Aufderhar', 'leon60@monahan.com', '09271925609', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(296, 3, 'Judy', 'Rempel', 'rowe.madalyn@yahoo.com', '(949)951-4836x76518', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(297, 2, 'Lambert', 'Wiza', 'ehaag@gmail.com', '284.377.5480x957', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(298, 1, 'Warren', 'Wiza', 'njohnston@koss.com', '1-902-084-6181x45061', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(299, 1, 'Andy', 'Kohler', 'lera.murphy@yahoo.com', '(015)859-8926x50905', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(300, 2, 'Pamela', 'Wehner', 'kessler.micah@hauckschinner.biz', '297.131.9171x123', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(301, 3, 'Maria', 'Price', 'valerie29@nikolausmayer.com', '00951159832', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58'),
(302, 2, 'Adolfo', 'Ullrich', 'tanya.pfeffer@gmail.com', '1-483-535-0030', NULL, 0, '2024-03-19 04:54:58', '2024-03-19 04:54:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group_user`
--
ALTER TABLE `group_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `group_user`
--
ALTER TABLE `group_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

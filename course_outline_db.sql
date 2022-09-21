-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2022 at 12:01 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_outline_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'HND I'),
(2, 'HND II'),
(23, 'ND I'),
(24, 'ND II'),
(26, 'HND i lte');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 68, 'Guest', 'alphasilas4@gmail.com', 'https://t.me/hymns_songs', 'approved', '2021-10-20'),
(2, 43, 'Guest', 'alphasilas4@gmail.com', 'Visit the telegram page...\r\n\r\nhttps://t.me/hymns_songs', 'approved', '2021-10-20'),
(3, 92, 'Silas', 'alphasilas4@gmail.com', 'nice course', 'approved', '2022-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_by` varchar(255) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_publisher` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_pdf` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` varchar(200) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_by`, `post_title`, `post_author`, `post_publisher`, `post_date`, `post_image`, `post_pdf`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(87, 26, 'uriel', 'Computer Graphic', 'John Paul', 'MAry', '0000-00-00', 'Screenshot_20210810-090232.png', '', 'Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Certification Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum. The Instructor Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus.', 'Com 422', '', 'published', 22),
(88, 26, '', 'Computer Graphic', 'Yusuf', 'Thony', '0000-00-00', 'Screenshot_20210810-090232.png', '', 'Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Certification Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum. The Instructor Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus.', 'Com 422', '', 'published', 1),
(89, 23, '', 'Computer Graphic', 'John Paul', '', '0000-00-00', 'Screenshot_20210810-090232.png', '', 'Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Certification Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum. The Instructor Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus.', 'Com 422', '', 'published', 7),
(90, 2, '', 'Computer Graphic', 'John Paul', '', '0000-00-00', 'Screenshot_20210810-090232.png', '', 'Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Certification Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum. The Instructor Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus.', 'Com 422', '', 'published', 0),
(91, 2, 'admin', 'Project mangement', 'Dr. Alarape', 'Sameul', '2022-08-28', '7.jpg', '', 'kjduhsd suhdushc shcsdc osdc sds c&nbsp; nsodns docnsdcs cosoddn', '', '', 'published', 0),
(92, 1, 'admin', 'Project mangement', 'Dr. Alarape', 'Sameul', '0000-00-00', '7.jpg', '', 'MetaMask is the crypto wallet and gateway to blockchain applications and it is trusted by more than 21 million users worldwide and it is free and secure to use.\r\nMetaMask supports you with key vault, secure login, token wallet, and token exchange, and it&rsquo;s all you need to manage your digital assets.&nbsp;\r\nIt provides the simplest way and most secure way to connect to blockchain-based applications and you will always be in control when interacting on the decentralized web.&nbsp;\r\nWith Metamask, you can interact with different decentralized applications. Metamask supports IOS, Android native apps along with Chrome, Firefox, Brave, and Edge Browser.', 'Com 414', '', 'published', 5),
(93, 23, '', 'Introduction to computer', 'Lynn D', '', '2022-08-31', '4.jpg', '', 'basic computers basic computers basic computersbasic computersbasic computersbasic computers', 'com101', '', 'published', 3),
(94, 23, '', 'Computer Graphic', 'John Paul', '', '2022-09-03', 'Screenshot_20210810-090232.png', '', 'Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Certification Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum. The Instructor Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus.', 'Com 422', '', 'published', 0),
(95, 1, '', 'Computer Graphic', 'Yusuf', '', '2022-09-03', 'Screenshot_20210810-090232.png', '', 'Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Certification Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum. The Instructor Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus.', 'Com 422', '', 'published', 0),
(96, 1, '', 'Computer Graphic', 'John Paul', '', '2022-09-03', 'Screenshot_20210810-090232.png', '', 'Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum.\r\n\r\n\r\nCertification\r\nPhasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum.\r\n\r\n\r\nThe Instructor\r\nSed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus. Aenean vel congue diam, sed bibendum ipsum. Nunc vulputate aliquet tristique. Integer et pellentesque urna. Lorem ipsum dolor sit amet, consectetur. Phasellus sollicitudin et nunc eu efficitur. Sed ligula nulla, molestie quis ligula in, eleifend rhoncus ipsum. Donec ultrices, sem vel efficitur molestie, massa nisl posuere ipsum, ut vulputate mauris ligula a metus.', 'Com 422', '', 'published', 0),
(97, 2, 'admin', 'Web tech -PHP', 'Mr Femi', '', '2022-09-05', 'Screenshot (324).png', '../pdf/php7_tutorial.pdf', 'dest_filevghvhklnjhbuvhjbn,mml\r\nbubujhbhbuhb$\r\nbhhvghvhjbjknjn', 'Com 414', '', 'published', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randsalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randsalt`) VALUES
(9, 'tester', '$2y$10$SZlfrT1y9yDe45TmpFIgouulYdOJtKTNrnHn.3bu9diGuoJDBmf/2', 'Test', 'Tester', 'test@mail.com', '', 'admin', ''),
(17, 'admin', '$2y$10$INDRZL/ASZSFfsyF/tl/3eWdAzha5vHRKqeRl21a91YFyWbdruEqS', 'Admin', 'Admin', 'admin@mail.com', '', 'admin', '$2y$10$iusesomecrazystrings22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, 'rpco8li4s4cgecr6rqnikpthk6', 1609830427),
(2, '903b2e879aa32a83ad0203f7ccccdcba', 1612389670),
(3, '4jltqimklpro07injnmp80f7i0', 1610746418),
(4, 'erua2lmrf4fv6gdgmh0idjaf91', 1610204742),
(5, '7cukthmqdd31qe388sn665qkr0', 1612254996),
(6, 'nv4dfaagiuhfi047l88p0751h0', 1612356762),
(7, 'iau4rfargf1dvvrtlcgs4kbmu1', 1612255043),
(8, '7vdm6eo7s2n4objob34sqbhtq3', 1612541717),
(9, 'grb7ga722l4ivmmd4h9q91pcm6', 1612533273),
(10, '7126ad97b31e47efb39d367bf443dcd2', 1612360896),
(11, '4pnlk1pa27r8cbb2djl54i8fg6', 1616632761),
(12, '1m6g6095va1pd37d7ca1aoa981', 1613827073),
(13, 'i8su6hmi131ku3t1suvdqlgvf1', 1612720151),
(14, 'l2q1q45qfa26olvm6kefado0o0', 1612758790),
(15, '5a96mo5o2mr8rchlnme4j0q5j4', 1612731169),
(16, 'l6tvgfsujt5er2bnjg1jutjg72', 1612926504),
(17, 'rmovajn9kqmdmtq6toggj2o6g4', 1612958341),
(18, '4nsulctigqrbmsc8mmtmhdj7u1', 1612990503),
(19, 'f1gi1501d700kpiv6q3626kk76', 1612991449),
(20, '0vgep3liujaku1b4d8dg1lnc81', 1613004126),
(21, '8eu14pjenmmtmihsb1jbj91m37', 1613045559),
(22, 'abrdoggou3ufgc20rb0j79les3', 1613119812),
(23, 'krkr2o35v6qsqmb7rkdbbqpc17', 1613148084),
(24, 'u917s96165tcapbug5h2qat327', 1613669676),
(25, 'e7df9a5ps6ek0l0amtnok95t50', 1613769210),
(26, '0ta3a314q6o7cligia4hdvd0s2', 1614709982),
(27, '6crrm0g14mtis0srm8uifgrkd2', 1614722431),
(28, '8jcdpm34d14n164rcl9ka25ba3', 1615283334),
(29, 'u149fmi0d35fks38qtafsice87', 1615391152),
(30, 'gik47q9iepbl6e47l5mate1k47', 1615401233),
(31, 'skjgmjf66u9fvokmf1ro3vrh00', 1615404423),
(32, 'armt3kfdaih3c8adt81kmlh8d2', 1615450769),
(33, '6obsu4b08jg58g1kcibvhgjcr4', 1615499284),
(34, '1iajmegj8bhj80c065qiqr3rd0', 1616433680),
(35, '7o7925b38c05msgk0u3agpbuj7', 1616444564),
(36, 'nghn81odgtfb8fnppalp2mvbt1', 1616580055),
(37, 'g5brh4gbr69lcn5tik9p9pgid7', 1616581138),
(38, 'kah3iu1rker64nfup85thhouk1', 1616581548),
(39, 'a5sf2g467821qk60s7dgfjir12', 1616611734),
(40, 'iqhn45q3pcfdtlqkho6jjl1dt2', 1616612051),
(41, '5em8kp0kvusr1s8b678b1pg8s6', 1617135020),
(42, '07re8fp4e51jesoej0qu9255e0', 1617393012),
(43, 'uph5vbau63uqkckub50nmdgn70', 1623445228),
(44, '6c61duh10010tqs96rmkcdfti5', 1628559224),
(45, '305h2sg29gcbu3kd1jh13o5j00', 1628582721),
(46, '56avs5on5mg3usabdu29s6naa1', 1628606726),
(47, 'om2lhfu9l7mp7ph6hj58j010h5', 1628609644),
(48, 'ftpkseku5i7tosc65k0nna7oi6', 1628688366),
(49, 'tpu2a5r6behd682rb28tqghq61', 1630782608),
(50, 'l1da41la1rn0vr59u427412o55', 1632485404),
(51, 'airdjsdi3m380us24kdbgu8kt2', 1634762367),
(52, '2vsouculd5clto41bffust8o80', 1635188324),
(53, 'brr45sq7uaggmsmkco36nbrk85', 1635239431),
(54, 'lbh7ealvput30ems7hrfj0nbb7', 1658968368);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

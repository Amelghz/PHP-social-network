-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 29 jan. 2023 à 17:52
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `myesprims_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `content_i_follow`
--

CREATE TABLE `content_i_follow` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `contentid` bigint(20) NOT NULL,
  `content_type` varchar(10) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `group_invites`
--

CREATE TABLE `group_invites` (
  `id` bigint(20) NOT NULL,
  `groupid` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `inviter` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `group_members`
--

CREATE TABLE `group_members` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `groupid` bigint(20) NOT NULL,
  `role` varchar(9) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `group_members`
--

INSERT INTO `group_members` (`id`, `userid`, `groupid`, `role`, `disabled`) VALUES
(6, 93630689242930997, 372483662255561379, 'moderator', 0),
(7, 1316967080907, 372483662255561379, 'member', 0),
(8, 8615443, 372483662255561379, 'member', 0);

-- --------------------------------------------------------

--
-- Structure de la table `group_requests`
--

CREATE TABLE `group_requests` (
  `id` bigint(20) NOT NULL,
  `groupid` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `group_requests`
--

INSERT INTO `group_requests` (`id`, `groupid`, `userid`, `disabled`) VALUES
(4, 372483662255561379, 8615443, 1),
(5, 372483662255561379, 93630689242930997, 1),
(6, 372483662255561379, 1316967080907, 1);

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `likes` text NOT NULL,
  `contentid` bigint(20) NOT NULL,
  `following` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `type`, `likes`, `contentid`, `following`) VALUES
(19, 'post', '[{\"userid\":\"317059147\",\"date\":\"2023-01-27 16:41:20\"}]', 4285172303116736756, ''),
(20, 'post', '[{\"userid\":\"8615443\",\"date\":\"2023-01-27 21:46:15\"}]', 4640051086978, ''),
(21, 'post', '[{\"userid\":\"8615443\",\"date\":\"2023-01-27 21:46:45\"}]', 437634210, ''),
(22, 'user', '{\"3\":{\"userid\":\"317059147\",\"date\":\"2023-01-29 16:14:28\"}}', 8615443, '[{\"userid\":\"1316967080907\",\"date\":\"2023-01-29 16:55:25\"},{\"userid\":\"93630689242930997\",\"date\":\"2023-01-29 16:55:56\"}]'),
(23, 'user', '[{\"userid\":\"1316967080907\",\"date\":\"2023-01-29 16:51:26\"},{\"userid\":\"93630689242930997\",\"date\":\"2023-01-29 16:52:05\"},{\"userid\":\"8615443\",\"date\":\"2023-01-29 16:55:09\"}]', 317059147, '[{\"userid\":\"1316967080907\",\"date\":\"2023-01-29 16:45:20\"},{\"userid\":\"8615443\",\"date\":\"2023-01-29 16:46:01\"},{\"userid\":\"93630689242930997\",\"date\":\"2023-01-29 16:47:21\"}]'),
(24, 'post', '[{\"userid\":\"1316967080907\",\"date\":\"2023-01-29 15:29:46\"}]', 105043846453, ''),
(25, 'post', '[{\"userid\":\"1316967080907\",\"date\":\"2023-01-29 16:01:47\"}]', 99281834173676476, ''),
(26, 'user', '[{\"userid\":\"317059147\",\"date\":\"2023-01-29 16:45:20\"},{\"userid\":\"93630689242930997\",\"date\":\"2023-01-29 16:52:14\"},{\"userid\":\"8615443\",\"date\":\"2023-01-29 16:55:25\"}]', 1316967080907, '[{\"userid\":\"8615443\",\"date\":\"2023-01-29 16:02:09\"},{\"userid\":\"317059147\",\"date\":\"2023-01-29 16:51:26\"}]'),
(27, 'user', '[{\"userid\":\"317059147\",\"date\":\"2023-01-29 16:47:21\"},{\"userid\":\"93630689242930997\",\"date\":\"2023-01-29 16:52:45\"},{\"userid\":\"8615443\",\"date\":\"2023-01-29 16:55:56\"}]', 93630689242930997, '[{\"userid\":\"8615443\",\"date\":\"2023-01-29 16:07:23\"},{\"userid\":\"317059147\",\"date\":\"2023-01-29 16:52:05\"},{\"userid\":\"1316967080907\",\"date\":\"2023-01-29 16:52:14\"}]'),
(28, 'post', '[{\"userid\":\"93630689242930997\",\"date\":\"2023-01-29 16:12:51\"}]', 24734, ''),
(29, 'post', '[{\"userid\":\"317059147\",\"date\":\"2023-01-29 17:08:16\"}]', 2099587704481, '');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL,
  `msgid` varchar(60) NOT NULL,
  `sender` bigint(20) NOT NULL,
  `receiver` bigint(20) NOT NULL,
  `message` text DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL,
  `received` tinyint(1) NOT NULL DEFAULT 0,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_sender` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_receiver` tinyint(1) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `tags` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `msgid`, `sender`, `receiver`, `message`, `file`, `received`, `seen`, `deleted_sender`, `deleted_receiver`, `date`, `tags`) VALUES
(22, 'XaLrd0dbVMDOBLxtLIAUZVWAxXrYgYuabVRt_HWxH6Xuuwn6hdIrd8O', 317059147, 8615443, 'ahla', '', 0, 0, 0, 0, '2023-01-29 12:35:59', '[]'),
(23, 'XaLrd0dbVMDOBLxtLIAUZVWAxXrYgYuabVRt_HWxH6Xuuwn6hdIrd8O', 317059147, 8615443, 'cha7welk', '', 0, 0, 1, 0, '2023-01-29 12:36:06', '[]'),
(24, 'XTneDTnB_KZxJst9BnI-6dKhb9Ndbj4O', 1316967080907, 317059147, 'bonjour', '', 0, 0, 0, 0, '2023-01-29 16:02:43', '[]');

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `activity` varchar(10) NOT NULL,
  `contentid` bigint(20) NOT NULL,
  `content_owner` bigint(20) NOT NULL,
  `content_type` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`id`, `userid`, `activity`, `contentid`, `content_owner`, `content_type`, `date`) VALUES
(48, 317059147, 'like', 4285172303116736756, 317059147, 'post', '2023-01-27 16:41:20'),
(49, 8615443, 'like', 4640051086978, 8615443, 'post', '2023-01-27 21:46:15'),
(50, 8615443, 'like', 437634210, 8615443, 'comment', '2023-01-27 21:46:45'),
(51, 317059147, 'follow', 8615443, 8615443, 'profile', '2023-01-29 12:15:39'),
(52, 1316967080907, 'like', 105043846453, 1316967080907, 'post', '2023-01-29 15:29:46'),
(53, 1316967080907, 'like', 99281834173676476, 317059147, 'post', '2023-01-29 16:01:47'),
(54, 1316967080907, 'follow', 8615443, 8615443, 'profile', '2023-01-29 16:02:09'),
(55, 93630689242930997, 'follow', 8615443, 8615443, 'profile', '2023-01-29 16:07:23'),
(56, 93630689242930997, 'like', 24734, 93630689242930997, 'post', '2023-01-29 16:12:51'),
(57, 317059147, 'follow', 8615443, 8615443, 'profile', '2023-01-29 16:14:28'),
(58, 317059147, 'follow', 1316967080907, 1316967080907, 'profile', '2023-01-29 16:45:20'),
(59, 317059147, 'follow', 8615443, 8615443, 'profile', '2023-01-29 16:46:01'),
(60, 317059147, 'follow', 93630689242930997, 93630689242930997, 'profile', '2023-01-29 16:47:21'),
(61, 1316967080907, 'follow', 317059147, 317059147, 'profile', '2023-01-29 16:51:26'),
(62, 93630689242930997, 'follow', 317059147, 317059147, 'profile', '2023-01-29 16:52:05'),
(63, 93630689242930997, 'follow', 1316967080907, 1316967080907, 'profile', '2023-01-29 16:52:14'),
(64, 8615443, 'follow', 317059147, 317059147, 'profile', '2023-01-29 16:55:04'),
(65, 8615443, 'follow', 1316967080907, 1316967080907, 'profile', '2023-01-29 16:55:25'),
(66, 8615443, 'follow', 93630689242930997, 93630689242930997, 'profile', '2023-01-29 16:55:56'),
(67, 317059147, 'role', 372483662255561379, 93630689242930997, 'group', '2023-01-29 17:04:19'),
(68, 317059147, 'role', 372483662255561379, 93630689242930997, 'group', '2023-01-29 17:04:23'),
(69, 317059147, 'like', 2099587704481, 1316967080907, 'post', '2023-01-29 17:08:16');

-- --------------------------------------------------------

--
-- Structure de la table `notification_seen`
--

CREATE TABLE `notification_seen` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `notification_seen`
--

INSERT INTO `notification_seen` (`id`, `userid`, `notification_id`) VALUES
(30, 317059147, 0),
(31, 8615443, 0),
(32, 317059147, 61);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL,
  `postid` bigint(20) NOT NULL,
  `post` text NOT NULL,
  `image` varchar(500) NOT NULL,
  `has_image` tinyint(1) NOT NULL,
  `is_profile_image` tinyint(1) NOT NULL,
  `is_cover_image` tinyint(1) NOT NULL,
  `parent` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `userid` bigint(20) NOT NULL,
  `owner` bigint(20) NOT NULL,
  `likes` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `tags` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `postid`, `post`, `image`, `has_image`, `is_profile_image`, `is_cover_image`, `parent`, `date`, `userid`, `owner`, `likes`, `comments`, `tags`) VALUES
(76, 4285172303116736756, '', 'uploads/317059147/PEvSxqfFK5NzKAJ.jpeg', 1, 0, 0, 0, '2023-01-27 12:09:13', 317059147, 0, 1, 1, '[]'),
(77, 3548363287323739, '', 'uploads/317059147/iTYx2EHsrml4rcl.jpg', 1, 1, 0, 0, '2023-01-27 12:09:56', 317059147, 0, 0, 0, '[]'),
(78, 51388632650237, 'cc', '', 0, 0, 0, 4285172303116736756, '2023-01-27 16:41:36', 317059147, 0, 0, 0, '[]'),
(80, 846520081, '', 'uploads/8615443/86JPIS1Iu2LRTtl.jpg', 1, 1, 0, 0, '2023-01-27 21:44:29', 8615443, 0, 0, 0, '[]'),
(81, 4640051086978, 'good luck', '', 0, 0, 0, 0, '2023-01-27 21:45:56', 8615443, 0, 1, 1, '[]'),
(82, 437634210, 'thanks', '', 0, 0, 0, 4640051086978, '2023-01-27 21:46:35', 8615443, 0, 1, 0, '[]'),
(83, 70151484756, 'test', 'uploads/317059147/h0wu7VvSrBsmkwh.jpeg', 1, 0, 0, 0, '2023-01-29 12:40:24', 317059147, 0, 0, 0, '[]'),
(84, 9451346894, '', 'uploads/317059147/vbqKWFleJPdGpbC.jpg', 1, 1, 0, 0, '2023-01-29 12:57:57', 317059147, 0, 0, 0, '[]'),
(85, 99281834173676476, '', 'uploads/317059147/Yv5JTesgzoUlPSa.jpg', 1, 0, 1, 0, '2023-01-29 12:58:13', 317059147, 0, 1, 0, '[]'),
(86, 2099587704481, '', 'uploads/1316967080907/6pZMH1eNLlhRFZY.jpg', 1, 1, 0, 0, '2023-01-29 15:28:56', 1316967080907, 0, 1, 0, '[]'),
(87, 105043846453, '', 'uploads/1316967080907/23wwZJYCttJMfM0.jpg', 1, 1, 0, 0, '2023-01-29 15:29:34', 1316967080907, 0, 1, 0, '[]'),
(88, 24734, '', 'uploads/93630689242930997/YHyWbEuwkzMPOzl.jpg', 1, 1, 0, 0, '2023-01-29 16:06:57', 93630689242930997, 0, 1, 1, '[]'),
(89, 112182997661, 'hello\r\n', '', 0, 0, 0, 24734, '2023-01-29 16:13:01', 93630689242930997, 0, 0, 0, '[]'),
(90, 17495990174022, '', 'uploads/317059147/UV0HXa394ZQbypv.jpg', 1, 1, 0, 0, '2023-01-29 16:13:42', 317059147, 0, 0, 0, '[]'),
(91, 2268036186547443479, '', 'uploads/317059147/5hi842gHJVPVHUP.jpg', 1, 0, 1, 0, '2023-01-29 16:14:01', 317059147, 0, 0, 0, '[]'),
(92, 857286605344, '', 'uploads/317059147/EqHqUuBbnlk5FLU.jpg', 1, 0, 1, 0, '2023-01-29 16:14:04', 317059147, 0, 0, 0, '[]'),
(93, 84070280608842, '', 'uploads/372483662255561379/2ZyFn4GJJfPXgrI.jpg', 1, 0, 1, 0, '2023-01-29 17:16:15', 372483662255561379, 372483662255561379, 0, 0, '[]');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `owner` bigint(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `type` varchar(10) NOT NULL,
  `profile_image` varchar(500) NOT NULL,
  `cover_image` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `online` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `url_address` varchar(100) NOT NULL,
  `likes` int(11) NOT NULL,
  `about` text NOT NULL,
  `tag_name` varchar(20) NOT NULL,
  `group_type` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `userid`, `owner`, `first_name`, `last_name`, `gender`, `type`, `profile_image`, `cover_image`, `date`, `online`, `email`, `password`, `url_address`, `likes`, `about`, `tag_name`, `group_type`) VALUES
(15, 317059147, 0, 'Amel', 'Ghozzi', 'Female', 'profile', 'uploads/317059147/UV0HXa394ZQbypv.jpg', 'uploads/317059147/EqHqUuBbnlk5FLU.jpg', '2023-01-26 13:52:29', 1675010141, 'amel500linda@gmail.com', '9ee53d1cec0d5e0348cb88f67155a25ff80635ec', 'amel.ghozzi', 3, 'good luck :)', 'amelghozzi', ''),
(16, 8615443, 0, 'Houssem', 'Hnia', 'Male', 'profile', 'uploads/8615443/86JPIS1Iu2LRTtl.jpg', '', '2023-01-27 21:40:11', 1675008072, 'houssemeddinepro@gmail.com ', '9ee53d1cec0d5e0348cb88f67155a25ff80635ec', 'houssem.hnia', 1, '', 'houssemhnia', ''),
(17, 372483662255561379, 317059147, 'Esprims', '', '', 'group', '', 'uploads/372483662255561379/2ZyFn4GJJfPXgrI.jpg', '2023-01-29 12:58:39', 0, '', '', 'esprims.9078', 0, '', '', 'Public'),
(18, 1316967080907, 0, 'Manar', 'Zich', 'Female', 'profile', 'uploads/1316967080907/23wwZJYCttJMfM0.jpg', '', '2023-01-29 15:26:22', 1675008042, 'manarzich233@gmail.com ', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'manar.zich', 3, '', 'manarzich', ''),
(19, 93630689242930997, 0, 'Rim', 'Bziouich', 'Female', 'profile', 'uploads/93630689242930997/YHyWbEuwkzMPOzl.jpg', '', '2023-01-29 16:06:33', 1675008004, 'itmbziouich@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'rim.bziouich', 3, '', 'rimbziouich', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `content_i_follow`
--
ALTER TABLE `content_i_follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `contentid` (`contentid`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `date` (`date`);

--
-- Index pour la table `group_invites`
--
ALTER TABLE `group_invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `inviter` (`inviter`);

--
-- Index pour la table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `role` (`role`);

--
-- Index pour la table `group_requests`
--
ALTER TABLE `group_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `disabled` (`disabled`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `contentid` (`contentid`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `msgid` (`msgid`),
  ADD KEY `sender` (`sender`),
  ADD KEY `receiver` (`receiver`),
  ADD KEY `received` (`received`),
  ADD KEY `seen` (`seen`),
  ADD KEY `deleted_sender` (`deleted_sender`),
  ADD KEY `date` (`date`),
  ADD KEY `deleted_receiver` (`deleted_receiver`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `contentid` (`contentid`),
  ADD KEY `content_owner` (`content_owner`),
  ADD KEY `date` (`date`);

--
-- Index pour la table `notification_seen`
--
ALTER TABLE `notification_seen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `notification_id` (`notification_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postid` (`postid`),
  ADD KEY `date` (`date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `userid` (`userid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `comments` (`comments`),
  ADD KEY `owner` (`owner`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `date` (`date`),
  ADD KEY `online` (`online`),
  ADD KEY `email` (`email`),
  ADD KEY `url_address` (`url_address`),
  ADD KEY `likes` (`likes`),
  ADD KEY `tag_name` (`tag_name`),
  ADD KEY `type` (`type`),
  ADD KEY `owner` (`owner`),
  ADD KEY `group_type` (`group_type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `content_i_follow`
--
ALTER TABLE `content_i_follow`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `group_invites`
--
ALTER TABLE `group_invites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `group_requests`
--
ALTER TABLE `group_requests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pour la table `notification_seen`
--
ALTER TABLE `notification_seen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

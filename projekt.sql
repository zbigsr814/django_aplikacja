-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Maj 2023, 00:35
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projekt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add member', 7, 'add_member'),
(26, 'Can change member', 7, 'change_member'),
(27, 'Can delete member', 7, 'delete_member'),
(28, 'Can view member', 7, 'view_member'),
(29, 'Can add esp1', 8, 'add_esp1'),
(30, 'Can change esp1', 8, 'change_esp1'),
(31, 'Can delete esp1', 8, 'delete_esp1'),
(32, 'Can view esp1', 8, 'view_esp1'),
(33, 'Can add esp2', 9, 'add_esp2'),
(34, 'Can change esp2', 9, 'change_esp2'),
(35, 'Can delete esp2', 9, 'delete_esp2'),
(36, 'Can view esp2', 9, 'view_esp2');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'members', 'esp1'),
(9, 'members', 'esp2'),
(7, 'members', 'member'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-25 17:38:14.100286'),
(2, 'auth', '0001_initial', '2023-04-25 17:38:28.982234'),
(3, 'admin', '0001_initial', '2023-04-25 17:38:32.799261'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-25 17:38:32.867254'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-25 17:38:32.936254'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-25 17:38:34.321256'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-25 17:38:37.637723'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-25 17:38:38.254128'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-25 17:38:38.344744'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-25 17:38:40.376206'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-25 17:38:40.692460'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-25 17:38:40.935466'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-25 17:38:41.122461'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-25 17:38:41.297601'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-25 17:38:42.002063'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-25 17:38:42.576218'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-25 17:38:43.219429'),
(18, 'members', '0001_initial', '2023-04-25 17:38:43.619610'),
(19, 'members', '0002_member_joined_date_member_phone', '2023-04-25 17:38:44.434073'),
(20, 'members', '0003_esp1_esp2', '2023-04-25 17:38:45.618081'),
(21, 'members', '0004_sale', '2023-04-25 17:38:46.414178'),
(22, 'members', '0005_auto_20230424_1228', '2023-04-25 17:38:46.775380'),
(23, 'sessions', '0001_initial', '2023-04-25 17:38:47.150563'),
(24, 'members', '0006_esp2', '2023-05-08 21:51:22.915173');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `members_esp1`
--

CREATE TABLE `members_esp1` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `temp` text NOT NULL,
  `light` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `members_esp1`
--

INSERT INTO `members_esp1` (`id`, `date`, `time`, `temp`, `light`) VALUES
(1, '2023-03-18', '12:06:39', '24.94', '7'),
(2, '2023-03-18', '12:06:43', '24.94', '7'),
(3, '2023-03-18', '12:06:47', '24.88', '7'),
(4, '2023-03-18', '12:06:51', '24.88', '7'),
(5, '2023-03-18', '12:06:55', '24.88', '1'),
(6, '2023-03-18', '12:06:59', '28.06', '0'),
(7, '2023-03-18', '12:07:03', '29.88', '0'),
(8, '2023-03-18', '12:07:07', '30.63', '0'),
(9, '2023-03-18', '12:07:11', '31.00', '0'),
(10, '2023-03-18', '12:07:15', '30.81', '7'),
(11, '2023-03-18', '12:07:19', '29.75', '7'),
(12, '2023-03-18', '12:07:23', '28.94', '7'),
(13, '2023-03-18', '12:07:27', '28.31', '7'),
(14, '2023-03-18', '12:07:31', '27.88', '7'),
(15, '2023-03-18', '12:07:35', '27.50', '7'),
(16, '2023-03-18', '12:07:39', '27.19', '7'),
(17, '2023-03-18', '12:07:43', '26.94', '7'),
(18, '2023-03-18', '12:07:47', '26.75', '7'),
(19, '2023-03-18', '12:07:51', '26.56', '7'),
(20, '2023-03-18', '12:07:55', '26.44', '7'),
(21, '2023-03-18', '12:07:59', '26.31', '7'),
(22, '2023-03-18', '12:08:03', '26.19', '7'),
(23, '2023-03-18', '12:08:07', '26.06', '7'),
(24, '2023-03-18', '12:08:11', '26.00', '7'),
(25, '2023-03-18', '12:08:15', '25.88', '7'),
(26, '2023-03-18', '12:08:19', '25.75', '7'),
(27, '2023-03-18', '12:08:23', '25.69', '7'),
(28, '2023-03-18', '12:08:27', '25.56', '7'),
(29, '2023-03-18', '12:08:31', '25.50', '7'),
(30, '2023-03-18', '12:08:35', '25.44', '7'),
(31, '2023-03-18', '12:08:39', '25.44', '7'),
(32, '2023-03-18', '12:08:43', '25.38', '7'),
(33, '2023-03-18', '12:08:47', '25.31', '7'),
(34, '2023-03-18', '12:08:51', '25.25', '7');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `members_esp2`
--

CREATE TABLE `members_esp2` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `temp` text NOT NULL,
  `light` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `members_esp2`
--

INSERT INTO `members_esp2` (`id`, `date`, `time`, `temp`, `light`) VALUES
(1, '2023-03-18', '12:06:37', '23.44', '9'),
(2, '2023-03-18', '12:06:41', '23.38', '9'),
(3, '2023-03-18', '12:06:46', '23.38', '9'),
(4, '2023-03-18', '12:06:49', '23.38', '9'),
(5, '2023-03-18', '12:06:53', '23.38', '9'),
(6, '2023-03-18', '12:06:57', '23.38', '9'),
(7, '2023-03-18', '12:07:02', '23.31', '9'),
(8, '2023-03-18', '12:07:05', '23.38', '9'),
(9, '2023-03-18', '12:07:10', '23.38', '9'),
(10, '2023-03-18', '12:07:13', '23.44', '9'),
(11, '2023-03-18', '12:07:17', '23.50', '9'),
(12, '2023-03-18', '12:07:21', '23.56', '9'),
(13, '2023-03-18', '12:07:25', '23.81', '0'),
(14, '2023-03-18', '12:07:30', '28.19', '0'),
(15, '2023-03-18', '12:07:34', '29.75', '0'),
(16, '2023-03-18', '12:07:38', '30.38', '0'),
(17, '2023-03-18', '12:07:42', '30.75', '0'),
(18, '2023-03-18', '12:07:46', '31.00', '0'),
(19, '2023-03-18', '12:07:50', '31.19', '1'),
(20, '2023-03-18', '12:07:54', '30.06', '9'),
(21, '2023-03-18', '12:07:57', '29.19', '9'),
(22, '2023-03-18', '12:08:01', '28.50', '9'),
(23, '2023-03-18', '12:08:05', '28.00', '0'),
(24, '2023-03-18', '12:08:10', '27.81', '0'),
(25, '2023-03-18', '12:08:13', '27.44', '0'),
(26, '2023-03-18', '12:08:17', '27.31', '0'),
(27, '2023-03-18', '12:08:21', '27.25', '1'),
(28, '2023-03-18', '12:08:26', '27.19', '3'),
(29, '2023-03-18', '12:08:29', '27.00', '6'),
(30, '2023-03-18', '12:08:34', '26.94', '2'),
(31, '2023-03-18', '12:08:37', '26.94', '2'),
(32, '2023-03-18', '12:08:42', '26.94', '7'),
(33, '2023-03-18', '12:08:46', '26.88', '8'),
(34, '2023-03-18', '12:08:49', '26.75', '9');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `members_member`
--

CREATE TABLE `members_member` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `joined_date` date DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeksy dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeksy dla tabeli `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeksy dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeksy dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeksy dla tabeli `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeksy dla tabeli `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeksy dla tabeli `members_esp1`
--
ALTER TABLE `members_esp1`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `members_esp2`
--
ALTER TABLE `members_esp2`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `members_member`
--
ALTER TABLE `members_member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT dla tabeli `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `members_esp1`
--
ALTER TABLE `members_esp1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT dla tabeli `members_esp2`
--
ALTER TABLE `members_esp2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT dla tabeli `members_member`
--
ALTER TABLE `members_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ograniczenia dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

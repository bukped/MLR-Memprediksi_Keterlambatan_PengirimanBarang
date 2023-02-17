-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 04:05 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djpengiriman`
--

-- --------------------------------------------------------

--
-- Table structure for table `arrived`
--

CREATE TABLE `arrived` (
  `id` int(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `deskripsi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arrived`
--

INSERT INTO `arrived` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Nanggroe Aceh Darussalam', 'Provinsi'),
(2, 'Sumatera Utara', 'Provinsi'),
(3, 'Sumatera Selatan', 'Provinsi'),
(4, 'Sumatera Barat', 'Provinsi'),
(5, 'Bengkulu', 'Provinsi Bengkulu'),
(6, 'Riau', 'Provinsi Riau'),
(7, 'Kepulauan Riau', 'Provinsi Kepulauan Riau'),
(8, 'Jambi', 'Provinsi Jambi'),
(9, 'Lampung', 'Provinsi Lampung'),
(10, 'Bangka Belitung', 'Provinsi Bangka Belitung'),
(11, 'Kalimantan Barat', 'Provinsi Kalimantan Barat'),
(12, 'Kalimantan Timur', 'Provinsi Kalimantan Timur'),
(13, 'Kalimantan Selatan', 'Provinsi Kalimantan Selatan'),
(14, 'Kalimantan Tengah', 'Provinsi Kalimantan Tengah'),
(15, 'Kalimantan Utara', 'Provinsi Kalimantan Utara'),
(16, 'Banten', 'Provinsi Banten'),
(17, 'DKI Jakarta', 'Provinsi DKI Jakarta'),
(18, 'Jawa Barat', 'Provinsi Jawa Barat'),
(19, 'Jawa Tengah', 'Provinsi Jawa Tengah'),
(20, 'Daerah Istimewa Yogyakarta', 'Provinsi Daerah Istimewa Yogyakarta'),
(21, 'Jawa Timur', 'Provinsi Jawa Timur'),
(22, 'Bali', 'Provinsi Bali'),
(23, 'Nusa Tenggara Timur', 'Provinsi Nusa Tenggara Timur'),
(24, 'Nusa Tenggara Barat', 'Provinsi Nusa Tenggara Barat'),
(25, 'Gorontalo', 'Provinsi Gorontalo'),
(26, 'Sulawesi Barat', 'Provinsi Sulawesi Barat'),
(27, 'Sulawesi Tengah', 'Provinsi Sulawesi Tengah'),
(28, 'Sulawesi Utara', 'Provinsi Sulawesi Utara'),
(29, 'Sulawesi Tenggara', 'Provinsi Sulawesi Tenggara'),
(30, 'Sulawesi Selatan', 'Provinsi Sulawesi Selatan'),
(31, 'Maluku Utara', 'Provinsi Maluku Utara'),
(32, 'Maluku', 'Provinsi Maluku'),
(33, 'Papua Barat', 'Provinsi Papua Barat'),
(34, 'Papua', 'Provinsi Papua'),
(35, 'Papua Tengah', 'Provinsi Papua Tengah'),
(36, 'Papua Pegunungan', 'Provinsi Papua Pegunungan'),
(37, 'Papua Selatan', 'Provinsi Papua Selatan'),
(38, 'Papua Barat Daya', 'Provinsi Papua Barat Daya');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add pegawai', 7, 'add_pegawai'),
(26, 'Can change pegawai', 7, 'change_pegawai'),
(27, 'Can delete pegawai', 7, 'delete_pegawai'),
(28, 'Can view pegawai', 7, 'view_pegawai'),
(29, 'Can add pengiriman', 8, 'add_pengiriman'),
(30, 'Can change pengiriman', 8, 'change_pengiriman'),
(31, 'Can delete pengiriman', 8, 'delete_pengiriman'),
(32, 'Can view pengiriman', 8, 'view_pengiriman');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$adHFepVkBGK9pSdMKgslc0$G7H7k0XcYvJ+DDisIkKnvPeYDWR1tcQDxRXll0RzYIk=', '2023-02-01 02:47:22.618640', 0, 'eni123', '', '', '', 0, 1, '2023-01-15 09:05:06.413335');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `days_for_shipment_scheduled`
--

CREATE TABLE `days_for_shipment_scheduled` (
  `id` int(11) NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `days_for_shipment_scheduled`
--

INSERT INTO `days_for_shipment_scheduled` (`id`, `tanggal`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `days_for_shipping_real`
--

CREATE TABLE `days_for_shipping_real` (
  `id` int(10) NOT NULL,
  `tanggal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `days_for_shipping_real`
--

INSERT INTO `days_for_shipping_real` (`id`, `tanggal`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_status`
--

CREATE TABLE `delivery_status` (
  `id` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `deskripsi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_status`
--

INSERT INTO `delivery_status` (`id`, `nama`, `deskripsi`) VALUES
(1, 'On Prosess', 'Status on prosess'),
(2, 'Delivered', 'Status Delivered'),
(3, 'Received Gateaway ', 'Status received gate');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'prediksi', 'pegawai'),
(8, 'prediksi', 'pengiriman'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-22 05:30:16.523579'),
(2, 'auth', '0001_initial', '2021-11-22 05:30:28.142738'),
(3, 'admin', '0001_initial', '2021-11-22 05:30:30.615990'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-22 05:30:30.678953'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-22 05:30:30.743921'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-22 05:30:31.569982'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-22 05:30:33.216973'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-22 05:30:33.586275'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-22 05:30:33.641809'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-22 05:30:34.335225'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-22 05:30:34.393280'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-22 05:30:34.458248'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-22 05:30:34.597669'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-22 05:30:34.760570'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-22 05:30:34.986450'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-22 05:30:35.083410'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-22 05:30:35.243303'),
(18, 'prediksi', '0001_initial', '2021-11-22 05:30:35.545048'),
(19, 'sessions', '0001_initial', '2021-11-22 05:30:36.475551');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9x6b12y4lid6erixjhkdyhlfqsuy5bkg', '.eJxVjEEOwiAQAP_C2RBYtwU8evcNBNhFqgaS0p6MfzckPeh1ZjJv4cO-Fb93Xv1C4iK0OP2yGNKT6xD0CPXeZGp1W5coRyIP2-WtEb-uR_s3KKGXsSXj0OqcebKzAUgKEhlWzuoUAGdElwlZ5TPZDEEDqckBkyNGG50Vny_U_ze7:1pInZ5:dUBQdMxbRC3lXjpLO27b7bSg6LNMXv8mHdM9T6twW4k', '2023-02-03 09:20:03.566206'),
('y262rhjxansceozmyypu060fb6k98yys', '.eJxVjEEOwiAQAP_C2RBYtwU8evcNBNhFqgaS0p6MfzckPeh1ZjJv4cO-Fb93Xv1C4iK0OP2yGNKT6xD0CPXeZGp1W5coRyIP2-WtEb-uR_s3KKGXsSXj0OqcebKzAUgKEhlWzuoUAGdElwlZ5TPZDEEDqckBkyNGG50Vny_U_ze7:1pN39e:pnlplmaR2cJV6qliUQ1IpQdo-OkrvslZh-vdL8nJfU8', '2023-02-15 02:47:22.624639');

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE `market` (
  `id` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `deskripsi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `market`
--

INSERT INTO `market` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Rumah', 'Pengiriman ke rumah'),
(2, 'Kos', 'Pengiriman ke kost'),
(3, 'Sekolah', 'Pengiriman ke sekola'),
(4, 'Kantor', 'Pengiriman ke kantor');

-- --------------------------------------------------------

--
-- Table structure for table `prediksi_pengiriman`
--

CREATE TABLE `prediksi_pengiriman` (
  `id` int(8) NOT NULL,
  `Type` int(8) NOT NULL,
  `Days_for_shipping_real` int(64) NOT NULL,
  `Days_for_shipment_scheduled` int(64) NOT NULL,
  `Benefit_per_order` int(64) NOT NULL,
  `Sales_per_customer` int(64) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `Shipping_mode` int(8) NOT NULL,
  `Market` int(8) NOT NULL,
  `Delivery_status` int(8) NOT NULL,
  `Shipping_day` int(64) NOT NULL,
  `Shipping_month` int(64) NOT NULL,
  `Shipping_year` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prediksi_pengiriman`
--

INSERT INTO `prediksi_pengiriman` (`id`, `Type`, `Days_for_shipping_real`, `Days_for_shipment_scheduled`, `Benefit_per_order`, `Sales_per_customer`, `latitude`, `longitude`, `Shipping_mode`, `Market`, `Delivery_status`, `Shipping_day`, `Shipping_month`, `Shipping_year`) VALUES
(4, 1, 2, 2, 90, 33, 39, -99, 2, 2, 2, 2, 3, 2021),
(5, 1, 2, 2, 56, 56, 55, -34, 1, 2, 1, 21, 12, 2023),
(8, 2, 3, 1, 12, 30, 5, 3, 3, 2, 3, 2, 2, 2023),
(9, 2, 5, 4, 249, 311, 18.2795, -66.0371, 3, 3, 1, 18, 1, 2018),
(10, 3, 4, 4, 248, 310, 37.2922, -121.881, 3, 3, 3, 17, 1, 2018),
(11, 4, 2, 4, 134, 298, 18.2538, -66.037, 3, 3, 1, 15, 1, 2018),
(12, 1, 3, 4, 23, 305, 34.1259, -118.291, 3, 3, 1, 16, 1, 2018),
(13, 2, 6, 4, 19, 295, 43.014, -78.8791, 3, 3, 1, 19, 1, 2018),
(14, 1, 2, 1, 95, 288, 18.2425, -66.0371, 1, 2, 1, 15, 1, 2018),
(15, 2, 5, 2, 46, 269, 40.6549, -73.5871, 2, 3, 1, 18, 1, 2018),
(16, 4, 5, 2, 246, 321, 18.3958, -65.8729, 2, 3, 1, 18, 1, 2018),
(17, 1, 2, 1, 97, 324, 42.3911, -83.1312, 2, 3, 1, 15, 1, 2018),
(18, 3, 2, 1, 151, 315, 40.0317, -76.8771, 1, 3, 1, 15, 1, 2018),
(19, 4, 1, 0, 143, 298, 34.1589, -118.181, 1, 3, 1, 13, 1, 2018),
(20, 1, 1, 0, 136, 295, 18.2829, -66.0371, 1, 3, 2, 13, 1, 2018),
(21, 2, 5, 2, 131, 272, 43.1882, -77.5671, 2, 3, 1, 17, 1, 2018),
(22, 1, 2, 1, 20, 240, 17.2784, -66.0371, 1, 3, 1, 19, 1, 2018),
(23, 4, 3, 4, 120, 285, 18.241, -66.0371, 3, 3, 1, 15, 1, 2018),
(24, 2, 6, 4, 86, 275, 18.2647, -66.0371, 3, 3, 1, 18, 1, 2018),
(25, 2, 5, 4, 53, 108, 18.2365, -66.3705, 3, 1, 1, 6, 1, 2017),
(26, 2, 3, 4, 12, 117, 18.2238, -66.3706, 3, 2, 1, 19, 1, 2017),
(27, 2, 5, 4, 15, 130, 18.2017, -66.3705, 3, 3, 1, 4, 1, 2017),
(28, 2, 2, 4, 28, 58, 18.2185, -66.3706, 3, 2, 1, 13, 1, 2017),
(29, 2, 5, 4, 33, 123, 18.2206, -66.3706, 2, 3, 1, 4, 1, 2017),
(30, 2, 6, 4, 42, 121, 18.261, -66.3706, 3, 3, 1, 8, 1, 2017),
(31, 2, 3, 4, 7, 110, 18.2354, -66.3706, 3, 2, 1, 21, 1, 2017),
(32, 2, 2, 4, 116, 270, 18.2308, -66.3705, 3, 1, 1, 8, 1, 2017),
(33, 2, 5, 4, 77, 246, 18.2017, -66.3705, 3, 1, 1, 4, 1, 2017),
(34, 2, 4, 4, 26, 75, 18.2305, -66.3706, 3, 1, 2, 15, 1, 2017),
(35, 2, 4, 4, 11, 114, 18.2305, -66.3706, 3, 1, 2, 15, 1, 2017),
(36, 2, 3, 4, 9, 79, 18.2008, -66.3706, 3, 1, 2, 2, 8, 2017),
(37, 2, 6, 4, 132, 339, 18.255, -66.0371, 3, 1, 2, 27, 10, 2017),
(38, 2, 2, 4, 51, 114, 18.2276, -66.0436, 3, 2, 1, 21, 6, 2017),
(39, 2, 4, 4, 31, 109, 18.2, -66.613, 3, 1, 2, 22, 8, 2017),
(40, 2, 5, 4, 42, 97, 18.2757, -66.3706, 3, 1, 2, 25, 7, 2017),
(41, 2, 6, 4, 5, 38, 18.275, -66.3706, 3, 1, 2, 13, 1, 2017),
(42, 2, 6, 4, 76, 291, 18.2078, -66.3705, 3, 1, 2, 25, 8, 2017),
(43, 2, 6, 4, 146, 339, 18.2239, -66.037, 3, 1, 1, 19, 10, 2017),
(44, 2, 4, 4, 36, 98, 18.2865, -66.3705, 3, 1, 3, 16, 7, 2017),
(45, 2, 5, 4, 6, 90, 18.2741, -66.3705, 3, 1, 1, 15, 7, 2017),
(46, 2, 6, 4, 73, 159, 18.2997, -66.3706, 3, 1, 1, 4, 9, 2017),
(47, 2, 3, 4, 71, 155, 18.2542, -66.3706, 3, 1, 1, 27, 9, 2017),
(48, 1, 2, 4, 55, 115, 25.9488, -80.2871, 3, 1, 1, 14, 11, 2017),
(49, 1, 3, 4, 107, 255, 41.7241, -81.2459, 3, 2, 1, 18, 2, 2017),
(50, 1, 3, 4, 52, 178, 42.2935, -83.184, 3, 4, 1, 9, 2, 2017),
(51, 1, 6, 4, 59, 173, 34.1904, -119.178, 3, 2, 1, 31, 5, 2017),
(52, 1, 6, 4, 20, 170, 42.2066, -83.1535, 3, 2, 1, 31, 6, 2017),
(53, 1, 4, 4, 57, 167, 26.0883, -97.6655, 3, 2, 3, 30, 1, 2017),
(54, 1, 6, 4, 34, 170, 39.4459, -75.2269, 3, 2, 1, 21, 2, 2017),
(55, 1, 3, 4, 47, 162, 32.6663, -97.0099, 2, 2, 1, 7, 5, 2017),
(56, 1, 6, 4, 75, 157, 36.9442, -121.796, 3, 1, 1, 13, 5, 2017),
(57, 1, 2, 4, 73, 153, 40.6032, -73.9962, 2, 2, 1, 24, 1, 2017),
(58, 1, 3, 4, 10, 153, 32.8429, -97.2262, 1, 2, 1, 29, 3, 2017),
(59, 1, 2, 4, 73, 151, 33.9419, -84.0866, 3, 2, 2, 20, 1, 2017),
(60, 1, 6, 4, 58, 118, 33.8798, -118, 3, 2, 1, 12, 3, 2017),
(61, 1, 2, 4, 37, 142, 33.9957, -117.816, 3, 2, 1, 28, 5, 2017),
(62, 1, 4, 4, 16, 140, 41.7828, -87.6146, 3, 2, 3, 11, 2, 2017),
(63, 1, 2, 4, 3, 137, 40.6032, -73.9962, 3, 2, 2, 24, 1, 2017),
(64, 1, 4, 4, 51, 108, 25.898, -80.2402, 3, 2, 3, 7, 6, 2017),
(65, 1, 2, 4, 24, 106, 41.8998, -87.943, 3, 2, 2, 21, 5, 2017),
(66, 4, 5, 4, 37, 125, 18.2185, -66.3705, 3, 2, 1, 15, 2, 2017),
(67, 4, 5, 4, 42, 121, 18.2344, -66.3706, 3, 2, 1, 15, 4, 2017),
(68, 4, 6, 4, 41, 121, 18.2264, -66.3706, 1, 2, 1, 14, 4, 2017),
(69, 4, 5, 4, 383, 1418, 18.2873, -66.0371, 3, 3, 1, 28, 12, 2017),
(70, 4, 2, 4, 21, 68, 18.2998, -66.0371, 3, 3, 3, 12, 2, 2017),
(71, 4, 2, 4, 87, 249, 18.233, -66.0371, 1, 3, 1, 22, 11, 2017),
(72, 4, 5, 4, 37, 123, 18.272, -66.3706, 1, 3, 1, 15, 1, 2017),
(73, 1, 4, 2, 38, 109, 18.2372, -66.3705, 2, 2, 1, 31, 1, 2017),
(74, 1, 4, 2, 11, 108, 18.1502, -65.826, 2, 2, 1, 8, 5, 2017),
(75, 1, 6, 2, 28, 78, 18.211, -66.0371, 2, 3, 1, 7, 12, 2017),
(76, 1, 2, 2, 25, 287, 18.2579, -66.0371, 2, 3, 3, 21, 11, 2017),
(77, 1, 3, 2, 90, 452, 18.2936, -66.0371, 2, 3, 1, 30, 12, 2017),
(78, 3, 2, 1, 95, 261, 18.2462, -66.3706, 1, 1, 1, 30, 7, 2017),
(79, 3, 2, 1, 85, 252, 18.2444, -66.3706, 1, 1, 1, 23, 2, 2017),
(80, 3, 2, 1, 150, 384, 39.2796, -76.7104, 1, 1, 1, 14, 8, 2017),
(81, 3, 2, 1, 126, 300, 33.0895, -117.255, 1, 1, 1, 5, 4, 2017),
(82, 3, 2, 1, 81, 233, 38.4234, -77.4052, 2, 1, 1, 22, 8, 2017),
(83, 3, 2, 1, 84, 400, 33.5971, -117.649, 1, 2, 1, 27, 5, 2017),
(84, 3, 2, 1, 92, 197, 42.7755, -83.3215, 1, 2, 1, 9, 3, 2017),
(85, 1, 6, 2, 17, 48, 37.5571, -121.992, 2, 1, 1, 17, 1, 2017),
(86, 1, 5, 2, 56, 30, 116.99, -66.3706, 2, 1, 1, 3, 8, 2016),
(87, 4, 5, 2, 31, 115, 18.3801, -66.1831, 2, 3, 1, 29, 2, 2016),
(88, 4, 2, 2, 123, 79, 18.2356, -66.3706, 2, 3, 3, 27, 10, 2016),
(89, 4, 6, 2, 34, 96, 18.0254, -66.613, 2, 3, 1, 5, 4, 2016),
(90, 4, 2, 2, 25, 76, 18.2738, -66.3706, 2, 3, 3, 1, 11, 2016),
(91, 4, 2, 2, 22, 75, 18.2347, -66.3706, 2, 4, 3, 13, 6, 2016),
(92, 1, 5, 4, 192, 392, 41.4201, -87.3607, 3, 3, 1, 9, 2, 2016),
(93, 1, 4, 4, 182, 388, 34.0321, -84.5129, 3, 3, 3, 8, 2, 2016),
(94, 2, 1, 0, 111, 384, 47.6787, -122.322, 1, 3, 1, 5, 2, 2016),
(95, 3, 1, 0, 175, 380, 39.5647, -87.2894, 3, 2, 3, 5, 1, 2016),
(96, 4, 4, 4, 99, 283, 18.2178, -66.3706, 3, 2, 3, 27, 4, 2016),
(97, 4, 5, 4, 99, 378, 18.2717, -66.3706, 3, 2, 1, 29, 5, 2016),
(98, 4, 3, 4, 174, 378, 18.2284, -66.3706, 3, 2, 1, 29, 5, 2016),
(99, 4, 3, 4, 174, 378, 18.2284, -66.3706, 3, 2, 1, 12, 4, 2016),
(100, 4, 5, 4, 104, 372, 18.2876, -66.3706, 3, 2, 1, 20, 3, 2016),
(101, 4, 5, 4, 134, 273, 18.2119, -66.3705, 3, 2, 1, 14, 6, 2016),
(102, 4, 3, 4, 5, 130, 18.2972, -66.3706, 3, 1, 2, 17, 5, 2016),
(103, 4, 3, 4, 34, 130, 18.2795, -66.3705, 1, 2, 1, 2, 2, 2016),
(104, 2, 5, 4, 85, 189, 43.7857, -88.4744, 3, 1, 2, 3, 10, 2016),
(105, 2, 2, 4, 3, 80, 39.7966, -75.4701, 3, 1, 2, 5, 9, 2016),
(106, 2, 2, 4, 267, 364, 34.0766, -117.614, 3, 2, 1, 18, 9, 2016),
(107, 2, 4, 4, 65, 240, 28.6222, -81.2076, 2, 2, 3, 24, 10, 2016),
(108, 2, 5, 4, 84, 230, 42.9666, -78.7419, 1, 1, 1, 12, 1, 2016),
(109, 2, 5, 4, 74, 228, 43.2166, -75.456, 1, 1, 2, 11, 9, 2016),
(110, 1, 2, 4, 41, 125, 35.6003, -77.3349, 3, 3, 3, 2, 9, 2016),
(111, 1, 2, 4, 41, 125, 40.8012, -74.4856, 1, 3, 2, 5, 9, 2016),
(112, 1, 4, 4, 27, 57, 32.7763, -117.134, 3, 3, 3, 20, 2, 2016),
(113, 1, 3, 4, 26, 123, 34.1904, -119.178, 3, 2, 1, 3, 1, 2016),
(114, 1, 2, 4, 32, 123, 25.8251, -80.1959, 3, 3, 1, 28, 3, 2016),
(115, 1, 5, 4, 36, 123, 35.1314, -106.545, 3, 3, 1, 7, 1, 2016),
(116, 1, 4, 4, 14, 57, 34.0683, -117.656, 3, 3, 3, 21, 9, 2016),
(117, 1, 4, 4, 20, 123, 29.7806, -95.172, 3, 3, 3, 16, 12, 2016),
(118, 1, 4, 4, 54, 123, 37.0517, -76.4016, 3, 3, 3, 1, 11, 2016),
(119, 1, 4, 4, 43, 123, 35.9383, -118.944, 3, 3, 3, 16, 2, 2016),
(120, 1, 3, 4, 20, 57, 45.5983, -12.2724, 3, 3, 2, 18, 3, 2016),
(121, 1, 2, 4, 54, 123, 41.347, -81.8263, 3, 3, 1, 30, 3, 2016),
(122, 2, 6, 2, 666, 392, 29.737, -94.9688, 2, 3, 1, 23, 1, 2016),
(123, 2, 6, 2, 105, 388, 29.737, -94.9688, 3, 2, 1, 26, 2, 2016),
(124, 2, 5, 4, 70, 199, 33.9946, -117.953, 3, 3, 1, 6, 2, 2016),
(125, 1, 4, 4, 12, 121, 47.3937, -122.223, 3, 3, 1, 12, 9, 2016),
(126, 1, 6, 4, 27, 56, 40.0156, -75.0841, 3, 3, 3, 1, 21, 2016),
(127, 1, 3, 4, 32, 121, 34.2739, -118.766, 3, 3, 1, 19, 3, 2016),
(128, 1, 4, 4, 8, 121, 42.3981, -83.2016, 3, 3, 3, 10, 2, 2016),
(129, 1, 4, 4, 12, 121, 37.3431, -121.984, 3, 3, 3, 3, 9, 2016),
(130, 1, 5, 4, 33, 121, 33.689, -117.996, 3, 3, 1, 22, 11, 2016),
(131, 1, 2, 4, 25, 118, 33.7932, -118.19, 2, 3, 2, 31, 12, 2016),
(132, 1, 2, 4, 6, 55, 33.7582, -118.002, 3, 3, 2, 12, 3, 2016),
(133, 1, 3, 4, 64, 205, 38.1598, -85.5903, 3, 2, 2, 29, 11, 2016),
(134, 1, 6, 4, 100, 205, 43.1689, -78.6922, 3, 1, 1, 15, 12, 2016),
(135, 1, 4, 4, 73, 200, 40.5844, -74.1599, 3, 1, 3, 24, 10, 2016),
(136, 4, 3, 2, 129, 294, 18.3592, -66.0778, 2, 1, 1, 10, 7, 2015),
(137, 4, 4, 2, 81, 176, 18.2276, -66.0456, 2, 1, 1, 26, 9, 2015),
(138, 4, 3, 2, 69, 164, 18.0254, -66.6151, 2, 1, 1, 11, 9, 2015),
(139, 4, 6, 2, 8, 55, 18.2121, -66.3705, 2, 1, 1, 8, 7, 2015),
(140, 4, 6, 2, 101, 300, 18.2313, -66.3706, 2, 2, 1, 3, 4, 2015),
(141, 4, 5, 2, 80, 167, 18.2498, -66.3705, 2, 2, 1, 30, 4, 2015),
(142, 4, 5, 2, 27, 164, 18.2498, -66.3705, 2, 2, 1, 30, 4, 2016),
(143, 4, 4, 2, 30, 115, 18.2968, -66.3705, 2, 2, 1, 14, 4, 2015),
(144, 4, 5, 2, 68, 143, 18.2911, -66.3705, 2, 2, 1, 30, 4, 2015),
(145, 4, 2, 2, 13, 132, 18.2011, -66.3706, 2, 2, 3, 31, 3, 2015),
(146, 4, 4, 2, 46, 132, 18.2147, -66.3705, 2, 2, 1, 7, 2, 2015),
(147, 2, 2, 4, 74, 285, 18.2362, -66.3706, 3, 2, 2, 2, 5, 2015),
(148, 2, 4, 4, 784, 475, 18.2813, -66.3705, 3, 2, 3, 11, 5, 2015),
(149, 1, 5, 4, 40, 123, 29.7731, -100.612, 3, 3, 1, 23, 11, 2015),
(150, 1, 3, 4, 15, 121, 41.9585, -70.6686, 3, 3, 2, 16, 12, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `shipment_received`
--

CREATE TABLE `shipment_received` (
  `id` int(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `deskripsi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipment_received`
--

INSERT INTO `shipment_received` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Nanggroe Aceh Darussalam', 'Provinsi Nanggroe Aceh Darussalam'),
(2, 'Sumatera Utara', 'Provinsi Sumatera Utara'),
(3, 'Sumatera Selatan', 'Provinsi Sumatera Selatan'),
(4, 'Sumatera Barat', 'Provinsi Sumatera Barat'),
(5, 'Bengkulu', 'Provinsi Bengkulu'),
(6, 'Riau', 'Provinsi Riau'),
(7, 'Kepulauan Riau', 'Provinsi Kepulauan Riau'),
(8, 'Jambi', 'Provinsi Jambi'),
(9, 'Lampung', 'Provinsi Lampung'),
(10, 'Bangka Belitung', 'Provinsi Bangka Belitung'),
(11, 'Kalimantan Barat', 'Provinsi Kalimantan Barat'),
(12, 'Kalimantan Timur', 'Provinsi Kalimantan Timur'),
(13, 'Kalimantan Selatan', 'Provinsi Kalimantan Selatan'),
(14, 'Kalimantan Tengah', 'Provinsi Kalimantan Tengah'),
(15, 'Kalimantan Utara', 'Provinsi Kalimantan Utara'),
(16, 'Banten', 'Provinsi Banten'),
(17, 'DKI Jakarta', 'Provinsi DKI Jakarta'),
(18, 'Jawa Barat', 'Provinsi Jawa Barat'),
(19, 'Jawa Tengah', 'Provinsi Jawa Tengah'),
(20, 'Daerah Istimewa Yogyakarta', 'Provinsi Daerah Istimewa Yogyakarta'),
(21, 'Jawa Timur', 'Provinsi Jawa Timur'),
(22, 'Bali', 'Provinsi Bali'),
(23, 'Nusa Tenggara Timur', 'Provinsi Nusa Tenggara Timur'),
(24, 'Nusa Tenggara Barat', 'Provinsi Nusa Tenggara Barat'),
(25, 'Gorontalo', 'Provinsi Gorontalo'),
(26, 'Sulawesi Barat', 'Provinsi Sulawesi Barat'),
(27, 'Sulawesi Tengah ', 'Provinsi Sulawesi Tengah '),
(28, 'Sulawesi Utara', 'Provinsi Sulawesi Utara'),
(29, 'Sulawesi Tenggara', 'Provinsi Sulawesi Tenggara'),
(30, 'Sulawesi Selatan', 'Provinsi Sulawesi Selatan'),
(31, 'Maluku Utara', 'Provinsi Maluku Utara'),
(32, 'Maluku', 'Provinsi Maluku'),
(33, 'Papua Barat ', 'Provinsi Papua Barat '),
(34, 'Papua', 'Provinsi Papua'),
(35, 'Papua Tengah', 'Provinsi Papua Tengah'),
(36, 'Papua Pegunungan', 'Provinsi Papua Pegunungan'),
(37, 'Papua Selatan', 'Provinsi Papua Selatan'),
(38, 'Papua Barat Daya', 'Provinsi Papua Barat Daya');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_day`
--

CREATE TABLE `shipping_day` (
  `id` int(10) NOT NULL,
  `tanggal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping_day`
--

INSERT INTO `shipping_day` (`id`, `tanggal`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_mode`
--

CREATE TABLE `shipping_mode` (
  `id` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `deskripsi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping_mode`
--

INSERT INTO `shipping_mode` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Darat', 'Pengiriman darat'),
(2, 'Laut', 'Pengiriman laut'),
(3, 'Udara', 'Pengiriman udara');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_month`
--

CREATE TABLE `shipping_month` (
  `id` int(10) NOT NULL,
  `bulan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping_month`
--

INSERT INTO `shipping_month` (`id`, `bulan`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_year`
--

CREATE TABLE `shipping_year` (
  `id` int(10) NOT NULL,
  `Tahun` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping_year`
--

INSERT INTO `shipping_year` (`id`, `Tahun`) VALUES
(1, 2018),
(2, 2019),
(3, 2020),
(4, 2021),
(5, 2022),
(6, 2023);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `deskripsi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Debit', 'Pembayaran via debit'),
(2, 'Transfer', 'Pembayaran via trans'),
(3, 'Cash', 'Pembayaran via cash'),
(4, 'Payment', 'Pembayaran via payme');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arrived`
--
ALTER TABLE `arrived`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `days_for_shipment_scheduled`
--
ALTER TABLE `days_for_shipment_scheduled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days_for_shipping_real`
--
ALTER TABLE `days_for_shipping_real`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_status`
--
ALTER TABLE `delivery_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `market`
--
ALTER TABLE `market`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prediksi_pengiriman`
--
ALTER TABLE `prediksi_pengiriman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipment_received`
--
ALTER TABLE `shipment_received`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_day`
--
ALTER TABLE `shipping_day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_mode`
--
ALTER TABLE `shipping_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_month`
--
ALTER TABLE `shipping_month`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_year`
--
ALTER TABLE `shipping_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrived`
--
ALTER TABLE `arrived`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `days_for_shipment_scheduled`
--
ALTER TABLE `days_for_shipment_scheduled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `days_for_shipping_real`
--
ALTER TABLE `days_for_shipping_real`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `delivery_status`
--
ALTER TABLE `delivery_status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `market`
--
ALTER TABLE `market`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prediksi_pengiriman`
--
ALTER TABLE `prediksi_pengiriman`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `shipment_received`
--
ALTER TABLE `shipment_received`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `shipping_day`
--
ALTER TABLE `shipping_day`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `shipping_mode`
--
ALTER TABLE `shipping_mode`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_month`
--
ALTER TABLE `shipping_month`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shipping_year`
--
ALTER TABLE `shipping_year`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `prediksi_pengiriman`
--
ALTER TABLE `prediksi_pengiriman`
  ADD CONSTRAINT `prediksi_pengiriman_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `type` (`id`),
  ADD CONSTRAINT `prediksi_pengiriman_ibfk_2` FOREIGN KEY (`Shipping_mode`) REFERENCES `shipping_mode` (`id`),
  ADD CONSTRAINT `prediksi_pengiriman_ibfk_3` FOREIGN KEY (`Market`) REFERENCES `market` (`id`),
  ADD CONSTRAINT `prediksi_pengiriman_ibfk_4` FOREIGN KEY (`Delivery_status`) REFERENCES `delivery_status` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

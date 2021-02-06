-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2020 at 05:18 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gomadhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `cover`, `link`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Go Madhang - Solusi Pelipur Lapar', 'images/about/evEHvTqPFJxfLrpsAUPgcV9b6ksirh3xn9kmMoQB.jpeg', 'https://www.youtube.com/watch?v=MOLRmbrfL0g', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, '2020-09-01 03:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `cover`, `title`, `desc`, `link`, `created_at`, `updated_at`) VALUES
(1, 'images/banner/yfnwyT1kqe3p3nZdntKAghFH6Sizs0TdTcGu3iP5.jpeg', 'Go Madhang - Solusi Tepat Pelipur Lapar', 'Selamat datang di webiste resmi Go Madhang. Ayo booking table segera biar gak kehabisan tempat.', '#inbox', '2020-09-01 03:41:02', '2020-09-03 08:14:59'),
(2, 'images/banner/86ik8gT4I1pbN9bL5XNkqmCOTS214B8gg6pZu3aX.jpeg', 'Nongkrong Santuy Di Go Madhang', 'Nongki bareng kolega, ya di Go Madhang saja', NULL, '2020-09-01 03:44:14', '2020-09-03 08:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `people` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `email`, `phone`, `date`, `time`, `people`, `message`, `created_at`, `updated_at`) VALUES
(43, 'Hilmi', 'hilmi@madhango.com', 82143258744, '2020-09-03', '17:00:00', 5, 'pesan nasi tempong 7 dan jus jambu 7', '2020-09-01 07:23:31', '2020-09-01 07:23:31'),
(44, 'Hilmi', 'hilmi@madhango.com', 82143258766, '2020-09-05', '19:00:00', 3, 'Saya pesan nasi tempong 3 dan jus jambu', '2020-09-01 08:00:32', '2020-09-01 08:00:32'),
(45, 'Hilmi Vanjava', 'hilmivanjava@madhango.com', 685856657567, '2020-09-10', '19:00:00', 5, 'Saya pesan nasi tempong 5 dan jus jambu 5', '2020-09-01 08:18:29', '2020-09-01 08:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Salads', '2020-09-01 00:26:02', '2020-09-01 00:33:44'),
(2, 'Starters', '2020-09-01 00:27:29', '2020-09-01 00:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('AKTIF','TIDAK AKTIF') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `cover`, `title`, `price`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'images/event/N8I9pZZ7vyT4vDNAnzS0GfQ8iiy9XfCqNqIQMLWb.jpeg', 'Birthday Party', 'Rp. 200.000/pax', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'AKTIF', '2020-08-31 22:27:42', '2020-09-01 07:58:43'),
(2, 'images/event/SQomItPhEUtyXpOEP6ie6UE5CmUZ5zUn4p3QXrHe.jpeg', 'Private Dinner', 'Rp. 200.000/pax', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'AKTIF', '2020-08-31 22:53:52', '2020-08-31 22:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `cover`, `created_at`, `updated_at`) VALUES
(2, 'images/gallery/kNRzkfeMYlEnHpQL34Rt8so0aE302FOV2oIIFian.jpeg', '2020-09-02 06:54:27', '2020-09-02 06:54:27'),
(3, 'images/gallery/b15Bu2ViBpBZZo59quWRF8DSA9XP6l1LIOoZmiMb.jpeg', '2020-09-02 06:54:33', '2020-09-02 06:54:33'),
(4, 'images/gallery/7u2Ap6T0ntPzpSKKNFSd7oh8ems71KHbWfcdDJrX.jpeg', '2020-09-02 06:54:39', '2020-09-02 06:54:39'),
(5, 'images/gallery/5TXbbe9sx7uRYaobVt2rODOUqOb3J9wqFzvIXuU4.jpeg', '2020-09-02 06:54:43', '2020-09-02 06:54:43'),
(6, 'images/gallery/yzyLTX1ctDQtJfGSgZeaUFuYBtPeYn4UfjnejYEd.jpeg', '2020-09-02 06:54:49', '2020-09-02 06:54:49'),
(7, 'images/gallery/AKRAi4JoABLwrfGfpOvzNBNIp6wglPxnIGrs0iOY.jpeg', '2020-09-02 06:54:57', '2020-09-02 06:54:57'),
(8, 'images/gallery/6FBzWaVIFbjjlnvNspC3ovBNqSKoSTWG22U4k0tn.jpeg', '2020-09-02 06:55:02', '2020-09-02 06:55:02'),
(9, 'images/gallery/5PqUQctmAPrUgeJZFwTFsytDu8ZDdNIC59nn4pCB.jpeg', '2020-09-02 06:55:06', '2020-09-02 06:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `generals`
--

CREATE TABLE `generals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmaps` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `workday` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `worktime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generals`
--

INSERT INTO `generals` (`id`, `title`, `name`, `favicon`, `logo`, `address`, `phone`, `email`, `twitter`, `facebook`, `instagram`, `footer`, `gmaps`, `workday`, `worktime`, `keyword`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 'Go Madhang', 'Go Madhang', 'images/general/pKkNamaNHwjZxzBctupftcN7gjidcffJT073jGvX.png', 'images/general/eWJL7ctvWHQlX6d5CrCHP3Et87Xj8VGdwJ6DEa8D.png', 'Bangorejo, Banyuwangi', '623424234234', 'info@madhango.com', NULL, NULL, NULL, 'Go Madhang', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.970193751157!2d114.1482773509141!3d-8.502274788389126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd3f9e0f8777e57%3A0x55baa901a79946b3!2sToko%20Fajar!5e0!3m2!1sid!2sid!4v1598960342079!5m2!1sid!2sid', 'Senin-Sabtu', '08.00 - 21.00 WIB', 'Go Madhang', 'Go Madhang resto, solusi pelipur lapar', NULL, '2020-09-03 04:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `inboxes`
--

CREATE TABLE `inboxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inboxes`
--

INSERT INTO `inboxes` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Halo Hay', 'halohay@madhango.com', 'testing', 'halo hay saya halo hay', '2020-09-02 08:33:11', '2020-09-02 08:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('AKTIF','TIDAK AKTIF') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `category_id`, `name`, `slug`, `cover`, `price`, `desc`, `ingredient`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Nasi Ayam Mentega India', 'nasi-ayam-mentega-india', 'images/menu/1xyIRFJhSunX7152Hfs9CqyR3QNK7GT0nex89ILT.jpeg', 25000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Nasi, Ayam, Tomat', 'AKTIF', '2020-09-01 02:30:10', '2020-09-01 02:38:38'),
(2, 2, 'Mie Ayam Jakarata', 'mie-ayam-jakarata', 'images/menu/6IUs7zYha31ICmT130m85O3HMjJ3PTOznF6fzxfl.jpeg', 15000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Mie, Ayam, Sapi', 'AKTIF', '2020-09-01 02:39:24', '2020-09-01 02:39:24'),
(3, 1, 'Rujak Buah', 'rujak-buah', 'images/menu/vDKDBWAQiBC2nLCOeY8h96W8fc4Ns9f7Ks3vD1vR.jpeg', 15000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Mangga, pisang, jambu, dan aneka buah lain', 'AKTIF', '2020-09-01 02:40:29', '2020-09-01 02:40:29'),
(4, 1, 'Gudeg Jogja', 'gudeg-jogja', 'images/menu/2BSw5ssT9rBannmiongkhVqEZz0803EuxL0PDbOg.jpeg', 15000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Nasi, Nangka muda, telor dadar, ayam', 'AKTIF', '2020-09-01 07:57:10', '2020-09-01 07:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_09_01_043911_create_events_table', 2),
(6, '2020_09_01_064904_create_categories_table', 3),
(9, '2020_09_01_073604_create_menus_table', 4),
(11, '2020_09_01_095121_create_abouts_table', 5),
(12, '2020_09_01_102947_create_banners_table', 6),
(13, '2020_09_01_105213_create_generals_table', 7),
(14, '2020_09_01_114239_create_specials_table', 8),
(15, '2020_09_01_122826_create_whyuses_table', 9),
(16, '2020_09_01_130630_create_bookings_table', 10),
(18, '2020_09_01_155209_create_testis_table', 11),
(19, '2020_09_02_124904_create_galleries_table', 12),
(20, '2020_09_02_152722_create_inboxes_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specials`
--

INSERT INTO `specials` (`id`, `cover`, `title`, `subject`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'images/special/O2FDch7ml4af0VnJkIO19EfIO7EJcbXIGqOuIsJv.jpeg', 'Ayam Mentega India', 'Rasakan sensai ayam lumer saat digigit', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-09-01 04:54:34', '2020-09-01 04:54:34'),
(2, 'images/special/vL8DJ0OGi1zXVl40Gl141grgbDr3vU73bDpAdKir.jpeg', 'Mie Ayam Jakarta', 'Kenyal dan Pedas', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-09-01 04:56:32', '2020-09-01 04:56:32'),
(3, 'images/special/jcobQzCKckcKIYvxSR8wsQQHpn6hb2AyrOyOyBPp.jpeg', 'Seblak Jerman', 'Makan Seblak Jerman Gak Perlu Ke Jerman', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-09-01 04:57:15', '2020-09-01 04:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `testis`
--

CREATE TABLE `testis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISH','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testis`
--

INSERT INTO `testis` (`id`, `photo`, `name`, `address`, `desc`, `star`, `from`, `status`, `created_at`, `updated_at`) VALUES
(1, 'images/testi/aIcQjNVUyNvJdvER6bjU4gxSKNK9BfcyTnLzKfei.jpeg', 'Vj Hilmi', 'Banyuwangi', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 5, 'Whatsapp', 'PUBLISH', '2020-09-02 05:24:17', '2020-09-02 05:24:17'),
(2, 'images/testi/Qmqt5Q0E3LS0Na8wObxRzKRAJkh13cK3mf2TJxFw.jpeg', 'Joni Subroto Jasmani', 'Denpasar', 'Makanan di Go Madhang wuenak e poll rek. tempatnya juga nyaman untuk santai bersama keluarga tercinta', 5, 'Whatsapp', 'PUBLISH', '2020-09-02 05:28:00', '2020-09-02 05:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Go Madhang', 'admin@gomadhang.com', NULL, '$2y$10$Gfwhhgl4vbIDZJq8PGfBOOdeAc2yFZVYRRpd/WAazx0myo1xwB7HW', NULL, '2020-08-31 21:20:54', '2020-08-31 21:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `whyuses`
--

CREATE TABLE `whyuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whyuses`
--

INSERT INTO `whyuses` (`id`, `title`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Bahan Fresh', 'Demi kenyamanan dan kesehatan bersama, kami selalu menggunakan bahan-bahas fresh dalam setiap komposisi.', NULL, '2020-09-01 05:47:07'),
(2, 'Tempat Masa Kini', 'Tempat yang kami sediakan sangat instagramable untuk kenyamanan saat menyantap makanan dan demi konten instagram Anda.', NULL, '2020-09-01 05:48:37'),
(3, 'Harga Murah Meriah', 'Harga yang kami patok adalah harga kaki lima namun rasa tetaplah bintang lima.', NULL, '2020-09-01 05:49:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inboxes`
--
ALTER TABLE `inboxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testis`
--
ALTER TABLE `testis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `whyuses`
--
ALTER TABLE `whyuses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `generals`
--
ALTER TABLE `generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inboxes`
--
ALTER TABLE `inboxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testis`
--
ALTER TABLE `testis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `whyuses`
--
ALTER TABLE `whyuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

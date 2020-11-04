-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 04 Nov 2020 pada 15.41
-- Versi server: 5.7.31-0ubuntu0.16.04.1
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larashop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stock` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` enum('PUBLISH','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `title`, `slug`, `description`, `author`, `publisher`, `cover`, `price`, `views`, `stock`, `status`, `weight`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'How to become great man', 'how-to-become-great-man', 'The book description', 'Noone', 'Nopublisher', 'book_covers/1.jpg', 390000.00, 46, 327, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2020-11-04 01:17:15', '2018-10-02 08:49:45'),
(4, 'How to become ninja Developer', 'how-to-become-ninja-developer', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/2.jpg', 239000.00, 2, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2020-11-04 01:36:45', NULL),
(5, 'How to become great man12', 'how-to-become-great-man12', 'The book description', 'Noone', 'Nopublisher', 'book_covers/3.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(6, 'How to become ninja Developer13', 'how-to-become-ninja-developer13', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/4.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(7, 'How to become great man14', 'how-to-become-great-man14', 'The book description', 'Noone', 'Nopublisher', 'book_covers/1.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(8, 'How to become ninja Developer15', 'how-to-become-ninja-developer15', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/2.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(9, 'How to become great man16', 'how-to-become-great-man16', 'The book description', 'Noone', 'Nopublisher', 'book_covers/3.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(10, 'How to become ninja Developer17', 'how-to-become-ninja-developer17', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/4.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(11, 'How to become great man', 'how-to-become-great-man', 'The book description', 'Noone', 'Nopublisher', 'book_covers/1.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(12, 'How to become ninja Developer', 'how-to-become-ninja-developer', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/2.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(13, 'How to become great man18', 'how-to-become-great-man18', 'The book description', 'Noone', 'Nopublisher', 'book_covers/3.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(14, 'How to become ninja Developer19', 'how-to-become-ninja-developer19', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/4.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(15, 'How to become great man20', 'how-to-become-great-man20', 'The book description', 'Noone', 'Nopublisher', 'book_covers/1.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(16, 'How to become ninja Developer121', 'how-to-become-ninja-developer121', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/2.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(17, 'How to become great man122', 'how-to-become-great-man122', 'The book description', 'Noone', 'Nopublisher', 'book_covers/3.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(18, 'How to become ninja Developer123', 'how-to-become-ninja-developer123', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/4.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(19, 'How to become great man', 'how-to-become-great-man', 'The book description', 'Noone', 'Nopublisher', 'book_covers/1.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(20, 'How to become ninja Developer', 'how-to-become-ninja-developer', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/2.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(21, 'How to become great man125', 'how-to-become-great-man125', 'The book description', 'Noone', 'Nopublisher', 'book_covers/3.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(22, 'How to become ninja Developer126', 'how-to-become-ninja-developer126', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/4.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(23, 'How to become great man127', 'how-to-become-great-man127', 'The book description', 'Noone', 'Nopublisher', 'book_covers/1.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(24, 'How to become ninja Developer128', 'how-to-become-ninja-developer128', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/2.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(25, 'How to become great man129', 'how-to-become-great-man129', 'The book description', 'Noone', 'Nopublisher', 'book_covers/3.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(26, 'How to become ninja Developer22', 'how-to-become-ninja-developer22', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/4.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(27, 'How to become great man', 'how-to-become-great-man', 'The book description', 'Noone', 'Nopublisher', 'book_covers/1.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(28, 'How to become ninja Developer', 'how-to-become-ninja-developer', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/2.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(29, 'How to become great man', 'how-to-become-great-man', 'The book description', 'Noone', 'Nopublisher', 'book_covers/1.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(30, 'How to become ninja Developer', 'how-to-become-ninja-developer', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/2.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(31, 'How to become great man23', 'how-to-become-great-man23', 'The book description', 'Noone', 'Nopublisher', 'book_covers/3.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(32, 'How to become ninja Developer130', 'how-to-become-ninja-developer130', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/4.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(33, 'How to become great man131', 'how-to-become-great-man131', 'The book description', 'Noone', 'Nopublisher', 'book_covers/1.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(34, 'How to become ninja Developer132', 'how-to-become-ninja-developer132', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/2.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(35, 'How to become great man133', 'how-to-become-great-man133', 'The book description', 'Noone', 'Nopublisher', 'book_covers/3.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(36, 'How to become ninja Developer134', 'how-to-become-ninja-developer134', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/4.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL),
(37, 'How to become great man', 'how-to-become-great-man', 'The book description', 'Noone', 'Nopublisher', 'book_covers/1.jpg', 390000.00, 0, 330, 'PUBLISH', 1, 1, 1, NULL, '2018-07-26 07:20:14', '2018-10-02 08:49:45', '2018-10-02 08:49:45'),
(38, 'How to become ninja Developer', 'how-to-become-ninja-developer', 'Descriptions goes here', 'Muhammad Azamuddin', 'Indie Publisher', 'book_covers/2.jpg', 239000.00, 0, 9, 'PUBLISH', 1, 1, NULL, NULL, '2018-10-02 07:06:39', '2018-10-02 08:42:41', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_category`
--

CREATE TABLE `book_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 2, 5, NULL, NULL),
(4, 4, 5, NULL, NULL),
(5, 4, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_order`
--

CREATE TABLE `book_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book_order`
--

INSERT INTO `book_order` (`id`, `order_id`, `book_id`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 2, 2, 1, '2018-07-26 00:00:00', '2018-07-26 00:00:00'),
(3, 6, 2, 1, '2020-11-04 00:42:20', '2020-11-04 00:42:20'),
(4, 7, 2, 1, '2020-11-04 01:14:29', '2020-11-04 01:14:29'),
(5, 8, 2, 1, '2020-11-04 01:17:15', '2020-11-04 01:17:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'berisi nama file image saja tanpa path',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Programming', 'programming', 'category_images/1.jpg', 1, 1, NULL, NULL, '2018-07-16 04:04:48', '2018-07-26 07:17:59'),
(3, 'Hardware', 'hardware', 'category_images/2.jpg', 1, 1, NULL, NULL, '2018-07-23 03:21:00', '2018-07-26 07:18:13'),
(4, 'Ilmiiah', 'ilmiiah', 'category_images/3.jpg', 1, NULL, NULL, NULL, '2018-07-23 03:21:15', '2018-07-23 03:21:15'),
(5, 'Self Development', 'self-development', 'category_images/4.jpg', 1, NULL, NULL, NULL, '2018-07-26 07:18:50', '2018-07-26 07:18:50'),
(6, 'Business', 'business', 'category_images/5.jpg', 1, NULL, NULL, NULL, '2018-07-26 07:21:27', '2018-07-26 07:21:27'),
(7, 'Programming1', 'programming1', 'category_images/1.jpg', 1, 1, NULL, NULL, '2018-07-16 04:04:48', '2018-07-26 07:17:59'),
(8, 'Hardware1', 'hardware1', 'category_images/2.jpg', 1, 1, NULL, NULL, '2018-07-23 03:21:00', '2018-07-26 07:18:13'),
(9, 'Ilmiiah1', 'ilmiiah1', 'category_images/3.jpg', 1, NULL, NULL, NULL, '2018-07-23 03:21:15', '2018-07-23 03:21:15'),
(10, 'Self Development1', 'self-development1', 'category_images/4.jpg', 1, NULL, NULL, NULL, '2018-07-26 07:18:50', '2018-07-26 07:18:50'),
(11, 'Business1', 'business1', 'category_images/5.jpg', 1, NULL, NULL, NULL, '2018-07-26 07:21:27', '2018-07-26 07:21:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `province_id` int(11) NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`id`, `province_id`, `city_name`, `type`, `postal_code`) VALUES
(1, 21, 'Aceh Barat', 'Kabupaten', '23681'),
(2, 21, 'Aceh Barat Daya', 'Kabupaten', '23764'),
(3, 21, 'Aceh Besar', 'Kabupaten', '23951'),
(4, 21, 'Aceh Jaya', 'Kabupaten', '23654'),
(5, 21, 'Aceh Selatan', 'Kabupaten', '23719'),
(6, 21, 'Aceh Singkil', 'Kabupaten', '24785'),
(7, 21, 'Aceh Tamiang', 'Kabupaten', '24476'),
(8, 21, 'Aceh Tengah', 'Kabupaten', '24511'),
(9, 21, 'Aceh Tenggara', 'Kabupaten', '24611'),
(10, 21, 'Aceh Timur', 'Kabupaten', '24454'),
(11, 21, 'Aceh Utara', 'Kabupaten', '24382'),
(12, 32, 'Agam', 'Kabupaten', '26411'),
(13, 23, 'Alor', 'Kabupaten', '85811'),
(14, 19, 'Ambon', 'Kota', '97222'),
(15, 34, 'Asahan', 'Kabupaten', '21214'),
(16, 24, 'Asmat', 'Kabupaten', '99777'),
(17, 1, 'Badung', 'Kabupaten', '80351'),
(18, 13, 'Balangan', 'Kabupaten', '71611'),
(19, 15, 'Balikpapan', 'Kota', '76111'),
(20, 21, 'Banda Aceh', 'Kota', '23238'),
(21, 18, 'Bandar Lampung', 'Kota', '35139'),
(22, 9, 'Bandung', 'Kabupaten', '40311'),
(23, 9, 'Bandung', 'Kota', '40111'),
(24, 9, 'Bandung Barat', 'Kabupaten', '40721'),
(25, 29, 'Banggai', 'Kabupaten', '94711'),
(26, 29, 'Banggai Kepulauan', 'Kabupaten', '94881'),
(27, 2, 'Bangka', 'Kabupaten', '33212'),
(28, 2, 'Bangka Barat', 'Kabupaten', '33315'),
(29, 2, 'Bangka Selatan', 'Kabupaten', '33719'),
(30, 2, 'Bangka Tengah', 'Kabupaten', '33613'),
(31, 11, 'Bangkalan', 'Kabupaten', '69118'),
(32, 1, 'Bangli', 'Kabupaten', '80619'),
(33, 13, 'Banjar', 'Kabupaten', '70619'),
(34, 9, 'Banjar', 'Kota', '46311'),
(35, 13, 'Banjarbaru', 'Kota', '70712'),
(36, 13, 'Banjarmasin', 'Kota', '70117'),
(37, 10, 'Banjarnegara', 'Kabupaten', '53419'),
(38, 28, 'Bantaeng', 'Kabupaten', '92411'),
(39, 5, 'Bantul', 'Kabupaten', '55715'),
(40, 33, 'Banyuasin', 'Kabupaten', '30911'),
(41, 10, 'Banyumas', 'Kabupaten', '53114'),
(42, 11, 'Banyuwangi', 'Kabupaten', '68416'),
(43, 13, 'Barito Kuala', 'Kabupaten', '70511'),
(44, 14, 'Barito Selatan', 'Kabupaten', '73711'),
(45, 14, 'Barito Timur', 'Kabupaten', '73671'),
(46, 14, 'Barito Utara', 'Kabupaten', '73881'),
(47, 28, 'Barru', 'Kabupaten', '90719'),
(48, 17, 'Batam', 'Kota', '29413'),
(49, 10, 'Batang', 'Kabupaten', '51211'),
(50, 8, 'Batang Hari', 'Kabupaten', '36613'),
(51, 11, 'Batu', 'Kota', '65311'),
(52, 34, 'Batu Bara', 'Kabupaten', '21655'),
(53, 30, 'Bau-Bau', 'Kota', '93719'),
(54, 9, 'Bekasi', 'Kabupaten', '17837'),
(55, 9, 'Bekasi', 'Kota', '17121'),
(56, 2, 'Belitung', 'Kabupaten', '33419'),
(57, 2, 'Belitung Timur', 'Kabupaten', '33519'),
(58, 23, 'Belu', 'Kabupaten', '85711'),
(59, 21, 'Bener Meriah', 'Kabupaten', '24581'),
(60, 26, 'Bengkalis', 'Kabupaten', '28719'),
(61, 12, 'Bengkayang', 'Kabupaten', '79213'),
(62, 4, 'Bengkulu', 'Kota', '38229'),
(63, 4, 'Bengkulu Selatan', 'Kabupaten', '38519'),
(64, 4, 'Bengkulu Tengah', 'Kabupaten', '38319'),
(65, 4, 'Bengkulu Utara', 'Kabupaten', '38619'),
(66, 15, 'Berau', 'Kabupaten', '77311'),
(67, 24, 'Biak Numfor', 'Kabupaten', '98119'),
(68, 22, 'Bima', 'Kabupaten', '84171'),
(69, 22, 'Bima', 'Kota', '84139'),
(70, 34, 'Binjai', 'Kota', '20712'),
(71, 17, 'Bintan', 'Kabupaten', '29135'),
(72, 21, 'Bireuen', 'Kabupaten', '24219'),
(73, 31, 'Bitung', 'Kota', '95512'),
(74, 11, 'Blitar', 'Kabupaten', '66171'),
(75, 11, 'Blitar', 'Kota', '66124'),
(76, 10, 'Blora', 'Kabupaten', '58219'),
(77, 7, 'Boalemo', 'Kabupaten', '96319'),
(78, 9, 'Bogor', 'Kabupaten', '16911'),
(79, 9, 'Bogor', 'Kota', '16119'),
(80, 11, 'Bojonegoro', 'Kabupaten', '62119'),
(81, 31, 'Bolaang Mongondow (Bolmong)', 'Kabupaten', '95755'),
(82, 31, 'Bolaang Mongondow Selatan', 'Kabupaten', '95774'),
(83, 31, 'Bolaang Mongondow Timur', 'Kabupaten', '95783'),
(84, 31, 'Bolaang Mongondow Utara', 'Kabupaten', '95765'),
(85, 30, 'Bombana', 'Kabupaten', '93771'),
(86, 11, 'Bondowoso', 'Kabupaten', '68219'),
(87, 28, 'Bone', 'Kabupaten', '92713'),
(88, 7, 'Bone Bolango', 'Kabupaten', '96511'),
(89, 15, 'Bontang', 'Kota', '75313'),
(90, 24, 'Boven Digoel', 'Kabupaten', '99662'),
(91, 10, 'Boyolali', 'Kabupaten', '57312'),
(92, 10, 'Brebes', 'Kabupaten', '52212'),
(93, 32, 'Bukittinggi', 'Kota', '26115'),
(94, 1, 'Buleleng', 'Kabupaten', '81111'),
(95, 28, 'Bulukumba', 'Kabupaten', '92511'),
(96, 16, 'Bulungan (Bulongan)', 'Kabupaten', '77211'),
(97, 8, 'Bungo', 'Kabupaten', '37216'),
(98, 29, 'Buol', 'Kabupaten', '94564'),
(99, 19, 'Buru', 'Kabupaten', '97371'),
(100, 19, 'Buru Selatan', 'Kabupaten', '97351'),
(101, 30, 'Buton', 'Kabupaten', '93754'),
(102, 30, 'Buton Utara', 'Kabupaten', '93745'),
(103, 9, 'Ciamis', 'Kabupaten', '46211'),
(104, 9, 'Cianjur', 'Kabupaten', '43217'),
(105, 10, 'Cilacap', 'Kabupaten', '53211'),
(106, 3, 'Cilegon', 'Kota', '42417'),
(107, 9, 'Cimahi', 'Kota', '40512'),
(108, 9, 'Cirebon', 'Kabupaten', '45611'),
(109, 9, 'Cirebon', 'Kota', '45116'),
(110, 34, 'Dairi', 'Kabupaten', '22211'),
(111, 24, 'Deiyai (Deliyai)', 'Kabupaten', '98784'),
(112, 34, 'Deli Serdang', 'Kabupaten', '20511'),
(113, 10, 'Demak', 'Kabupaten', '59519'),
(114, 1, 'Denpasar', 'Kota', '80227'),
(115, 9, 'Depok', 'Kota', '16416'),
(116, 32, 'Dharmasraya', 'Kabupaten', '27612'),
(117, 24, 'Dogiyai', 'Kabupaten', '98866'),
(118, 22, 'Dompu', 'Kabupaten', '84217'),
(119, 29, 'Donggala', 'Kabupaten', '94341'),
(120, 26, 'Dumai', 'Kota', '28811'),
(121, 33, 'Empat Lawang', 'Kabupaten', '31811'),
(122, 23, 'Ende', 'Kabupaten', '86351'),
(123, 28, 'Enrekang', 'Kabupaten', '91719'),
(124, 25, 'Fakfak', 'Kabupaten', '98651'),
(125, 23, 'Flores Timur', 'Kabupaten', '86213'),
(126, 9, 'Garut', 'Kabupaten', '44126'),
(127, 21, 'Gayo Lues', 'Kabupaten', '24653'),
(128, 1, 'Gianyar', 'Kabupaten', '80519'),
(129, 7, 'Gorontalo', 'Kabupaten', '96218'),
(130, 7, 'Gorontalo', 'Kota', '96115'),
(131, 7, 'Gorontalo Utara', 'Kabupaten', '96611'),
(132, 28, 'Gowa', 'Kabupaten', '92111'),
(133, 11, 'Gresik', 'Kabupaten', '61115'),
(134, 10, 'Grobogan', 'Kabupaten', '58111'),
(135, 5, 'Gunung Kidul', 'Kabupaten', '55812'),
(136, 14, 'Gunung Mas', 'Kabupaten', '74511'),
(137, 34, 'Gunungsitoli', 'Kota', '22813'),
(138, 20, 'Halmahera Barat', 'Kabupaten', '97757'),
(139, 20, 'Halmahera Selatan', 'Kabupaten', '97911'),
(140, 20, 'Halmahera Tengah', 'Kabupaten', '97853'),
(141, 20, 'Halmahera Timur', 'Kabupaten', '97862'),
(142, 20, 'Halmahera Utara', 'Kabupaten', '97762'),
(143, 13, 'Hulu Sungai Selatan', 'Kabupaten', '71212'),
(144, 13, 'Hulu Sungai Tengah', 'Kabupaten', '71313'),
(145, 13, 'Hulu Sungai Utara', 'Kabupaten', '71419'),
(146, 34, 'Humbang Hasundutan', 'Kabupaten', '22457'),
(147, 26, 'Indragiri Hilir', 'Kabupaten', '29212'),
(148, 26, 'Indragiri Hulu', 'Kabupaten', '29319'),
(149, 9, 'Indramayu', 'Kabupaten', '45214'),
(150, 24, 'Intan Jaya', 'Kabupaten', '98771'),
(151, 6, 'Jakarta Barat', 'Kota', '11220'),
(152, 6, 'Jakarta Pusat', 'Kota', '10540'),
(153, 6, 'Jakarta Selatan', 'Kota', '12230'),
(154, 6, 'Jakarta Timur', 'Kota', '13330'),
(155, 6, 'Jakarta Utara', 'Kota', '14140'),
(156, 8, 'Jambi', 'Kota', '36111'),
(157, 24, 'Jayapura', 'Kabupaten', '99352'),
(158, 24, 'Jayapura', 'Kota', '99114'),
(159, 24, 'Jayawijaya', 'Kabupaten', '99511'),
(160, 11, 'Jember', 'Kabupaten', '68113'),
(161, 1, 'Jembrana', 'Kabupaten', '82251'),
(162, 28, 'Jeneponto', 'Kabupaten', '92319'),
(163, 10, 'Jepara', 'Kabupaten', '59419'),
(164, 11, 'Jombang', 'Kabupaten', '61415'),
(165, 25, 'Kaimana', 'Kabupaten', '98671'),
(166, 26, 'Kampar', 'Kabupaten', '28411'),
(167, 14, 'Kapuas', 'Kabupaten', '73583'),
(168, 12, 'Kapuas Hulu', 'Kabupaten', '78719'),
(169, 10, 'Karanganyar', 'Kabupaten', '57718'),
(170, 1, 'Karangasem', 'Kabupaten', '80819'),
(171, 9, 'Karawang', 'Kabupaten', '41311'),
(172, 17, 'Karimun', 'Kabupaten', '29611'),
(173, 34, 'Karo', 'Kabupaten', '22119'),
(174, 14, 'Katingan', 'Kabupaten', '74411'),
(175, 4, 'Kaur', 'Kabupaten', '38911'),
(176, 12, 'Kayong Utara', 'Kabupaten', '78852'),
(177, 10, 'Kebumen', 'Kabupaten', '54319'),
(178, 11, 'Kediri', 'Kabupaten', '64184'),
(179, 11, 'Kediri', 'Kota', '64125'),
(180, 24, 'Keerom', 'Kabupaten', '99461'),
(181, 10, 'Kendal', 'Kabupaten', '51314'),
(182, 30, 'Kendari', 'Kota', '93126'),
(183, 4, 'Kepahiang', 'Kabupaten', '39319'),
(184, 17, 'Kepulauan Anambas', 'Kabupaten', '29991'),
(185, 19, 'Kepulauan Aru', 'Kabupaten', '97681'),
(186, 32, 'Kepulauan Mentawai', 'Kabupaten', '25771'),
(187, 26, 'Kepulauan Meranti', 'Kabupaten', '28791'),
(188, 31, 'Kepulauan Sangihe', 'Kabupaten', '95819'),
(189, 6, 'Kepulauan Seribu', 'Kabupaten', '14550'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)', 'Kabupaten', '95862'),
(191, 20, 'Kepulauan Sula', 'Kabupaten', '97995'),
(192, 31, 'Kepulauan Talaud', 'Kabupaten', '95885'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)', 'Kabupaten', '98211'),
(194, 8, 'Kerinci', 'Kabupaten', '37167'),
(195, 12, 'Ketapang', 'Kabupaten', '78874'),
(196, 10, 'Klaten', 'Kabupaten', '57411'),
(197, 1, 'Klungkung', 'Kabupaten', '80719'),
(198, 30, 'Kolaka', 'Kabupaten', '93511'),
(199, 30, 'Kolaka Utara', 'Kabupaten', '93911'),
(200, 30, 'Konawe', 'Kabupaten', '93411'),
(201, 30, 'Konawe Selatan', 'Kabupaten', '93811'),
(202, 30, 'Konawe Utara', 'Kabupaten', '93311'),
(203, 13, 'Kotabaru', 'Kabupaten', '72119'),
(204, 31, 'Kotamobagu', 'Kota', '95711'),
(205, 14, 'Kotawaringin Barat', 'Kabupaten', '74119'),
(206, 14, 'Kotawaringin Timur', 'Kabupaten', '74364'),
(207, 26, 'Kuantan Singingi', 'Kabupaten', '29519'),
(208, 12, 'Kubu Raya', 'Kabupaten', '78311'),
(209, 10, 'Kudus', 'Kabupaten', '59311'),
(210, 5, 'Kulon Progo', 'Kabupaten', '55611'),
(211, 9, 'Kuningan', 'Kabupaten', '45511'),
(212, 23, 'Kupang', 'Kabupaten', '85362'),
(213, 23, 'Kupang', 'Kota', '85119'),
(214, 15, 'Kutai Barat', 'Kabupaten', '75711'),
(215, 15, 'Kutai Kartanegara', 'Kabupaten', '75511'),
(216, 15, 'Kutai Timur', 'Kabupaten', '75611'),
(217, 34, 'Labuhan Batu', 'Kabupaten', '21412'),
(218, 34, 'Labuhan Batu Selatan', 'Kabupaten', '21511'),
(219, 34, 'Labuhan Batu Utara', 'Kabupaten', '21711'),
(220, 33, 'Lahat', 'Kabupaten', '31419'),
(221, 14, 'Lamandau', 'Kabupaten', '74611'),
(222, 11, 'Lamongan', 'Kabupaten', '64125'),
(223, 18, 'Lampung Barat', 'Kabupaten', '34814'),
(224, 18, 'Lampung Selatan', 'Kabupaten', '35511'),
(225, 18, 'Lampung Tengah', 'Kabupaten', '34212'),
(226, 18, 'Lampung Timur', 'Kabupaten', '34319'),
(227, 18, 'Lampung Utara', 'Kabupaten', '34516'),
(228, 12, 'Landak', 'Kabupaten', '78319'),
(229, 34, 'Langkat', 'Kabupaten', '20811'),
(230, 21, 'Langsa', 'Kota', '24412'),
(231, 24, 'Lanny Jaya', 'Kabupaten', '99531'),
(232, 3, 'Lebak', 'Kabupaten', '42319'),
(233, 4, 'Lebong', 'Kabupaten', '39264'),
(234, 23, 'Lembata', 'Kabupaten', '86611'),
(235, 21, 'Lhokseumawe', 'Kota', '24352'),
(236, 32, 'Lima Puluh Koto/Kota', 'Kabupaten', '26671'),
(237, 17, 'Lingga', 'Kabupaten', '29811'),
(238, 22, 'Lombok Barat', 'Kabupaten', '83311'),
(239, 22, 'Lombok Tengah', 'Kabupaten', '83511'),
(240, 22, 'Lombok Timur', 'Kabupaten', '83612'),
(241, 22, 'Lombok Utara', 'Kabupaten', '83711'),
(242, 33, 'Lubuk Linggau', 'Kota', '31614'),
(243, 11, 'Lumajang', 'Kabupaten', '67319'),
(244, 28, 'Luwu', 'Kabupaten', '91994'),
(245, 28, 'Luwu Timur', 'Kabupaten', '92981'),
(246, 28, 'Luwu Utara', 'Kabupaten', '92911'),
(247, 11, 'Madiun', 'Kabupaten', '63153'),
(248, 11, 'Madiun', 'Kota', '63122'),
(249, 10, 'Magelang', 'Kabupaten', '56519'),
(250, 10, 'Magelang', 'Kota', '56133'),
(251, 11, 'Magetan', 'Kabupaten', '63314'),
(252, 9, 'Majalengka', 'Kabupaten', '45412'),
(253, 27, 'Majene', 'Kabupaten', '91411'),
(254, 28, 'Makassar', 'Kota', '90111'),
(255, 11, 'Malang', 'Kabupaten', '65163'),
(256, 11, 'Malang', 'Kota', '65112'),
(257, 16, 'Malinau', 'Kabupaten', '77511'),
(258, 19, 'Maluku Barat Daya', 'Kabupaten', '97451'),
(259, 19, 'Maluku Tengah', 'Kabupaten', '97513'),
(260, 19, 'Maluku Tenggara', 'Kabupaten', '97651'),
(261, 19, 'Maluku Tenggara Barat', 'Kabupaten', '97465'),
(262, 27, 'Mamasa', 'Kabupaten', '91362'),
(263, 24, 'Mamberamo Raya', 'Kabupaten', '99381'),
(264, 24, 'Mamberamo Tengah', 'Kabupaten', '99553'),
(265, 27, 'Mamuju', 'Kabupaten', '91519'),
(266, 27, 'Mamuju Utara', 'Kabupaten', '91571'),
(267, 31, 'Manado', 'Kota', '95247'),
(268, 34, 'Mandailing Natal', 'Kabupaten', '22916'),
(269, 23, 'Manggarai', 'Kabupaten', '86551'),
(270, 23, 'Manggarai Barat', 'Kabupaten', '86711'),
(271, 23, 'Manggarai Timur', 'Kabupaten', '86811'),
(272, 25, 'Manokwari', 'Kabupaten', '98311'),
(273, 25, 'Manokwari Selatan', 'Kabupaten', '98355'),
(274, 24, 'Mappi', 'Kabupaten', '99853'),
(275, 28, 'Maros', 'Kabupaten', '90511'),
(276, 22, 'Mataram', 'Kota', '83131'),
(277, 25, 'Maybrat', 'Kabupaten', '98051'),
(278, 34, 'Medan', 'Kota', '20228'),
(279, 12, 'Melawi', 'Kabupaten', '78619'),
(280, 8, 'Merangin', 'Kabupaten', '37319'),
(281, 24, 'Merauke', 'Kabupaten', '99613'),
(282, 18, 'Mesuji', 'Kabupaten', '34911'),
(283, 18, 'Metro', 'Kota', '34111'),
(284, 24, 'Mimika', 'Kabupaten', '99962'),
(285, 31, 'Minahasa', 'Kabupaten', '95614'),
(286, 31, 'Minahasa Selatan', 'Kabupaten', '95914'),
(287, 31, 'Minahasa Tenggara', 'Kabupaten', '95995'),
(288, 31, 'Minahasa Utara', 'Kabupaten', '95316'),
(289, 11, 'Mojokerto', 'Kabupaten', '61382'),
(290, 11, 'Mojokerto', 'Kota', '61316'),
(291, 29, 'Morowali', 'Kabupaten', '94911'),
(292, 33, 'Muara Enim', 'Kabupaten', '31315'),
(293, 8, 'Muaro Jambi', 'Kabupaten', '36311'),
(294, 4, 'Muko Muko', 'Kabupaten', '38715'),
(295, 30, 'Muna', 'Kabupaten', '93611'),
(296, 14, 'Murung Raya', 'Kabupaten', '73911'),
(297, 33, 'Musi Banyuasin', 'Kabupaten', '30719'),
(298, 33, 'Musi Rawas', 'Kabupaten', '31661'),
(299, 24, 'Nabire', 'Kabupaten', '98816'),
(300, 21, 'Nagan Raya', 'Kabupaten', '23674'),
(301, 23, 'Nagekeo', 'Kabupaten', '86911'),
(302, 17, 'Natuna', 'Kabupaten', '29711'),
(303, 24, 'Nduga', 'Kabupaten', '99541'),
(304, 23, 'Ngada', 'Kabupaten', '86413'),
(305, 11, 'Nganjuk', 'Kabupaten', '64414'),
(306, 11, 'Ngawi', 'Kabupaten', '63219'),
(307, 34, 'Nias', 'Kabupaten', '22876'),
(308, 34, 'Nias Barat', 'Kabupaten', '22895'),
(309, 34, 'Nias Selatan', 'Kabupaten', '22865'),
(310, 34, 'Nias Utara', 'Kabupaten', '22856'),
(311, 16, 'Nunukan', 'Kabupaten', '77421'),
(312, 33, 'Ogan Ilir', 'Kabupaten', '30811'),
(313, 33, 'Ogan Komering Ilir', 'Kabupaten', '30618'),
(314, 33, 'Ogan Komering Ulu', 'Kabupaten', '32112'),
(315, 33, 'Ogan Komering Ulu Selatan', 'Kabupaten', '32211'),
(316, 33, 'Ogan Komering Ulu Timur', 'Kabupaten', '32312'),
(317, 11, 'Pacitan', 'Kabupaten', '63512'),
(318, 32, 'Padang', 'Kota', '25112'),
(319, 34, 'Padang Lawas', 'Kabupaten', '22763'),
(320, 34, 'Padang Lawas Utara', 'Kabupaten', '22753'),
(321, 32, 'Padang Panjang', 'Kota', '27122'),
(322, 32, 'Padang Pariaman', 'Kabupaten', '25583'),
(323, 34, 'Padang Sidempuan', 'Kota', '22727'),
(324, 33, 'Pagar Alam', 'Kota', '31512'),
(325, 34, 'Pakpak Bharat', 'Kabupaten', '22272'),
(326, 14, 'Palangka Raya', 'Kota', '73112'),
(327, 33, 'Palembang', 'Kota', '30111'),
(328, 28, 'Palopo', 'Kota', '91911'),
(329, 29, 'Palu', 'Kota', '94111'),
(330, 11, 'Pamekasan', 'Kabupaten', '69319'),
(331, 3, 'Pandeglang', 'Kabupaten', '42212'),
(332, 9, 'Pangandaran', 'Kabupaten', '46511'),
(333, 28, 'Pangkajene Kepulauan', 'Kabupaten', '90611'),
(334, 2, 'Pangkal Pinang', 'Kota', '33115'),
(335, 24, 'Paniai', 'Kabupaten', '98765'),
(336, 28, 'Parepare', 'Kota', '91123'),
(337, 32, 'Pariaman', 'Kota', '25511'),
(338, 29, 'Parigi Moutong', 'Kabupaten', '94411'),
(339, 32, 'Pasaman', 'Kabupaten', '26318'),
(340, 32, 'Pasaman Barat', 'Kabupaten', '26511'),
(341, 15, 'Paser', 'Kabupaten', '76211'),
(342, 11, 'Pasuruan', 'Kabupaten', '67153'),
(343, 11, 'Pasuruan', 'Kota', '67118'),
(344, 10, 'Pati', 'Kabupaten', '59114'),
(345, 32, 'Payakumbuh', 'Kota', '26213'),
(346, 25, 'Pegunungan Arfak', 'Kabupaten', '98354'),
(347, 24, 'Pegunungan Bintang', 'Kabupaten', '99573'),
(348, 10, 'Pekalongan', 'Kabupaten', '51161'),
(349, 10, 'Pekalongan', 'Kota', '51122'),
(350, 26, 'Pekanbaru', 'Kota', '28112'),
(351, 26, 'Pelalawan', 'Kabupaten', '28311'),
(352, 10, 'Pemalang', 'Kabupaten', '52319'),
(353, 34, 'Pematang Siantar', 'Kota', '21126'),
(354, 15, 'Penajam Paser Utara', 'Kabupaten', '76311'),
(355, 18, 'Pesawaran', 'Kabupaten', '35312'),
(356, 18, 'Pesisir Barat', 'Kabupaten', '35974'),
(357, 32, 'Pesisir Selatan', 'Kabupaten', '25611'),
(358, 21, 'Pidie', 'Kabupaten', '24116'),
(359, 21, 'Pidie Jaya', 'Kabupaten', '24186'),
(360, 28, 'Pinrang', 'Kabupaten', '91251'),
(361, 7, 'Pohuwato', 'Kabupaten', '96419'),
(362, 27, 'Polewali Mandar', 'Kabupaten', '91311'),
(363, 11, 'Ponorogo', 'Kabupaten', '63411'),
(364, 12, 'Pontianak', 'Kabupaten', '78971'),
(365, 12, 'Pontianak', 'Kota', '78112'),
(366, 29, 'Poso', 'Kabupaten', '94615'),
(367, 33, 'Prabumulih', 'Kota', '31121'),
(368, 18, 'Pringsewu', 'Kabupaten', '35719'),
(369, 11, 'Probolinggo', 'Kabupaten', '67282'),
(370, 11, 'Probolinggo', 'Kota', '67215'),
(371, 14, 'Pulang Pisau', 'Kabupaten', '74811'),
(372, 20, 'Pulau Morotai', 'Kabupaten', '97771'),
(373, 24, 'Puncak', 'Kabupaten', '98981'),
(374, 24, 'Puncak Jaya', 'Kabupaten', '98979'),
(375, 10, 'Purbalingga', 'Kabupaten', '53312'),
(376, 9, 'Purwakarta', 'Kabupaten', '41119'),
(377, 10, 'Purworejo', 'Kabupaten', '54111'),
(378, 25, 'Raja Ampat', 'Kabupaten', '98489'),
(379, 4, 'Rejang Lebong', 'Kabupaten', '39112'),
(380, 10, 'Rembang', 'Kabupaten', '59219'),
(381, 26, 'Rokan Hilir', 'Kabupaten', '28992'),
(382, 26, 'Rokan Hulu', 'Kabupaten', '28511'),
(383, 23, 'Rote Ndao', 'Kabupaten', '85982'),
(384, 21, 'Sabang', 'Kota', '23512'),
(385, 23, 'Sabu Raijua', 'Kabupaten', '85391'),
(386, 10, 'Salatiga', 'Kota', '50711'),
(387, 15, 'Samarinda', 'Kota', '75133'),
(388, 12, 'Sambas', 'Kabupaten', '79453'),
(389, 34, 'Samosir', 'Kabupaten', '22392'),
(390, 11, 'Sampang', 'Kabupaten', '69219'),
(391, 12, 'Sanggau', 'Kabupaten', '78557'),
(392, 24, 'Sarmi', 'Kabupaten', '99373'),
(393, 8, 'Sarolangun', 'Kabupaten', '37419'),
(394, 32, 'Sawah Lunto', 'Kota', '27416'),
(395, 12, 'Sekadau', 'Kabupaten', '79583'),
(396, 28, 'Selayar (Kepulauan Selayar)', 'Kabupaten', '92812'),
(397, 4, 'Seluma', 'Kabupaten', '38811'),
(398, 10, 'Semarang', 'Kabupaten', '50511'),
(399, 10, 'Semarang', 'Kota', '50135'),
(400, 19, 'Seram Bagian Barat', 'Kabupaten', '97561'),
(401, 19, 'Seram Bagian Timur', 'Kabupaten', '97581'),
(402, 3, 'Serang', 'Kabupaten', '42182'),
(403, 3, 'Serang', 'Kota', '42111'),
(404, 34, 'Serdang Bedagai', 'Kabupaten', '20915'),
(405, 14, 'Seruyan', 'Kabupaten', '74211'),
(406, 26, 'Siak', 'Kabupaten', '28623'),
(407, 34, 'Sibolga', 'Kota', '22522'),
(408, 28, 'Sidenreng Rappang/Rapang', 'Kabupaten', '91613'),
(409, 11, 'Sidoarjo', 'Kabupaten', '61219'),
(410, 29, 'Sigi', 'Kabupaten', '94364'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)', 'Kabupaten', '27511'),
(412, 23, 'Sikka', 'Kabupaten', '86121'),
(413, 34, 'Simalungun', 'Kabupaten', '21162'),
(414, 21, 'Simeulue', 'Kabupaten', '23891'),
(415, 12, 'Singkawang', 'Kota', '79117'),
(416, 28, 'Sinjai', 'Kabupaten', '92615'),
(417, 12, 'Sintang', 'Kabupaten', '78619'),
(418, 11, 'Situbondo', 'Kabupaten', '68316'),
(419, 5, 'Sleman', 'Kabupaten', '55513'),
(420, 32, 'Solok', 'Kabupaten', '27365'),
(421, 32, 'Solok', 'Kota', '27315'),
(422, 32, 'Solok Selatan', 'Kabupaten', '27779'),
(423, 28, 'Soppeng', 'Kabupaten', '90812'),
(424, 25, 'Sorong', 'Kabupaten', '98431'),
(425, 25, 'Sorong', 'Kota', '98411'),
(426, 25, 'Sorong Selatan', 'Kabupaten', '98454'),
(427, 10, 'Sragen', 'Kabupaten', '57211'),
(428, 9, 'Subang', 'Kabupaten', '41215'),
(429, 21, 'Subulussalam', 'Kota', '24882'),
(430, 9, 'Sukabumi', 'Kabupaten', '43311'),
(431, 9, 'Sukabumi', 'Kota', '43114'),
(432, 14, 'Sukamara', 'Kabupaten', '74712'),
(433, 10, 'Sukoharjo', 'Kabupaten', '57514'),
(434, 23, 'Sumba Barat', 'Kabupaten', '87219'),
(435, 23, 'Sumba Barat Daya', 'Kabupaten', '87453'),
(436, 23, 'Sumba Tengah', 'Kabupaten', '87358'),
(437, 23, 'Sumba Timur', 'Kabupaten', '87112'),
(438, 22, 'Sumbawa', 'Kabupaten', '84315'),
(439, 22, 'Sumbawa Barat', 'Kabupaten', '84419'),
(440, 9, 'Sumedang', 'Kabupaten', '45326'),
(441, 11, 'Sumenep', 'Kabupaten', '69413'),
(442, 8, 'Sungaipenuh', 'Kota', '37113'),
(443, 24, 'Supiori', 'Kabupaten', '98164'),
(444, 11, 'Surabaya', 'Kota', '60119'),
(445, 10, 'Surakarta (Solo)', 'Kota', '57113'),
(446, 13, 'Tabalong', 'Kabupaten', '71513'),
(447, 1, 'Tabanan', 'Kabupaten', '82119'),
(448, 28, 'Takalar', 'Kabupaten', '92212'),
(449, 25, 'Tambrauw', 'Kabupaten', '98475'),
(450, 16, 'Tana Tidung', 'Kabupaten', '77611'),
(451, 28, 'Tana Toraja', 'Kabupaten', '91819'),
(452, 13, 'Tanah Bumbu', 'Kabupaten', '72211'),
(453, 32, 'Tanah Datar', 'Kabupaten', '27211'),
(454, 13, 'Tanah Laut', 'Kabupaten', '70811'),
(455, 3, 'Tangerang', 'Kabupaten', '15914'),
(456, 3, 'Tangerang', 'Kota', '15111'),
(457, 3, 'Tangerang Selatan', 'Kota', '15332'),
(458, 18, 'Tanggamus', 'Kabupaten', '35619'),
(459, 34, 'Tanjung Balai', 'Kota', '21321'),
(460, 8, 'Tanjung Jabung Barat', 'Kabupaten', '36513'),
(461, 8, 'Tanjung Jabung Timur', 'Kabupaten', '36719'),
(462, 17, 'Tanjung Pinang', 'Kota', '29111'),
(463, 34, 'Tapanuli Selatan', 'Kabupaten', '22742'),
(464, 34, 'Tapanuli Tengah', 'Kabupaten', '22611'),
(465, 34, 'Tapanuli Utara', 'Kabupaten', '22414'),
(466, 13, 'Tapin', 'Kabupaten', '71119'),
(467, 16, 'Tarakan', 'Kota', '77114'),
(468, 9, 'Tasikmalaya', 'Kabupaten', '46411'),
(469, 9, 'Tasikmalaya', 'Kota', '46116'),
(470, 34, 'Tebing Tinggi', 'Kota', '20632'),
(471, 8, 'Tebo', 'Kabupaten', '37519'),
(472, 10, 'Tegal', 'Kabupaten', '52419'),
(473, 10, 'Tegal', 'Kota', '52114'),
(474, 25, 'Teluk Bintuni', 'Kabupaten', '98551'),
(475, 25, 'Teluk Wondama', 'Kabupaten', '98591'),
(476, 10, 'Temanggung', 'Kabupaten', '56212'),
(477, 20, 'Ternate', 'Kota', '97714'),
(478, 20, 'Tidore Kepulauan', 'Kota', '97815'),
(479, 23, 'Timor Tengah Selatan', 'Kabupaten', '85562'),
(480, 23, 'Timor Tengah Utara', 'Kabupaten', '85612'),
(481, 34, 'Toba Samosir', 'Kabupaten', '22316'),
(482, 29, 'Tojo Una-Una', 'Kabupaten', '94683'),
(483, 29, 'Toli-Toli', 'Kabupaten', '94542'),
(484, 24, 'Tolikara', 'Kabupaten', '99411'),
(485, 31, 'Tomohon', 'Kota', '95416'),
(486, 28, 'Toraja Utara', 'Kabupaten', '91831'),
(487, 11, 'Trenggalek', 'Kabupaten', '66312'),
(488, 19, 'Tual', 'Kota', '97612'),
(489, 11, 'Tuban', 'Kabupaten', '62319'),
(490, 18, 'Tulang Bawang', 'Kabupaten', '34613'),
(491, 18, 'Tulang Bawang Barat', 'Kabupaten', '34419'),
(492, 11, 'Tulungagung', 'Kabupaten', '66212'),
(493, 28, 'Wajo', 'Kabupaten', '90911'),
(494, 30, 'Wakatobi', 'Kabupaten', '93791'),
(495, 24, 'Waropen', 'Kabupaten', '98269'),
(496, 18, 'Way Kanan', 'Kabupaten', '34711'),
(497, 10, 'Wonogiri', 'Kabupaten', '57619'),
(498, 10, 'Wonosobo', 'Kabupaten', '56311'),
(499, 24, 'Yahukimo', 'Kabupaten', '99041'),
(500, 24, 'Yalimo', 'Kabupaten', '99481'),
(501, 5, 'Yogyakarta', 'Kota', '55111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2018_07_10_115805_penyesuaian_table_users', 2),
(10, '2018_07_16_020754_create_table_categories', 3),
(25, '2018_07_21_203443_create_books_table', 4),
(26, '2018_07_21_204915_create_book_category_table', 5),
(28, '2018_07_25_075101_create_orders_table', 6),
(29, '2018_07_25_082000_create_book_order_table', 7),
(33, '2019_08_19_000000_create_failed_jobs_table', 8),
(35, '2020_10_31_024343_add_api_token_to_users_table', 9),
(36, '2020_11_03_055036_create_provincess_table', 10),
(37, '2020_11_03_055044_create_provinces_table', 10),
(38, '2020_11_03_055104_create_cities_table', 10),
(39, '2020_11_03_063201_add_region_to_users_table', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('SUBMIT','PROCESS','FINISH','CANCEL') COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_bill` float DEFAULT NULL,
  `courier_service` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `invoice_number`, `status`, `total_bill`, `courier_service`, `created_at`, `updated_at`) VALUES
(1, 7, '201807060001', 'FINISH', NULL, NULL, '2018-07-06 00:00:00', '2018-07-06 00:00:00'),
(2, 14, '201807250002', 'SUBMIT', NULL, NULL, '2018-07-26 00:00:00', '2019-06-09 03:01:16'),
(6, 1, '20201104074220', 'SUBMIT', 409000, 'jne-OKE', '2020-11-04 00:42:20', '2020-11-04 00:42:21'),
(7, 1, '20201104081429', 'SUBMIT', 409000, 'jne-OKE', '2020-11-04 01:14:29', '2020-11-04 01:14:30'),
(8, 1, '20201104081715', 'SUBMIT', 409000, 'jne-OKE', '2020-11-04 01:17:15', '2020-11-04 01:17:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `provinces`
--

INSERT INTO `provinces` (`id`, `province`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'avatars/1.jpg',
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE',
  `city_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`, `username`, `roles`, `address`, `phone`, `avatar`, `status`, `city_id`, `province_id`) VALUES
(1, 'Ahmad Fajrul Falah', 'administrator@larashop.test', '$2y$12$qTcfwXaWxpIvTavlRn6EwO.xlUy6npOZPqXgaZkVGZ1KJohTKBipC', '5CqM67phWpKcCnFj7GGmVQCg8gCbA4L7VTIQ29WgXC9XFmNzKYSdemSO6CDd', 'zcp3S61CQhv8rtrdNkSyPxwI0lqLUlzFVKrZ0OjF5KLqYVnRMs58DhIOyMjx', '2018-07-11 02:44:43', '2020-11-04 01:35:52', 'administrator', '[\"ADMIN\"]', 'Jalan Harapan Mulya III no 7\r\nKel Harapan Mulya, Kec Kemayoran', '85781107766', 'avatars/1.jpg', 'ACTIVE', 181, 10),
(4, 'Muhammad Azamuddin', 'azamuddin@live.com', 'bismillah', 'nW8qQO8xulaRJpUtWdYk4UdGruxnhDGgs37Z48cjQGomjf3JApuRnbQdivrZ', NULL, '2018-07-12 09:17:37', '2020-10-30 19:57:27', 'azamuddin91', '[\"ADMIN\",\"CUSTOMER\"]', 'Jalan Haji Sarmili', '0871111111', 'avatars/10o6t1i0mRM2BTNHnTYKrh69mSs68li91EDSmoXs.jpeg', 'ACTIVE', NULL, NULL),
(7, 'Nadia Nurul Mila', 'nadia@gmail.com', 'bismillah', 'MMxjh3FhayWXz2CqKljCUMPYcZtt9f5n28TJMoPOwXkuZg9ZucqiG9AY2fl6', NULL, '2018-07-13 07:59:30', '2020-10-30 19:57:27', 'nadia', '[\"STAFF\",\"CUSTOMER\"]', NULL, NULL, NULL, 'INACTIVE', NULL, NULL),
(8, 'Muhammad Azamuddin', 'hana@humaira.com', 'bismillah', 'i1mc2sH39uRaSHfkpeP7E8h60MQJxidbTXsRIWVDMMa33icDfRWMvqo2gRiG', NULL, '2018-07-14 02:47:08', '2020-10-30 19:57:27', 'hana', '[\"ADMIN\",\"STAFF\"]', 'Jalan Haji Sarmili 34', '87808490517', NULL, 'ACTIVE', NULL, NULL),
(9, 'User Empat', 'user4@gmail.com', '$2y$12$QaEjlLplCPPVdz0Zi.PwW.T/StcJkkB1p8oRfN5yTH98zekdp4NYe', 'RzIzvCVLagJhyCH70FVksN9aMux8gR8N2GzFU6Wm3M692Q4NlUYBpfJc21Tr', 's4McFmTz3h7fGI5lu3b8e982Y1hCiXBFIGsrCqcaT1rJ00d2FIWwnlKHCpQq', '2018-07-14 02:50:04', '2020-10-30 19:57:27', 'user4', '[\"CUSTOMER\"]', NULL, NULL, NULL, 'ACTIVE', NULL, NULL),
(10, 'User Lima', 'user5@gmail.com', 'bismillah', 'LND6hoYKNLF65lFbxe8sBG1XAHwqDOaUCfat83UP9uRTc0v25my6eFAMEPsu', NULL, '2018-07-14 02:53:48', '2020-10-30 19:57:27', 'user5', '[\"ADMIN\"]', NULL, NULL, NULL, 'ACTIVE', NULL, NULL),
(11, 'User Enam', 'user6@gmail.com', 'bismillah', '0dieGcw2KrDDutlA2vJGEpIu8jIHYWW6DGmfPiyk4syoLYvHul5kp6ktawJn', NULL, '2018-07-14 02:55:38', '2020-10-30 19:57:27', 'user6', '[\"CUSTOMER\"]', NULL, NULL, NULL, 'ACTIVE', NULL, NULL),
(12, 'Ridwan Mutaffaq', 'ridwan@gmail.com', 'bismillah', '8iytJAPMJ0eRtjfztTO5a0xe9hqj63fz5xZP9YSJs2ujTeKS4wtknSfCHPOH', NULL, '2018-07-14 05:38:30', '2020-10-30 19:57:27', 'ridwan', '[\"STAFF\"]', 'Jalan Harapan Mulya III no 7\r\nKel Harapan Mulya, Kec Kemayoran', '85781107766', NULL, 'ACTIVE', NULL, NULL),
(14, 'Habib Asagaf', 'habib@gmail.com', 'bismillah', 'TUZrtwcGIAude5iLYTqdPN4jw6bNu7YR2mB8n7r7masjsutVgJpFl7LMehqu', NULL, '2018-07-15 04:09:37', '2020-10-30 19:57:27', 'habib', '[\"ADMIN\",\"STAFF\"]', 'Jalan Harapan Mulya III no 7\r\nKel Harapan Mulya, Kec Kemayoran', '85781107766', 'avatars/wg7lugTyeRLtfjzzqr8vpRklOaOSHY99EdLFjTyy.jpeg', 'ACTIVE', NULL, NULL),
(15, 'Iqbal Kholis', 'iqbal@gmail.com', 'bismillah', 'QgK8GwsEd1TGGp1MAjGkxQaedvV4ZONbmw0rt9tGo7AjjVeclv5g8nrRpqpb', NULL, '2018-07-15 04:10:15', '2020-10-30 19:57:27', 'iqbal', '[\"ADMIN\"]', 'Jl Dr Wahidin No 1. Kompleks Kementerian Keuangan. Gedung Djuand\r\nKel Harapan Mulya, Kec Kemayoran', '85781150352', NULL, 'ACTIVE', NULL, NULL),
(17, 'User ABC', 'userabc@gmail.com', 'bismillah', 'HmUIISUVzbNSc4TdgpqHusVRbMEzobnMOzFJOCRBNJJq5y5L5JyWtyDb9OzF', NULL, '2018-07-15 10:03:19', '2020-10-30 19:57:27', 'userabc', '[\"STAFF\"]', 'Jalan Harapan Mulya III no 7\r\nKel Harapan Mulya, Kec Kemayoran', '85781107766', NULL, 'ACTIVE', NULL, NULL),
(18, 'user def', 'userdef@gmail.com', 'bismillah', 'stRrpmGHxdpVCVAKwM4ZOn5XBpBDlEErMQXrxm1yH7yFgDrGqrjoZtHBZQyV', NULL, '2018-07-15 10:03:47', '2020-10-30 19:57:27', 'userdef', '[\"ADMIN\",\"STAFF\"]', 'Jalan Harapan Mulya III no 7\r\nKel Harapan Mulya, Kec Kemayoran', '85781107766', NULL, 'ACTIVE', NULL, NULL),
(19, 'User Sepuluh', 'user10@gmail.com', 'bismillah', 'sgzBr9BbqJD5nKfCPzWACiaR4KKuyc0i2WIyJG5M63M0vf6BIHbpBrqOjrPQ', NULL, '2018-07-31 09:29:52', '2020-10-30 19:57:27', 'user10', '[\"STAFF\"]', 'Jalan Harapan Mulya III no 7\r\nKel Harapan Mulya, Kec Kemayoran', '085781107766', 'avatars/7Rsd6DkvGWqyq2pfYqQTDRIRzpLI74nCKynGU64u.png', 'ACTIVE', NULL, NULL),
(20, 'User Sebelas', 'user11@gmail.com', '$2y$10$e3uPymGhFeCcv20jzw1gvejgjSbWgMUoByLlV5RmH0lDjNMxD7pMm', 'Yb0otfhLBSgGadsbcCKEkNFDgY3PD34gGsm53YQ0dO0j1YMuT7A5YtEqy5gf', '4yNWujTy6VCCXhxFB0SBVMIrHmfzQ44seRgQ0QZbOQedrlHpjmYxqR9qiXxr', '2018-07-31 09:34:57', '2020-10-30 19:57:27', 'user11', '[\"STAFF\"]', 'Jalan Harapan Mulya III no 7\r\nKel Harapan Mulya, Kec Kemayoran', '85781107766', 'avatars/lIjmJvoWLaIOtihHKQjQhzRlwTCvMmSb0B2WNacy.png', 'ACTIVE', NULL, NULL),
(21, 'User Biasa', 'userbiasa@gmail.com', '$2y$10$dFe7avNTz6N1aXUWhKUJZ.1HqrrxtCuBKapADehUeQoQpPKYXOkiS', 'g0w0HKe3LSTuzYQcfl0lCOkCeLiGFllp7AwOiyFP645IzdObD0L2GGhzLQSS', 'A8Ta3nEgHuv135Qc2IeHRPbVaMyPY4f5SoPjWVMngmG0n3MNOLYGHAOfHAJF', '2018-07-31 09:39:11', '2020-10-30 19:57:27', 'userbiasa', '[\"CUSTOMER\"]', 'Jalan Harapan Mulya III no 7\r\nKel Harapan Mulya, Kec Kemayoran', '85781107766', 'avatars/Cvkp78zLjkP7p6uHQCup3a5oU23i64z7ulNHYJYE.png', 'ACTIVE', NULL, NULL),
(22, 'Dhermaga Surya Wicaksono', 'dhermaga.s@gmail.com', '$2y$10$xm582xQYnHPsGc/.1Mx5/ua43lVk8NAv.vOh06uHlyMFCUCLzU8tG', '0KreyQvWkhMQKQ9PxpjJv0GWFJ6gEVPVYqkbr1xB9KqbR1BU5cuuYaC0ygZA', NULL, '2018-10-02 07:05:11', '2020-10-30 19:57:27', 'dhermaga', '[\"STAFF\"]', 'Jalan Haji Sarmili 34', '87808490517', 'avatars/VpaPN4EUezqp6L2U3S5BQkF7IGCuWhosZxoLUNFZ.png', 'ACTIVE', NULL, NULL),
(23, 'Danar Gumilang Putera', 'danar.gp@gmail.com', '$2y$10$p56x0qCNOuuYr23XT6PIu.6yWpCdN9nRuw1YTwBDXzyVuUquMicFm', 'vWwqExCd4zSUFzdKBCXCBf1WuiQFC7LF9anhd6V3fU7NPqPJKKueGs3Lv5Nt', NULL, '2018-10-02 08:41:34', '2020-10-30 19:57:27', 'danar.gp', '[\"STAFF\"]', 'Jalan Haji Sarmili 34', '87808490517', 'avatars/DGjJ39VhPJkGqdx9M04GX4n9fST18ONduodKFzmK.png', 'ACTIVE', NULL, NULL),
(24, 'aksdfadf', 'akautzer@example.net', '$2y$10$0CIreiYAHxzsYxvVkfnpOu4a6pZUuWycYRFuFJwyn.hDgenzAczb.', '41O11KpyG2N1ccLznE0Tkuug3ZiIVsglGjlMK9W0siDhGqunseMMgJQjxHG5', NULL, '2020-10-30 22:52:15', '2020-10-30 22:52:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'jadhf', 'asda@example.net', '$2y$10$UNW.vmR/Cphz/tTa11ozBeAIynA0YD9kc9lW0Mny.1LmswEp.hLvy', 'aVPYvddhUqO87qvTdxwqkk4K21WX9TNuIQ02xjSFbf08pKtJwefjmu48zCgd', NULL, '2020-10-30 23:02:34', '2020-10-30 23:05:09', NULL, NULL, NULL, NULL, 'avatars/1.jpg', NULL, NULL, NULL),
(26, 'ajkdsf', 'akjsdfha@example.net', '$2y$10$S9dog3G6K0nLMh9Kni3k0u/TWGx7MZZ8FMiwl3GBqnIbVUjFaShB6', 'RR8pV213cnQIt7uTxNOKkKpbugFcnDwkCE1QHGQhhVXYuGOVyzpUKGq9uoOK', NULL, '2020-10-30 23:06:32', '2020-10-30 23:06:32', NULL, NULL, NULL, NULL, 'avatars/1.jpg', NULL, NULL, NULL),
(27, 'asdf', 'asdf@example.net', '$2y$10$j.3WMfFHLCf6kvUqDlSyeuuiGcfmtN.OJzkmOFg6brgY38GqVYi.6', '8mhl5tazGWEI09YHpKY4K217EaiNnRSHdZtJsg1Avu4UsY83sOwg0Fdh0RGs', NULL, '2020-10-30 23:08:41', '2020-10-30 23:08:41', NULL, NULL, NULL, NULL, 'avatars/1.jpg', NULL, NULL, NULL),
(28, 'kjadsf', 'kjadsf@example.net', '$2y$10$o42Gi7VNyLtwF1HYvdyFH.TwHB1jQfQrIxqEiBaUYpIIOE.Ixrh0e', 'Rs8GraUTPt9c5lB59uPR4LbEGLQEa3yhihIualTvmkN66U6pGE5VUgQXKE3x', NULL, '2020-10-30 23:10:13', '2020-10-30 23:10:13', NULL, NULL, NULL, NULL, 'avatars/1.jpg', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_category_book_id_foreign` (`book_id`),
  ADD KEY `book_category_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `book_order`
--
ALTER TABLE `book_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_order_order_id_foreign` (`order_id`),
  ADD KEY `book_order_book_id_foreign` (`book_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `book_order`
--
ALTER TABLE `book_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `book_order`
--
ALTER TABLE `book_order`
  ADD CONSTRAINT `book_order_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

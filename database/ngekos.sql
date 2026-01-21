-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 21, 2026 at 07:41 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngekos`
--

-- --------------------------------------------------------

--
-- Table structure for table `boarding_houses`
--

CREATE TABLE `boarding_houses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boarding_houses`
--

INSERT INTO `boarding_houses` (`id`, `name`, `slug`, `thumbnail`, `city_id`, `category_id`, `description`, `price`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Hotel Manhattan', 'hotel-manhattan', 'boarding-houses/01KF5GMVP9JAV9490NSE5QF8T5.avif', 5, 1, '<p>Anjay</p>', 2500000, 'di dekat Mall Kuningan City', '2026-01-20 19:37:50', '2026-01-17 00:20:17', '2026-01-20 19:37:50'),
(2, 'Hyatt Centric Ginza', 'hyatt-centric-ginza', 'boarding-houses/01KFFAK434DH6KFK0DEFD7VJ5X.webp', 2, 1, '<p>Begin your adventures at Hyatt Centric Ginza Tokyo, your perfect launchpad for exploring near and far. Located on Namiki Dōri Street, this upscale boutique hotel is just steps from shopping, landmarks old and new, and unique local flavors that reflect the vibrant energy of Ginza and Tokyo, Japan’s exciting capital.</p>', 7000000, '6-6-7 Ginza, Chuo-ku Tokyo, 104-0061 Japan', '2026-01-20 19:56:05', '2026-01-20 19:46:53', '2026-01-20 19:56:05'),
(3, 'Kyoto Ohara Ryokan', 'kyoto-ohara-ryokan', 'boarding-houses/01KFFBJ6CH2099S00ASNR55RV4.jpg', 5, 1, '<p>Nikmati kunjungan Anda ke Kyoto dengan menginap di Kyoto Ohara Ryokan Seryo. Tamu yang ingin tetap aktif dan mencoba jalur hiking/sepeda di sekitar properti, serta menikmati manfaat gratis termasuk WiFi, parkir mandiri, dan sarapan ala Jepang setiap hari antara pukul 07.30 dan 09.00. Para traveler menyukai staf.</p>', 7000000, 'Ryokan pegunungan dengan restoran, di dekat Kuil Sanzen-in', NULL, '2026-01-20 20:03:51', '2026-01-20 20:03:51'),
(4, 'Kyoritsu Resort', 'kyoritsu-resort', 'boarding-houses/01KFFCZ9TM1PKHZAAW0C1EFXQM.webp', 2, 1, '<p>Our resort hotels are high quality but provide friendly services. These resort hotels/healing hot spring accommodations are available throughout Japan.</p>', 5000000, '5-4 Arashiyamanishiichikawacho, Nishikyo-ku, Kyoto, Kyoto, 616-0003', NULL, '2026-01-20 20:28:29', '2026-01-20 20:28:29'),
(5, 'Minshuku Satoyama', 'minshuku-satoyama', 'boarding-houses/01KFFDKN69D8F0SD18GYJEC6JH.webp', 3, 2, '<p><em>Minshuku</em> are the equivalent of French bed and breakfasts. <strong>A Japanese family arranges its accommodation</strong> <strong>in order to be able to accommodate a few travelers in the rooms of the house.</strong></p>', 4800000, 'Ro 345 Washibara, Tsuwano-cho, Kanoashi-gun 699-5613 Shimane Prefecture', NULL, '2026-01-20 20:39:36', '2026-01-20 20:39:36'),
(6, 'Okura Kyoto Okazai', 'okura-kyoto-okazai', 'boarding-houses/01KFFE5DE4NBA2MJV00KSHP9SQ.webp', 4, 3, '<p>Hotel Okura&#039;s elegant rooms boast spectacular views of Kyoto against the backdrop of the Higashiyama Mountains. In the heart of the city, the hotel treats its guests to a shopping avenue, free Wi-Fi at the lobby and concierge services. Beauty treatments and baby-sitting services are available.</p>', 5500000, '26-6 Okazaki Tenno-cho, Kyoto, Kyoto, 606-8335', NULL, '2026-01-20 20:49:18', '2026-01-20 20:49:18'),
(7, 'Machiya Kamo River 7', 'machiya-kamo-river-7', 'boarding-houses/01KFFFT5R0MAKB5MV99340MRGE.jpg', 6, 7, '<p>Terletak di pusat Kyoto, 700 meter dari Kuil Sanjusangen-do dan kurang dari 1 km dari TKP Garden City Kyoto, Machiya Kamo River 7 adalah akomodasi yang menawarkan pemandangan taman. Akomodasi ini menampilkan pemandangan kota dan berjarak 1,8 km dari Stasiun Gion Shijo dan 1,2 km dari Stasiun Kyoto. Menyediakan Wi-Fi gratis di seluruh properti, rumah liburan bebas rokok ini memiliki hot tub.</p>', 3200000, 'Kyoto, Kyoto, Shimogyo-ku Inaricho 453, Jepang', NULL, '2026-01-20 21:18:07', '2026-01-20 21:18:07'),
(8, 'Kyoto Villa Ninja', 'kyoto-villa-ninja', 'boarding-houses/01KFFH8H9J6YE36MQXFVCZSNK0.jpg', 7, 8, '<p>Kyoto Villa Ninja di Kyoto menawarkan rumah liburan bintang 3 dengan dua kamar tidur dan ruang tamu. Akomodasi ini memiliki taman dan WiFi gratis, memastikan pengalaman menginap yang menyenangkan.</p>', 6320000, 'Kyoto, Kyoto, Nakagyo-ku Mibu Goshonouchi-cho 7-2 , Jepang', NULL, '2026-01-20 21:43:26', '2026-01-20 21:43:26'),
(9, 'Hirado Castle Stay', 'hirado-castle-stay', 'boarding-houses/01KFFHX55499X2Y2R2PM48N5W7.webp', 6, 9, '<p>平戸城 CASTLE STAY 懐柔櫓 in Hirado offers comfortable rooms with sea views, air-conditioning, and private bathrooms. Each room includes a bathrobe, tea and coffee maker, and free toiletries.</p>', 8000000, 'Nagasaki, Hirado, 長崎県平戸市岩の上町1458, Japan', NULL, '2026-01-20 21:54:42', '2026-01-20 21:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `bonuses`
--

CREATE TABLE `bonuses` (
  `id` bigint UNSIGNED NOT NULL,
  `boarding_house_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bonuses`
--

INSERT INTO `bonuses` (`id`, `boarding_house_id`, `image`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'bonuses/01KF5GMW9745BGY1B2CS4FEC37.avif', 'Gym', 'anjay', NULL, '2026-01-17 00:20:17', '2026-01-17 00:20:17'),
(2, 2, 'bonuses/01KFFAK44HHWVZ091AYSE2GAXA.webp', 'Breakfest', 'Hyatt Centric Ginza Tokyo Room Service NAMIKI667 Breakfast', NULL, '2026-01-20 19:46:53', '2026-01-20 19:46:53'),
(3, 3, 'bonuses/01KFFBJ6E13EEDM891CARCM87Q.webp', 'Pemandian Umum', 'Pengering rambut, sandal, kloset, dan handuk', NULL, '2026-01-20 20:03:51', '2026-01-20 20:03:51'),
(4, 4, 'bonuses/01KFFCZ9VZ0P070060W5AAHW5K.webp', 'Onsen', 'Recharge tubuh dan jiwa. Rasakan hangatnya keajaiban Onsen alami.', NULL, '2026-01-20 20:28:29', '2026-01-20 20:28:29'),
(5, 5, 'bonuses/01KFFDKN7N8ADC5AGFRJNTKMZ4.avif', 'Onsen', 'Pemandian Umum', NULL, '2026-01-20 20:39:36', '2026-01-20 20:39:36'),
(6, 6, 'bonuses/01KFFE5DFNVMJE9NJ6ERH2NS8W.jpg', 'Breakfest', 'Boasting panoramic mountain and city views, Sky Restaurant Pittoresque serves French cuisine and wines from its own wine cellar. Hotel Okura Kyoto houses a bakery and a variety of restaurants, including a top-floor buffet restaurant and Kyoto cuisine.', NULL, '2026-01-20 20:49:18', '2026-01-20 20:49:18'),
(7, 7, 'bonuses/01KFFFT5SHHRJV2E5VEM671B3E.jpg', 'Bathup', 'Bathup nyaman dan Segar', NULL, '2026-01-20 21:18:07', '2026-01-20 21:18:07'),
(8, 8, 'bonuses/01KFFH8HAVN0R4MJZEQJBESRK3.jpg', 'Bath', 'Bathup nyaman ', NULL, '2026-01-20 21:43:26', '2026-01-20 21:43:26'),
(9, 9, 'bonuses/01KFFHX56B6BPWGS4E6PEZPE0F.jpg', 'Lukisan ', 'Lukisan Kupu-Kupu', NULL, '2026-01-20 21:54:42', '2026-01-20 21:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1768974887),
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1768974887;', 1768974887),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1768964674),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1768964674;', 1768964674);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `image`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'cities/01KFF91GBKTPTPZ89PC1MAT4JT.jpg', 'Ryokan', 'ryokan', NULL, '2026-01-17 00:13:42', '2026-01-20 19:23:40'),
(2, 'cities/01KFF95RTWW0WEVCKG2YW3GSXK.jpg', 'Minshuku', 'minshuku', NULL, '2026-01-20 19:13:28', '2026-01-20 19:23:56'),
(3, 'cities/01KFF9AFGWGABJ54K5EG1N44NG.jpg', 'Shukubo', 'shukubo', NULL, '2026-01-20 19:13:50', '2026-01-20 19:24:41'),
(4, 'cities/01KFF8QZVKE6GSF71X40KJ8HH3.jpg', 'Apartment', 'apartment', '2026-01-20 19:26:02', '2026-01-20 19:14:35', '2026-01-20 19:26:02'),
(5, 'cities/01KFF9DPKKGKNWM7Z29ZJY4VBW.jpg', 'Capsule Hotel', 'capsule-hotel', '2026-01-20 19:32:18', '2026-01-20 19:26:26', '2026-01-20 19:32:18'),
(6, 'cities/01KFF9MF1C4STB59022M1F9GDS.jpg', 'Internet Cafe', 'internet-cafe', '2026-01-20 19:32:24', '2026-01-20 19:30:08', '2026-01-20 19:32:24'),
(7, 'cities/01KFF9SA4JPFAANSNH7JPNEC2Y.jpg', 'Machiya', 'machiya', NULL, '2026-01-20 19:32:47', '2026-01-20 19:32:47'),
(8, 'cities/01KFF9V6DZ1ES79TRB2013E3NH.jpg', 'Kominka', 'kominka', NULL, '2026-01-20 19:33:49', '2026-01-20 19:33:49'),
(9, 'cities/01KFFA16E7PNKHWHQBHZ45SVW7.jpg', 'Castle ', 'castle', NULL, '2026-01-20 19:37:05', '2026-01-20 19:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `image`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'cities/01KF5G6END9462JPG5TH2VK4DN.png', 'Jakarta', 'jakarta', '2026-01-20 19:08:03', '2026-01-17 00:12:25', '2026-01-20 19:08:03'),
(2, 'cities/01KFF80GY0KFY5FRR5D88M5FHK.jpg', 'Tokyo', 'tokyo', NULL, '2026-01-20 19:01:46', '2026-01-20 19:01:46'),
(3, 'cities/01KFF85H6VP4YDYJHX9YCF97V0.jpg', 'Osaka', 'osaka', NULL, '2026-01-20 19:04:30', '2026-01-20 19:04:30'),
(4, 'cities/01KFF871MBKKG5WSZ958DY60Q4.jpg', 'Nagoya', 'nagoya', NULL, '2026-01-20 19:05:20', '2026-01-20 19:05:20'),
(5, 'cities/01KFF88K7EK1MXD2H9TWSRHF7X.jpg', 'Kyoto', 'kyoto', NULL, '2026-01-20 19:06:11', '2026-01-20 19:06:11'),
(6, 'cities/01KFF8A9ZM56TP84ZZ4XKHSFYK.jpg', 'Sapporo', 'sapporo', NULL, '2026-01-20 19:07:07', '2026-01-20 19:07:07'),
(7, 'cities/01KFF8B6C2AJPV4D4SZCR6MZCK.jpg', 'Fukuoka', 'fukuoka', NULL, '2026-01-20 19:07:36', '2026-01-20 19:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_01_12_063253_create_cities_table', 1),
(5, '2026_01_12_063300_create_categories_table', 1),
(6, '2026_01_12_063308_create_boarding_houses_table', 1),
(7, '2026_01_12_063315_create_rooms_table', 1),
(8, '2026_01_12_063323_create_room_images_table', 1),
(9, '2026_01_12_063331_create_bonuses_table', 1),
(10, '2026_01_12_063343_create_testimonials_table', 1),
(11, '2026_01_12_063351_create_transactions_table', 1),
(12, '2026_01_13_054029_add_name_column_to_testimonials_table', 1),
(13, '2026_01_15_081020_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `boarding_house_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `square_feet` int NOT NULL,
  `capacity` int NOT NULL,
  `price_per_month` int NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `boarding_house_id`, `name`, `room_type`, `square_feet`, `capacity`, `price_per_month`, `is_available`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Room 01', 'Regular', 4, 4, 2500000, 1, NULL, '2026-01-17 00:20:17', '2026-01-20 19:09:42'),
(2, 2, 'Hyatt Room', 'Class 1', 69, 5, 7000000, 1, NULL, '2026-01-20 19:46:53', '2026-01-20 19:46:53'),
(3, 3, 'Japanese Style', 'Class 1', 69, 5, 7000000, 1, NULL, '2026-01-20 20:03:51', '2026-01-20 20:03:51'),
(4, 4, 'Twin Room', 'Class 1', 69, 3, 5000000, 1, NULL, '2026-01-20 20:28:29', '2026-01-20 20:28:29'),
(5, 5, 'Standart Room', 'Class 1', 69, 3, 4800000, 1, NULL, '2026-01-20 20:39:36', '2026-01-20 20:39:36'),
(6, 6, 'Okura Room', 'Superior Twin', 69, 4, 5500000, 1, NULL, '2026-01-20 20:49:18', '2026-01-20 20:49:18'),
(7, 7, 'Machiya Room', 'Class 1', 69, 3, 3200000, 1, NULL, '2026-01-20 21:18:07', '2026-01-20 21:18:07'),
(8, 8, 'Ninja Room', 'Class 1', 69, 4, 6320000, 1, NULL, '2026-01-20 21:43:26', '2026-01-20 21:43:26'),
(9, 9, 'Castle Room', 'Class 1', 69, 7, 8000000, 1, NULL, '2026-01-20 21:54:42', '2026-01-20 21:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `id` bigint UNSIGNED NOT NULL,
  `room_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`id`, `room_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'room-images/01KF5GMW9A023MVCW5HB1NGF6A.png', NULL, '2026-01-17 00:20:17', '2026-01-17 00:20:17'),
(2, 1, 'room-images/01KF5GMW9E54D4PGA3E4CSPVSY.webp', NULL, '2026-01-17 00:20:17', '2026-01-17 00:20:17'),
(3, 2, 'room-images/01KFFAK44KNQ7GHQS0NAY3KW1T.webp', NULL, '2026-01-20 19:46:53', '2026-01-20 19:46:53'),
(4, 2, 'room-images/01KFFAK44N8PQNDV3X3KHEQX33.webp', NULL, '2026-01-20 19:46:53', '2026-01-20 19:46:53'),
(5, 3, 'room-images/01KFFBJ6E55MRJXV5G9WCCZ41K.avif', NULL, '2026-01-20 20:03:51', '2026-01-20 20:03:51'),
(6, 3, 'room-images/01KFFBJ6EADJEKR4NSGBS3332T.avif', NULL, '2026-01-20 20:03:51', '2026-01-20 20:03:51'),
(7, 4, 'room-images/01KFFCZ9W3HH5EB31FT3H2Z0NF.avif', NULL, '2026-01-20 20:28:29', '2026-01-20 20:28:29'),
(8, 4, 'room-images/01KFFCZ9W7G9HN321HRTFSSDV0.avif', NULL, '2026-01-20 20:28:29', '2026-01-20 20:28:29'),
(9, 5, 'room-images/01KFFDKN7RSE9DPK26R4074ZXQ.avif', NULL, '2026-01-20 20:39:36', '2026-01-20 20:39:36'),
(10, 5, 'room-images/01KFFDKN7VB1SZZHZAC152K38K.avif', NULL, '2026-01-20 20:39:36', '2026-01-20 20:39:36'),
(11, 6, 'room-images/01KFFE5DFS61V4239823N7K2S3.jpg', NULL, '2026-01-20 20:49:18', '2026-01-20 20:49:18'),
(12, 6, 'room-images/01KFFE5DFYCXFJ7WZA6HJ1399P.jpg', NULL, '2026-01-20 20:49:18', '2026-01-20 20:49:18'),
(13, 7, 'room-images/01KFFFT5SN8C9NFMK0C75JMRGF.jpg', NULL, '2026-01-20 21:18:07', '2026-01-20 21:18:07'),
(14, 7, 'room-images/01KFFFT5STKGF47PX60JKM00XX.jpg', NULL, '2026-01-20 21:18:07', '2026-01-20 21:18:07'),
(15, 8, 'room-images/01KFFH8HAXJ65PZTAGKECAXBGR.jpg', NULL, '2026-01-20 21:43:26', '2026-01-20 21:43:26'),
(16, 8, 'room-images/01KFFH8HBNKQMDSJYSD0JABQ59.jpg', NULL, '2026-01-20 21:43:26', '2026-01-20 21:43:26'),
(17, 9, 'room-images/01KFFHX56F7H3CDAYEF70HTT9F.webp', NULL, '2026-01-20 21:54:42', '2026-01-20 21:54:42'),
(18, 9, 'room-images/01KFFHX56MH6FQ8NY564ECJTPT.jpg', NULL, '2026-01-20 21:54:42', '2026-01-20 21:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('53bFjWyqrlgj7dD2ChSUTqdkYQrooKRfTusmQhM2', NULL, '114.10.142.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHd1STNWOHFwRkJqYXloeTE5aUpwRjNXRFo3Tm00MzVVWkZwWVh5WiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8vY2xlYW5saWVzdC1tYXhpbWlsaWFuLWludGVycGhhbGFuZ2VhbC5uZ3Jvay1mcmVlLmRldiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768980728),
('aqPlnmRIfkCtwqEhsuIPSuNlUcp2gLikBm4HbiFT', NULL, '114.10.142.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGZXTFhlVU1tcTJIcjVyNEFFZlRWVlg2aldFbGlYcE1VbDNjSmFyayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTIzOiJodHRwczovL2NsZWFubGllc3QtbWF4aW1pbGlhbi1pbnRlcnBoYWxhbmdlYWwubmdyb2stZnJlZS5kZXYvc3RvcmFnZS9wcml2YXRlL2JvYXJkaW5nLWhvdXNlcy8wMUtGRkg4SDlKNllFMzZNUVhGVkNaU05LMC5qcGciO3M6NToicm91dGUiO3M6MTU6InByaXZhdGUuc3RvcmFnZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768980765),
('VfqR79q5RfddoSTyLJRdG4FbonO6s5VoFBcppCMI', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiYkZMUVNGOVJVUzJMUGRWN2pvcFNaN2s4VVZGSFBFVUw1am5kbGNqQSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjQwOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vdHJhbnNhY3Rpb25zIjtzOjU6InJvdXRlIjtzOjQzOiJmaWxhbWVudC5hZG1pbi5yZXNvdXJjZXMudHJhbnNhY3Rpb25zLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiNTUyZDJlYjJiYjg0M2Y0N2YxZTM3Mzc3M2JkZTY3ZDk1YjE1OGRlZjMyYzVhODlhZjQxNTdlOGZjZTEzNjYyYiI7czo2OiJ0YWJsZXMiO2E6NDp7czo0MDoiZGRjMWQwOGViZWZhNjUyMjkwM2FiMWYzN2MzY2I4YWNfY29sdW1ucyI7YTo0OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NToiaW1hZ2UiO3M6NToibGFiZWwiO3M6NToiSW1hZ2UiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6NToibGFiZWwiO3M6NDoiTmFtZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoic2x1ZyI7czo1OiJsYWJlbCI7czo0OiJTbHVnIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiJhZTk2ZjBkM2NiNTRhZWRlNDE5NTZlYzZkODFlY2FjYV9jb2x1bW5zIjthOjQ6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJpbWFnZSI7czo1OiJsYWJlbCI7czo1OiJJbWFnZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoibmFtZSI7czo1OiJsYWJlbCI7czo0OiJOYW1lIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJzbHVnIjtzOjU6ImxhYmVsIjtzOjQ6IlNsdWciO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9fXM6NDA6Ijk2YmU2YzE1NzRhY2M1M2FjNjAzNzU5NjkwMGQxYjM1X2NvbHVtbnMiO2E6Njp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjk6InRodW1ibmFpbCI7czo1OiJsYWJlbCI7czo5OiJUaHVtYm5haWwiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6NToibGFiZWwiO3M6NDoiTmFtZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6OToiY2l0eS5uYW1lIjtzOjU6ImxhYmVsIjtzOjQ6IkNpdHkiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEzOiJjYXRlZ29yeS5uYW1lIjtzOjU6ImxhYmVsIjtzOjg6IkNhdGVnb3J5IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJwcmljZSI7czo1OiJsYWJlbCI7czo1OiJQcmljZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjU7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319czo0MDoiMTY0NmVlZjU1NDhkNTIyMGUzNzA4OGM5MGI3MjlkZDRfY29sdW1ucyI7YTo4OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoiY29kZSI7czo1OiJsYWJlbCI7czo0OiJDb2RlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxODoiYm9hcmRpbmdIb3VzZS5uYW1lIjtzOjU6ImxhYmVsIjtzOjE0OiJCb2FyZGluZyBob3VzZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6OToicm9vbS5uYW1lIjtzOjU6ImxhYmVsIjtzOjQ6IlJvb20iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6NToibGFiZWwiO3M6NDoiTmFtZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTQ6InBheW1lbnRfbWV0aG9kIjtzOjU6ImxhYmVsIjtzOjE0OiJQYXltZW50IG1ldGhvZCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjU7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTQ6InBheW1lbnRfc3RhdHVzIjtzOjU6ImxhYmVsIjtzOjE0OiJQYXltZW50IHN0YXR1cyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjY7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTI6InRvdGFsX2Ftb3VudCI7czo1OiJsYWJlbCI7czoxMjoiVG90YWwgYW1vdW50IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNjoidHJhbnNhY3Rpb25fZGF0ZSI7czo1OiJsYWJlbCI7czoxNjoiVHJhbnNhY3Rpb24gZGF0ZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO319fXM6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1768981014);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `boarding_house_id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `boarding_house_id`, `photo`, `name`, `content`, `rating`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'testimonials/01KF8EZ2Z1XJET8YNJC84BH89Z.jpeg', 'Halimatus', 'Mantap', 5, NULL, '2026-01-18 03:48:38', '2026-01-18 03:48:38');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `boarding_house_id` bigint UNSIGNED NOT NULL,
  `room_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('down_payment','full_payment') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `duration` int NOT NULL,
  `total_amount` int DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `code`, `boarding_house_id`, `room_id`, `name`, `email`, `phone_number`, `payment_method`, `payment_status`, `start_date`, `duration`, `total_amount`, `transaction_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'TRX591840', 1, 1, 'Wahyu', 'wahyu@gmail.com', '098980', 'full_payment', 'success', '2026-01-18', 1, 2800000, '2026-01-17', NULL, '2026-01-17 00:22:00', '2026-01-17 00:22:22'),
(11, 'TRX713679', 1, 1, 'anjay', 'anjay@gmail.com', '09806860', 'full_payment', 'success', '2026-01-21', 1, 2800000, '2026-01-20', NULL, '2026-01-19 20:48:03', '2026-01-19 20:49:18'),
(12, 'TRX332815', 3, 3, 'wahyu', 'wahyu@gmail.com', '08696969', 'full_payment', 'success', '2026-01-22', 1, 7840000, '2026-01-21', NULL, '2026-01-20 23:31:03', '2026-01-20 23:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Ngekos', 'ngekos@gmail.com', NULL, '$2y$12$EAj7Ba7atJ4Vtj5ir7HRbOmHTfDmC.Nqk8dlzLWveHu1ZIED8JU4C', NULL, '2026-01-16 23:43:05', '2026-01-16 23:43:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boarding_houses`
--
ALTER TABLE `boarding_houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boarding_houses_city_id_foreign` (`city_id`),
  ADD KEY `boarding_houses_category_id_foreign` (`category_id`);

--
-- Indexes for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bonuses_boarding_house_id_foreign` (`boarding_house_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_boarding_house_id_foreign` (`boarding_house_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_images_room_id_foreign` (`room_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_boarding_house_id_foreign` (`boarding_house_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_boarding_house_id_foreign` (`boarding_house_id`),
  ADD KEY `transactions_room_id_foreign` (`room_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boarding_houses`
--
ALTER TABLE `boarding_houses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bonuses`
--
ALTER TABLE `bonuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boarding_houses`
--
ALTER TABLE `boarding_houses`
  ADD CONSTRAINT `boarding_houses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `boarding_houses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD CONSTRAINT `bonuses_boarding_house_id_foreign` FOREIGN KEY (`boarding_house_id`) REFERENCES `boarding_houses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_boarding_house_id_foreign` FOREIGN KEY (`boarding_house_id`) REFERENCES `boarding_houses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_boarding_house_id_foreign` FOREIGN KEY (`boarding_house_id`) REFERENCES `boarding_houses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_boarding_house_id_foreign` FOREIGN KEY (`boarding_house_id`) REFERENCES `boarding_houses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

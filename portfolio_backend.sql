-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2025 at 09:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_02_110824_create_personal_access_tokens_table', 1),
(5, '2025_04_09_051331_create_registers_table', 2),
(6, '2025_04_09_073503_create_one_table', 2),
(7, '2025_04_09_083605_create_registers_table', 3),
(8, '2025_04_15_061146_create_registers_two_table', 4),
(9, '2025_04_15_112333_add_is_checked_to_registers_two_table', 5),
(10, '2025_04_15_112410_add_is_checked_to_registers_two_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `one`
--

CREATE TABLE `one` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\RegisterTwoModel', 6, 'auth_token', '7b93619e104ec572512143ded7947f0c42ff43d4837b073e9dcb43b6f64486ac', '[\"*\"]', NULL, NULL, '2025-04-18 01:21:22', '2025-04-18 01:21:22'),
(2, 'App\\Models\\RegisterTwoModel', 6, 'auth_token', '9f023bf3f78038c3a6d6b063433bac4de010c591bec06083ad6c61705f1c521b', '[\"*\"]', NULL, NULL, '2025-04-18 01:21:48', '2025-04-18 01:21:48'),
(3, 'App\\Models\\RegisterTwoModel', 6, 'auth_token', 'b3fe4e45d70913406a108cc7381ac59aecaebc26b4abedcaec8c7a8a74755e7e', '[\"*\"]', NULL, NULL, '2025-04-18 01:30:30', '2025-04-18 01:30:30'),
(4, 'App\\Models\\RegisterTwoModel', 6, 'auth_token', 'dfa837d8adf4df5a3b096fa9a37dc38333560b20d174c8c71f2c5751d21c3ec5', '[\"*\"]', NULL, NULL, '2025-04-18 01:30:50', '2025-04-18 01:30:50'),
(5, 'App\\Models\\RegisterTwoModel', 6, 'auth_token', '8d9653a3bafb08f80331d491331dc6dc1264c7d139e98882ae1d93dec45b3a54', '[\"*\"]', NULL, NULL, '2025-04-18 01:31:28', '2025-04-18 01:31:28'),
(6, 'App\\Models\\RegisterTwoModel', 6, 'auth_token', '174fb005d2e302dcca0feeeeb92205cfdd5502506e1c599805e3bc5efd959526', '[\"*\"]', NULL, NULL, '2025-04-18 01:38:08', '2025-04-18 01:38:08'),
(7, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'f1956f72092305977683d36f697533a3d779fa0c3c95555334c18fea82bc368d', '[\"*\"]', NULL, NULL, '2025-04-18 01:39:02', '2025-04-18 01:39:02'),
(8, 'App\\Models\\RegisterTwoModel', 4, 'auth_token', '0e6f790b9bc1dc56804e1836ea87090ba661cdd0afbfdd62ccb3cce887dc0b5c', '[\"*\"]', NULL, NULL, '2025-04-18 01:39:36', '2025-04-18 01:39:36'),
(9, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '8bbb34cdbb439fd5c40b52e5321c7ee7c2946c1758fcc189662bacc5f33711e5', '[\"*\"]', NULL, NULL, '2025-04-21 01:14:22', '2025-04-21 01:14:22'),
(10, 'App\\Models\\RegisterTwoModel', 25, 'auth_token', '15dc98a7100dd89a6c03354938d5920b8bc70e4a6180bd42b4ec0f3bea143e60', '[\"*\"]', NULL, NULL, '2025-04-21 01:15:50', '2025-04-21 01:15:50'),
(11, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'cd5bf5e157a4c540c2a5496711a15de76456ec6dc13ce0e4a4335f9458187ce4', '[\"*\"]', NULL, NULL, '2025-04-21 04:21:47', '2025-04-21 04:21:47'),
(12, 'App\\Models\\RegisterTwoModel', 6, 'auth_token', 'f103e08f2427b1134228bbf0b5f87176c98e2f6d19e3f125614882b6d07de9ea', '[\"*\"]', NULL, NULL, '2025-04-21 04:25:04', '2025-04-21 04:25:04'),
(13, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'a11121f5b52fdd8a01371c210fe031996676bde01b85c3bc9a8950ef16d8315b', '[\"*\"]', NULL, NULL, '2025-04-21 04:48:15', '2025-04-21 04:48:15'),
(14, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'fd5a4c035e83cc83b1166f5d5719e03b28e2452e1a049ad1df9341653be40c69', '[\"*\"]', NULL, NULL, '2025-04-21 04:49:45', '2025-04-21 04:49:45'),
(15, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '2f35bb0e8bee6e8e7fb08f04932ce8a494e788bdfaca8168cc5a6a6181fcf194', '[\"*\"]', NULL, NULL, '2025-04-21 04:50:09', '2025-04-21 04:50:09'),
(16, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '5001148bdc61d181b2b5fe9bf0b91e2c69291ef33bb93b5efa9370545debff49', '[\"*\"]', NULL, NULL, '2025-04-22 00:41:06', '2025-04-22 00:41:06'),
(17, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '3576fd4bf593b9267c2a53256f56838ed13b76ee0edd6a1d4be5dd4660ff13bc', '[\"*\"]', NULL, NULL, '2025-04-22 00:41:17', '2025-04-22 00:41:17'),
(18, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'c886f9be0a88adfd48e0d78e1e0dd5ccf3ffdbab48a684f9bacd9b6f14078db2', '[\"*\"]', NULL, NULL, '2025-04-22 00:42:15', '2025-04-22 00:42:15'),
(19, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '64d9f6570a27a58557b1c0ff68579e67f794cb2aabeab7798fecf71f938701a1', '[\"*\"]', NULL, NULL, '2025-04-22 00:46:16', '2025-04-22 00:46:16'),
(20, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'a17c56ae5a57fe4f778cd7d0d92829dacc59a4a080e7ccf2f824a1f417a2bf68', '[\"*\"]', NULL, NULL, '2025-04-22 00:55:11', '2025-04-22 00:55:11'),
(21, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '69cd749d3c936118b4f617926afb49709c4f102a6db31ab48688cfffedcfc915', '[\"*\"]', NULL, NULL, '2025-04-22 01:18:50', '2025-04-22 01:18:50'),
(22, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '7c9383d15b5cd585103e6061db07ec078195474fdc973e94511ca9835ce6759b', '[\"*\"]', NULL, NULL, '2025-04-22 01:19:54', '2025-04-22 01:19:54'),
(23, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '36c06c87bd2d7f5535e0e9e6bba0b04700d0f5c3bf5bac534425e4018eae1de6', '[\"*\"]', NULL, NULL, '2025-04-22 02:02:07', '2025-04-22 02:02:07'),
(24, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'e08caf10badd193108a4e80bd419d3c61495eae3dd01c53e1a622fa2dc8a21d4', '[\"*\"]', NULL, NULL, '2025-04-22 03:25:31', '2025-04-22 03:25:31'),
(25, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '9d5bf0665fe4bd2d0db8658be763ff6f44c3383a7e136135f9cb32d698224307', '[\"*\"]', NULL, NULL, '2025-04-22 04:32:01', '2025-04-22 04:32:01'),
(26, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'b16147986fc47e0cd4cb0c0025ae953cf3093033518482c827cdb3d22bd7a441', '[\"*\"]', NULL, NULL, '2025-04-22 04:32:29', '2025-04-22 04:32:29'),
(27, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'bb3699d68d93424ab12cdda7123a8edf18318b770f25000032d84f0ca07ce798', '[\"*\"]', NULL, NULL, '2025-04-22 05:12:56', '2025-04-22 05:12:56'),
(28, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '6e74ce7c371d4c4a8f4b51621f9af3dee22b0f7bcade70888c40c924ddcd53cc', '[\"*\"]', NULL, NULL, '2025-04-22 05:13:06', '2025-04-22 05:13:06'),
(29, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'fa521a1f2d8c307614d20803432d80955156b0af1c8d897fa330e17c8b4b4ef4', '[\"*\"]', NULL, NULL, '2025-04-22 05:13:21', '2025-04-22 05:13:21'),
(30, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '99461c82535dc2d0f3a4780eaea75d965c57a8ca6e0de9bc908c2849d50b1e74', '[\"*\"]', NULL, NULL, '2025-04-22 05:16:14', '2025-04-22 05:16:14'),
(31, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '0ece1eb2510d5981f3c2e6d1de3098924bf662297f87b770e2c2f629b2c77edb', '[\"*\"]', NULL, NULL, '2025-04-22 05:18:13', '2025-04-22 05:18:13'),
(32, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '88a789d131b9c8dbff60074037ccbaf736abd9f064b0363029a0fbbcf6a9ea9a', '[\"*\"]', NULL, NULL, '2025-04-22 05:18:38', '2025-04-22 05:18:38'),
(33, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '8864277de389ea8df2b2ddac8d45b924d126f40d2d16ea151692f16a97dd8714', '[\"*\"]', NULL, NULL, '2025-04-22 05:19:46', '2025-04-22 05:19:46'),
(34, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '2a29d23d226f06858ed9dc430287d97e7794940dc8dd703f212b737b67aebbc9', '[\"*\"]', NULL, NULL, '2025-04-22 05:19:58', '2025-04-22 05:19:58'),
(35, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'cf4c3d120af967e103f3ff514e35503713768a5ccda337df4f7d30e26da461dc', '[\"*\"]', NULL, NULL, '2025-04-22 05:20:14', '2025-04-22 05:20:14'),
(36, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '7b7a62b38313bd3bd4d68d549284c385eb685a405cba8ef870152423d0d19906', '[\"*\"]', NULL, NULL, '2025-04-22 05:20:39', '2025-04-22 05:20:39'),
(37, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '353d33ebbefd64fc4a1352725694d8c2d540495538e1057bbc85c9a02568466c', '[\"*\"]', NULL, NULL, '2025-04-22 06:07:27', '2025-04-22 06:07:27'),
(38, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '743118e472586b7caf1d6340e6185c826ee3616d85ff84acf65710a7cdecc0e3', '[\"*\"]', NULL, NULL, '2025-04-22 06:24:50', '2025-04-22 06:24:50'),
(39, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '393671a767b2698035b6d5c832ac868a446a46a5d019b64cc403af0f5ead9abf', '[\"*\"]', NULL, NULL, '2025-04-22 06:41:30', '2025-04-22 06:41:30'),
(40, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'f7d8ddbc6c861eefeb9151cf56a876175f0ff9c72776bf018c5f77ecdc2ebe06', '[\"*\"]', NULL, NULL, '2025-04-22 07:16:04', '2025-04-22 07:16:04'),
(41, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'ebc3af0a6a234cacf7b406ba427cdb9139b7823c86cc43451cb6f2198706a0e0', '[\"*\"]', NULL, NULL, '2025-04-22 07:23:11', '2025-04-22 07:23:11'),
(42, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '63786d7cf8848a79dd7db16eaac7e086ff431ac3543249a097998b41f2640878', '[\"*\"]', NULL, NULL, '2025-04-22 07:33:40', '2025-04-22 07:33:40'),
(43, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '61a0eab4347b74df5f42233ec1866204cf211f1966bde4a41794e8b7212d8852', '[\"*\"]', NULL, NULL, '2025-04-22 23:52:47', '2025-04-22 23:52:47'),
(44, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'a9738671e8e3d62a68bf14a9ef8503d57402bfa5e7fce68b6fd5d762d13fccc9', '[\"*\"]', NULL, NULL, '2025-04-23 01:34:22', '2025-04-23 01:34:22'),
(45, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '15b222aa5df1c642dbdbba46a293ffab0260f9059ab5c3e1073a2770b45f6454', '[\"*\"]', NULL, NULL, '2025-04-23 01:44:30', '2025-04-23 01:44:30'),
(46, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '9d0ec63dfcdc3e0bf739def152b7474672ecf01216a4f7dbe1a95ea1abbce7a3', '[\"*\"]', NULL, NULL, '2025-04-23 01:49:30', '2025-04-23 01:49:30'),
(47, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'a2ae0f81cbb07dded823f7427e3edd5f02be6fab80b941cfe358380838dc3761', '[\"*\"]', NULL, NULL, '2025-04-23 01:49:50', '2025-04-23 01:49:50'),
(48, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '5d2e54cd4098cc0d2c45756890bb87aec574fb1b6c3dedee0290b1eb184ebb77', '[\"*\"]', NULL, NULL, '2025-04-23 01:50:20', '2025-04-23 01:50:20'),
(49, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'f5747c4aef645676f28d0545bd09168d2232f459863c2ac3e0da6e17ff15b9eb', '[\"*\"]', NULL, NULL, '2025-04-23 01:54:12', '2025-04-23 01:54:12'),
(50, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '63a2dfbc826346d27e1ad46af1493d744bd3695dbf6d17c603e31e3f39b30448', '[\"*\"]', NULL, NULL, '2025-04-23 03:27:55', '2025-04-23 03:27:55'),
(51, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'a20b63d083bb0fb864164a8909cfd30094984499fb1eb717400c2ac0a062303b', '[\"*\"]', NULL, NULL, '2025-04-23 03:31:47', '2025-04-23 03:31:47'),
(52, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '0a97e975cdda3e50001f621e4137937b7af8214487e0b4545f08fec022cc90ac', '[\"*\"]', NULL, NULL, '2025-04-23 03:35:37', '2025-04-23 03:35:37'),
(53, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '7aaaf991e9662839c578238d279334ba0a7b59865f78dde8c3721a5e6e20a82c', '[\"*\"]', NULL, NULL, '2025-04-23 03:53:46', '2025-04-23 03:53:46'),
(54, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'f2951953c9a3e9fa6effff98fd5d978c530c4ce7f5cf8d00a63d78e861f233e5', '[\"*\"]', NULL, NULL, '2025-04-23 04:07:25', '2025-04-23 04:07:25'),
(55, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '02367382f7ffc76c4e43857eb8562f7e2b191c2744f0c8a62edf3e460053be24', '[\"*\"]', NULL, NULL, '2025-04-23 04:07:41', '2025-04-23 04:07:41'),
(56, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '419ddc6799e4748eb9069747d54a276c27ca8046df6e754da04cc581278b16d0', '[\"*\"]', NULL, NULL, '2025-04-23 04:09:07', '2025-04-23 04:09:07'),
(57, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '6455ef80cd5c19671f5f2d582df64d1d87830ed944a93793d985755e65ed6d23', '[\"*\"]', NULL, NULL, '2025-04-23 04:56:50', '2025-04-23 04:56:50'),
(58, 'App\\Models\\RegisterTwoModel', 6, 'auth_token', '3f10d5c93c1600b768a36f9582b8db9ca3acd4cc703e7090c6b4bbe4288ddd39', '[\"*\"]', NULL, NULL, '2025-04-23 05:01:02', '2025-04-23 05:01:02'),
(59, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '56431055838dc1c52ac2e8cbf6102e31356b93a8e6950825ebbbb861d7f84b31', '[\"*\"]', NULL, NULL, '2025-04-25 00:21:39', '2025-04-25 00:21:39'),
(60, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', 'd10dcfc1a26bbfc8f1f1bbce2d453f6302266e72c93783a884aaed8ee0b268ab', '[\"*\"]', NULL, NULL, '2025-04-25 00:32:05', '2025-04-25 00:32:05'),
(61, 'App\\Models\\RegisterTwoModel', 27, 'auth_token', '2dc48f099f0e8413fb59750c4fbca278584a9f9f2677d6496cecddce176c281b', '[\"*\"]', NULL, NULL, '2025-04-25 04:56:00', '2025-04-25 04:56:00'),
(62, 'App\\Models\\RegisterTwoModel', 16, 'auth_token', '0b28e71e16d14edffc34caf4056d7e68ae96e4daf9e652e6e94e2417d75728e2', '[\"*\"]', NULL, NULL, '2025-04-30 01:08:02', '2025-04-30 01:08:02'),
(63, 'App\\Models\\RegisterTwoModel', 28, 'auth_token', 'ae766791bec97b2d3e6745d5277bbacdef9620258c4b169587375fb346a3ab4a', '[\"*\"]', NULL, NULL, '2025-04-30 01:09:51', '2025-04-30 01:09:51'),
(64, 'App\\Models\\RegisterTwoModel', 28, 'auth_token', '1a7b087268ea698f85b119dfb9e93314733ae4147bf878e37a2d7dea4ed720f9', '[\"*\"]', NULL, NULL, '2025-04-30 01:10:46', '2025-04-30 01:10:46'),
(65, 'App\\Models\\RegisterTwoModel', 29, 'auth_token', 'b2f1f388afe4bf02e04fbe2a9ea41310714ba71a0782b3e1a34397f9aa1e38f3', '[\"*\"]', NULL, NULL, '2025-04-30 01:12:43', '2025-04-30 01:12:43'),
(66, 'App\\Models\\RegisterTwoModel', 29, 'auth_token', 'a1ab11cffe2e45adddb50c74f205a186e40a2a7548dfa18ec48d4c6dbf6be467', '[\"*\"]', NULL, NULL, '2025-04-30 01:30:22', '2025-04-30 01:30:22'),
(67, 'App\\Models\\RegisterTwoModel', 29, 'auth_token', '25771b8be1119e3d15a80c4a8f889c98dcd35c7596de766922955e62e7d20534', '[\"*\"]', NULL, NULL, '2025-04-30 01:32:18', '2025-04-30 01:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `name`, `email`, `address`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Shiv', 'shiv@gmail.com', 'Shiv@123', '', '2025-04-09 03:14:45', '2025-04-09 03:14:45'),
(2, 'Shiva', 'shiva@gmail.com', 'Shiva@123', '', '2025-04-09 03:22:26', '2025-04-09 03:22:26'),
(3, 'Shivaa', 'shivaa@gmail.com', 'Shivaa@123', '', '2025-04-09 06:00:32', '2025-04-09 06:00:32'),
(4, 'qwerty', 'sdfghj', 'asdfghj', '', '2025-04-10 07:10:10', '2025-04-10 07:10:10'),
(5, 'sdefrgth', 'sdfghj', 'asdefrgthyju', '', '2025-04-10 07:12:12', '2025-04-10 07:12:12'),
(6, 'Hello', 'Hello@test.com', 'I. O. C. PRAGATI NAGAR', '', '2025-04-10 23:42:56', '2025-04-10 23:42:56'),
(7, 'asdfg', 'sdfg', 'sdfg', '$2y$12$lCwwTAwqOVR294X5SW5u/O4A6sDtzcezdf5fcplYL07/7J4klOxCW', '2025-04-11 00:40:42', '2025-04-11 00:40:42'),
(8, 'sdfgh', 'sdfghj', 'asdfgh', '$2y$12$8Rky.a6NiI8wq8iQykjW6us4HvWdv17KRvSUAbj/O923uv9EK8ABK', '2025-04-11 00:55:30', '2025-04-11 00:55:30'),
(9, 'asdfgh', 'zsxdcfghn', 'zsdfvgbnm', '$2y$12$mgjLVzPNKlymgXLyejzg.e.FawuoD7K0JvpLAf5PvVvAZPK53GaFe', '2025-04-15 00:26:32', '2025-04-15 00:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `registers_two`
--

CREATE TABLE `registers_two` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isChecked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registers_two`
--

INSERT INTO `registers_two` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `isChecked`) VALUES
(1, 'aswdefrg', 'sdfg@gmail.com', '$2y$12$E5NbAwPEQ/kCBMkqQK4vH.TSPBKUXv6EjdKWTGqb0rKUx.yf9.IVG', '2025-04-15 06:02:03', '2025-04-15 06:02:03', 1),
(3, 'sdfrgthy', 'asd@gmail.com', '$2y$12$9r7qP9auWSvsmLdCZ6lDY.8HAMdUnf/J1ZV.k4GT/zcm9YTplBgnm', '2025-04-15 06:27:50', '2025-04-15 06:27:50', 1),
(4, 'shu', 'shu@gmail.com', '$2y$12$OUZioXxWMogEQFmpDZDSreijwpx4dLis0x94d4WCLcqqdKupKqn3K', '2025-04-15 07:22:52', '2025-04-15 07:22:52', 1),
(5, 'asdfg', 'asdfg@gmail.com', '$2y$12$hZdMqmHZbH.28qYjWcsf8eFqxO5vjZP.eFkJYLbBn0DWVNAAjviUO', '2025-04-15 07:26:33', '2025-04-15 07:26:33', 1),
(6, 'Test', 'test@gmail.com', '$2y$12$6PVZDVfTEKfnNOhCA01hDO98asdWbtgHHW2RkZFi5ngXjDHNrhnEK', '2025-04-16 00:52:16', '2025-04-16 00:52:16', 1),
(8, 'asdfgh', 'aaaa@gmail.com', '$2y$12$ONNL41VjmLCSOsfsmQqRGuIICbXr8A7zZe9hjR3vDbEFsDXSV4gcq', '2025-04-16 01:40:28', '2025-04-16 01:40:28', 1),
(9, 'asdfg', 'asdfg@gmail.com', '$2y$12$DlS3Gh7mafM.WulMyxkAbOWe2QizDclEA.ourQn1re2Wasr2T9IVu', '2025-04-16 01:41:11', '2025-04-16 01:41:11', 1),
(10, 'zxc', 'aZSD@gmail.com', '$2y$12$xlMRIDmy.Trt7qulnIHCD.3SvjJ7zSlhETMQo9KuJFk9OzEQVEwN2', '2025-04-16 01:42:12', '2025-04-16 01:42:12', 1),
(11, 'Ad deserunt possimus', 'miku@mailinator.com', '$2y$12$Vj6HzF5ettDqt1K7tbKzv.QwNz82TGhBqu9Ost1nsHuySmTdmPFma', '2025-04-16 01:44:28', '2025-04-16 01:44:28', 1),
(12, 'aswderftgy', 'asdfgh', '$2y$12$IFDUgOrHMQpjEbdDRG39SuKgYJme7iNp5YtTqBsy1ZJUzBQqin9aK', '2025-04-16 03:09:48', '2025-04-16 03:09:48', 1),
(14, 'test', 'test@gmail.com', '$2y$12$S7Mkzu/Sceu8w/lfIHNKte82WYCryfZ10rJwHXOwd6yxRRd7N9yVu', '2025-04-16 06:19:14', '2025-04-16 06:19:14', 1),
(15, 'asdf', 'testt@gmail.com', '$2y$12$oMbbYCPWJjZA4uDty/XLWeQpafnI9jXnTCoPY3g4rdn8vAnJvCw26', '2025-04-16 06:36:25', '2025-04-16 06:36:25', 1),
(16, 'Shubham Rani', 'ranishubham348@gmail.com', '$2y$12$gWJSTSubVuXQHzNXVZ4LdOJnPwlWZDDCdiCYylH/aGloDrpXYRwDa', '2025-04-17 00:50:25', '2025-04-17 00:50:25', 1),
(17, 'ranishubham348@gmail.com', 'ranishubham348@gmail.com', '$2y$12$i43b7C7dLzNvQLL92uu9BuuMt1zPyDgxBV2q0nJQi1/GBxnfCjUUm', '2025-04-17 00:58:35', '2025-04-17 00:58:35', 1),
(18, 'sdefrtgyhj', 'sdfghj', '$2y$12$Xm2a5mWqZNFqRS5jEtyomujgySbVXrX2BySrCptZ.LiL26rZA/GVu', '2025-04-17 04:27:26', '2025-04-17 04:27:26', 1),
(19, 'asdfg', 'sdfgh', '$2y$12$Mz9A50hwLYmo733g2KkRV.rNDs3DYiHDaoUU/BkUW5XRXKJ5oYZGS', '2025-04-18 00:47:52', '2025-04-18 00:47:52', 1),
(20, 'qwsed', 'asdf', '$2y$12$sJp/teH5pbEzMpr5x7W8p.nRy4YmZ2f988/WB3Zq.yjW7NLiOQHgy', '2025-04-18 00:49:16', '2025-04-18 00:49:16', 1),
(21, 'qwsed', 'asdf', '$2y$12$bDwXV2k6.uQhaIbXhZVJg.iAOQb8weKH694W5S3nAtGvOmlzokjZu', '2025-04-18 00:49:39', '2025-04-18 00:49:39', 1),
(22, 'qwsed', 'asdf', '$2y$12$3ZHLbd8jum0yrCXQF7MIKOLzI3om0atpluX7KkC8Qo8DUOpOjX5ra', '2025-04-18 00:51:25', '2025-04-18 00:51:25', 1),
(23, 'aqsdfg', 'asdfg', '$2y$12$/S1iQe5tVDAopfOTbkPjIe/9KZVUK09pnzi/4HV4ScVllkw5JfRyG', '2025-04-18 00:52:42', '2025-04-18 00:52:42', 1),
(24, 'asdfgh', 'asdfg', '$2y$12$pmy06gQr900cGvdnqN3RTOcj1SxuMY80Z2ctVI5eDOCif/WyhQAwG', '2025-04-21 01:13:08', '2025-04-21 01:13:08', 1),
(25, 'asdfgh', 'asdfghj', '$2y$12$jisaEeYloWY568drqB2WM.tvPTUc14rc1eSeY1.3wmjBhPyLWEHlm', '2025-04-21 01:15:21', '2025-04-21 01:15:21', 1),
(26, 'sdfghj', 'sdfg@gmail.com', '$2y$12$fUYROgYDqMZA2yv/mrYbA.HNCuM7K/y9.rLmMVnBzZGcd5Sop4f1K', '2025-04-22 06:40:31', '2025-04-22 06:40:31', 1),
(27, 'sdfghjk', 'asdfgh@gmail.com', '$2y$12$zcdCl2N.BkdCM1hRdLbya.1nRD.yk1lgASMdIGVtyZkSjE4F1iJPi', '2025-04-25 04:55:35', '2025-04-25 04:55:35', 1),
(28, 'werty', 'azsdfgh@gmail.com', '$2y$12$G43rpvY5VbGmHUXwGpvDHOXmPinFcmIUgaPRrvSqNgfcu41lCtr92', '2025-04-30 01:09:02', '2025-04-30 01:09:02', 1),
(29, 'qwertyu', 'aaaaa@gmail.com', '$2y$12$HFcvZ8OSY.SFn3zDrq6Sx.Jp5CNKzq0wAXsNs5m1ztsD0EaMHq4Z.', '2025-04-30 01:11:24', '2025-04-30 01:11:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2PoehDByyp3yJ7xJcZplCixyk5hd7PN3v3FQ4NDv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWYzTXRqZlpJdGJER21Cbk9jdFhvdnlZUjBvWUhsYXRKSWd3OFV4eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745392772),
('3Porn8C7NYM3TjfEKYUjC2pXyMKFQI9jLMlFPAJw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1NiMklEaHZvVXZiZGx2NUIxTVp3ek5KUzBsNkxMSDZLTFZMdjVRcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745398652),
('a8xwhhbJSOz3SNtOToPus7Stk4LK0zf7yQDeON1y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWU9xdkQ2UXE0Vkt1NDBDVUhsWk0zbG9EcURMd210ZTFQMDN2dWJHSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745392757),
('BhmRmlA07ZMKaAH18tYkUH8fFHVdLelbgoKaV7wh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTI1djc1a3FqYzBZSkdpSGVuOW44Qk04UEp3TmtoSVJXY2VBS0U0aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745400449),
('CwjKZ65o8YziCZN5Sx8AArnx3P2IOD2fSUKSOuk3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3BVcnhsRjJ1cWpHSmVsTmloeWx4NFNFNUViaEJlamZ3RGNhOUdUYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745560281),
('dxRQA1vOOh4EvB36oKHKzsN7cQgSF3QbJKSC4W1v', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmVUUEF2ck1vbzkwZ3pXcENyeWk3MFQ1Rmk4Rm1LQ1FjaWRpdUNLdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745398899),
('eIdYJq2d8PcbdS0eaIc27820y6G7u30nLnc5Fyne', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3R3N3RyRWlwQmZUNVplbGEzMmJVYjR0TG5JNmlKWkd5UGhFbVZDZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745392456),
('h4eofUOp7NEtCSyfodNOLurQ5Lb70ZQzBKlWNbFM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEZQMTNKZHdsTk4zTGVkQWFvSGxCbFRPbGZUV0V0cWNleVVVN2pBOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745404000),
('hnM8T1dUjRQOASLaTGmfksnGjHe2QmG1y9KI9QHs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3JLREZuckZHNnFqUG54UmNrNDdFVWhDdThSTWlYTDFsS3RSWEl2TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1745400412),
('Krgro9u0kKmqvltiUmoJdTYQ5wRMrl4xehViTSqt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTBhVDQwdlJKb1BVQXZOOEs0UlNVR0ZlV252Qk9obWg2TkpYUU12RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745560948),
('N0DrIWEsZl7tAoPKyg8rGACLqRJFd3kbiYMMlz95', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVW81Y2tnMklsbGwxaFBkMlpzS01iWjM3N3RRTHIwMkJ2OXpnVkQ1bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745393041),
('nWOFctqbAmAH4SphWhIxL7R9I58f65W8y8HzVIWC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlJwMjdwR2F4YVVKM3puaFNnMng2OFV6d2hGN3VMZHhscW44Y3FhVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745401017),
('Ogkz3sS0vep2NYf9gjDmB6ghlk3Uat5LsnEUa7hS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTUwMkV5NGhFRUgxTEp2bU5ZWlJtSFFadkpkOTdvdUs4RHNMdnVVSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745577815),
('qJHsTsshhCO9WTuY7HZrDGkbu0YAxyfyaVa4zLj4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTlMSThBOU43SlQwdjA3S1phSGdFenZMcFBvOTdoVVlGU1NTNmlkWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745400421),
('VVYO5yIKZJvs4TapPkZ6NMCLToCefLGoI1MACLNA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGdFZjEzZ3pBUlI3cGtZVHhLWjlNRU1WcVFTT25JWjdFOVBLQ3BvNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745995048);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `one`
--
ALTER TABLE `one`
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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registers_two`
--
ALTER TABLE `registers_two`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `one`
--
ALTER TABLE `one`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registers_two`
--
ALTER TABLE `registers_two`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

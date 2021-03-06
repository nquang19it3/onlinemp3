-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 10:50 AM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicplayer_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_storage_attachments`
--

CREATE TABLE `active_storage_attachments` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint NOT NULL,
  `blob_id` bigint NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `active_storage_attachments`
--

INSERT INTO `active_storage_attachments` (`id`, `name`, `record_type`, `record_id`, `blob_id`, `created_at`) VALUES
(1, 'image', 'Artist', 3, 1, '2021-05-15 01:14:48'),
(2, 'image', 'Artist', 4, 2, '2021-05-15 06:28:08'),
(4, 'image', 'Album', 2, 4, '2021-05-16 07:59:59'),
(5, 'image', 'Album', 3, 5, '2021-05-16 09:40:13'),
(6, 'image', 'Artist', 5, 6, '2021-05-17 06:08:44'),
(8, 'image', 'Album', 5, 8, '2021-05-17 06:44:18'),
(9, 'songs', 'Album', 5, 9, '2021-05-17 06:44:18'),
(10, 'songs', 'Album', 5, 10, '2021-05-17 06:44:18'),
(11, 'songs', 'Album', 5, 11, '2021-05-17 06:44:18'),
(22, 'image', 'Genre', 1, 22, '2021-05-18 00:58:08'),
(28, 'song', 'Song', 4, 28, '2021-05-18 01:08:40'),
(29, 'image', 'Song', 5, 29, '2021-05-18 01:09:20'),
(30, 'song', 'Song', 5, 30, '2021-05-18 01:09:20'),
(31, 'image', 'Song', 6, 31, '2021-05-18 01:09:53'),
(32, 'song', 'Song', 6, 32, '2021-05-18 01:09:53'),
(33, 'image', 'Genre', 2, 33, '2021-05-18 01:11:12'),
(34, 'image', 'ActiveStorage::VariantRecord', 1, 34, '2021-05-18 02:02:39'),
(35, 'image', 'ActiveStorage::VariantRecord', 2, 35, '2021-05-18 02:02:39'),
(36, 'image', 'ActiveStorage::VariantRecord', 3, 36, '2021-05-18 02:03:33'),
(37, 'image', 'ActiveStorage::VariantRecord', 4, 37, '2021-05-18 02:03:33'),
(38, 'image', 'ActiveStorage::VariantRecord', 5, 38, '2021-05-18 02:07:22'),
(39, 'image', 'ActiveStorage::VariantRecord', 6, 39, '2021-05-18 02:07:22'),
(40, 'image', 'ActiveStorage::VariantRecord', 7, 40, '2021-05-18 02:09:51'),
(41, 'image', 'ActiveStorage::VariantRecord', 8, 41, '2021-05-18 02:09:51'),
(42, 'image', 'ActiveStorage::VariantRecord', 9, 42, '2021-05-18 02:09:59'),
(43, 'image', 'ActiveStorage::VariantRecord', 10, 43, '2021-05-18 02:09:59'),
(44, 'image', 'ActiveStorage::VariantRecord', 11, 44, '2021-05-18 02:10:32'),
(45, 'image', 'ActiveStorage::VariantRecord', 12, 45, '2021-05-18 02:10:32'),
(46, 'image', 'ActiveStorage::VariantRecord', 13, 46, '2021-05-18 02:13:07'),
(47, 'image', 'ActiveStorage::VariantRecord', 14, 47, '2021-05-18 02:13:07'),
(48, 'image', 'ActiveStorage::VariantRecord', 15, 48, '2021-05-18 02:18:58'),
(49, 'image', 'ActiveStorage::VariantRecord', 16, 49, '2021-05-18 02:18:58'),
(50, 'image', 'Genre', 3, 50, '2021-05-18 02:24:37'),
(51, 'image', 'Genre', 4, 51, '2021-05-18 02:24:54'),
(52, 'image', 'ActiveStorage::VariantRecord', 17, 52, '2021-05-18 02:25:01'),
(53, 'image', 'ActiveStorage::VariantRecord', 18, 53, '2021-05-18 02:25:01'),
(54, 'image', 'Artist', 6, 54, '2021-05-18 05:38:56'),
(55, 'image', 'Album', 6, 55, '2021-05-18 05:41:40'),
(56, 'image', 'Song', 7, 56, '2021-05-18 05:42:58'),
(57, 'song', 'Song', 7, 57, '2021-05-18 05:42:58'),
(58, 'image', 'Album', 7, 58, '2021-05-18 14:10:38'),
(64, 'song', 'Song', 2, 64, '2021-05-19 09:17:44'),
(66, 'song', 'Song', 3, 66, '2021-05-19 09:25:42'),
(70, 'image', 'Song', 2, 70, '2021-05-20 11:08:57'),
(71, 'image', 'ActiveStorage::VariantRecord', 22, 71, '2021-05-20 11:09:01'),
(72, 'image', 'Song', 3, 72, '2021-05-20 11:10:47'),
(73, 'image', 'Song', 4, 73, '2021-05-20 11:11:02'),
(74, 'image', 'ActiveStorage::VariantRecord', 23, 74, '2021-05-20 11:11:05'),
(75, 'image', 'ActiveStorage::VariantRecord', 24, 75, '2021-05-20 11:11:06'),
(76, 'image', 'ActiveStorage::VariantRecord', 25, 76, '2021-05-20 11:11:54'),
(77, 'image', 'ActiveStorage::VariantRecord', 26, 77, '2021-05-20 11:11:54'),
(78, 'image', 'ActiveStorage::VariantRecord', 27, 78, '2021-05-20 11:11:54'),
(79, 'image', 'Artist', 7, 79, '2021-05-21 06:08:27'),
(80, 'image', 'Artist', 8, 80, '2021-05-21 06:13:13'),
(81, 'image', 'Partner', 1, 81, '2021-05-21 06:35:17'),
(82, 'image', 'Partner', 2, 82, '2021-05-21 06:35:37'),
(83, 'image', 'Partner', 3, 83, '2021-05-21 06:35:56'),
(84, 'image', 'Partner', 4, 84, '2021-05-21 06:42:05'),
(85, 'image', 'Partner', 5, 85, '2021-05-21 06:42:27'),
(86, 'image', 'Partner', 6, 86, '2021-05-21 06:42:50'),
(87, 'image', 'Partner', 7, 87, '2021-05-21 06:43:10'),
(88, 'image', 'Partner', 8, 88, '2021-05-21 06:44:41'),
(89, 'image', 'Artist', 9, 89, '2021-05-21 23:47:00'),
(90, 'image', 'Artist', 10, 90, '2021-05-22 00:37:45'),
(91, 'image', 'Song', 8, 91, '2021-05-22 00:51:47'),
(92, 'song', 'Song', 8, 92, '2021-05-22 00:51:47'),
(93, 'image', 'ActiveStorage::VariantRecord', 28, 93, '2021-05-22 00:51:50'),
(94, 'image', 'Song', 9, 94, '2021-05-22 00:52:45'),
(95, 'song', 'Song', 9, 95, '2021-05-22 00:52:45'),
(96, 'image', 'ActiveStorage::VariantRecord', 29, 96, '2021-05-22 00:52:48'),
(97, 'image', 'Artist', 11, 97, '2021-05-24 04:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `active_storage_blobs`
--

CREATE TABLE `active_storage_blobs` (
  `id` bigint NOT NULL,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `service_name` varchar(255) NOT NULL,
  `byte_size` bigint NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `active_storage_blobs`
--

INSERT INTO `active_storage_blobs` (`id`, `key`, `filename`, `content_type`, `metadata`, `service_name`, `byte_size`, `checksum`, `created_at`) VALUES
(1, 'aelbt6gcv6k7spt4gjv9lrkffdi4', 'mtp.png', 'image/png', '{\"identified\":true,\"analyzed\":true}', 'local', 371969, 'ik2uRVrrFWb9AaHGyBowmA==', '2021-05-15 01:14:48'),
(2, 'ycwmemguy9ec0suu76zqcz32sdik', 'hienho.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 180283, 'YX+xwN8DBbwhopbAAicq+A==', '2021-05-15 06:28:08'),
(4, 'apizt7hb4e0n57d9afnhv0xu7g3g', 'skytour.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 70785, 'vM7/6+vtSMtkBjMfN7W1hg==', '2021-05-16 07:59:59'),
(5, 'hztsmhp4ai77h58jc9jucbxh8hk6', 'chungta.png', 'image/png', '{\"identified\":true,\"analyzed\":true}', 'local', 51970, 'ESPUZ7YqRCJC3Xn8J0FmKg==', '2021-05-16 09:40:13'),
(6, 'hmr3ao9z9uerld2h9ntrfrq12pzd', 'soobin.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 16492, 'DMTMzvq9fJohrJrqSj5BKA==', '2021-05-17 06:08:44'),
(8, 'w8yehs37nnx38glcvlmnuu93vgdo', 'theplayah.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 39067, 'E1huAPhW2YVc7bursAAr1A==', '2021-05-17 06:44:18'),
(9, 'i75cg51u2x9tqii34b1iew4ch2eq', 'blackjacksoobin.mp3', 'audio/mpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 8586285, '0UENOl/C7emaImU57BhzTQ==', '2021-05-17 06:44:18'),
(10, 'ifd6j3yg2gdze0yn5m3lp4tcbvde', 'thangnamsoobin.mp3', 'audio/mpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 9017325, 'pkG3pklb3uMUBhDJYAdxDQ==', '2021-05-17 06:44:18'),
(11, 'c7633v4mjtqvz6v5ev6p93okdua3', 'trochoisoobin.mp3', 'audio/mpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 8322285, 'raV4RLj9MPWdZzn4iZqqMg==', '2021-05-17 06:44:18'),
(22, 'odw3g3hsrlojyl3mq8y10lvveyfy', 'genre_vietnam.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 117955, 'NI+gx/QQNdqg9FDev7DcwA==', '2021-05-18 00:58:08'),
(28, 'os3b8npqrubwk0ggzc1hd3yvhlse', 'thangnamsoobin.mp3', 'audio/mpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 9017325, 'pkG3pklb3uMUBhDJYAdxDQ==', '2021-05-18 01:08:40'),
(29, 'om3gkp2wx9eg5ygc4zt62lhgeoje', 'skytourintro.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 32504, 'B+pdoZ/v02JL6bHXXEeFYQ==', '2021-05-18 01:09:20'),
(30, 'jgb3i10bg872y7v617zvgr9rib3y', 'SkyTourIntro.mp3', 'audio/mpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 2400815, 'U31tV+WoGhlF7Zr/K0w41w==', '2021-05-18 01:09:20'),
(31, '1t6hgja7l7vp2kindrw3imef17d8', 'skytourchayngaydi.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 61870, 'Iqwg/dgcwYrKeRO3OekUfg==', '2021-05-18 01:09:53'),
(32, 'jinfpi9p2jqofdy1oaquvr3hekla', 'ChayNgayDiSkyTour2019.mp3', 'audio/mpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 4967965, 'pycEMXZAALR11V0o+GPKWg==', '2021-05-18 01:09:53'),
(33, 'g5z76dupedh6v86quezccip9jvxw', 'genre_us.jpg', 'image/jpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 58328, 'HJ1p0oQ/wQfXHIh1Tw9mbw==', '2021-05-18 01:11:12'),
(34, 'euh9tinkkcy4wp5qkf400eefuz5p', 'genre_us.jpg', 'image/jpeg', '{\"identified\":true,\"width\":300,\"height\":87,\"analyzed\":true}', 'local', 13389, '+MZG+v/vFxu7yp6PTp2eJg==', '2021-05-18 02:02:39'),
(35, '3wnkw32e29b3r1ut8w5581fxi2ga', 'genre_vietnam.jpg', 'image/jpeg', '{\"identified\":true,\"width\":300,\"height\":87,\"analyzed\":true}', 'local', 19881, 'x5CFsJ1LfCi3qC1d5HW8cg==', '2021-05-18 02:02:39'),
(36, '7y7a9pz6lugyc82hhoxnlwmacouw', 'genre_vietnam.jpg', 'image/jpeg', '{\"identified\":true,\"width\":180,\"height\":52,\"analyzed\":true}', 'local', 8816, '431ju6rZyK4B6l4RYi+gAg==', '2021-05-18 02:03:33'),
(37, '6f22lsebvia783qubk5jqn5jrug7', 'genre_us.jpg', 'image/jpeg', '{\"identified\":true,\"width\":180,\"height\":52,\"analyzed\":true}', 'local', 6553, 'sLhDOsjSIZbJdx4aF3UBzg==', '2021-05-18 02:03:33'),
(38, 'ng18qvndtutbu2kmgbuv2an0ybz4', 'genre_us.jpg', 'image/jpeg', '{\"identified\":true,\"width\":300,\"height\":300,\"analyzed\":true}', 'local', 30117, 'RKP9amH5ip8giHVoNP+MLQ==', '2021-05-18 02:07:22'),
(39, 'e7dvx5jzogqvzzz9hgsjrcltkkci', 'genre_vietnam.jpg', 'image/jpeg', '{\"identified\":true,\"width\":300,\"height\":300,\"analyzed\":true}', 'local', 50454, 'OLeFZdqduP2MzqUXhOULng==', '2021-05-18 02:07:22'),
(40, 'ck1wl8kl6k96zyzcyz4cs2pp1g54', 'genre_vietnam.jpg', 'image/jpeg', '{\"identified\":true,\"width\":200,\"height\":180,\"analyzed\":true}', 'local', 24437, 'uGgbwW/zbpDc1jsI7ZZ54A==', '2021-05-18 02:09:51'),
(41, 'hu7diy5d2tu0rgogellci8j0wijb', 'genre_us.jpg', 'image/jpeg', '{\"identified\":true,\"width\":200,\"height\":180,\"analyzed\":true}', 'local', 15648, '+zPA/znuLXqB2CAbUHqMEA==', '2021-05-18 02:09:51'),
(42, '6q2ytq2byrvjmzdgp26fzzn72f67', 'genre_vietnam.jpg', 'image/jpeg', '{\"identified\":true,\"width\":180,\"height\":180,\"analyzed\":true}', 'local', 22170, '96o4jEfTdUN/hwJluAPCtg==', '2021-05-18 02:09:59'),
(43, 'utk2fx2ai7ix30p8yd3mdv4lf60k', 'genre_us.jpg', 'image/jpeg', '{\"identified\":true,\"width\":180,\"height\":180,\"analyzed\":true}', 'local', 14521, 'vlj0WGPtY8pZkyn3sZ1ZPw==', '2021-05-18 02:09:59'),
(44, 'cd168obz5ch1668jfrcr0s659h5o', 'genre_vietnam.jpg', 'image/jpeg', '{\"identified\":true,\"width\":230,\"height\":230,\"analyzed\":true}', 'local', 33238, 'r5hgakDTRWHByNBjCwNB7g==', '2021-05-18 02:10:32'),
(45, 'y3i9fmcac6ip9vwrlvdbptibo9r1', 'genre_us.jpg', 'image/jpeg', '{\"identified\":true,\"width\":230,\"height\":230,\"analyzed\":true}', 'local', 20792, 'DfLCHFXDU2xOd1C1kgrZSw==', '2021-05-18 02:10:32'),
(46, 'ek8bwqx8gpdor4l3uk0i02dkv11h', 'genre_vietnam.jpg', 'image/jpeg', '{\"identified\":true,\"width\":180,\"height\":180,\"analyzed\":true}', 'local', 22170, '96o4jEfTdUN/hwJluAPCtg==', '2021-05-18 02:13:07'),
(47, '52qrp56xuxl51ff69cjparfguz8a', 'genre_us.jpg', 'image/jpeg', '{\"identified\":true,\"width\":180,\"height\":180,\"analyzed\":true}', 'local', 14521, 'vlj0WGPtY8pZkyn3sZ1ZPw==', '2021-05-18 02:13:07'),
(48, 'rp9bxdm3i8tmjzeldrszjb3hcb2q', 'genre_vietnam.jpg', 'image/jpeg', '{\"identified\":true,\"width\":618,\"height\":180,\"analyzed\":true}', 'local', 64252, 'WyESaAYJRJqk0l8Hduh8Qw==', '2021-05-18 02:18:58'),
(49, 'qg85u0u96mmyzyppyqbygqvhb0jw', 'genre_us.jpg', 'image/jpeg', '{\"identified\":true,\"width\":618,\"height\":180,\"analyzed\":true}', 'local', 38865, 'oZqi+Cy8xDbJ11kRPMtsOg==', '2021-05-18 02:18:58'),
(50, 'qd9eebibyq7f5v1qtij18t0oq6mv', 'genre_korean.jpg', 'image/jpeg', '{\"identified\":true,\"width\":1030,\"height\":300,\"analyzed\":true}', 'local', 76388, 'Nm5ntA7dXLAGNt/YR9d1ZA==', '2021-05-18 02:24:37'),
(51, '4u6zg12kjmrcf4zzd7i6e3xsdkw3', 'genre_china.jpg', 'image/jpeg', '{\"identified\":true,\"width\":1030,\"height\":300,\"analyzed\":true}', 'local', 121087, 'kVRZ/wqtSxde80XQY9VKvQ==', '2021-05-18 02:24:54'),
(52, 'u70sppdd4ykvw41ft3xprsqppkio', 'genre_korean.jpg', 'image/jpeg', '{\"identified\":true,\"width\":618,\"height\":180,\"analyzed\":true}', 'local', 44595, 'BfFpUHgEbkKqRK8otm4/hQ==', '2021-05-18 02:25:01'),
(53, 'q9knlbqrqrwjsks0jg64r9n9gfjx', 'genre_china.jpg', 'image/jpeg', '{\"identified\":true,\"width\":618,\"height\":180,\"analyzed\":true}', 'local', 50870, '/DmTl6bV3REoXlKfxCm+DQ==', '2021-05-18 02:25:01'),
(54, 'kobrc89dsduuwchkul3roykzd02m', 'shanefilan.jpg', 'image/jpeg', '{\"identified\":true,\"width\":960,\"height\":960,\"analyzed\":true}', 'local', 91058, '9pSz20Oa8Zwxko6ZVNMuVg==', '2021-05-18 05:38:56'),
(55, 'pby0sed808n0blrfl8e0k2estazp', 'love.jpg', 'image/jpeg', '{\"identified\":true,\"width\":320,\"height\":320,\"analyzed\":true}', 'local', 36628, 'm++x9YsEO9XUG7VsQzShuQ==', '2021-05-18 05:41:40'),
(56, 'x3ukezzytozedh3r3mup1uidw8s1', 'beautifulinwhite.jpg', 'image/jpeg', '{\"identified\":true,\"width\":640,\"height\":640,\"analyzed\":true}', 'local', 143431, 'b6SpcRnYYLFiNBSHfkqwiw==', '2021-05-18 05:42:58'),
(57, 'y23sp8xkyesena21951ziaonso19', 'beautifulinwhite.mp3', 'audio/mpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 5572416, '4p85k2ToDMoyubf/fBFajQ==', '2021-05-18 05:42:58'),
(58, '5prxxfjwhguowbvbnvdl5qbvhyko', 'phiasaumotcogai.jpg', 'image/jpeg', '{\"identified\":true,\"width\":320,\"height\":320,\"analyzed\":true}', 'local', 28133, '4hBjJGT6avIooCIi0lFW9A==', '2021-05-18 14:10:38'),
(64, '7ltxalehxbofoajy7ygx73611tpn', 'blackjacksoobin.mp3', 'audio/mpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 8586285, '0UENOl/C7emaImU57BhzTQ==', '2021-05-19 09:17:44'),
(66, 'bttlwjafxwcxpge6pms2o2w5ft3h', 'trochoisoobin.mp3', 'audio/mpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 8322285, 'raV4RLj9MPWdZzn4iZqqMg==', '2021-05-19 09:25:42'),
(70, 'ukihv1aebe0cvhrqo2h87ykcbf64', 'blackjack2.jpg', 'image/jpeg', '{\"identified\":true,\"width\":240,\"height\":240,\"analyzed\":true}', 'local', 26394, 'BVrmQqGFvH37P9jOcBP1kQ==', '2021-05-20 11:08:57'),
(71, 'cluzns2rt0h7lnehllw5siadjgc8', 'blackjack2.jpg', 'image/jpeg', '{\"identified\":true,\"width\":94,\"height\":94,\"analyzed\":true}', 'local', 5519, 'ko+FCiot+u5OQGTHvl9oNA==', '2021-05-20 11:09:01'),
(72, '7vju7xhpxntqdd3nk0g0oilb7cax', 'trochoi2.jpg', 'image/jpeg', '{\"identified\":true,\"width\":320,\"height\":320,\"analyzed\":true}', 'local', 30344, 'M236ssoBkvJyETSEG2dzlg==', '2021-05-20 11:10:47'),
(73, 'hjcl4rrq8pace5pxcycp9rcpxfrj', 'thangnam2.jpg', 'image/jpeg', '{\"identified\":true,\"width\":320,\"height\":320,\"analyzed\":true}', 'local', 34675, '60TkpJR37kYdwAZ7QkFO6g==', '2021-05-20 11:11:02'),
(74, '6uj0om6mbhise7jhq0bqwzo9u8vx', 'trochoi2.jpg', 'image/jpeg', '{\"identified\":true,\"width\":94,\"height\":94,\"analyzed\":true}', 'local', 4749, '5vWWOp42P11fE4AbmPMQJg==', '2021-05-20 11:11:05'),
(75, 'pv0r7suscheflpuwq09ag2xgjlzd', 'thangnam2.jpg', 'image/jpeg', '{\"identified\":true,\"width\":94,\"height\":94,\"analyzed\":true}', 'local', 8266, 'XjVjCqyBfbikFw2MN+/5kA==', '2021-05-20 11:11:06'),
(76, '6262ebyunsgjpjaoultd8gmc963c', 'skytourintro.jpg', 'image/jpeg', '{\"identified\":true,\"width\":94,\"height\":94,\"analyzed\":true}', 'local', 2236, 'IFRotTIaY8Hru71JcdpyNA==', '2021-05-20 11:11:54'),
(77, 'tj3j6expl6zfb4y4zrizucajlxl3', 'skytourchayngaydi.jpg', 'image/jpeg', '{\"identified\":true,\"width\":94,\"height\":94,\"analyzed\":true}', 'local', 4330, 'uIUrq+Y7/aEPbaLm7ECWbQ==', '2021-05-20 11:11:54'),
(78, 'xsmx4r7tsd168s0cowprnzxhutuh', 'beautifulinwhite.jpg', 'image/jpeg', '{\"identified\":true,\"width\":94,\"height\":94,\"analyzed\":true}', 'local', 6117, 'CPo+Ro1V6NSZnStqHEBrrg==', '2021-05-20 11:11:54'),
(79, '9ezs54k273m69o32ybcs4rqq3u2o', 'justinbieber.jpg', 'image/jpeg', '{\"identified\":true,\"width\":240,\"height\":240,\"analyzed\":true}', 'local', 12843, 'tdJZzzFqiZOrqNGa/0tMCg==', '2021-05-21 06:08:27'),
(80, 'aq2w4mxtngiu5xg6bote0d05owc8', 'thieubaotram.jpg', 'image/jpeg', '{\"identified\":true,\"width\":240,\"height\":240,\"analyzed\":true}', 'local', 12611, 'daZpMlju+EQvqotjDbFSuA==', '2021-05-21 06:13:13'),
(81, 'gm25hyszv6qwnxsuop89plg66xt0', '6sense.png', 'image/png', '{\"identified\":true,\"width\":296,\"height\":64,\"analyzed\":true}', 'local', 9189, 'Ia71zjkP5ddBCadgFV8xcw==', '2021-05-21 06:35:17'),
(82, '4j2782sj1j4jqcnk0qio6d0vujgs', 'acv.png', 'image/png', '{\"identified\":true,\"width\":300,\"height\":70,\"analyzed\":true}', 'local', 13196, 'yEdKATKP7T4IWgCIFFToFg==', '2021-05-21 06:35:37'),
(83, '0ald8c4p9t8cx3ceodsccn0957du', 'beggers.png', 'image/png', '{\"identified\":true,\"width\":176,\"height\":160,\"analyzed\":true}', 'local', 24172, 'SmCJYUnfRjjYtxtHqJHtkA==', '2021-05-21 06:35:56'),
(84, '7p1tfsx4hzy2nzx3bqhsi8rsd9j7', 'empire.png', 'image/png', '{\"identified\":true,\"width\":208,\"height\":160,\"analyzed\":true}', 'local', 10125, 'Yid53P1cSqxvMF0RBUxG6w==', '2021-05-21 06:42:05'),
(85, 'x24sgwtb21j98ip2ac6pc5l49mm1', 'great.png', 'image/png', '{\"identified\":true,\"width\":284,\"height\":134,\"analyzed\":true}', 'local', 26593, 'vrEbeMr7qqiDwl+RCGbsjg==', '2021-05-21 06:42:27'),
(86, '5dq0gllyhq0csa949c7k2bj067zz', 'monstercat.png', 'image/png', '{\"identified\":true,\"width\":260,\"height\":160,\"analyzed\":true}', 'local', 10740, 'JLDt/kmjdm28Lc1ffcK/qQ==', '2021-05-21 06:42:50'),
(87, 'pw7u7uq4236hbczpmrxmo8fsmv5k', 'sony.png', 'image/png', '{\"identified\":true,\"width\":150,\"height\":164,\"analyzed\":true}', 'local', 20442, 'vq17ATcLjDKnLENIq1jOyw==', '2021-05-21 06:43:10'),
(88, '6vphs4vgihnnlb6h54sm104xj1qm', 'orcahrd.png', 'image/png', '{\"identified\":true,\"width\":280,\"height\":104,\"analyzed\":true}', 'local', 14886, 'AKSkZSR09Ev7Orxr9Y9Yew==', '2021-05-21 06:44:41'),
(89, 'aq8vd5r0er2qlxcurtswa5ojh81y', 'chidan.jpg', 'image/jpeg', '{\"identified\":true,\"width\":240,\"height\":240,\"analyzed\":true}', 'local', 15231, 'GQWROW+WQcrA61Mrt0rpeg==', '2021-05-21 23:47:00'),
(90, 'wouozwan7wnih3uq700rddv9u8cq', 'quanap.jpg', 'image/jpeg', '{\"identified\":true,\"width\":240,\"height\":240,\"analyzed\":true}', 'local', 15127, 'EbET30+YZhhr/U11rRrPaA==', '2021-05-22 00:37:45'),
(91, 'l7x30isuysueo45zpz0gf94jlkwb', 'chungtakhongthuocvenhau.jpg', 'image/jpeg', '{\"identified\":true,\"width\":640,\"height\":640,\"analyzed\":true}', 'local', 120536, 'RKPg12GprSfAYIrqtQlyOw==', '2021-05-22 00:51:47'),
(92, 'z0nevoorvert1gmt435ywdf6t774', 'chungtakhongthuocvenhau.mp3', 'audio/mpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 3729401, 'w55Ao9JdURum7GY2UlR96Q==', '2021-05-22 00:51:47'),
(93, 'fxb3wm57mrzwe8u7tk7cpd89b8fy', 'chungtakhongthuocvenhau.jpg', 'image/jpeg', '{\"identified\":true,\"width\":94,\"height\":94,\"analyzed\":true}', 'local', 5069, 'wmRAkwD1ug/01NDzIhSDww==', '2021-05-22 00:51:50'),
(94, 'v7og92wdsw9q1g3pqtyfbxqclgwd', 'chungtacuahientai.jpg', 'image/jpeg', '{\"identified\":true,\"width\":660,\"height\":934,\"analyzed\":true}', 'local', 63298, '+vjOV2pxdaD9eJVzgUWRaA==', '2021-05-22 00:52:45'),
(95, '8g8fkd7tgjeeb84xjt512c5kaqd2', 'chungtacuahientai.mp3', 'audio/mpeg', '{\"identified\":true,\"analyzed\":true}', 'local', 3212022, 'N8g01uefY/c8kQd9PAxcmQ==', '2021-05-22 00:52:45'),
(96, 'gn8zzpwmpk36yodos5z7mnd3m4m1', 'chungtacuahientai.jpg', 'image/jpeg', '{\"identified\":true,\"width\":94,\"height\":94,\"analyzed\":true}', 'local', 3281, 'mlCPnDww/yeZiEoP9el2eg==', '2021-05-22 00:52:48'),
(97, 'lv4zw3ivgt3nn3zcfq0l48pftnha', 'karik.jpg', 'image/jpeg', '{\"identified\":true,\"width\":240,\"height\":240,\"analyzed\":true}', 'local', 17537, 'qjuoayzZS6MtiKiaV0O3Ng==', '2021-05-24 04:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `active_storage_variant_records`
--

CREATE TABLE `active_storage_variant_records` (
  `id` bigint NOT NULL,
  `blob_id` bigint NOT NULL,
  `variation_digest` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `active_storage_variant_records`
--

INSERT INTO `active_storage_variant_records` (`id`, `blob_id`, `variation_digest`) VALUES
(11, 22, '/C5rqMElkXtNavIoP62lThKPIsU='),
(9, 22, 'CvKArfYUUr6TtsAApzM0NH05MYs='),
(7, 22, 'danfHEUPwy8cUGxx3OthPJE1wts='),
(2, 22, 'EnmLd04+ekx9xrh7DDiJZuBlkbQ='),
(6, 22, 'fZwYkyM9QgbVSKNDEV34WafkBns='),
(3, 22, 'Gx9ivT/ME1VefTLL5NnVaOEe6iQ='),
(13, 22, 'hd1iasj63Sy9ghcVNxY34hjEAvI='),
(15, 22, 'PyR6vw013Wg238sbCa+UyIqVmjE='),
(25, 29, 'FOzIvIWqFEeFeo/8fRA9WVqyXKY='),
(26, 31, 'FOzIvIWqFEeFeo/8fRA9WVqyXKY='),
(12, 33, '/C5rqMElkXtNavIoP62lThKPIsU='),
(10, 33, 'CvKArfYUUr6TtsAApzM0NH05MYs='),
(8, 33, 'danfHEUPwy8cUGxx3OthPJE1wts='),
(1, 33, 'EnmLd04+ekx9xrh7DDiJZuBlkbQ='),
(5, 33, 'fZwYkyM9QgbVSKNDEV34WafkBns='),
(4, 33, 'Gx9ivT/ME1VefTLL5NnVaOEe6iQ='),
(14, 33, 'hd1iasj63Sy9ghcVNxY34hjEAvI='),
(16, 33, 'PyR6vw013Wg238sbCa+UyIqVmjE='),
(17, 50, 'PyR6vw013Wg238sbCa+UyIqVmjE='),
(18, 51, 'PyR6vw013Wg238sbCa+UyIqVmjE='),
(27, 56, 'FOzIvIWqFEeFeo/8fRA9WVqyXKY='),
(22, 70, 'FOzIvIWqFEeFeo/8fRA9WVqyXKY='),
(23, 72, 'FOzIvIWqFEeFeo/8fRA9WVqyXKY='),
(24, 73, 'FOzIvIWqFEeFeo/8fRA9WVqyXKY='),
(28, 91, 'FOzIvIWqFEeFeo/8fRA9WVqyXKY='),
(29, 94, 'FOzIvIWqFEeFeo/8fRA9WVqyXKY=');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint NOT NULL,
  `album_name` varchar(255) DEFAULT NULL,
  `album_description` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `artist_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `album_name`, `album_description`, `created_at`, `updated_at`, `artist_id`, `genre_id`) VALUES
(2, 'Sky Tour (Original Motion Picture Soundtrack)', 'Album nha??c c???a S??n T??ng M-TP', '2021-05-16 07:59:59.949039', '2021-05-21 02:11:06.828405', 3, 1),
(3, 'Ch??ng ta', 'Ch??ng ta l?? album ph??ng thu ?????u tay s???p t???i c???a ca s?? ng?????i Vi???t Nam S??n T??ng M-TP, ph??t h??nh b???i M-TP Entertainment v?? d??? t??nh ra m???t v??o ng??y 31 th??ng 12 n??m 2021', '2021-05-16 09:40:13.849180', '2021-05-21 02:11:23.766512', 3, 1),
(5, 'The Playah (EP)', 'Album ??m nh???c m???i nh???t c???a Soobin Ho??ng S??n', '2021-05-17 06:44:18.623805', '2021-05-21 02:13:26.218736', 5, 1),
(6, 'Love', 'Album ??m nh???c c???a Shane Filan', '2021-05-18 05:41:40.177643', '2021-05-21 02:13:40.593371', 6, 2),
(7, 'Ph??a sau m???t c?? g??i', 'S???n ph???m ??m nh???c v?? h??nh ???nh ???????c s???n xu???t b???i Ti??n Cookie 1989sProduction', '2021-05-18 14:10:38.066982', '2021-05-21 02:13:53.211758', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint NOT NULL,
  `artist_stagename` varchar(255) DEFAULT NULL,
  `artist_realname` varchar(255) DEFAULT NULL,
  `artist_image` varchar(255) DEFAULT NULL,
  `artist_description` text,
  `artist_birthday` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `genre_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `artist_stagename`, `artist_realname`, `artist_image`, `artist_description`, `artist_birthday`, `created_at`, `updated_at`, `genre_id`) VALUES
(3, 'S??n T??ng MT-P', 'Nguy???n Thanh T??ng', NULL, 'N??m 2013, anh ?????u qu??n v??? c??ng ty V??n Production JSC c???a nh???c s?? Huy Tu???n v?? ch??nh th???c ?????i ngh??? danh th??nh S??n T??ng M-TP ????? ho???t ?????ng ??m nh???c chuy??n nghi???p. V??o gi???a n??m, S??n T??ng ph??t h??nh 2 ????a ????n ?????ng V??? Tr??? v?? Em C???a Ng??y H??m Qua trong ???? ?????ng V??? Tr??? ??o???t gi???i B??i h??t y??u th??ch. V???i Em C???a Ng??y H??m Qua, ca kh??c n??y ???? tr??? th??nh m???t b??i hit l???n trong s??? nghi???p c???a S??n T??ng M-TP khi ca kh??c n??y li??n ti???p chi???m gi??? v??? tr?? s??? 1 t???i b???ng x???p h???ng c???a Zing Mp3 ??? c??? hai h???ng m???c l?? B??i h??t v?? Video clip. 08/09/2014, MV Em C???a Ng??y H??m Qua ch??nh th???c ?????t h??n 40 tri???u l?????t xem tr??n Youtube trong v??ng 9 th??ng. ????y l?? m???t con s??? k??? l???c ?????i v???i MV nh???c Vi???t t??nh cho th???i ??i???m b???y gi???. D?? g???p ph???i r???t nhi???u ?? ki???n xung quanh vi???c ?????o nh???c nh??ng kh??ng th??? ph??? nh???n s???c n??ng c???a nh???ng ca kh??c m?? S??n T??ng bi???u di???n k??? t??? N???ng ???m Xa D???n, C??n M??a Ngang Qua\r\n', '2016-10-13', '2021-05-15 01:14:48.096968', '2021-05-21 02:24:15.787480', 1),
(4, 'Hi???n H???', ' Nguy???n Th??? Hi???n H???', NULL, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '1997-04-18', '2021-05-15 06:28:08.486821', '2021-05-21 02:24:34.018957', 1),
(5, 'Soobin Ho??ng S??n', 'Nguy???n Ho??ng S??n', NULL, 'N??m 2014, anh ?????t gi???i ?? qu??n cu???c thi Ng??i Sao Vi???t v?? ???????c ????o t???o 6 th??ng ??? H??n Qu???c. Khi tr??? v???, anh tham gia nh??m nh???c underground SpaceSpeakers do Ho??ng Touliver th??nh l???p.\r\nN??m 2016, anh ?????t gi???i B???c cu???c thi H??a ??m ??nh S??ng v?? ra m???t ca kh??c t??? s??ng t??c \"La La La (V?? Th??? L?? H???t)\". V???i th??nh c??ng c???a \"Ph??a Sau M???t C?? G??i\" (s??ng t??c Ti??n Cookie) th?? Soobin Ho??ng S??n ???????c ????ng ?????o c??ng ch??ng ????n nh???n. Ca kh??c c??ng gi??p anh nh???n l???y danh hi???u \"Ho??ng T??? Ballad\" t??? ng?????i h??m m???.\r\nT??? 2017 ?????n nay anh li??n ti???p ra m???t nhi???u b???n hit nh?? \"Ng??y Mai Em ??i\", \"??i ????? Tr??? V???\" n??m 2017, \"?????p Nh???t L?? Em\" song ca c??ng ca s?? H??n Qu???c JiYeon n??m 2018 v?? \"N???u Ng??y ???y\", \"Say Goodbye\" trong n??m 2019.', '1992-09-10', '2021-05-17 06:08:44.399504', '2021-05-21 02:24:45.354798', 1),
(6, 'Shane Filan', 'Shane Steven Filan', NULL, 'Shane Steven Filan (sinh ng??y 5 th??ng 7 n??m 1979) l?? ca s?? tr?????ng nh??m c???a ban nh???c pop ?????n t??? Ireland, Westlife. Filan l?? m???t trong n??m th??nh vi??n g???c c???a Westlife, c??ng v???i 3 th??nh vi??n hi???n t???i c???a nh??m Kian Egan, Mark Feehily v?? Nicky Byrne v?? th??nh vi??n c?? Brian McFadden. Anh v?? c??c th??nh vi??n c???a nh??m s??? bi???u di???n l???n cu???i c??ng nh?? s??? chia tay v??o n??m 2012. Tour bi???u di???n mang t??n \"Farewell\"\r\n\r\nTh??ng 7 n??m 2013: Anh ch??nh th???c tung single solo ?????u ti??n c???a m??nh mang t??n Everything To Me.\r\nTh??ng 11 n??m 2013: Album ?????u ti??n trong s??? nghi???p h??t ????n c???a Shane Filan ph??t h??nh v???i t??n g???i You And Me\r\nTh??ng 9 n??m 2015: Album th??? hai mang t??n Right Here ???????c ra m???t.', '1993-07-05', '2021-05-18 05:38:56.377292', '2021-05-21 02:24:55.241263', 2),
(7, 'Justin Bieber', 'Justin Drew Bieber', NULL, 'N??m 13 tu???i, t??i n??ng ca h??t c???a Justin Bieber ???????c ph??t hi???n, mang l???i cho anh h???p ?????ng v???i h??ng ????a RBMG Records v?? ra m???t EP \"My World\" n??m 2009.\r\nAlbum ph??ng thu ?????u ti??n \"My World 2.0\" v???i b???n hit \"Baby\" ra m???t n??m 2010 gi??p anh n???i ti???ng to??n c???u. C??c album ti???p theo: \"Under The Mistletoe\" (2011), \"Believe\" (2012), \"Purpose\" (2015) ?????u th??nh c??ng, mang l???i cho anh danh hi???u \"Ho??ng T??? Nh???c Pop\". N??m 2020, anh ra m???t album \"Changes\", sau ???? l?? \"Justice\" (2021) ????nh d???u s??? tr?????ng th??nh trong ??m nh???c. Justin Bieber nh???n ???????c nhi???u gi???i th?????ng, trong ???? c?? 2 gi???i Grammy cho \"Where Are U Now\" k???t h???p c??ng Jack U v?? \"10000 Hours\" k???t h???p c??ng Day + Shan.', '1994-03-01', '2021-05-21 06:08:26.974584', '2021-05-21 06:08:27.110686', 2),
(8, 'Thi???u B???o Tr??m', 'Thi???u B???o Tr??m', NULL, 'Thi???u B???o Tr??m t???t nghi???p v??o trong tr?????ng Cao ?????ng v??n h??a ngh??? thu???t H?? N???i. V???i gi???ng h??t ?????y n???i l???c c??ng k??? thu???t, c?? l?? g????ng m???t tri???n v???ng t??? c??c cu???c thi nh??: Gi???ng H??t Vi???t 2013, Ng??i Nh?? ??m Nh???c hay Ti???ng Ca H???c ???????ng. Sau cu???c thi Gi???ng H??t Vi???t 2013, Thi???u B???o Tr??m c??ng ch??? g??i l?? Thi???u B???o Trang th??nh l???p nh??m nh???c c?? t??n Bee.T do ch??? g??i l??m tr?????ng nh??m. N??m 2015, nh??m tan r??, c?? b???t ?????u s??? nghi???p solo, g??y ???n t?????ng v???i kh??n gi??? b???ng MV debut \"C??n M?? Ng???t Ng??o\", sau ???? l?? \"K??? Anh Th??i\", \"Th????ng Anh\" v?? \"Tri???u L?? Do\".', '1994-09-12', '2021-05-21 06:13:13.169462', '2021-05-21 06:13:13.232123', 1),
(9, 'Chi D??n', 'Nguy???n Trung Hi???u', NULL, 'Chi D??n c?? chi???u cao 1m75 v?? c??n n???ng l?? 60kg. N??m 2008 thi v??o nh???c vi???n TPHCM , trong th???i gian ??i h???c tham gia h??t nh??m ????? l???y th??m kinh nghi???m ?????n n??m 2012 Chi D??n t??ch ra h??t solo v?? ???????c kh??n gi??? ???ng h??? r???t nhi???u qua ca kh??c ???M???t tr?? nh?????? , d?? ch??? l?? ca kh??c ???????c Chi D??n cover nh??ng v???i s??? lan t???a l???n n??n m???i ng?????i xem Chi D??n l?? hi???n t?????ng th???i ??i???m n??y.. Kh??ng d???ng l???i ??? ???? ????? kh??n gi??? ngh?? r???ng ch??? l?? hi???n t?????ng m???ng ?????n may??? trong ??m nh???c , Chi D??n kh??ng ng???ng c??? g???ng v?? v???i n??ng l???c c???a m??nh ???????c ????o t???o b??i b???n t??? nh???c vi???n TPHCM , n??m 2013 ca kh??c Ng?????i T??i Y??u , s??ng t??c ?????u tay c???a Chi D??n ???????c kh??n gi??? ????n nh???n n???ng nhi???t ????y ch??nh l?? b?????c ?????m v???ng ch???c , ??em t??n tu???i Chi D??n ?????n g???n h??n v???i kh??n gi??? y??u nh???c..', '1990-06-02', '2021-05-21 23:46:59.988411', '2021-05-21 23:47:00.118958', 1),
(10, 'Qu??n A.P', 'Ph???m Anh Qu??n', NULL, '???????c gi???i tr??? bi???t ?????n, y??u m???n v?? ??u ??i v???i h??ng lo???t nh???ng danh x??ng c?? c??nh nh?? ???so??i ca cover???, ???hotboy cover???, ???S??t th??? cover l??m bay m??u b???n g???c???... Anh ch??ng t???ng g??y s???t b???i g????ng m???t ??i???n trai, th?? sinh, d??? khi???n fan n??? ???????? g???c??? t??? c??i nh??n ?????u ti??n v???i ????i m???t m???t m?? d??? th????ng, n??? c?????i t???a n???ng ?????y cu???n h??t. ?????c bi???t, Qu??n A.P c??n s??? h???u m??u gi???ng nam t??nh, ch???t tr???m kh??n ?????c tr??ng, ???m ??p... ????y ???????c cho l?? th??? ???v?? kh????? ????? anh ch??ng chinh ph???c ng?????i y??u nh???c b???i h??ng lo???t nh???ng b???n cover h??ng ch???c tri???u view tr??n m???ng x?? h???i nh?? ???Chi???u h??m ???y???, ????????ng nh?? th??i quen???, ????????ng ai nh???c v??? c?? ???y???... Tr?????c khi debut v???i s???n ph???m ??m nh???c ?????u tay, qua nh???ng s???n ph???m cover ???n t?????ng, Qu??n A.P ???? c?? m???t l?????ng fan nh???t ?????nh tr??n Facebook v?? nhi???u trang m???ng x?? h???i kh??c.', '1997-09-17', '2021-05-22 00:37:45.449879', '2021-05-22 00:37:45.502575', 1),
(11, 'Karik', 'Ph???m Ho??ng Khoa', NULL, 'Karik tham gia nh??m nh???y Freestyle n??m 2006 nh??ng 2008 ph???i ngh??? v?? ch???n th????ng. Anh chuy???n sang Rap ????? gi???i t???a c???m x??c. Ban ?????u, Karik t??? m??nh m??y m?? t??? flow, lyrics v?? beat cho ?????n c??ch t??? thu ??m v?? d???n d???n ???????c c???ng ?????ng Underground c??ng nh???n sau cu???i n??m 2009. N??m 2012 anh vinh d??? l?? ngh??? s?? nh???c Rap ?????u ti??n ??o???t gi???i MTV Vi???t Nam. C??c b??i h??t ph??t h??nh sau ???? ?????u ???????c kh??n gi??? y??u th??ch nh??: \"Anh Kh??ng ????i Qu??\", \"???\", \"R???c R???i\"... N??m 2018 Karik k???t h???p c??ng Orange trong b??i h??t \"Ng?????i L??? ??i\", b??i h??t tr??? th??nh hi???n t?????ng c???a n??m. Sau ????, c??? hai c??n h???p t??c trong \"M??nh T???ng Y??u Nh?? Th???\" v?? \"V?? Th?????ng\". ?????u n??m 2019, Karik tung ra s???n ph???m ?????m ch???t c?? nh??n mang t??n \"Anh Em Tao\".', '1990-04-12', '2021-05-24 04:33:27.371304', '2021-05-24 04:33:27.441843', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2021-05-13 07:13:48.292443', '2021-05-13 07:13:48.292443');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint NOT NULL,
  `genres_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genres_name`, `created_at`, `updated_at`) VALUES
(1, 'Nh???c Vi???t', '2021-05-18 00:58:08.296118', '2021-05-18 00:58:08.394792'),
(2, 'Nh???c ??u M???', '2021-05-18 01:11:12.608281', '2021-05-18 01:11:12.636682'),
(3, 'Nh???c H??n', '2021-05-18 02:24:37.867535', '2021-05-18 02:24:37.888754'),
(4, 'Nh???c China', '2021-05-18 02:24:54.104650', '2021-05-18 02:24:54.125714');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint NOT NULL,
  `partner_name` varchar(255) DEFAULT NULL,
  `partner_description` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `partner_name`, `partner_description`, `created_at`, `updated_at`) VALUES
(1, '6Sense', '6 Sense company', '2021-05-21 06:35:17.227133', '2021-05-21 06:35:17.267597'),
(2, 'ACV', 'ACV company', '2021-05-21 06:35:37.867041', '2021-05-21 06:35:37.886223'),
(3, 'Beggers', 'Beggers company', '2021-05-21 06:35:56.982933', '2021-05-21 06:35:57.002255'),
(4, 'Empire', 'Empire company', '2021-05-21 06:42:05.615979', '2021-05-21 06:42:05.638657'),
(5, 'Great', 'Great company', '2021-05-21 06:42:27.526123', '2021-05-21 06:42:27.549685'),
(6, 'Monstercat', 'Monstercat company', '2021-05-21 06:42:50.393939', '2021-05-21 06:42:50.414335'),
(7, 'Sony', 'Sony company', '2021-05-21 06:43:10.040501', '2021-05-21 06:43:10.061585'),
(8, 'Orcahrd', 'Orcahrd company', '2021-05-21 06:44:40.996856', '2021-05-21 06:44:41.015826');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20210513070949'),
('20210513104950'),
('20210514015741'),
('20210514023724'),
('20210514024139'),
('20210514024306'),
('20210515005344'),
('20210515074312'),
('20210515074614'),
('20210517070509'),
('20210518004107'),
('20210518004601'),
('20210521020810'),
('20210521022223'),
('20210521062351');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` bigint NOT NULL,
  `song_name` varchar(255) DEFAULT NULL,
  `song_image` varchar(255) DEFAULT NULL,
  `song_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `artist_id` int DEFAULT NULL,
  `album_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `song_name`, `song_image`, `song_path`, `created_at`, `updated_at`, `artist_id`, `album_id`, `genre_id`) VALUES
(2, 'BlackJack', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Fblackjack.jpg?alt=media&token=d7b91693-290f-493b-ba7e-6285d22b12ad', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/blackjacksoobin.mp3?alt=media&token=af30d3e6-344a-44fe-8e29-b872c7f066d4', '2021-05-17 07:22:49.697369', '2021-05-20 11:08:57.440922', 5, 5, 1),
(3, 'Tr?? Ch??i', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Ftrochoi.jpg?alt=media&token=f2791572-125f-416e-87f0-330fc7b2f10b', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/trochoisoobin.mp3?alt=media&token=353dcdf5-1979-4009-9050-1cc8193e2ef2', '2021-05-17 07:48:53.083848', '2021-05-20 11:10:47.320575', 5, 5, 1),
(4, 'Th??ng n??m', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Fthangnam.jpg?alt=media&token=5adb3eb7-6aa0-43ec-bdaa-c298bf99f4b2', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/thangnamsoobin.mp3?alt=media&token=a101dd36-7518-42d1-86f9-395536fbef7d', '2021-05-17 07:49:20.589579', '2021-05-20 11:11:02.966634', 5, 5, 1),
(5, 'Sky Tour Intro', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Fskytourintro.jpg?alt=media&token=7e97ea7a-8b19-4eb3-85f7-b14d1089cf37', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/SkyTourIntro.mp3?alt=media&token=4071994f-7f00-432a-99d3-4927956c949f', '2021-05-17 08:19:39.775989', '2021-05-20 03:54:20.929909', 3, 2, 1),
(6, 'Sky Tour Ch???y Ngay ??i ( 2019 S??n T??ng MTP)', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Fskytourchayngaydi.jpg?alt=media&token=ab495ca5-61c9-43ce-8ae1-4036b885dd64', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/ChayNgayDiSkyTour2019.mp3?alt=media&token=d95db633-ebcc-475c-9786-0aa3be9a1b4d', '2021-05-17 08:23:08.947467', '2021-05-20 10:07:21.809901', 3, 2, 1),
(7, 'Beautiful In White', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Fbeautifulinwhite.jpg?alt=media&token=054d8818-df16-420d-bc70-0527fa247aca', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/beautifulinwhite.mp3?alt=media&token=d1b5d65a-d338-4e6a-b4fa-172881524c2f', '2021-05-18 05:42:58.830080', '2021-05-22 00:14:21.618131', 6, 6, 2),
(8, 'Ch??ng ta kh??ng thu???c v??? nhau', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Fchungtakhongthuocvenhau.jpg?alt=media&token=88eb24dc-f56c-4682-939d-fa1b3c162619', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/chungtakhongthuocvenhau.mp3?alt=media&token=73e34ff5-f177-4e2b-9bb9-1b4e3c9ef4e3', '2021-05-22 00:51:47.327625', '2021-05-22 00:51:47.404498', 3, 3, 1),
(9, 'Ch??ng ta c???a hi???n t???i', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/imgs%2Fchungtacuahientai.jpg?alt=media&token=682d9807-7cd3-4b66-86b6-96aa6ec08dc3', 'https://firebasestorage.googleapis.com/v0/b/musicplayer-940ac.appspot.com/o/chungtacuahientai.mp3?alt=media&token=782b7bc3-47a2-41a0-a03e-ce05feba9321', '2021-05-22 00:52:45.539220', '2021-05-22 00:52:45.624331', 3, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_storage_attachments`
--
ALTER TABLE `active_storage_attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  ADD KEY `index_active_storage_attachments_on_blob_id` (`blob_id`);

--
-- Indexes for table `active_storage_blobs`
--
ALTER TABLE `active_storage_blobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_active_storage_blobs_on_key` (`key`);

--
-- Indexes for table `active_storage_variant_records`
--
ALTER TABLE `active_storage_variant_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_active_storage_variant_records_uniqueness` (`blob_id`,`variation_digest`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_albums_on_artist_id` (`artist_id`),
  ADD KEY `index_albums_on_genre_id` (`genre_id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_artists_on_genre_id` (`genre_id`);

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_songs_on_artist_id` (`artist_id`),
  ADD KEY `index_songs_on_album_id` (`album_id`),
  ADD KEY `index_songs_on_genre_id` (`genre_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_storage_attachments`
--
ALTER TABLE `active_storage_attachments`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `active_storage_blobs`
--
ALTER TABLE `active_storage_blobs`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `active_storage_variant_records`
--
ALTER TABLE `active_storage_variant_records`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `active_storage_attachments`
--
ALTER TABLE `active_storage_attachments`
  ADD CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`);

--
-- Constraints for table `active_storage_variant_records`
--
ALTER TABLE `active_storage_variant_records`
  ADD CONSTRAINT `fk_rails_993965df05` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

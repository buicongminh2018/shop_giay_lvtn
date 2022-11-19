-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2022 lúc 09:28 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lvtn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat_bot`
--

CREATE TABLE `chat_bot` (
  `id_cb` bigint(20) UNSIGNED NOT NULL,
  `cau_hoi_cb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cau_tra_loi_cb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chat_bot`
--

INSERT INTO `chat_bot` (`id_cb`, `cau_hoi_cb`, `cau_tra_loi_cb`, `created_at`, `updated_at`) VALUES
(1, 'địa chỉ cửa hàng', NULL, NULL, NULL),
(2, 'sản phẩm giảm giá', NULL, NULL, NULL),
(3, 'số điện thoại cửa hàng', '0939357747', NULL, NULL),
(6, 'liên hệ cửa hàng', 'buicongminh2018@gmail.com', NULL, NULL),
(8, 'asdasd', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat_lieu`
--

CREATE TABLE `chat_lieu` (
  `ms_cl` bigint(20) UNSIGNED NOT NULL,
  `ten_cl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_en_cl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chat_lieu`
--

INSERT INTO `chat_lieu` (`ms_cl`, `ten_cl`, `ten_en_cl`, `created_at`, `updated_at`) VALUES
(1, 'Da cao cấp', 'Premium leather', '2022-09-12 04:07:15', '2022-09-12 04:07:15'),
(2, 'Da tổng hợp', 'Synthetic Leather', '2022-09-12 04:09:19', '2022-09-12 04:16:59'),
(3, 'Vải dệt', 'Textiles', '2022-09-13 20:06:48', '2022-09-13 20:06:48'),
(4, 'Da / Vải', 'Leather / Fabric', '2022-09-13 21:07:18', '2022-09-13 21:07:18'),
(5, 'Vải & Cao Su', 'Fabric & Rubber', '2022-09-13 21:25:07', '2022-09-13 21:25:07'),
(6, 'Da + Vải cao cấp', 'Leather + High quality fabric', '2022-09-13 21:40:18', '2022-09-13 21:40:18'),
(7, 'Vải lưới', 'Mesh fabric', '2022-09-14 02:52:06', '2022-09-14 02:52:06'),
(8, 'Da bóng', 'Glossy skin', '2022-09-14 03:04:43', '2022-09-14 03:04:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `ms_ctdh` bigint(20) UNSIGNED NOT NULL,
  `ten_sp_ctdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_en_sp_ctdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kichco_ctdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soluong_ctdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ms_sp` int(11) DEFAULT NULL,
  `ms_kc` int(11) DEFAULT NULL,
  `ms_dh` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gia_ban_ctdh` int(11) DEFAULT NULL,
  `ms_mau` int(11) DEFAULT NULL,
  `mau_ctdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`ms_ctdh`, `ten_sp_ctdh`, `ten_en_sp_ctdh`, `kichco_ctdh`, `soluong_ctdh`, `ms_sp`, `ms_kc`, `ms_dh`, `created_at`, `updated_at`, `gia_ban_ctdh`, `ms_mau`, `mau_ctdh`) VALUES
(103, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '110', 20, 2, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 4, 'Đen'),
(104, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '170', 20, 2, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 3, 'Trắng'),
(105, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '120', 20, 2, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 1, 'Xám'),
(106, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '100', 20, 1, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 4, 'Đen'),
(107, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '60', 20, 1, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 3, 'Trắng'),
(108, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '110', 20, 1, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 1, 'Xám'),
(109, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '100', 20, 3, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 4, 'Đen'),
(110, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '80', 20, 3, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 3, 'Trắng'),
(111, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '130', 20, 3, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 1, 'Xám'),
(112, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '100', 20, 4, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 4, 'Đen'),
(113, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '100', 20, 4, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 3, 'Trắng'),
(114, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '140', 20, 4, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 1, 'Xám'),
(115, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '43', '110', 20, 5, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 3, 'Trắng'),
(116, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '43', '150', 20, 5, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 3510000, 1, 'Xám'),
(117, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '39', '110', 19, 1, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 2000000, 6, 'Đỏ đen'),
(118, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '40', '120', 19, 2, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 2000000, 6, 'Đỏ đen'),
(119, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '40', '100', 19, 2, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 2000000, 4, 'Đen'),
(120, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '41', '130', 19, 3, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 2000000, 6, 'Đỏ đen'),
(121, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '41', '200', 19, 3, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 2000000, 4, 'Đen'),
(122, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '42', '140', 19, 4, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 2000000, 6, 'Đỏ đen'),
(123, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '43', '100', 19, 5, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 2000000, 4, 'Đen'),
(124, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '100', 18, 2, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 6210000, 7, 'Phối màu'),
(125, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '39', '100', 18, 1, 33, '2022-10-19 23:04:01', '2022-10-19 23:04:01', 6210000, 7, 'Phối màu'),
(126, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '40', 20, 2, 34, '2022-10-21 01:24:03', '2022-10-21 01:24:03', 3510000, 4, 'Đen'),
(127, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '42', 20, 4, 34, '2022-10-21 01:24:03', '2022-10-21 01:24:03', 3510000, 3, 'Trắng'),
(128, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '10', 20, 1, 34, '2022-10-21 01:24:04', '2022-10-21 01:24:04', 3510000, 3, 'Trắng'),
(129, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '40', '10', 19, 2, 34, '2022-10-21 01:24:04', '2022-10-21 01:24:04', 2000000, 6, 'Đỏ đen'),
(130, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '11', 18, 2, 34, '2022-10-21 01:24:04', '2022-10-21 01:24:04', 6210000, 7, 'Phối màu'),
(131, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '1', 20, 2, 35, '2022-10-24 19:10:50', '2022-10-24 19:10:50', 3510000, 3, 'Trắng'),
(132, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '1', 20, 2, 36, '2022-10-24 21:32:25', '2022-10-24 21:32:25', 3510000, 3, 'Trắng'),
(133, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '1', 20, 2, 37, '2022-10-24 21:32:29', '2022-10-24 21:32:29', 3510000, 3, 'Trắng'),
(134, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '1', 20, 2, 38, '2022-10-24 21:32:31', '2022-10-24 21:32:31', 3510000, 3, 'Trắng'),
(135, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '1', 20, 2, 39, '2022-10-24 21:32:33', '2022-10-24 21:32:33', 3510000, 3, 'Trắng'),
(136, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '1', 20, 2, 40, '2022-10-24 21:32:35', '2022-10-24 21:32:35', 3510000, 3, 'Trắng'),
(137, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '1', 20, 2, 41, '2022-10-24 21:32:39', '2022-10-24 21:32:39', 3510000, 3, 'Trắng'),
(138, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '1', 20, 2, 42, '2022-10-24 21:32:41', '2022-10-24 21:32:41', 3510000, 3, 'Trắng'),
(139, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '1', 20, 2, 43, '2022-10-24 21:32:44', '2022-10-24 21:32:44', 3510000, 3, 'Trắng'),
(140, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '1', 18, 2, 44, '2022-10-25 18:54:15', '2022-10-25 18:54:15', 6210000, 7, 'Phối màu'),
(141, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '1', 18, 2, 45, '2022-10-25 18:54:17', '2022-10-25 18:54:17', 6210000, 7, 'Phối màu'),
(142, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '1', 18, 2, 46, '2022-10-25 18:54:19', '2022-10-25 18:54:19', 6210000, 7, 'Phối màu'),
(143, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '1', 18, 2, 47, '2022-10-25 18:54:21', '2022-10-25 18:54:21', 6210000, 7, 'Phối màu'),
(144, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '1', 18, 2, 48, '2022-10-25 18:54:23', '2022-10-25 18:54:23', 6210000, 7, 'Phối màu'),
(145, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '1', 18, 2, 49, '2022-10-25 18:54:25', '2022-10-25 18:54:25', 6210000, 7, 'Phối màu'),
(146, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '1', 18, 2, 50, '2022-10-25 18:54:27', '2022-10-25 18:54:27', 6210000, 7, 'Phối màu'),
(147, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '1', 18, 2, 51, '2022-10-25 18:54:29', '2022-10-25 18:54:29', 6210000, 7, 'Phối màu'),
(148, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '1', 18, 2, 52, '2022-10-25 18:54:31', '2022-10-25 18:54:31', 6210000, 7, 'Phối màu'),
(149, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '1', 18, 2, 53, '2022-10-25 21:05:50', '2022-10-25 21:05:50', 6210000, 7, 'Phối màu'),
(150, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '1', 18, 2, 54, '2022-10-25 21:05:52', '2022-10-25 21:05:52', 6210000, 7, 'Phối màu'),
(151, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '1', 18, 2, 55, '2022-10-25 21:06:00', '2022-10-25 21:06:00', 6210000, 7, 'Phối màu'),
(152, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 56, '2022-10-26 02:21:09', '2022-10-26 02:21:09', 3510000, 4, 'Đen'),
(153, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 57, '2022-10-26 02:21:10', '2022-10-26 02:21:10', 3510000, 4, 'Đen'),
(154, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 58, '2022-10-26 02:21:12', '2022-10-26 02:21:12', 3510000, 4, 'Đen'),
(155, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 59, '2022-10-26 02:21:13', '2022-10-26 02:21:13', 3510000, 4, 'Đen'),
(156, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 60, '2022-10-26 02:21:15', '2022-10-26 02:21:15', 3510000, 4, 'Đen'),
(157, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 61, '2022-10-26 03:13:53', '2022-10-26 03:13:53', 3510000, 4, 'Đen'),
(158, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 62, '2022-10-26 03:13:56', '2022-10-26 03:13:56', 3510000, 4, 'Đen'),
(159, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 63, '2022-10-26 03:13:57', '2022-10-26 03:13:57', 3510000, 4, 'Đen'),
(160, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 64, '2022-10-26 03:13:59', '2022-10-26 03:13:59', 3510000, 4, 'Đen'),
(161, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 65, '2022-10-26 07:16:13', '2022-10-26 07:16:13', 3510000, 4, 'Đen'),
(162, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 66, '2022-10-26 07:16:44', '2022-10-26 07:16:44', 3510000, 4, 'Đen'),
(163, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 67, '2022-10-26 07:16:50', '2022-10-26 07:16:50', 3510000, 4, 'Đen'),
(164, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 68, '2022-10-26 07:16:58', '2022-10-26 07:16:58', 3510000, 4, 'Đen'),
(165, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 69, '2022-10-26 07:17:55', '2022-10-26 07:17:55', 3510000, 4, 'Đen'),
(166, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 70, '2022-10-26 17:50:06', '2022-10-26 17:50:06', 3510000, 4, 'Đen'),
(167, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 71, '2022-10-26 19:34:22', '2022-10-26 19:34:22', 3510000, 4, 'Đen'),
(168, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 72, '2022-10-26 19:36:39', '2022-10-26 19:36:39', 3510000, 4, 'Đen'),
(169, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 72, '2022-10-26 19:36:39', '2022-10-26 19:36:39', 3510000, 4, 'Đen'),
(170, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 73, '2022-10-26 19:58:38', '2022-10-26 19:58:38', 3510000, 4, 'Đen'),
(171, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 73, '2022-10-26 19:58:38', '2022-10-26 19:58:38', 3510000, 4, 'Đen'),
(172, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 74, '2022-10-26 20:13:22', '2022-10-26 20:13:22', 3510000, 4, 'Đen'),
(173, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 74, '2022-10-26 20:13:22', '2022-10-26 20:13:22', 3510000, 4, 'Đen'),
(174, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 75, '2022-10-26 20:26:12', '2022-10-26 20:26:12', 3510000, 4, 'Đen'),
(175, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 75, '2022-10-26 20:26:12', '2022-10-26 20:26:12', 3510000, 4, 'Đen'),
(176, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 76, '2022-10-26 20:27:33', '2022-10-26 20:27:33', 3510000, 4, 'Đen'),
(177, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 76, '2022-10-26 20:27:33', '2022-10-26 20:27:33', 3510000, 4, 'Đen'),
(178, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 77, '2022-10-26 20:28:36', '2022-10-26 20:28:36', 3510000, 4, 'Đen'),
(179, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 77, '2022-10-26 20:28:36', '2022-10-26 20:28:36', 3510000, 4, 'Đen'),
(180, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 78, '2022-10-26 20:29:54', '2022-10-26 20:29:54', 3510000, 4, 'Đen'),
(181, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 78, '2022-10-26 20:29:54', '2022-10-26 20:29:54', 3510000, 4, 'Đen'),
(182, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 79, '2022-10-26 20:31:09', '2022-10-26 20:31:09', 3510000, 4, 'Đen'),
(183, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 79, '2022-10-26 20:31:09', '2022-10-26 20:31:09', 3510000, 4, 'Đen'),
(184, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '14', 20, 3, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 4, 'Đen'),
(185, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '11', 20, 3, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 3, 'Trắng'),
(186, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '9', 20, 3, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 1, 'Xám'),
(187, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '15', 20, 4, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 4, 'Đen'),
(188, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '13', 20, 4, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 3, 'Trắng'),
(189, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '10', 20, 4, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 1, 'Xám'),
(190, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '11', 20, 1, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 4, 'Đen'),
(191, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '6', 20, 1, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 3, 'Trắng'),
(192, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '7', 20, 1, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 1, 'Xám'),
(193, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '12', 20, 2, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 4, 'Đen'),
(194, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '5', 20, 2, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 3, 'Trắng'),
(195, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '8', 20, 2, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 1, 'Xám'),
(196, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '43', '7', 20, 5, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 3, 'Trắng'),
(197, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '43', '11', 20, 5, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 3510000, 1, 'Xám'),
(198, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '43', '1', 19, 5, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 2000000, 4, 'Đen'),
(199, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '39', '2', 19, 1, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 2000000, 4, 'Đen'),
(200, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '39', '8', 19, 1, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 2000000, 6, 'Đỏ đen'),
(201, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '40', '3', 19, 2, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 2000000, 4, 'Đen'),
(202, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '40', '7', 19, 2, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 2000000, 6, 'Đỏ đen'),
(203, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '41', '4', 19, 3, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 2000000, 4, 'Đen'),
(204, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '41', '6', 19, 3, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 2000000, 6, 'Đỏ đen'),
(205, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '42', '5', 19, 4, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 2000000, 6, 'Đỏ đen'),
(206, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '3', 18, 2, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 6210000, 7, 'Phối màu'),
(207, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '39', '6', 18, 1, 80, '2022-10-26 20:37:16', '2022-10-26 20:37:16', 6210000, 7, 'Phối màu'),
(208, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '14', 20, 3, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 4, 'Đen'),
(209, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '11', 20, 3, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 3, 'Trắng'),
(210, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '9', 20, 3, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 1, 'Xám'),
(211, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '15', 20, 4, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 4, 'Đen'),
(212, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '13', 20, 4, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 3, 'Trắng'),
(213, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '10', 20, 4, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 1, 'Xám'),
(214, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '11', 20, 1, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 4, 'Đen'),
(215, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '6', 20, 1, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 3, 'Trắng'),
(216, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '7', 20, 1, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 1, 'Xám'),
(217, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '12', 20, 2, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 4, 'Đen'),
(218, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '5', 20, 2, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 3, 'Trắng'),
(219, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '8', 20, 2, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 1, 'Xám'),
(220, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '43', '7', 20, 5, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 3, 'Trắng'),
(221, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '43', '11', 20, 5, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 3510000, 1, 'Xám'),
(222, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '43', '1', 19, 5, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 2000000, 4, 'Đen'),
(223, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '39', '2', 19, 1, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 2000000, 4, 'Đen'),
(224, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '39', '8', 19, 1, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 2000000, 6, 'Đỏ đen'),
(225, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '40', '3', 19, 2, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 2000000, 4, 'Đen'),
(226, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '40', '7', 19, 2, 81, '2022-10-26 21:09:35', '2022-10-26 21:09:35', 2000000, 6, 'Đỏ đen'),
(227, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '41', '4', 19, 3, 81, '2022-10-26 21:09:36', '2022-10-26 21:09:36', 2000000, 4, 'Đen'),
(228, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '41', '6', 19, 3, 81, '2022-10-26 21:09:36', '2022-10-26 21:09:36', 2000000, 6, 'Đỏ đen'),
(229, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '42', '5', 19, 4, 81, '2022-10-26 21:09:36', '2022-10-26 21:09:36', 2000000, 6, 'Đỏ đen'),
(230, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '3', 18, 2, 81, '2022-10-26 21:09:36', '2022-10-26 21:09:36', 6210000, 7, 'Phối màu'),
(231, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '39', '6', 18, 1, 81, '2022-10-26 21:09:36', '2022-10-26 21:09:36', 6210000, 7, 'Phối màu'),
(232, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 82, '2022-10-27 19:07:04', '2022-10-27 19:07:04', 3510000, 4, 'Đen'),
(233, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 82, '2022-10-27 19:07:04', '2022-10-27 19:07:04', 3510000, 4, 'Đen'),
(234, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 83, '2022-10-27 19:14:09', '2022-10-27 19:14:09', 3510000, 4, 'Đen'),
(235, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 83, '2022-10-27 19:14:09', '2022-10-27 19:14:09', 3510000, 4, 'Đen'),
(236, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 84, '2022-10-27 19:15:59', '2022-10-27 19:15:59', 3510000, 4, 'Đen'),
(237, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 84, '2022-10-27 19:15:59', '2022-10-27 19:15:59', 3510000, 4, 'Đen'),
(238, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 85, '2022-10-27 19:19:54', '2022-10-27 19:19:54', 3510000, 4, 'Đen'),
(239, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 85, '2022-10-27 19:19:54', '2022-10-27 19:19:54', 3510000, 4, 'Đen'),
(240, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 86, '2022-10-27 19:20:02', '2022-10-27 19:20:02', 3510000, 4, 'Đen'),
(241, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 86, '2022-10-27 19:20:02', '2022-10-27 19:20:02', 3510000, 4, 'Đen'),
(242, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '1', 20, 4, 87, '2022-10-27 19:42:39', '2022-10-27 19:42:39', 3510000, 4, 'Đen'),
(243, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 87, '2022-10-27 19:42:39', '2022-10-27 19:42:39', 3510000, 4, 'Đen'),
(244, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '43', '2', 20, 5, 88, '2022-11-04 12:23:02', '2022-11-04 12:23:02', 3510000, 3, 'Trắng'),
(245, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 89, '2022-11-05 00:34:19', '2022-11-05 00:34:19', 3510000, 4, 'Đen'),
(246, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 90, '2022-11-05 00:44:24', '2022-11-05 00:44:24', 3510000, 4, 'Đen'),
(247, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 91, '2022-11-06 08:28:33', '2022-11-06 08:28:33', 3510000, 4, 'Đen'),
(248, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 92, '2022-11-06 08:29:33', '2022-11-06 08:29:33', 3510000, 4, 'Đen'),
(249, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 93, '2022-11-06 08:30:50', '2022-11-06 08:30:50', 3510000, 4, 'Đen'),
(250, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 94, '2022-11-06 08:35:20', '2022-11-06 08:35:20', 3510000, 4, 'Đen'),
(251, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 95, '2022-11-06 08:35:40', '2022-11-06 08:35:40', 3510000, 4, 'Đen'),
(252, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 96, '2022-11-06 16:36:55', '2022-11-06 16:36:55', 3510000, 4, 'Đen'),
(253, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '2', 20, 3, 97, '2022-11-06 16:40:17', '2022-11-06 16:40:17', 3510000, 4, 'Đen'),
(254, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '2', 20, 2, 97, '2022-11-06 16:40:17', '2022-11-06 16:40:17', 3510000, 4, 'Đen'),
(255, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '1', 20, 2, 98, '2022-11-07 02:11:03', '2022-11-07 02:11:03', 3510000, 3, 'Trắng'),
(256, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 99, '2022-11-17 02:36:32', '2022-11-17 02:36:32', 3510000, 4, 'Đen'),
(257, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '1', 20, 3, 100, '2022-11-17 08:14:25', '2022-11-17 08:14:25', 3510000, 4, 'Đen'),
(258, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '20', 20, 1, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 3510000, 4, 'Đen'),
(259, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '10', 20, 1, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 3510000, 3, 'Trắng'),
(260, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '10', 20, 1, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 3510000, 1, 'Xám'),
(261, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '10', 20, 3, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 3510000, 4, 'Đen'),
(262, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '10', 20, 3, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 3510000, 3, 'Trắng'),
(263, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '10', 20, 3, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 3510000, 1, 'Xám'),
(264, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '10', 20, 2, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 3510000, 4, 'Đen'),
(265, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '10', 20, 2, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 3510000, 1, 'Xám'),
(266, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '10', 20, 4, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 3510000, 3, 'Trắng'),
(267, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '39', '1', 19, 1, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 2000000, 6, 'Đỏ đen'),
(268, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '40', '10', 19, 2, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 2000000, 6, 'Đỏ đen'),
(269, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '40', '9', 19, 2, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 2000000, 4, 'Đen'),
(270, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '41', '11', 19, 3, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 2000000, 4, 'Đen'),
(271, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '41', '9', 19, 3, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 2000000, 6, 'Đỏ đen'),
(272, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '10', 18, 2, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 6210000, 7, 'Phối màu'),
(273, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '39', '10', 18, 1, 101, '2022-11-19 07:18:29', '2022-11-19 07:18:29', 6210000, 7, 'Phối màu'),
(274, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '20', 20, 1, 102, '2022-11-19 07:25:02', '2022-11-19 07:25:02', 3510000, 4, 'Đen'),
(275, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '10', 20, 1, 102, '2022-11-19 07:25:02', '2022-11-19 07:25:02', 3510000, 3, 'Trắng'),
(276, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '10', 20, 1, 102, '2022-11-19 07:25:02', '2022-11-19 07:25:02', 3510000, 1, 'Xám'),
(277, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '10', 20, 3, 102, '2022-11-19 07:25:02', '2022-11-19 07:25:02', 3510000, 4, 'Đen'),
(278, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '10', 20, 3, 102, '2022-11-19 07:25:02', '2022-11-19 07:25:02', 3510000, 3, 'Trắng'),
(279, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '10', 20, 3, 102, '2022-11-19 07:25:02', '2022-11-19 07:25:02', 3510000, 1, 'Xám'),
(280, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '10', 20, 2, 102, '2022-11-19 07:25:03', '2022-11-19 07:25:03', 3510000, 4, 'Đen'),
(281, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '10', 20, 2, 102, '2022-11-19 07:25:03', '2022-11-19 07:25:03', 3510000, 1, 'Xám'),
(282, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '10', 20, 4, 102, '2022-11-19 07:25:03', '2022-11-19 07:25:03', 3510000, 3, 'Trắng'),
(283, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '39', '1', 19, 1, 102, '2022-11-19 07:25:03', '2022-11-19 07:25:03', 2000000, 6, 'Đỏ đen'),
(284, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '40', '10', 19, 2, 102, '2022-11-19 07:25:03', '2022-11-19 07:25:03', 2000000, 6, 'Đỏ đen'),
(285, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '40', '9', 19, 2, 102, '2022-11-19 07:25:03', '2022-11-19 07:25:03', 2000000, 4, 'Đen'),
(286, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '41', '11', 19, 3, 102, '2022-11-19 07:25:03', '2022-11-19 07:25:03', 2000000, 4, 'Đen'),
(287, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '41', '9', 19, 3, 102, '2022-11-19 07:25:03', '2022-11-19 07:25:03', 2000000, 6, 'Đỏ đen'),
(288, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '10', 18, 2, 102, '2022-11-19 07:25:03', '2022-11-19 07:25:03', 6210000, 7, 'Phối màu'),
(289, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '39', '10', 18, 1, 102, '2022-11-19 07:25:03', '2022-11-19 07:25:03', 6210000, 7, 'Phối màu'),
(290, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '20', 20, 1, 103, '2022-11-19 07:25:12', '2022-11-19 07:25:12', 3510000, 4, 'Đen'),
(291, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '10', 20, 1, 103, '2022-11-19 07:25:12', '2022-11-19 07:25:12', 3510000, 3, 'Trắng'),
(292, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '39', '10', 20, 1, 103, '2022-11-19 07:25:12', '2022-11-19 07:25:12', 3510000, 1, 'Xám'),
(293, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '10', 20, 3, 103, '2022-11-19 07:25:13', '2022-11-19 07:25:13', 3510000, 4, 'Đen'),
(294, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '10', 20, 3, 103, '2022-11-19 07:25:13', '2022-11-19 07:25:13', 3510000, 3, 'Trắng'),
(295, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '41', '10', 20, 3, 103, '2022-11-19 07:25:13', '2022-11-19 07:25:13', 3510000, 1, 'Xám'),
(296, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '10', 20, 2, 103, '2022-11-19 07:25:13', '2022-11-19 07:25:13', 3510000, 4, 'Đen'),
(297, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '40', '10', 20, 2, 103, '2022-11-19 07:25:13', '2022-11-19 07:25:13', 3510000, 1, 'Xám'),
(298, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '42', '10', 20, 4, 103, '2022-11-19 07:25:13', '2022-11-19 07:25:13', 3510000, 3, 'Trắng'),
(299, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '39', '1', 19, 1, 103, '2022-11-19 07:25:13', '2022-11-19 07:25:13', 2000000, 6, 'Đỏ đen'),
(300, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '40', '10', 19, 2, 103, '2022-11-19 07:25:13', '2022-11-19 07:25:13', 2000000, 6, 'Đỏ đen'),
(301, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '40', '9', 19, 2, 103, '2022-11-19 07:25:13', '2022-11-19 07:25:13', 2000000, 4, 'Đen'),
(302, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '41', '11', 19, 3, 103, '2022-11-19 07:25:13', '2022-11-19 07:25:13', 2000000, 4, 'Đen'),
(303, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '41', '9', 19, 3, 103, '2022-11-19 07:25:13', '2022-11-19 07:25:13', 2000000, 6, 'Đỏ đen'),
(304, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '40', '10', 18, 2, 103, '2022-11-19 07:25:13', '2022-11-19 07:25:13', 6210000, 7, 'Phối màu'),
(305, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '39', '10', 18, 1, 103, '2022-11-19 07:25:13', '2022-11-19 07:25:13', 6210000, 7, 'Phối màu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_san_pham`
--

CREATE TABLE `chi_tiet_san_pham` (
  `ms_ctsp` bigint(20) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `ms_kc` bigint(20) NOT NULL,
  `ms_sp` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `so_luong_da_ban` int(11) DEFAULT NULL,
  `ms_mau` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_san_pham`
--

INSERT INTO `chi_tiet_san_pham` (`ms_ctsp`, `soluong`, `ms_kc`, `ms_sp`, `created_at`, `updated_at`, `so_luong_da_ban`, `ms_mau`) VALUES
(70, 30, 1, 20, '2022-10-16 20:01:12', '2022-11-19 07:35:34', 30, 3),
(71, 169, 2, 20, '2022-10-16 20:03:40', '2022-11-07 02:14:20', 1, 3),
(72, 60, 3, 20, '2022-10-16 20:03:55', '2022-11-19 07:35:34', 20, 3),
(73, 38, 4, 20, '2022-10-16 20:04:06', '2022-11-19 07:35:34', 62, 3),
(74, 110, 5, 20, '2022-10-16 20:04:32', '2022-10-26 21:07:14', 0, 3),
(75, 90, 1, 20, '2022-10-16 20:05:55', '2022-11-19 07:35:34', 20, 1),
(76, 100, 2, 20, '2022-10-16 20:06:19', '2022-11-19 07:35:34', 20, 1),
(77, 110, 3, 20, '2022-10-16 20:06:37', '2022-11-19 07:35:34', 20, 1),
(78, 140, 4, 20, '2022-10-16 20:06:58', '2022-10-26 21:07:14', 0, 1),
(79, 150, 5, 20, '2022-10-16 20:09:07', '2022-10-26 21:07:14', 0, 1),
(80, 60, 1, 20, '2022-10-16 20:17:58', '2022-11-19 07:35:34', 40, 4),
(81, 48, 2, 20, '2022-10-16 20:18:02', '2022-11-19 07:35:34', 62, 4),
(82, 68, 3, 20, '2022-10-16 20:18:08', '2022-11-19 07:35:34', 32, 4),
(83, 97, 4, 20, '2022-10-16 20:18:13', '2022-10-27 21:11:00', 3, 4),
(84, 178, 3, 19, '2022-10-16 20:35:31', '2022-11-19 07:35:34', 22, 4),
(85, 100, 1, 19, '2022-10-16 20:35:39', '2022-10-26 21:07:14', 0, 4),
(86, 82, 2, 19, '2022-10-16 20:35:44', '2022-11-19 07:35:34', 18, 4),
(87, 100, 5, 19, '2022-10-16 20:35:55', '2022-10-26 21:07:14', 0, 4),
(88, 108, 1, 19, '2022-10-16 20:39:58', '2022-11-19 07:35:34', 2, 6),
(89, 90, 2, 19, '2022-10-16 20:40:03', '2022-11-19 07:35:34', 30, 6),
(90, 112, 3, 19, '2022-10-16 20:40:09', '2022-11-19 07:35:34', 18, 6),
(91, 140, 4, 19, '2022-10-16 20:40:14', '2022-10-26 21:07:14', 0, 6),
(92, 80, 1, 18, '2022-10-17 00:48:39', '2022-11-19 07:35:34', 20, 7),
(93, 60, 2, 18, '2022-10-17 00:48:44', '2022-11-19 07:35:34', 40, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `comment_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_ms_sp` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `comment_tatus` int(11) NOT NULL DEFAULT 0,
  `comment_reply` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_name`, `comment_value`, `comment_ms_sp`, `created_at`, `updated_at`, `comment_tatus`, `comment_reply`) VALUES
(7, 'Bùi Công Minh', 'Sản phẩm đẹp', 20, '2022-10-11 00:16:34', '2022-10-11 00:16:34', 0, NULL),
(8, 'Bùi Công Minh', 'sản phẩm đẹp', 20, '2022-10-11 00:17:49', '2022-10-11 00:17:49', 0, NULL),
(9, 'Bùi Công Minh', 'sản phẩm đẹp', 20, '2022-10-11 00:18:23', '2022-11-05 12:50:37', 1, 'cảm ơn bạn đã bình luận về sản phẩm'),
(10, 'Bùi Công Minh', 'sản phẩm đẹp', 20, '2022-10-11 00:22:49', '2022-10-11 00:22:49', 0, NULL),
(11, 'Bùi Công Minh', 'sản phẩm đẹp', 20, '2022-10-11 07:23:40', '2022-10-11 07:23:40', 0, NULL),
(12, 'Bùi Công Minh', 'Sản phẩm đẹp quá', 20, '2022-10-11 07:36:43', '2022-10-11 07:36:43', 0, NULL),
(13, 'Bùi Công Minh', 'sản phẩm đẹp quá', 20, '2022-10-11 07:36:59', '2022-10-11 07:36:59', 0, NULL),
(14, 'Bùi Công Minh', 'sản phẩm đẹp', 20, '2022-10-28 01:46:22', '2022-10-28 01:46:22', 0, NULL),
(15, 'Bùi Công Minh', 'sản phẩm đẹp', 19, '2022-11-01 06:58:06', '2022-11-05 12:51:02', 1, 'cảm ơn bạn'),
(16, 'Bùi Công Minh', 'sản phẩm rất đẹp', 19, '2022-11-05 12:55:31', '2022-11-05 12:55:56', 1, 'cảm ơn bạn đã để lại bình luận'),
(17, 'Bùi Công Minh', 'sản phẩm đẹp', 20, '2022-11-09 06:07:07', '2022-11-09 06:07:07', 0, NULL),
(18, 'Bùi Công Minh', 'Sản phẩm đẹp', 18, '2022-11-09 06:07:59', '2022-11-09 06:07:59', 0, NULL),
(19, 'Bùi Công Minh', '123', 20, '2022-11-18 07:59:08', '2022-11-18 07:59:08', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_oder`
--

CREATE TABLE `comment_oder` (
  `comment_oder_id` bigint(20) UNSIGNED NOT NULL,
  `comment_oder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_oder_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_oder_reply` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_oder_ms_dh` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `comment_oder_tatus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment_oder`
--

INSERT INTO `comment_oder` (`comment_oder_id`, `comment_oder_name`, `comment_oder_value`, `comment_oder_reply`, `comment_oder_ms_dh`, `created_at`, `updated_at`, `comment_oder_tatus`) VALUES
(5, 'Bùi Công Minh', 'Sản phẩm rất đẹp', 'Cảm ơn bạn', 47, '2022-10-27 09:49:46', '2022-10-27 09:49:46', 1),
(6, 'Bùi Công Minh', 'Giao hang nhanh chóng', 'Cảm ơn bản đã mua hàng ở cửa hàng  chúng tôi !!', 47, '2022-10-27 09:50:12', '2022-10-27 09:50:12', 1),
(7, 'Bùi Công Minh', '1', NULL, 47, '2022-10-27 10:52:50', '2022-10-27 10:52:50', 0),
(8, 'Bùi Công Minh', '2', NULL, 47, '2022-10-27 10:52:52', '2022-10-27 10:52:52', 0),
(9, 'Bùi Công Minh', '3', '3', 47, '2022-10-27 10:52:54', '2022-10-27 10:52:54', 1),
(10, 'Bùi Công Minh', '4', NULL, 47, '2022-10-27 10:52:55', '2022-10-27 10:52:55', 0),
(11, 'Bùi Công Minh', '5', '5', 47, '2022-10-27 10:52:58', '2022-10-27 10:52:58', 1),
(12, 'Bùi Công Minh', 'Sản phẩm đẹp', 'Cảm ơn bạn đã đánh giá', 79, '2022-10-27 12:10:34', '2022-11-01 07:03:15', 1),
(13, 'Bùi Công Minh', 'giao hàng nhanh chóng', 'Cảm ơn bạn đã đặt hàng tại cửa hàng', 79, '2022-10-27 12:10:47', '2022-10-27 12:10:47', 1),
(14, 'Bùi Công Minh', 'sản phẩm đẹp', NULL, 47, '2022-10-28 01:47:02', '2022-10-28 01:47:02', 0),
(15, 'Bùi Công Minh', 'sản phẩm đẹp', NULL, 47, '2022-10-28 01:49:10', '2022-10-28 01:49:10', 0),
(16, 'Bùi Công Minh', 'sản phẩm đẹp', 'cảm ơn bạn', 47, '2022-11-01 07:01:40', '2022-11-01 07:04:14', 1),
(17, 'Bùi Công Minh', 'giao hàng nhanh', 'cảm ơn bn', 47, '2022-11-07 02:25:03', '2022-11-07 02:26:37', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_gia_sao`
--

CREATE TABLE `danh_gia_sao` (
  `ms_dgs` bigint(20) UNSIGNED NOT NULL,
  `so_sao` int(11) DEFAULT NULL,
  `ms_sp` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ms_kh` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_gia_sao`
--

INSERT INTO `danh_gia_sao` (`ms_dgs`, `so_sao`, `ms_sp`, `created_at`, `updated_at`, `ms_kh`) VALUES
(18, 3, 20, '2022-10-27 18:41:56', '2022-10-27 18:42:21', 16),
(19, 3, 19, '2022-10-27 18:42:47', '2022-10-27 18:42:57', 16),
(20, 5, 20, '2022-10-27 18:44:54', '2022-11-05 12:03:48', 19),
(21, 5, 19, '2022-11-05 12:56:21', '2022-11-05 12:56:21', 19),
(22, 4, 18, '2022-11-09 06:07:50', '2022-11-09 06:07:50', 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_gia_sao_don_hang`
--

CREATE TABLE `danh_gia_sao_don_hang` (
  `ms_dgsdh` bigint(20) UNSIGNED NOT NULL,
  `so_sao_dh` int(11) DEFAULT NULL,
  `ms_dh` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_gia_sao_don_hang`
--

INSERT INTO `danh_gia_sao_don_hang` (`ms_dgsdh`, `so_sao_dh`, `ms_dh`, `created_at`, `updated_at`) VALUES
(1, 5, 47, '2022-10-27 05:04:08', '2022-11-07 02:25:09'),
(2, 4, 79, '2022-10-27 05:10:22', '2022-10-27 05:11:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doanh_thus`
--

CREATE TABLE `doanh_thus` (
  `ms_dt` bigint(20) UNSIGNED NOT NULL,
  `ngay_dh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tien_san_pham_dt` bigint(20) DEFAULT NULL,
  `loi_nhuan` bigint(20) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `tongdon` int(11) DEFAULT NULL,
  `phi_ship` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `doanh_thus`
--

INSERT INTO `doanh_thus` (`ms_dt`, `ngay_dh`, `tien_san_pham_dt`, `loi_nhuan`, `soluong`, `tongdon`, `phi_ship`, `created_at`, `updated_at`) VALUES
(1, '2022-11-06', 31590000, 15550000, 9, 6, 265000, '2022-11-06 09:35:36', '2022-11-06 16:41:27'),
(2, '2022-11-05', 20040000, 14000000, 6, 3, 125000, '2022-11-06 02:35:36', '2022-11-06 02:38:15'),
(3, '2022-11-04', 21040000, 14000000, 7, 3, 125000, '2022-11-06 02:35:36', '2022-11-06 02:38:15'),
(4, '2022-11-03', 20140000, 14000000, 5, 3, 125000, '2022-11-06 02:35:36', '2022-11-06 02:38:15'),
(5, '2022-11-02', 23040000, 14000000, 3, 3, 125000, '2022-11-06 02:35:36', '2022-11-06 02:38:15'),
(6, '2022-11-01', 24040000, 14000000, 4, 3, 125000, '2022-11-06 02:35:36', '2022-11-06 02:38:15'),
(7, '2022-11-07', 3510000, 1510000, 1, 1, 30000, '2022-11-07 02:18:12', '2022-11-07 02:18:12'),
(8, '2022-11-19', 1110400000, 490400000, 320, 2, 0, '2022-11-19 07:23:08', '2022-11-19 07:31:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `ms_dh` bigint(20) UNSIGNED NOT NULL,
  `tt_dh` int(11) DEFAULT NULL,
  `tt_thanh_toan_dh` int(11) DEFAULT NULL,
  `ms_ttgh` bigint(20) DEFAULT NULL,
  `nv_id` bigint(20) DEFAULT NULL,
  `ms_kh` bigint(20) DEFAULT NULL,
  `pttt_dh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tong_tien_dh` bigint(20) DEFAULT NULL,
  `ms_nvc` int(11) DEFAULT NULL,
  `tt_gh_shipper` int(11) DEFAULT NULL,
  `phi_ship_dh` int(11) DEFAULT NULL,
  `ngay_dh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`ms_dh`, `tt_dh`, `tt_thanh_toan_dh`, `ms_ttgh`, `nv_id`, `ms_kh`, `pttt_dh`, `created_at`, `updated_at`, `tong_tien_dh`, `ms_nvc`, `tt_gh_shipper`, `phi_ship_dh`, `ngay_dh`) VALUES
(34, 2, 1, 33, NULL, 16, '1', '2022-10-21 01:24:03', '2022-10-27 20:50:53', 411230000, NULL, NULL, 30000, '2022-11-06'),
(44, 8, 1, 37, 5, 19, '1', '2022-10-25 18:54:15', '2022-10-25 20:35:09', 6210000, 11, NULL, 30000, '2022-11-06'),
(45, 7, 1, 37, 5, 19, '1', '2022-10-25 18:54:17', '2022-10-25 20:35:14', 6210000, 11, NULL, 30000, '2022-11-06'),
(46, 3, 1, 37, 5, 19, '1', '2022-10-25 18:54:19', '2022-10-25 21:09:41', 6210000, 11, 1, 30000, '2022-11-06'),
(47, 4, 1, 37, 5, 19, '1', '2022-10-25 18:54:21', '2022-10-25 20:28:31', 6210000, 11, 1, 30000, '2022-11-06'),
(48, 4, 1, 37, 5, 19, '1', '2022-10-25 18:54:23', '2022-10-25 20:24:27', 6210000, 11, 1, 30000, '2022-11-06'),
(49, 5, 1, 37, 5, 19, '1', '2022-10-25 18:54:25', '2022-10-25 20:19:28', 6210000, 11, 2, 30000, '2022-11-06'),
(50, 5, 1, 37, 5, 19, '1', '2022-10-25 18:54:27', '2022-10-25 20:29:30', 6210000, 11, 2, 30000, '2022-11-06'),
(51, 2, 1, 37, 5, 19, '1', '2022-10-25 18:54:29', '2022-10-25 20:30:54', 6210000, NULL, NULL, 30000, '2022-11-06'),
(53, 3, 1, 37, 5, 19, '1', '2022-10-25 21:05:50', '2022-10-25 21:08:35', 6210000, 11, NULL, 30000, '2022-11-06'),
(54, 3, 1, 37, 5, 19, '1', '2022-10-25 21:05:52', '2022-10-25 21:09:45', 6210000, 11, 2, 30000, '2022-11-06'),
(55, 8, 1, 37, 5, 19, '1', '2022-10-25 21:05:59', '2022-11-05 00:06:39', 6210000, 11, NULL, 30000, '2022-11-06'),
(65, 1, 1, 40, NULL, 19, '1', '2022-10-26 07:16:13', '2022-10-26 07:16:13', 3510000, NULL, NULL, 55000, '2022-11-06'),
(66, 1, 1, 39, NULL, 19, '1', '2022-10-26 07:16:44', '2022-10-26 07:16:44', 3510000, NULL, NULL, 70000, '2022-11-06'),
(67, 1, 1, 38, NULL, 19, '1', '2022-10-26 07:16:50', '2022-10-26 07:16:50', 3510000, NULL, NULL, 60000, '2022-11-06'),
(68, 1, 1, 37, NULL, 19, '1', '2022-10-26 07:16:58', '2022-10-26 07:16:58', 3510000, NULL, NULL, 30000, '2022-11-06'),
(70, 1, 1, 38, NULL, 19, '1', '2022-10-26 17:50:05', '2022-10-26 17:50:05', 3510000, NULL, NULL, 60000, '2022-11-06'),
(72, 1, 1, 39, NULL, 19, '1', '2022-10-26 19:36:38', '2022-10-26 19:36:38', 7020000, NULL, NULL, 70000, '2022-11-06'),
(73, 1, 1, 38, NULL, 19, '1', '2022-10-26 19:58:37', '2022-10-26 19:58:37', 7020000, NULL, NULL, 60000, '2022-11-06'),
(74, 1, 1, 39, NULL, 19, '1', '2022-10-26 20:13:22', '2022-10-26 20:13:22', 7020000, NULL, NULL, 70000, '2022-11-06'),
(75, 1, 1, 37, NULL, 19, '1', '2022-10-26 20:26:12', '2022-10-26 20:26:12', 7020000, NULL, NULL, 30000, '2022-11-06'),
(76, 1, 1, 37, NULL, 19, '1', '2022-10-26 20:27:32', '2022-10-26 20:27:32', 7020000, NULL, NULL, 30000, '2022-11-06'),
(77, 1, 1, 40, NULL, 19, '1', '2022-10-26 20:28:36', '2022-10-26 20:28:36', 7020000, NULL, NULL, 55000, '2022-11-06'),
(79, 4, 1, 39, 5, 19, '1', '2022-10-26 20:31:09', '2022-10-26 21:03:03', 7020000, 11, 1, 70000, '2022-11-06'),
(80, 5, 1, 37, 5, 19, '1', '2022-10-26 20:37:16', '2022-10-26 21:07:14', 615780000, 11, 2, 30000, '2022-11-06'),
(82, 2, 2, 38, NULL, 19, '2', '2022-10-27 19:07:03', '2022-10-27 21:05:49', 7020000, NULL, NULL, 30000, '2022-11-06'),
(83, 5, 2, 38, NULL, 19, '2', '2022-10-27 19:14:09', '2022-10-27 21:11:00', 7020000, 11, 2, 30000, '2022-11-06'),
(85, 1, 2, 40, NULL, 19, '2', '2022-10-27 19:19:54', '2022-10-27 19:19:54', 7020000, NULL, NULL, 30000, '2022-11-06'),
(86, 3, 1, 40, NULL, 19, '1', '2022-10-27 19:20:02', '2022-10-27 21:03:39', 7020000, 11, NULL, 55000, '2022-11-06'),
(87, 1, 2, 39, NULL, 19, '2', '2022-10-27 19:42:39', '2022-10-27 19:42:39', 7020000, NULL, NULL, 70000, '2022-11-06'),
(89, 4, 2, 40, 6, 19, '2', '2022-11-05 00:34:19', '2022-11-05 00:42:56', 3510000, 11, 1, 55000, '2022-11-06'),
(90, 3, 2, 39, 6, 19, '2', '2022-11-05 00:44:24', '2022-11-05 00:46:55', 3510000, 11, 2, 70000, '2022-11-06'),
(92, 4, 1, 40, 6, 19, '1', '2022-11-06 08:29:33', '2022-11-06 09:38:15', 3510000, 11, 1, 55000, '2022-11-06'),
(93, 4, 2, 39, 6, 19, '2', '2022-11-06 08:30:50', '2022-11-06 09:37:37', 3510000, 11, 1, 70000, '2022-11-06'),
(94, 4, 1, 39, 6, 19, '1', '2022-11-06 08:35:20', '2022-11-06 09:35:36', 3510000, 11, 1, 70000, '2022-11-06'),
(95, 4, 2, 39, 6, 19, '2', '2022-11-06 08:35:40', '2022-11-06 09:36:55', 3510000, 11, 1, 70000, '2022-11-06'),
(96, 4, 1, 39, 6, 19, '1', '2022-11-06 16:36:55', '2022-11-06 16:38:30', 3510000, 11, 1, 70000, '2022-11-06'),
(97, 4, 1, 39, 6, 19, '1', '2022-11-06 16:40:17', '2022-11-06 16:41:27', 14040000, 11, 1, 70000, '2022-11-06'),
(98, 4, 1, 37, 6, 19, '1', '2022-11-07 02:11:03', '2022-11-07 02:18:12', 3510000, 11, 1, 30000, '2022-11-07'),
(99, 1, 1, 36, NULL, 16, '1', '2022-11-17 02:36:32', '2022-11-17 02:36:32', 3510000, NULL, NULL, 70000, '2022-11-17'),
(101, 4, 1, 42, 6, 19, '1', '2022-11-19 07:18:29', '2022-11-19 07:23:08', 555200000, 11, 1, 60000, '2022-11-19'),
(102, 4, 1, 42, 6, 19, '1', '2022-11-19 07:25:01', '2022-11-19 07:31:26', 555200000, 11, 1, 60000, '2022-11-19'),
(103, 5, 1, 42, 6, 19, '1', '2022-11-19 07:25:12', '2022-11-19 07:35:34', 555200000, 11, 2, 60000, '2022-11-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `gioi_tinh`
--

CREATE TABLE `gioi_tinh` (
  `ms_gt` bigint(20) UNSIGNED NOT NULL,
  `ten_gt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_en_gt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gioi_tinh`
--

INSERT INTO `gioi_tinh` (`ms_gt`, `ten_gt`, `ten_en_gt`, `created_at`, `updated_at`) VALUES
(1, 'Nam', 'Male', '2022-09-12 03:56:36', '2022-09-12 03:56:45'),
(2, 'Nữ', 'Female', '2022-09-12 03:57:03', '2022-09-12 03:57:09'),
(3, 'Unisex', 'Unisex', '2022-09-12 03:57:28', '2022-09-12 03:57:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh_san_pham`
--

CREATE TABLE `hinh_anh_san_pham` (
  `ms_ha` bigint(20) UNSIGNED NOT NULL,
  `ten_ha_phu_sp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ha_phu_sp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ms_sp` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinh_anh_san_pham`
--

INSERT INTO `hinh_anh_san_pham` (`ms_ha`, `ten_ha_phu_sp`, `ha_phu_sp`, `ms_sp`, `created_at`, `updated_at`) VALUES
(10, '1.jpg', '/storage/product_img/TAvsFUpHJj26bG3ieRdL.jpg', 20, '2022-09-20 02:11:17', '2022-09-20 02:11:17'),
(11, '2.jpg', '/storage/product_img/xmL35FdBrFofuEJ7bM48.jpg', 20, '2022-09-20 02:11:17', '2022-09-20 02:11:17'),
(12, '20.PNG', '/storage/product_img/PzuLb10YL7khtGKb8gEl.PNG', 20, '2022-09-20 02:11:17', '2022-09-20 02:11:17'),
(13, '30.jpg', '/storage/product_img/MYQq4iIqFXQdF8EJpc3T.jpg', 19, '2022-09-21 02:41:58', '2022-09-21 02:41:58'),
(14, '31.jpg', '/storage/product_img/xJvbNPCoWYhBO2NnTMVg.jpg', 19, '2022-09-21 02:41:58', '2022-09-21 02:41:58'),
(15, '32.jpg', '/storage/product_img/TDJfxXzqeRjz3d8gcD6O.jpg', 19, '2022-09-21 02:41:58', '2022-09-21 02:41:58'),
(16, '33.jpg', '/storage/product_img/oNnidDUBkDXKrNyU3uu5.jpg', 19, '2022-09-21 02:41:58', '2022-09-21 02:41:58'),
(17, '34.jpg', '/storage/product_img/kYujWwMZ46pW4ziQLkO4.jpg', 18, '2022-09-21 02:44:13', '2022-09-21 02:44:13'),
(18, '35.jpg', '/storage/product_img/o5f0nZXlyD5rsGKG2KMJ.jpg', 18, '2022-09-21 02:44:13', '2022-09-21 02:44:13'),
(19, '36.jpg', '/storage/product_img/XnWg1V8cTyQHMUVgkDRy.jpg', 18, '2022-09-21 02:44:13', '2022-09-21 02:44:13'),
(20, '37.jpg', '/storage/product_img/zFPIbGAFIiH5uAlRWAG6.jpg', 18, '2022-09-21 02:44:13', '2022-09-21 02:44:13'),
(21, '35.jpeg', '/storage/product_img/zZQlBaYKJhuZYeoNg6Ij.jpeg', 17, '2022-09-21 02:47:40', '2022-09-21 02:47:40'),
(22, '38.jpg', '/storage/product_img/6iP1h7BC4C9ZTBkyIrVr.jpg', 17, '2022-09-21 02:47:41', '2022-09-21 02:47:41'),
(23, '39.jpg', '/storage/product_img/vErx4grYvBx990WH2Jl7.jpg', 17, '2022-09-21 02:47:41', '2022-09-21 02:47:41'),
(24, '40.jpg', '/storage/product_img/XTWdbbqID0DXhbZX5iZs.jpg', 17, '2022-09-21 02:47:41', '2022-09-21 02:47:41'),
(25, '41.jpg', '/storage/product_img/VWeksmdlJaW4aPWhQlPo.jpg', 16, '2022-09-21 02:54:07', '2022-09-21 02:54:07'),
(26, '42.jpg', '/storage/product_img/FSbMq4F1SWs3SGcvelSy.jpg', 16, '2022-09-21 02:54:07', '2022-09-21 02:54:07'),
(27, '43.jpg', '/storage/product_img/g4saAjvIWy3NluBk5XgY.jpg', 16, '2022-09-21 02:54:07', '2022-09-21 02:54:07'),
(28, '44.jpg', '/storage/product_img/V2XImCvfabxKJrVK2rbL.jpg', 16, '2022-09-21 02:54:07', '2022-09-21 02:54:07'),
(29, '46.webp', '/storage/product_img/eTR8fSKNLvI0HYoEpucJ.webp', 14, '2022-09-21 03:00:57', '2022-09-21 03:00:57'),
(30, '47.png', '/storage/product_img/dxvwjkZnqgUX5QYrXDeP.png', 14, '2022-09-21 03:00:57', '2022-09-21 03:00:57'),
(31, '49.jpg', '/storage/product_img/4nUAROiLVYIiEGWA9dZx.jpg', 14, '2022-09-21 03:00:57', '2022-09-21 03:00:57'),
(32, '50.jpg', '/storage/product_img/17oBVbSe42inwut7H0uG.jpg', 13, '2022-09-21 03:08:17', '2022-09-21 03:08:17'),
(33, '51.webp', '/storage/product_img/gZiLWyw1G97FFY9oa2FR.webp', 13, '2022-09-21 03:08:17', '2022-09-21 03:08:17'),
(34, '52.jpg', '/storage/product_img/0s1fbNNBnnuZwPd4C6SD.jpg', 13, '2022-09-21 03:08:17', '2022-09-21 03:08:17'),
(35, '53.jpg', '/storage/product_img/Uj6qoOrBUl2mIwCFr0kQ.jpg', 13, '2022-09-21 03:08:17', '2022-09-21 03:08:17'),
(36, 'adidas-hoops-2-0-kids-white-fw9120.jpg', '/storage/product_img/CbTQQXDJuncS64O8yIqF.jpg', 10, '2022-09-21 03:10:36', '2022-09-21 03:10:36'),
(37, 'giay-the-thao-adidas-hoops-2-0-fw8250-mau-trang-62fb1841726a1-16082022110833.jpg', '/storage/product_img/5enmcNkkgysXFcWBrBbH.jpg', 10, '2022-09-21 03:10:36', '2022-09-21 03:10:36'),
(38, 'images.jpg', '/storage/product_img/njKMhP7lA858GBOcr2uz.jpg', 10, '2022-09-21 03:10:36', '2022-09-21 03:10:36'),
(39, '51.jpg', '/storage/product_img/pAYcpmZcJIEYOEg7oMZ9.jpg', 9, '2022-09-21 18:36:21', '2022-09-21 18:36:21'),
(40, '52.webp', '/storage/product_img/05n5Y46B4CwEDA0Vr8qZ.webp', 9, '2022-09-21 18:36:21', '2022-09-21 18:36:21'),
(41, '54.jpg', '/storage/product_img/61uoYvfc0JiU8IEIWBeU.jpg', 9, '2022-09-21 18:36:21', '2022-09-21 18:36:21'),
(42, '55.jpg', '/storage/product_img/wKm04lSdQ9JmCqmjZx8y.jpg', 8, '2022-09-21 18:38:25', '2022-09-21 18:38:25'),
(43, '56.jpg', '/storage/product_img/bxhzjCct5Rr0862SGwhu.jpg', 8, '2022-09-21 18:38:26', '2022-09-21 18:38:26'),
(44, '57.jpg', '/storage/product_img/RvSa9lZpwlHtplaDFS5i.jpg', 8, '2022-09-21 18:38:26', '2022-09-21 18:38:26'),
(45, '57.PNG', '/storage/product_img/326Ns0kxXxAdTFzF6tYe.PNG', 7, '2022-09-21 18:42:57', '2022-09-21 18:42:57'),
(46, '58.PNG', '/storage/product_img/hqkLlbgsCSPp6Qji5pfo.PNG', 7, '2022-09-21 18:42:57', '2022-09-21 18:42:57'),
(47, '60.jpg', '/storage/product_img/oj03mqrPSaw03Z9ef6LL.jpg', 6, '2022-09-21 18:44:38', '2022-09-21 18:44:38'),
(48, '61.jpg', '/storage/product_img/p3Okeqb6OkSZ8E0rm8PR.jpg', 6, '2022-09-21 18:44:38', '2022-09-21 18:44:38'),
(49, '62.jpg', '/storage/product_img/QUxdtVW8YNjGb1ppJAfO.jpg', 6, '2022-09-21 18:44:38', '2022-09-21 18:44:38'),
(50, '63.webp', '/storage/product_img/3vmRwuMJfmm7cvgXHy79.webp', 6, '2022-09-21 18:44:38', '2022-09-21 18:44:38'),
(51, '65.webp', '/storage/product_img/OlKQL73LvTvYaPRmxlga.webp', 5, '2022-09-21 18:55:23', '2022-09-21 18:55:23'),
(52, '66.jpeg', '/storage/product_img/tDceyAjED45fWMpGCtUA.jpeg', 5, '2022-09-21 18:55:24', '2022-09-21 18:55:24'),
(53, '67.webp', '/storage/product_img/YfSV1FzYbZZYtnjZNHio.webp', 5, '2022-09-21 18:55:24', '2022-09-21 18:55:24'),
(54, '65.jpg', '/storage/product_img/NrfDXiKxFbOuAl0HGGok.jpg', 4, '2022-09-22 01:20:31', '2022-09-22 01:20:31'),
(55, '66.jpg', '/storage/product_img/44Rf0gSqUTft6qgA5FDf.jpg', 4, '2022-09-22 01:20:31', '2022-09-22 01:20:31'),
(56, '67.jpg', '/storage/product_img/Lx3MVCw5eTcG5KujpzDp.jpg', 4, '2022-09-22 01:20:31', '2022-09-22 01:20:31'),
(57, '68.jpg', '/storage/product_img/yDxmI7C0IMQMVIdGFVqB.jpg', 4, '2022-09-22 01:20:31', '2022-09-22 01:20:31'),
(58, '69.jpg', '/storage/product_img/xEuocIeRdQO1ytYjVUBA.jpg', 3, '2022-09-22 01:21:42', '2022-09-22 01:21:42'),
(59, '70.jpg', '/storage/product_img/3oepyGwNCtAXBYhOaojM.jpg', 3, '2022-09-22 01:21:42', '2022-09-22 01:21:42'),
(60, '71.jpg', '/storage/product_img/x44cpb1aXVUog5DB8Jv1.jpg', 3, '2022-09-22 01:21:42', '2022-09-22 01:21:42'),
(61, '70.png', '/storage/product_img/yQqut81immTfaPDsj0f7.png', 2, '2022-09-22 01:23:32', '2022-09-22 01:23:32'),
(62, '71.webp', '/storage/product_img/RVUlxVFCXCsiMd7SqbA7.webp', 2, '2022-09-22 01:23:32', '2022-09-22 01:23:32'),
(63, '72.webp', '/storage/product_img/0lKja4R2yL3Y7TsNUvpf.webp', 2, '2022-09-22 01:23:32', '2022-09-22 01:23:32'),
(64, '73.webp', '/storage/product_img/kETnN5GN0hcHL6mXEKzs.webp', 2, '2022-09-22 01:23:32', '2022-09-22 01:23:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `ms_kh` bigint(20) UNSIGNED NOT NULL,
  `email_kh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt_kh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dc_kh` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_kh` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ten_kh` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `khachhang_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_lan_huy_don` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`ms_kh`, `email_kh`, `sdt_kh`, `dc_kh`, `password_kh`, `created_at`, `updated_at`, `ten_kh`, `khachhang_token`, `so_lan_huy_don`) VALUES
(16, 'buicongminh2018@gmail.com', '0944235566', 'cần thơ', 'e10adc3949ba59abbe56e057f20f883e', '2022-10-05 00:42:09', '2022-10-25 18:01:39', 'Bùi Công Minh', 'i0YKJO9M62HdrKKS', 15),
(19, 'buicongminh2023@gmail.com', '0944235566', 'cần thơ', 'e10adc3949ba59abbe56e057f20f883e', '2022-10-05 00:46:52', '2022-11-19 07:35:34', 'Bùi Công Minh', NULL, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kich_co`
--

CREATE TABLE `kich_co` (
  `ms_kc` bigint(20) UNSIGNED NOT NULL,
  `kichco` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kich_co`
--

INSERT INTO `kich_co` (`ms_kc`, `kichco`, `created_at`, `updated_at`) VALUES
(1, 39, '2022-09-21 02:17:04', '2022-09-21 02:17:04'),
(2, 40, '2022-09-21 02:17:09', '2022-09-21 02:17:09'),
(3, 41, '2022-09-21 02:17:13', '2022-09-21 02:17:13'),
(4, 42, '2022-09-21 02:17:18', '2022-09-21 02:17:18'),
(5, 43, '2022-09-21 02:17:27', '2022-09-21 02:17:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kieu_dang`
--

CREATE TABLE `kieu_dang` (
  `ms_kd` bigint(20) UNSIGNED NOT NULL,
  `ten_kd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_en_kd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ha_kd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_ha_kd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kieu_dang`
--

INSERT INTO `kieu_dang` (`ms_kd`, `ten_kd`, `ten_en_kd`, `created_at`, `updated_at`, `ha_kd`, `ten_ha_kd`) VALUES
(1, 'Giày thể thao', 'Sneakers', '2022-09-12 03:16:50', '2022-10-10 02:29:32', '/storage/Kieu_Dang/zC5xeDWe2V0QJ1X225DY.jpg', 'pngtree-sneaker-shoe-logos-can-be-used-for-store-logos-or-shoe-image_340677.jpg'),
(3, 'Giày lười', 'Loafer', '2022-09-12 03:17:26', '2022-10-10 02:22:33', '/storage/Kieu_Dang/xb8am9AXXm8PcKubuSzw.png', 'Gucci-1953-horsebit-leather-loafer.png'),
(4, 'Giày Slip On', 'Slip on', '2022-09-12 03:44:24', '2022-10-10 02:22:13', '/storage/Kieu_Dang/P28gD0kTFtSCZOz9l1is.jpg', 'slip_lon.jpg'),
(5, 'Sandals', 'Sandals', '2022-09-12 03:46:39', '2022-09-12 03:46:39', '/storage/Kieu_Dang/Md7BFTwpWznUt3xRPl2c.jpg', 'sandals-logo-design-side-view-shoes-symbol-vector-clipart-drawing-white-blank-background-sandals-logo-design-side-view-215312667.jpg'),
(6, 'Giày cao gót', 'pumps', '2022-09-12 03:49:40', '2022-10-10 02:24:18', '/storage/Kieu_Dang/uEW4xpwdsNRfX5fHuz0U.jpg', '31616705757214.jpg'),
(10, 'Giày bệt', 'Ballet flats', '2022-10-10 02:31:20', '2022-10-10 02:32:05', '/storage/Kieu_Dang/cz2gtvteCOmG5oidRO4n.jpg', 'giaybet.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau_sac`
--

CREATE TABLE `mau_sac` (
  `ms_mau` bigint(20) UNSIGNED NOT NULL,
  `ten_mau` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_mau_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mau_sac`
--

INSERT INTO `mau_sac` (`ms_mau`, `ten_mau`, `ten_mau_en`, `created_at`, `updated_at`) VALUES
(1, 'Xám', 'Gray', '2022-09-13 19:51:59', '2022-09-13 19:55:12'),
(3, 'Trắng', 'White', '2022-09-13 21:06:14', '2022-09-13 21:06:14'),
(4, 'Đen', 'Black', '2022-09-13 21:15:47', '2022-09-13 21:15:47'),
(5, 'Xanh', 'Blue', '2022-09-13 21:42:00', '2022-09-13 21:42:00'),
(6, 'Đỏ đen', 'Black red', '2022-09-14 03:00:01', '2022-09-14 03:00:01'),
(7, 'Phối màu', 'Color combination', '2022-09-14 03:04:05', '2022-09-14 03:04:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_07_23_013557_create_nha_cung_caps_table', 1),
(5, '2022_07_23_074625_create_xuat_xus_table', 1),
(6, '2022_07_25_075333_create_gioi_tinhs_table', 1),
(7, '2022_07_25_084858_create_kich_cos_table', 1),
(8, '2022_07_25_095946_create_kieu_dangs_table', 1),
(9, '2022_07_25_103545_create_chat_lieus_table', 1),
(10, '2022_07_25_235447_create_thuong_hieus_table', 1),
(11, '2022_07_29_125734_create_mau_sacs_table', 1),
(12, '2022_08_02_075348_create_san_phams_table', 1),
(13, '2022_08_03_120605_create_hinh_anh_san_phams_table', 1),
(14, '2022_08_05_065028_add_colum_user_id_to_table_sanpham', 1),
(15, '2022_08_05_100856_create_nhap_hangs_table', 1),
(16, '2022_08_05_104257_add_colum_gia_ban_to_table_sanpham', 1),
(17, '2022_08_09_093032_add_colum__chi__tiet__san__pham', 1),
(18, '2022_08_11_085848_create_roles_table', 1),
(19, '2022_08_11_090652_create_permissions_table', 1),
(20, '2022_08_11_091234_create_role_users_table', 1),
(21, '2022_08_11_091346_create_permission_roles_table', 1),
(22, '2022_09_08_065955_add_column_image_to_table_thuong_hieu', 1),
(23, '2022_09_08_070311_add_column_image_to_table_kieu_dang', 1),
(24, '2022_09_11_004524_add_column_giam_gia_to_table_san_pham', 1),
(25, '2022_10_04_074751_create_khachhangs_table', 2),
(26, '2022_10_04_083820_add_column_name_khach_hang', 3),
(27, '2022_10_05_024129_create_tbl_socials_table', 4),
(28, '2022_10_07_083701_create_thong_tin_giao_hangs_table', 5),
(29, '2022_10_07_085808_add_column_email_khach_hang', 6),
(30, '2022_10_07_091646_create_don_hangs_table', 7),
(31, '2022_10_07_093045_create_chi_tiet_don_hangs_table', 8),
(32, '2022_10_07_100138_add_column_gia_ban_chi_tiet_dh', 9),
(33, '2022_10_07_100423_add_column_gia_ban_chi_tiet_dhang', 10),
(34, '2022_10_08_063034_add_column_tong_tien_dh', 11),
(35, '2022_10_11_030513_add_column_so_luong_da_ban', 12),
(36, '2022_10_11_030942_add_column_customer_token', 13),
(37, '2022_10_11_060401_create_comments_table', 14),
(38, '2022_10_11_074740_create_danh_gia_saos_table', 15),
(39, '2022_10_12_033958_create_nguoi_van_chuyens_table', 16),
(40, '2022_10_12_040647_add_column_ms_nvc', 17),
(41, '2022_10_13_032007_add_column_so_lan_huy_don', 18),
(42, '2022_10_17_021733_add_column_ms_ms', 19),
(43, '2022_10_17_021925_add_column_so_lan_huy_don_ctsp', 19),
(44, '2022_10_20_052121_add_column_ms_mau', 20),
(45, '2022_10_25_022542_add_column_mat_khau_shipper', 21),
(46, '2022_10_25_133618_add_column_tt_gh_shipper', 22),
(47, '2022_10_26_125145_create_phi_ships_table', 23),
(48, '2022_10_26_141204_add_colum_phi_ship_don_hang', 24),
(49, '2022_10_27_090255_create_comment_oders_table', 25),
(50, '2022_10_27_102118_add_colum_thang_thai_danh_gia_dh', 26),
(51, '2022_10_27_113155_create_danh_gia_sao_don_hangs_table', 27),
(52, '2022_10_28_013413_add_colum_ms_kh_danh_gia_sao', 28),
(53, '2022_11_03_085617_create_chat_bots_table', 29),
(54, '2022_11_05_192929_add_colum_comment_sanpham', 30),
(55, '2022_11_06_151659_add_colum_donhang', 31),
(56, '2022_11_06_153454_create_doanh_thus_table', 32),
(57, '2022_11_19_134613_create_thong_ke_sps_table', 33);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_van_chuyen`
--

CREATE TABLE `nguoi_van_chuyen` (
  `ms_nvc` bigint(20) UNSIGNED NOT NULL,
  `ten_nvc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt_nvc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_nvc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `congty_nvc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mk_nvc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_van_chuyen`
--

INSERT INTO `nguoi_van_chuyen` (`ms_nvc`, `ten_nvc`, `sdt_nvc`, `email_nvc`, `congty_nvc`, `created_at`, `updated_at`, `mk_nvc`) VALUES
(11, 'Nguyễn Văn A', '0123456789', 'shippera@gmail.com', 'Công ty vận chuyển', '2022-10-24 19:30:13', '2022-10-24 19:30:13', 'e10adc3949ba59abbe56e057f20f883e'),
(12, 'Nguyễn Văn B', '0123456789', 'shipperb@gmail.com', 'Công ty vận chuyển', '2022-10-24 19:30:49', '2022-10-24 19:30:49', 'e10adc3949ba59abbe56e057f20f883e'),
(13, 'Nguyễn Văn C', '0123456789', 'shipperc@gmail.com', 'Công ty vận chuyển', '2022-10-24 19:31:51', '2022-10-24 19:31:51', 'e10adc3949ba59abbe56e057f20f883e'),
(14, 'Nguyễn Văn D', '0123456789', 'shipperd@gmail.com', 'Công ty vận chuyển', '2022-10-24 19:32:41', '2022-10-24 19:32:41', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhap_hang`
--

CREATE TABLE `nhap_hang` (
  `ms_nh` bigint(20) UNSIGNED NOT NULL,
  `sl_nh` int(11) NOT NULL,
  `gia_nh` int(11) NOT NULL,
  `tt_nh` int(11) NOT NULL,
  `ms_ncc` bigint(20) NOT NULL,
  `ms_kc` bigint(20) NOT NULL,
  `ms_sp` bigint(20) NOT NULL,
  `nv_nh` bigint(20) DEFAULT NULL,
  `nv_dd_nh` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ms_mau` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhap_hang`
--

INSERT INTO `nhap_hang` (`ms_nh`, `sl_nh`, `gia_nh`, `tt_nh`, `ms_ncc`, `ms_kc`, `ms_sp`, `nv_nh`, `nv_dd_nh`, `created_at`, `updated_at`, `ms_mau`) VALUES
(90, 100, 2000000, 2, 1, 1, 20, 5, NULL, '2022-10-17 02:42:12', '2022-10-17 02:42:12', 1),
(91, 100, 2000000, 2, 1, 2, 20, 5, NULL, '2022-10-17 02:43:00', '2022-10-17 02:43:00', 3),
(92, 100, 2000000, 2, 1, 3, 20, 5, NULL, '2022-10-17 02:43:33', '2022-10-17 02:43:33', 1),
(93, 100, 2000000, 2, 1, 2, 20, 5, NULL, '2022-10-17 02:45:13', '2022-10-17 02:45:13', 1),
(94, 100, 2000000, 2, 1, 4, 20, 5, NULL, '2022-10-17 02:45:50', '2022-10-17 02:45:50', 1),
(95, 100, 2000000, 2, 1, 5, 20, 5, NULL, '2022-10-17 02:46:27', '2022-10-17 02:46:27', 1),
(96, 10, 2000000, 2, 1, 1, 20, 5, NULL, '2022-10-17 02:53:42', '2022-10-17 02:53:42', 1),
(97, 20, 2000000, 2, 1, 2, 20, 5, NULL, '2022-10-17 02:54:12', '2022-10-17 02:54:12', 1),
(98, 30, 2000000, 2, 1, 3, 20, 5, NULL, '2022-10-17 02:54:48', '2022-10-17 02:54:48', 1),
(99, 40, 2000000, 2, 1, 4, 20, 5, NULL, '2022-10-17 02:55:01', '2022-10-17 02:55:01', 1),
(100, 50, 2000000, 2, 1, 5, 20, 5, NULL, '2022-10-17 02:55:17', '2022-10-17 02:55:17', 1),
(101, 60, 2000000, 2, 1, 1, 20, 5, NULL, '2022-10-17 02:56:46', '2022-10-17 02:56:46', 3),
(102, 70, 2000000, 2, 1, 2, 20, 5, NULL, '2022-10-17 02:57:00', '2022-10-17 02:57:00', 3),
(103, 80, 2000000, 2, 1, 3, 20, 5, NULL, '2022-10-17 02:57:22', '2022-10-17 02:57:22', 3),
(104, 100, 2000000, 2, 1, 4, 20, 5, NULL, '2022-10-17 02:57:34', '2022-10-17 02:57:34', 3),
(105, 110, 2000000, 2, 1, 5, 20, 5, NULL, '2022-10-17 02:57:52', '2022-10-17 02:57:52', 3),
(106, 100, 2000000, 2, 1, 1, 20, 5, NULL, '2022-10-17 03:15:20', '2022-10-17 03:15:20', 4),
(107, 110, 2000000, 2, 1, 2, 20, 5, NULL, '2022-10-17 03:15:40', '2022-10-17 03:15:40', 4),
(108, 100, 2000000, 2, 1, 3, 20, 5, NULL, '2022-10-17 03:16:06', '2022-10-17 03:16:06', 4),
(110, 100, 2000000, 2, 1, 4, 20, 5, NULL, '2022-10-17 03:16:57', '2022-10-17 03:16:57', 4),
(111, 100, 1250000, 2, 1, 1, 19, 5, NULL, '2022-10-17 03:33:25', '2022-10-17 03:33:25', 4),
(112, 100, 1250000, 2, 1, 2, 19, 5, NULL, '2022-10-17 03:33:48', '2022-10-17 03:33:48', 4),
(113, 100, 1250000, 2, 1, 3, 19, 5, NULL, '2022-10-17 03:34:08', '2022-10-17 03:34:08', 4),
(114, 100, 1250000, 2, 1, 3, 19, 5, NULL, '2022-10-17 03:34:54', '2022-10-17 03:34:54', 4),
(115, 100, 1250000, 2, 1, 5, 19, 5, NULL, '2022-10-17 03:35:15', '2022-10-17 03:35:15', 4),
(116, 110, 1250000, 2, 1, 1, 19, 5, NULL, '2022-10-17 03:36:20', '2022-10-17 03:36:20', 6),
(117, 120, 1250000, 2, 1, 2, 19, 5, NULL, '2022-10-17 03:36:43', '2022-10-17 03:36:43', 6),
(118, 130, 1250000, 2, 1, 3, 19, 5, NULL, '2022-10-17 03:38:37', '2022-10-17 03:38:37', 6),
(120, 140, 1250000, 2, 1, 4, 19, 5, NULL, '2022-10-17 03:39:35', '2022-10-17 03:39:35', 6),
(121, 100, 3000000, 2, 1, 1, 18, 5, NULL, '2022-10-17 07:48:13', '2022-10-17 07:48:13', 7),
(122, 100, 3000000, 2, 1, 2, 18, 5, NULL, '2022-10-17 07:48:30', '2022-10-17 07:48:30', 7),
(124, 100, 1200000, 1, 1, 1, 1, 6, NULL, '2022-11-01 10:06:24', '2022-11-01 10:06:24', 4),
(128, 100, 2000000, 1, 1, 1, 20, 6, NULL, '2022-11-02 03:41:51', '2022-11-02 03:41:51', 1),
(129, 100, 2000000, 1, 1, 2, 20, 6, NULL, '2022-11-02 03:41:51', '2022-11-02 03:41:51', 1),
(130, 100, 2000000, 1, 1, 3, 20, 6, NULL, '2022-11-02 03:41:51', '2022-11-02 03:41:51', 1),
(131, 100, 2000000, 1, 1, 4, 20, 6, NULL, '2022-11-02 03:41:51', '2022-11-02 03:41:51', 1),
(132, 100, 2000000, 1, 1, 1, 20, 6, NULL, '2022-11-02 03:41:51', '2022-11-02 03:41:51', 4),
(133, 100, 2000000, 1, 1, 2, 20, 6, NULL, '2022-11-02 03:41:51', '2022-11-02 03:41:51', 4),
(134, 100, 2000000, 1, 1, 3, 20, 6, NULL, '2022-11-02 03:41:51', '2022-11-02 03:41:51', 4),
(135, 100, 2000000, 1, 1, 4, 20, 6, NULL, '2022-11-02 03:41:51', '2022-11-02 03:41:51', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_cung_cap`
--

CREATE TABLE `nha_cung_cap` (
  `ms_ncc` bigint(20) UNSIGNED NOT NULL,
  `ten_ncc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dc_ncc` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt_ncc` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nha_cung_cap`
--

INSERT INTO `nha_cung_cap` (`ms_ncc`, `ten_ncc`, `dc_ncc`, `sdt_ncc`, `created_at`, `updated_at`) VALUES
(1, 'Công ty giày M&M', 'Tp. Cần Thơ', '0944235566', '2022-09-21 02:16:52', '2022-09-21 02:16:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `parent_id`, `key_code`, `created_at`, `updated_at`) VALUES
(1, 'NhaCungCap', 'NhaCungCap', 0, NULL, '2022-08-14 17:37:48', '2022-08-14 17:37:48'),
(2, 'list', 'list', 1, 'NhaCungCap_list', '2022-08-14 17:37:48', '2022-08-14 17:37:48'),
(3, 'add', 'add', 1, 'NhaCungCap_add', '2022-08-14 17:37:48', '2022-08-14 17:37:48'),
(4, 'edit', 'edit', 1, 'NhaCungCap_edit', '2022-08-14 17:37:48', '2022-08-14 17:37:48'),
(5, 'delete', 'delete', 1, 'NhaCungCap_delete', '2022-08-14 17:37:48', '2022-08-14 17:37:48'),
(6, 'XuatXu', 'XuatXu', 0, NULL, '2022-08-14 17:38:24', '2022-08-14 17:38:24'),
(7, 'list', 'list', 6, 'XuatXu_list', '2022-08-14 17:38:24', '2022-08-14 17:38:24'),
(8, 'add', 'add', 6, 'XuatXu_add', '2022-08-14 17:38:24', '2022-08-14 17:38:24'),
(9, 'edit', 'edit', 6, 'XuatXu_edit', '2022-08-14 17:38:24', '2022-08-14 17:38:24'),
(10, 'delete', 'delete', 6, 'XuatXu_delete', '2022-08-14 17:38:24', '2022-08-14 17:38:24'),
(11, 'GioiTinh', 'GioiTinh', 0, NULL, '2022-08-14 17:38:38', '2022-08-14 17:38:38'),
(12, 'list', 'list', 11, 'GioiTinh_list', '2022-08-14 17:38:38', '2022-08-14 17:38:38'),
(13, 'add', 'add', 11, 'GioiTinh_add', '2022-08-14 17:38:38', '2022-08-14 17:38:38'),
(14, 'edit', 'edit', 11, 'GioiTinh_edit', '2022-08-14 17:38:38', '2022-08-14 17:38:38'),
(15, 'delete', 'delete', 11, 'GioiTinh_delete', '2022-08-14 17:38:38', '2022-08-14 17:38:38'),
(16, 'KichCo', 'KichCo', 0, NULL, '2022-08-14 17:38:50', '2022-08-14 17:38:50'),
(17, 'list', 'list', 16, 'KichCo_list', '2022-08-14 17:38:51', '2022-08-14 17:38:51'),
(18, 'add', 'add', 16, 'KichCo_add', '2022-08-14 17:38:51', '2022-08-14 17:38:51'),
(19, 'edit', 'edit', 16, 'KichCo_edit', '2022-08-14 17:38:51', '2022-08-14 17:38:51'),
(20, 'delete', 'delete', 16, 'KichCo_delete', '2022-08-14 17:38:51', '2022-08-14 17:38:51'),
(21, 'KieuDang', 'KieuDang', 0, NULL, '2022-08-14 17:39:05', '2022-08-14 17:39:05'),
(22, 'list', 'list', 21, 'KieuDang_list', '2022-08-14 17:39:05', '2022-08-14 17:39:05'),
(23, 'add', 'add', 21, 'KieuDang_add', '2022-08-14 17:39:05', '2022-08-14 17:39:05'),
(24, 'edit', 'edit', 21, 'KieuDang_edit', '2022-08-14 17:39:05', '2022-08-14 17:39:05'),
(25, 'delete', 'delete', 21, 'KieuDang_delete', '2022-08-14 17:39:05', '2022-08-14 17:39:05'),
(26, 'ChatLieu', 'ChatLieu', 0, NULL, '2022-08-14 17:39:19', '2022-08-14 17:39:19'),
(27, 'list', 'list', 26, 'ChatLieu_list', '2022-08-14 17:39:19', '2022-08-14 17:39:19'),
(28, 'add', 'add', 26, 'ChatLieu_add', '2022-08-14 17:39:19', '2022-08-14 17:39:19'),
(29, 'edit', 'edit', 26, 'ChatLieu_edit', '2022-08-14 17:39:19', '2022-08-14 17:39:19'),
(30, 'delete', 'delete', 26, 'ChatLieu_delete', '2022-08-14 17:39:19', '2022-08-14 17:39:19'),
(31, 'ThuongHieu', 'ThuongHieu', 0, NULL, '2022-08-14 17:39:35', '2022-08-14 17:39:35'),
(32, 'list', 'list', 31, 'ThuongHieu_list', '2022-08-14 17:39:35', '2022-08-14 17:39:35'),
(33, 'add', 'add', 31, 'ThuongHieu_add', '2022-08-14 17:39:35', '2022-08-14 17:39:35'),
(34, 'edit', 'edit', 31, 'ThuongHieu_edit', '2022-08-14 17:39:35', '2022-08-14 17:39:35'),
(35, 'delete', 'delete', 31, 'ThuongHieu_delete', '2022-08-14 17:39:35', '2022-08-14 17:39:35'),
(36, 'MauSac', 'MauSac', 0, NULL, '2022-08-14 17:39:51', '2022-08-14 17:39:51'),
(37, 'list', 'list', 36, 'MauSac_list', '2022-08-14 17:39:51', '2022-08-14 17:39:51'),
(38, 'add', 'add', 36, 'MauSac_add', '2022-08-14 17:39:51', '2022-08-14 17:39:51'),
(39, 'edit', 'edit', 36, 'MauSac_edit', '2022-08-14 17:39:51', '2022-08-14 17:39:51'),
(40, 'delete', 'delete', 36, 'MauSac_delete', '2022-08-14 17:39:51', '2022-08-14 17:39:51'),
(41, 'SanPham', 'SanPham', 0, NULL, '2022-08-14 17:40:21', '2022-08-14 17:40:21'),
(42, 'list', 'list', 41, 'SanPham_list', '2022-08-14 17:40:21', '2022-08-14 17:40:21'),
(43, 'add', 'add', 41, 'SanPham_add', '2022-08-14 17:40:21', '2022-08-14 17:40:21'),
(44, 'edit', 'edit', 41, 'SanPham_edit', '2022-08-14 17:40:21', '2022-08-14 17:40:21'),
(45, 'delete', 'delete', 41, 'SanPham_delete', '2022-08-14 17:40:21', '2022-08-14 17:40:21'),
(46, 'NhapHang', 'NhapHang', 0, NULL, '2022-08-14 17:40:36', '2022-08-14 17:40:36'),
(47, 'list', 'list', 46, 'NhapHang_list', '2022-08-14 17:40:36', '2022-08-14 17:40:36'),
(48, 'add', 'add', 46, 'NhapHang_add', '2022-08-14 17:40:36', '2022-08-14 17:40:36'),
(49, 'edit', 'edit', 46, 'NhapHang_edit', '2022-08-14 17:40:36', '2022-08-14 17:40:36'),
(50, 'delete', 'delete', 46, 'NhapHang_delete', '2022-08-14 17:40:36', '2022-08-14 17:40:36'),
(51, 'User', 'User', 0, NULL, '2022-08-14 17:40:48', '2022-08-14 17:40:48'),
(52, 'list', 'list', 51, 'User_list', '2022-08-14 17:40:48', '2022-08-14 17:40:48'),
(53, 'add', 'add', 51, 'User_add', '2022-08-14 17:40:48', '2022-08-14 17:40:48'),
(54, 'edit', 'edit', 51, 'User_edit', '2022-08-14 17:40:48', '2022-08-14 17:40:48'),
(55, 'delete', 'delete', 51, 'User_delete', '2022-08-14 17:40:48', '2022-08-14 17:40:48'),
(56, 'role', 'role', 0, NULL, '2022-08-14 17:41:00', '2022-08-14 17:41:00'),
(57, 'list', 'list', 56, 'role_list', '2022-08-14 17:41:00', '2022-08-14 17:41:00'),
(58, 'add', 'add', 56, 'role_add', '2022-08-14 17:41:00', '2022-08-14 17:41:00'),
(59, 'edit', 'edit', 56, 'role_edit', '2022-08-14 17:41:00', '2022-08-14 17:41:00'),
(60, 'delete', 'delete', 56, 'role_delete', '2022-08-14 17:41:00', '2022-08-14 17:41:00'),
(61, 'permission', 'permission', 0, NULL, '2022-08-14 17:41:09', '2022-08-14 17:41:09'),
(62, 'list', 'list', 61, 'permission_list', '2022-08-14 17:41:09', '2022-08-14 17:41:09'),
(63, 'add', 'add', 61, 'permission_add', '2022-08-14 17:41:09', '2022-08-14 17:41:09'),
(64, 'comment', 'comment', 0, NULL, '2022-10-29 06:51:52', '2022-10-29 06:51:52'),
(65, 'list', 'list', 64, 'comment_list', '2022-10-29 06:51:52', '2022-10-29 06:51:52'),
(66, 'phivanchuyen', 'phivanchuyen', 0, NULL, '2022-10-29 06:52:34', '2022-10-29 06:52:34'),
(67, 'list', 'list', 66, 'phivanchuyen_list', '2022-10-29 06:52:34', '2022-10-29 06:52:34'),
(68, 'nguoivanchuyen', 'nguoivanchuyen', 0, NULL, '2022-10-29 07:16:38', '2022-10-29 07:16:38'),
(69, 'list', 'list', 68, 'nguoivanchuyen_list', '2022-10-29 07:16:38', '2022-10-29 07:16:38'),
(70, 'add', 'add', 68, 'nguoivanchuyen_add', '2022-10-29 07:16:38', '2022-10-29 07:16:38'),
(71, 'delete', 'delete', 68, 'nguoivanchuyen_delete', '2022-10-29 07:16:38', '2022-10-29 07:16:38'),
(72, 'donhang', 'donhang', 0, NULL, '2022-10-29 07:24:08', '2022-10-29 07:24:08'),
(73, 'list', 'list', 72, 'donhang_list', '2022-10-29 07:24:08', '2022-10-29 07:24:08'),
(74, 'edit', 'edit', 72, 'donhang_edit', '2022-10-29 07:24:08', '2022-10-29 07:24:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 3, 2, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 7, 2, NULL, NULL),
(7, 8, 2, NULL, NULL),
(8, 9, 2, NULL, NULL),
(9, 10, 2, NULL, NULL),
(10, 12, 2, NULL, NULL),
(11, 13, 2, NULL, NULL),
(12, 14, 2, NULL, NULL),
(13, 15, 2, NULL, NULL),
(14, 17, 2, NULL, NULL),
(15, 18, 2, NULL, NULL),
(16, 19, 2, NULL, NULL),
(17, 20, 2, NULL, NULL),
(18, 22, 2, NULL, NULL),
(19, 23, 2, NULL, NULL),
(20, 24, 2, NULL, NULL),
(21, 25, 2, NULL, NULL),
(22, 27, 2, NULL, NULL),
(23, 28, 2, NULL, NULL),
(24, 29, 2, NULL, NULL),
(25, 30, 2, NULL, NULL),
(30, 32, 2, NULL, NULL),
(31, 33, 2, NULL, NULL),
(33, 35, 2, NULL, NULL),
(34, 2, 1, NULL, NULL),
(35, 3, 1, NULL, NULL),
(36, 4, 1, NULL, NULL),
(37, 5, 1, NULL, NULL),
(38, 7, 1, NULL, NULL),
(39, 8, 1, NULL, NULL),
(40, 9, 1, NULL, NULL),
(41, 10, 1, NULL, NULL),
(42, 12, 1, NULL, NULL),
(43, 13, 1, NULL, NULL),
(44, 14, 1, NULL, NULL),
(45, 15, 1, NULL, NULL),
(46, 17, 1, NULL, NULL),
(47, 18, 1, NULL, NULL),
(48, 19, 1, NULL, NULL),
(49, 20, 1, NULL, NULL),
(50, 22, 1, NULL, NULL),
(51, 23, 1, NULL, NULL),
(52, 24, 1, NULL, NULL),
(53, 25, 1, NULL, NULL),
(54, 27, 1, NULL, NULL),
(55, 28, 1, NULL, NULL),
(56, 29, 1, NULL, NULL),
(57, 30, 1, NULL, NULL),
(58, 32, 1, NULL, NULL),
(59, 33, 1, NULL, NULL),
(60, 34, 1, NULL, NULL),
(61, 35, 1, NULL, NULL),
(62, 37, 1, NULL, NULL),
(63, 38, 1, NULL, NULL),
(64, 39, 1, NULL, NULL),
(65, 40, 1, NULL, NULL),
(66, 42, 1, NULL, NULL),
(67, 43, 1, NULL, NULL),
(68, 44, 1, NULL, NULL),
(69, 45, 1, NULL, NULL),
(70, 47, 1, NULL, NULL),
(71, 48, 1, NULL, NULL),
(72, 49, 1, NULL, NULL),
(73, 50, 1, NULL, NULL),
(74, 52, 1, NULL, NULL),
(75, 53, 1, NULL, NULL),
(76, 54, 1, NULL, NULL),
(77, 55, 1, NULL, NULL),
(78, 57, 1, NULL, NULL),
(79, 58, 1, NULL, NULL),
(80, 59, 1, NULL, NULL),
(81, 60, 1, NULL, NULL),
(82, 62, 1, NULL, NULL),
(83, 63, 1, NULL, NULL),
(84, 37, 2, NULL, NULL),
(85, 38, 2, NULL, NULL),
(86, 39, 2, NULL, NULL),
(87, 40, 2, NULL, NULL),
(88, 42, 2, NULL, NULL),
(89, 43, 2, NULL, NULL),
(91, 45, 2, NULL, NULL),
(92, 47, 2, NULL, NULL),
(94, 49, 2, NULL, NULL),
(95, 50, 2, NULL, NULL),
(96, 52, 2, NULL, NULL),
(97, 53, 2, NULL, NULL),
(98, 54, 2, NULL, NULL),
(99, 55, 2, NULL, NULL),
(100, 62, 2, NULL, NULL),
(101, 63, 2, NULL, NULL),
(102, 57, 2, NULL, NULL),
(103, 58, 2, NULL, NULL),
(104, 59, 2, NULL, NULL),
(105, 60, 2, NULL, NULL),
(106, 34, 2, NULL, NULL),
(107, 2, 2, NULL, NULL),
(108, 44, 2, NULL, NULL),
(109, 48, 2, NULL, NULL),
(110, 2, 5, NULL, NULL),
(111, 3, 5, NULL, NULL),
(112, 4, 5, NULL, NULL),
(113, 5, 5, NULL, NULL),
(114, 7, 5, NULL, NULL),
(115, 8, 5, NULL, NULL),
(116, 9, 5, NULL, NULL),
(117, 10, 5, NULL, NULL),
(118, 12, 5, NULL, NULL),
(119, 13, 5, NULL, NULL),
(120, 14, 5, NULL, NULL),
(121, 15, 5, NULL, NULL),
(122, 17, 5, NULL, NULL),
(123, 18, 5, NULL, NULL),
(124, 19, 5, NULL, NULL),
(125, 20, 5, NULL, NULL),
(126, 22, 5, NULL, NULL),
(127, 23, 5, NULL, NULL),
(128, 24, 5, NULL, NULL),
(129, 25, 5, NULL, NULL),
(130, 27, 5, NULL, NULL),
(131, 28, 5, NULL, NULL),
(132, 29, 5, NULL, NULL),
(133, 30, 5, NULL, NULL),
(134, 32, 5, NULL, NULL),
(135, 33, 5, NULL, NULL),
(136, 34, 5, NULL, NULL),
(137, 35, 5, NULL, NULL),
(138, 37, 5, NULL, NULL),
(139, 38, 5, NULL, NULL),
(140, 39, 5, NULL, NULL),
(141, 40, 5, NULL, NULL),
(142, 42, 5, NULL, NULL),
(143, 43, 5, NULL, NULL),
(144, 44, 5, NULL, NULL),
(145, 45, 5, NULL, NULL),
(146, 47, 5, NULL, NULL),
(147, 48, 5, NULL, NULL),
(148, 49, 5, NULL, NULL),
(149, 50, 5, NULL, NULL),
(150, 52, 5, NULL, NULL),
(151, 53, 5, NULL, NULL),
(152, 54, 5, NULL, NULL),
(153, 55, 5, NULL, NULL),
(154, 57, 5, NULL, NULL),
(155, 58, 5, NULL, NULL),
(156, 59, 5, NULL, NULL),
(157, 60, 5, NULL, NULL),
(158, 62, 5, NULL, NULL),
(159, 63, 5, NULL, NULL),
(160, 65, 5, NULL, NULL),
(161, 67, 5, NULL, NULL),
(163, 65, 1, NULL, NULL),
(164, 67, 1, NULL, NULL),
(165, 69, 1, NULL, NULL),
(166, 70, 1, NULL, NULL),
(167, 71, 1, NULL, NULL),
(168, 73, 1, NULL, NULL),
(170, 74, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phi_ships`
--

CREATE TABLE `phi_ships` (
  `phi_ship_id` bigint(20) UNSIGNED NOT NULL,
  `phi_ship_matp` int(11) DEFAULT NULL,
  `phi_ship_maqh` int(11) DEFAULT NULL,
  `phi_ship_maxa` int(11) DEFAULT NULL,
  `phi_ship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phi_ships`
--

INSERT INTO `phi_ships` (`phi_ship_id`, `phi_ship_matp`, `phi_ship_maqh`, `phi_ship_maxa`, `phi_ship`, `created_at`, `updated_at`) VALUES
(1, 92, 916, 31117, '60000', '2022-10-26 06:16:29', '2022-10-26 06:17:50'),
(2, 92, 916, 31120, '50000', '2022-10-26 06:21:06', '2022-10-26 06:21:06'),
(3, 92, 923, 31219, '70000', '2022-10-26 06:22:11', '2022-10-26 06:22:11'),
(4, 93, 930, 31318, '55000', '2022-10-26 06:23:58', '2022-10-26 06:23:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanhuyen`
--

CREATE TABLE `quanhuyen` (
  `maqh` int(5) NOT NULL,
  `name_qh` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `matp` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `quanhuyen`
--

INSERT INTO `quanhuyen` (`maqh`, `name_qh`, `type`, `matp`) VALUES
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', '2022-08-14 13:26:50', '2022-10-29 01:44:13'),
(2, 'Product_Management', 'Sản phẩm', '2022-08-14 13:27:08', '2022-10-29 01:50:10'),
(3, 'Oder_Management', 'Đơn hàng', '2022-10-29 01:46:34', '2022-10-29 01:49:42'),
(4, 'Shipping_Management', 'Vận chuyển', '2022-10-29 01:48:13', '2022-10-29 01:49:26'),
(5, 'Employee_manager', 'Nhân viên', '2022-10-29 01:51:18', '2022-10-29 01:51:18'),
(6, 'Comment_Manager', 'Bình luận', '2022-10-29 03:28:45', '2022-10-29 03:28:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(2, 6, 1, NULL, NULL),
(14, 5, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `ms_sp` bigint(20) UNSIGNED NOT NULL,
  `ten_sp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_en_sp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ha_sp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_ha_sp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota_sp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota_en_sp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ms_cl` bigint(20) DEFAULT NULL,
  `ms_gt` bigint(20) DEFAULT NULL,
  `ms_kd` bigint(20) DEFAULT NULL,
  `ms_th` bigint(20) DEFAULT NULL,
  `ms_xx` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `giaban_sp` int(11) NOT NULL,
  `giam_gia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`ms_sp`, `ten_sp`, `ten_en_sp`, `ha_sp`, `ten_ha_sp`, `mota_sp`, `mota_en_sp`, `ms_cl`, `ms_gt`, `ms_kd`, `ms_th`, `ms_xx`, `created_at`, `updated_at`, `user_id`, `giaban_sp`, `giam_gia`) VALUES
(1, 'Giày Thể Thao Adidas EQ21 Run Cold.Rdy', 'Adidas EQ21 Run Cold.Rdy H00494 Sports Shoes', '/storage/product/IzwUSE2hxUl1AqwyrFSF.png', 'eq21-run-cold-rdy-shoes-grey-h00494-01.png', '<h5>Đ&Ocirc;I GI&Agrave;Y D&Agrave;NH CHO NGƯỜI CHẠY BỘ H&Agrave;NG NG&Agrave;Y.</h5>\r\n\r\n<p>Khi chạy bộ l&agrave; m&ocirc;n thể thao ưa th&iacute;ch của bạn th&igrave; chẳng c&oacute; g&igrave; bằng những buổi chạy h&agrave;ng ng&agrave;y. Chinh phục cự ly với cảm gi&aacute;c thoải m&aacute;i tuyệt đối c&ugrave;ng đ&ocirc;i gi&agrave;y adidas n&agrave;y. Th&acirc;n gi&agrave;y tho&aacute;ng kh&iacute; đảm bảo đ&ocirc;i ch&acirc;n lu&ocirc;n m&aacute;t mẻ v&agrave; kh&ocirc; tho&aacute;ng khi trời n&oacute;ng. Lớp đệm si&ecirc;u nhẹ cho mỗi bước ch&acirc;n th&ecirc;m phần khoan kho&aacute;i. Sản phẩm n&agrave;y c&oacute; sử dụng chất liệu t&aacute;i chế, l&agrave; một phần nỗ lực của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa. 20% th&acirc;n gi&agrave;y l&agrave;m từ chất liệu c&oacute; chứa tối thiểu 50% th&agrave;nh phần t&aacute;i chế.</p>\r\n\r\n<p><img alt=\"\" src=\"https://assets.adidas.com/images/w_600,f_auto,q_auto/8c655f72fc784ff6abf1ad0a013f4942_9366/Giay_Chay_Bo_EQ21_DJen_H00512.jpg\" /></p>', '<pre>\r\nEthnic SHOES VOICE.\r\nWhen running is your favorite sport, there&#39;s nothing like a daily run. Conquer distances in comfort with adidas shoes. Breathable friendly ensures feet cool and cool when it&#39;s hot. Ultra-light padding for extra comfort with every step. This product uses recycled materials, as part of our activity, I target plastic pellet mills. 20% eco-friendly made from materials that contain at least 50% recycled ingredients.</pre>\r\n\r\n<p><img alt=\"\" src=\"https://assets.adidas.com/images/w_600,f_auto,q_auto/8c655f72fc784ff6abf1ad0a013f4942_9366/Giay_Chay_Bo_EQ21_DJen_H00512.jpg\" /></p>', 3, 1, 1, 1, 1, '2022-09-13 20:03:50', '2022-09-13 20:54:58', 5, 2800000, 30),
(2, 'Giày MLB Bigball Chunky Mesh New York Yankees 3ASHCE12N-50CRS', 'MLB Bigball Chunky Mesh New York Yankees 3ASHCE12N-50CRS Shoes', '/storage/product/0N4Lb7GRNtwf7SfHkXcx.png', '1.png', '<p>Được cho l&agrave; một trong những sản phẩm chủ lực của h&atilde;ng thời trang nổi tiếng&nbsp;<strong>H&agrave;n Quốc</strong>&nbsp;-&nbsp;<strong>MLB Korea</strong>, mẫu&nbsp;<strong>Gi&agrave;y MLB BigBall Chunky Mesh New York Yankees Cream</strong>&nbsp;cực kỳ được l&ograve;ng nhiều bạn trẻ bởi vẻ ngo&agrave;i đơn giản, m&agrave;u sắc kh&ocirc;ng qu&aacute; ch&oacute;i, nhưng vẫn rất c&aacute; t&iacute;nh v&agrave; tinh tế, cực kỳ ph&ugrave; hợp khi kết hợp c&ugrave;ng những bộ outfit trẻ trung, năng động. Thoạt nh&igrave;n, đ&ocirc;i gi&agrave;y như được phủ một gam m&agrave;u trắng tinh khiết, nhưng thực tế, m&agrave;u sắc của mẫu gi&agrave;y dịu nhẹ hơn nhờ tone m&agrave;u kem độc đ&aacute;o, vừa c&oacute; thể đem lại vẻ đẹp sang trọng, vừa chứa đựng sự tinh tế ẩn dấu qua gam m&agrave;u ấm &aacute;p. Điểm thu h&uacute;t nhất lu&ocirc;n được đặt ở ch&iacute;nh giữa th&acirc;n gi&agrave;y, với logo&nbsp;<strong>NY</strong>&nbsp;m&agrave;u đen nổi bật nhờ sự tương phản với nền kem đơn sắc v&agrave; l&agrave; một trong những dấu ấn đặc trưng, đại diện cho đội b&oacute;ng ch&agrave;y&nbsp;<strong>New York Yankees</strong>&nbsp;m&agrave;&nbsp;<strong>MLB&nbsp;</strong>lấy nguồn cảm hứng.</p>\r\n\r\n<p><img alt=\"MLB Việt Nam | Giày MLB Bigball Chunky Mesh New York Yankees Cream 3ASHCE12N-50CRS\" src=\"https://file.hstatic.net/200000384787/file/iay_mlb_bigball_chunky_mesh_new_york_yankees_cream_3ashce12n-50crs__8__29d817c232e34e17bb7b017655597f0c.jpg\" /></p>\r\n\r\n<p>Sự hấp dẫn thật sự kh&ocirc;ng chỉ đến từ h&igrave;nh thức hay những chi tiết c&aacute;ch điệu b&ecirc;n ngo&agrave;i, m&agrave; cảm nhận người d&ugrave;ng c&oacute; được khi sản phẩm l&ecirc;n ch&acirc;n mới ch&iacute;nh l&agrave; gi&aacute; trị thực m&agrave;&nbsp;<strong>MLB&nbsp;</strong>đem đến cho kh&aacute;ch h&agrave;ng. Tuy bộ đế tạo hiệu ứng chiều cao l&ecirc;n tới&nbsp;<strong>6cm&nbsp;</strong>c&oacute; phần hầm hố v&agrave; to bản, nhưng nhờ chất liệu cao su lưu h&oacute;a cao cấp với đặc t&iacute;nh đ&agrave;n hồi vượt trội c&ugrave;ng trọng lượng nhẹ, đ&acirc;y sẽ l&agrave; mẫu gi&agrave;y m&agrave; bạn cảm thấy ưng &yacute; nhất khi sử dụng cho nhu cầu di chuyển hằng ng&agrave;y, thậm ch&iacute; l&agrave; vận động thể thao. Sự kết hợp giữa chất liệu da đặc trưng c&ugrave;ng lớp lưới tho&aacute;t kh&iacute; vượt trội cũng l&agrave; những điểm s&aacute;ng tuyệt vời gi&uacute;p tăng trải nghiệm mang gi&agrave;y của bạn, liệu đ&acirc;y c&oacute; xứng đ&aacute;ng l&agrave; mẫu gi&agrave;y tiếp theo trong bộ sưu tập của bạn kh&ocirc;ng?</p>\r\n\r\n<p><img alt=\"MLB Việt Nam | Giày MLB Bigball Chunky Mesh New York Yankees Cream 3ASHCE12N-50CRS\" src=\"https://file.hstatic.net/200000384787/file/iay_mlb_bigball_chunky_mesh_new_york_yankees_cream_3ashce12n-50crs__9__14d26b14d0034abcb73f502de151d2f7.jpg\" /></p>', '<p style=\"text-align:justify\"><span style=\"font-size:15px\"><span style=\"font-family:&quot;Noto Serif&quot;,sans-serif\"><span style=\"color:#252a2b\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:&quot;Noto Serif&quot;,sans-serif !important\">Said to be one of the flagship products of the famous&nbsp;<strong>Korean</strong>&nbsp;fashion company -&nbsp;<strong>MLB Korea</strong>&nbsp;, the&nbsp;<strong>MLB BigBall Chunky Mesh New York Yankees Cream Shoe</strong>&nbsp;model is extremely popular with many young people because of its simple appearance and not too bright colors. , but still very personal and delicate, extremely suitable when combined with youthful and dynamic outfits.&nbsp;At first glance, the shoes seem to be covered with a pure white color, but in fact, the color of the shoe model is softer thanks to the unique cream tone, which can both bring luxury beauty and contain sophistication. hidden through warm colors.&nbsp;The most attractive point is always placed in the middle of the shoe body, with the&nbsp;<strong>NY logo</strong>Black stands out thanks to the contrast with the monochrome cream background and is one of the signatures, representing the&nbsp;<strong>New York Yankees</strong>&nbsp;baseball team that&nbsp;<strong>MLB</strong>&nbsp;draws inspiration from.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:15px\"><span style=\"font-family:&quot;Noto Serif&quot;,sans-serif\"><span style=\"color:#252a2b\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:&quot;Noto Serif&quot;,sans-serif !important\"><img alt=\"MLB Vietnam |  MLB Bigball Chunky Mesh New York Yankees Cream Shoe 3ASHCE12N-50CRS\" src=\"https://file.hstatic.net/200000384787/file/iay_mlb_bigball_chunky_mesh_new_york_yankees_cream_3ashce12n-50crs__8__29d817c232e34e17bb7b017655597f0c.jpg\" /></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:15px\"><span style=\"font-family:&quot;Noto Serif&quot;,sans-serif\"><span style=\"color:#252a2b\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:&quot;Noto Serif&quot;,sans-serif !important\">The real attraction does not only come from the appearance or stylized details on the outside, but the feeling users get when the product is on their feet is the real value that&nbsp;<strong>MLB</strong>&nbsp;brings to customers.&nbsp;Although the height effect soles up to&nbsp;<strong>6cm</strong>&nbsp;are bold and large, but thanks to the high-quality vulcanized rubber material with outstanding elasticity and light weight, this will be the shoe that you feel. Best when used for daily travel needs, even sports.&nbsp;The combination of signature leather material and superior breathable mesh are also great highlights to enhance your wearing experience, is this worthy of the next shoe in your collection?</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:15px\"><span style=\"font-family:&quot;Noto Serif&quot;,sans-serif\"><span style=\"color:#252a2b\"><span style=\"background-color:#ffffff\"><span style=\"font-size:14px\"><span style=\"font-family:&quot;Noto Serif&quot;,sans-serif !important\"><img alt=\"MLB Vietnam |  MLB Bigball Chunky Mesh New York Yankees Cream Shoe 3ASHCE12N-50CRS\" src=\"https://file.hstatic.net/200000384787/file/iay_mlb_bigball_chunky_mesh_new_york_yankees_cream_3ashce12n-50crs__9__14d26b14d0034abcb73f502de151d2f7.jpg\" /></span></span></span></span></span></span></p>', 4, 3, 1, 5, 4, '2022-09-13 20:12:55', '2022-09-13 21:07:37', 5, 2080000, 25),
(3, 'Giày Thể Thao Adidas X9000L3 Core Black EH0055/EH0050', 'Adidas X9000L3 Core Black Sneakers EH0055/EH0050', '/storage/product/W8AhLIm3Q3nu0PyKLYTT.PNG', '2.PNG', NULL, NULL, 3, 1, 1, 1, 1, '2022-09-13 21:15:20', '2022-09-13 21:16:28', 5, 2200000, 10),
(4, 'Giày Thể Thao Adidas Wmns Zentic Cloud White Gx0420', 'Adidas Wmns Zentic Cloud White Sports Shoes', '/storage/product/d6qOMMQ7zTHIr0ENQiCN.PNG', '3.PNG', NULL, NULL, 1, 2, 1, 1, 1, '2022-09-13 21:19:21', '2022-09-13 21:19:48', 5, 2600000, 15),
(5, 'Giày Thể Thao Adidas Duramo 10 Wide Shoes', 'Adidas Duramo 10 Wide Shoes', '/storage/product/qxTGz47fVeanXfcUvagG.PNG', '4.PNG', NULL, NULL, 5, 1, 1, 1, 1, '2022-09-13 21:24:23', '2022-09-13 21:25:26', 5, 1870000, 30),
(6, 'Giày Thể Thao Nam Adidas Duramo SL', 'Adidas Duramo SL G58108 Men\'s Sports', '/storage/product/sEHhGZjluFaATNycbTyq.jpg', '62.jpg', '<h5>Đ&Ocirc;I GI&Agrave;Y CHẠY BỘ THOẢI M&Aacute;I CHO SẢI BƯỚC NHẸ NH&Agrave;NG.</h5>\r\n\r\n<p>Quyết t&acirc;m tăng tốc sau mỗi buổi chạy. Th&acirc;n gi&agrave;y bằng vải lưới v&agrave; g&oacute;t gi&agrave;y bằng cao su neoprene mềm mại đem đến cho đ&ocirc;i gi&agrave;y chạy bộ n&agrave;y vẻ ngo&agrave;i đậm chất kỹ thuật v&agrave; độ &ocirc;m thoải m&aacute;i, n&acirc;ng đỡ. Khi bạn đ&atilde; sẵn s&agrave;ng bứt tốc, đế giữa Lightmotion si&ecirc;u nhẹ cũng sẵn s&agrave;ng đ&aacute;p ứng.</p>', '<h5 style=\"text-align:start\"><span style=\"font-size:var(--gl-heading-font-set-size-expressive-15)\"><span style=\"font-family:&quot;Noto Sans&quot;,AdihausDIN,Helvetica,Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">COMFORTABLE RUNNING SHOES FOR LIGHT STRIDES.</span></span></span></span></h5>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"font-family:&quot;Noto Sans&quot;,AdihausDIN,Helvetica,Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">Determined to speed up after each run. A mesh upper and soft neoprene heel give these running shoes a technical look and a comfortable, supportive hug. When you&#39;re ready to kick, the lightweight Lightmotion midsole is also ready to respond.</span></span></span></span></p>', 5, 1, 1, 1, 1, '2022-09-13 21:34:43', '2022-09-21 18:49:48', 5, 1900000, 20),
(7, 'Giày Thể Thao Adidas NMD R1', 'Adidas NMD R1 FV8732 Sneakers', '/storage/product/7XEv0TkjGOSyGQgE6AbT.PNG', '59.PNG', '<h5>Đ&Ocirc;I GI&Agrave;Y NMD THOẢI M&Aacute;I VỚI DIỆN MẠO BẮT MẮT.</h5>\r\n\r\n<p>Ho&agrave;n hảo l&agrave; chuyện kh&ocirc;ng tưởng. Thay v&agrave;o đ&oacute; h&atilde;y trở n&ecirc;n th&uacute; vị. Với kiểu d&aacute;ng thanh tho&aacute;t dựa tr&ecirc;n c&aacute;c thiết kế cổ điển, đ&ocirc;i gi&agrave;y adidas NMD_R1 n&agrave;y h&ograve;a trộn di sản chạy bộ đậm chất thể thao với phong c&aacute;ch mới mẻ ph&ugrave; hợp nơi th&agrave;nh thị. Th&acirc;n gi&agrave;y bằng vải dệt kim co gi&atilde;n đặt tr&ecirc;n đế giữa Boost ho&agrave;n trả năng lượng v&agrave; đế ngo&agrave;i bằng cao su si&ecirc;u b&aacute;m gi&uacute;p bạn tự tin sải bước theo c&aacute;ch bạn muốn. Sản phẩm n&agrave;y c&oacute; sử dụng chất liệu t&aacute;i chế, l&agrave; một phần cam kết của ch&uacute;ng t&ocirc;i hướng tới chấm dứt r&aacute;c thải nhựa. 20% th&acirc;n gi&agrave;y l&agrave;m từ chất liệu c&oacute; chứa tối thiểu 50% th&agrave;nh phần t&aacute;i chế.</p>\r\n\r\n<p>&nbsp;</p>', '<h5 style=\"text-align:start\"><span style=\"font-size:var(--gl-heading-font-set-size-expressive-15)\"><span style=\"font-family:&quot;Noto Sans&quot;,AdihausDIN,Helvetica,Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">COMFORTABLE NMD SHOES WITH AN EYE-CATCHING LOOK.</span></span></span></span></h5>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"font-family:&quot;Noto Sans&quot;,AdihausDIN,Helvetica,Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">Perfection is unthinkable. Be interesting instead. With an elegant silhouette based on classic designs, these adidas NMD_R1 shoes blend sporty running heritage with fresh urban style. A stretch knit upper sits on an energy-returning Boost midsole and a super-grip rubber outsole lets you stride confidently the way you want. This product uses recycled materials as part of our commitment to ending plastic waste. 20% of the shoe body is made of a material that contains at least 50% recycled ingredients.</span></span></span></span></p>', 6, 1, 1, 1, 1, '2022-09-13 21:39:33', '2022-09-21 18:42:56', 5, 2700000, 20),
(8, 'Giày Thể Thao Adidas Supernova Athleisure', 'Adidas Supernova Athleisure Sneakers', '/storage/product/ywsq4M1LL79CntvNXgNC.PNG', '7.PNG', NULL, NULL, 3, 1, 1, 1, 1, '2022-09-13 21:43:52', '2022-09-13 21:43:52', 5, 2200000, 20),
(9, 'Giày Thể Thao Adidas UltraBoost DNA \'Chinese New Year Blue Boost\'', 'Adidas UltraBoost DNA Sneakers \'Chinese New Year Blue Boost\'', '/storage/product/Uf2QAG7rJG2q5u68UdTH.PNG', '8.PNG', NULL, NULL, 6, 1, 1, 1, 1, '2022-09-13 21:46:29', '2022-09-14 02:39:16', 5, 3200000, 10),
(10, 'Giày Thể Thao Adidas Hoops 2.0', 'Adidas Hoops 2.0 FW8250 Sneakers', '/storage/product/i5bG8ck5mxDWcQZ6IVda.PNG', '9.PNG', NULL, NULL, 4, 1, 1, 1, 1, '2022-09-13 21:49:18', '2022-09-13 21:49:18', 5, 1800000, 15),
(13, 'Giày Thể Thao Nike Revolution 6 Next Nature', 'Nike Revolution 6 Next Nature Sports Shoes', '/storage/product/6OKyepwQBtlXokpJAVah.PNG', '11.PNG', '<p>Gi&agrave;y Nike Revolution 6&nbsp;l&agrave; mẫu gi&agrave;y chạy bộ, tập thể thao nhẹ nh&agrave;ng v&agrave; c&oacute; mức gi&aacute; rất tốt tại Myshoes.vn- Gi&agrave;y Ch&iacute;nh H&atilde;ng. Nike Revolution 6 sẽ l&agrave; lựa chọn ho&agrave;n hảo, hợp l&yacute;,ch&iacute;nh x&aacute;c cho bạn.</p>\r\n\r\n<p>Với c&ocirc;ng nghệ được thiết kế để vừa chạy vừa c&oacute; thể tập thể thao nhưng lại kh&ocirc;ng qu&aacute; đắt như Zoom hay React. Nike Revolution 6 sẽ l&agrave; mẫu gi&agrave;y m&agrave; c&aacute;c t&iacute;n đồ y&ecirc;u th&iacute;ch thể thao n&ecirc;n c&oacute; cho m&igrave;nh một đ&ocirc;i. Đồng thời với lối thiết kế trẻ trung, hiện đại th&igrave; bạn c&oacute; thể d&ugrave;ng ch&iacute;nh đ&ocirc;i gi&agrave;y n&agrave;y để kết hợp với c&aacute;c Outfit thường ng&agrave;y.</p>', '<p style=\"text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:16px\"><span style=\"font-family:&quot;times new roman&quot;,times,serif\">Nike Revolution 6&nbsp;</span></span><span style=\"font-size:16px\"><span style=\"font-family:&quot;times new roman&quot;,times,serif\">&nbsp;shoes are running shoes, light sports and have a very good price at Myshoes.vn- Genuine Shoes.&nbsp;Nike Revolution 6 will be the perfect, reasonable, correct choice for you.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:16px\"><span style=\"font-family:&quot;times new roman&quot;,times,serif\">With technology designed to run and exercise at the same time, but not as expensive as Zoom or React.&nbsp;Nike Revolution 6 will be the shoe model that sports lovers should have a pair.&nbsp;At the same time with a youthful and modern design, you can use these shoes to combine with everyday Outfits.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 7, 1, 1, 2, 2, '2022-09-14 02:51:46', '2022-09-21 03:08:17', 5, 2500000, 10),
(14, 'Giày Thể Thao Nike Downshifter 11 Running', 'Nike Downshifter 11 Running Black Sneakers', '/storage/product/8XwTchFkS8BsFE7ma8h3.PNG', '12.PNG', NULL, NULL, 3, 1, 1, 2, 2, '2022-09-14 02:54:23', '2022-09-14 02:54:23', 5, 2500000, 25),
(15, 'Giày Thể Thao Nike Air Max Genome', 'Nike Air Max Genome', '/storage/product/fnSUqBEt0mSiKfqSbMKW.PNG', '13.PNG', '<p>Lấy cảm hứng từ giao diện đầu những năm 2000, Air Max Genome bổ sung th&ecirc;m một diện mạo mới cho ng&ocirc;i nh&agrave; Air Max. Phần tr&ecirc;n c&ocirc;ng nghệ của n&oacute; c&oacute; sự kết hợp của c&aacute;c chất liệu bao gồm da kh&ocirc;ng đường may kiểu d&aacute;ng đẹp, lưới tho&aacute;ng m&aacute;t v&agrave; c&aacute;c chi tiết TPU bền. Bộ phận đệm kh&ocirc;ng kh&iacute; tạo th&ecirc;m sự thoải m&aacute;i để ph&ugrave; hợp với thiết kế của n&oacute;, chắc chắn sẽ trở th&agrave;nh chiếc Air Max y&ecirc;u th&iacute;ch mới của bạn.</p>\r\n\r\n<ul>\r\n	<li>Mặt tr&ecirc;n c&oacute; c&aacute;c đường n&eacute;t thanh mảnh v&agrave; hỗn hợp chất liệu phong ph&uacute;, tạo th&ecirc;m chiều s&acirc;u cho kiểu d&aacute;ng c&oacute; nhịp độ nhanh.</li>\r\n	<li>Sự gia cố ở ng&oacute;n ch&acirc;n v&agrave; g&oacute;t ch&acirc;n chuẩn bị cho bạn tr&ecirc;n đường phố th&agrave;nh phố, ng&agrave;y n&agrave;y qua ng&agrave;y kh&aacute;c.</li>\r\n	<li>Ban đầu được thiết kế cho c&aacute;c m&ocirc;n thể thao biểu diễn, bộ phận đệm Kh&ocirc;ng kh&iacute; c&oacute; chiều d&agrave;i đầy đủ tạo th&ecirc;m sự thoải m&aacute;i đến kh&oacute; tin trong khi thiết kế cấu h&igrave;nh thấp gi&uacute;p giảm khối lượng lớn.</li>\r\n	<li>Thiết kế gợi cảm c&oacute; phần cổ &aacute;o c&oacute; đệm, cắt thấp tr&ocirc;ng b&oacute;ng bẩy v&agrave; tạo cảm gi&aacute;c tuyệt vời.</li>\r\n	<li>Phần giữa được lồng gh&eacute;p lưới lớp phủ cho một c&aacute;i nh&igrave;n hiện đại với nhiều k&iacute;ch thước.&nbsp;</li>\r\n</ul>', '<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#757575\"><span style=\"font-family:Poppins,sans-serif\"><span style=\"background-color:#ffffff\">Inspired by the look of the early 2000s, the Air Max Genome adds a new look to the Air Max home.&nbsp;Its tech upper features a mix of materials including sleek seamless leather, breathable mesh, and durable TPU details.&nbsp;The air-cushion unit adds comfort to match its design, sure to become your new favorite Air Max.</span></span></span></span></p>\r\n\r\n<ul>\r\n	<li>The top features slim lines and a rich mix of materials, adding depth to the fast-paced look.</li>\r\n	<li>Reinforcement in the toe and heel prepares you for city streets, day in and day out.</li>\r\n	<li>Originally designed for performance sports, the full-length Air cushioning adds incredible comfort while the low-profile design reduces mass.</li>\r\n	<li>The sexy design features a padded, low-cut collar that looks sleek and feels great.</li>\r\n	<li>The midsection has integrated mesh overlays for a modern look with multiple dimensions.&nbsp;</li>\r\n</ul>', 7, 1, 1, 2, 2, '2022-09-14 02:56:50', '2022-09-28 20:12:59', 5, 5900000, 10);
INSERT INTO `san_pham` (`ms_sp`, `ten_sp`, `ten_en_sp`, `ha_sp`, `ten_ha_sp`, `mota_sp`, `mota_en_sp`, `ms_cl`, `ms_gt`, `ms_kd`, `ms_th`, `ms_xx`, `created_at`, `updated_at`, `user_id`, `giaban_sp`, `giam_gia`) VALUES
(16, 'Giày Thể Thao Nike Wmns Air Jordan 1 Low Gym', 'Nike Wmns Air Jordan 1 Low Gym', '/storage/product/IYrzeZk5Sag1sNVLW4xr.PNG', '14.PNG', '<p><a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/\"><strong>Gi&agrave;y Nike Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo; DC0774 016</strong></a>&nbsp;l&agrave; một đ&ocirc;i gi&agrave;y b&oacute;ng rổ cổ thấp. Đ&ocirc;i gi&agrave;y c&oacute; kiểu d&aacute;ng cổ điển của d&ograve;ng gi&agrave;y Air Jordan 1 nhưng lại c&oacute; c&aacute;ch phối m&agrave;u v&ocirc; c&ugrave;ng mới mẻ. &lsquo;Gym Red Black&rsquo; thực sự đ&atilde; l&agrave;m xi&ecirc;u l&ograve;ng c&aacute;c t&iacute;n đồ thời trang. Dưới đ&acirc;y l&agrave; một số th&ocirc;ng tin cụ thể về sản phẩm.</p>\r\n\r\n<p>Nội dung&nbsp;[<a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/#\">Ẩn</a>]</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/#1_Thong_tin_san_pham_Wmns_Air_Jordan_1_Low_8216Gym_Red_Black8217\">1. Th&ocirc;ng tin sản phẩm Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo;</a></li>\r\n	<li><a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/#2_Ly_do_lua_chon_Nike_Wmns_Air_Jordan_1_Low_8216Gym_Red_Black8217\">2. L&yacute; do lựa chọn Nike Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo;?</a>\r\n	<ul>\r\n		<li><a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/#21_Thiet_ke_cua_Wmns_Air_Jordan_1_Low_8216Gym_Red_Black8217\">2.1 Thiết kế của Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo;</a></li>\r\n		<li><a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/#22_Uu_diem_cua_Wmns_Air_Jordan_1_Low_8216Gym_Red_Black8217\">2.2 Ưu điểm của Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo;</a></li>\r\n	</ul>\r\n	</li>\r\n	<li><a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/#3_Mua_Giay_Nike_Wmns_Air_Jordan_1_Low_8216Gym_Red_Black8217_DC0774_016_chinh_hang_tai_Censorvn\">3. Mua Gi&agrave;y Nike Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo; DC0774 016 ch&iacute;nh h&atilde;ng tại Censor.vn</a></li>\r\n</ul>\r\n\r\n<h2><strong>1. Th&ocirc;ng tin sản phẩm Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo;</strong></h2>\r\n\r\n<p><img alt=\"Giày Nike Wmns Air Jordan 1 Low ‘Gym Red Black’ DC0774 016\" height=\"625\" sizes=\"(max-width: 1250px) 100vw, 1250px\" src=\"https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg\" srcset=\"https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg 1250w, https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-300x150.jpeg 300w, https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-600x300.jpeg 600w, https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-686x343.jpeg 686w, https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-768x384.jpeg 768w, https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-60x30.jpeg 60w\" width=\"1250\" /></p>\r\n\r\n<p>Gi&agrave;y Nike Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo; DC0774 016</p>\r\n\r\n<h2><strong>2. L&yacute; do lựa chọn Nike Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo;?</strong></h2>\r\n\r\n<h3><strong>2.1 Thiết kế của Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo;</strong></h3>\r\n\r\n<p>Đ&ocirc;i&nbsp;<strong>gi&agrave;y Nike Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo;</strong>&nbsp;c&oacute; phần tr&ecirc;n được l&agrave;m bằng chất liệu da cao cấp. Form gi&agrave;y c&oacute; độ &ocirc;m ch&acirc;n vừa vặn, c&oacute; khả năng n&acirc;ng đỡ c&oacute; định hướng v&agrave; hỗ trợ cho đ&ocirc;i ch&acirc;n của người d&ugrave;ng khi di chuyển. C&aacute;c đường n&eacute;t thiết kế của đ&ocirc;i gi&agrave;y v&ocirc; c&ugrave;ng tỉ mỉ, tinh xảo l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"Giày Nike Wmns Air Jordan 1 Low ‘Gym Red Black’ DC0774 016\" height=\"626\" sizes=\"(max-width: 1250px) 100vw, 1250px\" src=\"https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg\" srcset=\"https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg 1250w, https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-300x150.jpeg 300w, https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-600x300.jpeg 600w, https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-686x344.jpeg 686w, https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-768x385.jpeg 768w, https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-60x30.jpeg 60w\" width=\"1250\" /><img alt=\"Giày Nike Wmns Air Jordan 1 Low ‘Gym Red Black’ DC0774 016\" height=\"480\" sizes=\"(max-width: 1250px) 100vw, 1250px\" src=\"https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg\" srcset=\"https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg 1250w, https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-300x115.jpeg 300w, https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-600x230.jpeg 600w, https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-686x263.jpeg 686w, https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-768x295.jpeg 768w, https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-78x30.jpeg 78w\" width=\"1250\" /></p>\r\n\r\n<p>Với ba m&agrave;u cơ bản đen, đỏ v&agrave; trắng nhưng phối hợp lại với nhau tr&ocirc;ng thật h&agrave;i h&ograve;a v&agrave; bắt mắt. M&agrave;u trắng v&agrave; m&agrave;u đen xen kẽ nhau ở trước mũi gi&agrave;y. M&agrave;u đỏ được trang tr&iacute; ở 2 b&ecirc;n m&aacute; gi&agrave;y v&agrave; phần đế ngo&agrave;i. Logo Swoosh m&agrave;u trắng nổi bật tr&ecirc;n nền đỏ chạy dọc hai b&ecirc;n v&ocirc; c&ugrave;ng quen thuộc.</p>\r\n\r\n<h3><strong>2.2 Ưu điểm của Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo;</strong></h3>\r\n\r\n<p><strong>Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo;</strong>&nbsp;thuộc d&ograve;ng gi&agrave;y &ldquo;con cưng&rdquo; của Nike. Ngay từ phi&ecirc;n bản đầu ti&ecirc;n vừa ra mắt, sản phẩm n&agrave;y được b&aacute;n chạy một c&aacute;ch nhanh ch&oacute;ng. Mặc d&ugrave; n&oacute; được Nike c&oacute; gi&aacute; cao v&uacute;t nhưng sức h&uacute;t vẫn kh&ocirc;ng hề giảm.</p>\r\n\r\n<p><img alt=\"Giày Nike Wmns Air Jordan 1 Low ‘Gym Red Black’ DC0774 016\" height=\"897\" sizes=\"(max-width: 1236px) 100vw, 1236px\" src=\"https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg\" srcset=\"https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg 1236w, https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-300x218.jpeg 300w, https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-600x435.jpeg 600w, https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-551x400.jpeg 551w, https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-1102x800.jpeg 1102w, https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-768x557.jpeg 768w, https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-41x30.jpeg 41w\" width=\"1236\" /></p>\r\n\r\n<p>Với ba m&agrave;u cơ bản tạo n&ecirc;n một bản phối m&agrave;u cực kỳ đẹp mắt</p>\r\n\r\n<p>L&agrave; một đ&ocirc;i gi&agrave;y được trang bị phần đệm Nike Air độc quyền. Lớp đệm n&agrave;y sẽ mang lại sự thoải m&aacute;i, &ecirc;m &aacute;i nhất cho đ&ocirc;i ch&acirc;n của bạn. D&ugrave; bạn c&oacute; mang gi&agrave;y cả ng&agrave;y cũng kh&ocirc;ng cảm thấy bị kh&oacute; chịu. Với m&agrave;u sắc trẻ trung, đơn giản bạn c&oacute; thể dễ d&agrave;ng kết hợp n&oacute; với nhiều kiểu trang phục kh&aacute;c nhau như đi chơi, đi dạo phố hay khi luyện tập thể dụng thể thao.</p>\r\n\r\n<h2><strong>3. Mua Gi&agrave;y Nike Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo;&nbsp;</strong><strong>DC0774 016</strong>&nbsp;<strong>ch&iacute;nh h&atilde;ng tại Censor.vn</strong></h2>\r\n\r\n<p>Hiện nay, đ&ocirc;i gi&agrave;y nữ đầy c&aacute; t&iacute;nh như Nike Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo; đ&atilde; c&oacute; sẵn tại&nbsp;<a href=\"https://censor.vn/\"><strong>Censor.vn</strong></a>. Kh&aacute;ch h&agrave;ng lu&ocirc;n cảm thấy y&ecirc;n t&acirc;m khi mua sắm tay đ&acirc;y bởi:</p>\r\n\r\n<ul>\r\n	<li>Censor.vn chuy&ecirc;n cung cấp những mặt h&agrave;ng ch&iacute;nh h&atilde;ng ch&iacute;nh hiệu</li>\r\n	<li>Miễn ph&iacute; chi ph&iacute; vận chuyển cho kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</li>\r\n	<li>C&oacute; ch&iacute;nh s&aacute;ch bảo h&agrave;nh chất lượng sản phẩm trong 3 th&aacute;ng</li>\r\n	<li>C&oacute; ch&iacute;nh s&aacute;ch đổi h&agrave;ng, trả h&agrave;ng trong 15 ng&agrave;y<img alt=\"Giày Nike Wmns Air Jordan 1 Low ‘Gym Red Black’ DC0774 016\" height=\"452\" sizes=\"(max-width: 1250px) 100vw, 1250px\" src=\"https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg\" srcset=\"https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg 1250w, https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-300x108.jpeg 300w, https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-600x217.jpeg 600w, https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-686x248.jpeg 686w, https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-768x278.jpeg 768w, https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-83x30.jpeg 83w\" width=\"1250\" /></li>\r\n</ul>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số th&ocirc;ng tin cụ thể về đ&ocirc;i&nbsp;<strong>gi&agrave;y Wmns Air Jordan 1 Low &lsquo;Gym Red Black&rsquo;</strong>. Thật đ&aacute;ng tiếc nếu như bạn bỏ lỡ cơ hội sở hữu đ&ocirc;i gi&agrave;y đầy phong c&aacute;ch v&agrave; c&aacute; t&iacute;nh n&agrave;y.</p>', '<div class=\"container tabbed-content wc-tabs-wrapper woocommerce-tabs\" style=\"border-top:1px solid #ececec; max-width:1200px; padding:30px 0px; text-align:start; width:819px\">\r\n<div class=\"tab-panels\" style=\"border:1px solid #dddddd; padding:30px; width:819px\">\r\n<div class=\"active entry-content panel woocommerce-Tabs-panel woocommerce-Tabs-panel--description\" id=\"tab-description\" style=\"padding:0px\">\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/\" style=\"box-sizing:border-box; touch-action:manipulation; color:#bfbfbf; text-decoration:none; outline:none\"><strong>The Nike Wmns Air Jordan 1 Low &#39;Gym Red Black&#39; DC0774 016</strong></a>&nbsp;is a low-cut basketball shoe.&nbsp;The shoes have the classic design of the Air Jordan 1 line, but have a very new color scheme.&nbsp;&#39;Gym Red Black&#39; really captivated fashionistas.&nbsp;Here is some specific information about the product.</span></span></span></span></span></p>\r\n\r\n<div class=\"no_bullets\" id=\"toc_container\" style=\"border:1px solid #aaaaaa; margin-bottom:16px; padding:10px; width:auto\">\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15.2px\"><span style=\"background-color:#f9f9f9\"><strong>Content&nbsp;<span style=\"font-size:13.68px\">[&nbsp;</span><span style=\"font-size:13.68px\"><a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/#\" style=\"box-sizing:border-box; touch-action:manipulation; color:#000000; text-decoration:none; text-shadow:none\">Hide</a></span><span style=\"font-size:13.68px\">&nbsp;]</span></strong></span></span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15.2px\"><span style=\"background-color:#f9f9f9\"><a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/#1_Thong_tin_san_pham_Wmns_Air_Jordan_1_Low_8216Gym_Red_Black8217\" style=\"box-sizing:border-box; touch-action:manipulation; color:#000000; text-decoration:none; text-shadow:none\">1. Product information Wmns Air Jordan 1 Low &#39;Gym Red Black&#39;</a></span></span></span></span></span></span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15.2px\"><span style=\"background-color:#f9f9f9\"><a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/#2_Ly_do_lua_chon_Nike_Wmns_Air_Jordan_1_Low_8216Gym_Red_Black8217\" style=\"box-sizing:border-box; touch-action:manipulation; color:#000000; text-decoration:none; text-shadow:none\">2. Why choose Nike Wmns Air Jordan 1 Low &#39;Gym Red Black&#39;?</a></span></span></span></span></span></span></span>\r\n	<ul style=\"margin-left:24px\">\r\n		<li><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15.2px\"><span style=\"background-color:#f9f9f9\"><a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/#21_Thiet_ke_cua_Wmns_Air_Jordan_1_Low_8216Gym_Red_Black8217\" style=\"box-sizing:border-box; touch-action:manipulation; color:#000000; text-decoration:none; text-shadow:none\">2.1 Design of the Wmns Air Jordan 1 Low &#39;Gym Red Black&#39;</a></span></span></span></span></span></span></span></li>\r\n		<li><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15.2px\"><span style=\"background-color:#f9f9f9\"><a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/#22_Uu_diem_cua_Wmns_Air_Jordan_1_Low_8216Gym_Red_Black8217\" style=\"box-sizing:border-box; touch-action:manipulation; color:#000000; text-decoration:none; text-shadow:none\">2.2 Advantages of Wmns Air Jordan 1 Low &#39;Gym Red Black&#39;</a></span></span></span></span></span></span></span></li>\r\n	</ul>\r\n	</li>\r\n	<li><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15.2px\"><span style=\"background-color:#f9f9f9\"><a href=\"https://censor.vn/san-pham/giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016/#3_Mua_Giay_Nike_Wmns_Air_Jordan_1_Low_8216Gym_Red_Black8217_DC0774_016_chinh_hang_tai_Censorvn\" style=\"box-sizing:border-box; touch-action:manipulation; color:#000000; text-decoration:none; text-shadow:none\">3. Buy genuine Nike Wmns Air Jordan 1 Low &#39;Gym Red Black&#39; DC0774 016 Shoes at Censor.vn</a></span></span></span></span></span></span></span></li>\r\n</ul>\r\n</div>\r\n\r\n<h2><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><span style=\"font-size:1.6em\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><strong><strong>1. Product information Wmns Air Jordan 1 Low &#39;Gym Red Black&#39;</strong></strong></span></span></span></span></span></span></span></span></h2>\r\n<span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><img alt=\"Nike Wmns Air Jordan 1 Low \'Gym Red Black\' DC0774 016\" sizes=\"(max-width: 1250px) 100vw, 1250px\" src=\"https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg\" srcset=\"https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg 1250w, https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-300x150.jpeg 300w, https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-600x300.jpeg 600w, https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-686x343.jpeg 686w, https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-768x384.jpeg 768w, https://censor.vn/wp-content/uploads/2022/01/1giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-60x30.jpeg 60w\" /></span></span></span></span></span>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\">Nike Wmns Air Jordan 1 Low &#39;Gym Red Black&#39; DC0774 016</span></span></span></span></span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><span style=\"font-size:1.6em\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><strong><strong>2. Why choose Nike Wmns Air Jordan 1 Low &#39;Gym Red Black&#39;?</strong></strong></span></span></span></span></span></span></span></span></h2>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><span style=\"font-size:1.25em\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><strong><strong>2.1 Design of the Wmns Air Jordan 1 Low &#39;Gym Red Black&#39;</strong></strong></span></span></span></span></span></span></span></span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\">The&nbsp;<strong>Nike Wmns Air Jordan 1 Low &#39;Gym Red Black&#39; Shoe features a</strong>&nbsp;premium leather upper.&nbsp;The shoe form has a snug fit, has directional support and supports the user&#39;s feet when moving.&nbsp;The design lines of the shoes are extremely meticulous and sophisticated to satisfy every customer.</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><img alt=\"Nike Wmns Air Jordan 1 Low \'Gym Red Black\' DC0774 016\" sizes=\"(max-width: 1250px) 100vw, 1250px\" src=\"https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg\" srcset=\"https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg 1250w, https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-300x150.jpeg 300w, https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-600x300.jpeg 600w, https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-686x344.jpeg 686w, https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-768x385.jpeg 768w, https://censor.vn/wp-content/uploads/2022/01/2giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-60x30.jpeg 60w\" /><img alt=\"Nike Wmns Air Jordan 1 Low \'Gym Red Black\' DC0774 016\" sizes=\"(max-width: 1250px) 100vw, 1250px\" src=\"https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg\" srcset=\"https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg 1250w, https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-300x115.jpeg 300w, https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-600x230.jpeg 600w, https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-686x263.jpeg 686w, https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-768x295.jpeg 768w, https://censor.vn/wp-content/uploads/2022/01/3giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-78x30.jpeg 78w\" /></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\">With three basic colors black, red and white, but combined together, it looks harmonious and eye-catching.&nbsp;White and black alternate at the front of the shoe.&nbsp;Red is decorated on both sides of the shoe and the outsole.&nbsp;The white Swoosh logo stands out on the red background running along the very familiar sides.</span></span></span></span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><span style=\"font-size:1.25em\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><strong><strong>2.2 Advantages of Wmns Air Jordan 1 Low &#39;Gym Red Black&#39;</strong></strong></span></span></span></span></span></span></span></span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><strong>Wmns Air Jordan 1 Low &#39;Gym Red Black&#39;</strong>&nbsp;belongs to Nike&#39;s &quot;pet&quot; shoe line.&nbsp;Right from the first version just released, this product sold out quickly.&nbsp;Although it is highly priced by Nike, the attraction has not decreased.</span></span></span></span></span></p>\r\n<span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><img alt=\"Nike Wmns Air Jordan 1 Low \'Gym Red Black\' DC0774 016\" sizes=\"(max-width: 1236px) 100vw, 1236px\" src=\"https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg\" srcset=\"https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg 1236w, https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-300x218.jpeg 300w, https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-600x435.jpeg 600w, https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-551x400.jpeg 551w, https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-1102x800.jpeg 1102w, https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-768x557.jpeg 768w, https://censor.vn/wp-content/uploads/2022/01/4giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-41x30.jpeg 41w\" /></span></span></span></span></span>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\">With three basic colors creating an extremely beautiful color scheme</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\">Is a shoe equipped with exclusive Nike Air cushioning.&nbsp;This cushion will bring the most comfort and softness to your feet.&nbsp;Even if you wear shoes all day, you will not feel uncomfortable.&nbsp;With youthful and simple colors, you can easily combine it with many different outfits such as going out, walking around or doing sports.</span></span></span></span></span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><span style=\"font-size:1.6em\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><strong><strong>3. Buy genuine Nike Wmns Air Jordan 1 Low &#39;Gym Red Black&#39;&nbsp;</strong><strong>DC0774 016&nbsp;</strong><strong>Shoes at Censor.vn</strong></strong></span></span></span></span></span></span></span></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\">Currently, women&#39;s shoes full of personality like the Nike Wmns Air Jordan 1 Low &#39;Gym Red Black&#39; are available at&nbsp;<a href=\"https://censor.vn/\" style=\"box-sizing:border-box; touch-action:manipulation; color:#000000; text-decoration:none\"><strong>Censor.vn</strong></a>&nbsp;.&nbsp;Customers always feel secure when shopping here because:</span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\">Censor.vn specializes in providing genuine genuine products</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\">Free shipping for customers nationwide</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\">There is a product quality warranty policy for 3 months</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\">There is a policy of exchange, return goods within 15 days<img alt=\"Nike Wmns Air Jordan 1 Low \'Gym Red Black\' DC0774 016\" sizes=\"(max-width: 1250px) 100vw, 1250px\" src=\"https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg\" srcset=\"https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016.jpeg 1250w, https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-300x108.jpeg 300w, https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-600x217.jpeg 600w, https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-686x248.jpeg 686w, https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-768x278.jpeg 768w, https://censor.vn/wp-content/uploads/2022/01/5giay-nike-wmns-air-jordan-1-low-gym-red-black-dc0774-016-83x30.jpeg 83w\" /></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\">Above is some specific information about the&nbsp;<strong>Wmns Air Jordan 1 Low &#39;Gym Red Black&#39; shoes</strong>&nbsp;.&nbsp;It&#39;s a pity if you miss the opportunity to own these stylish and individual shoes.</span></span></span></span></span></p>\r\n</div>\r\n\r\n<div class=\"entry-content panel woocommerce-Tabs-panel woocommerce-Tabs-panel--reviews\" id=\"tab-reviews\" style=\"padding:0px\">\r\n<div class=\"row woocommerce-Reviews\" id=\"reviews\" style=\"margin-left:-15px; margin-right:-15px; max-width:1200px; padding-left:0px; padding-right:0px; width:auto\">\r\n<div class=\"col large-12\" id=\"comments\" style=\"max-width:100%; padding:0px 15px 30px; width:787px\">\r\n<h3>&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"col large-12\" id=\"review_form_wrapper\" style=\"max-width:100%; padding:0px 15px 30px; width:787px\">\r\n<div class=\"col-inner\" id=\"review_form\" style=\"width:757px\">\r\n<div class=\"has-border review-form-inner\" style=\"border:1px solid #dddddd; padding:15px 30px 30px\">\r\n<div class=\"comment-respond\" id=\"respond\">\r\n<h3>&nbsp;</h3>\r\n\r\n<form action=\"https://censor.vn/wp-comments-post.php\" id=\"commentform\" method=\"post\">\r\n<div class=\"comment-form-rating\" style=\"padding:0px 15px; width:725px\">\r\n<p>&nbsp;</p>\r\n<span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><select name=\"rating\" required=\"\">&nbsp;<option value=\"\">Xếp hạng&hellip;</option>&nbsp;<option value=\"5\">Rất tốt</option>&nbsp;<option value=\"4\">Tốt</option>&nbsp;<option value=\"3\">Trung b&igrave;nh</option>&nbsp;<option value=\"2\">Kh&ocirc;ng tệ</option>&nbsp;<option value=\"1\">Rất tệ</option>&nbsp; </select></span></span></span></span></span></div>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><textarea cols=\"45\" name=\"comment\" required=\"\" rows=\"8\"></textarea></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><input name=\"author\" size=\"30\" style=\"border:1px solid #dddddd; height:2.507em; width:332.5px\" type=\"text\" value=\"\" /></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><input name=\"email\" size=\"30\" style=\"border:1px solid #dddddd; height:2.507em; width:332.5px\" type=\"email\" value=\"\" /></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><input name=\"wp-comment-cookies-consent\" type=\"checkbox\" value=\"yes\" /></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"background-color:#ffffff\"><input name=\"submit\" style=\"border:1px solid rgba(0, 0, 0, 0.05)\" type=\"submit\" value=\"Gửi đi\" /></span></span></span></span></span></p>\r\n</form>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"product-section related related-products-wrapper\" style=\"border-top:1px solid #ececec; text-align:start\">&nbsp;</div>', 1, 3, 1, 2, 2, '2022-09-14 02:59:27', '2022-09-21 02:54:07', 5, 6900000, 10),
(17, 'Giày Thể Thao Nike PG 4 USA Paul George', 'Nike PG 4 USA Paul George Sneakers', '/storage/product/NSrf7wX5UFuSQgEBthq7.PNG', '15.PNG', '<h2>Gi&agrave;y b&oacute;ng rổ Nike pg 4 USA CD5079-101</h2>\r\n\r\n<h3>Gi&agrave;y b&oacute;ng rổ ch&iacute;nh h&atilde;ng Nike PG4 USA CD5079-101</h3>\r\n\r\n<p><a href=\"https://www.giaybongrochinhhang.com/giay-bong-ro-chinh-hang-nike/\">Gi&agrave;y b&oacute;ng rổ Nike</a>&nbsp;pg 4 USA CD5079-101 ch&iacute;nh h&atilde;ng c&oacute; phối m&agrave;u trắng-đỏ-đen l&agrave; một trong những phối m&agrave;u thường thấy tr&ecirc;n c&aacute;c mẫu gi&agrave;y b&oacute;ng rổ Nike.</p>\r\n\r\n<p><a href=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a.jpg\"><img alt=\"Giày bóng rổ Nike pg 4 USA CD5079-101 7\" height=\"1200\" sizes=\"(max-width: 1200px) 100vw, 1200px\" src=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a.jpg\" srcset=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a.jpg 1200w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a-550x550.jpg 550w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a-100x100.jpg 100w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a-400x400.jpg 400w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a-800x800.jpg 800w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a-280x280.jpg 280w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a-768x768.jpg 768w\" width=\"1200\" /></a></p>\r\n\r\n<p><a href=\"https://www.giaybongrochinhhang.com/giay-bong-ro/\">Gi&agrave;y b&oacute;ng rổ</a>&nbsp;Nike pg4 USA CD5079-101</p>\r\n\r\n<p><a href=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a.jpg\"><img alt=\"Giày bóng rổ Nike pg 4 USA CD5079-101 8\" height=\"1200\" sizes=\"(max-width: 1200px) 100vw, 1200px\" src=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a.jpg\" srcset=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a.jpg 1200w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a-550x550.jpg 550w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a-100x100.jpg 100w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a-400x400.jpg 400w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a-800x800.jpg 800w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a-280x280.jpg 280w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a-768x768.jpg 768w\" width=\"1200\" /></a></p>\r\n\r\n<p>Nike&nbsp;<a href=\"https://www.giaybongrochinhhang.com/product-tag/pg-4/\">PG 4</a>&nbsp;USA CD5079-101</p>\r\n\r\n<p><a href=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a.jpg\"><img alt=\"Giay bong ro Nike pg 4 USA CD5079-101\" height=\"1440\" sizes=\"(max-width: 1152px) 100vw, 1152px\" src=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a.jpg\" srcset=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a.jpg 1152w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a-550x688.jpg 550w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a-320x400.jpg 320w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a-640x800.jpg 640w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a-768x960.jpg 768w\" width=\"1152\" /></a></p>\r\n\r\n<p><a href=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a.jpg\"><img alt=\"giay bong ro Nike PG 4 USA\" height=\"1440\" sizes=\"(max-width: 1080px) 100vw, 1080px\" src=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a.jpg\" srcset=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a.jpg 1080w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a-550x733.jpg 550w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a-300x400.jpg 300w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a-600x800.jpg 600w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a-768x1024.jpg 768w\" width=\"1080\" /></a></p>\r\n\r\n<p><a href=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a.jpg\"><img alt=\"Giày bóng rổ Nike pg 4 USA CD5079-101 9\" height=\"1440\" sizes=\"(max-width: 1080px) 100vw, 1080px\" src=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a.jpg\" srcset=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a.jpg 1080w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a-550x733.jpg 550w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a-300x400.jpg 300w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a-600x800.jpg 600w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a-768x1024.jpg 768w\" width=\"1080\" /></a></p>\r\n\r\n<p><a href=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/601d7cc4d729c_Geotag_ktdv.jpg\"><img alt=\"Nike-PG-4-USA\" height=\"516\" sizes=\"(max-width: 1200px) 100vw, 1200px\" src=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/601d7cc4d729c_Geotag_ktdv.jpg\" srcset=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/601d7cc4d729c_Geotag_ktdv.jpg 1200w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/601d7cc4d729c_Geotag_ktdv-550x237.jpg 550w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/601d7cc4d729c_Geotag_ktdv-800x344.jpg 800w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/601d7cc4d729c_Geotag_ktdv-768x330.jpg 768w\" width=\"1200\" /></a></p>', '<h2 style=\"text-align:start\"><span style=\"font-size:1.6em\"><span style=\"color:#555555\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"background-color:#ffffff\">Nike pg 4 USA basketball shoes CD5079-101</span></span></span></span></h2>\r\n\r\n<h3 style=\"text-align:start\"><span style=\"font-size:1.25em\"><span style=\"color:#555555\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"background-color:#ffffff\">Original Nike PG4 USA Basketball Shoe CD5079-101</span></span></span></span></h3>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:medium\"><span style=\"color:#777777\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"background-color:#ffffff\"><a href=\"https://www.giaybongrochinhhang.com/giay-bong-ro-chinh-hang-nike/\" style=\"box-sizing:border-box; touch-action:manipulation; color:#1e73be; text-decoration:none\">The genuine Nike pg 4 USA CD5079-101 basketball</a>&nbsp;shoe with the white-red-black color scheme is one of the common color schemes found on Nike basketball shoe models.</span></span></span></span></p>\r\n\r\n<p><a href=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a.jpg\" style=\"box-sizing:border-box; touch-action:manipulation; color:#1e73be; text-decoration:none\"><img alt=\"Nike pg 4 USA basketball shoes CD5079-101 7\" sizes=\"(max-width: 1200px) 100vw, 1200px\" src=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a.jpg\" srcset=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a.jpg 1200w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a-550x550.jpg 550w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a-100x100.jpg 100w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a-400x400.jpg 400w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a-800x800.jpg 800w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a-280x280.jpg 280w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-9a-768x768.jpg 768w\" /></a></p>\r\n\r\n<p><a href=\"https://www.giaybongrochinhhang.com/giay-bong-ro/\" style=\"box-sizing:border-box; touch-action:manipulation; color:#1e73be; text-decoration:none\">Nike pg4 USA basketball</a>&nbsp;shoes CD5079-101</p>\r\n\r\n<p><a href=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a.jpg\" style=\"box-sizing:border-box; touch-action:manipulation; color:#1e73be; text-decoration:none\"><img alt=\"Nike pg 4 USA basketball shoes CD5079-101 8\" sizes=\"(max-width: 1200px) 100vw, 1200px\" src=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a.jpg\" srcset=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a.jpg 1200w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a-550x550.jpg 550w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a-100x100.jpg 100w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a-400x400.jpg 400w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a-800x800.jpg 800w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a-280x280.jpg 280w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-8a-768x768.jpg 768w\" /></a></p>\r\n\r\n<p>Nike&nbsp;<a href=\"https://www.giaybongrochinhhang.com/product-tag/pg-4/\" style=\"box-sizing:border-box; touch-action:manipulation; color:#1e73be; text-decoration:none\">PG 4</a>&nbsp;USA CD5079-101</p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:medium\"><span style=\"color:#777777\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"background-color:#ffffff\"><a href=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a.jpg\" style=\"box-sizing:border-box; touch-action:manipulation; color:#1e73be; text-decoration:none\"><img alt=\"Nike pg 4 USA CD5079-101\" sizes=\"(max-width: 1152px) 100vw, 1152px\" src=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a.jpg\" srcset=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a.jpg 1152w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a-550x688.jpg 550w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a-320x400.jpg 320w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a-640x800.jpg 640w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-6a-768x960.jpg 768w\" /></a></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:medium\"><span style=\"color:#777777\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"background-color:#ffffff\"><a href=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a.jpg\" style=\"box-sizing:border-box; touch-action:manipulation; color:#1e73be; text-decoration:none\"><img alt=\"Nike PG 4 USA soccer shoes\" sizes=\"(max-width: 1080px) 100vw, 1080px\" src=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a.jpg\" srcset=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a.jpg 1080w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a-550x733.jpg 550w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a-300x400.jpg 300w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a-600x800.jpg 600w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-5a-768x1024.jpg 768w\" /></a></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:medium\"><span style=\"color:#777777\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"background-color:#ffffff\"><a href=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a.jpg\" style=\"box-sizing:border-box; touch-action:manipulation; color:#1e73be; text-decoration:none\"><img alt=\"Nike pg 4 USA basketball shoes CD5079-101 9\" sizes=\"(max-width: 1080px) 100vw, 1080px\" src=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a.jpg\" srcset=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a.jpg 1080w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a-550x733.jpg 550w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a-300x400.jpg 300w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a-600x800.jpg 600w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/PG-4-USA-CD5079-101-4a-768x1024.jpg 768w\" /></a></span></span></span></span></p>\r\n\r\n<p><a href=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/601d7cc4d729c_Geotag_ktdv.jpg\" style=\"box-sizing:border-box; touch-action:manipulation; color:#000000; text-decoration:none; outline:none\"><img alt=\"Nike-PG-4-USA\" sizes=\"(max-width: 1200px) 100vw, 1200px\" src=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/601d7cc4d729c_Geotag_ktdv.jpg\" srcset=\"https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/601d7cc4d729c_Geotag_ktdv.jpg 1200w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/601d7cc4d729c_Geotag_ktdv-550x237.jpg 550w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/601d7cc4d729c_Geotag_ktdv-800x344.jpg 800w, https://www.giaybongrochinhhang.com/wp-content/uploads/2021/02/601d7cc4d729c_Geotag_ktdv-768x330.jpg 768w\" /></a></p>', 3, 1, 1, 2, 2, '2022-09-14 03:02:13', '2022-09-21 02:48:58', 5, 3150000, 10);
INSERT INTO `san_pham` (`ms_sp`, `ten_sp`, `ten_en_sp`, `ha_sp`, `ten_ha_sp`, `mota_sp`, `mota_en_sp`, `ms_cl`, `ms_gt`, `ms_kd`, `ms_th`, `ms_xx`, `created_at`, `updated_at`, `user_id`, `giaban_sp`, `giam_gia`) VALUES
(18, 'Giày Thể Thao Nike Air Jordan 1 Retro High OG Rebellionaire', 'Nike Air Jordan 1 Retro High OG Rebellionaire Sneakers', '/storage/product/zE1U3sTA4TlD4fVhrQkc.PNG', '16.PNG', '<p>Đối với những người c&oacute; niềm đam m&ecirc; với sneaker, th&igrave; kh&ocirc;ng c&ograve;n xa lạ g&igrave; khi nhắc đến c&aacute;c đ&ocirc;i gi&agrave;y sở hữu c&ocirc;ng nghệ tuyệt vời Zoom Air của Nike. C&oacute; thể kể đến đ&ocirc;i Nike Air Jordan 1 Retro High OG Rebellionaire vừa mới được cho ra mắt gần đ&acirc;y, việc giữ lại c&aacute;c n&eacute;t cổ điển &amp; thiết kế đặc trưng ri&ecirc;ng của đ&ocirc;i gi&agrave;y v&agrave; th&ecirc;m v&agrave;o đ&oacute; những vật liệu mới sẽ khiến sẽ gi&uacute;p AJ1 đẹp hơn trong mắt những ai y&ecirc;u mến sneaker.</p>\r\n\r\n<p>Khi nh&igrave;n v&agrave;o đ&ocirc;i gi&agrave;y n&agrave;y, ch&uacute;ng ta c&oacute; thể thấy ngay phần da m&agrave;u trắng tiếp tục được&nbsp;<a href=\"https://authentic-shoes.com/collections/air-jordan-1\" rel=\"noopener noreferrer\" target=\"_blank\">Air Jordan 1</a>&nbsp;sử dụng, điểm th&ecirc;m l&agrave; phối m&agrave;u x&aacute;m đen c&ugrave;ng những họa tiết chằng chịt tạo một cảm gi&aacute;c rất ph&aacute; c&aacute;ch.&nbsp; Đ&ocirc;i gi&agrave;y cũng tự tạo điểm nhấn cho m&igrave;nh bằng một v&agrave;i details như dấu &#39;X&#39; hay những chữ c&aacute;i li&ecirc;n tiếp nhau. Điểm đ&aacute;ng ch&uacute; &yacute; l&agrave; phần l&oacute;t gi&agrave;y v&agrave; logo đ&ocirc;i c&aacute;nh đặc trưng của Michael Jordan ở cổ gi&agrave;y. Đồng thời ở phần lưỡi l&agrave; chất liệu vải lưới, sự thay đổi n&agrave;y sẽ tạo cảm gi&aacute;c th&ocirc;ng tho&aacute;ng hơn cho người sử dụng. B&ecirc;n dưới vẫn l&agrave; phần đế m&agrave;u trắng che đi bộ phận đế Nike Air c&oacute; chiều d&agrave;i đầy đủ để mang lại sự thoải m&aacute;i cho đ&ocirc;i ch&acirc;n người d&ugrave;ng.</p>', '<p style=\"text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">For those with a passion for sneakers, it is no stranger to mention Nike&#39;s excellent Zoom Air technology shoes.&nbsp;Including the recently released Nike Air Jordan 1 Retro High OG Rebellionaire, retaining the classic features &amp; distinctive design of the shoe and adding new materials will help AJ1 is more beautiful in the eyes of sneaker lovers.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">When looking at these shoes, we can immediately see the white leather that continues to be used by the&nbsp;<a href=\"https://authentic-shoes.com/collections/air-jordan-1\" rel=\"noopener noreferrer\" style=\"box-sizing:border-box; color:#288ad6; text-decoration:none\" target=\"_blank\">Air Jordan 1</a>&nbsp;, with the addition of a dark gray color scheme with interlaced textures to create a very disruptive feeling.&nbsp;The shoes also highlight themselves with a few details such as the &#39;X&#39; sign or consecutive letters.&nbsp;Notable points are the insoles and Michael Jordan&#39;s signature wing logo at the collar.&nbsp;At the same time, the tongue is mesh fabric, this change will create a more airy feeling for the user.&nbsp;Underneath is still a white sole that covers the full-length Nike Air sole to provide comfort to the user&#39;s feet.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 8, 1, 1, 2, 2, '2022-09-14 03:06:16', '2022-09-21 02:45:23', 5, 6900000, 10),
(19, 'Giày Thể Thao Nike Tanjun', 'Nike Tanjun', '/storage/product/qT6KDIS1t91qxUXJNr8m.PNG', '17.PNG', '<ul>\r\n	<li>kiểu d&aacute;ng năng động, trẻ trung th&iacute;ch hợp mang khi chơi thể thao, du lịch, đi học v&agrave; đi l&agrave;m.</li>\r\n	<li>Cấu tr&uacute;c r&atilde;nh Flex mềm mại giảm độ cứng v&agrave; tạo sự thoải m&aacute;i.</li>\r\n	<li>C&ocirc;ng nghệ Bootie lưới căng tho&aacute;ng kh&iacute; vừa vặn an to&agrave;n m&agrave; kh&ocirc;ng qu&aacute; &ocirc;m chật v&agrave;o ch&acirc;n.</li>\r\n	<li>C&ocirc;ng nghệ trợ lực Midsole Cushlon cung cấp đệm nhẹ, đ&aacute;p ứng c&aacute;c ti&ecirc;u chuẩn chuyển động.</li>\r\n	<li>Logo Nike được bố tr&iacute; nổi bật tr&ecirc;n sản phẩm kết hợp m&agrave;u sắc ấn tượng, phong c&aacute;ch hiện đại sẽ g&oacute;p phần khẳng định phong c&aacute;ch thời trang của bạn.</li>\r\n</ul>\r\n\r\n<p>GI&Agrave;Y THỂ THAO NIKE TANJUN 812655-011</p>\r\n\r\n<p>Được đặt t&ecirc;n theo từ tiếng Nhật c&oacute; nghĩa l&agrave; &quot;sự đơn giản&quot;, Gi&agrave;y Nike Tanjun mang đến một thiết kế hiện đại, hợp l&yacute; cho diện mạo h&agrave;ng ng&agrave;y được n&acirc;ng cao.</p>\r\n\r\n<p>&bull; kiểu d&aacute;ng năng động, trẻ trung th&iacute;ch hợp mang khi chơi thể thao, du lịch, đi học v&agrave; đi l&agrave;m. &bull; Cấu tr&uacute;c r&atilde;nh Flex mềm mại giảm độ cứng v&agrave; tạo sự thoải m&aacute;i. &bull; C&ocirc;ng nghệ Bootie lưới căng tho&aacute;ng kh&iacute; vừa vặn an to&agrave;n m&agrave; kh&ocirc;ng qu&aacute; &ocirc;m chật v&agrave;o ch&acirc;n. &bull; C&ocirc;ng nghệ trợ lực Midsole Cushlon cung cấp đệm nhẹ, đ&aacute;p ứng c&aacute;c ti&ecirc;u chuẩn chuyển động. &bull; Logo Nike được bố tr&iacute; nổi bật tr&ecirc;n sản phẩm kết hợp m&agrave;u sắc ấn tượng, phong c&aacute;ch hiện đại sẽ g&oacute;p phần khẳng định phong c&aacute;ch thời trang của bạn.</p>\r\n\r\n<p><img src=\"https://lzd-img-global.slatic.net/g/shop/4708e6dd39712dffec5407e938fe3fa9.jpeg_2200x2200q80.jpg_.webp\" /><img src=\"https://lzd-img-global.slatic.net/g/shop/302aa056f98fb4ea0725fd3eaee0fd67.jpeg_2200x2200q80.jpg_.webp\" /><img src=\"https://lzd-img-global.slatic.net/g/shop/cbfb3aebb335c80a6478745c0f85b8fb.jpeg_2200x2200q80.jpg_.webp\" /><img src=\"https://lzd-img-global.slatic.net/g/shop/4d061a2acabfe352bfedc9f78422cbbc.jpeg_2200x2200q80.jpg_.webp\" /><img src=\"https://lzd-img-global.slatic.net/g/shop/891b51511c2e1be7bda168646abe0975.jpeg_2200x2200q80.jpg_.webp\" /></p>', '<div class=\"html-content pdp-product-highlights\" style=\"border-bottom:1px solid #eff0f5; padding:11px 0px 16px; text-align:start\">\r\n<ul>\r\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,-apple-system,BlinkMacSystemFont,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\">Dynamic, youthful design suitable for sports, travel, school and work.</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,-apple-system,BlinkMacSystemFont,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\">Soft Flex groove construction reduces stiffness and creates comfort.</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,-apple-system,BlinkMacSystemFont,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\">Breathable mesh bootie technology fits securely without being too tight on the foot.</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,-apple-system,BlinkMacSystemFont,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\">Midsole Cushlon technology provides lightweight cushioning that meets motion standards.</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,-apple-system,BlinkMacSystemFont,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\">The Nike logo is prominently arranged on the product with an impressive color combination and modern style that will contribute to your fashion sense.</span></span></span></li>\r\n</ul>\r\n</div>\r\n\r\n<div id=\"detail_decorate_root\" style=\"padding:0px; text-align:start; width:960px\">\r\n<div class=\"engine-app\" id=\"_root\" style=\"padding:0px\">\r\n<div class=\"com-struct\" id=\"Root\" style=\"padding:0px\">\r\n<div class=\"com-struct\" id=\"hc\" style=\"padding:0px\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"hd\" style=\"padding:0px\">&nbsp;</div>\r\n\r\n<div class=\"com-struct\" id=\"bd\" style=\"padding:0px\">\r\n<div class=\"com-struct\" id=\"bd_-999\" style=\"padding:0px\">\r\n<div class=\"com-struct\" id=\"bd_-999_container_0\" style=\"padding:0px\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_0\" style=\"padding:0px\">\r\n<div class=\"com-struct\" id=\"bd_0_container_0\" style=\"padding:0px\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"com-struct\" id=\"bd_1\" style=\"padding:0px\">\r\n<div class=\"com-struct\" id=\"bd_1_container_0\" style=\"padding:0px\">\r\n<div style=\"padding:0px\">\r\n<div class=\"J_module\" id=\"shell-com-650769416\" style=\"padding:0px\">\r\n<div class=\"module-detailImageText\" style=\"padding:0px\">\r\n<div style=\"padding:0px; width:960px\">\r\n<div style=\"padding:0px; width:750px\">\r\n<p style=\"text-align:center\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,-apple-system,BlinkMacSystemFont,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:34px\"><span style=\"background-color:#000000\"><span style=\"font-family:Lato\"><span style=\"color:#ffffff\"><strong>NIKE TANJUN SHOES 812655-011</strong></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,-apple-system,BlinkMacSystemFont,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"background-color:rgba(0, 0, 0, 0)\"><span style=\"font-family:Lato\"><span style=\"color:#000000\">Named for the Japanese word for &quot;simplicity,&quot; the Nike Tanjun Shoe offers a modern, streamlined design for an enhanced everyday look.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,-apple-system,BlinkMacSystemFont,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:18px\"><span style=\"background-color:rgba(0, 0, 0, 0)\"><span style=\"font-family:Lato\"><span style=\"color:#000000\">&bull; Dynamic and youthful design suitable for sports, travel, school and work. &bull; Soft Flex groove construction reduces stiffness and provides comfort. &bull; Breathable stretch mesh Bootie technology for a secure fit without being too tight on the foot. &bull; Cushlon midsole technology provides lightweight cushioning that meets motion standards. &bull; The Nike logo is prominently arranged on the product with an impressive color combination, modern style will contribute to affirming your fashion style.</span></span></span></span></span></span></span></span></p>\r\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Roboto,-apple-system,BlinkMacSystemFont,&quot;Helvetica Neue&quot;,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><img src=\"https://lzd-img-global.slatic.net/g/shop/4708e6dd39712dffec5407e938fe3fa9.jpeg_2200x2200q80.jpg_.webp\" /><img src=\"https://lzd-img-global.slatic.net/g/shop/302aa056f98fb4ea0725fd3eaee0fd67.jpeg_2200x2200q80.jpg_.webp\" /><img src=\"https://lzd-img-global.slatic.net/g/shop/cbfb3aebb335c80a6478745c0f85b8fb.jpeg_2200x2200q80.jpg_.webp\" /><img src=\"https://lzd-img-global.slatic.net/g/shop/4d061a2acabfe352bfedc9f78422cbbc.jpeg_2200x2200q80.jpg_.webp\" /><img src=\"https://lzd-img-global.slatic.net/g/shop/891b51511c2e1be7bda168646abe0975.jpeg_2200x2200q80.jpg_.webp\" /></span></span></span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>', 3, 1, 1, 2, 2, '2022-09-14 03:08:08', '2022-09-29 18:11:12', 5, 2500000, 20),
(20, 'Giày Thể Thao Nike Air Max 97 All White', 'Nike Air Max 97 All White', '/storage/product/kISA8E1zvDxaA1OqdbbE.PNG', '18.PNG', '<p>Gi&agrave;y Nike Air Max 97 l&agrave; một trong những mẫu gi&agrave;y thuộc d&ograve;ng Air Max của thương hiệu Nike. Mẫu gi&agrave;y được thiết kế với form thể thao đặc trưng gi&uacute;p &ocirc;m s&aacute;t đ&ocirc;i ch&acirc;n. Phần upper được l&agrave;m bằng vải lưới cao cấp mang đến sự tho&aacute;ng kh&iacute; tối đa. Lớp đệm Air si&ecirc;u nhẹ gi&uacute;p đ&ocirc;i ch&acirc;n dễ chịu suốt cả ng&agrave;y. R&atilde;nh uốn cong ở đế ngo&agrave;i gi&uacute;p tăng độ đ&agrave;n hồi. Đế ngo&agrave;i bằng cao su chống trượt tạo cảm gi&aacute;c linh hoạt khi di chuyển. Với kiểu d&aacute;ng thời trang v&agrave; nổi bật, gi&agrave;y Nike Air Max 97 sẽ mang đến trải nghiệm tuyệt vời cho bạn.</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN THƯƠNG HIỆU</strong>: Thương hiệu Nike do hai người: William &ldquo;J&rdquo; Bill v&agrave; Philip H. Knight s&aacute;ng lập đến từ Mỹ. Ban đầu, h&atilde;ng c&oacute; t&ecirc;n l&agrave; Blue Ribbon Sports v&agrave; hoạt động như một nh&agrave; ph&acirc;n phối cho c&ocirc;ng ty gi&agrave;y Onitsuka Tiger của Nhật. Năm 1971. Blue Ribbon Sports ch&iacute;nh thức đổi t&ecirc;n th&agrave;nh Nike Inc. Nike Waffle Trainer l&agrave; mẫu gi&agrave;y đầu ti&ecirc;n của Nike được ra mắt năm 1974. Năm 1979, d&ograve;ng Nike Air ra đời tạo n&ecirc;n bước đột ph&aacute; cho thương hiệu Nike sau n&agrave;y. Đến nay, khi đ&atilde; trở th&agrave;nh thương hiệu tr&ecirc;n to&agrave;n thế giới, Nike vẫn tiếp tục cống hiến v&agrave; nổ lực cho đam m&ecirc; của m&igrave;nh khi đưa ra những d&ograve;ng sản phẩm về thể thao</p>\r\n\r\n<p><strong>HƯỚNG DẪN BẢO QUẢN</strong>: Kh&ocirc;ng giặt gi&agrave;y trong m&aacute;y giặt. Nếu gi&agrave;y bị bẩn, h&atilde;y để kh&ocirc; tự nhi&ecirc;n v&agrave; loại bỏ bụi bẩn bằng b&agrave;n chải mềm hoặc khăn ẩm. Nếu gi&agrave;y da bị ướt, h&atilde;y để kh&ocirc; tự nhi&ecirc;n. Gi&agrave;y da c&oacute; thể bị cong v&ecirc;nh nếu bạn sử dụng nhiệt trực tiếp l&ecirc;n gi&agrave;y để l&agrave;m kh&ocirc;. Mẹo: Nhồi giấy v&agrave;o b&ecirc;n trong gi&agrave;y c&oacute; thể l&agrave;m gi&agrave;y kh&ocirc; nhanh v&agrave; giữ được h&igrave;nh d&aacute;ng gi&agrave;y. Những loại gi&agrave;y vải c&oacute; đế bện từ c&oacute;i, đay, d&acirc;y thừng&hellip; kh&ocirc;ng được thiết kế để mang l&acirc;u d&agrave;i trong thời tiết ẩm ướt. Lớp l&oacute;t tr&ecirc;n d&eacute;p, gi&agrave;y sandal c&oacute; thể bị bong, tr&oacute;c do nhiệt độ v&agrave; mồ h&ocirc;i. Điều n&agrave;y l&agrave; kh&ocirc;ng thể tr&aacute;nh khỏi sau một thời gian sử dụng</p>', '<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#757575\"><span style=\"font-family:Poppins,sans-serif\"><span style=\"background-color:#ffffff\">The Nike Air Max 97 shoe is one of the Nike Air Max shoe models.&nbsp;The shoe is designed with a characteristic sporty form to help hug the feet.&nbsp;The upper is made of high-quality mesh fabric for maximum breathability.&nbsp;Ultra-lightweight Air cushioning keeps feet comfortable all day long.&nbsp;Curved grooves in the outsole for increased flexibility.&nbsp;Non-slip rubber outsole provides flexibility on the move.&nbsp;With a stylish and striking design, the Nike Air Max 97 shoe will deliver a great experience for you.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#757575\"><span style=\"font-family:Poppins,sans-serif\"><span style=\"background-color:#ffffff\"><strong>BRAND INFORMATION</strong>&nbsp;: Nike brand was founded by two people: William &ldquo;J&rdquo; Bill and Philip H. Knight from the US.&nbsp;It was originally called Blue Ribbon Sports and operated as a distributor for the Japanese shoe company Onitsuka Tiger.&nbsp;1971. Blue Ribbon Sports officially changed its name to Nike Inc.&nbsp;The Nike Waffle Trainer was the first Nike shoe to be released in 1974. In 1979, the Nike Air line was born, creating a breakthrough for the Nike brand later.&nbsp;Up to now, when it has become a worldwide brand, Nike continues to devote and strive for its passion when it comes to sports product lines.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#757575\"><span style=\"font-family:Poppins,sans-serif\"><span style=\"background-color:#ffffff\"><strong>CARE INSTRUCTIONS</strong>&nbsp;: Do not wash shoes in washing machine.&nbsp;If the shoes get dirty, let them air dry and remove the dirt with a soft brush or damp cloth.&nbsp;If leather shoes get wet, let them dry naturally.&nbsp;Leather shoes can warp if you use direct heat on them to dry them.&nbsp;Tip: Stuffing paper inside the shoe can make the shoe dry faster and keep the shape of the shoe.&nbsp;Cloth shoes with soles made of sedge, jute, rope, etc. are not designed for long-term wear in wet weather.&nbsp;The lining on sandals and sandals can be peeled and peeled due to heat and perspiration.&nbsp;This is inevitable after a period of use</span></span></span></span></p>', 5, 3, 1, 2, 2, '2022-09-14 03:11:06', '2022-09-29 18:01:04', 5, 3900000, 10),
(27, 'giày thể thao addidas da cao cap', NULL, '', '', NULL, NULL, 1, 1, 1, 1, 2, '2022-10-22 18:00:24', '2022-10-22 18:00:24', 5, 100, 0),
(28, 'giay luoi da tongg hop nike', NULL, '', '', NULL, NULL, 2, 2, 3, 2, 1, '2022-10-22 18:01:25', '2022-10-22 18:01:25', 5, 100, 0),
(29, 'slip on vai det gucci', NULL, '', '', NULL, NULL, 3, 2, 4, 4, 1, '2022-10-22 18:02:14', '2022-10-22 18:02:26', 5, 100, 0),
(30, 'sandal da vai mlb', NULL, '', '', NULL, NULL, 4, 1, 5, 5, 1, '2022-10-22 18:03:11', '2022-10-22 18:03:11', 5, 100, 0),
(31, 'cao got vai cao su lascote', NULL, '', '', NULL, NULL, 5, 1, 6, 6, 1, '2022-10-22 18:04:44', '2022-10-22 18:04:58', 5, 100, 0),
(32, 'giay bet vai luoi puma', NULL, '', '', NULL, NULL, 7, 1, 10, 7, 2, '2022-10-22 18:06:19', '2022-10-22 18:36:58', 5, 100, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_social`
--

CREATE TABLE `tbl_social` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_social`
--

INSERT INTO `tbl_social` (`user_id`, `provider_user_id`, `provider`, `user`, `created_at`, `updated_at`) VALUES
(9, '116607781230869495689', 'google', NULL, NULL, NULL),
(12, '765827227830979', 'facebook', NULL, NULL, NULL),
(13, '115587982197015492472', 'google', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_ke_sp`
--

CREATE TABLE `thong_ke_sp` (
  `ms_tksp` bigint(20) UNSIGNED NOT NULL,
  `ngay_dh_tksp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soluong_tksp` bigint(20) DEFAULT NULL,
  `loi_nhuan_tksp` bigint(20) DEFAULT NULL,
  `ms_sp` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_ke_sp`
--

INSERT INTO `thong_ke_sp` (`ms_tksp`, `ngay_dh_tksp`, `soluong_tksp`, `loi_nhuan_tksp`, `ms_sp`, `created_at`, `updated_at`) VALUES
(1, '2022-11-19', 200, 302000000, 20, '2022-11-19 07:23:08', '2022-11-19 07:31:26'),
(2, '2022-11-19', 80, 60000000, 19, '2022-11-19 07:23:08', '2022-11-19 07:31:26'),
(3, '2022-11-19', 40, 128400000, 18, '2022-11-19 07:23:08', '2022-11-19 07:31:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_tin_giao_hang`
--

CREATE TABLE `thong_tin_giao_hang` (
  `ms_ttgh` bigint(20) UNSIGNED NOT NULL,
  `ho_ten_ttgh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt_ttgh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi_ttgh` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matp` bigint(20) DEFAULT NULL,
  `maqh` bigint(20) DEFAULT NULL,
  `xaid` bigint(20) DEFAULT NULL,
  `ms_kh` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Email_ttgh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_tin_giao_hang`
--

INSERT INTO `thong_tin_giao_hang` (`ms_ttgh`, `ho_ten_ttgh`, `sdt_ttgh`, `diachi_ttgh`, `matp`, `maqh`, `xaid`, `ms_kh`, `created_at`, `updated_at`, `Email_ttgh`) VALUES
(32, 'nguyen van a', '1111111111', 'nguyen van a', 92, 916, 31117, 16, '2022-10-19 19:49:43', '2022-10-19 19:49:43', 'nguyenvana@gmail.com'),
(33, 'nguyen van b', '0944235566', '479', 93, 930, 31318, 16, '2022-10-19 20:10:44', '2022-10-19 20:10:44', 'nguyenvanb@gmail.com'),
(34, 'nguyen van c', '0944235566', '479', 92, 919, 31186, 16, '2022-10-19 20:19:21', '2022-10-19 20:19:21', 'nguyenvanc@gmail.com'),
(35, 'nguyen van d', '0944235566', '479', 92, 924, 31211, 16, '2022-10-19 20:27:14', '2022-10-19 20:27:14', 'nguyenvand@gmail.com'),
(36, 'nguyen van e', '0944235566', '479', 92, 923, 31219, 16, '2022-10-19 20:27:54', '2022-10-19 20:27:54', 'nguyenvanae@gmail.com'),
(37, 'Bùi Công Minh', '0944235566', '568', 92, 916, 31150, 19, '2022-10-19 22:39:42', '2022-10-19 22:39:42', 'buicongminh2023@gmail.com'),
(38, 'Bùi Công Minh', '0944235566', '479', 92, 916, 31117, 19, '2022-10-26 06:30:58', '2022-10-26 06:30:58', 'buicongminh2023@gmail.com'),
(39, 'Bùi Công Minh', '0944235566', '479', 92, 923, 31219, 19, '2022-10-26 06:31:25', '2022-10-26 06:31:25', 'buicongminh2023@gmail.com'),
(40, 'Bùi Công Minh', '0944235566', '479', 93, 930, 31318, 19, '2022-10-26 06:31:53', '2022-10-26 06:31:53', 'buicongminh2023@gmail.com'),
(41, 'Nguyễn Văn A', '0939357747', '568', 92, 916, 31150, 19, '2022-11-10 02:23:11', '2022-11-10 02:23:11', 'buicongminh2023@gmail.com'),
(42, 'Nguyễn Văn B', '0945321415', '489', 92, 916, 31117, 19, '2022-11-10 02:25:36', '2022-11-10 02:25:36', 'buicongminh2023@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuong_hieu`
--

CREATE TABLE `thuong_hieu` (
  `ms_th` bigint(20) UNSIGNED NOT NULL,
  `ten_th` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ha_th` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_ha_th` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuong_hieu`
--

INSERT INTO `thuong_hieu` (`ms_th`, `ten_th`, `created_at`, `updated_at`, `ha_th`, `ten_ha_th`) VALUES
(1, 'Adidas', '2022-09-12 02:45:59', '2022-09-12 02:50:19', '/storage/Thuong_Hieu/P3gmQQxFLquDAbUkxzp6.png', 'Adidas_Logo.svg.png'),
(2, 'Nike', '2022-09-12 02:46:06', '2022-09-12 02:51:32', '/storage/Thuong_Hieu/07EFMd9N7StP3M0q2txC.PNG', 'NIKE.PNG'),
(4, 'Gucci', '2022-09-12 02:53:18', '2022-09-12 02:53:18', '/storage/Thuong_Hieu/LdNlVtAq1hRg0BiVxEpw.jpg', 'GUCCI_THUMB_237af47c-c672-444b-bd49-5bf9b5d4b99b_394x.jpg'),
(5, 'MLB', '2022-09-12 02:54:02', '2022-09-12 02:54:02', '/storage/Thuong_Hieu/23ufaIADYr5ZITmuBu5F.png', 'MLB-Logo.png'),
(6, 'Lacoste', '2022-09-12 02:55:09', '2022-09-12 02:55:09', '/storage/Thuong_Hieu/7VMjq4AWYzD8BV2ELBZJ.png', 'Lacoste_logo.png'),
(7, 'Puma', '2022-09-12 02:56:17', '2022-09-12 02:56:17', '/storage/Thuong_Hieu/sGRokSfN4kymdWIMDJ2V.jpg', 'PUMA-logo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhthanhpho`
--

CREATE TABLE `tinhthanhpho` (
  `matp` int(5) NOT NULL,
  `name_tp` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tinhthanhpho`
--

INSERT INTO `tinhthanhpho` (`matp`, `name_tp`, `type`) VALUES
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `sdt`, `dia_chi`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'bùi công minh', '0944235566', 'cần thơ', 'admin@gmail.com', NULL, '$2y$10$4z23okEIvjvA2rEZPB59oesBz2IHel7tmVRET/SABh2bJ8hQDtJkK', NULL, '2022-08-14 13:28:00', '2022-10-29 02:49:27'),
(6, 'Bùi Công Minh', '0944235566', 'cần thơ', 'root@gmail.com', NULL, '$2y$10$iKWI2HkfPHhDjELzdWSBX.goI6KnzH7HDrQoNWl1LeuyurdtO4flm', NULL, '2022-08-15 16:59:45', '2022-08-15 16:59:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xaphuongthitran`
--

CREATE TABLE `xaphuongthitran` (
  `xaid` int(5) NOT NULL,
  `name_xa` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `maqh` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `xaphuongthitran`
--

INSERT INTO `xaphuongthitran` (`xaid`, `name_xa`, `type`, `maqh`) VALUES
(31117, 'Phường Cái Khế', 'Phường', 916),
(31120, 'Phường An Hòa', 'Phường', 916),
(31123, 'Phường Thới Bình', 'Phường', 916),
(31126, 'Phường An Nghiệp', 'Phường', 916),
(31129, 'Phường An Cư', 'Phường', 916),
(31132, 'Phường An Hội', 'Phường', 916),
(31135, 'Phường Tân An', 'Phường', 916),
(31138, 'Phường An Lạc', 'Phường', 916),
(31141, 'Phường An Phú', 'Phường', 916),
(31144, 'Phường Xuân Khánh', 'Phường', 916),
(31147, 'Phường Hưng Lợi', 'Phường', 916),
(31149, 'Phường An Khánh', 'Phường', 916),
(31150, 'Phường An Bình', 'Phường', 916),
(31153, 'Phường Châu Văn Liêm', 'Phường', 917),
(31154, 'Phường Thới Hòa', 'Phường', 917),
(31156, 'Phường Thới Long', 'Phường', 917),
(31157, 'Phường Long Hưng', 'Phường', 917),
(31159, 'Phường Thới An', 'Phường', 917),
(31162, 'Phường Phước Thới', 'Phường', 917),
(31165, 'Phường Trường Lạc', 'Phường', 917),
(31168, 'Phường Bình Thủy', 'Phường', 918),
(31169, 'Phường Trà An', 'Phường', 918),
(31171, 'Phường Trà Nóc', 'Phường', 918),
(31174, 'Phường Thới An Đông', 'Phường', 918),
(31177, 'Phường An Thới', 'Phường', 918),
(31178, 'Phường Bùi Hữu Nghĩa', 'Phường', 918),
(31180, 'Phường Long Hòa', 'Phường', 918),
(31183, 'Phường Long Tuyền', 'Phường', 918),
(31186, 'Phường Lê Bình', 'Phường', 919),
(31189, 'Phường Hưng Phú', 'Phường', 919),
(31192, 'Phường Hưng Thạnh', 'Phường', 919),
(31195, 'Phường Ba Láng', 'Phường', 919),
(31198, 'Phường Thường Thạnh', 'Phường', 919),
(31201, 'Phường Phú Thứ', 'Phường', 919),
(31204, 'Phường Tân Phú', 'Phường', 919),
(31207, 'Phường Thốt Nốt', 'Phường', 923),
(31210, 'Phường Thới Thuận', 'Phường', 923),
(31211, 'Xã Vĩnh Bình', 'Xã', 924),
(31212, 'Phường Thuận An', 'Phường', 923),
(31213, 'Phường Tân Lộc', 'Phường', 923),
(31216, 'Phường Trung Nhứt', 'Phường', 923),
(31217, 'Phường Thạnh Hoà', 'Phường', 923),
(31219, 'Phường Trung Kiên', 'Phường', 923),
(31222, 'Xã Trung An', 'Xã', 925),
(31225, 'Xã Trung Thạnh', 'Xã', 925),
(31227, 'Phường Tân Hưng', 'Phường', 923),
(31228, 'Phường Thuận Hưng', 'Phường', 923),
(31231, 'Thị trấn Thanh An', 'Thị trấn', 924),
(31232, 'Thị trấn Vĩnh Thạnh', 'Thị trấn', 924),
(31234, 'Xã Thạnh Mỹ', 'Xã', 924),
(31237, 'Xã Vĩnh Trinh', 'Xã', 924),
(31240, 'Xã Thạnh An', 'Xã', 924),
(31241, 'Xã Thạnh Tiến', 'Xã', 924),
(31243, 'Xã Thạnh Thắng', 'Xã', 924),
(31244, 'Xã Thạnh Lợi', 'Xã', 924),
(31246, 'Xã Thạnh Qưới', 'Xã', 924),
(31249, 'Xã Thạnh Phú', 'Xã', 925),
(31252, 'Xã Thạnh Lộc', 'Xã', 924),
(31255, 'Xã Trung Hưng', 'Xã', 925),
(31258, 'Thị trấn Thới Lai', 'Thị trấn', 927),
(31261, 'Thị trấn Cờ Đỏ', 'Thị trấn', 925),
(31264, 'Xã Thới Hưng', 'Xã', 925),
(31267, 'Xã Thới Thạnh', 'Xã', 927),
(31268, 'Xã Tân Thạnh', 'Xã', 927),
(31270, 'Xã Xuân Thắng', 'Xã', 927),
(31273, 'Xã Đông Hiệp', 'Xã', 925),
(31274, 'Xã Đông Thắng', 'Xã', 925),
(31276, 'Xã Thới Đông', 'Xã', 925),
(31277, 'Xã Thới Xuân', 'Xã', 925),
(31279, 'Xã Đông Bình', 'Xã', 927),
(31282, 'Xã Đông Thuận', 'Xã', 927),
(31285, 'Xã Thới Tân', 'Xã', 927),
(31286, 'Xã Trường Thắng', 'Xã', 927),
(31288, 'Xã Định Môn', 'Xã', 927),
(31291, 'Xã Trường Thành', 'Xã', 927),
(31294, 'Xã Trường Xuân', 'Xã', 927),
(31297, 'Xã Trường Xuân A', 'Xã', 927),
(31298, 'Xã Trường Xuân B', 'Xã', 927),
(31299, 'Thị trấn Phong Điền', 'Thị trấn', 926),
(31300, 'Xã Nhơn Ái', 'Xã', 926),
(31303, 'Xã Giai Xuân', 'Xã', 926),
(31306, 'Xã Tân Thới', 'Xã', 926),
(31309, 'Xã Trường Long', 'Xã', 926),
(31312, 'Xã Mỹ Khánh', 'Xã', 926),
(31315, 'Xã Nhơn Nghĩa', 'Xã', 926),
(31318, 'Phường I', 'Phường', 930),
(31321, 'Phường III', 'Phường', 930),
(31324, 'Phường IV', 'Phường', 930),
(31327, 'Phường V', 'Phường', 930),
(31330, 'Phường VII', 'Phường', 930),
(31333, 'Xã Vị Tân', 'Xã', 930),
(31336, 'Xã Hoả Lựu', 'Xã', 930),
(31338, 'Xã Tân Tiến', 'Xã', 930),
(31339, 'Xã Hoả Tiến', 'Xã', 930),
(31340, 'Phường Ngã Bảy', 'Phường', 931),
(31341, 'Phường Lái Hiếu', 'Phường', 931),
(31342, 'Thị trấn Một Ngàn', 'Thị trấn', 932),
(31343, 'Phường Hiệp Thành', 'Phường', 931),
(31344, 'Xã Hiệp Lợi', 'Xã', 931),
(31345, 'Xã Tân Hoà', 'Xã', 932),
(31346, 'Thị trấn Bảy Ngàn', 'Thị trấn', 932),
(31348, 'Xã Trường Long Tây', 'Xã', 932),
(31351, 'Xã Trường Long A', 'Xã', 932),
(31357, 'Xã Nhơn Nghĩa A', 'Xã', 932),
(31359, 'Thị trấn Rạch Gòi', 'Thị trấn', 932),
(31360, 'Xã Thạnh Xuân', 'Xã', 932),
(31362, 'Thị trấn Cái Tắc', 'Thị trấn', 932),
(31363, 'Xã Tân Phú Thạnh', 'Xã', 932),
(31366, 'Thị Trấn Ngã Sáu', 'Thị trấn', 933),
(31369, 'Xã Đông Thạnh', 'Xã', 933),
(31372, 'Xã Phú An', 'Xã', 933),
(31375, 'Xã Đông Phú', 'Xã', 933),
(31378, 'Xã Phú Hữu', 'Xã', 933),
(31379, 'Xã Phú Tân', 'Xã', 933),
(31381, 'Thị trấn Mái Dầm', 'Thị trấn', 933),
(31384, 'Xã Đông Phước', 'Xã', 933),
(31387, 'Xã Đông Phước A', 'Xã', 933),
(31393, 'Thị trấn Kinh Cùng', 'Thị trấn', 934),
(31396, 'Thị trấn Cây Dương', 'Thị trấn', 934),
(31399, 'Xã Tân Bình', 'Xã', 934),
(31402, 'Xã Bình Thành', 'Xã', 934),
(31405, 'Xã Thạnh Hòa', 'Xã', 934),
(31408, 'Xã Long Thạnh', 'Xã', 934),
(31411, 'Xã Đại Thành', 'Xã', 931),
(31414, 'Xã Tân Thành', 'Xã', 931),
(31417, 'Xã Phụng Hiệp', 'Xã', 934),
(31420, 'Xã Hòa Mỹ', 'Xã', 934),
(31423, 'Xã Hòa An', 'Xã', 934),
(31426, 'Xã Phương Bình', 'Xã', 934),
(31429, 'Xã Hiệp Hưng', 'Xã', 934),
(31432, 'Xã Tân Phước Hưng', 'Xã', 934),
(31433, 'Thị trấn Búng Tàu', 'Thị trấn', 934),
(31435, 'Xã Phương Phú', 'Xã', 934),
(31438, 'Xã Tân Long', 'Xã', 934),
(31441, 'Thị trấn Nàng Mau', 'Thị trấn', 935),
(31444, 'Xã Vị Trung', 'Xã', 935),
(31447, 'Xã Vị Thuỷ', 'Xã', 935),
(31450, 'Xã Vị Thắng', 'Xã', 935),
(31453, 'Xã Vĩnh Thuận Tây', 'Xã', 935),
(31456, 'Xã Vĩnh Trung', 'Xã', 935),
(31459, 'Xã Vĩnh Tường', 'Xã', 935),
(31462, 'Xã Vị Đông', 'Xã', 935),
(31465, 'Xã Vị Thanh', 'Xã', 935),
(31468, 'Xã Vị Bình', 'Xã', 935),
(31471, 'Phường Thuận An', 'Phường', 937),
(31472, 'Phường Trà Lồng', 'Phường', 937),
(31473, 'Phường Bình Thạnh', 'Phường', 937),
(31474, 'Xã Long Bình', 'Xã', 937),
(31475, 'Phường Vĩnh Tường', 'Phường', 937),
(31477, 'Xã Long Trị', 'Xã', 937),
(31478, 'Xã Long Trị A', 'Xã', 937),
(31480, 'Xã Long Phú', 'Xã', 937),
(31481, 'Xã Tân Phú', 'Xã', 937),
(31483, 'Xã Thuận Hưng', 'Xã', 936),
(31484, 'Xã Thuận Hòa', 'Xã', 936),
(31486, 'Xã Vĩnh Thuận Đông', 'Xã', 936),
(31489, 'Xã Vĩnh Viễn', 'Xã', 936),
(31490, 'Xã Vĩnh Viễn A', 'Xã', 936),
(31492, 'Xã Lương Tâm', 'Xã', 936),
(31493, 'Xã Lương Nghĩa', 'Xã', 936),
(31495, 'Xã Xà Phiên', 'Xã', 936);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xuat_xu`
--

CREATE TABLE `xuat_xu` (
  `ms_xx` bigint(20) UNSIGNED NOT NULL,
  `ten_xx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_en_xx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `xuat_xu`
--

INSERT INTO `xuat_xu` (`ms_xx`, `ten_xx`, `ten_en_xx`, `created_at`, `updated_at`) VALUES
(1, 'Đức', 'Germany', '2022-09-13 19:46:11', '2022-09-13 19:46:11'),
(2, 'Mỹ', 'American', '2022-09-13 19:49:33', '2022-09-13 19:50:37'),
(4, 'Hàn Quốc', 'Korea', '2022-09-13 21:05:22', '2022-09-13 21:05:22');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chat_bot`
--
ALTER TABLE `chat_bot`
  ADD PRIMARY KEY (`id_cb`);

--
-- Chỉ mục cho bảng `chat_lieu`
--
ALTER TABLE `chat_lieu`
  ADD PRIMARY KEY (`ms_cl`);

--
-- Chỉ mục cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`ms_ctdh`);

--
-- Chỉ mục cho bảng `chi_tiet_san_pham`
--
ALTER TABLE `chi_tiet_san_pham`
  ADD PRIMARY KEY (`ms_ctsp`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `comment_oder`
--
ALTER TABLE `comment_oder`
  ADD PRIMARY KEY (`comment_oder_id`);

--
-- Chỉ mục cho bảng `danh_gia_sao`
--
ALTER TABLE `danh_gia_sao`
  ADD PRIMARY KEY (`ms_dgs`);

--
-- Chỉ mục cho bảng `danh_gia_sao_don_hang`
--
ALTER TABLE `danh_gia_sao_don_hang`
  ADD PRIMARY KEY (`ms_dgsdh`);

--
-- Chỉ mục cho bảng `doanh_thus`
--
ALTER TABLE `doanh_thus`
  ADD PRIMARY KEY (`ms_dt`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`ms_dh`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gioi_tinh`
--
ALTER TABLE `gioi_tinh`
  ADD PRIMARY KEY (`ms_gt`);

--
-- Chỉ mục cho bảng `hinh_anh_san_pham`
--
ALTER TABLE `hinh_anh_san_pham`
  ADD PRIMARY KEY (`ms_ha`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ms_kh`);

--
-- Chỉ mục cho bảng `kich_co`
--
ALTER TABLE `kich_co`
  ADD PRIMARY KEY (`ms_kc`);

--
-- Chỉ mục cho bảng `kieu_dang`
--
ALTER TABLE `kieu_dang`
  ADD PRIMARY KEY (`ms_kd`);

--
-- Chỉ mục cho bảng `mau_sac`
--
ALTER TABLE `mau_sac`
  ADD PRIMARY KEY (`ms_mau`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoi_van_chuyen`
--
ALTER TABLE `nguoi_van_chuyen`
  ADD PRIMARY KEY (`ms_nvc`);

--
-- Chỉ mục cho bảng `nhap_hang`
--
ALTER TABLE `nhap_hang`
  ADD PRIMARY KEY (`ms_nh`);

--
-- Chỉ mục cho bảng `nha_cung_cap`
--
ALTER TABLE `nha_cung_cap`
  ADD PRIMARY KEY (`ms_ncc`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phi_ships`
--
ALTER TABLE `phi_ships`
  ADD PRIMARY KEY (`phi_ship_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ms_sp`);

--
-- Chỉ mục cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `thong_ke_sp`
--
ALTER TABLE `thong_ke_sp`
  ADD PRIMARY KEY (`ms_tksp`);

--
-- Chỉ mục cho bảng `thong_tin_giao_hang`
--
ALTER TABLE `thong_tin_giao_hang`
  ADD PRIMARY KEY (`ms_ttgh`);

--
-- Chỉ mục cho bảng `thuong_hieu`
--
ALTER TABLE `thuong_hieu`
  ADD PRIMARY KEY (`ms_th`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `xuat_xu`
--
ALTER TABLE `xuat_xu`
  ADD PRIMARY KEY (`ms_xx`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chat_bot`
--
ALTER TABLE `chat_bot`
  MODIFY `id_cb` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `chat_lieu`
--
ALTER TABLE `chat_lieu`
  MODIFY `ms_cl` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `ms_ctdh` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_san_pham`
--
ALTER TABLE `chi_tiet_san_pham`
  MODIFY `ms_ctsp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `comment_oder`
--
ALTER TABLE `comment_oder`
  MODIFY `comment_oder_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `danh_gia_sao`
--
ALTER TABLE `danh_gia_sao`
  MODIFY `ms_dgs` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `danh_gia_sao_don_hang`
--
ALTER TABLE `danh_gia_sao_don_hang`
  MODIFY `ms_dgsdh` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `doanh_thus`
--
ALTER TABLE `doanh_thus`
  MODIFY `ms_dt` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `ms_dh` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gioi_tinh`
--
ALTER TABLE `gioi_tinh`
  MODIFY `ms_gt` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hinh_anh_san_pham`
--
ALTER TABLE `hinh_anh_san_pham`
  MODIFY `ms_ha` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `ms_kh` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `kich_co`
--
ALTER TABLE `kich_co`
  MODIFY `ms_kc` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `kieu_dang`
--
ALTER TABLE `kieu_dang`
  MODIFY `ms_kd` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `mau_sac`
--
ALTER TABLE `mau_sac`
  MODIFY `ms_mau` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `nguoi_van_chuyen`
--
ALTER TABLE `nguoi_van_chuyen`
  MODIFY `ms_nvc` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `nhap_hang`
--
ALTER TABLE `nhap_hang`
  MODIFY `ms_nh` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT cho bảng `nha_cung_cap`
--
ALTER TABLE `nha_cung_cap`
  MODIFY `ms_ncc` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT cho bảng `phi_ships`
--
ALTER TABLE `phi_ships`
  MODIFY `phi_ship_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `ms_sp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `thong_ke_sp`
--
ALTER TABLE `thong_ke_sp`
  MODIFY `ms_tksp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `thong_tin_giao_hang`
--
ALTER TABLE `thong_tin_giao_hang`
  MODIFY `ms_ttgh` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `thuong_hieu`
--
ALTER TABLE `thuong_hieu`
  MODIFY `ms_th` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `xuat_xu`
--
ALTER TABLE `xuat_xu`
  MODIFY `ms_xx` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2025 pada 02.48
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jajanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alamat_user`
--

CREATE TABLE `alamat_user` (
  `id_alamat` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `nama_prov` varchar(255) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `nama_kota` varchar(255) NOT NULL,
  `kode_pos` varchar(255) DEFAULT NULL,
  `alamat_lengkap` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alamat_user`
--

INSERT INTO `alamat_user` (`id_alamat`, `id_user`, `no_telp`, `nama_penerima`, `id_provinsi`, `nama_prov`, `id_kota`, `nama_kota`, `kode_pos`, `alamat_lengkap`, `created_at`, `updated_at`) VALUES
(3, 2, '08117807970', 'Ari Dwiantoro', 33, 'Sumatera Selatan', 327, 'Palembang', '30151', 'jl. Suka bangun 2', '2022-11-07 18:32:21', '2022-11-07 18:32:21'),
(4, 3, '081218113193', 'tere', 32, 'Sumatera Barat', 318, 'Padang', '30151', 'jl. suka bangun', '2022-11-20 14:36:01', '2022-11-20 14:36:01'),
(5, 4, '0895377317090', 'abuy', 9, 'Jawa Barat', 24, 'Bandung Barat', '40551', 'cisarua rt/rw 04/04', '2025-01-11 01:39:11', '2025-01-11 01:39:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `id_pesan` bigint(20) UNSIGNED NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`id_pesan`, `from_id`, `to_id`, `pesan`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'hai admin', 'on read', '2022-11-12 19:09:46', '2022-11-12 20:36:54'),
(2, 1, 2, 'iya ada apa', 'on read', '2022-11-12 19:09:46', '2022-11-12 20:41:16'),
(3, 2, 1, 'saya mau minta tolong', 'on read', '2022-11-12 19:13:57', '2022-11-12 20:36:54'),
(4, 3, 1, 'good night admin', 'on read', '2022-11-12 20:17:48', '2022-11-12 20:38:12'),
(5, 1, 2, 'boleh', 'off read', '2022-11-12 20:17:48', '2022-11-12 20:41:16'),
(6, 1, 3, 'good night to', 'off read', '2022-11-12 20:38:12', '2022-11-12 20:38:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `deskripsi_kategori` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `deskripsi_kategori`, `created_at`, `updated_at`) VALUES
(2, 'makaroni', 'Makaroni Mantap', '2022-11-05 17:31:53', '2022-11-05 18:00:43'),
(3, 'basreng pedas', NULL, '2022-11-05 17:32:14', '2022-11-05 17:32:14'),
(4, 'nastar nanas', NULL, '2022-11-05 17:33:08', '2022-11-05 17:33:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `komentar_produk` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_user`, `id_produk`, `komentar_produk`, `created_at`, `updated_at`) VALUES
(2, 4, 4, 'Produk Memuaskan Sekali', '2025-01-11 01:44:24', '2025-01-11 01:44:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2022_11_05_235950_create_kategori_table', 2),
(16, '2022_11_06_104923_create_produk_table', 3),
(17, '2022_11_07_192142_create_keranjang_table', 4),
(18, '2022_11_07_225304_create_alamat_user_table', 5),
(19, '2022_11_08_024919_create_rekening_table', 6),
(21, '2022_11_12_044210_create_resi_table', 8),
(22, '2022_11_13_013057_create_chat_table', 9),
(24, '2022_11_08_162750_create_pesanan_table', 10),
(25, '2022_11_29_234224_create_komentar_table', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` bigint(20) UNSIGNED NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `harga_total_bayar` int(11) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `total_ongkir` int(11) NOT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `total_dp` bigint(20) DEFAULT NULL,
  `bukti_bayar_dp` text DEFAULT NULL,
  `bukti_bayar_dp_lunas` text DEFAULT NULL,
  `dp_status` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tipe_pembayaran` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_produk`, `id_user`, `quantity`, `harga_total_bayar`, `ongkir`, `total_ongkir`, `bukti_bayar`, `total_dp`, `bukti_bayar_dp`, `bukti_bayar_dp_lunas`, `dp_status`, `status`, `tipe_pembayaran`, `created_at`, `updated_at`) VALUES
(5, 4, 4, 1, 10000, 19000, 29000, '5.jpg', NULL, NULL, NULL, NULL, '4', 'lunas', '2025-01-11 01:39:59', '2025-01-11 01:44:24'),
(6, 6, 4, 1, 2500, 190000, 192500, 'WhatsApp Image 2024-10-31 at 20.43.33_73087686.jpg', NULL, NULL, NULL, NULL, '3', 'lunas', '2025-01-11 01:41:10', '2025-01-11 01:46:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `berat` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `foto_produk` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `id_kategori`, `berat`, `stok`, `harga_produk`, `deskripsi_produk`, `foto_produk`, `created_at`, `updated_at`) VALUES
(4, 'Bolu Lapis Pelangi', 4, '1000', 9, 10000, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'WhatsApp Image 2022-10-16 at 20.07.49.jpeg', '2022-11-06 15:45:27', '2025-01-11 01:42:14'),
(5, 'basreng ladaaaaaaaa', 3, '50000', 100, 5000, '<p>sama sigit</p>', 'sigit.png', '2025-01-11 01:34:55', '2025-01-11 01:34:55'),
(6, 'mang oni', 2, '10000', 24, 2500, '<p>satukah</p>', 'th.jpeg', '2025-01-11 01:35:42', '2025-01-11 01:45:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` bigint(20) UNSIGNED NOT NULL,
  `nama_rek` varchar(255) NOT NULL,
  `jenis_rekening` varchar(255) NOT NULL,
  `no_rek` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `nama_rek`, `jenis_rekening`, `no_rek`, `created_at`, `updated_at`) VALUES
(1, 'rizki ratih 2', 'bni', '081877236012', '2022-11-07 20:48:11', '2022-11-07 21:13:35'),
(2, 'ari', 'bca', '90232839743', '2022-11-08 08:22:21', '2022-11-08 08:22:21'),
(3, 'mabok', 'bri', '2893938', '2022-11-08 08:22:34', '2022-11-08 08:22:34'),
(4, 'tata', 'mandiri', '232893841', '2022-11-08 08:22:52', '2022-11-08 08:22:52'),
(5, 'sina', 'bsi', '12828723', '2022-11-08 08:23:04', '2022-11-08 08:23:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resi`
--

CREATE TABLE `resi` (
  `id_resi` bigint(20) UNSIGNED NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `no_resi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `resi`
--

INSERT INTO `resi` (`id_resi`, `id_pesanan`, `no_resi`, `created_at`, `updated_at`) VALUES
(6, 5, 123, '2025-01-11 01:42:38', '2025-01-11 01:42:38'),
(7, 6, 222, '2025-01-11 01:46:14', '2025-01-11 01:46:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `foto_profile` text DEFAULT NULL,
  `hp` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `foto_profile`, `hp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin anita', 'admin@admin.com', '2022-11-05 07:44:53', '$2y$10$aDJc9xYb11Udc98ri0GYuehzI8XrpiOV2lMgr3Je7/2d3xRSHoRpm', 'admin', '086593900_1553668873-LISA_BLACKPINK_1.jpg', '081218113193', 'l3ft0IlZgNaPy7MHHYoOEEIbXZpZdIMp9ZwqXmOINCkifozqHiIkD7o18pkH', '2022-11-05 07:44:53', '2022-11-05 16:47:45'),
(2, 'ari dwiantoro', 'aridwiantoro09@gmail.com', NULL, '$2y$10$P5fnR9z1t000WTyB6hUfcufzLZ6cuyJi7XIhpAmIAPf/UyMgqakdm', 'customer', NULL, '08117807970', NULL, '2022-11-07 06:47:02', '2022-11-07 06:48:45'),
(3, 'tere', 'tere@tere.com', NULL, '$2y$10$Yv70.czYAJsd5F0in9J.fOKPOp9w6gRS1eGboiGqVnhJ5DxVvH1J6', 'customer', NULL, NULL, NULL, '2022-11-08 06:35:18', '2022-11-08 06:35:18'),
(4, 'abuy', 'abuy@gmail.com', NULL, '$2y$10$Nk/c1AAjUQ1xaGbDGFjZPuGbGtm3QPxCp1qfeueGgtX2qAd.5KKCq', 'customer', NULL, NULL, NULL, '2025-01-11 01:37:16', '2025-01-11 01:37:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alamat_user`
--
ALTER TABLE `alamat_user`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indeks untuk tabel `resi`
--
ALTER TABLE `resi`
  ADD PRIMARY KEY (`id_resi`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alamat_user`
--
ALTER TABLE `alamat_user`
  MODIFY `id_alamat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `id_pesan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `resi`
--
ALTER TABLE `resi`
  MODIFY `id_resi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

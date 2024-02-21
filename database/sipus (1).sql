-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2024 pada 05.56
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_ebook`
--

CREATE TABLE `data_ebook` (
  `id_ebook` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul_ebook` varchar(128) CHARACTER SET latin1 NOT NULL,
  `pengarang` varchar(128) CHARACTER SET latin1 NOT NULL,
  `thn_terbit` varchar(128) CHARACTER SET latin1 NOT NULL,
  `penerbit` varchar(128) CHARACTER SET latin1 NOT NULL,
  `file` varchar(128) CHARACTER SET latin1 NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_ebook`
--

INSERT INTO `data_ebook` (`id_ebook`, `id_kategori`, `judul_ebook`, `pengarang`, `thn_terbit`, `penerbit`, `file`, `tgl_input`) VALUES
(2, 4, 'indonesia', 'feri', '2024', 'georima', '', '2024-02-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kategori`
--

CREATE TABLE `data_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_kategori`
--

INSERT INTO `data_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Pemrograman'),
(4, 'Bahasa'),
(5, 'puisi1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `username` varchar(128) CHARACTER SET latin1 NOT NULL,
  `email` varchar(128) CHARACTER SET latin1 NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`Id`, `username`, `email`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(4, 'feri', 'ferihariyanto398@gmail.com', '$2y$10$k507QaxaPRblUw5J9jBZeunCWSIAR6rmNA9SzBgtmLU/GoqQ9OM46', 1, 1, 1705296162),
(6, 'dina', 'dina8@gmail.com', '$2y$10$QgnAEyAo98jvROWjazswae8LSNbYkWjVuAdfpuhuIUspiM.Clr2cu', 2, 1, 1705553471);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `Id` int(11) NOT NULL,
  `menu` varchar(128) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`Id`, `menu`) VALUES
(1, 'Admin'),
(2, 'Anggota'),
(3, 'Akun Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `Id` int(11) NOT NULL,
  `role` varchar(128) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`Id`, `role`) VALUES
(1, 'Admin'),
(2, 'Anggota');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `Id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) CHARACTER SET latin1 NOT NULL,
  `url` varchar(128) CHARACTER SET latin1 NOT NULL,
  `icon` varchar(128) CHARACTER SET latin1 NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`Id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'bi bi-grid', 1),
(2, 2, 'Dashboard', 'anggota', 'bi bi-grid', 1),
(3, 1, 'Data Kategori', 'admin/data_kategori', 'bi bi-tags', 1),
(4, 1, 'Data E-Book', 'admin/data_ebook', 'bi bi-book-half', 1),
(5, 3, 'Profile', 'admin/profile', 'bi bi-person', 1),
(6, 2, 'Data E-Book', 'anggota/data_ebook', 'bi bi-book-half', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_ebook`
--
ALTER TABLE `data_ebook`
  ADD PRIMARY KEY (`id_ebook`);

--
-- Indeks untuk tabel `data_kategori`
--
ALTER TABLE `data_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_ebook`
--
ALTER TABLE `data_ebook`
  MODIFY `id_ebook` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `data_kategori`
--
ALTER TABLE `data_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

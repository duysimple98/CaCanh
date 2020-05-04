-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 04, 2020 lúc 01:23 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cacanh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
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
(25, 'Can add blog', 7, 'add_blog'),
(26, 'Can change blog', 7, 'change_blog'),
(27, 'Can delete blog', 7, 'delete_blog'),
(28, 'Can view blog', 7, 'view_blog'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add lien he', 9, 'add_lienhe'),
(34, 'Can change lien he', 9, 'change_lienhe'),
(35, 'Can delete lien he', 9, 'delete_lienhe'),
(36, 'Can view lien he', 9, 'view_lienhe'),
(37, 'Can add tag', 10, 'add_tag'),
(38, 'Can change tag', 10, 'change_tag'),
(39, 'Can delete tag', 10, 'delete_tag'),
(40, 'Can view tag', 10, 'view_tag'),
(41, 'Can add thu vien', 11, 'add_thuvien'),
(42, 'Can change thu vien', 11, 'change_thuvien'),
(43, 'Can delete thu vien', 11, 'delete_thuvien'),
(44, 'Can view thu vien', 11, 'view_thuvien'),
(45, 'Can add author', 12, 'add_author'),
(46, 'Can change author', 12, 'change_author'),
(47, 'Can delete author', 12, 'delete_author'),
(48, 'Can view author', 12, 'view_author'),
(49, 'Can add post', 13, 'add_post'),
(50, 'Can change post', 13, 'change_post');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL DEFAULT '',
  `last_login` datetime DEFAULT NULL,
  `is_superuser` bit(1) NOT NULL,
  `username` varchar(150) NOT NULL DEFAULT '',
  `first_name` varchar(30) NOT NULL DEFAULT '',
  `last_name` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(254) NOT NULL DEFAULT '',
  `is_staff` bit(1) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$5zmQ5GglolBx$p93vKy7CMAh0IjRYHDrZQ2B8U5fD7qYGsrwWdUuo0iQ=', '2020-04-29 08:02:48', b'1', 'admin', '', '', 'sieuanhhung98@gmail.com', b'1', b'1', '2020-04-29 07:42:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL DEFAULT '',
  `action_flag` smallint(6) NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-04-29 07:46:47', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-04-29 07:50:52', '1', 'admin', 1, '[{\"added\": {}}]', 12, 1),
(3, '2020-04-29 08:05:54', '1', 'Product object (1)', 1, '[{\"added\": {}}]', 18, 1),
(4, '2020-04-29 08:11:10', '1', 'Tag object (1)', 1, '[{\"added\": {}}]', 10, 1),
(5, '2020-04-29 08:11:45', '1', 'Blog object (1)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2020-04-29 08:15:56', '1', 'Nghỉ lễ', 1, '[{\"added\": {}}]', 13, 1),
(7, '2020-04-29 08:17:39', '1', 'admin', 1, '[{\"added\": {}}]', 20, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL DEFAULT '',
  `model` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'home', 'blog'),
(8, 'home', 'category'),
(9, 'home', 'lienhe'),
(10, 'home', 'tag'),
(11, 'home', 'thuvien'),
(12, 'home', 'author'),
(13, 'home', 'post'),
(14, 'maketing', 'signup'),
(15, 'home', 'categorybl'),
(16, 'home', 'order'),
(17, 'home', 'orderdetail'),
(18, 'home', 'product'),
(19, 'home', 'postview'),
(20, 'home', 'comment');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-04-29 07:41:03'),
(2, 'auth', '0001_initial', '2020-04-29 07:41:04'),
(3, 'admin', '0001_initial', '2020-04-29 07:41:04'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-04-29 07:41:04'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-04-29 07:41:04'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-04-29 07:41:04'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-04-29 07:41:04'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-04-29 07:41:04'),
(9, 'auth', '0004_alter_user_username_opts', '2020-04-29 07:41:04'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-04-29 07:41:04'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-04-29 07:41:04'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-04-29 07:41:04'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-04-29 07:41:04'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-04-29 07:41:04'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-04-29 07:41:05'),
(16, 'auth', '0011_update_proxy_permissions', '2020-04-29 07:41:05'),
(17, 'home', '0001_initial', '2020-04-29 07:41:05'),
(18, 'home', '0002_auto_20200429_0740', '2020-04-29 07:41:05'),
(19, 'maketing', '0001_initial', '2020-04-29 07:41:05'),
(20, 'sessions', '0001_initial', '2020-04-29 07:41:06'),
(21, 'home', '0003_categorybl_comment_order_orderdetail_postview_product', '2020-04-29 07:57:22'),
(22, 'home', '0004_auto_20200429_0814', '2020-04-29 08:14:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL DEFAULT '',
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('s1ch0oelt1s2p2e4xrw1g4nxm4pm3u35', 'NWVlZjhlMDZjYjhkMDUyZDhiZjJjZjZhZGM3ZTQ2ODY2NzFkMTRhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMmVjYjA4NDFhOGI3YWZhNjFlZjQzMzUwMjAwZmQ5OTRkYTg3NmYzIn0=', '2020-05-13 08:02:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_author`
--

CREATE TABLE `home_author` (
  `id` int(11) NOT NULL,
  `profile_picture` varchar(100) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `home_author`
--

INSERT INTO `home_author` (`id`, `profile_picture`, `user_id`) VALUES
(1, '91235227_226694928697549_2872665064630910976_n.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_categorybl`
--

CREATE TABLE `home_categorybl` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_comment`
--

CREATE TABLE `home_comment` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `content` longtext NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `home_comment`
--

INSERT INTO `home_comment` (`id`, `timestamp`, `content`, `post_id`, `user_id`) VALUES
(1, '2020-04-29 08:17:39', 'admin', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_post`
--

CREATE TABLE `home_post` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `overview` longtext NOT NULL,
  `timestamp` datetime NOT NULL,
  `content` longtext NOT NULL,
  `thumbnail` varchar(100) NOT NULL DEFAULT '',
  `featured` bit(1) NOT NULL,
  `author_id` int(11) NOT NULL,
  `next_post_id` int(11) DEFAULT NULL,
  `previous_post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `home_post`
--

INSERT INTO `home_post` (`id`, `title`, `overview`, `timestamp`, `content`, `thumbnail`, `featured`, `author_id`, `next_post_id`, `previous_post_id`) VALUES
(1, 'Nghỉ lễ', '', '2020-04-29 08:15:56', '', 'anh-bia-1.jpg', b'0', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_postview`
--

CREATE TABLE `home_postview` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_post_categories`
--

CREATE TABLE `home_post_categories` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `home_post_categories`
--

INSERT INTO `home_post_categories` (`id`, `post_id`, `category_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maketing_signup`
--

CREATE TABLE `maketing_signup` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL DEFAULT '',
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blo_id` int(11) NOT NULL,
  `blo_image1` varchar(255) NOT NULL DEFAULT '',
  `blo_image2` varchar(255) NOT NULL DEFAULT '',
  `blo_slxem` int(11) NOT NULL,
  `blo_td` longtext NOT NULL,
  `blo_nd` longtext NOT NULL,
  `blo_tt` longtext NOT NULL,
  `blo_tg` varchar(255) NOT NULL DEFAULT '',
  `tag_id` int(11) NOT NULL,
  `date_create` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_blog`
--

INSERT INTO `tbl_blog` (`blo_id`, `blo_image1`, `blo_image2`, `blo_slxem`, `blo_td`, `blo_nd`, `blo_tt`, `blo_tg`, `tag_id`, `date_create`) VALUES
(1, 'image_PQ1.jpg', 'image_PQ2.jpg', 2, 'Phóng sự', 'Admin', 'Duy Do', 'hihi', 1, '2020-04-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL DEFAULT '',
  `cat_image` varchar(255) NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL,
  `date_create` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`, `cat_image`, `status`, `date_create`) VALUES
(1, 'Cây trong nhà', 'TongThe.png', 1, '2020-04-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `co_id` int(11) NOT NULL,
  `co_name` varchar(255) NOT NULL DEFAULT '',
  `co_phone` varchar(10) NOT NULL DEFAULT '',
  `co_email` varchar(255) NOT NULL DEFAULT '',
  `co_adress` varchar(255) NOT NULL DEFAULT '',
  `co_nd` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` double NOT NULL,
  `status` smallint(6) NOT NULL,
  `date_create` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_orderdetail`
--

CREATE TABLE `tbl_orderdetail` (
  `detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `pro_price` int(11) NOT NULL,
  `pro_image` int(11) NOT NULL,
  `Quanlity` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `date_create` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(50) NOT NULL DEFAULT '',
  `cat_id` int(11) NOT NULL,
  `pri_image` varchar(255) NOT NULL DEFAULT '',
  `pro_price` double NOT NULL,
  `description` longtext NOT NULL,
  `status` smallint(6) NOT NULL,
  `date_create` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `pro_name`, `cat_id`, `pri_image`, `pro_price`, `description`, `status`, `date_create`) VALUES
(1, 'Cây lan', 1, 'cach-trong-lan-rung-vao-chau.jpg', 45000, 'Cây phong lan vàng', 1, '2020-04-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tag`
--

CREATE TABLE `tbl_tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL DEFAULT '',
  `date_create` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_tag`
--

INSERT INTO `tbl_tag` (`tag_id`, `tag_name`, `date_create`) VALUES
(1, 'Phóng sự', '2020-04-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thuvien`
--

CREATE TABLE `tbl_thuvien` (
  `lib_id` int(11) NOT NULL,
  `lib_td` longtext NOT NULL,
  `lib_nd` longtext NOT NULL,
  `lib_image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_name_key` (`name`),
  ADD KEY `auth_group_name_a6ea08ec_like` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`),
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_username_key` (`username`),
  ADD KEY `auth_user_username_6821ab7c_like` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544` (`group_id`),
  ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`),
  ADD KEY `django_session_session_key_c0390e0f_like` (`session_key`);

--
-- Chỉ mục cho bảng `home_author`
--
ALTER TABLE `home_author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_author_user_id_key` (`user_id`);

--
-- Chỉ mục cho bảng `home_categorybl`
--
ALTER TABLE `home_categorybl`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `home_comment`
--
ALTER TABLE `home_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_comment_post_id_11f2e780` (`post_id`),
  ADD KEY `home_comment_user_id_842649c8` (`user_id`);

--
-- Chỉ mục cho bảng `home_post`
--
ALTER TABLE `home_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_post_next_post_id_3c75b6bf` (`next_post_id`),
  ADD KEY `home_post_previous_post_id_2499e603` (`previous_post_id`),
  ADD KEY `home_post_author_id_1cb7f871` (`author_id`);

--
-- Chỉ mục cho bảng `home_postview`
--
ALTER TABLE `home_postview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_postview_user_id_67e96d49` (`user_id`),
  ADD KEY `home_postview_post_id_967d4564` (`post_id`);

--
-- Chỉ mục cho bảng `home_post_categories`
--
ALTER TABLE `home_post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_post_categories_post_id_category_id_2b76b9fa_uniq` (`post_id`,`category_id`),
  ADD KEY `home_post_categories_post_id_7f496ab3` (`post_id`),
  ADD KEY `home_post_categories_category_id_cdf619ba` (`category_id`);

--
-- Chỉ mục cho bảng `maketing_signup`
--
ALTER TABLE `maketing_signup`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blo_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`co_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_orderdetail`
--
ALTER TABLE `tbl_orderdetail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Chỉ mục cho bảng `tbl_tag`
--
ALTER TABLE `tbl_tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Chỉ mục cho bảng `tbl_thuvien`
--
ALTER TABLE `tbl_thuvien`
  ADD PRIMARY KEY (`lib_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `home_author`
--
ALTER TABLE `home_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `home_categorybl`
--
ALTER TABLE `home_categorybl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `home_comment`
--
ALTER TABLE `home_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `home_post`
--
ALTER TABLE `home_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `home_postview`
--
ALTER TABLE `home_postview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `home_post_categories`
--
ALTER TABLE `home_post_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `maketing_signup`
--
ALTER TABLE `maketing_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_orderdetail`
--
ALTER TABLE `tbl_orderdetail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_tag`
--
ALTER TABLE `tbl_tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_thuvien`
--
ALTER TABLE `tbl_thuvien`
  MODIFY `lib_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2015 a las 20:40:22
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bd_weblog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_subject`
--

CREATE TABLE IF NOT EXISTS `area_subject` (
  `area_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `career_area`
--

CREATE TABLE IF NOT EXISTS `career_area` (
  `career_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_assigned_user`
--

CREATE TABLE IF NOT EXISTS `role_assigned_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siw_area`
--

CREATE TABLE IF NOT EXISTS `siw_area` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siw_career`
--

CREATE TABLE IF NOT EXISTS `siw_career` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siw_category_forum`
--

CREATE TABLE IF NOT EXISTS `siw_category_forum` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siw_comment_forum`
--

CREATE TABLE IF NOT EXISTS `siw_comment_forum` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `forum_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siw_comment_publication`
--

CREATE TABLE IF NOT EXISTS `siw_comment_publication` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `publication_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siw_department`
--

CREATE TABLE IF NOT EXISTS `siw_department` (
  `id` int(11) NOT NULL,
  `department` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siw_forum`
--

CREATE TABLE IF NOT EXISTS `siw_forum` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siw_permissions`
--

CREATE TABLE IF NOT EXISTS `siw_permissions` (
  `id` int(11) NOT NULL,
  `permission` varchar(30) NOT NULL,
  `display` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siw_publication`
--

CREATE TABLE IF NOT EXISTS `siw_publication` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `subtitle` varchar(150) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siw_roles`
--

CREATE TABLE IF NOT EXISTS `siw_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siw_subject`
--

CREATE TABLE IF NOT EXISTS `siw_subject` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siw_users`
--

CREATE TABLE IF NOT EXISTS `siw_users` (
  `id` int(11) NOT NULL,
  `name` int(100) NOT NULL,
  `code` int(100) NOT NULL,
  `birth` date NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `remember_token` varchar(200) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `mphone` varchar(45) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `department` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `role_assigned_user`
--
ALTER TABLE `role_assigned_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `siw_area`
--
ALTER TABLE `siw_area`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `siw_career`
--
ALTER TABLE `siw_career`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `siw_category_forum`
--
ALTER TABLE `siw_category_forum`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `siw_comment_forum`
--
ALTER TABLE `siw_comment_forum`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `siw_comment_publication`
--
ALTER TABLE `siw_comment_publication`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `siw_department`
--
ALTER TABLE `siw_department`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `siw_forum`
--
ALTER TABLE `siw_forum`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `siw_permissions`
--
ALTER TABLE `siw_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `siw_publication`
--
ALTER TABLE `siw_publication`
  ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `subject_id` (`subject_id`);

--
-- Indices de la tabla `siw_roles`
--
ALTER TABLE `siw_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `siw_subject`
--
ALTER TABLE `siw_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `siw_users`
--
ALTER TABLE `siw_users`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2025 at 02:54 AM
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
-- Database: `moviesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add director', 7, 'add_director'),
(26, 'Can change director', 7, 'change_director'),
(27, 'Can delete director', 7, 'delete_director'),
(28, 'Can view director', 7, 'view_director'),
(29, 'Can add genero', 8, 'add_genero'),
(30, 'Can change genero', 8, 'change_genero'),
(31, 'Can delete genero', 8, 'delete_genero'),
(32, 'Can view genero', 8, 'view_genero'),
(33, 'Can add pelicula', 9, 'add_pelicula'),
(34, 'Can change pelicula', 9, 'change_pelicula'),
(35, 'Can delete pelicula', 9, 'delete_pelicula'),
(36, 'Can view pelicula', 9, 'view_pelicula'),
(37, 'Can add reseña', 10, 'add_reseña'),
(38, 'Can change reseña', 10, 'change_reseña'),
(39, 'Can delete reseña', 10, 'delete_reseña'),
(40, 'Can view reseña', 10, 'view_reseña');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$M3fXDTj6vyxPpaT19TGySc$ImVNRSgXhUVGcspq0tu6SuQyFiZNJ/Zcb4jLaG45HXA=', '2025-09-30 23:08:07.000000', 1, 'ferna', '', '', 'fernando.jimenez15@inacapmail.cl', 1, 1, '2025-09-30 20:27:07.000000'),
(2, 'pbkdf2_sha256$1000000$V7I1Lkax02Sh80dSQ1IAzK$d6BpMT5xoiuKHJfoMK7NpmR5dhYdAlDM+Nm6KGAgcHg=', '2025-09-30 23:04:14.000000', 0, 'prisci', 'priscila', 'lagos', 'prisci@correo.com', 0, 1, '2025-09-30 20:45:26.000000'),
(3, 'pbkdf2_sha256$1000000$BHvfL7YIZhfwBv7VDMrDrV$ol3JPUYVu31CQqj+JLIEz/hT5MbP59NAVcFt+96j9A0=', NULL, 0, 'cinephile1', 'Ana', 'García', 'cine1@test.com', 0, 1, '2025-10-01 00:07:29.000000'),
(4, 'pbkdf2_sha256$1000000$tzo6Axvhv50uKurZDaPp99$rjZXAsLqVRMygM0krS5H9T+DYbvwxgPMRSgg7C5DKJw=', NULL, 0, 'moviefan', 'Carlos', 'López', 'fan@test.com', 0, 1, '2025-10-01 00:07:30.000000'),
(5, 'pbkdf2_sha256$1000000$0O9uZVe7fZOjwpFnptHsM9$Z2oSPSjyOts2EHlBN1jJWawGi8Pg+JpGJvhv7aEQwwI=', NULL, 0, 'critic_pro', 'María', 'Rodríguez', 'critic@test.com', 0, 1, '2025-10-01 00:07:31.000000'),
(6, 'pbkdf2_sha256$1000000$M83aI3lBNYlVnhG5zTSS9L$7R25phKsmAZYWGvF64KPJvIR2azfQBGgh/gdvwlyOIg=', NULL, 0, 'filmstudent', 'Diego', 'Martínez', 'student@test.com', 0, 1, '2025-10-01 00:07:32.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `idDirector` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `fechaNacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`idDirector`, `nombre`, `nacionalidad`, `fechaNacimiento`) VALUES
(2, 'Christopher Nolan', 'Inglaterra', '2025-09-10'),
(3, 'Quentin Tarantino', 'Estados Unidos', '2025-09-10'),
(4, 'Martin Scorsese', 'Estados Unidos', '1942-11-17'),
(5, 'Steven Spielberg', 'Estados Unidos', '1946-12-18'),
(6, 'Denis Villeneuve', 'Canadá', '1967-10-03'),
(7, 'Greta Gerwig', 'Estados Unidos', '1983-08-04'),
(8, 'Jordan Peele', 'Estados Unidos', '1979-02-21'),
(9, 'Bong Joon-ho', 'Corea del Sur', '1969-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'moviesApp', 'director'),
(8, 'moviesApp', 'genero'),
(9, 'moviesApp', 'pelicula'),
(10, 'moviesApp', 'reseña'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-09-30 19:30:28.000000'),
(2, 'auth', '0001_initial', '2025-09-30 19:30:29.000000'),
(3, 'admin', '0001_initial', '2025-09-30 19:30:29.000000'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-09-30 19:30:29.000000'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-09-30 19:30:29.000000'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-09-30 19:30:29.000000'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-09-30 19:30:29.000000'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-09-30 19:30:29.000000'),
(9, 'auth', '0004_alter_user_username_opts', '2025-09-30 19:30:29.000000'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-09-30 19:30:29.000000'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-09-30 19:30:29.000000'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-09-30 19:30:29.000000'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-09-30 19:30:29.000000'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-09-30 19:30:29.000000'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-09-30 19:30:29.000000'),
(16, 'auth', '0011_update_proxy_permissions', '2025-09-30 19:30:29.000000'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-09-30 19:30:29.000000'),
(18, 'moviesApp', '0001_initial', '2025-09-30 19:30:29.000000'),
(19, 'sessions', '0001_initial', '2025-09-30 19:30:30.000000');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('lvrd66xifj08v9dbsq9xicmzab72wxad', '.eJxVjEEOwiAQRe_C2pBOGQq4dN8zEAYGqRqalHZlvLtt0oVu_3vvv4UP21r81njxUxJXAeLyu1GIT64HSI9Q77OMc12XieShyJM2Oc6JX7fT_TsooZW9DpzYRkdIA0XTK2SnLKCxg84KEbIBhB6IcnTamay0JbC73CnoVHTi8wXj6TdM:1v3jS3:RHdQntSQoNZlT2mIFkiVu8gPYpQnT71cqtG5xPynJxA', '2025-10-14 23:08:07.000000');

-- --------------------------------------------------------

--
-- Table structure for table `genero`
--

CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genero`
--

INSERT INTO `genero` (`idGenero`, `nombre`, `descripcion`) VALUES
(2, 'Accion', 'Películas llenas de aventura y secuencias emocionantes'),
(3, 'Suspenso', 'Mantiene al espectador en un estado de tensión e incertidumbre'),
(4, 'Drama', 'Historias emotivas centradas en el desarrollo de personajes'),
(5, 'Comedia', 'Películas diseñadas para entretener y hacer reír'),
(6, 'Terror', 'Películas que buscan asustar y crear suspense'),
(7, 'Ciencia Ficción', 'Historias futuristas o con elementos científicos avanzados'),
(8, 'Romance', 'Historias de amor y relaciones románticas'),
(9, 'Thriller', 'Películas de suspenso que mantienen al espectador en tensión'),
(10, 'Fantasía', 'Mundos imaginarios con elementos mágicos o sobrenaturales'),
(11, 'Crimen', 'Historias sobre actividades criminales y justicia'),
(12, 'Animación', 'Películas creadas mediante técnicas de animación');

-- --------------------------------------------------------

--
-- Table structure for table `pelicula`
--

CREATE TABLE `pelicula` (
  `idPelicula` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fechaEstreno` date NOT NULL,
  `poster` varchar(100) DEFAULT NULL,
  `duracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelicula`
--

INSERT INTO `pelicula` (`idPelicula`, `titulo`, `descripcion`, `fechaEstreno`, `poster`, `duracion`) VALUES
(1, 'Rapidos y furiosos', 'Autos rapidos y furiosos', '2025-09-17', 'posters/images.jpeg', 120),
(2, 'Inception', 'Peli sobre sueños implantados', '2025-09-04', 'posters/inception-el-origen-og.webp', 140),
(3, 'Pulp Fiction', 'Las vidas de dos sicarios, un boxeador, la esposa de un gángster y dos bandidos se entrelazan en cuatro historias de violencia y redención.', '1994-10-14', 'posters/pulp-fiction.jpg', 154),
(4, 'The Departed', 'Un policía encubierto y un informante de la policía intentan identificarse mutuamente mientras se infiltran en una banda irlandesa en Boston.', '2006-10-06', 'posters/departed.jpg', 151),
(5, 'Jurassic Park', 'Un parque temático sufre un fallo de seguridad y libera dinosaurios clonados genéticamente en una isla remota.', '1993-06-11', 'posters/jurassic-park-movie-poster.jpg', 127),
(6, 'Dune', 'Paul Atreides lidera una rebelión para liberar su hogar del control de enemigos, mientras lucha con la visión de un futuro oscuro.', '2021-10-22', 'posters/dune.webp', 155),
(7, 'Lady Bird', 'Una estudiante de secundaria de Sacramento sueña con la vida más allá de su ciudad natal católica.', '2017-11-03', 'posters/lady-bird.webp', 94),
(8, 'Get Out', 'Un joven afroamericano visita a la familia de su novia blanca y descubre secretos perturbadores.', '2017-02-24', 'posters/get-out.webp', 104),
(9, 'Parasite', 'Una familia pobre planea un esquema para infiltrarse en la casa de una familia rica.', '2019-05-30', 'posters/parasite.jpg', 132),
(10, 'The Dark Knight', 'Batman debe aceptar una de las pruebas psicológicas y físicas más grandes para combatir al Joker.', '2008-07-18', 'posters/dark-knight.jpg', 152),
(11, 'Goodfellas', 'La historia de Henry Hill y su vida en la mafia, cubriendo su relación con su esposa Karen y sus socios Jimmy y Tommy.', '1990-09-21', 'posters/goodfellas.webp', 146);

-- --------------------------------------------------------

--
-- Table structure for table `pelicula_directores`
--

CREATE TABLE `pelicula_directores` (
  `id` bigint(20) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelicula_directores`
--

INSERT INTO `pelicula_directores` (`id`, `pelicula_id`, `director_id`) VALUES
(1, 2, 2),
(2, 3, 3),
(3, 4, 4),
(4, 5, 5),
(5, 6, 6),
(6, 7, 7),
(7, 8, 8),
(8, 9, 9),
(9, 10, 2),
(10, 11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pelicula_generos`
--

CREATE TABLE `pelicula_generos` (
  `id` bigint(20) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `genero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelicula_generos`
--

INSERT INTO `pelicula_generos` (`id`, `pelicula_id`, `genero_id`) VALUES
(1, 1, 2),
(2, 2, 3),
(4, 3, 4),
(3, 3, 11),
(6, 4, 4),
(7, 4, 9),
(5, 4, 11),
(8, 5, 7),
(9, 5, 9),
(11, 6, 4),
(10, 6, 7),
(13, 7, 4),
(12, 7, 5),
(14, 8, 6),
(15, 8, 9),
(16, 9, 4),
(17, 9, 9),
(18, 10, 2),
(20, 10, 4),
(19, 10, 11),
(22, 11, 4),
(21, 11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `reseña`
--

CREATE TABLE `reseña` (
  `idReseña` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `comentario` longtext NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reseña`
--

INSERT INTO `reseña` (`idReseña`, `calificacion`, `comentario`, `fecha`, `pelicula_id`, `usuario_id`) VALUES
(1, 5, 'Muy buena', '2025-09-30 22:41:45.000000', 1, 2),
(2, 4, 'Muy buena', '2025-09-30 22:47:27.000000', 2, 1),
(3, 5, 'Super', '2025-09-30 23:07:38.000000', 2, 2),
(4, 3, 'No me gusto mucho', '2025-10-01 00:00:33.000000', 1, 1),
(5, 1, 'Buena producción pero la historia no me enganchó.', '2025-10-01 00:07:34.000000', 1, 4),
(6, 4, 'Una experiencia cinematográfica única e inolvidable.', '2025-10-01 00:07:34.000000', 1, 3),
(7, 5, 'Una obra maestra del cine moderno. Altamente recomendada.', '2025-10-01 00:07:34.000000', 1, 5),
(8, 4, '¡Increíble película! La cinematografía es espectacular.', '2025-10-01 00:07:34.000000', 1, 6),
(9, 2, 'Buena producción pero la historia no me enganchó.', '2025-10-01 00:07:34.000000', 2, 4),
(10, 5, 'Una experiencia cinematográfica única e inolvidable.', '2025-10-01 00:07:34.000000', 2, 6),
(11, 5, 'Excelente dirección y actuaciones sobresalientes.', '2025-10-01 00:07:34.000000', 2, 5),
(12, 2, 'No me convenció del todo. Esperaba más del director.', '2025-10-01 00:07:34.000000', 2, 3),
(13, 5, 'Excelente dirección y actuaciones sobresalientes.', '2025-10-01 00:07:34.000000', 3, 5),
(14, 1, 'La trama se siente predecible en muchos momentos.', '2025-10-01 00:07:34.000000', 3, 4),
(15, 5, 'Una obra maestra del cine moderno. Altamente recomendada.', '2025-10-01 00:07:34.000000', 3, 3),
(16, 2, 'La trama se siente predecible en muchos momentos.', '2025-10-01 00:07:34.000000', 3, 6),
(17, 3, 'Entretenida pero no excepcional. Vale la pena verla.', '2025-10-01 00:07:34.000000', 4, 4),
(18, 1, 'Técnicamente sólida pero le falta algo especial.', '2025-10-01 00:07:34.000000', 4, 3),
(19, 4, 'Una obra maestra del cine moderno. Altamente recomendada.', '2025-10-01 00:07:34.000000', 4, 6),
(20, 2, 'La trama se siente predecible en muchos momentos.', '2025-10-01 00:07:34.000000', 5, 6),
(21, 4, '¡Increíble película! La cinematografía es espectacular.', '2025-10-01 00:07:34.000000', 5, 4),
(22, 2, 'Buena producción pero la historia no me enganchó.', '2025-10-01 00:07:34.000000', 5, 3),
(23, 4, '¡Increíble película! La cinematografía es espectacular.', '2025-10-01 00:07:34.000000', 5, 5),
(24, 4, 'Una obra maestra del cine moderno. Altamente recomendada.', '2025-10-01 00:07:34.000000', 6, 6),
(25, 1, 'No me convenció del todo. Esperaba más del director.', '2025-10-01 00:07:34.000000', 6, 4),
(26, 1, 'Técnicamente sólida pero le falta algo especial.', '2025-10-01 00:07:34.000000', 6, 5),
(27, 2, 'La trama se siente predecible en muchos momentos.', '2025-10-01 00:07:34.000000', 6, 3),
(28, 1, 'La trama se siente predecible en muchos momentos.', '2025-10-01 00:07:34.000000', 7, 3),
(29, 1, 'Buena producción pero la historia no me enganchó.', '2025-10-01 00:07:34.000000', 7, 6),
(30, 5, 'Una obra maestra del cine moderno. Altamente recomendada.', '2025-10-01 00:07:34.000000', 7, 5),
(31, 2, 'No me convenció del todo. Esperaba más del director.', '2025-10-01 00:07:34.000000', 8, 5),
(32, 1, 'No me convenció del todo. Esperaba más del director.', '2025-10-01 00:07:34.000000', 8, 4),
(33, 1, 'La trama se siente predecible en muchos momentos.', '2025-10-01 00:07:34.000000', 9, 6),
(34, 5, 'Una experiencia cinematográfica única e inolvidable.', '2025-10-01 00:07:34.000000', 9, 5),
(35, 3, 'Está bien, cumple con las expectativas básicas.', '2025-10-01 00:07:34.000000', 9, 4),
(36, 3, 'No está mal, pero tampoco es nada extraordinario.', '2025-10-01 00:07:34.000000', 9, 3),
(37, 2, 'La trama se siente predecible en muchos momentos.', '2025-10-01 00:07:34.000000', 10, 5),
(38, 1, 'Buena producción pero la historia no me enganchó.', '2025-10-01 00:07:34.000000', 10, 6),
(39, 1, 'Técnicamente sólida pero le falta algo especial.', '2025-10-01 00:07:34.000000', 10, 3),
(40, 3, 'Película decente con algunos altibajos en el ritmo.', '2025-10-01 00:07:34.000000', 10, 4),
(41, 5, 'Una experiencia cinematográfica única e inolvidable.', '2025-10-01 00:07:34.000000', 11, 6),
(42, 4, 'Una experiencia cinematográfica única e inolvidable.', '2025-10-01 00:07:34.000000', 11, 4),
(43, 4, 'Excelente dirección y actuaciones sobresalientes.', '2025-10-01 00:07:34.000000', 11, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`idDirector`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indexes for table `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`idPelicula`);

--
-- Indexes for table `pelicula_directores`
--
ALTER TABLE `pelicula_directores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pelicula_directores_pelicula_id_director_id_e2f0ec77_uniq` (`pelicula_id`,`director_id`),
  ADD KEY `pelicula_directores_director_id_8bd8b08d_fk_director_idDirector` (`director_id`);

--
-- Indexes for table `pelicula_generos`
--
ALTER TABLE `pelicula_generos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pelicula_generos_pelicula_id_genero_id_383e57b2_uniq` (`pelicula_id`,`genero_id`),
  ADD KEY `pelicula_generos_genero_id_26d964c4_fk_genero_idGenero` (`genero_id`);

--
-- Indexes for table `reseña`
--
ALTER TABLE `reseña`
  ADD PRIMARY KEY (`idReseña`),
  ADD UNIQUE KEY `reseña_pelicula_id_usuario_id_9d0e2dad_uniq` (`pelicula_id`,`usuario_id`),
  ADD KEY `reseña_usuario_id_ca79bccd_fk_auth_user_id` (`usuario_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `idDirector` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `genero`
--
ALTER TABLE `genero`
  MODIFY `idGenero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `idPelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pelicula_directores`
--
ALTER TABLE `pelicula_directores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pelicula_generos`
--
ALTER TABLE `pelicula_generos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `reseña`
--
ALTER TABLE `reseña`
  MODIFY `idReseña` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `pelicula_directores`
--
ALTER TABLE `pelicula_directores`
  ADD CONSTRAINT `pelicula_directores_director_id_8bd8b08d_fk_director_idDirector` FOREIGN KEY (`director_id`) REFERENCES `director` (`idDirector`),
  ADD CONSTRAINT `pelicula_directores_pelicula_id_51cc7393_fk_pelicula_idPelicula` FOREIGN KEY (`pelicula_id`) REFERENCES `pelicula` (`idPelicula`);

--
-- Constraints for table `pelicula_generos`
--
ALTER TABLE `pelicula_generos`
  ADD CONSTRAINT `pelicula_generos_genero_id_26d964c4_fk_genero_idGenero` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`idGenero`),
  ADD CONSTRAINT `pelicula_generos_pelicula_id_b263761d_fk_pelicula_idPelicula` FOREIGN KEY (`pelicula_id`) REFERENCES `pelicula` (`idPelicula`);

--
-- Constraints for table `reseña`
--
ALTER TABLE `reseña`
  ADD CONSTRAINT `reseña_pelicula_id_e8a77efc_fk_pelicula_idPelicula` FOREIGN KEY (`pelicula_id`) REFERENCES `pelicula` (`idPelicula`),
  ADD CONSTRAINT `reseña_usuario_id_ca79bccd_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

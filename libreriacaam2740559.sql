-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2023 a las 23:30:14
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreriacaam2740559`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
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
(25, 'Can add categorias', 7, 'add_categorias'),
(26, 'Can change categorias', 7, 'change_categorias'),
(27, 'Can delete categorias', 7, 'delete_categorias'),
(28, 'Can view categorias', 7, 'view_categorias'),
(29, 'Can add clientes', 8, 'add_clientes'),
(30, 'Can change clientes', 8, 'change_clientes'),
(31, 'Can delete clientes', 8, 'delete_clientes'),
(32, 'Can view clientes', 8, 'view_clientes'),
(33, 'Can add libros', 9, 'add_libros'),
(34, 'Can change libros', 9, 'change_libros'),
(35, 'Can delete libros', 9, 'delete_libros'),
(36, 'Can view libros', 9, 'view_libros'),
(37, 'Can add tbl pedido cliente', 10, 'add_tblpedidocliente'),
(38, 'Can change tbl pedido cliente', 10, 'change_tblpedidocliente'),
(39, 'Can delete tbl pedido cliente', 10, 'delete_tblpedidocliente'),
(40, 'Can view tbl pedido cliente', 10, 'view_tblpedidocliente'),
(41, 'Can add autores', 11, 'add_autores'),
(42, 'Can change autores', 11, 'change_autores'),
(43, 'Can delete autores', 11, 'delete_autores'),
(44, 'Can view autores', 11, 'view_autores'),
(45, 'Can add libro por autor', 12, 'add_libroporautor'),
(46, 'Can change libro por autor', 12, 'change_libroporautor'),
(47, 'Can delete libro por autor', 12, 'delete_libroporautor'),
(48, 'Can view libro por autor', 12, 'view_libroporautor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
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
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$39JZVH6aPkmA01qIjvChtZ$HLDfl3TkQmJG8pLtoLgoa1LLHnpWA68dlEd+WwXHtZo=', '2023-12-06 16:46:01.977770', 1, 'alejandroareiza', 'Camilo Alejandro', 'Areiza Mazo', 'areizaplayer@gmail.com', 1, 1, '2023-11-23 14:15:22.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id_autor` int(11) NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'ACTIVO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id_autor`, `nombres`, `apellidos`, `estado`) VALUES
(1, 'Marc', 'Cerasini', 'ACTIVO'),
(2, 'Julio', 'Verne', 'ACTIVO'),
(3, 'Edgar', 'Allan Poe', 'ACTIVO'),
(4, 'Mary', 'Wollstonecraft Shelley', 'ACTIVO'),
(5, 'Ben', 'Mezrich', 'ACTIVO'),
(6, 'Bram', 'Stoker', 'ACTIVO'),
(7, 'Bruno', 'Nievas', 'ACTIVO'),
(8, 'César', 'García Muñoz', 'ACTIVO'),
(9, 'Armando', 'Rodera', 'ACTIVO'),
(10, 'Jane', 'Austen', 'ACTIVO'),
(11, 'Emily', 'Bronte', 'ACTIVO'),
(12, 'Alejandro', 'Dumas', 'ACTIVO'),
(13, 'Gabriel', 'García Márquez', 'ACTIVO'),
(14, 'Nikos', 'Kazantzakis', 'ACTIVO'),
(15, 'Raymond', 'Carver', 'ACTIVO'),
(16, 'Umberto', 'Eco', 'ACTIVO'),
(17, 'Ernest', 'Hemingway', 'ACTIVO'),
(18, 'Toni', 'Morrison', 'ACTIVO'),
(19, 'Haruki', 'Murakami', 'ACTIVO'),
(20, 'J.K.', 'Rowling', 'ACTIVO'),
(21, 'George', 'Orwell', 'ACTIVO'),
(22, 'William', 'Shakespeare', 'ACTIVO'),
(23, 'Charlotte', 'Bronte', 'ACTIVO'),
(24, 'Agatha', 'Christie', 'ACTIVO'),
(25, 'Charles', 'Dickens', 'ACTIVO'),
(26, 'Leo', 'Tolstoy', 'ACTIVO'),
(27, 'Jose', 'Saramago', 'ACTIVO'),
(28, 'Jorge Luis', 'Borges', 'ACTIVO'),
(29, 'Albert', 'Camus', 'ACTIVO'),
(30, 'Ernesto', 'Sábato', 'ACTIVO'),
(31, 'Héctor Abad', 'Faciolince', 'ACTIVO'),
(32, 'Julio', 'Cortázar', 'ACTIVO'),
(33, 'Stephen', 'King', 'ACTIVO'),
(34, 'Mario', 'Vargas Llosa', 'ACTIVO'),
(35, 'Carlos', 'Ruiz Zafón', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(40) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'ACTIVO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`, `estado`) VALUES
(1, 'Acción y Aventura', 'ACTIVO'),
(2, 'Terror', 'ACTIVO'),
(3, 'Ficción Moderna', 'ACTIVO'),
(4, 'Suspenso', 'ACTIVO'),
(5, 'Romance', 'ACTIVO'),
(6, 'Narrativa', 'ACTIVO'),
(7, 'Novela', 'ACTIVO'),
(8, 'Poesía', 'ACTIVO'),
(9, 'Fantasía', 'ACTIVO'),
(10, 'Ficción', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `identificacion` varchar(11) NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'ACTIVO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `identificacion`, `nombres`, `apellidos`, `telefono`, `direccion`, `correo_electronico`, `estado`) VALUES
(1, '1007054309', 'Camilo Alejandro', 'Areiza Mazo', '3135877374', NULL, 'areizaplayer@gmail.com', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-11-28 13:54:26.429308', '1', 'alejandroareiza', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(2, '2023-11-28 13:54:32.087467', '1', 'alejandroareiza', 2, '[]', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(11, 'app', 'autores'),
(7, 'app', 'categorias'),
(8, 'app', 'clientes'),
(12, 'app', 'libroporautor'),
(9, 'app', 'libros'),
(10, 'app', 'tblpedidocliente'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-23 13:56:14.450366'),
(2, 'auth', '0001_initial', '2023-11-23 13:56:15.042512'),
(3, 'admin', '0001_initial', '2023-11-23 13:56:15.202551'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-23 13:56:15.210556'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-23 13:56:15.218557'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-23 13:56:15.314580'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-23 13:56:15.378594'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-23 13:56:15.394601'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-23 13:56:15.410603'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-23 13:56:15.474619'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-23 13:56:15.482623'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-23 13:56:15.490623'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-23 13:56:15.514629'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-23 13:56:15.538636'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-23 13:56:15.562642'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-23 13:56:15.570643'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-23 13:56:15.602651'),
(18, 'sessions', '0001_initial', '2023-11-23 13:56:15.650663'),
(19, 'app', '0001_initial', '2023-12-06 20:36:50.602252');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('d464a54n7wx3l1dbvbfnmnrqi01ba7aq', '.eJxVjDsOwjAQRO_iGlngdfyhpM8ZrN31GgdQIsVJhbg7iZQCutG8N_NWCdelprXJnIasruqiTr8dIT9l3EF-4HifNE_jMg-kd0UftOl-yvK6He7fQcVWt7VEQwjOswfgQL5z3m2BY_AGS3SBohgpZ8hdsMxMYgEgxGLJojFWfb7eyjfB:1r6CyD:Kf5_YFE8VBZifUjIq_UuKnGxqa-S3qEbLPa108wbyzM', '2023-12-07 16:54:29.436486'),
('hqonkuoyfwtcpihbsubi0fbega0j2tmc', '.eJxVjDsOwjAQRO_iGlngdfyhpM8ZrN31GgdQIsVJhbg7iZQCutG8N_NWCdelprXJnIasruqiTr8dIT9l3EF-4HifNE_jMg-kd0UftOl-yvK6He7fQcVWt7VEQwjOswfgQL5z3m2BY_AGS3SBohgpZ8hdsMxMYgEgxGLJojFWfb7eyjfB:1r7ykZ:MnMXvS1x3Ko2YlMykkDX28gSVBphWZRj3HzurjHYiX0', '2023-12-12 14:07:43.715830'),
('rsug1q9sgh57grzuz7wx6nlrwovqcg62', '.eJxVjDsOwjAQRO_iGlngdfyhpM8ZrN31GgdQIsVJhbg7iZQCutG8N_NWCdelprXJnIasruqiTr8dIT9l3EF-4HifNE_jMg-kd0UftOl-yvK6He7fQcVWt7VEQwjOswfgQL5z3m2BY_AGS3SBohgpZ8hdsMxMYgEgxGLJojFWfb7eyjfB:1r6CyE:2JfTMhSa5Y4y1qD1RRE8SKgC_C_hrlCe8XDHcgISLMA', '2023-12-07 16:54:30.566405');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `isbn` int(11) NOT NULL,
  `titulo` varchar(125) NOT NULL,
  `fecha_pub` date NOT NULL,
  `categoria` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `portada` varchar(128) DEFAULT NULL,
  `cantidad_stock` int(11) NOT NULL CHECK (`cantidad_stock` >= 0),
  `estado` varchar(10) NOT NULL DEFAULT 'ACTIVO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`isbn`, `titulo`, `fecha_pub`, `categoria`, `precio`, `portada`, `cantidad_stock`, `estado`) VALUES
(1236, 'Doctor sueño', '2013-09-24', 2, 60500, 'no_portada.png', 36, 'ACTIVO'),
(1280, 'Alexis Zorba, El Griego', '2010-11-25', 6, 38500, 'no_portada.png', 100, 'ACTIVO'),
(1331, 'Lady Susan', '2000-01-28', 7, 38000, 'no_portada.png', 25, 'ACTIVO'),
(1378, 'El misterioso caso de Styles', '1867-12-31', 6, 10000, 'no_portada.png', 8, 'ACTIVO'),
(1400, 'Sula', '1973-11-30', 1, 80000, 'no_portada.png', 10, 'ACTIVO'),
(1713, 'El Aroma Del Miedo', '2017-09-05', 4, 35000, 'no_portada.png', 4, 'ACTIVO'),
(2022, 'After Dark', '2004-09-30', 3, 65000, 'no_portada.png', 6, 'ACTIVO'),
(2168, 'Herederos del Cielo', '2021-03-19', 3, 20000, 'no_portada.png', 3, 'ACTIVO'),
(2185, 'Lo que el hielo atrapa', '2015-01-01', 1, 61000, 'no_portada.png', 50, 'ACTIVO'),
(2190, 'Los tres mosqueteros', '1997-08-04', 1, 66000, 'no_portada.png', 55, 'ACTIVO'),
(2239, 'La caída', '1998-06-14', 7, 66000, 'no_portada.png', 45, 'ACTIVO'),
(2266, 'La joya de las siete estrellas', '1903-01-01', 2, 50000, 'no_portada.png', 3, 'ACTIVO'),
(2437, 'Crónica de Una Muerte Anunciada', '2016-07-15', 6, 48000, 'no_portada.png', 100, 'ACTIVO'),
(2473, 'A Tale of Two Cities', '2007-10-31', 7, 20000, 'no_portada.png', 4, 'ACTIVO'),
(2478, 'La biblioteca de Babel', '2001-07-19', 10, 35000, 'no_portada.png', 45, 'ACTIVO'),
(2511, 'Ensayo sobre la ceguera', '1995-04-20', 7, 50000, 'no_portada.png', 43, 'ACTIVO'),
(2560, 'El inmortal', '2002-09-29', 10, 40000, 'no_portada.png', 55, 'ACTIVO'),
(2595, 'La sombra del viento', '2001-05-12', 4, 44000, 'no_portada.png', 22, 'ACTIVO'),
(2875, 'Cathedral', '2004-08-15', 6, 25700, 'no_portada.png', 100, 'ACTIVO'),
(3069, 'Darcy and Elizabeth', '1813-12-12', 5, 54500, 'no_portada.png', 15, 'ACTIVO'),
(3277, 'La vuelta al mundo en ochenta dias', '2003-05-22', 1, 32000, 'no_portada.png', 50, 'ACTIVO'),
(3281, 'Miguel Strogoff', '2001-12-10', 1, 25000, 'no_portada.png', 100, 'ACTIVO'),
(3725, 'Operation Hell Gate', '2005-09-27', 1, 48000, 'no_portada.png', 100, 'ACTIVO'),
(3852, 'Sexo en la Luna', '2011-06-01', 3, 29500, 'no_portada.png', 100, 'ACTIVO'),
(4124, 'Angosta', '2003-11-06', 10, 48000, 'no_portada.png', 25, 'ACTIVO'),
(4159, 'Drácula', '1999-04-10', 2, 46800, 'no_portada.png', 100, 'ACTIVO'),
(4287, 'Realidad Aumentada', '2001-03-13', 4, 35200, 'no_portada.png', 100, 'ACTIVO'),
(4428, 'Juicio Final, Sangre en el Cielo', '2009-05-30', 4, 40000, 'no_portada.png', 100, 'ACTIVO'),
(4572, 'Rayuela', '1990-06-28', 7, 40500, 'no_portada.png', 20, 'ACTIVO'),
(4634, 'The midnight ride', '2022-03-22', 4, 35500, 'no_portada.png', 35, 'ACTIVO'),
(4660, 'El Enigma de los Vencidos', '2000-11-25', 4, 38500, 'no_portada.png', 100, 'ACTIVO'),
(4683, 'El Gato Negro', '1997-10-12', 2, 44000, 'no_portada.png', 100, 'ACTIVO'),
(4812, 'Guerra y paz', '1869-12-12', 7, 100000, 'no_portada.png', 5, 'ACTIVO'),
(4979, 'Calle sin salida', '1867-12-31', 6, 10000, 'no_portada.png', 5, 'ACTIVO'),
(4986, 'Frankenstein', '1990-03-01', 2, 55500, 'no_portada.png', 100, 'ACTIVO'),
(5118, 'El cementerio de Praga', '2010-10-25', 7, 70000, 'no_portada.png', 32, 'ACTIVO'),
(5170, 'Historia de la belleza', '2004-10-06', 5, 85000, 'no_portada.png', 19, 'ACTIVO'),
(5264, 'Kafka en la orilla', '2002-09-12', 7, 50000, 'no_portada.png', 0, 'ACTIVO'),
(5335, 'El sueño de una noche de verano', '1605-01-01', 7, 30500, 'no_portada.png', 10, 'ACTIVO'),
(5437, 'El asesinato de Roger Ackroyd', '1926-06-06', 3, 90000, 'no_portada.png', 2, 'ACTIVO'),
(5455, 'El héroe discreto', '2013-09-02', 10, 32500, 'no_portada.png', 38, 'ACTIVO'),
(5486, 'Intermitencias de la muerte', '2005-06-09', 7, 55000, 'no_portada.png', 25, 'ACTIVO'),
(5552, 'El juego del ángel', '2008-04-17', 7, 28500, 'no_portada.png', 20, 'ACTIVO'),
(5784, 'Orgullo y Prejuicio', '2003-09-25', 5, 36100, 'no_portada.png', 100, 'ACTIVO'),
(5831, 'Viaje al centro de la Tierra', '1864-11-25', 7, 20000, 'no_portada.png', 1, 'ACTIVO'),
(5963, 'El viejo y el mar', '1952-12-31', 7, 45000, 'no_portada.png', 0, 'ACTIVO'),
(6039, 'Cumbres Borrascosas', '1998-11-25', 5, 60800, 'no_portada.png', 100, 'ACTIVO'),
(6073, 'Black', '1858-12-01', 7, 25000, 'no_portada.png', 13, 'ACTIVO'),
(6154, 'No coward soul is mine', '1990-10-12', 8, 48000, 'no_portada.png', 22, 'ACTIVO'),
(6182, 'La Dama de las Camelias', '1995-07-28', 5, 57600, 'no_portada.png', 100, 'ACTIVO'),
(6186, 'Mathilda', '1959-01-01', 3, 70000, 'no_portada.png', 9, 'ACTIVO'),
(6240, 'De qué hablamos cuando hablamos de amor', '2000-11-18', 10, 37000, 'no_portada.png', 45, 'ACTIVO'),
(6439, 'La cúpula', '2009-10-10', 7, 66500, 'no_portada.png', 60, 'ACTIVO'),
(6691, 'Final del juego', '1995-09-30', 10, 44500, 'no_portada.png', 53, 'ACTIVO'),
(7211, 'Libertad o muerte', '1953-12-31', 7, 10000, 'no_portada.png', 20, 'ACTIVO'),
(7269, 'El corazón delator', '1999-08-15', 2, 48000, 'no_portada.png', 35, 'ACTIVO'),
(7297, 'Cien Años de Soledad', '1990-04-27', 6, 39500, 'no_portada.png', 100, 'ACTIVO'),
(7357, 'La oculta', '2014-09-16', 10, 45000, 'no_portada.png', 45, 'ACTIVO'),
(7419, 'Las tres preguntas', '1903-01-31', 1, 60000, 'no_portada.png', 22, 'ACTIVO'),
(7515, 'Godzilla 2000', '1997-11-11', 3, 65000, 'no_portada.png', 2, 'ACTIVO'),
(8000, 'The Antisocial Network', '2021-09-07', 6, 85000, 'no_portada.png', 10, 'ACTIVO'),
(8185, 'La fiesta del chivo', '2000-07-17', 7, 35000, 'no_portada.png', 28, 'ACTIVO'),
(8432, 'El túnel', '2001-01-21', 7, 58000, 'no_portada.png', 30, 'ACTIVO'),
(8468, 'Romeo y Julieta', '1597-12-01', 5, 55500, 'no_portada.png', 30, 'ACTIVO'),
(8807, 'El Nombre de la Rosa', '2011-05-24', 7, 68000, 'no_portada.png', 100, 'ACTIVO'),
(8897, 'Subir por aire', '1990-05-07', 10, 43000, 'no_portada.png', 60, 'ACTIVO'),
(8900, 'Fiesta', '1926-10-22', 7, 70500, 'no_portada.png', 20, 'ACTIVO'),
(8991, 'La dama del sudario', '1995-12-07', 2, 40000, 'no_portada.png', 45, 'ACTIVO'),
(9286, 'Sobre héroes y tumbas', '2003-04-12', 7, 55000, 'no_portada.png', 35, 'ACTIVO'),
(9778, 'Volver', '2012-05-08', 5, 30000, 'no_portada.png', 3, 'ACTIVO'),
(9781, 'Un sueño en un sueño', '1849-03-31', 8, 25000, 'no_portada.png', 5, 'ACTIVO'),
(9784, 'El extanjero', '1995-04-19', 7, 60000, 'no_portada.png', 33, 'ACTIVO'),
(9788, 'Si me necesitas, llámame', '2000-01-31', 8, 29000, 'no_portada.png', 10, 'ACTIVO'),
(9959, '1984', '2000-07-27', 10, 57500, 'no_portada.png', 56, 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_por_autor`
--

CREATE TABLE `libro_por_autor` (
  `id_autor` int(11) NOT NULL,
  `isbn` int(11) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'ACTIVO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pedido_cliente`
--

CREATE TABLE `tbl_pedido_cliente` (
  `id_pedido` int(11) NOT NULL,
  `nro_pedido` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `isbn` int(11) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT 1,
  `subtotal` int(11) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'ACTIVO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `libro_por_autor`
--
ALTER TABLE `libro_por_autor`
  ADD PRIMARY KEY (`id_autor`,`isbn`),
  ADD KEY `isbn` (`isbn`);

--
-- Indices de la tabla `tbl_pedido_cliente`
--
ALTER TABLE `tbl_pedido_cliente`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `isbn` (`isbn`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `tbl_pedido_cliente`
--
ALTER TABLE `tbl_pedido_cliente`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `libro_por_autor`
--
ALTER TABLE `libro_por_autor`
  ADD CONSTRAINT `libro_por_autor_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`),
  ADD CONSTRAINT `libro_por_autor_ibfk_2` FOREIGN KEY (`isbn`) REFERENCES `libros` (`isbn`);

--
-- Filtros para la tabla `tbl_pedido_cliente`
--
ALTER TABLE `tbl_pedido_cliente`
  ADD CONSTRAINT `tbl_pedido_cliente_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `tbl_pedido_cliente_ibfk_2` FOREIGN KEY (`isbn`) REFERENCES `libros` (`isbn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

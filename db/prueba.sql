-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-10-2024 a las 18:03:33
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `izazi`
--
CREATE DATABASE IF NOT EXISTS `izazi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `izazi`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` int NOT NULL,
  `products` json NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_total` int NOT NULL,
  `user_id` int NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `products`, `status`, `products_total`, `user_id`, `updated_at`, `created_at`) VALUES
(1, '[{\"id\": 1, \"name\": \"d\", \"price\": 12, \"cantidad\": 7, \"product_image\": \"d1.webp\"}]', '1', 84, 1, '2023-11-27 00:33:09', '2023-11-27 00:31:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'lavamanos', 'lavamanos de todas las medidas y tamaños', 'categorias/lavamanos.jpg', '2023-11-27 00:21:10', '2023-11-27 00:21:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` int NOT NULL,
  `state` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `name`, `department`, `state`) VALUES
(1, 'Abriaquí', 1, 1),
(2, 'Acacías', 16, 1),
(3, 'Acandí', 12, 1),
(4, 'Acevedo', 13, 1),
(5, 'Achí', 4, 1),
(6, 'Agrado', 13, 1),
(7, 'Agua de Dios', 11, 1),
(8, 'Aguachica', 9, 1),
(9, 'Aguada', 21, 1),
(10, 'Aguadas', 6, 1),
(11, 'Aguazul', 26, 1),
(12, 'Agustín Codazzi', 9, 1),
(13, 'Aipe', 13, 1),
(14, 'Albania', 7, 1),
(15, 'Albania', 14, 1),
(16, 'Albania', 21, 1),
(17, 'Albán', 11, 1),
(18, 'Albán (San José)', 17, 1),
(19, 'Alcalá', 24, 1),
(20, 'Alejandria', 1, 1),
(21, 'Algarrobo', 15, 1),
(22, 'Algeciras', 13, 1),
(23, 'Almaguer', 8, 1),
(24, 'Almeida', 5, 1),
(25, 'Alpujarra', 23, 1),
(26, 'Altamira', 13, 1),
(27, 'Alto Baudó (Pie de Pato)', 12, 1),
(28, 'Altos del Rosario', 4, 1),
(29, 'Alvarado', 23, 1),
(30, 'Amagá', 1, 1),
(31, 'Amalfi', 1, 1),
(32, 'Ambalema', 23, 1),
(33, 'Anapoima', 11, 1),
(34, 'Ancuya', 17, 1),
(35, 'Andalucía', 24, 1),
(36, 'Andes', 1, 1),
(37, 'Angelópolis', 1, 1),
(38, 'Angostura', 1, 1),
(39, 'Anolaima', 11, 1),
(40, 'Anorí', 1, 1),
(41, 'Anserma', 6, 1),
(42, 'Ansermanuevo', 24, 1),
(43, 'Anzoátegui', 23, 1),
(44, 'Anzá', 1, 1),
(45, 'Apartadó', 1, 1),
(46, 'Apulo', 11, 1),
(47, 'Apía', 20, 1),
(48, 'Aquitania', 5, 1),
(49, 'Aracataca', 15, 1),
(50, 'Aranzazu', 6, 1),
(51, 'Aratoca', 21, 1),
(52, 'Arauca', 25, 1),
(53, 'Arauquita', 25, 1),
(54, 'Arbeláez', 11, 1),
(55, 'Arboleda (Berruecos)', 17, 1),
(56, 'Arboledas', 18, 1),
(57, 'Arboletes', 1, 1),
(58, 'Arcabuco', 5, 1),
(59, 'Arenal', 4, 1),
(60, 'Argelia', 1, 1),
(61, 'Argelia', 8, 1),
(62, 'Argelia', 24, 1),
(63, 'Ariguaní (El Difícil)', 15, 1),
(64, 'Arjona', 4, 1),
(65, 'Armenia', 1, 1),
(66, 'Armenia', 19, 1),
(67, 'Armero (Guayabal)', 23, 1),
(68, 'Arroyohondo', 4, 1),
(69, 'Astrea', 9, 1),
(70, 'Ataco', 23, 1),
(71, 'Atrato (Yuto)', 12, 1),
(72, 'Ayapel', 10, 1),
(73, 'Bagadó', 12, 1),
(74, 'Bahía Solano (Mútis)', 12, 1),
(75, 'Bajo Baudó (Pizarro)', 12, 1),
(76, 'Balboa', 8, 1),
(77, 'Balboa', 20, 1),
(78, 'Baranoa', 2, 1),
(79, 'Baraya', 13, 1),
(80, 'Barbacoas', 17, 1),
(81, 'Barbosa', 1, 1),
(82, 'Barbosa', 21, 1),
(83, 'Barichara', 21, 1),
(84, 'Barranca de Upía', 16, 1),
(85, 'Barrancabermeja', 21, 1),
(86, 'Barrancas', 14, 1),
(87, 'Barranco de Loba', 4, 1),
(88, 'Barranquilla', 2, 1),
(89, 'Becerríl', 9, 1),
(90, 'Belalcázar', 6, 1),
(91, 'Bello', 1, 1),
(92, 'Belmira', 1, 1),
(93, 'Beltrán', 11, 1),
(94, 'Belén', 5, 1),
(95, 'Belén', 17, 1),
(96, 'Belén de Bajirá', 12, 1),
(97, 'Belén de Umbría', 20, 1),
(98, 'Belén de los Andaquíes', 7, 1),
(99, 'Berbeo', 5, 1),
(100, 'Betania', 1, 1),
(101, 'Beteitiva', 5, 1),
(102, 'Betulia', 1, 1),
(103, 'Betulia', 21, 1),
(104, 'Bituima', 11, 1),
(105, 'Boavita', 5, 1),
(106, 'Bochalema', 18, 1),
(107, 'Bogotá D.C.', 3, 1),
(108, 'Bojacá', 11, 1),
(109, 'Bojayá (Bellavista)', 12, 1),
(110, 'Bolívar', 1, 1),
(111, 'Bolívar', 8, 1),
(112, 'Bolívar', 21, 1),
(113, 'Bolívar', 24, 1),
(114, 'Bosconia', 9, 1),
(115, 'Boyacá', 5, 1),
(116, 'Briceño', 1, 1),
(117, 'Briceño', 5, 1),
(118, 'Bucaramanga', 21, 1),
(119, 'Bucarasica', 18, 1),
(120, 'Buenaventura', 24, 1),
(121, 'Buenavista', 5, 1),
(122, 'Buenavista', 10, 1),
(123, 'Buenavista', 19, 1),
(124, 'Buenavista', 22, 1),
(125, 'Buenos Aires', 8, 1),
(126, 'Buesaco', 17, 1),
(127, 'Buga', 24, 1),
(128, 'Bugalagrande', 24, 1),
(129, 'Burítica', 1, 1),
(130, 'Busbanza', 5, 1),
(131, 'Cabrera', 11, 1),
(132, 'Cabrera', 21, 1),
(133, 'Cabuyaro', 16, 1),
(134, 'Cachipay', 11, 1),
(135, 'Caicedo', 1, 1),
(136, 'Caicedonia', 24, 1),
(137, 'Caimito', 22, 1),
(138, 'Cajamarca', 23, 1),
(139, 'Cajibío', 8, 1),
(140, 'Cajicá', 11, 1),
(141, 'Calamar', 4, 1),
(142, 'Calamar', 31, 1),
(143, 'Calarcá', 19, 1),
(144, 'Caldas', 1, 1),
(145, 'Caldas', 5, 1),
(146, 'Caldono', 8, 1),
(147, 'California', 21, 1),
(148, 'Calima (Darién)', 24, 1),
(149, 'Caloto', 8, 1),
(150, 'Cali', 24, 1),
(151, 'Campamento', 1, 1),
(152, 'Campo de la Cruz', 2, 1),
(153, 'Campoalegre', 13, 1),
(154, 'Campohermoso', 5, 1),
(155, 'Canalete', 10, 1),
(156, 'Candelaria', 2, 1),
(157, 'Candelaria', 24, 1),
(158, 'Cantagallo', 4, 1),
(159, 'Cantón de San Pablo', 12, 1),
(160, 'Caparrapí', 11, 1),
(161, 'Capitanejo', 21, 1),
(162, 'Caracolí', 1, 1),
(163, 'Caramanta', 1, 1),
(164, 'Carcasí', 21, 1),
(165, 'Carepa', 1, 1),
(166, 'Carmen de Apicalá', 23, 1),
(167, 'Carmen de Carupa', 11, 1),
(168, 'Carmen de Viboral', 1, 1),
(169, 'Carmen del Darién (CURBARADÓ)', 12, 1),
(170, 'Carolina', 1, 1),
(171, 'Cartagena', 4, 1),
(172, 'Cartagena del Chairá', 7, 1),
(173, 'Cartago', 24, 1),
(174, 'Carurú', 32, 1),
(175, 'Casabianca', 23, 1),
(176, 'Castilla la Nueva', 16, 1),
(177, 'Caucasia', 1, 1),
(178, 'Cañasgordas', 1, 1),
(179, 'Cepita', 21, 1),
(180, 'Cereté', 10, 1),
(181, 'Cerinza', 5, 1),
(182, 'Cerrito', 21, 1),
(183, 'Cerro San Antonio', 15, 1),
(184, 'Chachaguí', 17, 1),
(185, 'Chaguaní', 11, 1),
(186, 'Chalán', 22, 1),
(187, 'Chaparral', 23, 1),
(188, 'Charalá', 21, 1),
(189, 'Charta', 21, 1),
(190, 'Chigorodó', 1, 1),
(191, 'Chima', 21, 1),
(192, 'Chimichagua', 9, 1),
(193, 'Chimá', 10, 1),
(194, 'Chinavita', 5, 1),
(195, 'Chinchiná', 6, 1),
(196, 'Chinácota', 18, 1),
(197, 'Chinú', 10, 1),
(198, 'Chipaque', 11, 1),
(199, 'Chipatá', 21, 1),
(200, 'Chiquinquirá', 5, 1),
(201, 'Chiriguaná', 9, 1),
(202, 'Chiscas', 5, 1),
(203, 'Chita', 5, 1),
(204, 'Chitagá', 18, 1),
(205, 'Chitaraque', 5, 1),
(206, 'Chivatá', 5, 1),
(207, 'Chivolo', 15, 1),
(208, 'Choachí', 11, 1),
(209, 'Chocontá', 11, 1),
(210, 'Chámeza', 26, 1),
(211, 'Chía', 11, 1),
(212, 'Chíquiza', 5, 1),
(213, 'Chívor', 5, 1),
(214, 'Cicuco', 4, 1),
(215, 'Cimitarra', 21, 1),
(216, 'Circasia', 19, 1),
(217, 'Cisneros', 1, 1),
(218, 'Ciénaga', 5, 1),
(219, 'Ciénaga', 15, 1),
(220, 'Ciénaga de Oro', 10, 1),
(221, 'Clemencia', 4, 1),
(222, 'Cocorná', 1, 1),
(223, 'Coello', 23, 1),
(224, 'Cogua', 11, 1),
(225, 'Colombia', 13, 1),
(226, 'Colosó (Ricaurte)', 22, 1),
(227, 'Colón', 27, 1),
(228, 'Colón (Génova)', 17, 1),
(229, 'Concepción', 1, 1),
(230, 'Concepción', 21, 1),
(231, 'Concordia', 1, 1),
(232, 'Concordia', 15, 1),
(233, 'Condoto', 12, 1),
(234, 'Confines', 21, 1),
(235, 'Consaca', 17, 1),
(236, 'Contadero', 17, 1),
(237, 'Contratación', 21, 1),
(238, 'Convención', 18, 1),
(239, 'Copacabana', 1, 1),
(240, 'Coper', 5, 1),
(241, 'Cordobá', 19, 1),
(242, 'Corinto', 8, 1),
(243, 'Coromoro', 21, 1),
(244, 'Corozal', 22, 1),
(245, 'Corrales', 5, 1),
(246, 'Cota', 11, 1),
(247, 'Cotorra', 10, 1),
(248, 'Covarachía', 5, 1),
(249, 'Coveñas', 22, 1),
(250, 'Coyaima', 23, 1),
(251, 'Cravo Norte', 25, 1),
(252, 'Cuaspud (Carlosama)', 17, 1),
(253, 'Cubarral', 16, 1),
(254, 'Cubará', 5, 1),
(255, 'Cucaita', 5, 1),
(256, 'Cucunubá', 11, 1),
(257, 'Cucutilla', 18, 1),
(258, 'Cuitiva', 5, 1),
(259, 'Cumaral', 16, 1),
(260, 'Cumaribo', 33, 1),
(261, 'Cumbal', 17, 1),
(262, 'Cumbitara', 17, 1),
(263, 'Cunday', 23, 1),
(264, 'Curillo', 7, 1),
(265, 'Curití', 21, 1),
(266, 'Curumaní', 9, 1),
(267, 'Cáceres', 1, 1),
(268, 'Cáchira', 18, 1),
(269, 'Cácota', 18, 1),
(270, 'Cáqueza', 11, 1),
(271, 'Cértegui', 12, 1),
(272, 'Cómbita', 5, 1),
(273, 'Córdoba', 4, 1),
(274, 'Córdoba', 17, 1),
(275, 'Cúcuta', 18, 1),
(276, 'Dabeiba', 1, 1),
(277, 'Dagua', 24, 1),
(278, 'Dibulla', 14, 1),
(279, 'Distracción', 14, 1),
(280, 'Dolores', 23, 1),
(281, 'Don Matías', 1, 1),
(282, 'Dos Quebradas', 20, 1),
(283, 'Duitama', 5, 1),
(284, 'Durania', 18, 1),
(285, 'Ebéjico', 1, 1),
(286, 'El Bagre', 1, 1),
(287, 'El Banco', 15, 1),
(288, 'El Cairo', 24, 1),
(289, 'El Calvario', 16, 1),
(290, 'El Carmen', 18, 1),
(291, 'El Carmen', 21, 1),
(292, 'El Carmen de Atrato', 12, 1),
(293, 'El Carmen de Bolívar', 4, 1),
(294, 'El Castillo', 16, 1),
(295, 'El Cerrito', 24, 1),
(296, 'El Charco', 17, 1),
(297, 'El Cocuy', 5, 1),
(298, 'El Colegio', 11, 1),
(299, 'El Copey', 9, 1),
(300, 'El Doncello', 7, 1),
(301, 'El Dorado', 16, 1),
(302, 'El Dovio', 24, 1),
(303, 'El Espino', 5, 1),
(304, 'El Guacamayo', 21, 1),
(305, 'El Guamo', 4, 1),
(306, 'El Molino', 14, 1),
(307, 'El Paso', 9, 1),
(308, 'El Paujil', 7, 1),
(309, 'El Peñol', 17, 1),
(310, 'El Peñon', 4, 1),
(311, 'El Peñon', 21, 1),
(312, 'El Peñón', 11, 1),
(313, 'El Piñon', 15, 1),
(314, 'El Playón', 21, 1),
(315, 'El Retorno', 31, 1),
(316, 'El Retén', 15, 1),
(317, 'El Roble', 22, 1),
(318, 'El Rosal', 11, 1),
(319, 'El Rosario', 17, 1),
(320, 'El Tablón de Gómez', 17, 1),
(321, 'El Tambo', 8, 1),
(322, 'El Tambo', 17, 1),
(323, 'El Tarra', 18, 1),
(324, 'El Zulia', 18, 1),
(325, 'El Águila', 24, 1),
(326, 'Elías', 13, 1),
(327, 'Encino', 21, 1),
(328, 'Enciso', 21, 1),
(329, 'Entrerríos', 1, 1),
(330, 'Envigado', 1, 1),
(331, 'Espinal', 23, 1),
(332, 'Facatativá', 11, 1),
(333, 'Falan', 23, 1),
(334, 'Filadelfia', 6, 1),
(335, 'Filandia', 19, 1),
(336, 'Firavitoba', 5, 1),
(337, 'Flandes', 23, 1),
(338, 'Florencia', 7, 1),
(339, 'Florencia', 8, 1),
(340, 'Floresta', 5, 1),
(341, 'Florida', 24, 1),
(342, 'Floridablanca', 21, 1),
(343, 'Florián', 21, 1),
(344, 'Fonseca', 14, 1),
(345, 'Fortúl', 25, 1),
(346, 'Fosca', 11, 1),
(347, 'Francisco Pizarro', 17, 1),
(348, 'Fredonia', 1, 1),
(349, 'Fresno', 23, 1),
(350, 'Frontino', 1, 1),
(351, 'Fuente de Oro', 16, 1),
(352, 'Fundación', 15, 1),
(353, 'Funes', 17, 1),
(354, 'Funza', 11, 1),
(355, 'Fusagasugá', 11, 1),
(356, 'Fómeque', 11, 1),
(357, 'Fúquene', 11, 1),
(358, 'Gachalá', 11, 1),
(359, 'Gachancipá', 11, 1),
(360, 'Gachantivá', 5, 1),
(361, 'Gachetá', 11, 1),
(362, 'Galapa', 2, 1),
(363, 'Galeras (Nueva Granada)', 22, 1),
(364, 'Galán', 21, 1),
(365, 'Gama', 11, 1),
(366, 'Gamarra', 9, 1),
(367, 'Garagoa', 5, 1),
(368, 'Garzón', 13, 1),
(369, 'Gigante', 13, 1),
(370, 'Ginebra', 24, 1),
(371, 'Giraldo', 1, 1),
(372, 'Girardot', 11, 1),
(373, 'Girardota', 1, 1),
(374, 'Girón', 21, 1),
(375, 'Gonzalez', 9, 1),
(376, 'Gramalote', 18, 1),
(377, 'Granada', 1, 1),
(378, 'Granada', 11, 1),
(379, 'Granada', 16, 1),
(380, 'Guaca', 21, 1),
(381, 'Guacamayas', 5, 1),
(382, 'Guacarí', 24, 1),
(383, 'Guachavés', 17, 1),
(384, 'Guachené', 8, 1),
(385, 'Guachetá', 11, 1),
(386, 'Guachucal', 17, 1),
(387, 'Guadalupe', 1, 1),
(388, 'Guadalupe', 13, 1),
(389, 'Guadalupe', 21, 1),
(390, 'Guaduas', 11, 1),
(391, 'Guaitarilla', 17, 1),
(392, 'Gualmatán', 17, 1),
(393, 'Guamal', 15, 1),
(394, 'Guamal', 16, 1),
(395, 'Guamo', 23, 1),
(396, 'Guapota', 21, 1),
(397, 'Guapí', 8, 1),
(398, 'Guaranda', 22, 1),
(399, 'Guarne', 1, 1),
(400, 'Guasca', 11, 1),
(401, 'Guatapé', 1, 1),
(402, 'Guataquí', 11, 1),
(403, 'Guatavita', 11, 1),
(404, 'Guateque', 5, 1),
(405, 'Guavatá', 21, 1),
(406, 'Guayabal de Siquima', 11, 1),
(407, 'Guayabetal', 11, 1),
(408, 'Guayatá', 5, 1),
(409, 'Guepsa', 21, 1),
(410, 'Guicán', 5, 1),
(411, 'Gutiérrez', 11, 1),
(412, 'Guática', 20, 1),
(413, 'Gámbita', 21, 1),
(414, 'Gámeza', 5, 1),
(415, 'Génova', 19, 1),
(416, 'Gómez Plata', 1, 1),
(417, 'Hacarí', 18, 1),
(418, 'Hatillo de Loba', 4, 1),
(419, 'Hato', 21, 1),
(420, 'Hato Corozal', 26, 1),
(421, 'Hatonuevo', 14, 1),
(422, 'Heliconia', 1, 1),
(423, 'Herrán', 18, 1),
(424, 'Herveo', 23, 1),
(425, 'Hispania', 1, 1),
(426, 'Hobo', 13, 1),
(427, 'Honda', 23, 1),
(428, 'Ibagué', 23, 1),
(429, 'Icononzo', 23, 1),
(430, 'Iles', 17, 1),
(431, 'Imúes', 17, 1),
(432, 'Inzá', 8, 1),
(433, 'Inírida', 30, 1),
(434, 'Ipiales', 17, 1),
(435, 'Isnos', 13, 1),
(436, 'Istmina', 12, 1),
(437, 'Itagüí', 1, 1),
(438, 'Ituango', 1, 1),
(439, 'Izá', 5, 1),
(440, 'Jambaló', 8, 1),
(441, 'Jamundí', 24, 1),
(442, 'Jardín', 1, 1),
(443, 'Jenesano', 5, 1),
(444, 'Jericó', 1, 1),
(445, 'Jericó', 5, 1),
(446, 'Jerusalén', 11, 1),
(447, 'Jesús María', 21, 1),
(448, 'Jordán', 21, 1),
(449, 'Juan de Acosta', 2, 1),
(450, 'Junín', 11, 1),
(451, 'Juradó', 12, 1),
(452, 'La Apartada y La Frontera', 10, 1),
(453, 'La Argentina', 13, 1),
(454, 'La Belleza', 21, 1),
(455, 'La Calera', 11, 1),
(456, 'La Capilla', 5, 1),
(457, 'La Ceja', 1, 1),
(458, 'La Celia', 20, 1),
(459, 'La Cruz', 17, 1),
(460, 'La Cumbre', 24, 1),
(461, 'La Dorada', 6, 1),
(462, 'La Esperanza', 18, 1),
(463, 'La Estrella', 1, 1),
(464, 'La Florida', 17, 1),
(465, 'La Gloria', 9, 1),
(466, 'La Jagua de Ibirico', 9, 1),
(467, 'La Jagua del Pilar', 14, 1),
(468, 'La Llanada', 17, 1),
(469, 'La Macarena', 16, 1),
(470, 'La Merced', 6, 1),
(471, 'La Mesa', 11, 1),
(472, 'La Montañita', 7, 1),
(473, 'La Palma', 11, 1),
(474, 'La Paz', 21, 1),
(475, 'La Paz (Robles)', 9, 1),
(476, 'La Peña', 11, 1),
(477, 'La Pintada', 1, 1),
(478, 'La Plata', 13, 1),
(479, 'La Playa', 18, 1),
(480, 'La Primavera', 33, 1),
(481, 'La Salina', 26, 1),
(482, 'La Sierra', 8, 1),
(483, 'La Tebaida', 19, 1),
(484, 'La Tola', 17, 1),
(485, 'La Unión', 1, 1),
(486, 'La Unión', 17, 1),
(487, 'La Unión', 22, 1),
(488, 'La Unión', 24, 1),
(489, 'La Uvita', 5, 1),
(490, 'La Vega', 8, 1),
(491, 'La Vega', 11, 1),
(492, 'La Victoria', 5, 1),
(493, 'La Victoria', 6, 1),
(494, 'La Victoria', 24, 1),
(495, 'La Virginia', 20, 1),
(496, 'Labateca', 18, 1),
(497, 'Labranzagrande', 5, 1),
(498, 'Landázuri', 21, 1),
(499, 'Lebrija', 21, 1),
(500, 'Leiva', 17, 1),
(501, 'Lejanías', 16, 1),
(502, 'Lenguazaque', 11, 1),
(503, 'Leticia', 29, 1),
(504, 'Liborina', 1, 1),
(505, 'Linares', 17, 1),
(506, 'Lloró', 12, 1),
(507, 'Lorica', 10, 1),
(508, 'Los Córdobas', 10, 1),
(509, 'Los Palmitos', 22, 1),
(510, 'Los Patios', 18, 1),
(511, 'Los Santos', 21, 1),
(512, 'Lourdes', 18, 1),
(513, 'Luruaco', 2, 1),
(514, 'Lérida', 23, 1),
(515, 'Líbano', 23, 1),
(516, 'López (Micay)', 8, 1),
(517, 'Macanal', 5, 1),
(518, 'Macaravita', 21, 1),
(519, 'Maceo', 1, 1),
(520, 'Machetá', 11, 1),
(521, 'Madrid', 11, 1),
(522, 'Magangué', 4, 1),
(523, 'Magüi (Payán)', 17, 1),
(524, 'Mahates', 4, 1),
(525, 'Maicao', 14, 1),
(526, 'Majagual', 22, 1),
(527, 'Malambo', 2, 1),
(528, 'Mallama (Piedrancha)', 17, 1),
(529, 'Manatí', 2, 1),
(530, 'Manaure', 14, 1),
(531, 'Manaure Balcón del Cesar', 9, 1),
(532, 'Manizales', 6, 1),
(533, 'Manta', 11, 1),
(534, 'Manzanares', 6, 1),
(535, 'Maní', 26, 1),
(536, 'Mapiripan', 16, 1),
(537, 'Margarita', 4, 1),
(538, 'Marinilla', 1, 1),
(539, 'Maripí', 5, 1),
(540, 'Mariquita', 23, 1),
(541, 'Marmato', 6, 1),
(542, 'Marquetalia', 6, 1),
(543, 'Marsella', 20, 1),
(544, 'Marulanda', 6, 1),
(545, 'María la Baja', 4, 1),
(546, 'Matanza', 21, 1),
(547, 'Medellín', 1, 1),
(548, 'Medina', 11, 1),
(549, 'Medio Atrato', 12, 1),
(550, 'Medio Baudó', 12, 1),
(551, 'Medio San Juan (ANDAGOYA)', 12, 1),
(552, 'Melgar', 23, 1),
(553, 'Mercaderes', 8, 1),
(554, 'Mesetas', 16, 1),
(555, 'Milán', 7, 1),
(556, 'Miraflores', 5, 1),
(557, 'Miraflores', 31, 1),
(558, 'Miranda', 8, 1),
(559, 'Mistrató', 20, 1),
(560, 'Mitú', 32, 1),
(561, 'Mocoa', 27, 1),
(562, 'Mogotes', 21, 1),
(563, 'Molagavita', 21, 1),
(564, 'Momil', 10, 1),
(565, 'Mompós', 4, 1),
(566, 'Mongua', 5, 1),
(567, 'Monguí', 5, 1),
(568, 'Moniquirá', 5, 1),
(569, 'Montebello', 1, 1),
(570, 'Montecristo', 4, 1),
(571, 'Montelíbano', 10, 1),
(572, 'Montenegro', 19, 1),
(573, 'Monteria', 10, 1),
(574, 'Monterrey', 26, 1),
(575, 'Morales', 4, 1),
(576, 'Morales', 8, 1),
(577, 'Morelia', 7, 1),
(578, 'Morroa', 22, 1),
(579, 'Mosquera', 11, 1),
(580, 'Mosquera', 17, 1),
(581, 'Motavita', 5, 1),
(582, 'Moñitos', 10, 1),
(583, 'Murillo', 23, 1),
(584, 'Murindó', 1, 1),
(585, 'Mutatá', 1, 1),
(586, 'Mutiscua', 18, 1),
(587, 'Muzo', 5, 1),
(588, 'Málaga', 21, 1),
(589, 'Nariño', 1, 1),
(590, 'Nariño', 11, 1),
(591, 'Nariño', 17, 1),
(592, 'Natagaima', 23, 1),
(593, 'Nechí', 1, 1),
(594, 'Necoclí', 1, 1),
(595, 'Neira', 6, 1),
(596, 'Neiva', 13, 1),
(597, 'Nemocón', 11, 1),
(598, 'Nilo', 11, 1),
(599, 'Nimaima', 11, 1),
(600, 'Nobsa', 5, 1),
(601, 'Nocaima', 11, 1),
(602, 'Norcasia', 6, 1),
(603, 'Norosí', 4, 1),
(604, 'Novita', 12, 1),
(605, 'Nueva Granada', 15, 1),
(606, 'Nuevo Colón', 5, 1),
(607, 'Nunchía', 26, 1),
(608, 'Nuquí', 12, 1),
(609, 'Nátaga', 13, 1),
(610, 'Obando', 24, 1),
(611, 'Ocamonte', 21, 1),
(612, 'Ocaña', 18, 1),
(613, 'Oiba', 21, 1),
(614, 'Oicatá', 5, 1),
(615, 'Olaya', 1, 1),
(616, 'Olaya Herrera', 17, 1),
(617, 'Onzaga', 21, 1),
(618, 'Oporapa', 13, 1),
(619, 'Orito', 27, 1),
(620, 'Orocué', 26, 1),
(621, 'Ortega', 23, 1),
(622, 'Ospina', 17, 1),
(623, 'Otanche', 5, 1),
(624, 'Ovejas', 22, 1),
(625, 'Pachavita', 5, 1),
(626, 'Pacho', 11, 1),
(627, 'Padilla', 8, 1),
(628, 'Paicol', 13, 1),
(629, 'Pailitas', 9, 1),
(630, 'Paime', 11, 1),
(631, 'Paipa', 5, 1),
(632, 'Pajarito', 5, 1),
(633, 'Palermo', 13, 1),
(634, 'Palestina', 6, 1),
(635, 'Palestina', 13, 1),
(636, 'Palmar', 21, 1),
(637, 'Palmar de Varela', 2, 1),
(638, 'Palmas del Socorro', 21, 1),
(639, 'Palmira', 24, 1),
(640, 'Palmito', 22, 1),
(641, 'Palocabildo', 23, 1),
(642, 'Pamplona', 18, 1),
(643, 'Pamplonita', 18, 1),
(644, 'Pandi', 11, 1),
(645, 'Panqueba', 5, 1),
(646, 'Paratebueno', 11, 1),
(647, 'Pasca', 11, 1),
(648, 'Patía (El Bordo)', 8, 1),
(649, 'Pauna', 5, 1),
(650, 'Paya', 5, 1),
(651, 'Paz de Ariporo', 26, 1),
(652, 'Paz de Río', 5, 1),
(653, 'Pedraza', 15, 1),
(654, 'Pelaya', 9, 1),
(655, 'Pensilvania', 6, 1),
(656, 'Peque', 1, 1),
(657, 'Pereira', 20, 1),
(658, 'Pesca', 5, 1),
(659, 'Peñol', 1, 1),
(660, 'Piamonte', 8, 1),
(661, 'Pie de Cuesta', 21, 1),
(662, 'Piedras', 23, 1),
(663, 'Piendamó', 8, 1),
(664, 'Pijao', 19, 1),
(665, 'Pijiño', 15, 1),
(666, 'Pinchote', 21, 1),
(667, 'Pinillos', 4, 1),
(668, 'Piojo', 2, 1),
(669, 'Pisva', 5, 1),
(670, 'Pital', 13, 1),
(671, 'Pitalito', 13, 1),
(672, 'Pivijay', 15, 1),
(673, 'Planadas', 23, 1),
(674, 'Planeta Rica', 10, 1),
(675, 'Plato', 15, 1),
(676, 'Policarpa', 17, 1),
(677, 'Polonuevo', 2, 1),
(678, 'Ponedera', 2, 1),
(679, 'Popayán', 8, 1),
(680, 'Pore', 26, 1),
(681, 'Potosí', 17, 1),
(682, 'Pradera', 24, 1),
(683, 'Prado', 23, 1),
(684, 'Providencia', 17, 1),
(685, 'Providencia', 28, 1),
(686, 'Pueblo Bello', 9, 1),
(687, 'Pueblo Nuevo', 10, 1),
(688, 'Pueblo Rico', 20, 1),
(689, 'Pueblorrico', 1, 1),
(690, 'Puebloviejo', 15, 1),
(691, 'Puente Nacional', 21, 1),
(692, 'Puerres', 17, 1),
(693, 'Puerto Asís', 27, 1),
(694, 'Puerto Berrío', 1, 1),
(695, 'Puerto Boyacá', 5, 1),
(696, 'Puerto Caicedo', 27, 1),
(697, 'Puerto Carreño', 33, 1),
(698, 'Puerto Colombia', 2, 1),
(699, 'Puerto Concordia', 16, 1),
(700, 'Puerto Escondido', 10, 1),
(701, 'Puerto Gaitán', 16, 1),
(702, 'Puerto Guzmán', 27, 1),
(703, 'Puerto Leguízamo', 27, 1),
(704, 'Puerto Libertador', 10, 1),
(705, 'Puerto Lleras', 16, 1),
(706, 'Puerto López', 16, 1),
(707, 'Puerto Nare', 1, 1),
(708, 'Puerto Nariño', 29, 1),
(709, 'Puerto Parra', 21, 1),
(710, 'Puerto Rico', 7, 1),
(711, 'Puerto Rico', 16, 1),
(712, 'Puerto Rondón', 25, 1),
(713, 'Puerto Salgar', 11, 1),
(714, 'Puerto Santander', 18, 1),
(715, 'Puerto Tejada', 8, 1),
(716, 'Puerto Triunfo', 1, 1),
(717, 'Puerto Wilches', 21, 1),
(718, 'Pulí', 11, 1),
(719, 'Pupiales', 17, 1),
(720, 'Puracé (Coconuco)', 8, 1),
(721, 'Purificación', 23, 1),
(722, 'Purísima', 10, 1),
(723, 'Pácora', 6, 1),
(724, 'Páez', 5, 1),
(725, 'Páez (Belalcazar)', 8, 1),
(726, 'Páramo', 21, 1),
(727, 'Quebradanegra', 11, 1),
(728, 'Quetame', 11, 1),
(729, 'Quibdó', 12, 1),
(730, 'Quimbaya', 19, 1),
(731, 'Quinchía', 20, 1),
(732, 'Quipama', 5, 1),
(733, 'Quipile', 11, 1),
(734, 'Ragonvalia', 18, 1),
(735, 'Ramiriquí', 5, 1),
(736, 'Recetor', 26, 1),
(737, 'Regidor', 4, 1),
(738, 'Remedios', 1, 1),
(739, 'Remolino', 15, 1),
(740, 'Repelón', 2, 1),
(741, 'Restrepo', 16, 1),
(742, 'Restrepo', 24, 1),
(743, 'Retiro', 1, 1),
(744, 'Ricaurte', 11, 1),
(745, 'Ricaurte', 17, 1),
(746, 'Rio Negro', 21, 1),
(747, 'Rioblanco', 23, 1),
(748, 'Riofrío', 24, 1),
(749, 'Riohacha', 14, 1),
(750, 'Risaralda', 6, 1),
(751, 'Rivera', 13, 1),
(752, 'Roberto Payán (San José)', 17, 1),
(753, 'Roldanillo', 24, 1),
(754, 'Roncesvalles', 23, 1),
(755, 'Rondón', 5, 1),
(756, 'Rosas', 8, 1),
(757, 'Rovira', 23, 1),
(758, 'Ráquira', 5, 1),
(759, 'Río Iró', 12, 1),
(760, 'Río Quito', 12, 1),
(761, 'Río Sucio', 6, 1),
(762, 'Río Viejo', 4, 1),
(763, 'Río de oro', 9, 1),
(764, 'Ríonegro', 1, 1),
(765, 'Ríosucio', 12, 1),
(766, 'Sabana de Torres', 21, 1),
(767, 'Sabanagrande', 2, 1),
(768, 'Sabanalarga', 1, 1),
(769, 'Sabanalarga', 2, 1),
(770, 'Sabanalarga', 26, 1),
(771, 'Sabanas de San Angel (SAN ANGEL)', 15, 1),
(772, 'Sabaneta', 1, 1),
(773, 'Saboyá', 5, 1),
(774, 'Sahagún', 10, 1),
(775, 'Saladoblanco', 13, 1),
(776, 'Salamina', 6, 1),
(777, 'Salamina', 15, 1),
(778, 'Salazar', 18, 1),
(779, 'Saldaña', 23, 1),
(780, 'Salento', 19, 1),
(781, 'Salgar', 1, 1),
(782, 'Samacá', 5, 1),
(783, 'Samaniego', 17, 1),
(784, 'Samaná', 6, 1),
(785, 'Sampués', 22, 1),
(786, 'San Agustín', 13, 1),
(787, 'San Alberto', 9, 1),
(788, 'San Andrés', 21, 1),
(789, 'San Andrés Sotavento', 10, 1),
(790, 'San Andrés de Cuerquía', 1, 1),
(791, 'San Antero', 10, 1),
(792, 'San Antonio', 23, 1),
(793, 'San Antonio de Tequendama', 11, 1),
(794, 'San Benito', 21, 1),
(795, 'San Benito Abad', 22, 1),
(796, 'San Bernardo', 11, 1),
(797, 'San Bernardo', 17, 1),
(798, 'San Bernardo del Viento', 10, 1),
(799, 'San Calixto', 18, 1),
(800, 'San Carlos', 1, 1),
(801, 'San Carlos', 10, 1),
(802, 'San Carlos de Guaroa', 16, 1),
(803, 'San Cayetano', 11, 1),
(804, 'San Cayetano', 18, 1),
(805, 'San Cristobal', 4, 1),
(806, 'San Diego', 9, 1),
(807, 'San Eduardo', 5, 1),
(808, 'San Estanislao', 4, 1),
(809, 'San Fernando', 4, 1),
(810, 'San Francisco', 1, 1),
(811, 'San Francisco', 11, 1),
(812, 'San Francisco', 27, 1),
(813, 'San Gíl', 21, 1),
(814, 'San Jacinto', 4, 1),
(815, 'San Jacinto del Cauca', 4, 1),
(816, 'San Jerónimo', 1, 1),
(817, 'San Joaquín', 21, 1),
(818, 'San José', 6, 1),
(819, 'San José de Miranda', 21, 1),
(820, 'San José de Montaña', 1, 1),
(821, 'San José de Pare', 5, 1),
(822, 'San José de Uré', 10, 1),
(823, 'San José del Fragua', 7, 1),
(824, 'San José del Guaviare', 31, 1),
(825, 'San José del Palmar', 12, 1),
(826, 'San Juan de Arama', 16, 1),
(827, 'San Juan de Betulia', 22, 1),
(828, 'San Juan de Nepomuceno', 4, 1),
(829, 'San Juan de Pasto', 17, 1),
(830, 'San Juan de Río Seco', 11, 1),
(831, 'San Juan de Urabá', 1, 1),
(832, 'San Juan del Cesar', 14, 1),
(833, 'San Juanito', 16, 1),
(834, 'San Lorenzo', 17, 1),
(835, 'San Luis', 23, 1),
(836, 'San Luís', 1, 1),
(837, 'San Luís de Gaceno', 5, 1),
(838, 'San Luís de Palenque', 26, 1),
(839, 'San Marcos', 22, 1),
(840, 'San Martín', 9, 1),
(841, 'San Martín', 16, 1),
(842, 'San Martín de Loba', 4, 1),
(843, 'San Mateo', 5, 1),
(844, 'San Miguel', 21, 1),
(845, 'San Miguel', 27, 1),
(846, 'San Miguel de Sema', 5, 1),
(847, 'San Onofre', 22, 1),
(848, 'San Pablo', 4, 1),
(849, 'San Pablo', 17, 1),
(850, 'San Pablo de Borbur', 5, 1),
(851, 'San Pedro', 1, 1),
(852, 'San Pedro', 22, 1),
(853, 'San Pedro', 24, 1),
(854, 'San Pedro de Cartago', 17, 1),
(855, 'San Pedro de Urabá', 1, 1),
(856, 'San Pelayo', 10, 1),
(857, 'San Rafael', 1, 1),
(858, 'San Roque', 1, 1),
(859, 'San Sebastián', 8, 1),
(860, 'San Sebastián de Buenavista', 15, 1),
(861, 'San Vicente', 1, 1),
(862, 'San Vicente del Caguán', 7, 1),
(863, 'San Vicente del Chucurí', 21, 1),
(864, 'San Zenón', 15, 1),
(865, 'Sandoná', 17, 1),
(866, 'Santa Ana', 15, 1),
(867, 'Santa Bárbara', 1, 1),
(868, 'Santa Bárbara', 21, 1),
(869, 'Santa Bárbara (Iscuandé)', 17, 1),
(870, 'Santa Bárbara de Pinto', 15, 1),
(871, 'Santa Catalina', 4, 1),
(872, 'Santa Fé de Antioquia', 1, 1),
(873, 'Santa Genoveva de Docorodó', 12, 1),
(874, 'Santa Helena del Opón', 21, 1),
(875, 'Santa Isabel', 23, 1),
(876, 'Santa Lucía', 2, 1),
(877, 'Santa Marta', 15, 1),
(878, 'Santa María', 5, 1),
(879, 'Santa María', 13, 1),
(880, 'Santa Rosa', 4, 1),
(881, 'Santa Rosa', 8, 1),
(882, 'Santa Rosa de Cabal', 20, 1),
(883, 'Santa Rosa de Osos', 1, 1),
(884, 'Santa Rosa de Viterbo', 5, 1),
(885, 'Santa Rosa del Sur', 4, 1),
(886, 'Santa Rosalía', 33, 1),
(887, 'Santa Sofía', 5, 1),
(888, 'Santana', 5, 1),
(889, 'Santander de Quilichao', 8, 1),
(890, 'Santiago', 18, 1),
(891, 'Santiago', 27, 1),
(892, 'Santo Domingo', 1, 1),
(893, 'Santo Tomás', 2, 1),
(894, 'Santuario', 1, 1),
(895, 'Santuario', 20, 1),
(896, 'Sapuyes', 17, 1),
(897, 'Saravena', 25, 1),
(898, 'Sardinata', 18, 1),
(899, 'Sasaima', 11, 1),
(900, 'Sativanorte', 5, 1),
(901, 'Sativasur', 5, 1),
(902, 'Segovia', 1, 1),
(903, 'Sesquilé', 11, 1),
(904, 'Sevilla', 24, 1),
(905, 'Siachoque', 5, 1),
(906, 'Sibaté', 11, 1),
(907, 'Sibundoy', 27, 1),
(908, 'Silos', 18, 1),
(909, 'Silvania', 11, 1),
(910, 'Silvia', 8, 1),
(911, 'Simacota', 21, 1),
(912, 'Simijaca', 11, 1),
(913, 'Simití', 4, 1),
(914, 'Sincelejo', 22, 1),
(915, 'Sincé', 22, 1),
(916, 'Sipí', 12, 1),
(917, 'Sitionuevo', 15, 1),
(918, 'Soacha', 11, 1),
(919, 'Soatá', 5, 1),
(920, 'Socha', 5, 1),
(921, 'Socorro', 21, 1),
(922, 'Socotá', 5, 1),
(923, 'Sogamoso', 5, 1),
(924, 'Solano', 7, 1),
(925, 'Soledad', 2, 1),
(926, 'Solita', 7, 1),
(927, 'Somondoco', 5, 1),
(928, 'Sonsón', 1, 1),
(929, 'Sopetrán', 1, 1),
(930, 'Soplaviento', 4, 1),
(931, 'Sopó', 11, 1),
(932, 'Sora', 5, 1),
(933, 'Soracá', 5, 1),
(934, 'Sotaquirá', 5, 1),
(935, 'Sotara (Paispamba)', 8, 1),
(936, 'Sotomayor (Los Andes)', 17, 1),
(937, 'Suaita', 21, 1),
(938, 'Suan', 2, 1),
(939, 'Suaza', 13, 1),
(940, 'Subachoque', 11, 1),
(941, 'Sucre', 8, 1),
(942, 'Sucre', 21, 1),
(943, 'Sucre', 22, 1),
(944, 'Suesca', 11, 1),
(945, 'Supatá', 11, 1),
(946, 'Supía', 6, 1),
(947, 'Suratá', 21, 1),
(948, 'Susa', 11, 1),
(949, 'Susacón', 5, 1),
(950, 'Sutamarchán', 5, 1),
(951, 'Sutatausa', 11, 1),
(952, 'Sutatenza', 5, 1),
(953, 'Suárez', 8, 1),
(954, 'Suárez', 23, 1),
(955, 'Sácama', 26, 1),
(956, 'Sáchica', 5, 1),
(957, 'Tabio', 11, 1),
(958, 'Tadó', 12, 1),
(959, 'Talaigua Nuevo', 4, 1),
(960, 'Tamalameque', 9, 1),
(961, 'Tame', 25, 1),
(962, 'Taminango', 17, 1),
(963, 'Tangua', 17, 1),
(964, 'Taraira', 32, 1),
(965, 'Tarazá', 1, 1),
(966, 'Tarqui', 13, 1),
(967, 'Tarso', 1, 1),
(968, 'Tasco', 5, 1),
(969, 'Tauramena', 26, 1),
(970, 'Tausa', 11, 1),
(971, 'Tello', 13, 1),
(972, 'Tena', 11, 1),
(973, 'Tenerife', 15, 1),
(974, 'Tenjo', 11, 1),
(975, 'Tenza', 5, 1),
(976, 'Teorama', 18, 1),
(977, 'Teruel', 13, 1),
(978, 'Tesalia', 13, 1),
(979, 'Tibacuy', 11, 1),
(980, 'Tibaná', 5, 1),
(981, 'Tibasosa', 5, 1),
(982, 'Tibirita', 11, 1),
(983, 'Tibú', 18, 1),
(984, 'Tierralta', 10, 1),
(985, 'Timaná', 13, 1),
(986, 'Timbiquí', 8, 1),
(987, 'Timbío', 8, 1),
(988, 'Tinjacá', 5, 1),
(989, 'Tipacoque', 5, 1),
(990, 'Tiquisio (Puerto Rico)', 4, 1),
(991, 'Titiribí', 1, 1),
(992, 'Toca', 5, 1),
(993, 'Tocaima', 11, 1),
(994, 'Tocancipá', 11, 1),
(995, 'Toguí', 5, 1),
(996, 'Toledo', 1, 1),
(997, 'Toledo', 18, 1),
(998, 'Tolú', 22, 1),
(999, 'Tolú Viejo', 22, 1),
(1000, 'Tona', 21, 1),
(1001, 'Topagá', 5, 1),
(1002, 'Topaipí', 11, 1),
(1003, 'Toribío', 8, 1),
(1004, 'Toro', 24, 1),
(1005, 'Tota', 5, 1),
(1006, 'Totoró', 8, 1),
(1007, 'Trinidad', 26, 1),
(1008, 'Trujillo', 24, 1),
(1009, 'Tubará', 2, 1),
(1010, 'Tuchín', 10, 1),
(1011, 'Tulúa', 24, 1),
(1012, 'Tumaco', 17, 1),
(1013, 'Tunja', 5, 1),
(1014, 'Tunungua', 5, 1),
(1015, 'Turbaco', 4, 1),
(1016, 'Turbaná', 4, 1),
(1017, 'Turbo', 1, 1),
(1018, 'Turmequé', 5, 1),
(1019, 'Tuta', 5, 1),
(1020, 'Tutasá', 5, 1),
(1021, 'Támara', 26, 1),
(1022, 'Támesis', 1, 1),
(1023, 'Túquerres', 17, 1),
(1024, 'Ubalá', 11, 1),
(1025, 'Ubaque', 11, 1),
(1026, 'Ubaté', 11, 1),
(1027, 'Ulloa', 24, 1),
(1028, 'Une', 11, 1),
(1029, 'Unguía', 12, 1),
(1030, 'Unión Panamericana (ÁNIMAS)', 12, 1),
(1031, 'Uramita', 1, 1),
(1032, 'Uribe', 16, 1),
(1033, 'Uribia', 14, 1),
(1034, 'Urrao', 1, 1),
(1035, 'Urumita', 14, 1),
(1036, 'Usiacuri', 2, 1),
(1037, 'Valdivia', 1, 1),
(1038, 'Valencia', 10, 1),
(1039, 'Valle de San José', 21, 1),
(1040, 'Valle de San Juan', 23, 1),
(1041, 'Valle del Guamuez', 27, 1),
(1042, 'Valledupar', 9, 1),
(1043, 'Valparaiso', 1, 1),
(1044, 'Valparaiso', 7, 1),
(1045, 'Vegachí', 1, 1),
(1046, 'Venadillo', 23, 1),
(1047, 'Venecia', 1, 1),
(1048, 'Venecia (Ospina Pérez)', 11, 1),
(1049, 'Ventaquemada', 5, 1),
(1050, 'Vergara', 11, 1),
(1051, 'Versalles', 24, 1),
(1052, 'Vetas', 21, 1),
(1053, 'Viani', 11, 1),
(1054, 'Vigía del Fuerte', 1, 1),
(1055, 'Vijes', 24, 1),
(1056, 'Villa Caro', 18, 1),
(1057, 'Villa Rica', 8, 1),
(1058, 'Villa de Leiva', 5, 1),
(1059, 'Villa del Rosario', 18, 1),
(1060, 'Villagarzón', 27, 1),
(1061, 'Villagómez', 11, 1),
(1062, 'Villahermosa', 23, 1),
(1063, 'Villamaría', 6, 1),
(1064, 'Villanueva', 4, 1),
(1065, 'Villanueva', 14, 1),
(1066, 'Villanueva', 21, 1),
(1067, 'Villanueva', 26, 1),
(1068, 'Villapinzón', 11, 1),
(1069, 'Villarrica', 23, 1),
(1070, 'Villavicencio', 16, 1),
(1071, 'Villavieja', 13, 1),
(1072, 'Villeta', 11, 1),
(1073, 'Viotá', 11, 1),
(1074, 'Viracachá', 5, 1),
(1075, 'Vista Hermosa', 16, 1),
(1076, 'Viterbo', 6, 1),
(1077, 'Vélez', 21, 1),
(1078, 'Yacopí', 11, 1),
(1079, 'Yacuanquer', 17, 1),
(1080, 'Yaguará', 13, 1),
(1081, 'Yalí', 1, 1),
(1082, 'Yarumal', 1, 1),
(1083, 'Yolombó', 1, 1),
(1084, 'Yondó (Casabe)', 1, 1),
(1085, 'Yopal', 26, 1),
(1086, 'Yotoco', 24, 1),
(1087, 'Yumbo', 24, 1),
(1088, 'Zambrano', 4, 1),
(1089, 'Zapatoca', 21, 1),
(1090, 'Zapayán (PUNTA DE PIEDRAS)', 15, 1),
(1091, 'Zaragoza', 1, 1),
(1092, 'Zarzal', 24, 1),
(1093, 'Zetaquirá', 5, 1),
(1094, 'Zipacón', 11, 1),
(1095, 'Zipaquirá', 11, 1),
(1096, 'Zona Bananera (PRADO - SEVILLA)', 15, 1),
(1097, 'Ábrego', 18, 1),
(1098, 'Íquira', 13, 1),
(1099, 'Úmbita', 5, 1),
(1100, 'Útica', 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(1, 'ANTIOQUIA'),
(2, 'ATLÁNTICO'),
(3, 'BOGOTÁ, D.C.'),
(4, 'BOLÍVAR'),
(5, 'BOYACÁ'),
(6, 'CALDAS'),
(7, 'CAQUETÁ'),
(8, 'CAUCA'),
(9, 'CESAR'),
(10, 'CÓRDOBA'),
(11, 'CUNDINAMARCA'),
(12, 'CHOCÓ'),
(13, 'HUILA'),
(14, 'LA GUAJIRA'),
(15, 'MAGDALENA'),
(16, 'META'),
(17, 'NARIÑO'),
(18, 'NORTE DE SANTANDER'),
(19, 'QUINDIO'),
(20, 'RISARALDA'),
(21, 'SANTANDER'),
(22, 'SUCRE'),
(23, 'TOLIMA'),
(24, 'VALLE DEL CAUCA'),
(25, 'ARAUCA'),
(26, 'CASANARE'),
(27, 'PUTUMAYO'),
(28, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA'),
(29, 'AMAZONAS'),
(30, 'GUAINÍA'),
(31, 'GUAVIARE'),
(32, 'VAUPÉS'),
(33, 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_14_132417_create_carts_table', 1),
(6, '2023_11_14_132417_create_categories_table', 1),
(7, '2023_11_14_132417_create_cities_table', 1),
(8, '2023_11_14_132417_create_departments_table', 1),
(9, '2023_11_14_132417_create_products_table', 1),
(10, '2023_11_14_132417_create_roles_table', 1),
(11, '2023_11_14_132417_create_sessions_table', 1),
(12, '2023_11_14_132417_create_user_roles_table', 1),
(13, '2023_11_14_132417_create_users_table', 1),
(14, '2023_11_14_132420_add_foreign_keys_to_carts_table', 1),
(15, '2023_11_14_132420_add_foreign_keys_to_cities_table', 1),
(16, '2023_11_14_132420_add_foreign_keys_to_products_table', 1),
(17, '2023_11_14_132420_add_foreign_keys_to_user_roles_table', 1),
(18, '2023_11_16_134417_create_purchases_table', 1),
(19, '2023_11_16_134420_add_foreign_keys_to_purchases_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `state` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `category_id` int NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `state`, `name`, `description`, `price`, `category_id`, `product_image`, `stock`, `created_at`, `updated_at`) VALUES
(1, '1', 'd', 'dsd', 12, 1, 'd1.webp', 12, '2023-11-27 00:29:17', '2023-11-27 00:29:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases`
--

CREATE TABLE `purchases` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `products` json NOT NULL,
  `purchase_date` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'cliente'),
(3, 'moderador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` int DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `city`, `password`, `created_at`, `updated_at`) VALUES
(1, 'camilo', 'camilozgbmediagroup@gmail.com', NULL, '$2y$10$TYIiiGRYf5ovt5EuWETJ8.TEY4YHctmw7OOZep0FVpjVhz6n19Zza', '2023-11-27 00:08:16', '2023-11-27 00:08:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_carts_users1_idx` (`user_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cities_departments1_idx` (`department`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `fk_carts_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `fk_cities_departments1` FOREIGN KEY (`department`) REFERENCES `departments` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
--
-- Base de datos: `nexura`
--
CREATE DATABASE IF NOT EXISTS `nexura` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `nexura`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Gerencia', NULL, NULL),
(2, 'Administración', NULL, NULL),
(3, 'Recursos Humanos', NULL, NULL),
(4, 'Contabilidad', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` bigint UNSIGNED DEFAULT NULL,
  `boletin` tinyint(1) NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `email`, `sexo`, `area_id`, `boletin`, `descripcion`, `created_at`, `updated_at`) VALUES
(2, 'cositas', 'kamilozapata19cambioe7@gmail.com', 'femenino', 2, 0, 'asiatica', '2024-09-07 13:17:33', '2024-09-07 14:48:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_rol`
--

CREATE TABLE `empleado_rol` (
  `id` bigint UNSIGNED NOT NULL,
  `empleado_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleado_rol`
--

INSERT INTO `empleado_rol` (`id`, `empleado_id`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 2, 1, NULL, NULL),
(6, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(89, '2014_10_12_000000_create_users_table', 1),
(90, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(91, '2019_08_19_000000_create_failed_jobs_table', 1),
(92, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(93, '2024_09_07_001549_create_empleados_table', 1),
(94, '2024_09_07_003307_create_areas_table', 1),
(95, '2024_09_07_003415_create_roles_table', 1),
(96, '2024_09_07_010546_create_empleado_rol_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Profesional de proyectos - Desarrollador', NULL, NULL),
(2, 'Gerente estrategico', NULL, NULL),
(3, 'Auxiliar administrativo', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `empleados_email_unique` (`email`);

--
-- Indices de la tabla `empleado_rol`
--
ALTER TABLE `empleado_rol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empleado_rol_empleado_id_foreign` (`empleado_id`),
  ADD KEY `empleado_rol_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empleado_rol`
--
ALTER TABLE `empleado_rol`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado_rol`
--
ALTER TABLE `empleado_rol`
  ADD CONSTRAINT `empleado_rol_empleado_id_foreign` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `empleado_rol_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `priority` enum('baja','media','alta') NOT NULL,
  `status` enum('pendiente','completada') DEFAULT 'pendiente',
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `priority`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'tarea', 'prueba', 'media', 'pendiente', 1, '2024-10-10 16:14:31', '2024-10-10 17:21:13'),
(2, 'prueba', 'prueba', 'baja', 'pendiente', 1, '2024-10-10 16:14:49', '2024-10-10 17:24:10'),
(3, 'prueba', 'prueba', 'media', 'completada', 1, '2024-10-10 17:12:26', '2024-10-10 17:15:28'),
(4, 'prueba', 'prueba', 'baja', 'completada', 1, '2024-10-10 17:38:29', '2024-10-10 17:39:48'),
(5, 'prueba', 'orta', 'baja', 'pendiente', 1, '2024-10-10 17:39:39', '2024-10-10 17:39:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'camilo', 'kamilozapata1997@gmail.com', '1234567890'),
(2, 'Admin', 'admin@admin.com', '123456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_tasks`
--

CREATE TABLE `user_tasks` (
  `user_id` int NOT NULL,
  `task_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `user_tasks`
--

INSERT INTO `user_tasks` (`user_id`, `task_id`) VALUES
(1, 4),
(1, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `user_tasks`
--
ALTER TABLE `user_tasks`
  ADD PRIMARY KEY (`user_id`,`task_id`),
  ADD KEY `task_id` (`task_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_tasks`
--
ALTER TABLE `user_tasks`
  ADD CONSTRAINT `user_tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_tasks_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `task_management`
--
CREATE DATABASE IF NOT EXISTS `task_management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `task_management`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

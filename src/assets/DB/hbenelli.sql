-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-01-2023 a las 05:13:03
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hbenelli`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `subcategoria` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `idDetalle` int(11) DEFAULT NULL,
  `codigo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `peso` decimal(7,2) NOT NULL,
  `unidad` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `urlPhoto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `updated_at` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `subcategoria`, `idCategoria`, `idDetalle`, `codigo`, `nombre`, `peso`, `unidad`, `urlPhoto`, `updated_at`, `created_at`) VALUES
(1, 'alimentaria', 1, NULL, NULL, 'ACHUETE', '1.00', 'kg', '', '', ''),
(2, 'alimentaria', 1, NULL, NULL, 'AJI MOLIDO', '1.00', 'kg', '', '', ''),
(3, 'alimentaria', 1, NULL, NULL, 'AJO EN POLVO (NACIONAL)', '1.00', 'kg', '', '', ''),
(4, 'alimentaria', 1, NULL, NULL, 'AJO EN POLVO(CHINO) BLANCO', '1.00', 'kg', '', '', ''),
(5, 'alimentaria', 1, NULL, NULL, 'AJO PARTIDO CHINO', '1.00', 'kg', '', '', ''),
(6, 'alimentaria', 1, NULL, NULL, 'AJO PARTIDO NACIONAL', '1.00', 'kg', '', '', ''),
(7, 'alimentaria', 1, NULL, NULL, 'ANIS EN GRANO O MOLIDO', '1.00', 'kg', '', '', ''),
(8, 'alimentaria', 1, NULL, NULL, 'ANTICUAGULANTE', '1.00', 'kg', '', '', ''),
(9, 'alimentaria', 1, NULL, NULL, 'CALER \"A\" (fijador color secos)', '1.00', 'kg', '', '', ''),
(10, 'alimentaria', 1, NULL, NULL, 'CALER \"S\" (fijador color frescos)', '1.00', 'kg', '', '', ''),
(11, 'alimentaria', 1, NULL, NULL, 'CANELA MOLIDA', '1.00', 'kg', '', '', ''),
(12, 'alimentaria', 1, NULL, NULL, 'CARMIN', '1.00', 'kg', '', '', ''),
(13, 'alimentaria', 1, NULL, NULL, 'CAYENA MOLIDA', '1.00', 'kg', '', '', ''),
(14, 'alimentaria', 1, NULL, NULL, 'CHIMICHURRI', '1.00', 'kg', '', '', ''),
(15, 'alimentaria', 1, NULL, NULL, 'CLAVO DE OLOR EN GRANO', '1.00', 'kg', '', '', ''),
(16, 'alimentaria', 1, NULL, NULL, 'CLAVO OLOR MOLIDO (PEDUNCULO)', '1.00', 'kg', '', '', ''),
(17, 'alimentaria', 1, NULL, NULL, 'COLORANTE VEGETAL', '1.00', 'kg', '', '', ''),
(18, 'alimentaria', 1, NULL, NULL, 'COMINO MOLIDO', '1.00', 'kg', '', '', ''),
(19, 'alimentaria', 1, NULL, NULL, 'CONDIMENTO PARA ARROZ', '1.00', 'kg', '', '', ''),
(20, 'alimentaria', 1, NULL, NULL, 'CONDIMENTO PIZZA', '1.00', 'kg', '', '', ''),
(21, 'alimentaria', 1, NULL, NULL, 'CORIANDRO MOLIDO', '1.00', 'kg', '', '', ''),
(22, 'alimentaria', 1, NULL, NULL, 'CURCUMA', '1.00', 'kg', '', '', ''),
(23, 'alimentaria', 1, NULL, NULL, 'DEXTROSA', '1.00', 'kg', '', '', ''),
(24, 'alimentaria', 1, NULL, NULL, 'ESPECIAS SURTIDAS', '1.00', 'kg', '', '', ''),
(25, 'alimentaria', 1, NULL, NULL, 'FIUMER \"E\" (fosfato emulsion)', '1.00', 'kg', '', '', ''),
(26, 'alimentaria', 1, NULL, NULL, 'FIUMER \"I\" (fosfato inyeccion)', '1.00', 'kg', '', '', ''),
(27, 'alimentaria', 1, NULL, NULL, 'GLUTAMATO MONOSODICO', '1.00', 'kg', '', '', ''),
(28, 'alimentaria', 1, NULL, NULL, 'GOMEX', '1.00', 'kg', '', '', ''),
(29, 'alimentaria', 1, NULL, NULL, 'HINOJO EN GRANO O MOLIDO', '1.00', 'kg', '', '', ''),
(30, 'alimentaria', 1, NULL, NULL, 'JENGIBRE', '1.00', 'kg', '', '', ''),
(31, 'alimentaria', 1, NULL, NULL, 'LAUREL MOLIDO', '1.00', 'kg', '', '', ''),
(32, 'alimentaria', 1, NULL, NULL, 'LIGA PARA MATAMBRE', '1.00', 'kg', '', '', ''),
(33, 'alimentaria', 1, NULL, NULL, 'NITRATO DE SODIO', '1.00', 'kg', '', '', ''),
(34, 'alimentaria', 1, NULL, NULL, 'NUEZ MOSCADA MOLIDA', '1.00', 'kg', '', '', ''),
(35, 'alimentaria', 1, NULL, NULL, 'OREGANO', '1.00', 'kg', '', '', ''),
(36, 'alimentaria', 1, NULL, NULL, 'PEREJIL EN HOJA', '1.00', 'kg', '', '', ''),
(37, 'alimentaria', 1, NULL, NULL, 'PIMENTA BLANCA GRANO /PART/MOLIDA', '1.00', 'kg', '', '', ''),
(38, 'alimentaria', 1, NULL, NULL, 'PIMENTON ESENCIA', '1.00', 'kg', '', '', ''),
(39, 'alimentaria', 1, NULL, NULL, 'PIMENTON AHUMADO', '1.00', 'kg', '', '', ''),
(40, 'alimentaria', 1, NULL, NULL, 'PIMIENTA NEGRA GRANO/PART/MOLIDA', '1.00', 'kg', '', '', ''),
(41, 'alimentaria', 1, NULL, NULL, 'PROVENZAL IMPORTADA', '1.00', 'kg', '', '', ''),
(42, 'alimentaria', 1, NULL, NULL, 'SAL', '1.00', 'kg', '', '', ''),
(43, 'alimentaria', 1, NULL, NULL, 'SAL ANTIOXIDANTE', '1.00', 'kg', '', '', ''),
(44, 'alimentaria', 1, NULL, NULL, 'SAL DE CURA', '1.00', 'kg', '', '', ''),
(45, 'alimentaria', 1, NULL, NULL, 'NITRITO', '1.00', 'kg', '', '', ''),
(46, 'alimentaria', 2, NULL, NULL, 'SULFITO DE SODIO', '1.00', 'kg', '', '', ''),
(47, 'alimentaria', 2, NULL, NULL, 'FECULA DE MAIZ KG', '1.00', 'kg', '', '', ''),
(48, 'alimentaria', 2, NULL, NULL, 'FECULA DE MAIZ X 25 KG.', '25.00', 'kg', '', '', ''),
(49, 'alimentaria', 2, NULL, NULL, 'FECULA DE MANDIOCA', '1.00', 'kg', '', '', ''),
(50, 'alimentaria', 2, NULL, NULL, 'FECULA DE MANDIOCA X 25 KG', '25.00', 'kg', '', '', ''),
(51, 'alimentaria', 2, NULL, NULL, 'FECULA DE PAPA', '1.00', 'kg', '', '', ''),
(52, 'alimentaria', 2, NULL, NULL, 'FECULA DE PAPA X 25 KG', '25.00', 'kg', '', '', ''),
(53, 'alimentaria', 2, NULL, NULL, 'FECULA DE TRIGO', '1.00', 'kg', '', '', ''),
(54, 'alimentaria', 2, NULL, NULL, 'FECULA DE TRIGO X 25 KG', '25.00', 'kg', '', '', ''),
(55, 'alimentaria', 2, NULL, NULL, 'GLUTEN DE TRIGO', '1.00', 'kg', '', '', ''),
(56, 'alimentaria', 2, NULL, NULL, 'GLUTEN DE TRIGO X 25 KG', '25.00', 'kg', '', '', ''),
(57, 'alimentaria', 2, NULL, NULL, 'HARINA DE SOJA X 20 kg', '20.00', 'kg', '', '', ''),
(58, 'alimentaria', 2, NULL, NULL, 'HARINA DE SOJA FINA', '1.00', 'kg', '', '', ''),
(59, 'alimentaria', 2, NULL, NULL, 'HARINA DE SOJA X 1 KG GRUESA', '1.00', 'kg', '', '', ''),
(60, 'alimentaria', 2, NULL, NULL, 'HARINA DE SOJA M X 30 GRUESA', '30.00', 'kg', '', '', ''),
(61, 'alimentaria', 2, NULL, NULL, 'REBOZADOR BALONIX 25', '25.00', 'kg', '', '', ''),
(62, 'alimentaria', 2, NULL, NULL, 'SANGRE ENTERA (NUTRAGEL)', '1.00', 'kg', '', '', ''),
(63, 'alimentaria', 2, NULL, NULL, 'SANGRE ENTERA X 20 KG', '20.00', 'kg', '', '', ''),
(64, 'alimentaria', 2, NULL, NULL, 'PAN RALLADO X 25 KG', '25.00', 'kg', '', '', ''),
(65, 'alimentaria', 3, NULL, NULL, 'INTEGRAL CHORIZO FRESCO (uso 7 x 100)', '5.00', 'kg', '', '', ''),
(66, 'alimentaria', 3, NULL, NULL, 'INTEGRAL CHORIZO FRESCO (uso 7 x 100)', '10.00', 'kg', '', '', ''),
(67, 'alimentaria', 3, NULL, NULL, 'INTEGRAL CHORIZO FRESCO (uso 7 x 100)', '1.00', 'kg', '', '', ''),
(68, 'alimentaria', 3, NULL, NULL, 'INTEGRAL CHORIZO FRESCO COLORADO (10X100)', '5.00', 'kg', '', '', ''),
(69, 'alimentaria', 3, NULL, NULL, 'INTEGRAL CHORIZO FRESCO COLORADO (10X100)', '10.00', 'kg', '', '', ''),
(70, 'alimentaria', 3, NULL, NULL, 'INTEGRAL CHORIZO FRESCO COLORADO (10X100)', '1.00', 'kg', '', '', ''),
(71, 'alimentaria', 3, NULL, NULL, 'INTEGRAL SALCHICHA FRESCA (7X100)', '5.00', 'kg', '', '', ''),
(72, 'alimentaria', 3, NULL, NULL, 'INTEGRAL SALCHICHA FRESCA (7X100)', '10.00', 'kg', '', '', ''),
(73, 'alimentaria', 3, NULL, NULL, 'INTEGRAL SALCHICHA FRESCA (7 X 100)', '1.00', 'kg', '', '', ''),
(74, 'alimentaria', 3, NULL, NULL, 'INTEGRAL HAMBURGUESA S/CARNE (5X100)', '5.00', 'kg', '', '', ''),
(75, 'alimentaria', 3, NULL, NULL, 'INTEGRAL HAMBURGUESA S/CARNE (5X100)', '10.00', 'kg', '', '', ''),
(76, 'alimentaria', 3, NULL, NULL, 'INTEGRAL HAMBURGUESA S/CARNE X 1 KG (5 x 100)', '1.00', 'kg', '', '', ''),
(77, 'alimentaria', 3, NULL, NULL, 'INTEGRAL HAMBURGUESA S/POLLO 5 Y 10 (5 X 100)', '5.00', 'kg', '', '', ''),
(78, 'alimentaria', 3, NULL, NULL, 'INTEGRAL HAMBURGUESA S/POLLO 5 Y 10 (5 X 100)', '10.00', 'kg', '', '', ''),
(79, 'alimentaria', 3, NULL, NULL, 'INTEGRAL HAMBURGUESA SABOR POLLO X 1 KG (5X100)', '1.00', 'kg', '', '', ''),
(80, 'alimentaria', 3, 2, NULL, 'INTEGRAL MILANESA DE CARNE (USO 1 X 6 AGUA)', '5.00', 'kg', '', '', ''),
(81, 'alimentaria', 3, 2, NULL, 'INTEGRAL MILANESA DE CARNE (USO 1 X 6 AGUA)', '10.00', 'kg', '', '', ''),
(82, 'alimentaria', 3, 2, NULL, 'INTEGRAL MILANESA DE CARNE (USO 1 KG X 6 AGUA)', '1.00', 'kg', '', '', ''),
(83, 'alimentaria', 3, NULL, NULL, 'INTEGRAL MILANESA S/POLLO (1KG X 6 AGUA)', '5.00', 'kg', '', '', ''),
(84, 'alimentaria', 3, NULL, NULL, 'INTEGRAL MILANESA S/POLLO (1KG X 6 AGUA)', '10.00', 'kg', '', '', ''),
(85, 'alimentaria', 3, NULL, NULL, 'INTEGRAL MILANESA SABOR POLLO X 1KG (1X6 AGUA)', '1.00', 'kg', '', '', ''),
(86, 'alimentaria', 3, NULL, NULL, 'INTEGRAL SALAME (USO 7 X 100)', '5.00', 'kg', '', '', ''),
(87, 'alimentaria', 3, NULL, NULL, 'INTEGRAL SALAME (USO 7 X 100)', '10.00', 'kg', '', '', ''),
(88, 'alimentaria', 3, NULL, NULL, 'INTEGRAL SALAME (USO 7 X 100)', '1.00', 'kg', '', '', ''),
(89, 'alimentaria', 3, NULL, NULL, 'INTEGRAL LONGANIZA ESPAÑOLA (USO10X100)', '5.00', 'kg', '', '', ''),
(90, 'alimentaria', 3, NULL, NULL, 'INTEGRAL LONGANIZA ESPAÑOLA (USO10X100)', '10.00', 'kg', '', '', ''),
(91, 'alimentaria', 3, NULL, NULL, 'INTEGRAL LONGANIZA ESPAÑOLA X 1 KG(USO 10 X 100)', '1.00', 'kg', '', '', ''),
(92, 'alimentaria', 3, NULL, NULL, 'INTEGRAL CRESPON Y CANTIMPALO 5 Y 10 (USO 10X100)', '5.00', 'kg', '', '', ''),
(93, 'alimentaria', 3, NULL, NULL, 'INTEGRAL CRESPON Y CANTIMPALO 5 Y 10 (USO 10X100)', '10.00', 'kg', '', '', ''),
(94, 'alimentaria', 3, NULL, NULL, 'INTEGRAL CRESPON Y CANTIMPALO X 1 KG (USO 10 X 100)', '1.00', 'kg', '', '', ''),
(95, 'alimentaria', 3, NULL, NULL, 'INTEGRAL BONDIOLA Y JAMON', '5.00', 'kg', '', '', ''),
(96, 'alimentaria', 3, NULL, NULL, 'INTEGRAL BONDIOLA Y JAMON', '10.00', 'kg', '', '', ''),
(97, 'alimentaria', 3, NULL, NULL, 'INTEGRAL BONDIOLA Y JAMON (7 X 100)', '1.00', 'kg', '', '', ''),
(98, 'alimentaria', 3, NULL, NULL, 'INTEGRAL MORCILLA (USO 7 X 100)', '5.00', 'kg', '', '', ''),
(99, 'alimentaria', 3, NULL, NULL, 'INTEGRAL MORCILLA (USO 7 X 100)', '10.00', 'kg', '', '', ''),
(100, 'alimentaria', 3, NULL, NULL, 'INTEGRAL MORCILLA X 1 KG (USO 7 X 100)', '1.00', 'kg', '', '', ''),
(101, 'alimentaria', 3, NULL, NULL, 'INTEGRAL QUESO DE CERDO (USO 7 X 100)', '5.00', 'kg', '', '', ''),
(102, 'alimentaria', 3, NULL, NULL, 'INTEGRAL QUESO DE CERDO (USO 7 X 100)', '10.00', 'kg', '', '', ''),
(103, 'alimentaria', 3, NULL, NULL, 'INTEGRAL QUESO DE CERDO X 1 KG(USO 7 X 100)', '1.00', 'kg', '', '', ''),
(104, 'alimentaria', 3, NULL, NULL, 'INTEGRAL PANCETA', '5.00', 'kg', '', '', ''),
(105, 'alimentaria', 3, NULL, NULL, 'INTEGRAL PANCETA', '10.00', 'kg', '', '', ''),
(106, 'alimentaria', 3, NULL, NULL, 'INTEGRAL CIERVO Y ÑANDU', '1.00', 'kg', '', '', ''),
(107, 'alimentaria', 3, NULL, NULL, 'SABOR A HUMO', '1.00', 'kg', '', '', ''),
(108, 'alimentaria', 3, NULL, NULL, 'SABOR A JAMON concentracion 1 x 10', '1.00', 'kg', '', '', ''),
(109, 'alimentaria', 3, NULL, NULL, 'SABOR A POLLO concentracion 1x 10', '1.00', 'kg', '', '', ''),
(110, 'alimentaria', 3, NULL, NULL, 'SABOR A QUESO', '1.00', 'kg', '', '', ''),
(111, 'alimentaria', 3, NULL, NULL, 'SABORIZANTE AJO concentrado 1 x 10', '1.00', 'kg', '', '', ''),
(112, 'alimentaria', 3, NULL, NULL, 'SABORIZANTE CHORIZO', '1.00', 'kg', '', '', ''),
(113, 'alimentaria', 3, NULL, NULL, 'SABORIZANTE CHORIZO ESPECIAL', '1.00', 'kg', '', '', ''),
(114, 'alimentaria', 3, NULL, NULL, 'SABORIZANTE CHORIZO P/C', '1.00', 'kg', '', '', ''),
(115, 'alimentaria', 3, NULL, NULL, 'SABORIZANTE MATAMBRE', '1.00', 'kg', '', '', ''),
(116, 'alimentaria', 3, NULL, NULL, 'SABORIZANTE MORCILLA', '1.00', 'kg', '', '', ''),
(117, 'alimentaria', 3, NULL, NULL, 'SABORIZANTE RAVIOLES', '1.00', 'kg', '', '', ''),
(118, 'alimentaria', 3, NULL, NULL, 'SABOR PIMIENTA', '5.00', 'kg', '', '', ''),
(119, 'alimentaria', 3, NULL, NULL, 'SABOR NUEZ MOSCADA', '5.00', 'kg', '', '', ''),
(120, 'alimentaria', 4, NULL, NULL, 'ORILLA VACUNA 40/42', '15.00', 'mts', '', '', ''),
(121, 'alimentaria', 4, NULL, NULL, 'ORILLA VACUNA 42/44', '25.00', 'mts', '', '', ''),
(122, 'alimentaria', 4, NULL, NULL, 'ORILLA VACUNA 44/46', '25.00', 'mts', '', '', ''),
(123, 'alimentaria', 4, NULL, NULL, 'TRIPON VACUNO (planchado y blanqueado)', '10.00', 'mts', '', '', ''),
(124, 'alimentaria', 4, NULL, NULL, 'ORILLA VACUNA 40/43 X 15 MTS', '15.00', 'mts', '', '', ''),
(125, 'alimentaria', 4, NULL, NULL, 'ORILLA VACUNA 40/43 X 30 MTS', '30.00', 'mts', '', '', ''),
(126, 'alimentaria', 4, NULL, NULL, 'CHINEZCA IMPORTADA X 90 MT', '90.00', 'mts', '', '', ''),
(127, 'alimentaria', 4, NULL, NULL, 'CHINEZCA NACIONAL 38/40 X 70', '70.00', 'mts', '', '', ''),
(128, 'alimentaria', 4, NULL, NULL, 'OVINO 22/24 X 90 MTS', '90.00', 'mts', '', '', ''),
(129, 'alimentaria', 4, NULL, NULL, 'TUBO 24 X 15 MTS', '15.00', 'mts', '', '', ''),
(130, 'alimentaria', 4, NULL, NULL, 'CHINEZCA NACIONAL TIRAS CORTAS', '1.00', 'unid', '', '', ''),
(131, 'alimentaria', 4, NULL, NULL, 'COLAGENO 24', '425.00', 'mts', '', '', ''),
(132, 'alimentaria', 4, NULL, NULL, 'COLAGENO 25', '630.00', 'mts', '', '', ''),
(133, 'alimentaria', 4, NULL, NULL, 'COLAGENO 45 EL MT (FIBRAN)', '1.00', 'mts', '', '', ''),
(134, 'alimentaria', 4, NULL, NULL, 'COLAGENO 50 EL MTS (FIBRAN)', '1.00', 'mts', '', '', ''),
(135, 'alimentaria', 4, NULL, NULL, 'COLAGENO 55 EL MT (FIBRAN)', '1.00', 'mts', '', '', ''),
(136, 'alimentaria', 4, NULL, NULL, 'COLAGENO 60 EL MT (FIBRAN)', '1.00', 'mts', '', '', ''),
(137, 'alimentaria', 4, NULL, NULL, 'COLAGENO 80 EL MT (FIBRAN)', '1.00', 'mts', '', '', ''),
(138, 'alimentaria', 4, NULL, NULL, 'BOLSAS CRISTAL 18 X 56', '1.00', 'unid', '', '', ''),
(139, 'alimentaria', 4, NULL, NULL, 'BOLSAS MORT. POLIAMIDA marron', '1.00', 'mts', '', '', ''),
(140, 'alimentaria', 4, NULL, NULL, 'BOLSAS QUESO DE CERDO 18 X 56', '1.00', 'unid', '', '', ''),
(141, 'alimentaria', 4, NULL, NULL, 'BOLSAS ROJAS 18 X 56', '1.00', 'unid', '', '', ''),
(142, 'alimentaria', 4, NULL, NULL, 'BOLSAS SALCHICHON C/JAMON 18 X 56', '1.00', 'unid', '', '', ''),
(143, 'alimentaria', 4, NULL, NULL, 'BOLSAS SALCHICHON PRIMAV 18 X 56', '1.00', 'unid', '', '', ''),
(144, 'alimentaria', 4, NULL, NULL, 'CELOFAN MICROPOROSO 46 X 50', '1.00', 'unid', '', '', ''),
(145, 'alimentaria', 4, NULL, NULL, 'CELOFAN MICROPOROSO 70 x 90', '1.00', 'unid', '', '', ''),
(146, 'alimentaria', 4, NULL, NULL, 'GANCHOS METALICOS N° 1', '1.00', 'unid', '', '', ''),
(147, 'alimentaria', 4, NULL, NULL, 'HIPOCLORITO DE SODIO', '1.00', 'unid', '', '', ''),
(148, 'alimentaria', 4, NULL, NULL, 'PAPEL FOLEX P/HAMBURGUESA', '1.00', 'unid', '', '', ''),
(149, 'alimentaria', 4, NULL, NULL, 'PASTA DESENGRASANTE', '1.00', 'unid', '', '', ''),
(150, 'alimentaria', 4, NULL, NULL, 'RED BONDIOLA CUADRADA POR RED', '1.00', 'unid', '', '', ''),
(151, 'alimentaria', 4, NULL, NULL, 'RED BONDIOLAX 10MTS', '10.00', 'mts', '', '', ''),
(152, 'alimentaria', 4, NULL, NULL, 'RED MORTADELA COLOR', '1.00', 'unid', '', '', ''),
(153, 'alimentaria', 4, NULL, NULL, 'VASELINA LIQUIDA', '1.00', 'unid', '', '', ''),
(154, 'alimentaria', 5, NULL, NULL, 'HAMBURGUESERA MEDIANA', '1.00', 'unid', '', '', ''),
(155, 'alimentaria', 5, NULL, NULL, 'HAMBURGUESERA CHICA', '1.00', 'unid', '', '', ''),
(156, 'alimentaria', 5, NULL, NULL, 'EMBUDO ACERO', '1.00', 'unid', '', '', ''),
(157, 'alimentaria', 5, NULL, NULL, 'PALITOS ESPUELAS', '1.00', 'unid', '', '', ''),
(158, 'alimentaria', 5, NULL, NULL, 'PALOTE', '1.00', 'unid', '', '', ''),
(159, 'alimentaria', 5, NULL, NULL, 'EMBUDO PLASTICO 32 CHORIZO', '1.00', 'unid', '', '', ''),
(160, 'alimentaria', 5, NULL, NULL, 'EMBUDO PLASTICO', '1.00', 'unid', '', '', ''),
(161, 'alimentaria', 5, NULL, NULL, 'DISCO PLASTICO', '1.00', 'unid', '', '', ''),
(162, 'alimentaria', 5, NULL, NULL, 'PINCHE', '1.00', 'unid', '', '', ''),
(163, 'textil', 6, NULL, 'HC3B330', 'HILO CRUDO Nº 3 BOBINA 330 G', '330.00', 'gr', '', '', ''),
(164, 'textil', 6, NULL, 'HC3B900', 'HILO CRUDO Nº 3 BOBINA 900 G', '900.00', 'gr', '', '', ''),
(165, 'textil', 6, NULL, 'HC4B330', 'HILO CRUDO Nº 4 BOBINA 330 G', '330.00', 'gr', '', '', ''),
(166, 'textil', 6, NULL, 'HC4B900', 'HILO CRUDO Nº 4 BOBINA 900 G', '900.00', 'gr', '', '', ''),
(167, 'textil', 6, NULL, 'HC5B330', 'HILO CRUDO Nº 5 BOBINA 330 G', '330.00', 'gr', '', '', ''),
(168, 'textil', 6, NULL, 'HC6B330', 'HILO CRUDO Nº 6 BOBINA 330 G', '330.00', 'gr', '', '', ''),
(169, 'textil', 6, NULL, 'HC8B330', 'HILO CRUDO Nº 8 BOBINA 330 G', '330.00', 'gr', '', '', ''),
(170, 'textil', 6, NULL, 'HC8B800', 'HILO CRUDO Nº 8 BOBINA 900 G', '900.00', 'gr', '', '', ''),
(171, 'textil', 6, NULL, 'HC11B900', 'HILO CRUDO Nº 11 BOBINA 900 G', '900.00', 'gr', '', '', ''),
(172, 'textil', 6, NULL, 'HC15B800', 'HILO CRUDO Nº 15 BOBINA 900 G', '900.00', 'gr', '', '', ''),
(173, 'textil', 6, NULL, 'HC22B800', 'HILO CRUDO Nº 22 BOBINA 900 G', '900.00', 'gr', '', '', ''),
(174, 'textil', 6, NULL, 'HC27B800', 'HILO CRUDO Nº 27 BOBINA 900 G', '900.00', 'gr', '', '', ''),
(175, 'textil', 6, NULL, 'HP3A900', 'HILO PULIDO AMARILLO Nº 3 BOBINA 330 G', '330.00', 'gr', '', '', ''),
(176, 'textil', 6, NULL, 'HCO30', 'HILO CRUDO Nº 3 OVILLO DE 30 G', '30.00', 'gr', '', '', ''),
(177, 'textil', 6, NULL, 'HCO50', 'HILO CRUDO Nº 4 OVILLO DE 50 G', '50.00', 'gr', '', '', ''),
(178, 'textil', 6, NULL, 'HCO100', 'HILO CRUDO Nº 4 OVILLO DE 100 G', '100.00', 'gr', '', '', ''),
(179, 'textil', 6, NULL, 'HPO30', 'HILO PULIDO AMARILLO Nº 3 OVILLO 30 G', '30.00', 'gr', '', '', ''),
(180, 'textil', 6, NULL, 'HPO50', 'HILO PULIDO AMARILLO Nº 3 OVILLO 50 G', '50.00', 'gr', '', '', ''),
(181, 'textil', 6, NULL, 'HPO100', 'HILO PULIDO AMARILLO Nº 3 OVILLO 100 G', '100.00', 'gr', '', '', ''),
(182, 'textil', 6, NULL, 'HOX50GRIS', 'HILO COLOR GRIS TOPO OVILLO 50 G PAQ 10U', '10.00', 'unid', '', '', ''),
(183, 'textil', 6, NULL, 'HOBX50', 'HILO COLOR BLANCO OVILLO 50 G PAQ 10U', '10.00', 'unid', '', '', ''),
(184, 'textil', 6, NULL, 'HOX50CEL', 'HILO COLOR CELESTE OVILLO 50 G PAQ 10', '10.00', 'unid', '', '', ''),
(185, 'textil', 6, NULL, 'HOX50FRA', 'HILO COLOR FRANCIA OVILLO 50 G PAQ 10', '10.00', 'unid', '', '', ''),
(186, 'textil', 6, NULL, 'HOX50NAR', 'HILO COLOR NARANJA OVILLO 50 G PAQ 10', '10.00', 'unid', '', '', ''),
(187, 'textil', 6, NULL, 'HOX50NEG', 'HILO COLOR NEGRO OVILLO 50 G PAQ 10', '10.00', 'unid', '', '', ''),
(188, 'textil', 6, NULL, 'HORX50', 'HILO COLOR ROSA OVILLO 50 G PAQ 10', '10.00', 'unid', '', '', ''),
(189, 'textil', 6, NULL, 'HOVCX100', 'HILO COLOR VERDE CLARO OVILLO 50 G PAQ 10', '10.00', 'unid', '', '', ''),
(190, 'textil', 6, NULL, 'HOX50VERDE', 'HILO COLOR VERDE OVILLO 50 G PAQ 10', '10.00', 'unid', '', '', ''),
(191, 'textil', 6, NULL, 'HOX50AZU', 'HILO COLOR AZUL OVILLO 50 G PAQ 10', '10.00', 'unid', '', '', ''),
(192, 'textil', 6, NULL, 'HOROX100', 'HILO COLOR ROJO OVILLO 50 G PAQ 10', '10.00', 'unid', '', '', ''),
(193, 'textil', 6, NULL, 'HOX50BOX', 'HILO COLOR BORDO OVILLO 50 G PAQ 10', '10.00', 'unid', '', '', ''),
(194, 'textil', 6, NULL, 'HOX50MUL', 'HILO MULTICOLOR OVILLO 50 G PAQ 11', '11.00', 'unid', '', '', ''),
(195, 'textil', 6, NULL, 'HYOX100', 'HILO YUTE OVILLO 100 G PAQ 10U', '10.00', 'unid', '', '', ''),
(196, 'textil', 6, NULL, 'HSOX100', 'HILO SISAL OVILLO 80 G PAQ 10U', '10.00', 'unid', '', '', ''),
(197, 'textil', 6, NULL, 'HCP27X100', 'HILO PIOLIN Nº 27 X 100 G', '100.00', 'gr', '', '', ''),
(198, 'textil', 6, NULL, 'HCP24X50G', 'HILO CRUDO PIOLIN Nº 24 X 50 G', '50.00', 'gr', '', '', ''),
(199, 'textil', 7, NULL, '', '', '120.00', 'gr', '', '', ''),
(200, 'textil', 7, NULL, '', '', '1.00', 'kg', '', '', ''),
(201, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(202, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(203, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(204, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(205, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(206, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(207, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(208, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(209, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(210, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(211, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(212, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(213, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(214, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(215, 'textil', 7, NULL, '', '', '900.00', 'gr', '', '', ''),
(216, 'textil', 7, NULL, '', '', '800.00', 'gr', '', '', ''),
(217, 'textil', 7, NULL, '', '', '800.00', 'gr', '', '', ''),
(218, 'textil', 7, NULL, '', '', '800.00', 'gr', '', '', ''),
(219, 'textil', 7, NULL, '', '', '1.00', 'unid', '', '', ''),
(220, 'textil', 7, NULL, '', '', '1.00', 'unid', '', '', ''),
(221, 'textil', 7, NULL, '', '', '500.00', 'gr', '', '', ''),
(222, 'textil', 7, NULL, '', '', '500.00', 'gr', '', '', ''),
(223, 'textil', 7, NULL, '', '', '500.00', 'gr', '', '', ''),
(224, 'textil', 8, NULL, '', '', '180.00', 'gr', '', '', ''),
(225, 'textil', 8, NULL, '', '', '160.00', 'gr', '', '', ''),
(226, 'textil', 8, NULL, '', '', '2500.00', 'gr', '', '', ''),
(227, 'textil', 8, NULL, '', '', '180.00', 'gr', '', '', ''),
(228, 'textil', 8, NULL, '', '', '1.00', 'unid', '', '', ''),
(229, 'textil', 8, NULL, '', '', '1.00', 'unid', '', '', ''),
(230, 'textil', 8, NULL, '', '', '1.00', 'unid', '', '', ''),
(231, 'textil', 8, NULL, '', '', '900.00', 'gr', '', '', ''),
(232, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(233, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(234, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(235, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(236, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(237, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(238, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(239, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(240, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(241, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(242, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(243, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(244, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(245, 'textil', 9, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(246, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(247, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(248, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(249, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(250, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(251, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(252, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(253, 'textil', 9, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(254, 'textil', 9, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(255, 'textil', 9, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(256, 'textil', 9, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(257, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(258, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(259, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(260, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(261, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(262, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(263, 'textil', 9, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(264, 'textil', 9, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(265, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(266, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(267, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(268, 'textil', 9, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(269, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(270, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(271, 'textil', 9, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(272, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(273, 'textil', 9, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(274, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(275, 'textil', 9, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(276, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(277, 'textil', 9, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(278, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(279, 'textil', 9, NULL, '', '', '1.00', 'unid', '', '', ''),
(280, 'textil', 10, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(281, 'textil', 10, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(282, 'textil', 10, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(283, 'textil', 10, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(284, 'textil', 10, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(285, 'textil', 10, NULL, NULL, '', '1.00', 'unid', '', '', ''),
(286, 'textil', 10, NULL, NULL, '', '200.00', 'gr', '', '', ''),
(287, 'textil', 10, NULL, NULL, '', '100.00', 'gr', '', '', ''),
(288, 'textil', 10, NULL, NULL, '', '1.00', 'kg', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `subcategoria` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `categoria` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `updated_at` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `subcategoria`, `categoria`, `updated_at`, `created_at`) VALUES
(1, 'alimentaria', 'especias', '', ''),
(2, 'alimentaria', 'harinas', '', ''),
(3, 'alimentaria', 'integrales', '', ''),
(4, 'alimentaria', 'tripas', '', ''),
(5, 'alimentaria', 'insumos', '', ''),
(6, 'textil', 'hilo p/papelera', '', ''),
(7, 'textil', 'hilo p/frigorifico', '', ''),
(8, 'textil', 'hilo p/agroindustria', '', ''),
(9, 'textil', 'hilo p/tejeduria', '', ''),
(10, 'textil', 'hilo fason', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id` int(11) NOT NULL,
  `idIntegral` int(11) NOT NULL,
  `detalle` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` decimal(5,2) NOT NULL,
  `unidad` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `updated_at` int(11) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `idIntegral`, `detalle`, `cantidad`, `unidad`, `updated_at`, `created_at`) VALUES
(1, 1, 'integral mortadela', '2.00', 'kg', 0, 0),
(2, 1, 'gluten', '2.00', 'kg', 0, 0),
(3, 1, 'fecula de trigo o mandioca', '10.00', 'kg', 0, 0),
(4, 1, 'carne', '50.00', 'kg', 0, 0),
(5, 2, 'integral milanesa', '1.00', 'kg', 0, 0),
(6, 2, 'agua', '6.00', 'lt', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integraldetalles`
--

CREATE TABLE `integraldetalles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `imagenBolsa` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `updated_at` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `integraldetalles`
--

INSERT INTO `integraldetalles` (`id`, `nombre`, `descripcion`, `imagenBolsa`, `updated_at`, `created_at`) VALUES
(1, 'integral mortadela', 'aditivo integral para la fabricacion de mortadela, contiene sal aditivos y especias', '', '', ''),
(2, 'integral milanesa', 'aditivo integral para la fabricacion de milanesas', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetaitems`
--

CREATE TABLE `recetaitems` (
  `id` int(11) NOT NULL,
  `idIntegral` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `detalle` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `updated_at` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `recetaitems`
--

INSERT INTO `recetaitems` (`id`, `idIntegral`, `orden`, `detalle`, `updated_at`, `created_at`) VALUES
(1, 2, 1, 'Batir por unos seguntos y dejar hidratar 10 minutos', '', ''),
(2, 2, 2, 'Empanar los medallones de carne por redozador o pan rallado', '', ''),
(3, 2, 3, 'rebozador: cuanto mas se pone mas dura sale la milanesa pero con menor humedad', '', ''),
(4, 2, 4, 'pan rallado: cuanto mas se pone mas tierna sale la miklanesa pero con mayor humedad', '', ''),
(5, 2, 5, 'mezclar 50% de pan y 50% de rebozador, luego regular según como se desee que quede', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `integraldetalles`
--
ALTER TABLE `integraldetalles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recetaitems`
--
ALTER TABLE `recetaitems`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `integraldetalles`
--
ALTER TABLE `integraldetalles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `recetaitems`
--
ALTER TABLE `recetaitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 21 2023 г., 07:37
-- Версия сервера: 8.0.31
-- Версия PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `register-bd`
--
CREATE DATABASE IF NOT EXISTS `register-bd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `register-bd`;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `login` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pass` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `name`) VALUES
(24, 'qwety', '7acddb1b4cfd1dd0f79244a52079e877', 'cvrtdf'),
(2, 'login', '123', 'Fatih'),
(3, 'login', '123123', 'Fatih'),
(4, 'login', '123123', 'Fatih'),
(5, 'admin', '5db6bc41cbd7f986e27fdbccaf00db04', 'admin'),
(6, 'admin', 'abb89347f659556c752de1a92234d6ba', 'Fatih'),
(7, 'admin', 'abb89347f659556c752de1a92234d6ba', ''),
(8, 'admin', 'abb89347f659556c752de1a92234d6ba', ''),
(9, 'admin', 'abb89347f659556c752de1a92234d6ba', ''),
(10, 'admin', 'abb89347f659556c752de1a92234d6ba', ''),
(11, 'admin', 'abb89347f659556c752de1a92234d6ba', 'Fatih'),
(12, 'admin', 'abb89347f659556c752de1a92234d6ba', ''),
(13, 'admin', '312342a6594c35558b21afdc031e6c7c', 'Fatih'),
(14, 'admin', '312342a6594c35558b21afdc031e6c7c', ''),
(15, 'admin', '312342a6594c35558b21afdc031e6c7c', ''),
(16, 'admin', '312342a6594c35558b21afdc031e6c7c', ''),
(17, 'admin', '36cee46e7c2fc26817c487da6be7c5a4', ''),
(18, 'admin', '36cee46e7c2fc26817c487da6be7c5a4', ''),
(19, 'admin', '312342a6594c35558b21afdc031e6c7c', ''),
(20, 'admin', '312342a6594c35558b21afdc031e6c7c', ''),
(21, 'admin', 'fd1895bfbed27764fc47682cec10995a', ''),
(22, 'asd', '312342a6594c35558b21afdc031e6c7c', ''),
(23, 'asd', '312342a6594c35558b21afdc031e6c7c', '');

-- --------------------------------------------------------

--
-- Структура таблицы `valute`
--

DROP TABLE IF EXISTS `valute`;
CREATE TABLE IF NOT EXISTS `valute` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `val` int NOT NULL,
  `data update` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `valute`
--

INSERT INTO `valute` (`id`, `name`, `val`, `data update`) VALUES
(1, 'Австралийский доллар', 54, 1682033752),
(2, 'Азербайджанский манат', 48, 1682033752),
(3, 'Фунт стерлингов Соединенного королевства', 101, 1682033752),
(4, 'Армянских драмов', 21, 1682033752),
(5, 'Белорусский рубль', 27, 1682033752),
(6, 'Болгарский лев', 45, 1682033752),
(7, 'Бразильский реал', 16, 1682033752),
(8, 'Венгерских форинтов', 23, 1682033752),
(9, 'Вьетнамских донгов', 34, 1682033752),
(10, 'Гонконгский доллар', 10, 1682033752),
(11, 'Грузинский лари', 32, 1682033752),
(12, 'Датская крона', 12, 1682033752),
(13, 'Дирхам ОАЭ', 22, 1682033752),
(14, 'Доллар США', 81, 1682033752),
(15, 'Евро', 89, 1682033752),
(16, 'Египетских фунтов', 26, 1682033752),
(17, 'Индийских рупий', 99, 1682033752),
(18, 'Индонезийских рупий', 55, 1682033752),
(19, 'Казахстанских тенге', 18, 1682033752),
(20, 'Канадский доллар', 60, 1682033752),
(21, 'Катарский риал', 22, 1682033752),
(22, 'Киргизских сомов', 93, 1682033752),
(23, 'Китайский юань', 11, 1682033752),
(24, 'Молдавских леев', 45, 1682033752),
(25, 'Новозеландский доллар', 50, 1682033752),
(26, 'Норвежских крон', 77, 1682033752),
(27, 'Польский злотый', 19, 1682033752),
(28, 'Румынский лей', 18, 1682033752),
(29, 'СДР (специальные права заимствования)', 110, 1682033752),
(30, 'Сингапурский доллар', 61, 1682033752),
(31, 'Таджикских сомони', 74, 1682033752),
(32, 'Таиландских батов', 23, 1682033752),
(33, 'Турецких лир', 42, 1682033752),
(34, 'Новый туркменский манат', 23, 1682033752),
(35, 'Узбекских сумов', 71, 1682033752),
(36, 'Украинских гривен', 22, 1682033752),
(37, 'Чешских крон', 38, 1682033752),
(38, 'Шведских крон', 79, 1682033752),
(39, 'Швейцарский франк', 90, 1682033752),
(40, 'Сербских динаров', 76, 1682033752),
(41, 'Южноафриканских рэндов', 44, 1682033752),
(42, 'Вон Республики Корея', 61, 1682033752),
(43, 'Японских иен', 60, 1682033752);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

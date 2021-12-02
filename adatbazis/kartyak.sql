-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Dec 02. 17:59
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `uno`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kartyak`
--

CREATE TABLE `kartyak` (
  `id` int(11) NOT NULL,
  `kep` varchar(300) NOT NULL,
  `szin` varchar(300) NOT NULL,
  `szam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `kartyak`
--

INSERT INTO `kartyak` (`id`, `kep`, `szin`, `szam`) VALUES
(1, '/kartyak/Blue_0.png', 'kek', 0),
(2, '/kartyak/Blue_1.png', 'kek', 1),
(3, '/kartyak/Blue_2.png', 'kek', 2),
(4, '/kartyak/Blue_3.png', 'kek', 3),
(5, '/kartyak/Blue_4.png', 'kek', 4),
(6, '/kartyak/Blue_5.png', 'kek', 5),
(7, '/kartyak/Blue_6.png', 'kek', 6),
(8, '/kartyak/Blue_7.png', 'kek', 7),
(9, '/kartyak/Blue_8.png', 'kek', 8),
(10, '/kartyak/Blue_9.png', 'kek', 9),
(11, '/kartyak/Blue_Draw.png', 'kek+2', -1),
(12, '/kartyak/Blue_Reverse.png', 'kekfordito', -1),
(13, '/kartyak/Blue_Skip.png', 'kektilto', -1),
(14, '/kartyak/Green_0.png', 'zold', 0),
(15, '/kartyak/Green_1.png', 'zold', 1),
(16, '/kartyak/Green_2.png', 'zold', 2),
(17, '/kartyak/Green_3.png', 'zold', 3),
(18, '/kartyak/Green_4.png', 'zold', 4),
(19, '/kartyak/Green_5.png', 'zold', 5),
(20, '/kartyak/Green_6.png', 'zold', 6),
(21, '/kartyak/Green_7.png', 'zold', 7),
(22, '/kartyak/Green_8.png', 'zold', 8),
(23, '/kartyak/Green_9.png', 'zold', 9),
(24, '/kartyak/Green_Draw.png', 'zold+2', -1),
(25, '/kartyak/Green_Reverse.png', 'zoldfordito', -1),
(26, '/kartyak/Green_Skip.png', 'zoldtilto', -1),
(27, '/kartyak/Red_0.png', 'piros', 0),
(28, '/kartyak/Red_1.png', 'piros', 1),
(29, '/kartyak/Red_2.png', 'piros', 2),
(30, '/kartyak/Red_3.png', 'piros', 3),
(31, '/kartyak/Red_4.png', 'piros', 4),
(32, '/kartyak/Red_5.png', 'piros', 5),
(33, '/kartyak/Red_6.png', 'piros', 6),
(34, '/kartyak/Red_7.png', 'piros', 7),
(35, '/kartyak/Red_8.png', 'piros', 8),
(36, '/kartyak/Red_9.png', 'piros', 9),
(37, '/kartyak/Red_Draw.png', 'piros+2', -1),
(38, '/kartyak/Red_Reverse.png', 'pirosfordito', -1),
(39, '/kartyak/Red_Skip.png', 'pirostilto', -1),
(40, '/kartyak/Wild_Draw.png', '+4', -1),
(41, '/kartyak/Wild.png', 'szincsere', -1),
(42, '/kartyak/Yellow_0.png', 'sarga', 0),
(43, '/kartyak/Yellow_1.png', 'sarga', 1),
(44, '/kartyak/Yellow_2.png', 'sarga', 2),
(45, '/kartyak/Yellow_3.png', 'sarga', 3),
(46, '/kartyak/Yellow_4.png', 'sarga', 4),
(47, '/kartyak/Yellow_5.png', 'sarga', 5),
(48, '/kartyak/Yellow_6.png', 'sarga', 6),
(49, '/kartyak/Yellow_7.png', 'sarga', 7),
(50, '/kartyak/Yellow_8.png', 'sarga', 8),
(51, '/kartyak/Yellow_9.png', 'sarga', 9),
(52, '/kartyak/Yellow_Draw.png', 'sarga+2', -1),
(53, '/kartyak/Yellow_Reverse.png', 'sargafordito', -1),
(54, '/kartyak/Yellow_Skip.png', 'sargatilto', -1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kartyak`
--
ALTER TABLE `kartyak`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `kartyak`
--
ALTER TABLE `kartyak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

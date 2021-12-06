-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Dec 06. 18:35
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
-- Tábla szerkezet ehhez a táblához `jatek`
--

CREATE TABLE `jatek` (
  `jatekosid` int(11) NOT NULL,
  `kartyaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jatekosok`
--

CREATE TABLE `jatekosok` (
  `id` int(11) NOT NULL,
  `nev` varchar(300) COLLATE utf16_hungarian_ci NOT NULL,
  `kiesett` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kartyak`
--

CREATE TABLE `kartyak` (
  `id` int(11) NOT NULL,
  `kep` varchar(300) NOT NULL,
  `szin` varchar(300) NOT NULL,
  `szam` int(11) NOT NULL,
  `sorrend` int(100) NOT NULL,
  `allapot` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `kartyak`
--

INSERT INTO `kartyak` (`id`, `kep`, `szin`, `szam`, `sorrend`, `allapot`) VALUES
(1, '/kartyak/Blue_0.png', 'kek', 0, 0, 'pakli'),
(2, '/kartyak/Blue_1.png', 'kek', 1, 0, 'pakli'),
(3, '/kartyak/Blue_2.png', 'kek', 2, 0, 'pakli'),
(4, '/kartyak/Blue_3.png', 'kek', 3, 0, 'pakli'),
(5, '/kartyak/Blue_4.png', 'kek', 4, 0, 'pakli'),
(6, '/kartyak/Blue_5.png', 'kek', 5, 0, 'pakli'),
(7, '/kartyak/Blue_6.png', 'kek', 6, 0, 'pakli'),
(8, '/kartyak/Blue_7.png', 'kek', 7, 0, 'pakli'),
(9, '/kartyak/Blue_8.png', 'kek', 8, 0, 'pakli'),
(10, '/kartyak/Blue_9.png', 'kek', 9, 0, 'pakli'),
(11, '/kartyak/Blue_Draw.png', 'kek+2', -1, 0, 'pakli'),
(12, '/kartyak/Blue_Reverse.png', 'kekfordito', -1, 0, 'pakli'),
(13, '/kartyak/Blue_Skip.png', 'kektilto', -1, 0, 'pakli'),
(14, '/kartyak/Green_0.png', 'zold', 0, 0, 'pakli'),
(15, '/kartyak/Green_1.png', 'zold', 1, 0, 'pakli'),
(16, '/kartyak/Green_2.png', 'zold', 2, 0, 'pakli'),
(17, '/kartyak/Green_3.png', 'zold', 3, 0, 'pakli'),
(18, '/kartyak/Green_4.png', 'zold', 4, 0, 'pakli'),
(19, '/kartyak/Green_5.png', 'zold', 5, 0, 'pakli'),
(20, '/kartyak/Green_6.png', 'zold', 6, 0, 'pakli'),
(21, '/kartyak/Green_7.png', 'zold', 7, 0, 'pakli'),
(22, '/kartyak/Green_8.png', 'zold', 8, 0, 'pakli'),
(23, '/kartyak/Green_9.png', 'zold', 9, 0, 'pakli'),
(24, '/kartyak/Green_Draw.png', 'zold+2', -1, 0, 'pakli'),
(25, '/kartyak/Green_Reverse.png', 'zoldfordito', -1, 0, 'pakli'),
(26, '/kartyak/Green_Skip.png', 'zoldtilto', -1, 0, 'pakli'),
(27, '/kartyak/Red_0.png', 'piros', 0, 0, 'pakli'),
(28, '/kartyak/Red_1.png', 'piros', 1, 0, 'pakli'),
(29, '/kartyak/Red_2.png', 'piros', 2, 0, 'pakli'),
(30, '/kartyak/Red_3.png', 'piros', 3, 0, 'pakli'),
(31, '/kartyak/Red_4.png', 'piros', 4, 0, 'pakli'),
(32, '/kartyak/Red_5.png', 'piros', 5, 0, 'pakli'),
(33, '/kartyak/Red_6.png', 'piros', 6, 0, 'pakli'),
(34, '/kartyak/Red_7.png', 'piros', 7, 0, 'pakli'),
(35, '/kartyak/Red_8.png', 'piros', 8, 0, 'pakli'),
(36, '/kartyak/Red_9.png', 'piros', 9, 0, 'pakli'),
(37, '/kartyak/Red_Draw.png', 'piros+2', -1, 0, 'pakli'),
(38, '/kartyak/Red_Reverse.png', 'pirosfordito', -1, 0, 'pakli'),
(39, '/kartyak/Red_Skip.png', 'pirostilto', -1, 0, 'pakli'),
(40, '/kartyak/Wild_Draw.png', '+4', -1, 0, 'pakli'),
(41, '/kartyak/Wild.png', 'szincsere', -1, 0, 'pakli'),
(42, '/kartyak/Yellow_0.png', 'sarga', 0, 0, 'pakli'),
(43, '/kartyak/Yellow_1.png', 'sarga', 1, 0, 'pakli'),
(44, '/kartyak/Yellow_2.png', 'sarga', 2, 0, 'pakli'),
(45, '/kartyak/Yellow_3.png', 'sarga', 3, 0, 'pakli'),
(46, '/kartyak/Yellow_4.png', 'sarga', 4, 0, 'pakli'),
(47, '/kartyak/Yellow_5.png', 'sarga', 5, 0, 'pakli'),
(48, '/kartyak/Yellow_6.png', 'sarga', 6, 0, 'pakli'),
(49, '/kartyak/Yellow_7.png', 'sarga', 7, 0, 'pakli'),
(50, '/kartyak/Yellow_8.png', 'sarga', 8, 0, 'pakli'),
(51, '/kartyak/Yellow_9.png', 'sarga', 9, 0, 'pakli'),
(52, '/kartyak/Yellow_Draw.png', 'sarga+2', -1, 0, 'pakli'),
(53, '/kartyak/Yellow_Reverse.png', 'sargafordito', -1, 0, 'pakli'),
(54, '/kartyak/Yellow_Skip.png', 'sargatilto', -1, 0, 'pakli');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `jatekosok`
--
ALTER TABLE `jatekosok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `kartyak`
--
ALTER TABLE `kartyak`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `jatekosok`
--
ALTER TABLE `jatekosok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `kartyak`
--
ALTER TABLE `kartyak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 03. Feb 2017 um 09:09
-- Server-Version: 10.1.19-MariaDB
-- PHP-Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cube`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `file_id`, `amount`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(24, 24, 17, 100, 'Füllfederhalter aus Holz Aprikose', 'Edler handgedrechselter Füllfederhalter \r\naus Aprikosen-Holz. Länge 143 mm,\r\n Durchmesser 11,9 mm, Gewicht 35g. \r\nDie Kappe ist mit einem Klick-Mechanismus\r\n ausgestattet. Mit einem deutlichen wahrnehmbaren \r\nKlick rastet sie zuverlässig in die Kappendichtung ein. Schreibfeder "Made in Germany" aus poliertem\r\n Edelstahl mit Iridium-Spitze, Strichbreite M. \r\nDer Füller schreibt mit Tintenpatronen "Standard"\r\n (z. Bsp. Pelikan).\r\n Er kann mit einer großen, zwei Stück von den kleinen\r\n Patronen oder einem Tintenkonverter bestückt werden.\r\n Eine Patrone liegt bei (im Füller lose).', '5.00', '2017-01-29 19:59:04', '2017-01-29 20:01:17'),
(25, 24, 18, 100, 'Füllfederhalter aus Grenadill Holz handgedrechselt', '• Füllfederhalter Unikat handgedrechselt\r\n• Grenadill\r\n• Schreibfeder mit Iridium-Spitze für kratzfreien Schreibfluss\r\n• Alles 100% Handmade in Germany\r\n\r\nEdler handgedrechselter Füllfederhalter aus Grenadill. Die Maserung des dunkelen Holzes ist nur bei sehr genauer Betrachtung zu erkennen. Das macht es wiederum sehr interessant. Länge 143 mm, Durchmesser 11,9 mm, Gewicht 35g. Die Kappe ist mit einem Klick-Mechanismus ausgestattet. Mit einem deutlichen wahrnehmbaren Klick rastet sie zuverlässig in die Kappendichtung ein. Schreibfeder "Made in Germany" aus poliertem Edelstahl mit Iridium-Spitze, Strichbreite M. Der Füller schreibt mit Tintenpatronen "Standard" (z. Bsp. Pelikan). Er kann mit einer großen, zwei Stück von den kleinen Patronen oder einem Tintenkonverter bestückt werden. Eine Patrone liegt bei (im Füller lose).', '4.00', '2017-01-29 20:02:33', '2017-01-29 20:02:33'),
(26, 24, 19, 100, 'Füller Wacholder, Kriechwacholder, Holz handgedrechselt, Unikat', 'Handgedrechselter Füller Holz: Kriechwacholder mehrmals geölt Das Holz hat einen sehr angenehmen Duft nach Wacholder ! Metallteile: gunmetal Unikat. Zweifarbige Feder, Schriftstärke "M" im Geschenketui Sie erhalten genau den abgebildeten Schreiber! Auch mit anderen Holzsorten möglich, einfach anfragen ! Bitte auch meine anderen Artikel beachten, spart Versandkosten. ', '5.00', '2017-01-29 20:04:09', '2017-01-29 20:04:09'),
(27, 24, 20, 100, 'Handgedrechselter Kugelschreiber Typ "Stream-Kupfer" aus Zebrano', 'Handgedrechselter Drehkugelschreiber Typ "Streamline" aus Zebrano. Spitze, Mittelring und Clip sind in Kupferoptik gehalten. Der Kugelschreiber ist mit einer Crossmine in der Farbe schwarz ausgestattet. Zum Minenwechsel das hintere Holzteil abziehen, Mine ausdrehen, neue Mine eindrehen und Holzteil aufstecken. Behandelt wurde die Oberfläche mit Melamine Laquer. Durch seine Form und dem geringen Gewicht liegt er gut in der Hand. Die einmalige Maserung des Holzstückes macht den Kugelschreiber zu einem Unikat.', '6.00', '2017-01-29 20:05:17', '2017-01-29 20:05:17'),
(28, 24, 21, 100, 'OLIVEN HOLZ STIFT-FALL', 'Oliven holz Stift. Einfaches Modell Silber Drehmechanismus. Universalen-Teile Fall hat eine Buche Rahmen, die Seiten sind Bubinga und Marketerie Motiv trägt ein Volant mit verschiedenen Holzarten kombiniert.', '5.00', '2017-01-29 20:06:44', '2017-01-29 20:06:44'),
(29, 25, 23, 20, 'Grußkarte + Briefumschlag + Adressaufkleber zum Valentinstag Glückwunschkarte', 'Eine zeitlose, liebevoll handgemachte Grußkarte zum Valentinstag\r\n\r\nGedruckt ist die Karte auf 200 g/qm weißem, strukturiertem Aquarellpapier. Der Druck läßt die Papierstruktur leicht durchscheinen. Es ist kein Fehldruck!\r\n\r\n1 x Klappkarte (geschlossen ca. 14,8 x 10,5 cm)\r\n1 x Briefumschlag\r\n1 x Adressaufkleber\r\nFarbabweichungen zum Original sind aufgrund verschiedener Monitordarstellungen unvermeidlich. Alles weitere dient nur zur Illustration und ist nicht im Lieferumfang inbegriffen.\r\n\r\nExtra Wünsche? Bitte vor dem Kauf schreiben. Es geht fast alles!\r\n\r\nBeim gleichzeitigen Kauf mehrerer Produkte in meinem Shop fallen nur 1 x Portokosten an', '5.00', '2017-01-29 20:13:30', '2017-01-29 20:13:30'),
(30, 25, 24, 30, '"''Fuchs I love you" Grußkarte', '"Fuchs I love you" - Eine durch und durch fröhliche Karte, der kleine Fuchs bereitet jedem eine Freude. - ★ Die Karte liegt total im Trend; ein absolut persönlicher und gleichzeitig origineller Gruß.★ Format: Postkarte DIN A6 10,5 x 14,8 cm mit Briefmarkenfeld und Adressfeld ★ Material: Hochwertiges und stabiles Qualitätspapier (Papier-Qualität:300 g/m²), licht- und alterungsbeständig, matt ★ Stift und Umschlag sind nur Deko. Grußkarte wird OHNE Stift und Umschlag geliefert! ♥ Kleine Personalisierungen sind fast immer möglich, schreib mich einfach an.', '5.00', '2017-01-29 20:14:43', '2017-01-29 20:14:43'),
(31, 25, 25, 30, 'Love - 3d love - liebe - Grußkarte mit Umschlag (12 x 12 cm) - handgemachte Karte - freier Raum nach innen', 'Diese Karte ist perfekt für Ihre besonderen Momente . DETAILS: -Käufe Include = 1 Karte + 1 Umschlag -Karte größe =12x12 cm -Umschlag größe 12,5x12,5 cm Karte + Umschlag gewicht =22 g -Materialien = karte/ umschlag: 100% Recycling-Kraft – schriften/formen: papier schwer strukturiert -Karten-freier Raum nach innen für Ihre eigene persönliche Mitteilung -Einzeln verpackt in einer klaren Schutzhülle . Die Karte wurde mit hochwertigen Papieren und viel Liebe zum Detail gemacht . Bitte beachten Sie , dass die Farben unterschiedlich auf dem Bildschirm angezeigt werden können', '5.00', '2017-01-29 20:15:49', '2017-01-29 20:15:49'),
(32, 25, 26, 30, 'Have a fan(tachetic)birthday - Hipster - mustache - Grußkarte mit Umschlag (15 x 10,5 cm) - handgemachte Karte - freier Raum nach innen', 'Diese Karte ist perfekt für Ihre besonderen Momente . DETAILS: -Käufe Include = 1 Karte + 1 Umschlag -Karte größe =15x10,5 cm -Umschlag größe 15,5x11 cm Karte + Umschlag gewicht =22 g -Materialien = karte/ umschlag: 100% Recycling-Kraft – schriften/formen: papier schwer strukturiert -Karten-freier Raum nach innen für Ihre eigene persönliche Mitteilung -Einzeln verpackt in einer klaren Schutzhülle . Die Karte wurde mit hochwertigen Papieren und viel Liebe zum Detail gemacht . Bitte beachten Sie , dass die Farben unterschiedlich auf dem Bildschirm angezeigt werden können', '5.00', '2017-01-29 20:17:14', '2017-01-29 20:17:14'),
(33, 25, 27, 30, 'Glückwunschkarte + Briefumschlag + Adressaufkleber zur Geburt für Mädchen und Jungen', 'Eine zeitlose, liebevoll handgemachte Glückwunschkarte zur Geburt\r\n\r\nGedruckt ist die Karte auf 200 g/qm weißem, strukturiertem Aquarellpapier. Der Druck läßt die Papierstruktur leicht durchscheinen. Es ist kein Fehldruck!\r\n\r\n1 x Klappkarte (geschlossen ca. 14,8 x 10,5 cm)\r\n1 x Briefumschlag\r\n1 x Adressaufkleber\r\nFarbabweichungen zum Original sind aufgrund verschiedener Monitordarstellungen unvermeidlich. Alles weitere dient nur zur Illustration und ist nicht im Lieferumfang inbegriffen.\r\n\r\nExtra Wünsche? Bitte vor dem Kauf schreiben. Es geht fast alles!\r\n\r\nBeim gleichzeitigen Kauf mehrerer Produkte in meinem Shop fallen nur 1 x Portokosten an', '4.00', '2017-01-29 20:18:43', '2017-01-29 20:18:43'),
(35, 26, 30, 30, 'Farbenfroher Terminplaner zum Mitnehmen', 'Unternehmungen mit Freunden und Familie organisieren, neben dem Beruf noch Zeit für Hobbies finden und im Job immer up-to-date sein: Frauen haben (fast) immer viel zu tun. Mit diesem schön gestalteten Buchkalender für Ihre Handtasche sind Sie auch im neuen Jahr in jeder Situation gut organisiert. Zudem sorgen motivierende Sprüche und fröhliche Illustrationen für Inspiration und gute Laune beim Eintragen von Terminen und Gedanken. So gut organisiert bleibt Ihnen mehr Zeit für die wirklich wichtigen Dinge im Leben.', '5.00', '2017-01-29 20:24:13', '2017-01-29 20:24:13'),
(36, 26, 31, 30, 'Sigel C1756 Wochenkalender 2017, ca. A6, braun, Leder-Optik, CONCEPTUM', 'Stylischer Hardcover-Wochenkalender, Design Vintage, in weichem Used leather Look mit Gummiband und Stiftschlaufe in kontrastreichem Rot\r\nGröße ähnlich A6 (9,5 x 15,0 cm)\r\nBuchkalender mit vielen praktischen Funktionen: Archivtasche mit Kartenfach, Quickpocket, Stiftschlaufe, Gummiband, zwei Zeichenbänder\r\nTerminkalender / Terminplaner mit hochwertigem, chamoisfarbenem Papier\r\nEine Woche auf einer Doppelseite: perfekter Überblick pro Kalenderwoche\r\nDer Umwelt zuliebe aus PEFC zertifiziertem Papier\r\nInklusive umfangreichen Infoseiten, z. B. Ferien- und Feiertagsübersicht, Umrechnungstabellen, Zeitzonen, u.v.m.', '5.00', '2017-01-29 20:26:06', '2017-01-29 20:26:06'),
(38, 26, 39, 30, 'Terminplaner', 'Der Terminplaner „Home Planer“ ist ein Traum für alle Romantiker. Er enthält 12 wunderschöne Motive, kombiniert mit gefühlsbetonten Texten über Liebe, Herzensnähe und Freundschaft. Der Clou: Hinten befindet sich eine Falttasche mit 4 Postkarten. Hardcover-Umschlag und Verschlussgummi machen den Timer stabil und handtaschentauglich. Das i-Tüpfelchen ist das cremefarbene Lesezeichen-Bändchen aus Satin. Der Timer bietet pro Tag 8 Zeilen Platz für Notizen. Er beinhaltet außerdem eine Jahresübersicht, eine Auflistung der Feiertage und Schulferien sowie genügend Platz für persönliche Daten, Geburtstage und Adressen.', '4.00', '2017-01-29 20:41:13', '2017-01-29 20:41:50'),
(39, 26, 40, 30, 'Wandkalendar', 'Der FamilienPlaner XXL Wandkalender im extra großen Format für das komplette Jahr 2017 bringt Struktur in den vollgepackten Familienalltag. Für bis zu sieben Familienmitglieder ausgelegt, besticht der Kalender zum Aufhängen durch farblich getrennte Wochen, Feiertage- und Schulferienübersicht, Freizeit-/Planungstipps, Mondphasen, Sonnenauf- und -untergangszeiten sowie lockere Zitate.', '3.00', '2017-01-29 20:44:03', '2017-01-29 20:44:03'),
(40, 27, 42, 30, 'Collegeblöcke Student A4 Lineatur 28 kariert , 80 Blatt weiß', 'Student Collegeblock kariert\r\npetits carreaux 5x5 avec marge, blanchi sans chlore\r\nsquared with margin, chlorine free', '2.00', '2017-01-29 20:49:50', '2017-01-29 20:49:50'),
(41, 27, 43, 30, 'Hefte A4 Premium liniert 2. Schuljahr 16 Blatt', '3er Pack ( 3x16 Blatt\r\nLineatur 2\r\nSchreibheft, Schulheft', '1.00', '2017-01-29 20:50:57', '2017-01-29 20:50:57'),
(42, 27, 44, 30, 'RNK AusbildungsnachweisHeft täglich alle Ausbildungsberufe der', 'Ausbildungsnachweis', '1.00', '2017-01-29 20:52:45', '2017-01-29 20:52:45'),
(43, 27, 45, 30, 'Hausaufgabenheft, Motiv küssende Katzen', 'Das Heft für die Hausaufgaben', '1.00', '2017-01-29 20:54:03', '2017-01-29 20:54:03');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `categories`
--

INSERT INTO `categories` (`id`, `file_id`, `name`, `created_at`, `updated_at`) VALUES
(24, 15, 'Stifte & Füllhalter', '2017-01-29 19:57:04', '2017-01-29 19:57:04'),
(25, 22, 'Karten & Grußkarten', '2017-01-29 20:11:55', '2017-01-29 20:11:55'),
(26, 47, 'Terminplaner', '2017-01-29 20:20:34', '2017-01-29 20:57:06'),
(27, 41, 'Papier & Schulblöcke', '2017-01-29 20:47:58', '2017-01-29 20:47:58');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sur_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street_number` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `files`
--

INSERT INTO `files` (`id`, `path`, `name`, `created_at`, `updated_at`) VALUES
(2, '', 'sonnenblumenkerne.jpg', '2016-12-02 13:49:55', '2016-12-02 13:49:55'),
(6, 'categories', 'php30D3.tmp', '2017-01-27 08:03:29', '2017-01-27 08:03:29'),
(7, 'categories', 'phpB770.tmp', '2017-01-27 08:10:38', '2017-01-27 08:10:38'),
(9, 'articles', 'phpDA0F.tmp', '2017-01-27 08:15:08', '2017-01-27 08:15:08'),
(10, 'articles', 'php5B8F.tmp', '2017-01-27 08:18:58', '2017-01-27 08:18:58'),
(11, 'articles', 'php6EE1.tmp', '2017-01-27 08:20:08', '2017-01-27 08:20:08'),
(13, 'categories', 'php74AD.tmp', '2017-01-27 08:23:26', '2017-01-27 08:23:26'),
(14, 'categories', 'php34F0.tmp', '2017-01-27 08:27:32', '2017-01-27 08:27:32'),
(15, 'categories', 'php44A5.tmp', '2017-01-29 19:57:04', '2017-01-29 19:57:04'),
(17, 'articles', 'php2256.tmp', '2017-01-29 20:01:17', '2017-01-29 20:01:17'),
(18, 'articles', 'php4A2E.tmp', '2017-01-29 20:02:33', '2017-01-29 20:02:33'),
(19, 'articles', 'phpC48A.tmp', '2017-01-29 20:04:09', '2017-01-29 20:04:09'),
(20, 'articles', 'phpCA43.tmp', '2017-01-29 20:05:16', '2017-01-29 20:05:16'),
(21, 'articles', 'php20EB.tmp', '2017-01-29 20:06:44', '2017-01-29 20:06:44'),
(22, 'categories', 'phpDE1E.tmp', '2017-01-29 20:11:55', '2017-01-29 20:11:55'),
(23, 'articles', 'php505C.tmp', '2017-01-29 20:13:30', '2017-01-29 20:13:30'),
(24, 'articles', 'php6F3B.tmp', '2017-01-29 20:14:43', '2017-01-29 20:14:43'),
(25, 'articles', 'php713B.tmp', '2017-01-29 20:15:49', '2017-01-29 20:15:49'),
(26, 'articles', 'phpBDB1.tmp', '2017-01-29 20:17:14', '2017-01-29 20:17:14'),
(27, 'articles', 'php18CD.tmp', '2017-01-29 20:18:43', '2017-01-29 20:18:43'),
(29, 'articles', 'php69BF.tmp', '2017-01-29 20:22:20', '2017-01-29 20:22:20'),
(30, 'articles', 'php20A8.tmp', '2017-01-29 20:24:13', '2017-01-29 20:24:13'),
(31, 'articles', 'phpDBE6.tmp', '2017-01-29 20:26:06', '2017-01-29 20:26:06'),
(32, 'articles', 'php4DC6.tmp', '2017-01-29 20:27:41', '2017-01-29 20:27:41'),
(34, 'articles', 'php6F4C.tmp', '2017-01-29 20:31:06', '2017-01-29 20:31:06'),
(39, 'articles', 'php43BC.tmp', '2017-01-29 20:41:50', '2017-01-29 20:41:50'),
(40, 'articles', 'php4A99.tmp', '2017-01-29 20:44:03', '2017-01-29 20:44:03'),
(41, 'categories', 'phpDE50.tmp', '2017-01-29 20:47:57', '2017-01-29 20:47:57'),
(42, 'articles', 'php95C5.tmp', '2017-01-29 20:49:50', '2017-01-29 20:49:50'),
(43, 'articles', 'php9A26.tmp', '2017-01-29 20:50:57', '2017-01-29 20:50:57'),
(44, 'articles', 'php4101.tmp', '2017-01-29 20:52:45', '2017-01-29 20:52:45'),
(45, 'articles', 'php730A.tmp', '2017-01-29 20:54:03', '2017-01-29 20:54:03'),
(46, 'articles', 'phpB53F.tmp', '2017-01-29 20:55:26', '2017-01-29 20:55:26'),
(47, 'categories', 'php3A79.tmp', '2017-01-29 20:57:05', '2017-01-29 20:57:05');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_11_15_183219_create_files_table', 1),
(4, '2016_11_15_183220_create_categories_table', 1),
(5, '2016_11_15_183223_create_articles_table', 1),
(6, '2016_11_15_183310_create_customers_table', 1),
(7, '2016_11_15_183343_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `order_positions`
--

CREATE TABLE `order_positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `amount` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `activated`, `remember_token`, `created_at`, `updated_at`) VALUES
(25, 'Tülin Akin', 's0544010@htw-berlin.de', '$2y$10$fETMA6JaFZ.i6FtzwMcfVeQUEOMFYAppxukmUR7tqbMheNyBsXLn6', 1, 'w329dkPgWMjrDVafBkaEHbLhbFbKCCl77joKk876nvj4W0qc5CDpG06IyxLd', '2017-01-17 12:29:49', '2017-01-17 12:31:24'),
(27, 'testerin', 's0530129@htw-berlin.de', '$2y$10$JGv/LkRexc0aFRbnO6cVC.5sCsJBDQFVpa0FyGciC/Z3DhLPc74MG', 0, NULL, '2017-01-17 12:45:44', '2017-01-17 12:45:44'),
(28, 'reee', 's05440100@htw-berlin.de', '$2y$10$rNjKuoZYd6/8rTSUU1fdjuNZsR/ZRmCAMYEipxJqCMIcScfRolnaC', 0, 'VYd6DXL0rb91RLW9x7TJInwAOjX8Y6Nc0xm70vaWe83gJjupSZluyO84qKEz', '2017-01-17 12:49:14', '2017-01-17 12:49:44'),
(29, 'Tülin Akin', 't.akin93@hotmail.de', '$2y$10$ofoVFU7POciR43Eo38fQ9eExaS6qhRaaw6ai5i9Cv/Xcl7kUtVP3O', 1, '2gKdUkSrS2mnGReVW3lXr2OuXRU1NEgAxSGFICQ8uz77tYPsY7xGpWIoK0Ax', '2017-01-21 15:43:58', '2017-01-21 15:44:43'),
(32, 'Bermet', 'ba.bermet@gmail.com', '$2y$10$cC.4sZ2q..lYica.G.Wwt.PB1iMFSmBnLTTcrDxQekJSbrrWw7Eqe', 0, 'lUMM2HpBN0sNFwlnoMPDBG4qWwXtR8HqQ46JzxcIc8NVH6NJ7Lw4fMBJPB5T', '2017-01-21 13:00:56', '2017-01-21 13:02:07'),
(34, 'Udo', 's0543847@htw-berlin.de', '$2y$10$RoqR/zA.55LSN22uLcOeEeR83eNM4Nad/brRbDcL2PhPItOI/2BIq', 1, 'd35URGXdGIwkcm4JQfXFHdirXcUg1PL0LQ9Prog0q3543GBlEVY3sGE2gRQ7', '2017-01-27 06:13:08', '2017-01-29 21:01:15'),
(35, 'Lola', 's0544306@htw-berlin.de', '$2y$10$2Hdgr4V1Xqg6P2.zsKpTNeeCMQoi2RV.0hQQacuHZQzjC82EcGCM2', 0, NULL, '2017-01-29 19:36:11', '2017-01-29 19:36:11');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_activations`
--

CREATE TABLE `user_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `user_activations`
--

INSERT INTO `user_activations` (`id`, `user_id`, `token`, `created_at`) VALUES
(2, 23, 'd22f611def28348883726e8720641796f40713440a741aeb8f02db3f989ed283', '2017-01-15 12:16:24'),
(5, 27, 'af443a5072c9b37244868db1c1bc8099294186a9ed03676c0625689b96e561e8', '2017-01-17 12:45:44'),
(6, 28, 'b63a96bff52e278dd73a38d203b8ba361038a76659d828589c0366bdc069367c', '2017-01-17 12:49:14'),
(8, 30, '7e5cb48583ff94b375a52604f65081782445ea811ed768cd7ceab8f94d03c527', '2017-01-21 12:55:07'),
(9, 31, '454fecc0d3df32122d288ebb671089aabe5d0b551d367d503749adae48fe7b08', '2017-01-21 12:56:57'),
(10, 32, '89450ea712f92edf486f45de7d7a6f0031a62c07988a8db40347e5bc7f225c10', '2017-01-21 13:00:56'),
(11, 33, 'f378ba004e2ee6dd6e13cd83d04518b008502cc25ee62fcb6245a8c2d31f3e73', '2017-01-23 17:32:34'),
(12, 35, '401ccef5717a27284760d02c4410514c11b56b3b7467247675abe3d3aed79063', '2017-01-29 19:36:11');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`),
  ADD KEY `articles_file_id_foreign` (`file_id`);

--
-- Indizes für die Tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_file_id_foreign` (`file_id`);

--
-- Indizes für die Tabelle `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indizes für die Tabelle `order_positions`
--
ALTER TABLE `order_positions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_positions_article_id_foreign` (`article_id`),
  ADD KEY `order_positions_order_id_foreign` (`order_id`);

--
-- Indizes für die Tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indizes für die Tabelle `user_activations`
--
ALTER TABLE `user_activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_activations_token_index` (`token`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT für Tabelle `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT für Tabelle `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT für Tabelle `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `order_positions`
--
ALTER TABLE `order_positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT für Tabelle `user_activations`
--
ALTER TABLE `user_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `order_positions`
--
ALTER TABLE `order_positions`
  ADD CONSTRAINT `order_positions_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_positions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

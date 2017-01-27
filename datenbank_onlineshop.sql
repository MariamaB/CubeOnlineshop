-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 27. Jan 2017 um 11:30
-- Server-Version: 10.1.19-MariaDB
-- PHP-Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cubedaten`
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
(22, 21, 10, 212, 'Kalender Mensa', 'isst in der Mensa hit', '4.00', '2017-01-27 08:18:58', '2017-01-27 08:18:58'),
(23, 21, 11, 121, 'Kalender Gute Laune', 'infiziert mit guter Laune', '3.00', '2017-01-27 08:20:08', '2017-01-27 08:20:08');

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
(12, 6, 'Edding', '2016-12-02 13:49:55', '2017-01-27 08:03:29'),
(21, 7, 'Kalender', '2017-01-27 08:10:38', '2017-01-27 08:10:38'),
(22, 13, 'Kugelschreiber Set', '2017-01-27 08:22:53', '2017-01-27 08:23:26'),
(23, 14, 'Washi Tape', '2017-01-27 08:27:32', '2017-01-27 08:27:32');

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
(14, 'categories', 'php34F0.tmp', '2017-01-27 08:27:32', '2017-01-27 08:27:32');

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
(34, 'Udo', 's0543847@htw-berlin.de', '$2y$10$RoqR/zA.55LSN22uLcOeEeR83eNM4Nad/brRbDcL2PhPItOI/2BIq', 1, 'MJ15iDvmCiZCPN4oTkORDOhCq8mvqXLHTuoFl16SR3XpqtPtcHbPNPulNLcq', '2017-01-27 06:13:08', '2017-01-27 08:17:31');

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
(11, 33, 'f378ba004e2ee6dd6e13cd83d04518b008502cc25ee62fcb6245a8c2d31f3e73', '2017-01-23 17:32:34');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT für Tabelle `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT für Tabelle `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT für Tabelle `user_activations`
--
ALTER TABLE `user_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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

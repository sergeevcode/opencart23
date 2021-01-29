-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.3.22-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.0.0.5958
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица oc23.oc_addictive_service
CREATE TABLE IF NOT EXISTS `oc_addictive_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `service_name` varchar(254) NOT NULL,
  `service_price` decimal(10,2) NOT NULL,
  `service_new_price` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `_order` int(11) DEFAULT NULL,
  `show_description` int(11) DEFAULT NULL,
  `show_tooltip` int(11) DEFAULT NULL,
  `tooltip` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_addictive_service: 0 rows
/*!40000 ALTER TABLE `oc_addictive_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_addictive_service` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_address
CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_address: 0 rows
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_affiliate
CREATE TABLE IF NOT EXISTS `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_affiliate: 0 rows
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_affiliate_activity
CREATE TABLE IF NOT EXISTS `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_affiliate_activity: 0 rows
/*!40000 ALTER TABLE `oc_affiliate_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_activity` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_affiliate_login
CREATE TABLE IF NOT EXISTS `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_affiliate_login: 0 rows
/*!40000 ALTER TABLE `oc_affiliate_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_login` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_affiliate_transaction
CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_affiliate_transaction: 0 rows
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_api
CREATE TABLE IF NOT EXISTS `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_api: 1 rows
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
REPLACE INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
	(1, 'Default', 'YfwA2M1dpVMDkqKdF2TgBNstfiUzWuJotrpfvfNmAFOPck5huBjYRsEp5m5dZhfnE3t8nbqIwEUe1Ke6Z32ah9oXJXbdHT6eNBkIjXDev33V8PWymr1ON1k6FsThpqbdAsTuNezhrMNX8jfueUjueYGzDOa0CkVRHBqQHyBKZWZTKfYOfrS9pyTJnffgGdek3IY65R30lCt11RKlQIrieq1ZILy25I7zsWySTSWqvlKoUwlPgozOkg13air1y90y', 1, '2021-01-27 11:01:46', '2021-01-27 11:01:46');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_api_ip
CREATE TABLE IF NOT EXISTS `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_api_ip: 0 rows
/*!40000 ALTER TABLE `oc_api_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_api_ip` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_api_session
CREATE TABLE IF NOT EXISTS `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_api_session: 0 rows
/*!40000 ALTER TABLE `oc_api_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_api_session` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_attribute
CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_attribute: 2 rows
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
REPLACE INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
	(13, 7, 0),
	(12, 7, 0);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_attribute_description
CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_attribute_description: 2 rows
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
REPLACE INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
	(13, 1, 'Кремовый'),
	(12, 1, 'Красный');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_attribute_group
CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_attribute_group: 1 rows
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
REPLACE INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
	(7, 0);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_attribute_group_description
CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_attribute_group_description: 1 rows
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
REPLACE INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
	(7, 1, 'Цвета');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_banner
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_banner: 1 rows
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
REPLACE INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
	(9, 'Главный баннер', 1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_banner_image
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_banner_image: 1 rows
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
REPLACE INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
	(99, 9, 1, 'Нежность в каждом лепестке', '/bukety', 'catalog/slider/slide-1.jpg', 0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_cart
CREATE TABLE IF NOT EXISTS `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_cart: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `oc_cart` DISABLE KEYS */;
REPLACE INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
	(16, 0, 0, 'qk8ec21rpeutivoh5oir3faos4', 50, 0, '{"227":"17"}', 3, '2021-01-29 13:10:45');
/*!40000 ALTER TABLE `oc_cart` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_category
CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_category: 13 rows
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
REPLACE INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
	(59, '', 0, 1, 2, 0, 1, '2021-01-27 15:58:57', '2021-01-27 16:05:07'),
	(60, '', 59, 1, 1, 0, 1, '2021-01-27 16:00:08', '2021-01-27 16:00:08'),
	(61, '', 59, 0, 1, 0, 1, '2021-01-27 16:00:28', '2021-01-27 16:00:28'),
	(62, '', 59, 1, 1, 0, 1, '2021-01-27 16:00:53', '2021-01-27 16:00:53'),
	(63, '', 59, 0, 1, 0, 1, '2021-01-27 16:01:17', '2021-01-27 16:01:17'),
	(64, '', 0, 1, 1, 0, 1, '2021-01-27 16:01:38', '2021-01-27 16:01:38'),
	(65, '', 0, 1, 1, 0, 1, '2021-01-27 16:02:00', '2021-01-27 16:02:00'),
	(66, '', 0, 1, 1, 0, 1, '2021-01-27 16:02:22', '2021-01-27 16:02:22'),
	(67, '', 66, 0, 1, 0, 1, '2021-01-27 16:02:52', '2021-01-27 16:02:52'),
	(68, '', 66, 0, 1, 0, 1, '2021-01-27 16:03:16', '2021-01-27 16:03:16'),
	(69, '', 66, 0, 1, 0, 1, '2021-01-27 16:03:38', '2021-01-27 16:03:38'),
	(70, '', 0, 1, 1, 0, 1, '2021-01-27 16:03:59', '2021-01-27 16:03:59'),
	(71, '', 0, 1, 1, 0, 1, '2021-01-27 16:04:20', '2021-01-27 16:04:20');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_category_description
CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_category_description: 13 rows
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
REPLACE INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
	(65, 1, 'Композиции и корзины', '', 'Композиции и корзины', '', ''),
	(59, 1, 'Букеты', '', 'Букеты', '', ''),
	(60, 1, 'С герберами', '', 'С герберами', '', ''),
	(61, 1, 'С розами', '', 'С розами', '', ''),
	(62, 1, 'С тюльпанами', '', 'С тюльпанами', '', ''),
	(63, 1, 'Большие букеты', '', 'Большие букеты', '', ''),
	(64, 1, 'Монобукеты', '', 'Монобукеты', '', ''),
	(67, 1, 'Новый год', '', 'Новый год', '', ''),
	(68, 1, 'День мамы', '', 'День мамы', '', ''),
	(69, 1, '8 марта', '', '8 марта', '', ''),
	(70, 1, 'Комнатные цветы', '', 'Комнатные цветы', '', ''),
	(71, 1, 'Подарки', '', 'Подарки', '', ''),
	(66, 1, 'Цветы по поводу', '', 'Цветы по поводу', '', '');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_category_filter
CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_category_filter: 0 rows
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_category_path
CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_category_path: 20 rows
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
REPLACE INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
	(71, 71, 0),
	(70, 70, 0),
	(69, 69, 1),
	(69, 66, 0),
	(68, 68, 1),
	(68, 66, 0),
	(67, 67, 1),
	(67, 66, 0),
	(66, 66, 0),
	(65, 65, 0),
	(64, 64, 0),
	(63, 63, 1),
	(59, 59, 0),
	(63, 59, 0),
	(62, 62, 1),
	(62, 59, 0),
	(61, 61, 1),
	(61, 59, 0),
	(60, 59, 0),
	(60, 60, 1);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_category_to_layout
CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_category_to_layout: 13 rows
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
REPLACE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
	(59, 0, 0),
	(60, 0, 0),
	(61, 0, 0),
	(62, 0, 0),
	(63, 0, 0),
	(64, 0, 0),
	(65, 0, 0),
	(66, 0, 0),
	(67, 0, 0),
	(68, 0, 0),
	(69, 0, 0),
	(70, 0, 0),
	(71, 0, 0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_category_to_store
CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_category_to_store: 13 rows
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
REPLACE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
	(59, 0),
	(60, 0),
	(61, 0),
	(62, 0),
	(63, 0),
	(64, 0),
	(65, 0),
	(66, 0),
	(67, 0),
	(68, 0),
	(69, 0),
	(70, 0),
	(71, 0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_country
CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_country: 7 rows
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
REPLACE INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
	(20, 'Белоруссия (Беларусь)', 'BY', 'BLR', '', 0, 1),
	(80, 'Грузия', 'GE', 'GEO', '', 0, 1),
	(109, 'Казахстан', 'KZ', 'KAZ', '', 0, 1),
	(115, 'Киргизия (Кыргызстан)', 'KG', 'KGZ', '', 0, 1),
	(176, 'Российская Федерация', 'RU', 'RUS', '', 0, 1),
	(220, 'Украина', 'UA', 'UKR', '', 0, 1),
	(226, 'Узбекистан', 'UZ', 'UZB', '', 0, 1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_coupon
CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_coupon: 3 rows
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
REPLACE INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
	(4, '-10% Discount', '2222', 'P', 10.0000, 0, 0, 0.0000, '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
	(5, 'Free Shipping', '3333', 'P', 0.0000, 0, 1, 100.0000, '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
	(6, '-10.00 Discount', '1111', 'F', 10.0000, 0, 0, 10.0000, '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_coupon_category
CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_coupon_category: 0 rows
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_coupon_history
CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_coupon_history: 0 rows
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_coupon_product
CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_coupon_product: 0 rows
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_currency
CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_currency: 1 rows
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
REPLACE INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
	(1, 'Рубль', 'RUB', '', ' руб.', '0', 1.00000000, 1, '2021-01-29 11:29:52');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_customer
CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_customer: 0 rows
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_customer_activity
CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_customer_activity: 0 rows
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_customer_group
CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_customer_group: 1 rows
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
REPLACE INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
	(1, 0, 1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_customer_group_description
CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_customer_group_description: 1 rows
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
REPLACE INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
	(1, 1, 'Default', 'test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_customer_history
CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_customer_history: 0 rows
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_customer_ip
CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_customer_ip: 0 rows
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_customer_login
CREATE TABLE IF NOT EXISTS `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_customer_login: 0 rows
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_customer_online
CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_customer_online: 0 rows
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_customer_reward
CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_customer_reward: 0 rows
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_customer_search
CREATE TABLE IF NOT EXISTS `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_customer_search: 0 rows
/*!40000 ALTER TABLE `oc_customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_search` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_customer_transaction
CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_customer_transaction: 0 rows
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_customer_wishlist
CREATE TABLE IF NOT EXISTS `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_customer_wishlist: 0 rows
/*!40000 ALTER TABLE `oc_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_wishlist` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_custom_field
CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_custom_field: 0 rows
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_custom_field_customer_group
CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_custom_field_customer_group: 0 rows
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_custom_field_description
CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_custom_field_description: 0 rows
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_custom_field_value
CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_custom_field_value: 0 rows
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_custom_field_value_description
CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_custom_field_value_description: 0 rows
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_download
CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_download: 0 rows
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_download_description
CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_download_description: 0 rows
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_event
CREATE TABLE IF NOT EXISTS `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_event: 1 rows
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
REPLACE INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `date_added`) VALUES
	(1, 'voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 0, '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_extension
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_extension: 30 rows
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
REPLACE INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
	(1, 'payment', 'cod'),
	(2, 'total', 'shipping'),
	(3, 'total', 'sub_total'),
	(4, 'total', 'tax'),
	(5, 'total', 'total'),
	(6, 'module', 'banner'),
	(7, 'module', 'carousel'),
	(8, 'total', 'credit'),
	(9, 'shipping', 'flat'),
	(10, 'total', 'handling'),
	(11, 'total', 'low_order_fee'),
	(12, 'total', 'coupon'),
	(13, 'module', 'category'),
	(14, 'module', 'account'),
	(15, 'total', 'reward'),
	(16, 'total', 'voucher'),
	(17, 'payment', 'free_checkout'),
	(18, 'module', 'featured'),
	(19, 'module', 'slideshow'),
	(20, 'theme', 'theme_default'),
	(21, 'dashboard', 'activity'),
	(22, 'dashboard', 'sale'),
	(23, 'dashboard', 'recent'),
	(24, 'dashboard', 'order'),
	(25, 'dashboard', 'online'),
	(26, 'dashboard', 'map'),
	(27, 'dashboard', 'customer'),
	(28, 'dashboard', 'chart'),
	(29, 'module', 'addictive'),
	(30, 'module', 'buyoneclick');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_filter
CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_filter: 0 rows
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_filter_description
CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_filter_description: 0 rows
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_filter_group
CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_filter_group: 0 rows
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_filter_group_description
CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_filter_group_description: 0 rows
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_geo_zone
CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_geo_zone: 1 rows
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
REPLACE INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
	(3, 'Зона НДС', 'Облагаемые НДС', '2014-09-09 11:48:13', '2014-05-21 22:30:20');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_information
CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_information: 4 rows
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
REPLACE INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
	(3, 1, 2, 1),
	(4, 1, 3, 1),
	(5, 1, 4, 0),
	(6, 1, 1, 1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_information_description
CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_information_description: 4 rows
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
REPLACE INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
	(5, 1, 'Условия соглашения', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;', 'Условия соглашения', '', ''),
	(3, 1, 'Отзывы', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;', 'Отзывы', '', ''),
	(6, 1, 'Доставка  и оплата', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;', 'Доставка', '', ''),
	(4, 1, 'О компании', '&lt;p&gt;\r\n	About Us&lt;/p&gt;', 'О нас', '', '');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_information_to_layout
CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_information_to_layout: 4 rows
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
REPLACE INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
	(6, 0, 0),
	(4, 0, 0),
	(5, 0, 0),
	(3, 0, 0);
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_information_to_store
CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_information_to_store: 4 rows
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
REPLACE INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
	(3, 0),
	(4, 0),
	(5, 0),
	(6, 0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_language
CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_language: 1 rows
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
REPLACE INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
	(1, 'Russian', 'ru-ru', 'ru_RU.UTF-8,ru_RU,russian', 'ru-ru.png', 'russian', 1, 1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_layout
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_layout: 13 rows
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
REPLACE INTO `oc_layout` (`layout_id`, `name`) VALUES
	(1, 'Home'),
	(2, 'Product'),
	(3, 'Category'),
	(4, 'Default'),
	(5, 'Manufacturer'),
	(6, 'Account'),
	(7, 'Checkout'),
	(8, 'Contact'),
	(9, 'Sitemap'),
	(10, 'Affiliate'),
	(11, 'Information'),
	(12, 'Compare'),
	(13, 'Search');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_layout_module
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_layout_module: 8 rows
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
REPLACE INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
	(2, 4, '0', 'content_top', 0),
	(3, 4, '0', 'content_top', 1),
	(20, 5, '0', 'column_left', 2),
	(69, 10, 'affiliate', 'column_right', 1),
	(68, 6, 'account', 'column_right', 1),
	(77, 1, 'carousel.32', 'content_top', 0),
	(72, 3, 'category', 'column_left', 1),
	(73, 3, 'banner.30', 'column_left', 2);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_layout_route
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_layout_route: 13 rows
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
REPLACE INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
	(38, 6, 0, 'account/%'),
	(17, 10, 0, 'affiliate/%'),
	(44, 3, 0, 'product/category'),
	(56, 1, 0, 'common/home'),
	(20, 2, 0, 'product/product'),
	(24, 11, 0, 'information/information'),
	(23, 7, 0, 'checkout/%'),
	(31, 8, 0, 'information/contact'),
	(32, 9, 0, 'information/sitemap'),
	(34, 4, 0, ''),
	(45, 5, 0, 'product/manufacturer'),
	(52, 12, 0, 'product/compare'),
	(53, 13, 0, 'product/search');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_length_class
CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_length_class: 3 rows
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
REPLACE INTO `oc_length_class` (`length_class_id`, `value`) VALUES
	(1, 1.00000000),
	(2, 10.00000000),
	(3, 0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_length_class_description
CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_length_class_description: 2 rows
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
REPLACE INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
	(1, 1, 'Сантиметр', 'см'),
	(2, 1, 'Миллиметр', 'мм');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_location
CREATE TABLE IF NOT EXISTS `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_location: 2 rows
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
REPLACE INTO `oc_location` (`location_id`, `name`, `address`, `telephone`, `fax`, `geocode`, `image`, `open`, `comment`) VALUES
	(1, '#Правдацветы', 'г. Оренбург, ул. Правды, 25', '+73532902202', '', '', '', '&lt;div class=&quot;contacts-address__time&quot;&gt;&lt;span class=&quot;work-day&quot;&gt;Пн - Сб&lt;/span&gt;&lt;span class=&quot;work-time&quot;&gt;07:00 - 20:00&lt;/span&gt; &lt;/div&gt;&lt;div class=&quot;contacts-address__time&quot;&gt;&lt;span class=&quot;work-day&quot;&gt;Вс&lt;/span&gt;&lt;span class=&quot;work-time&quot;&gt;10:00 - 18:00&lt;/span&gt;&lt;/div&gt;', ''),
	(2, '#Правдацветы', 'г. Оренбург, п. Ростоши, ул. Газпромовская, 63', '+73532919119', '', '', '', '&lt;div class=&quot;contacts-address__time&quot;&gt;&lt;span class=&quot;work-day&quot;&gt;Пн - Сб&lt;/span&gt;&lt;span class=&quot;work-time&quot;&gt;08:00 - 20:00&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;contacts-address__time&quot;&gt;&lt;span class=&quot;work-day&quot;&gt;Вс&lt;/span&gt;&lt;span class=&quot;work-time&quot;&gt;10:00 - 20:00&lt;/span&gt;&lt;/div&gt;', '');
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_manufacturer
CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_manufacturer: 6 rows
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
REPLACE INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
	(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
	(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
	(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
	(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
	(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
	(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_manufacturer_to_store
CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_manufacturer_to_store: 6 rows
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
REPLACE INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
	(5, 0),
	(6, 0),
	(7, 0),
	(8, 0),
	(9, 0),
	(10, 0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_marketing
CREATE TABLE IF NOT EXISTS `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_marketing: 0 rows
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_menu
CREATE TABLE IF NOT EXISTS `oc_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_menu: 0 rows
/*!40000 ALTER TABLE `oc_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_menu` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_menu_description
CREATE TABLE IF NOT EXISTS `oc_menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`menu_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_menu_description: 0 rows
/*!40000 ALTER TABLE `oc_menu_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_menu_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_menu_module
CREATE TABLE IF NOT EXISTS `oc_menu_module` (
  `menu_module_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`menu_module_id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_menu_module: 0 rows
/*!40000 ALTER TABLE `oc_menu_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_menu_module` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_modification
CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_modification: 3 rows
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
REPLACE INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
	(1, 'Addictive services', 'addictive-1.7', '@balukoff', '1.7', 'http://www.balukoff.ru', '<?xml version="1.0" encoding="UTF-8"?>\r\n<modification>\r\n	<code>addictive-1.7</code>\r\n	<name>Addictive services</name>\r\n	<version>1.7</version>\r\n	<author>@balukoff</author>\r\n	<link>http://www.balukoff.ru</link>\r\n	<file path="catalog/controller/checkout/cart.php" error="log">\r\n		<operation>\r\n			<search><![CDATA[unset($this->session->data[\'reward\']);]]></search>\r\n			<add position="replace"><![CDATA[unset($this->session->data[\'reward\']);\r\n			if (count($this->session->data[\'cart\']) == 0){ unset($this->session->data[\'addictive\']);     }\r\n			]]></add>\r\n		</operation>\r\n    </file>\r\n</modification>\r\n', 1, '2021-01-27 11:03:15'),
	(2, 'Store Reviews ', 'Store_reviews', 'Andrey Derevjanko', '1.0', 'http://web-andryshka.ru', '<?xml version="1.0" encoding="UTF-8"?>\r\n<modification>\r\n    <code>Store_reviews</code>\r\n    <name>Store Reviews </name>\r\n    <version>1.0</version>\r\n    <author>Andrey Derevjanko</author>\r\n    <link>http://web-andryshka.ru</link>\r\n    <file path="admin/controller/common/column_left.php">\r\n        <operation>\r\n            <search><![CDATA[if ($this->user->hasPermission(\'access\', \'catalog/review\'))]]></search>\r\n            <add position="before"><![CDATA[	if ($this->user->hasPermission(\'access\', \'review/store_review\')) {\r\n				$catalog[] = array(\r\n					\'name\'	   => \'Store reviews\',\r\n					\'href\'     => $this->url->link(\'review/store_review\', \'token=\' . $this->session->data[\'token\'], true),\r\n					\'children\' => array()\r\n				);\r\n			}]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path="admin/language/*/common/menu.php">\r\n        <operation>\r\n            <search><![CDATA[$_[\'text_user\']]]></search>\r\n            <add position="before"><![CDATA[\r\n				$_[\'text_product_review\']                = \'Product reviews\';\r\n				$_[\'text_store_review\']                  = \'Store reviews\';\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path="admin/controller/setting/setting.php">\r\n        <operation>\r\n            <search><![CDATA[$data[\'captcha_pages\'] = array();]]></search>\r\n            <add position="after"><![CDATA[\r\n				$data[\'captcha_pages\'][] = array(\r\n			    \'text\'  => \'Store Reviews Lite\',\r\n			    \'value\' => \'sr_lite\'\r\n		        );\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n\r\n    <file path="admin/view/template/setting/setting.tpl">\r\n        <operation>\r\n            <search><![CDATA[\r\n				  <div class="tab-pane" id="tab-option">\r\n            ]]></search>\r\n            <add trim="false" position="after"><![CDATA[\r\n                <fieldset>\r\n                <legend><?php echo $text_google_captcha; ?></legend>\r\n                <div class="alert alert-info"><?php echo $help_google_captcha; ?></div>\r\n                <div class="form-group">\r\n                  <label class="col-sm-2 control-label" for="input-google-captcha-public"><?php echo $entry_google_captcha_public; ?></label>\r\n                  <div class="col-sm-10">\r\n                    <input type="text" name="config_google_captcha_public" value="<?php echo $config_google_captcha_public; ?>" placeholder="<?php echo $entry_google_captcha_public; ?>" id="input-google-captcha-public" class="form-control" />\r\n                  </div>\r\n                </div>\r\n                <div class="form-group">\r\n                  <label class="col-sm-2 control-label" for="input-google-captcha-secret"><?php echo $entry_google_captcha_secret; ?></label>\r\n                  <div class="col-sm-10">\r\n                    <input type="text" name="config_google_captcha_secret" value="<?php echo $config_google_captcha_secret; ?>" placeholder="<?php echo $entry_google_captcha_secret; ?>" id="input-google-captcha-secret" class="form-control" />\r\n                  </div>\r\n                </div>\r\n                <div class="form-group">\r\n                  <label class="col-sm-2 control-label" for="input-google-captcha-status"><?php echo $entry_status; ?></label>\r\n                  <div class="col-sm-10">\r\n                    <select name="config_google_captcha_status" id="input-google-captcha-status" class="form-control">\r\n                      <?php if ($config_google_captcha_status) { ?>\r\n                      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>\r\n                      <option value="0"><?php echo $text_disabled; ?></option>\r\n                      <?php } else { ?>\r\n                      <option value="1"><?php echo $text_enabled; ?></option>\r\n                      <option value="0" selected="selected"><?php echo $text_disabled; ?></option>\r\n                      <?php } ?>\r\n                    </select>\r\n                  </div>\r\n                </div>\r\n              </fieldset>\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path="admin/controller/setting/setting.php">\r\n        <operation>\r\n            <search><![CDATA[\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n            ]]></search>\r\n            <add position="after" trim="false"><![CDATA[\r\n		        $data[\'text_google_captcha\'] = $this->language->get(\'text_google_captcha\');\r\n		        $data[\'entry_google_captcha_public\'] = $this->language->get(\'entry_google_captcha_public\');\r\n		        $data[\'entry_google_captcha_secret\'] = $this->language->get(\'entry_google_captcha_secret\');\r\n		        $data[\'entry_status\'] = $this->language->get(\'entry_status\');\r\n		        $data[\'text_enabled\'] = $this->language->get(\'text_enabled\');\r\n		        $data[\'text_disabled\'] = $this->language->get(\'text_disabled\');\r\n		        $data[\'help_google_captcha\'] = $this->language->get(\'help_google_captcha\');\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n				$data[\'header\'] = $this->load->controller(\'common/header\');\r\n            ]]></search>\r\n            <add position="before" trim="false"><![CDATA[\r\n		       		if (isset($this->request->post[\'config_google_captcha_public\'])) {\r\n                        $data[\'config_google_captcha_public\'] = $this->request->post[\'config_google_captcha_public\'];\r\n                    } else {\r\n                        $data[\'config_google_captcha_public\'] = $this->config->get(\'config_google_captcha_public\');\r\n                    }\r\n\r\n                    if (isset($this->request->post[\'config_google_captcha_secret\'])) {\r\n                        $data[\'config_google_captcha_secret\'] = $this->request->post[\'config_google_captcha_secret\'];\r\n                    } else {\r\n                        $data[\'config_google_captcha_secret\'] = $this->config->get(\'config_google_captcha_secret\');\r\n                    }\r\n\r\n                    if (isset($this->request->post[\'config_google_captcha_status\'])) {\r\n                        $data[\'config_google_captcha_status\'] = $this->request->post[\'config_google_captcha_status\'];\r\n                    } else {\r\n                        $data[\'config_google_captcha_status\'] = $this->config->get(\'config_google_captcha_status\');\r\n                    }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path="admin/language/*/setting/setting.php">\r\n        <operation>\r\n            <search><![CDATA[\r\n				$_[\'heading_title\']\r\n            ]]></search>\r\n            <add position="after" trim="false" offset="1"><![CDATA[\r\n				$_[\'text_google_captcha\']              = \'Google reCAPTCHA\';\r\n				$_[\'entry_google_captcha_public\']      = \'Site key\';\r\n                $_[\'entry_google_captcha_secret\']      = \'Secret key\';\r\n                $_[\'entry_status\']                     = \'Status\';\r\n                $_[\'help_google_captcha\']              = \'Go to <a href="https://www.google.com/recaptcha/intro/index.html" target="_blank"><u>Google reCAPTCHA page</u></a> and register your website.\';\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n</modification>', 1, '2021-01-27 12:27:29'),
	(3, 'Buy One Click for OpenCart 2.3.x', '963-401-oc-23', 'Domus159@gmail.com', '4.0.3', '//xdomus.ru/opencart/buyoneclick-opencart-free/', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n	<code>963-401-oc-23</code>\r\n    <name>Buy One Click for OpenCart 2.3.x</name>\r\n    <version>4.0.3</version>\r\n    <author>Domus159@gmail.com</author>\r\n    <link>//xdomus.ru/opencart/buyoneclick-opencart-free/</link>   \r\n    <file path="catalog/controller/common/header.php">\r\n        <operation>\r\n            <search>\r\n				<![CDATA[\r\n					$data[\'telephone\'] = $this->config->get(\'config_telephone\');\r\n				]]>\r\n			</search>\r\n            <add position="after">\r\n				<![CDATA[\r\n					$buyoneclick = $this->config->get(\'buyoneclick\');\r\n					$data[\'buyoneclick_status_product\'] = $buyoneclick["status_product"];\r\n					$data[\'buyoneclick_status_category\'] = $buyoneclick["status_category"];\r\n					$data[\'buyoneclick_status_module\'] = $buyoneclick["status_module"];\r\n\r\n					$data[\'buyoneclick_style_status\'] = $buyoneclick["style_status"];\r\n					$data[\'buyoneclick_validation_type\'] = $buyoneclick["validation_type"];\r\n\r\n					$data[\'buyoneclick_exan_status\'] = $buyoneclick["exan_status"];\r\n\r\n					$data[\'buyoneclick_ya_status\'] 					= $buyoneclick[\'ya_status\'];\r\n					$data[\'buyoneclick_ya_counter\'] 				= $buyoneclick[\'ya_counter\'];\r\n					$data[\'buyoneclick_ya_identificator\'] 			= $buyoneclick[\'ya_identificator\'];\r\n					$data[\'buyoneclick_ya_identificator_send\'] 		= $buyoneclick[\'ya_identificator_send\'];\r\n					$data[\'buyoneclick_ya_identificator_success\'] 	= $buyoneclick[\'ya_identificator_success\'];\r\n\r\n					$data[\'buyoneclick_google_status\'] 				= $buyoneclick[\'google_status\'];\r\n					$data[\'buyoneclick_google_category_btn\'] 		= $buyoneclick[\'google_category_btn\'];\r\n					$data[\'buyoneclick_google_action_btn\'] 			= $buyoneclick[\'google_action_btn\'];\r\n					$data[\'buyoneclick_google_category_send\'] 		= $buyoneclick[\'google_category_send\'];\r\n					$data[\'buyoneclick_google_action_send\'] 		= $buyoneclick[\'google_action_send\'];\r\n					$data[\'buyoneclick_google_category_success\'] 	= $buyoneclick[\'google_category_success\'];\r\n					$data[\'buyoneclick_google_action_success\'] 		= $buyoneclick[\'google_action_success\'];\r\n				]]>\r\n			</add>\r\n        </operation>\r\n    </file>\r\n    <file path="catalog/view/theme/*/template/common/header.tpl">\r\n        <operation>\r\n            <search>\r\n				<![CDATA[\r\n					</head>\r\n				]]>\r\n			</search>\r\n            <add position="before"><![CDATA[\r\n				<?php if ($buyoneclick_status_product || $buyoneclick_status_category || $buyoneclick_status_module) { ?>\r\n						<script src="catalog/view/javascript/buyoneclick.js" type="text/javascript"></script>\r\n						<script>\r\n							function clickAnalytics(){\r\n								console.log(\'clickAnalytics\');\r\n								<?php if ($buyoneclick_ya_status && isset($buyoneclick_ya_counter) && $buyoneclick_ya_counter != \'\' && isset($buyoneclick_ya_identificator) && $buyoneclick_ya_identificator != \'\') { ?>\r\n									yaCounter<?=$buyoneclick_ya_counter?>.reachGoal(\'<?=$buyoneclick_ya_identificator?>\');\r\n								<?php } ?>\r\n								<?php if ($buyoneclick_google_status && isset($buyoneclick_google_category_btn) && $buyoneclick_google_category_btn != \'\' && isset($buyoneclick_google_action_btn) && $buyoneclick_google_action_btn != \'\') { ?>\r\n									ga(\'send\', \'event\', \'<?=$buyoneclick_google_category_btn?>\', \'<?=$buyoneclick_google_action_btn?>\');\r\n									gtag(\'event\', \'<?=$buyoneclick_google_action_btn?>\', {\'event_category\': \'<?=$buyoneclick_google_category_btn?>\'});\r\n								<?php } ?>\r\n								return true;\r\n							}\r\n							function clickAnalyticsSend(){\r\n								console.log(\'clickAnalyticsSend\');\r\n								<?php if ($buyoneclick_ya_status && isset($buyoneclick_ya_counter) && $buyoneclick_ya_counter != \'\' && isset($buyoneclick_ya_identificator_send) && $buyoneclick_ya_identificator_send != \'\') { ?>\r\n									yaCounter<?=$buyoneclick_ya_counter?>.reachGoal(\'<?=$buyoneclick_ya_identificator_send?>\');\r\n								<?php } ?>\r\n								<?php if ($buyoneclick_google_status && isset($buyoneclick_google_category_send) && $buyoneclick_google_category_send != \'\' && isset($buyoneclick_google_action_send) && $buyoneclick_google_action_send != \'\') { ?>\r\n									ga(\'send\', \'event\', \'<?=$buyoneclick_google_category_send?>\', \'<?=$buyoneclick_google_action_send?>\');\r\n									gtag(\'event\', \'<?=$buyoneclick_google_action_send?>\', {\'event_category\': \'<?=$buyoneclick_google_category_send?>\'});\r\n								<?php } ?>								\r\n								return true;\r\n							}		\r\n							function clickAnalyticsSuccess(){\r\n								console.log(\'clickAnalyticsSuccess\');\r\n								<?php if ($buyoneclick_ya_status && isset($buyoneclick_ya_counter) && $buyoneclick_ya_counter != \'\' && isset($buyoneclick_ya_identificator_success) && $buyoneclick_ya_identificator_success != \'\') { ?>\r\n									yaCounter<?=$buyoneclick_ya_counter?>.reachGoal(\'<?=$buyoneclick_ya_identificator_success?>\');\r\n								<?php } ?>\r\n								<?php if ($buyoneclick_google_status && isset($buyoneclick_google_category_success) && $buyoneclick_google_category_success != \'\' && isset($buyoneclick_google_action_success) && $buyoneclick_google_action_success != \'\') { ?>\r\n									ga(\'send\', \'event\', \'<?=$buyoneclick_google_category_success?>\', \'<?=$buyoneclick_google_action_success?>\');\r\n									gtag(\'event\', \'<?=$buyoneclick_google_action_success?>\', {\'event_category\': \'<?=$buyoneclick_google_category_success?>\'});\r\n								<?php } ?>									\r\n								return true;\r\n							}								\r\n						</script>						\r\n						<?php if ($buyoneclick_validation_type) { ?>\r\n							<script src="catalog/view/javascript/jquery.mask.min.js" type="text/javascript"></script>\r\n							<script>\r\n								$(document).ready(function(){\r\n									$(\'#boc_phone\').mask(\'<?php echo $buyoneclick_validation_type; ?>\');\r\n								});\r\n							</script>\r\n						<?php } ?>\r\n						<?php if ($buyoneclick_exan_status) { ?>\r\n							<script src="catalog/view/javascript/sourcebuster.min.js" type="text/javascript"></script>\r\n							<script>\r\n								sbjs.init({\r\n									callback: placeData\r\n								});\r\n\r\n								function placeData(sb) {\r\n									$sb_first_typ		= sb.first.typ;\r\n									$sb_first_src		= sb.first.src;\r\n									$sb_first_mdm		= sb.first.mdm;\r\n									$sb_first_cmp		= sb.first.cmp;\r\n									$sb_first_cnt		= sb.first.cnt;\r\n									$sb_first_trm		= sb.first.trm;\r\n\r\n									$sb_curr_typ		= sb.current.typ;\r\n									$sb_curr_src		= sb.current.src;\r\n									$sb_curr_mdm		= sb.current.mdm;\r\n									$sb_curr_cmp		= sb.current.cmp;\r\n									$sb_curr_cnt		= sb.current.cnt;\r\n									$sb_curr_trm		= sb.current.trm;\r\n\r\n									$sb_first_add_fd	= sb.first_add.fd;\r\n									$sb_first_add_ep	= sb.first_add.ep;\r\n									$sb_first_add_rf	= sb.first_add.rf;\r\n\r\n									$sb_curr_add_fd		= sb.current_add.fd;\r\n									$sb_curr_add_ep		= sb.current_add.ep;\r\n									$sb_curr_add_rf		= sb.current_add.rf;\r\n\r\n									$sb_session_pgs		= sb.session.pgs;\r\n									$sb_session_cpg		= sb.session.cpg;\r\n\r\n									$sb_udata_vst		= sb.udata.vst;\r\n									$sb_udata_uip		= sb.udata.uip;\r\n									$sb_udata_uag		= sb.udata.uag;\r\n\r\n									$sb_promo_code		= sb.promo.code;\r\n								};\r\n\r\n								function valueData() {\r\n									document.getElementById(\'sb_first_typ\').value       = $sb_first_typ;\r\n									document.getElementById(\'sb_first_src\').value       = $sb_first_src;\r\n									document.getElementById(\'sb_first_mdm\').value       = $sb_first_mdm;\r\n									document.getElementById(\'sb_first_cmp\').value       = $sb_first_cmp;\r\n									document.getElementById(\'sb_first_cnt\').value       = $sb_first_cnt;\r\n									document.getElementById(\'sb_first_trm\').value       = $sb_first_trm;\r\n\r\n									document.getElementById(\'sb_current_typ\').value     = $sb_curr_typ;\r\n									document.getElementById(\'sb_current_src\').value     = $sb_curr_src;\r\n									document.getElementById(\'sb_current_mdm\').value     = $sb_curr_mdm;\r\n									document.getElementById(\'sb_current_cmp\').value     = $sb_curr_cmp;\r\n									document.getElementById(\'sb_current_cnt\').value     = $sb_curr_cnt;\r\n									document.getElementById(\'sb_current_trm\').value     = $sb_curr_trm;\r\n\r\n									document.getElementById(\'sb_first_add_fd\').value    = $sb_first_add_fd;\r\n									document.getElementById(\'sb_first_add_ep\').value    = $sb_first_add_ep;\r\n									document.getElementById(\'sb_first_add_rf\').value    = $sb_first_add_rf;\r\n\r\n									document.getElementById(\'sb_current_add_fd\').value  = $sb_curr_add_fd;\r\n									document.getElementById(\'sb_current_add_ep\').value  = $sb_curr_add_ep;\r\n									document.getElementById(\'sb_current_add_rf\').value  = $sb_curr_add_rf;\r\n\r\n									document.getElementById(\'sb_session_pgs\').value     = $sb_session_pgs;\r\n									document.getElementById(\'sb_session_cpg\').value     = $sb_session_cpg;\r\n\r\n									document.getElementById(\'sb_udata_vst\').value       = $sb_udata_vst;\r\n									document.getElementById(\'sb_udata_uip\').value       = $sb_udata_uip;\r\n									document.getElementById(\'sb_udata_uag\').value       = $sb_udata_uag;\r\n\r\n									document.getElementById(\'sb_promo_code\').value      = $sb_promo_code;\r\n								};\r\n							</script>\r\n						<?php } ?>\r\n						<?php if ($buyoneclick_style_status) { ?>\r\n							<link href="catalog/view/theme/default/stylesheet/buyoneclick.css" rel="stylesheet">\r\n						<?php } ?>\r\n						<style type="text/css">\r\n							@keyframes lds-rolling {\r\n								0% {\r\n									-webkit-transform: translate(-50%, -50%) rotate(0deg);\r\n									transform: translate(-50%, -50%) rotate(0deg);\r\n								}\r\n								100% {\r\n									-webkit-transform: translate(-50%, -50%) rotate(360deg);\r\n									transform: translate(-50%, -50%) rotate(360deg);\r\n								}\r\n							}\r\n							@-webkit-keyframes lds-rolling {\r\n								0% {\r\n									-webkit-transform: translate(-50%, -50%) rotate(0deg);\r\n									transform: translate(-50%, -50%) rotate(0deg);\r\n								}\r\n								100% {\r\n									-webkit-transform: translate(-50%, -50%) rotate(360deg);\r\n									transform: translate(-50%, -50%) rotate(360deg);\r\n								}\r\n							}\r\n							.lds-rolling {\r\n								position: relative;\r\n								text-align: center;\r\n							}\r\n							.lds-rolling div, .lds-rolling div:after {\r\n								position: absolute;\r\n								width: 160px;\r\n								height: 160px;\r\n								border: 20px solid #bbcedd;\r\n								border-top-color: transparent;\r\n								border-radius: 50%;\r\n							}\r\n							.lds-rolling div {\r\n								-webkit-animation: lds-rolling 1s linear infinite;\r\n								animation: lds-rolling 1s linear infinite;\r\n								top: 100px;\r\n								left: 100px;\r\n							}\r\n							.lds-rolling div:after {\r\n								-webkit-transform: rotate(90deg);\r\n								transform: rotate(90deg);\r\n							}\r\n							.lds-rolling {\r\n								width: 200px !important;\r\n								height: 200px !important;\r\n								-webkit-transform: translate(-100px, -100px) scale(1) translate(100px, 100px);\r\n								transform: translate(-100px, -100px) scale(1) translate(100px, 100px);\r\n								margin: 0 auto;\r\n							}\r\n							.col-pd-15 {\r\n								padding-left:15px;\r\n								padding-right:15px;\r\n							}\r\n							.col-mb-10 {\r\n								margin-bottom:10px;\r\n							}\r\n							#boc_order hr {\r\n								margin-top:0px;\r\n								margin-bottom:15px;\r\n							}\r\n							.boc_product_info > div {\r\n								line-height: 120px;\r\n							}\r\n							.boc_product_info > div > img {\r\n								max-height: 120px;\r\n								margin: 0 auto;\r\n							}\r\n							.boc_product_info > div > img, .boc_product_info > div > div, .boc_product_info > div > p {\r\n								display: inline-block;\r\n								line-height: normal;\r\n								vertical-align: middle;\r\n							}\r\n							#boc_order .checkbox {\r\n								margin-top: 0;\r\n								padding: 0 10px;\r\n								border: 1px solid transparent;\r\n								border-radius: 6px;\r\n							}\r\n							#boc_order .checkbox.has-error {\r\n								border-color: #a94442;\r\n							}\r\n							@media (max-width: 767px) {\r\n								.boc_product_info > div {\r\n									line-height:normal;\r\n									text-align:center;\r\n								}\r\n							}\r\n						</style>\r\n				<?php } ?>\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path="catalog/controller/common/footer.php">\r\n        <operation>\r\n            <search>\r\n				<![CDATA[\r\n					$this->load->language(\'common/footer\');\r\n				]]>\r\n			</search>\r\n            <add position="before"><![CDATA[\r\n				// BuyOneClick\r\n					$buyoneclick = $this->config->get(\'buyoneclick\');\r\n					$data[\'buyoneclick_status_product\'] = $buyoneclick["status_product"];\r\n					$data[\'buyoneclick_status_category\'] = $buyoneclick["status_category"];\r\n					$data[\'buyoneclick_status_module\'] = $buyoneclick["status_module"];\r\n\r\n					$data[\'buyoneclick_exan_status\'] = $buyoneclick["exan_status"];\r\n\r\n					$current_language_id = $this->config->get(\'config_language_id\');\r\n					$data[\'buyoneclick_success_field\'] = isset($buyoneclick["success_field"][$current_language_id]) ? htmlspecialchars_decode($buyoneclick["success_field"][$current_language_id]) : \'\';\r\n\r\n					$this->load->language(\'extension/module/buyoneclick\');\r\n					if ($data[\'buyoneclick_success_field\'] == \'\') {\r\n						$data[\'buyoneclick_success_field\'] = $this->language->get(\'buyoneclick_success\');\r\n					}\r\n				// BuyOneClickEnd\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n	<file path="catalog/view/theme/*/template/common/footer.tpl">\r\n        <operation>\r\n            <search>\r\n				<![CDATA[\r\n					</body>\r\n				]]>\r\n			</search>\r\n            <add position="before"><![CDATA[\r\n				<?php if ($buyoneclick_status_product || $buyoneclick_status_category || $buyoneclick_status_module) { ?>\r\n					<div id="boc_order" class="modal fade">\r\n					</div>\r\n					<div id="boc_success" class="modal fade">\r\n						<div class="modal-dialog">\r\n							<div class="modal-content">\r\n								<div class="modal-body">\r\n									<div class="text-center"><?php echo $buyoneclick_success_field; ?></div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<script type="text/javascript"><!--\r\n						$(\'body\').on(\'click\', \'.boc_order_btn\', function(event) {\r\n							$.ajax({\r\n								url: \'index.php?route=common/buyoneclick/info\',\r\n								type: \'post\',\r\n								data: $(\'#product input[type=\\\'text\\\'], #product input[type=\\\'hidden\\\'], #product input[type=\\\'radio\\\']:checked, #product input[type=\\\'checkbox\\\']:checked, #product select, #product textarea\'),\r\n								dataType: \'json\',\r\n								beforeSend: function() {\r\n									$(event.target).button(\'loading\');\r\n									$(\'#boc_order\').empty();\r\n									$(\'#boc_order\').append(\'<div class="lds-rolling"><div></div></div>\');\r\n								},\r\n								complete: function() {\r\n									$(event.target).button(\'reset\');\r\n								},\r\n								success: function(json) {\r\n									$(\'.alert, .text-danger\').remove();\r\n									$(\'.form-group\').removeClass(\'has-error\');\r\n									if (json[\'error\']) {\r\n										if (json[\'error\'][\'option\']) {\r\n											for (i in json[\'error\'][\'option\']) {\r\n												var element = $(\'#input-option\' + i.replace(\'_\', \'-\'));\r\n												if (element.parent().hasClass(\'input-group\')) {\r\n													element.parent().after(\'<div class="text-danger">\' + json[\'error\'][\'option\'][i] + \'</div>\');\r\n												} else {\r\n													element.after(\'<div class="text-danger">\' + json[\'error\'][\'option\'][i] + \'</div>\');\r\n												}\r\n											}\r\n										}\r\n\r\n										if (json[\'error\'][\'recurring\']) {\r\n											$(\'select[name=\\\'recurring_id\\\']\').after(\'<div class="text-danger">\' + json[\'error\'][\'recurring\'] + \'</div>\');\r\n										}\r\n\r\n										// Highlight any found errors\r\n										$(\'.text-danger\').parent().addClass(\'has-error\');\r\n									} else {\r\n										$("#boc_order").modal(\'show\');\r\n										$(\'#boc_order\').empty();\r\n										$(\'#boc_order\').html(json[\'success\']);\r\n										<?php if ($buyoneclick_exan_status) { ?> valueData(); <?php } ?>\r\n									}\r\n								},\r\n								error: function(xhr, ajaxOptions, thrownError) {\r\n									console.log(thrownError + " | " + xhr.statusText + " | " + xhr.responseText);\r\n								}\r\n							});\r\n						});\r\n						$(\'body\').on(\'click\', \'.boc_order_category_btn\', function(event) {\r\n							var for_post = {};\r\n							for_post.product_id = $(this).attr(\'data-product_id\');\r\n							$.ajax({\r\n								url: \'index.php?route=common/buyoneclick/info\',\r\n								type: \'post\',\r\n								data: for_post,\r\n								dataType: \'json\',\r\n								beforeSend: function() {\r\n									$(event.target).button(\'loading\');\r\n								},\r\n								complete: function() {\r\n									$(event.target).button(\'reset\');\r\n								},\r\n								success: function(json) {\r\n									$(\'.alert, .text-danger\').remove();\r\n									$(\'.form-group\').removeClass(\'has-error\');\r\n									if (json[\'redirect\']) {\r\n										location = json[\'redirect\'];\r\n									} else {\r\n										// console.log(json);\r\n										$("#boc_order").modal(\'show\');\r\n										$(\'#boc_order\').empty();\r\n										$(\'#boc_order\').html(json[\'success\']);\r\n										<?php if ($buyoneclick_exan_status) { ?> valueData(); <?php } ?>										\r\n									}\r\n								},\r\n								error: function(xhr, ajaxOptions, thrownError) {\r\n									console.log(thrownError + " | " + xhr.statusText + " | " + xhr.responseText);\r\n								}\r\n							});\r\n						});\r\n					//--></script>\r\n				<?php } ?>\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path="catalog/controller/product/product.php">\r\n        <operation>\r\n            <search>\r\n				<![CDATA[\r\n					$data[\'header\'] = $this->load->controller(\'common/header\');\r\n				]]>\r\n			</search>\r\n            <add position="after">\r\n				<![CDATA[\r\n				// BuyOneClick\r\n					$this->load->model(\'setting/setting\');\r\n					$current_language_id = $this->config->get(\'config_language_id\');\r\n\r\n					$buyoneclick = $this->config->get(\'buyoneclick\');\r\n					$data[\'buyoneclick_name\'] = isset($buyoneclick["name"][$current_language_id]) ? $buyoneclick["name"][$current_language_id] : \'\';\r\n					$data[\'buyoneclick_status_product\'] = $buyoneclick["status_product"];\r\n					$data[\'buyoneclick_status_module\'] = $buyoneclick["status_module"];\r\n\r\n					$data[\'buyoneclick_ya_status\'] 					= $buyoneclick[\'ya_status\'];\r\n					$data[\'buyoneclick_ya_counter\'] 				= $buyoneclick[\'ya_counter\'];\r\n					$data[\'buyoneclick_ya_identificator\'] 			= $buyoneclick[\'ya_identificator\'];\r\n					$data[\'buyoneclick_ya_identificator_send\'] 		= $buyoneclick[\'ya_identificator_send\'];\r\n					$data[\'buyoneclick_ya_identificator_success\'] 	= $buyoneclick[\'ya_identificator_success\'];\r\n\r\n					$data[\'buyoneclick_google_status\'] 				= $buyoneclick[\'google_status\'];\r\n					$data[\'buyoneclick_google_category_btn\'] 		= $buyoneclick[\'google_category_btn\'];\r\n					$data[\'buyoneclick_google_action_btn\'] 			= $buyoneclick[\'google_action_btn\'];\r\n					$data[\'buyoneclick_google_category_send\'] 		= $buyoneclick[\'google_category_send\'];\r\n					$data[\'buyoneclick_google_action_send\'] 		= $buyoneclick[\'google_action_send\'];\r\n					$data[\'buyoneclick_google_category_success\'] 	= $buyoneclick[\'google_category_success\'];\r\n					$data[\'buyoneclick_google_action_success\'] 		= $buyoneclick[\'google_action_success\'];\r\n					\r\n					$this->load->language(\'extension/module/buyoneclick\');\r\n					if (!isset($data[\'buyoneclick_name\']) || $data[\'buyoneclick_name\'] == \'\') {\r\n						$data[\'buyoneclick_name\'] = $this->language->get(\'buyoneclick_button\');\r\n					}\r\n					$data[\'buyoneclick_text_loading\'] = $this->language->get(\'buyoneclick_text_loading\');\r\n				// BuyOneClickEnd\r\n				]]>\r\n			</add>\r\n        </operation>\r\n    </file>\r\n    <file path="catalog/view/theme/*/template/product/product.tpl">\r\n        <operation>\r\n            <search>\r\n				<![CDATA[\r\n					<button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>\r\n				]]>\r\n			</search>\r\n            <add position="after">\r\n				<![CDATA[\r\n					<?php if ($buyoneclick_status_product) { ?>\r\n						<br />\r\n						<button type="button" data-loading-text="<?php echo $buyoneclick_text_loading; ?>" class="btn btn-primary btn-lg btn-block boc_order_btn" <?php if (($buyoneclick_ya_status && isset($buyoneclick_ya_counter) && $buyoneclick_ya_counter != \'\' && isset($buyoneclick_ya_identificator) && $buyoneclick_ya_identificator != \'\') || ($buyoneclick_google_status && isset($buyoneclick_google_category_btn) && $buyoneclick_google_category_btn != \'\' && isset($buyoneclick_google_action_btn) && $buyoneclick_google_action_btn != \'\')) { ?> onClick="clickAnalytics(); return true;" <?php } ?> data-target="#boc_order" data-product="<?php echo $heading_title; ?>" data-product_id="<?php echo $product_id; ?>"><?php echo $buyoneclick_name; ?></button>\r\n					<?php }	?>\r\n				]]>\r\n			</add>\r\n        </operation>\r\n		<operation>\r\n			<search regex="true"><![CDATA[\r\n				/<div class="button-group">(.*?)<\\/div>/is\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n				<div class="button-group">$1</div>\r\n				<?php if ($buyoneclick_status_module) { ?>\r\n					<button type="button" data-loading-text="<?php echo $buyoneclick_text_loading; ?>" class="btn-block boc_order_category_btn" <?php if (($buyoneclick_ya_status && isset($buyoneclick_ya_counter) && $buyoneclick_ya_counter != \'\' && isset($buyoneclick_ya_identificator) && $buyoneclick_ya_identificator != \'\') || ($buyoneclick_google_status && isset($buyoneclick_google_category_btn) && $buyoneclick_google_category_btn != \'\' && isset($buyoneclick_google_action_btn) && $buyoneclick_google_action_btn != \'\')) { ?> onClick="clickAnalytics(); return true;" <?php } ?> data-target="#boc_order" data-product="<?php echo $product[\'name\'] ?>" data-product_id="<?php echo $product[\'product_id\']; ?>"><?php echo $buyoneclick_name; ?></button>\r\n				<?php } ?>\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path="catalog/controller/product/{category.php,manufacturer.php,search.php,special.php}">\r\n        <operation>\r\n            <search>\r\n				<![CDATA[\r\n					$data[\'header\'] = $this->load->controller(\'common/header\');\r\n				]]>\r\n			</search>\r\n            <add position="after">\r\n				<![CDATA[\r\n				// BuyOneClick\r\n					$this->load->model(\'setting/setting\');\r\n					$current_language_id = $this->config->get(\'config_language_id\');\r\n\r\n					$buyoneclick = $this->config->get(\'buyoneclick\');\r\n					$data[\'buyoneclick_name\'] = isset($buyoneclick["name"][$current_language_id]) ? $buyoneclick["name"][$current_language_id] : \'\';\r\n					$data[\'buyoneclick_status_category\'] = $buyoneclick["status_category"];\r\n\r\n					$data[\'buyoneclick_ya_status\'] 					= $buyoneclick[\'ya_status\'];\r\n					$data[\'buyoneclick_ya_counter\'] 				= $buyoneclick[\'ya_counter\'];\r\n					$data[\'buyoneclick_ya_identificator\'] 			= $buyoneclick[\'ya_identificator\'];\r\n					$data[\'buyoneclick_ya_identificator_send\'] 		= $buyoneclick[\'ya_identificator_send\'];\r\n					$data[\'buyoneclick_ya_identificator_success\'] 	= $buyoneclick[\'ya_identificator_success\'];\r\n\r\n					$data[\'buyoneclick_google_status\'] 				= $buyoneclick[\'google_status\'];\r\n					$data[\'buyoneclick_google_category_btn\'] 		= $buyoneclick[\'google_category_btn\'];\r\n					$data[\'buyoneclick_google_action_btn\'] 			= $buyoneclick[\'google_action_btn\'];\r\n					$data[\'buyoneclick_google_category_send\'] 		= $buyoneclick[\'google_category_send\'];\r\n					$data[\'buyoneclick_google_action_send\'] 		= $buyoneclick[\'google_action_send\'];\r\n					$data[\'buyoneclick_google_category_success\'] 	= $buyoneclick[\'google_category_success\'];\r\n					$data[\'buyoneclick_google_action_success\'] 		= $buyoneclick[\'google_action_success\'];\r\n					\r\n					$this->load->language(\'extension/module/buyoneclick\');\r\n					if (!isset($data[\'buyoneclick_name\']) || $data[\'buyoneclick_name\'] == \'\') {\r\n						$data[\'buyoneclick_name\'] = $this->language->get(\'buyoneclick_button\');\r\n					}\r\n					$data[\'buyoneclick_text_loading\'] = $this->language->get(\'buyoneclick_text_loading\');					\r\n				// BuyOneClickEnd\r\n				]]>\r\n			</add>\r\n        </operation>\r\n    </file>\r\n    <file path="catalog/view/theme/*/template/product/{category.tpl,manufacturer_info.tpl,search.tpl,special.tpl}">\r\n		<operation>\r\n			<search regex="true"><![CDATA[\r\n				/<div class="button-group">(.*?)<\\/div>/is\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n				<div class="button-group">$1</div>\r\n				<?php if ($buyoneclick_status_category) { ?>\r\n					<button type="button" data-loading-text="<?php echo $buyoneclick_text_loading; ?>" class="btn-block boc_order_category_btn" <?php if (($buyoneclick_ya_status && isset($buyoneclick_ya_counter) && $buyoneclick_ya_counter != \'\' && isset($buyoneclick_ya_identificator) && $buyoneclick_ya_identificator != \'\') || ($buyoneclick_google_status && isset($buyoneclick_google_category_btn) && $buyoneclick_google_category_btn != \'\' && isset($buyoneclick_google_action_btn) && $buyoneclick_google_action_btn != \'\')) { ?> onClick="clickAnalytics(); return true;" <?php } ?> data-target="#boc_order" data-product="<?php echo $product[\'name\'] ?>" data-product_id="<?php echo $product[\'product_id\']; ?>"><?php echo $buyoneclick_name; ?></button>\r\n				<?php } ?>\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path="catalog/controller/extension/module/{bestseller.php,featured.php,latest.php,special.php}">\r\n        <operation>\r\n            <search>\r\n				<![CDATA[\r\n					$data[\'products\'] = array();\r\n				]]>\r\n			</search>\r\n            <add position="before">\r\n				<![CDATA[\r\n				// BuyOneClick\r\n					$this->load->model(\'setting/setting\');\r\n					$current_language_id = $this->config->get(\'config_language_id\');\r\n\r\n					$buyoneclick = $this->config->get(\'buyoneclick\');\r\n					$data[\'buyoneclick_name\'] = isset($buyoneclick["name"][$current_language_id]) ? $buyoneclick["name"][$current_language_id] : \'\';\r\n					$data[\'buyoneclick_status_module\'] = $buyoneclick["status_module"];\r\n\r\n					$data[\'buyoneclick_ya_status\'] 					= $buyoneclick[\'ya_status\'];\r\n					$data[\'buyoneclick_ya_counter\'] 				= $buyoneclick[\'ya_counter\'];\r\n					$data[\'buyoneclick_ya_identificator\'] 			= $buyoneclick[\'ya_identificator\'];\r\n					$data[\'buyoneclick_ya_identificator_send\'] 		= $buyoneclick[\'ya_identificator_send\'];\r\n					$data[\'buyoneclick_ya_identificator_success\'] 	= $buyoneclick[\'ya_identificator_success\'];\r\n\r\n					$data[\'buyoneclick_google_status\'] 				= $buyoneclick[\'google_status\'];\r\n					$data[\'buyoneclick_google_category_btn\'] 		= $buyoneclick[\'google_category_btn\'];\r\n					$data[\'buyoneclick_google_action_btn\'] 			= $buyoneclick[\'google_action_btn\'];\r\n					$data[\'buyoneclick_google_category_send\'] 		= $buyoneclick[\'google_category_send\'];\r\n					$data[\'buyoneclick_google_action_send\'] 		= $buyoneclick[\'google_action_send\'];\r\n					$data[\'buyoneclick_google_category_success\'] 	= $buyoneclick[\'google_category_success\'];\r\n					$data[\'buyoneclick_google_action_success\'] 		= $buyoneclick[\'google_action_success\'];\r\n					\r\n					$this->load->language(\'extension/module/buyoneclick\');\r\n					if (!isset($data[\'buyoneclick_name\']) || $data[\'buyoneclick_name\'] == \'\') {\r\n						$data[\'buyoneclick_name\'] = $this->language->get(\'buyoneclick_button\');\r\n					}\r\n					$data[\'buyoneclick_text_loading\'] = $this->language->get(\'buyoneclick_text_loading\');							\r\n				// BuyOneClickEnd\r\n				]]>\r\n			</add>\r\n        </operation>\r\n    </file>\r\n    <file path="catalog/view/theme/*/template/extension/module/{bestseller.tpl,featured.tpl,latest.tpl,special.tpl}">\r\n		<operation>\r\n			<search regex="true"><![CDATA[\r\n				/<div class="button-group">(.*?)<\\/div>/is\r\n			]]></search>\r\n			<add position="after"><![CDATA[\r\n				<div class="button-group">$1</div>\r\n				<?php if ($buyoneclick_status_module) { ?>\r\n					<button type="button" data-loading-text="<?php echo $buyoneclick_text_loading; ?>" class="btn-block boc_order_category_btn" <?php if (($buyoneclick_ya_status && isset($buyoneclick_ya_counter) && $buyoneclick_ya_counter != \'\' && isset($buyoneclick_ya_identificator) && $buyoneclick_ya_identificator != \'\') || ($buyoneclick_google_status && isset($buyoneclick_google_category_btn) && $buyoneclick_google_category_btn != \'\' && isset($buyoneclick_google_action_btn) && $buyoneclick_google_action_btn != \'\')) { ?> onClick="clickAnalytics(); return true;" <?php } ?> data-target="#boc_order" data-product="<?php echo $product[\'name\'] ?>" data-product_id="<?php echo $product[\'product_id\']; ?>"><?php echo $buyoneclick_name; ?></button>\r\n				<?php } ?>\r\n			]]></add>\r\n        </operation>\r\n    </file>		\r\n</modification>', 1, '2021-01-27 14:41:43');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_module
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_module: 6 rows
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
REPLACE INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
	(30, 'Category', 'banner', '{"name":"Category","banner_id":"6","width":"182","height":"182","status":"1"}'),
	(29, 'Home Page', 'carousel', '{"name":"Home Page","banner_id":"8","width":"130","height":"100","status":"1"}'),
	(28, 'Home Page', 'featured', '{"name":"Home Page","product":["43","40","42","30"],"limit":"4","width":"200","height":"200","status":"1"}'),
	(27, 'Home Page', 'slideshow', '{"name":"Home Page","banner_id":"7","width":"1140","height":"380","status":"1"}'),
	(31, 'Banner 1', 'banner', '{"name":"Banner 1","banner_id":"6","width":"182","height":"182","status":"1"}'),
	(32, 'Баннер на главной странице', 'carousel', '{"name":"\\u0411\\u0430\\u043d\\u043d\\u0435\\u0440 \\u043d\\u0430 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435","banner_id":"9","width":"100%","height":"100%","status":"1"}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_option
CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_option: 1 rows
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
REPLACE INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
	(13, 'radio', 0);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_option_description
CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_option_description: 1 rows
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
REPLACE INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
	(13, 1, 'Размер');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_option_value
CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_option_value: 3 rows
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
REPLACE INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
	(51, 13, '', 0),
	(50, 13, '', 0),
	(49, 13, '', 0);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_option_value_description
CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_option_value_description: 3 rows
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
REPLACE INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
	(51, 1, 13, '&lt;span&gt;Maxi&lt;/span&gt; 35 см'),
	(50, 1, 13, '&lt;span&gt;Midi&lt;/span&gt; 25 см'),
	(49, 1, 13, '&lt;span&gt;Mini&lt;/span&gt; 20 см');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_order
CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_order: 0 rows
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_order_custom_field
CREATE TABLE IF NOT EXISTS `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_order_custom_field: 0 rows
/*!40000 ALTER TABLE `oc_order_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_custom_field` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_order_history
CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_order_history: 0 rows
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_order_option
CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_order_option: 0 rows
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_order_product
CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_order_product: 0 rows
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_order_recurring
CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_order_recurring: 0 rows
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_order_recurring_transaction
CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_order_recurring_transaction: 0 rows
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_order_status
CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_order_status: 11 rows
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
REPLACE INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
	(1, 1, 'Ожидание'),
	(2, 1, 'В обработке'),
	(3, 1, 'Доставлено'),
	(7, 1, 'Отменено'),
	(5, 1, 'Сделка завершена'),
	(8, 1, 'Возврат'),
	(9, 1, 'Отмена и аннулирование'),
	(10, 1, 'Неудавшийся'),
	(11, 1, 'Возмещенный'),
	(12, 1, 'Полностью измененный'),
	(13, 1, 'Полный возврат');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_order_total
CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_order_total: 0 rows
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_order_voucher
CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_order_voucher: 0 rows
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product
CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product: 4 rows
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
REPLACE INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
	(50, 'Букет', '', '', '', '', '', '', '', 100, 7, 'catalog/img-1.jpg', 0, 1, 4500.0000, 0, 0, '2021-01-27', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 37, '2021-01-27 17:07:55', '2021-01-29 11:27:28'),
	(51, 'Букет', '', '', '', '', '', '', '', 1000, 7, 'catalog/img-1.jpg', 0, 1, 4500.0000, 0, 0, '2021-01-27', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2021-01-29 11:13:34', '2021-01-29 11:28:36'),
	(52, 'Букет', '', '', '', '', '', '', '', 100, 7, 'catalog/img-1.jpg', 0, 1, 4500.0000, 0, 0, '2021-01-27', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 1, '2021-01-29 11:13:43', '2021-01-29 11:28:40'),
	(53, 'Букет', '', '', '', '', '', '', '', 100, 7, 'catalog/img-1.jpg', 0, 1, 4500.0000, 0, 0, '2021-01-27', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2021-01-29 11:13:43', '2021-01-29 11:28:45');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_attribute
CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_attribute: 4 rows
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
REPLACE INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
	(52, 12, 1, '#ddd'),
	(50, 12, 1, '#ddd'),
	(51, 12, 1, '#ddd'),
	(53, 12, 1, '#ddd');
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_description
CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_description: 4 rows
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
REPLACE INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
	(50, 1, 'Авторский Авторский букет “Новогоднее настроение”', '&lt;p&gt;описание&lt;/p&gt;', 'Роза, Фиалка, Гвоздика, Эустома', 'Авторский Авторский букет “Новогоднее настроение”', '', ''),
	(51, 1, 'Авторский букет “Новогоднее настроение”', '&lt;p&gt;описание&lt;/p&gt;', 'Роза, Фиалка, Гвоздика, Эустома', 'Авторский Авторский букет “Новогоднее настроение”', '', ''),
	(52, 1, 'Авторский букет “Новогоднее настроение”', '&lt;p&gt;описание&lt;/p&gt;', 'Роза, Фиалка, Гвоздика, Эустома', 'Авторский Авторский букет “Новогоднее настроение”', '', ''),
	(53, 1, 'Авторский букет “Новогоднее настроение”', '&lt;p&gt;описание&lt;/p&gt;', 'Роза, Фиалка, Гвоздика, Эустома', 'Авторский Авторский букет “Новогоднее настроение”', '', '');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_discount
CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=442 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_discount: 0 rows
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_filter
CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_filter: 0 rows
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_image
CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2368 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_image: 4 rows
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
REPLACE INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
	(2364, 50, 'catalog/img-1.jpg', 0),
	(2365, 51, 'catalog/img-1.jpg', 0),
	(2366, 52, 'catalog/img-1.jpg', 0),
	(2367, 53, 'catalog/img-1.jpg', 0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_option
CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_option: 4 rows
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
REPLACE INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
	(227, 50, 13, '', 1),
	(228, 51, 13, '', 1),
	(229, 52, 13, '', 1),
	(230, 53, 13, '', 1);
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_option_value
CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_option_value: 12 rows
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
REPLACE INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
	(28, 230, 53, 13, 51, 1, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(27, 230, 53, 13, 50, 1, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(26, 230, 53, 13, 49, 1, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(25, 229, 52, 13, 49, 1, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(24, 229, 52, 13, 50, 1, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(23, 229, 52, 13, 51, 1, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(22, 228, 51, 13, 49, 1, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(20, 228, 51, 13, 51, 1, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(21, 228, 51, 13, 50, 1, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(19, 227, 50, 13, 49, 1, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(17, 227, 50, 13, 50, 1, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(18, 227, 50, 13, 51, 1, 1, 0.0000, '+', 0, '+', 0.00000000, '+');
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_recurring
CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_recurring: 0 rows
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_related
CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_related: 0 rows
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_reward
CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_reward: 0 rows
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_special
CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=452 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_special: 4 rows
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
REPLACE INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
	(450, 52, 1, 0, 3500.0000, '2021-01-28', '0000-00-00'),
	(449, 51, 1, 0, 3500.0000, '2021-01-28', '0000-00-00'),
	(448, 50, 1, 0, 3500.0000, '2021-01-28', '0000-00-00'),
	(451, 53, 1, 0, 3500.0000, '2021-01-28', '0000-00-00');
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_to_category
CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_to_category: 6 rows
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
REPLACE INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
	(50, 61),
	(51, 59),
	(51, 61),
	(52, 61),
	(52, 64),
	(53, 61);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_to_download
CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_to_download: 0 rows
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_to_layout
CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_to_layout: 4 rows
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
REPLACE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
	(50, 0, 0),
	(51, 0, 0),
	(52, 0, 0),
	(53, 0, 0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_product_to_store
CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_product_to_store: 4 rows
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
REPLACE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
	(50, 0),
	(51, 0),
	(52, 0),
	(53, 0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_recurring
CREATE TABLE IF NOT EXISTS `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_recurring: 0 rows
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_recurring_description
CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_recurring_description: 0 rows
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_return
CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_return: 0 rows
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_return_action
CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_return_action: 3 rows
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
REPLACE INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
	(1, 1, 'Возвращены средства'),
	(2, 1, 'Выдан в кредит'),
	(3, 1, 'Отправлен другой товар для замены');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_return_history
CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_return_history: 0 rows
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_return_reason
CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_return_reason: 4 rows
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
REPLACE INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
	(1, 1, 'Получен/доставлен неисправным (сломан)'),
	(2, 1, 'Получен не тот (ошибочный) товар'),
	(4, 1, 'Ошибка, пожалуйста укажите/приложите подробности'),
	(5, 1, 'Другое (другая причина), пожалуйста укажите/приложите подробности');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_return_status
CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_return_status: 3 rows
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
REPLACE INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
	(1, 1, 'Рассматриваемый'),
	(3, 1, 'Готов (к отправке)'),
	(2, 1, 'Заказ в ожидании');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_review
CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `admin_answer` text NOT NULL,
  `link` varchar(350) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_review: 2 rows
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
REPLACE INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `admin_answer`, `link`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
	(1, 0, 0, 'Проверка', '', 'http://vk.com/andrieq', 'првоерка', 5, 1, '2021-01-27 00:00:00', '2021-01-27 21:31:33'),
	(2, 0, 0, '12321', '', '3123123', '123123', 4, 1, '2021-01-27 00:00:00', '2021-01-27 21:31:13');
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_setting
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=881 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_setting: 176 rows
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
REPLACE INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
	(854, 0, 'config', 'config_error_display', '1', 0),
	(841, 0, 'config', 'config_mail_alert', '["order"]', 1),
	(842, 0, 'config', 'config_mail_alert_email', '', 0),
	(843, 0, 'config', 'config_maintenance', '0', 0),
	(844, 0, 'config', 'config_seo_url', '1', 0),
	(845, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
	(879, 0, 'theme_default', 'theme_default_image_location_width', '498', 0),
	(856, 0, 'config', 'config_error_filename', 'error.log', 0),
	(855, 0, 'config', 'config_error_log', '1', 0),
	(851, 0, 'config', 'config_file_max_size', '300000', 0),
	(852, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
	(853, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
	(4, 0, 'voucher', 'voucher_sort_order', '8', 0),
	(5, 0, 'voucher', 'voucher_status', '1', 0),
	(846, 0, 'config', 'config_compression', '0', 0),
	(847, 0, 'config', 'config_secure', '0', 0),
	(848, 0, 'config', 'config_password', '1', 0),
	(849, 0, 'config', 'config_shared', '0', 0),
	(850, 0, 'config', 'config_encryption', 'YThuOnHFIuKhBWaUGqhT9ziZOl3iOjWsUWo4ce6QMu0dpDREXax1abWRwIcXVgUnRRYW8N38k7aztfKtFJYn5DpXpA8bk8JrbyaVNkfNSi1ZAax3fKtdzjg7TPYHrrHOPFj5z7fDJrkVc8WMiMZeaEKuWXi87R6xfDooxVUqHIsTmVgYkMQGp9vM4sZZlUSCQ0bwYGzUaZ2IcRcBfws1Nb1X7PWAIFJ8LXYQYkF1oaC6bbsMLgCiGrp3oD5Sro7RLsmJniaQagpHnLknPkPJbJpQo0kJhc6vU0Yfsk9VYP8NJ7iLes1GYKJD3p5eNkbXmV43NMM96hNlAvpsnyvx496bIagjKC7oLA2yujrbcfDvrh56sQA1hu4CMvEgzVF5w2935M8ItYncedl7MsQ81D0nO1Y6BthyrWAha9s8f7hIlB2YocADCBiEdKx9rOAfA1IVS42NBGMUjgWPC7flx9B0bvevu1axLRGtGZtl0A8ixkRKcUmjmBpUnxGAX8LxFH2sLHylJV76MtkyUoSbd6SIXJmhTjgXIYlCY4nCLuIvmzUMDhGIipFiEgXRAqeIlE5OsmIJ0R8guAC5gshgCmN1p8AKQSB5BOujwiVfWQtnbvJcuqCtByJk3ApKR2jFpAaxsPbBzEpYoUHin2ktYEKwWFUhPRZqmq2tdMfyiL1DXBVkgA4hXoLt2wvEIL5ZncAusCyLFqwbGcGhj6JUZht3LT5AyRmOvTq1thQNd6Zdhp0Sp4IuuQSOIqR6TBAfMfsrWk0h5i2BWKRTe9Dn016QjEH2Aiuu2nU6qjwW70UrTBIIq2wlKgUtjnzUK6g2fRFP8QPqz3LUIS7noqRWVahHTSE3roJrGtlrovaOhWaVM01lYGl5WGm2WQ4hGHpfdxoTMXCjhWgvPhIhbc8znPkY8980wMoxFAyw0o5hL74jbOh8KOpsxsBsRRNDOtn9gJ5bryXXgNrsKNHtWAU7hMSltc9YiGGWjWB6I1PmWbwhJw1ews1czIlnnyjooqmN', 0),
	(840, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
	(839, 0, 'config', 'config_mail_smtp_port', '25', 0),
	(838, 0, 'config', 'config_mail_smtp_password', '', 0),
	(837, 0, 'config', 'config_mail_smtp_username', '', 0),
	(836, 0, 'config', 'config_mail_smtp_hostname', '', 0),
	(835, 0, 'config', 'config_mail_parameter', '', 0),
	(834, 0, 'config', 'config_mail_protocol', 'mail', 0),
	(833, 0, 'config', 'config_ftp_status', '1', 0),
	(832, 0, 'config', 'config_ftp_root', '', 0),
	(831, 0, 'config', 'config_ftp_password', 'ftp', 0),
	(830, 0, 'config', 'config_ftp_username', 'ftp', 0),
	(829, 0, 'config', 'config_ftp_port', '21', 0),
	(828, 0, 'config', 'config_ftp_hostname', 'opencart23', 0),
	(827, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
	(826, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
	(825, 0, 'config', 'config_captcha_page', '["review","return","contact"]', 1),
	(824, 0, 'config', 'config_captcha', '', 0),
	(823, 0, 'config', 'config_return_status_id', '2', 0),
	(822, 0, 'config', 'config_return_id', '0', 0),
	(821, 0, 'config', 'config_affiliate_id', '4', 0),
	(820, 0, 'config', 'config_affiliate_commission', '5', 0),
	(819, 0, 'config', 'config_affiliate_auto', '0', 0),
	(818, 0, 'config', 'config_affiliate_approval', '0', 0),
	(817, 0, 'config', 'config_stock_checkout', '0', 0),
	(816, 0, 'config', 'config_stock_warning', '0', 0),
	(815, 0, 'config', 'config_stock_display', '0', 0),
	(814, 0, 'config', 'config_api_id', '1', 0),
	(813, 0, 'config', 'config_fraud_status_id', '2', 0),
	(812, 0, 'config', 'config_complete_status', '["3","5"]', 1),
	(811, 0, 'config', 'config_processing_status', '["2","3","1","12","5"]', 1),
	(810, 0, 'config', 'config_order_status_id', '1', 0),
	(808, 0, 'config', 'config_checkout_guest', '1', 0),
	(809, 0, 'config', 'config_checkout_id', '5', 0),
	(807, 0, 'config', 'config_cart_weight', '1', 0),
	(95, 0, 'free_checkout', 'free_checkout_status', '1', 0),
	(96, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
	(97, 0, 'shipping', 'shipping_sort_order', '3', 0),
	(98, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
	(99, 0, 'sub_total', 'sub_total_status', '1', 0),
	(100, 0, 'tax', 'tax_status', '0', 0),
	(101, 0, 'total', 'total_sort_order', '9', 0),
	(102, 0, 'total', 'total_status', '1', 0),
	(103, 0, 'tax', 'tax_sort_order', '5', 0),
	(104, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
	(105, 0, 'cod', 'cod_sort_order', '5', 0),
	(106, 0, 'cod', 'cod_total', '0.01', 0),
	(107, 0, 'cod', 'cod_order_status_id', '1', 0),
	(108, 0, 'cod', 'cod_geo_zone_id', '0', 0),
	(109, 0, 'cod', 'cod_status', '1', 0),
	(110, 0, 'shipping', 'shipping_status', '1', 0),
	(111, 0, 'shipping', 'shipping_estimator', '1', 0),
	(112, 0, 'coupon', 'coupon_sort_order', '4', 0),
	(113, 0, 'coupon', 'coupon_status', '1', 0),
	(114, 0, 'flat', 'flat_sort_order', '1', 0),
	(115, 0, 'flat', 'flat_status', '1', 0),
	(116, 0, 'flat', 'flat_geo_zone_id', '0', 0),
	(117, 0, 'flat', 'flat_tax_class_id', '9', 0),
	(118, 0, 'flat', 'flat_cost', '5.00', 0),
	(119, 0, 'credit', 'credit_sort_order', '7', 0),
	(120, 0, 'credit', 'credit_status', '1', 0),
	(121, 0, 'reward', 'reward_sort_order', '2', 0),
	(122, 0, 'reward', 'reward_status', '1', 0),
	(123, 0, 'category', 'category_status', '1', 0),
	(124, 0, 'account', 'account_status', '1', 0),
	(125, 0, 'affiliate', 'affiliate_status', '1', 0),
	(878, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
	(877, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
	(876, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
	(875, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
	(874, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
	(873, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
	(872, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
	(871, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
	(870, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
	(869, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
	(868, 0, 'theme_default', 'theme_default_image_product_height', '800', 0),
	(867, 0, 'theme_default', 'theme_default_image_product_width', '800', 0),
	(866, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
	(865, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
	(863, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
	(864, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
	(862, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
	(861, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
	(860, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
	(150, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
	(151, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
	(152, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
	(153, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
	(154, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
	(155, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
	(156, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
	(157, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
	(158, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
	(159, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
	(160, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
	(161, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
	(162, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
	(163, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
	(164, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
	(165, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
	(166, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
	(167, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
	(168, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
	(169, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
	(170, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
	(171, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
	(172, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
	(173, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
	(806, 0, 'config', 'config_invoice_prefix', 'INV-2016-00', 0),
	(805, 0, 'config', 'config_account_id', '3', 0),
	(802, 0, 'config', 'config_customer_group_display', '["1"]', 1),
	(803, 0, 'config', 'config_customer_price', '0', 0),
	(804, 0, 'config', 'config_login_attempts', '5', 0),
	(801, 0, 'config', 'config_customer_group_id', '1', 0),
	(800, 0, 'config', 'config_customer_search', '0', 0),
	(799, 0, 'config', 'config_customer_activity', '0', 0),
	(798, 0, 'config', 'config_customer_online', '0', 0),
	(797, 0, 'config', 'config_tax_customer', 'shipping', 0),
	(796, 0, 'config', 'config_tax_default', 'shipping', 0),
	(795, 0, 'config', 'config_tax', '0', 0),
	(794, 0, 'config', 'config_voucher_max', '1000', 0),
	(793, 0, 'config', 'config_voucher_min', '1', 0),
	(792, 0, 'config', 'config_review_guest', '1', 0),
	(791, 0, 'config', 'config_review_status', '1', 0),
	(790, 0, 'config', 'config_limit_admin', '20', 0),
	(789, 0, 'config', 'config_product_count', '1', 0),
	(788, 0, 'config', 'config_google_captcha_status', '0', 0),
	(787, 0, 'config', 'config_google_captcha_secret', '', 0),
	(786, 0, 'config', 'config_google_captcha_public', '', 0),
	(785, 0, 'config', 'config_weight_class_id', '1', 0),
	(784, 0, 'config', 'config_length_class_id', '1', 0),
	(783, 0, 'config', 'config_currency_auto', '1', 0),
	(782, 0, 'config', 'config_currency', 'RUB', 0),
	(781, 0, 'config', 'config_admin_language', 'ru-ru', 0),
	(780, 0, 'config', 'config_language', 'ru-ru', 0),
	(779, 0, 'config', 'config_zone_id', '', 0),
	(778, 0, 'config', 'config_country_id', '176', 0),
	(777, 0, 'config', 'config_location', '["1","2"]', 1),
	(776, 0, 'config', 'config_comment', 'https://www.instagram.com/pravdacveti_oren/', 0),
	(775, 0, 'config', 'config_open', '', 0),
	(774, 0, 'config', 'config_image', 'catalog/contacts-img.png', 0),
	(773, 0, 'config', 'config_fax', '495 888-88-88', 0),
	(771, 0, 'config', 'config_email', 'pravdacveti@mail.ru', 0),
	(772, 0, 'config', 'config_telephone', '495 888-88-88', 0),
	(770, 0, 'config', 'config_geocode', '', 0),
	(769, 0, 'config', 'config_address', 'г. Москва, ул. Ленина 10 оф. 32', 0),
	(768, 0, 'config', 'config_owner', 'Иванов Иван', 0),
	(764, 0, 'config', 'config_meta_keyword', '', 0),
	(765, 0, 'config', 'config_theme', 'theme_default', 0),
	(766, 0, 'config', 'config_layout_id', '4', 0),
	(767, 0, 'config', 'config_name', 'Интернет магазин Opencart &quot;Русская сборка&quot;', 0),
	(763, 0, 'config', 'config_meta_description', 'Мой магазин', 0),
	(762, 0, 'config', 'config_meta_title', 'Интернет магазин Opencart &quot;Русская сборка&quot;', 0),
	(859, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
	(858, 0, 'theme_default', 'theme_default_status', '1', 0),
	(857, 0, 'theme_default', 'theme_default_directory', 'default', 0),
	(880, 0, 'theme_default', 'theme_default_image_location_height', '601', 0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_stock_status
CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_stock_status: 4 rows
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
REPLACE INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
	(7, 1, 'В наличии'),
	(8, 1, 'Предзаказ'),
	(5, 1, 'Нет в наличии'),
	(6, 1, 'Ожидание 2-3 дня');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_store
CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_store: 0 rows
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_tax_class
CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_tax_class: 1 rows
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
REPLACE INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
	(9, 'Налоги', 'Облагаемые налогом', '2014-06-06 23:00:00', '2014-09-09 11:50:31');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_tax_rate
CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_tax_rate: 1 rows
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
REPLACE INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
	(87, 3, 'НДС', 18.0000, 'F', '2011-09-21 21:49:23', '2014-09-09 11:49:32');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_tax_rate_to_customer_group
CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_tax_rate_to_customer_group: 2 rows
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
REPLACE INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
	(86, 1),
	(87, 1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_tax_rule
CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_tax_rule: 4 rows
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
REPLACE INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
	(121, 10, 86, 'payment', 1),
	(120, 10, 87, 'store', 0),
	(128, 9, 86, 'shipping', 1),
	(127, 9, 87, 'shipping', 2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_theme
CREATE TABLE IF NOT EXISTS `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` text NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_theme: 0 rows
/*!40000 ALTER TABLE `oc_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_theme` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_translation
CREATE TABLE IF NOT EXISTS `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_translation: 0 rows
/*!40000 ALTER TABLE `oc_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_translation` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_upload
CREATE TABLE IF NOT EXISTS `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_upload: 0 rows
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_url_alias
CREATE TABLE IF NOT EXISTS `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=924 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_url_alias: 61 rows
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
REPLACE INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
	(900, 'category_id=71', 'podarki'),
	(921, 'product_id=51', 'avtorskij-buket-novogodnee-nastroenie-4'),
	(730, 'manufacturer_id=8', 'apple'),
	(910, 'information_id=4', 'about_us'),
	(920, 'product_id=50', 'avtorskij-avtorskij-buket-novogodnee-nastroenie'),
	(894, 'category_id=65', 'kompozicii-i-korziny'),
	(895, 'category_id=66', 'cvety-po-povodu'),
	(896, 'category_id=67', 'novyj-god'),
	(897, 'category_id=68', 'den-mamy'),
	(898, 'category_id=69', '8-marta'),
	(899, 'category_id=70', 'komnatnye-cvety'),
	(893, 'category_id=64', 'monobukety'),
	(901, 'category_id=59', 'bukety'),
	(889, 'category_id=60', 's-gerberami'),
	(890, 'category_id=61', 's-rozami'),
	(891, 'category_id=62', 's-tyulpanami'),
	(892, 'category_id=63', 'bolshie-bukety'),
	(923, 'product_id=53', 'avtorskij-buket-novogodnee-nastroenie-3'),
	(922, 'product_id=52', 'avtorskij-buket-novogodnee-nastroenie-2'),
	(828, 'manufacturer_id=9', 'canon'),
	(829, 'manufacturer_id=5', 'htc'),
	(830, 'manufacturer_id=7', 'hewlett-packard'),
	(831, 'manufacturer_id=6', 'palm'),
	(832, 'manufacturer_id=10', 'sony'),
	(908, 'information_id=6', 'delivery'),
	(909, 'information_id=3', 'reviews'),
	(904, 'information_id=5', 'terms'),
	(845, 'common/home', ''),
	(846, 'information/contact', 'contact'),
	(847, 'information/sitemap', 'sitemap'),
	(848, 'product/special', 'specials'),
	(849, 'product/manufacturer', 'brands'),
	(850, 'product/compare', 'compare-products'),
	(851, 'product/search', 'search'),
	(852, 'checkout/cart', 'cart'),
	(853, 'checkout/checkout', 'checkout'),
	(854, 'account/login', 'login'),
	(855, 'account/logout', 'logout'),
	(856, 'account/voucher', 'vouchers'),
	(857, 'account/wishlist', 'wishlist'),
	(858, 'account/account', 'my-account'),
	(859, 'account/order', 'order-history'),
	(860, 'account/newsletter', 'newsletter'),
	(861, 'account/return/add', 'return-add'),
	(862, 'account/forgotten', 'forgot-password'),
	(863, 'account/download', 'downloads'),
	(864, 'account/return', 'returns'),
	(865, 'account/transaction', 'transactions'),
	(866, 'account/register', 'create-account'),
	(867, 'account/recurring', 'recurring'),
	(868, 'account/address', 'address-book'),
	(869, 'account/reward', 'reward-points'),
	(870, 'account/edit', 'edit-account'),
	(871, 'account/password', 'change-password'),
	(880, 'affiliate/forgotten', 'affiliate-forgot-password'),
	(881, 'affiliate/register', 'create-affiliate-account'),
	(882, 'affiliate/login', 'affiliate-login'),
	(883, 'affiliate/payment', 'affiliate-payment'),
	(884, 'affiliate/tracking', 'affiliate-tracking'),
	(885, 'affiliate/transaction', 'affiliate-transaction'),
	(886, 'affiliate/account', 'affiliates');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_user
CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_user: 1 rows
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
REPLACE INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
	(1, 1, 'admin', '4ca8272af889a9ce036f7565820c3bcfc0c68364', '1pVu1yJpX', 'John', 'Doe', 'admin@admin.ru', '', '', '127.0.0.1', 1, '2021-01-27 11:01:46');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_user_group
CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_user_group: 2 rows
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
REPLACE INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
	(1, 'Administrator', '{"access":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/menu","design\\/theme","design\\/translation","event\\/compatibility","event\\/theme","extension\\/analytics\\/google_analytics","extension\\/captcha\\/basic_captcha","extension\\/captcha\\/google_captcha","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/event","extension\\/extension","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/fraud\\/ip","extension\\/installer","extension\\/modification","extension\\/module\\/account","extension\\/module\\/addictive","extension\\/module\\/affiliate","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/buyoneclick","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/latest","extension\\/module\\/pp_button","extension\\/module\\/slideshow","extension\\/module\\/sms_alert","extension\\/module\\/special","extension\\/module\\/store","extension\\/openbay","extension\\/payment\\/bank_transfer","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/free_checkout","extension\\/payment\\/liqpay","extension\\/payment\\/pp_express","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_standard","extension\\/shipping\\/citylink","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/pickup","extension\\/shipping\\/weight","extension\\/store","extension\\/theme\\/theme_default","extension\\/total\\/addictive","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/customer_search","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","review\\/store_review","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/compatibility","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission"],"modify":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/menu","design\\/theme","design\\/translation","event\\/compatibility","event\\/theme","extension\\/analytics\\/google_analytics","extension\\/captcha\\/basic_captcha","extension\\/captcha\\/google_captcha","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/event","extension\\/extension","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/fraud\\/ip","extension\\/installer","extension\\/modification","extension\\/module\\/account","extension\\/module\\/addictive","extension\\/module\\/affiliate","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/buyoneclick","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/latest","extension\\/module\\/pp_button","extension\\/module\\/slideshow","extension\\/module\\/sms_alert","extension\\/module\\/special","extension\\/module\\/store","extension\\/openbay","extension\\/payment\\/bank_transfer","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/free_checkout","extension\\/payment\\/liqpay","extension\\/payment\\/pp_express","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_standard","extension\\/shipping\\/citylink","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/pickup","extension\\/shipping\\/weight","extension\\/store","extension\\/theme\\/theme_default","extension\\/total\\/addictive","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/customer_search","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","review\\/store_review","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/compatibility","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission"]}'),
	(10, 'Demonstration', '');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_voucher
CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_voucher: 0 rows
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_voucher_history
CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_voucher_history: 0 rows
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_voucher_theme
CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_voucher_theme: 3 rows
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
REPLACE INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
	(8, 'catalog/demo/canon_eos_5d_2.jpg'),
	(7, 'catalog/demo/gift-voucher-birthday.jpg'),
	(6, 'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_voucher_theme_description
CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_voucher_theme_description: 3 rows
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
REPLACE INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
	(6, 1, 'Новый год'),
	(7, 1, 'День рождения'),
	(8, 1, 'Другое');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_weight_class
CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_weight_class: 4 rows
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
REPLACE INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
	(1, 1.00000000),
	(2, 1000.00000000),
	(5, 2.20460000),
	(6, 35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_weight_class_description
CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_weight_class_description: 2 rows
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
REPLACE INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
	(1, 1, 'Килограмм', 'кг'),
	(2, 1, 'Грамм', 'г');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_zone
CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_zone: 169 rows
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
REPLACE INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
	(1, 20, 'Брест', 'BR', 1),
	(2, 20, 'Гомель', 'HO', 1),
	(3, 20, 'Минск', 'HM', 1),
	(4, 20, 'Гродно', 'HR', 1),
	(5, 20, 'Могилев', 'MA', 1),
	(6, 20, 'Минская область', 'MI', 1),
	(7, 20, 'Витебск', 'VI', 1),
	(8, 80, 'Abkhazia', 'AB', 1),
	(9, 80, 'Ajaria', 'AJ', 1),
	(10, 80, 'Tbilisi', 'TB', 1),
	(11, 80, 'Guria', 'GU', 1),
	(12, 80, 'Imereti', 'IM', 1),
	(13, 80, 'Kakheti', 'KA', 1),
	(14, 80, 'Kvemo Kartli', 'KK', 1),
	(15, 80, 'Mtskheta-Mtianeti', 'MM', 1),
	(16, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
	(17, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
	(18, 80, 'Samtskhe-Javakheti', 'SJ', 1),
	(19, 80, 'Shida Kartli', 'SK', 1),
	(20, 109, 'Алматинская область', 'AL', 1),
	(21, 109, 'Алматы - город республ-го значения', 'AC', 1),
	(22, 109, 'Акмолинская область', 'AM', 1),
	(23, 109, 'Актюбинская область', 'AQ', 1),
	(24, 109, 'Астана - город республ-го значения', 'AS', 1),
	(25, 109, 'Атырауская область', 'AT', 1),
	(26, 109, 'Западно-Казахстанская область', 'BA', 1),
	(27, 109, 'Байконур - город республ-го значения', 'BY', 1),
	(28, 109, 'Мангистауская область', 'MA', 1),
	(29, 109, 'Южно-Казахстанская область', 'ON', 1),
	(30, 109, 'Павлодарская область', 'PA', 1),
	(31, 109, 'Карагандинская область', 'QA', 1),
	(32, 109, 'Костанайская область', 'QO', 1),
	(33, 109, 'Кызылординская область', 'QY', 1),
	(34, 109, 'Восточно-Казахстанская область', 'SH', 1),
	(35, 109, 'Северо-Казахстанская область', 'SO', 1),
	(36, 109, 'Жамбылская область', 'ZH', 1),
	(37, 115, 'Bishkek', 'GB', 1),
	(38, 115, 'Batken', 'B', 1),
	(39, 115, 'Chu', 'C', 1),
	(40, 115, 'Jalal-Abad', 'J', 1),
	(41, 115, 'Naryn', 'N', 1),
	(42, 115, 'Osh', 'O', 1),
	(43, 115, 'Talas', 'T', 1),
	(44, 115, 'Ysyk-Kol', 'Y', 1),
	(45, 176, 'Республика Хакасия', 'KK', 1),
	(46, 176, 'Московская область', 'MOS', 1),
	(47, 176, 'Чукотский АО', 'CHU', 1),
	(48, 176, 'Архангельская область', 'ARK', 1),
	(49, 176, 'Астраханская область', 'AST', 1),
	(50, 176, 'Алтайский край', 'ALT', 1),
	(51, 176, 'Белгородская область', 'BEL', 1),
	(52, 176, 'Еврейская АО', 'YEV', 1),
	(53, 176, 'Амурская область', 'AMU', 1),
	(54, 176, 'Брянская область', 'BRY', 1),
	(55, 176, 'Чувашская Республика', 'CU', 1),
	(56, 176, 'Челябинская область', 'CHE', 1),
	(57, 176, 'Карачаево-Черкесия', 'KC', 1),
	(58, 176, 'Забайкальский край', 'ZAB', 1),
	(59, 176, 'Ленинградская область', 'LEN', 1),
	(60, 176, 'Республика Калмыкия', 'KL', 1),
	(61, 176, 'Сахалинская область', 'SAK', 1),
	(62, 176, 'Республика Алтай', 'AL', 1),
	(63, 176, 'Чеченская Республика', 'CE', 1),
	(64, 176, 'Иркутская область', 'IRK', 1),
	(65, 176, 'Ивановская область', 'IVA', 1),
	(66, 176, 'Удмуртская Республика', 'UD', 1),
	(67, 176, 'Калининградская область', 'KGD', 1),
	(68, 176, 'Калужская область', 'KLU', 1),
	(69, 176, 'Республика Татарстан', 'TA', 1),
	(70, 176, 'Кемеровская область', 'KEM', 1),
	(71, 176, 'Хабаровский край', 'KHA', 1),
	(72, 176, 'Ханты-Мансийский АО - Югра', 'KHM', 1),
	(73, 176, 'Костромская область', 'KOS', 1),
	(74, 176, 'Краснодарский край', 'KDA', 1),
	(75, 176, 'Красноярский край', 'KYA', 1),
	(76, 176, 'Курганская область', 'KGN', 1),
	(77, 176, 'Курская область', 'KRS', 1),
	(78, 176, 'Республика Тыва', 'TY', 1),
	(79, 176, 'Липецкая область', 'LIP', 1),
	(80, 176, 'Магаданская область', 'MAG', 1),
	(81, 176, 'Республика Дагестан', 'DA', 1),
	(82, 176, 'Республика Адыгея', 'AD', 1),
	(83, 176, 'Москва', 'MOW', 1),
	(84, 176, 'Мурманская область', 'MUR', 1),
	(85, 176, 'Республика Кабардино-Балкария', 'KB', 1),
	(86, 176, 'Ненецкий АО', 'NEN', 1),
	(87, 176, 'Республика Ингушетия', 'IN', 1),
	(88, 176, 'Нижегородская область', 'NIZ', 1),
	(89, 176, 'Новгородская область', 'NGR', 1),
	(90, 176, 'Новосибирская область', 'NVS', 1),
	(91, 176, 'Омская область', 'OMS', 1),
	(92, 176, 'Орловская область', 'ORL', 1),
	(93, 176, 'Оренбургская область', 'ORE', 1),
	(94, 176, 'Пензенская область', 'PNZ', 1),
	(95, 176, 'Пермский край', 'PER', 1),
	(96, 176, 'Камчатский край', 'KAM', 1),
	(97, 176, 'Республика Карелия', 'KR', 1),
	(98, 176, 'Псковская область', 'PSK', 1),
	(99, 176, 'Ростовская область', 'ROS', 1),
	(100, 176, 'Рязанская область', 'RYA', 1),
	(101, 176, 'Ямало-Ненецкий АО', 'YAN', 1),
	(102, 176, 'Самарская область', 'SAM', 1),
	(103, 176, 'Республика Мордовия', 'MO', 1),
	(104, 176, 'Саратовская область', 'SAR', 1),
	(105, 176, 'Смоленская область', 'SMO', 1),
	(106, 176, 'Санкт-Петербург', 'SPE', 1),
	(107, 176, 'Ставропольский край', 'STA', 1),
	(108, 176, 'Республика Коми', 'KO', 1),
	(109, 176, 'Тамбовская область', 'TAM', 1),
	(110, 176, 'Томская область', 'TOM', 1),
	(111, 176, 'Тульская область', 'TUL', 1),
	(112, 176, 'Тверская область', 'TVE', 1),
	(113, 176, 'Тюменская область', 'TYU', 1),
	(114, 176, 'Республика Башкортостан', 'BA', 1),
	(115, 176, 'Ульяновская область', 'ULY', 1),
	(116, 176, 'Республика Бурятия', 'BU', 1),
	(117, 176, 'Республика Северная Осетия', 'SE', 1),
	(118, 176, 'Владимирская область', 'VLA', 1),
	(119, 176, 'Приморский край', 'PRI', 1),
	(120, 176, 'Волгоградская область', 'VGG', 1),
	(121, 176, 'Вологодская область', 'VLG', 1),
	(122, 176, 'Воронежская область', 'VOR', 1),
	(123, 176, 'Кировская область', 'KIR', 1),
	(124, 176, 'Республика Саха', 'SA', 1),
	(125, 176, 'Ярославская область', 'YAR', 1),
	(126, 176, 'Свердловская область', 'SVE', 1),
	(127, 176, 'Республика Марий Эл', 'ME', 1),
	(128, 176, 'Республика Крым', 'CR', 1),
	(129, 220, 'Черкассы', 'CK', 1),
	(130, 220, 'Чернигов', 'CH', 1),
	(131, 220, 'Черновцы', 'CV', 1),
	(132, 220, 'Днепропетровск', 'DN', 1),
	(133, 220, 'Донецк', 'DO', 1),
	(134, 220, 'Ивано-Франковск', 'IV', 1),
	(135, 220, 'Харьков', 'KH', 1),
	(136, 220, 'Хмельницкий', 'KM', 1),
	(137, 220, 'Кировоград', 'KR', 1),
	(138, 220, 'Киевская область', 'KV', 1),
	(139, 220, 'Киев', 'KY', 1),
	(140, 220, 'Луганск', 'LU', 1),
	(141, 220, 'Львов', 'LV', 1),
	(142, 220, 'Николаев', 'MY', 1),
	(143, 220, 'Одесса', 'OD', 1),
	(144, 220, 'Полтава', 'PO', 1),
	(145, 220, 'Ровно', 'RI', 1),
	(146, 176, 'Севастополь', 'SEV', 1),
	(147, 220, 'Сумы', 'SU', 1),
	(148, 220, 'Тернополь', 'TE', 1),
	(149, 220, 'Винница', 'VI', 1),
	(150, 220, 'Луцк', 'VO', 1),
	(151, 220, 'Ужгород', 'ZK', 1),
	(152, 220, 'Запорожье', 'ZA', 1),
	(153, 220, 'Житомир', 'ZH', 1),
	(154, 220, 'Херсон', 'KE', 1),
	(155, 226, 'Andijon', 'AN', 1),
	(156, 226, 'Buxoro', 'BU', 1),
	(157, 226, 'Farg\'ona', 'FA', 1),
	(158, 226, 'Jizzax', 'JI', 1),
	(159, 226, 'Namangan', 'NG', 1),
	(160, 226, 'Navoiy', 'NW', 1),
	(161, 226, 'Qashqadaryo', 'QA', 1),
	(162, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
	(163, 226, 'Samarqand', 'SA', 1),
	(164, 226, 'Sirdaryo', 'SI', 1),
	(165, 226, 'Surxondaryo', 'SU', 1),
	(166, 226, 'Toshkent City', 'TK', 1),
	(167, 226, 'Toshkent Region', 'TO', 1),
	(168, 226, 'Xorazm', 'XO', 1),
	(169, 176, 'Байконур - город республ-го значения', 'BY', 1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;

-- Дамп структуры для таблица oc23.oc_zone_to_geo_zone
CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы oc23.oc_zone_to_geo_zone: 2 rows
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
REPLACE INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
	(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(110, 176, 0, 3, '2014-09-09 11:48:13', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

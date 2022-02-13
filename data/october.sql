-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para october
DROP DATABASE IF EXISTS `october`;
CREATE DATABASE IF NOT EXISTS `october` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `october`;

-- Volcando estructura para tabla october.backend_access_log
DROP TABLE IF EXISTS `backend_access_log`;
CREATE TABLE IF NOT EXISTS `backend_access_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.backend_access_log: ~0 rows (aproximadamente)
DELETE FROM `backend_access_log`;
/*!40000 ALTER TABLE `backend_access_log` DISABLE KEYS */;
INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
	(1, 1, '::1', '2022-02-07 05:07:03', '2022-02-07 05:07:03');
/*!40000 ALTER TABLE `backend_access_log` ENABLE KEYS */;

-- Volcando estructura para tabla october.backend_users
DROP TABLE IF EXISTS `backend_users`;
CREATE TABLE IF NOT EXISTS `backend_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) unsigned DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_unique` (`login`),
  UNIQUE KEY `email_unique` (`email`),
  KEY `act_code_index` (`activation_code`),
  KEY `reset_code_index` (`reset_password_code`),
  KEY `admin_role_index` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.backend_users: ~0 rows (aproximadamente)
DELETE FROM `backend_users`;
/*!40000 ALTER TABLE `backend_users` DISABLE KEYS */;
INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
	(1, 'Jhon', 'Sandoval', 'admin', 'webdeveloper84@gmail.com', '$2y$10$zt3UA3fvz4QS.LeSzwbz5.w7jozeg/0/6ihWCwlVjULO/n8eiiApO', NULL, '$2y$10$NVDxgv5ipBZi0hrT6Q34z.DpyqUaPS85VpN8C0/9Fva6cFXz3IVfa', NULL, '', 1, 2, NULL, '2022-02-07 05:07:03', '2022-02-07 04:48:01', '2022-02-07 05:07:03', NULL, 1);
/*!40000 ALTER TABLE `backend_users` ENABLE KEYS */;

-- Volcando estructura para tabla october.backend_users_groups
DROP TABLE IF EXISTS `backend_users_groups`;
CREATE TABLE IF NOT EXISTS `backend_users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `user_group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.backend_users_groups: ~0 rows (aproximadamente)
DELETE FROM `backend_users_groups`;
/*!40000 ALTER TABLE `backend_users_groups` DISABLE KEYS */;
INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `backend_users_groups` ENABLE KEYS */;

-- Volcando estructura para tabla october.backend_user_groups
DROP TABLE IF EXISTS `backend_user_groups`;
CREATE TABLE IF NOT EXISTS `backend_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_unique` (`name`),
  KEY `code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.backend_user_groups: ~0 rows (aproximadamente)
DELETE FROM `backend_user_groups`;
/*!40000 ALTER TABLE `backend_user_groups` DISABLE KEYS */;
INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
	(1, 'Owners', '2022-02-07 04:48:01', '2022-02-07 04:48:01', 'owners', 'Default group for website owners.', 0);
/*!40000 ALTER TABLE `backend_user_groups` ENABLE KEYS */;

-- Volcando estructura para tabla october.backend_user_preferences
DROP TABLE IF EXISTS `backend_user_preferences`;
CREATE TABLE IF NOT EXISTS `backend_user_preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.backend_user_preferences: ~2 rows (aproximadamente)
DELETE FROM `backend_user_preferences`;
/*!40000 ALTER TABLE `backend_user_preferences` DISABLE KEYS */;
INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
	(1, 1, 'backend', 'reportwidgets', 'dashboard', '{"welcome":{"class":"Backend\\\\ReportWidgets\\\\Welcome","sortOrder":"50","configuration":{"title":"Welcome","ocWidgetWidth":"6","ocWidgetNewRow":null}},"systemStatus":{"class":"System\\\\ReportWidgets\\\\Status","sortOrder":"70","configuration":{"title":"System status","ocWidgetWidth":"6","ocWidgetNewRow":null}},"activeTheme":{"class":"Cms\\\\ReportWidgets\\\\ActiveTheme","sortOrder":"60","configuration":{"title":"Website","ocWidgetWidth":"6","ocWidgetNewRow":null}}}'),
	(2, 1, 'backend', 'backend', 'preferences', '{"locale":"en","fallback_locale":"en","timezone":"UTC","editor_font_size":"12","editor_word_wrap":"fluid","editor_code_folding":"manual","editor_tab_size":"4","editor_theme":"twilight","editor_show_invisibles":"0","editor_highlight_active_line":"1","editor_use_hard_tabs":"0","editor_show_gutter":"1","editor_auto_closing":"0","editor_autocompletion":"manual","editor_enable_snippets":"0","editor_display_indent_guides":"0","editor_show_print_margin":"0","user_id":1}');
/*!40000 ALTER TABLE `backend_user_preferences` ENABLE KEYS */;

-- Volcando estructura para tabla october.backend_user_roles
DROP TABLE IF EXISTS `backend_user_roles`;
CREATE TABLE IF NOT EXISTS `backend_user_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_unique` (`name`),
  KEY `role_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.backend_user_roles: ~2 rows (aproximadamente)
DELETE FROM `backend_user_roles`;
/*!40000 ALTER TABLE `backend_user_roles` DISABLE KEYS */;
INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
	(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2022-02-07 04:48:01', '2022-02-07 04:48:01'),
	(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2022-02-07 04:48:01', '2022-02-07 04:48:01');
/*!40000 ALTER TABLE `backend_user_roles` ENABLE KEYS */;

-- Volcando estructura para tabla october.backend_user_throttle
DROP TABLE IF EXISTS `backend_user_throttle`;
CREATE TABLE IF NOT EXISTS `backend_user_throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_user_throttle_user_id_index` (`user_id`),
  KEY `backend_user_throttle_ip_address_index` (`ip_address`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.backend_user_throttle: ~0 rows (aproximadamente)
DELETE FROM `backend_user_throttle`;
/*!40000 ALTER TABLE `backend_user_throttle` DISABLE KEYS */;
INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
	(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL);
/*!40000 ALTER TABLE `backend_user_throttle` ENABLE KEYS */;

-- Volcando estructura para tabla october.cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.cache: ~0 rows (aproximadamente)
DELETE FROM `cache`;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;

-- Volcando estructura para tabla october.cms_theme_data
DROP TABLE IF EXISTS `cms_theme_data`;
CREATE TABLE IF NOT EXISTS `cms_theme_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_theme_data_theme_index` (`theme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.cms_theme_data: ~0 rows (aproximadamente)
DELETE FROM `cms_theme_data`;
/*!40000 ALTER TABLE `cms_theme_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_theme_data` ENABLE KEYS */;

-- Volcando estructura para tabla october.cms_theme_logs
DROP TABLE IF EXISTS `cms_theme_logs`;
CREATE TABLE IF NOT EXISTS `cms_theme_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `old_content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_theme_logs_type_index` (`type`),
  KEY `cms_theme_logs_theme_index` (`theme`),
  KEY `cms_theme_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.cms_theme_logs: ~0 rows (aproximadamente)
DELETE FROM `cms_theme_logs`;
/*!40000 ALTER TABLE `cms_theme_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_theme_logs` ENABLE KEYS */;

-- Volcando estructura para tabla october.cms_theme_templates
DROP TABLE IF EXISTS `cms_theme_templates`;
CREATE TABLE IF NOT EXISTS `cms_theme_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(10) unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_theme_templates_source_index` (`source`),
  KEY `cms_theme_templates_path_index` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.cms_theme_templates: ~0 rows (aproximadamente)
DELETE FROM `cms_theme_templates`;
/*!40000 ALTER TABLE `cms_theme_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_theme_templates` ENABLE KEYS */;

-- Volcando estructura para tabla october.deferred_bindings
DROP TABLE IF EXISTS `deferred_bindings`;
CREATE TABLE IF NOT EXISTS `deferred_bindings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deferred_bindings_master_type_index` (`master_type`),
  KEY `deferred_bindings_master_field_index` (`master_field`),
  KEY `deferred_bindings_slave_type_index` (`slave_type`),
  KEY `deferred_bindings_slave_id_index` (`slave_id`),
  KEY `deferred_bindings_session_key_index` (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.deferred_bindings: ~0 rows (aproximadamente)
DELETE FROM `deferred_bindings`;
/*!40000 ALTER TABLE `deferred_bindings` DISABLE KEYS */;
/*!40000 ALTER TABLE `deferred_bindings` ENABLE KEYS */;

-- Volcando estructura para tabla october.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla october.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.jobs: ~0 rows (aproximadamente)
DELETE FROM `jobs`;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Volcando estructura para tabla october.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.migrations: ~40 rows (aproximadamente)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
	(2, '2013_10_01_000002_Db_System_Files', 1),
	(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
	(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
	(5, '2013_10_01_000005_Db_System_Settings', 1),
	(6, '2013_10_01_000006_Db_System_Parameters', 1),
	(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
	(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
	(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
	(10, '2014_10_01_000010_Db_Jobs', 1),
	(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
	(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
	(13, '2014_10_01_000013_Db_System_Sessions', 1),
	(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
	(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
	(16, '2015_10_01_000016_Db_Cache', 1),
	(17, '2015_10_01_000017_Db_System_Revisions', 1),
	(18, '2015_10_01_000018_Db_FailedJobs', 1),
	(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
	(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
	(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
	(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
	(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
	(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
	(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
	(26, '2013_10_01_000001_Db_Backend_Users', 2),
	(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
	(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
	(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
	(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
	(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
	(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
	(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
	(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
	(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
	(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
	(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
	(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
	(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
	(40, '2018_11_01_000001_Db_Cms_Theme_Templates', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla october.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.sessions: ~0 rows (aproximadamente)
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Volcando estructura para tabla october.system_event_logs
DROP TABLE IF EXISTS `system_event_logs`;
CREATE TABLE IF NOT EXISTS `system_event_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_event_logs_level_index` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.system_event_logs: ~2 rows (aproximadamente)
DELETE FROM `system_event_logs`;
/*!40000 ALTER TABLE `system_event_logs` DISABLE KEYS */;
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
	(1, 'error', 'Twig\\Error\\SyntaxError: Unknown "subtitle" tag in "C:\\laragon\\www\\october/themes/maditek/pages/maditek-demo.htm" at line 1. in C:\\laragon\\www\\october\\vendor\\twig\\twig\\src\\Parser.php:175\nStack trace:\n#0 C:\\laragon\\www\\october\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#1 C:\\laragon\\www\\october\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#2 C:\\laragon\\www\\october\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#3 C:\\laragon\\www\\october\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#4 C:\\laragon\\www\\october\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\laragon\\\\www\\\\...\', NULL)\n#5 C:\\laragon\\www\\october\\modules\\cms\\classes\\Controller.php(424): Twig\\Environment->loadTemplate(\'C:\\\\laragon\\\\www\\\\...\')\n#6 C:\\laragon\\www\\october\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#7 C:\\laragon\\www\\october\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#8 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#9 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#10 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#11 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#12 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#13 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#14 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#33 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#34 C:\\laragon\\www\\october\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#36 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\laragon\\www\\october\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\laragon\\www\\october\\vendor\\october\\rain\\src\\Http\\Middleware\\TrustHosts.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Http\\Middleware\\TrustHosts->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\laragon\\www\\october\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 {main}', NULL, '2022-02-12 15:40:37', '2022-02-12 15:40:37'),
	(2, 'error', 'Twig\\Error\\SyntaxError: Unexpected character "\'" in "C:\\laragon\\www\\october/themes/maditek/pages/templating.htm" at line 22. in C:\\laragon\\www\\october\\vendor\\twig\\twig\\src\\Lexer.php:365\nStack trace:\n#0 C:\\laragon\\www\\october\\vendor\\twig\\twig\\src\\Lexer.php(292): Twig\\Lexer->lexExpression()\n#1 C:\\laragon\\www\\october\\vendor\\twig\\twig\\src\\Lexer.php(186): Twig\\Lexer->lexVar()\n#2 C:\\laragon\\www\\october\\vendor\\twig\\twig\\src\\Environment.php(542): Twig\\Lexer->tokenize(Object(Twig\\Source))\n#3 C:\\laragon\\www\\october\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->tokenize(Object(Twig\\Source))\n#4 C:\\laragon\\www\\october\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 C:\\laragon\\www\\october\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\laragon\\\\www\\\\...\', NULL)\n#6 C:\\laragon\\www\\october\\modules\\cms\\classes\\Controller.php(424): Twig\\Environment->loadTemplate(\'C:\\\\laragon\\\\www\\\\...\')\n#7 C:\\laragon\\www\\october\\modules\\cms\\classes\\Controller.php(225): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#8 C:\\laragon\\www\\october\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'templating\')\n#9 [internal function]: Cms\\Classes\\CmsController->run(\'templating\')\n#10 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#11 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#14 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#15 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\laragon\\www\\october\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\laragon\\www\\october\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(25): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\laragon\\www\\october\\vendor\\october\\rain\\src\\Http\\Middleware\\TrustHosts.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Http\\Middleware\\TrustHosts->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#47 C:\\laragon\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#48 C:\\laragon\\www\\october\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#49 {main}', NULL, '2022-02-12 16:32:47', '2022-02-12 16:32:47'),
	(3, 'error', 'Symfony\\Component\\Debug\\Exception\\FatalErrorException: Cannot use empty array elements in arrays in C:\\laragon\\www\\october\\modules\\cms\\classes\\CodeParser.php(291) : eval()\'d code:10\nStack trace:\n#0 {main}', NULL, '2022-02-12 16:57:56', '2022-02-12 16:57:56');
/*!40000 ALTER TABLE `system_event_logs` ENABLE KEYS */;

-- Volcando estructura para tabla october.system_files
DROP TABLE IF EXISTS `system_files`;
CREATE TABLE IF NOT EXISTS `system_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_files_field_index` (`field`),
  KEY `system_files_attachment_id_index` (`attachment_id`),
  KEY `system_files_attachment_type_index` (`attachment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.system_files: ~1 rows (aproximadamente)
DELETE FROM `system_files`;
/*!40000 ALTER TABLE `system_files` DISABLE KEYS */;
INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
	(2, '6200b11b04223228020123.jpg', 'jhon_perfil.jpg', 25394, 'image/jpeg', NULL, NULL, 'avatar', '1', 'Backend\\Models\\User', 1, 2, '2022-02-07 05:41:47', '2022-02-07 05:41:50');
/*!40000 ALTER TABLE `system_files` ENABLE KEYS */;

-- Volcando estructura para tabla october.system_mail_layouts
DROP TABLE IF EXISTS `system_mail_layouts`;
CREATE TABLE IF NOT EXISTS `system_mail_layouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.system_mail_layouts: ~2 rows (aproximadamente)
DELETE FROM `system_mail_layouts`;
/*!40000 ALTER TABLE `system_mail_layouts` DISABLE KEYS */;
INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
	(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n    <meta name="viewport" content="width=device-width, initial-scale=1.0" />\n    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\n</head>\n<body>\n    <style type="text/css" media="screen">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class="wrapper layout-default" width="100%" cellpadding="0" cellspacing="0">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align="center">\n                <table class="content" width="100%" cellpadding="0" cellspacing="0">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class="body" width="100%" cellpadding="0" cellspacing="0">\n                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class="content-cell">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ "now"|date("Y") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2022-02-07 04:48:00', '2022-02-07 04:48:00'),
	(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n    <meta name="viewport" content="width=device-width, initial-scale=1.0" />\n    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\n</head>\n<body>\n    <style type="text/css" media="screen">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class="wrapper layout-system" width="100%" cellpadding="0" cellspacing="0">\n        <tr>\n            <td align="center">\n                <table class="content" width="100%" cellpadding="0" cellspacing="0">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class="body" width="100%" cellpadding="0" cellspacing="0">\n                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class="content-cell">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2022-02-07 04:48:01', '2022-02-07 04:48:01');
/*!40000 ALTER TABLE `system_mail_layouts` ENABLE KEYS */;

-- Volcando estructura para tabla october.system_mail_partials
DROP TABLE IF EXISTS `system_mail_partials`;
CREATE TABLE IF NOT EXISTS `system_mail_partials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.system_mail_partials: ~0 rows (aproximadamente)
DELETE FROM `system_mail_partials`;
/*!40000 ALTER TABLE `system_mail_partials` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_mail_partials` ENABLE KEYS */;

-- Volcando estructura para tabla october.system_mail_templates
DROP TABLE IF EXISTS `system_mail_templates`;
CREATE TABLE IF NOT EXISTS `system_mail_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_mail_templates_layout_id_index` (`layout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.system_mail_templates: ~0 rows (aproximadamente)
DELETE FROM `system_mail_templates`;
/*!40000 ALTER TABLE `system_mail_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_mail_templates` ENABLE KEYS */;

-- Volcando estructura para tabla october.system_parameters
DROP TABLE IF EXISTS `system_parameters`;
CREATE TABLE IF NOT EXISTS `system_parameters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `item_index` (`namespace`,`group`,`item`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.system_parameters: ~5 rows (aproximadamente)
DELETE FROM `system_parameters`;
/*!40000 ALTER TABLE `system_parameters` DISABLE KEYS */;
INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
	(1, 'system', 'update', 'count', '0'),
	(2, 'system', 'core', 'hash', '"45390609a8a3b9d3c06e70e73bcf6535"'),
	(3, 'system', 'core', 'build', '"474"'),
	(4, 'system', 'update', 'retry', '1644762870'),
	(5, 'cms', 'theme', 'active', '"maditek"');
/*!40000 ALTER TABLE `system_parameters` ENABLE KEYS */;

-- Volcando estructura para tabla october.system_plugin_history
DROP TABLE IF EXISTS `system_plugin_history`;
CREATE TABLE IF NOT EXISTS `system_plugin_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_plugin_history_code_index` (`code`),
  KEY `system_plugin_history_type_index` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.system_plugin_history: ~0 rows (aproximadamente)
DELETE FROM `system_plugin_history`;
/*!40000 ALTER TABLE `system_plugin_history` DISABLE KEYS */;
INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
	(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2022-02-07 04:48:00');
/*!40000 ALTER TABLE `system_plugin_history` ENABLE KEYS */;

-- Volcando estructura para tabla october.system_plugin_versions
DROP TABLE IF EXISTS `system_plugin_versions`;
CREATE TABLE IF NOT EXISTS `system_plugin_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `system_plugin_versions_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.system_plugin_versions: ~0 rows (aproximadamente)
DELETE FROM `system_plugin_versions`;
/*!40000 ALTER TABLE `system_plugin_versions` DISABLE KEYS */;
INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
	(1, 'October.Demo', '1.0.1', '2022-02-07 04:48:00', 0, 0);
/*!40000 ALTER TABLE `system_plugin_versions` ENABLE KEYS */;

-- Volcando estructura para tabla october.system_request_logs
DROP TABLE IF EXISTS `system_request_logs`;
CREATE TABLE IF NOT EXISTS `system_request_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.system_request_logs: ~0 rows (aproximadamente)
DELETE FROM `system_request_logs`;
/*!40000 ALTER TABLE `system_request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_request_logs` ENABLE KEYS */;

-- Volcando estructura para tabla october.system_revisions
DROP TABLE IF EXISTS `system_revisions`;
CREATE TABLE IF NOT EXISTS `system_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  KEY `system_revisions_user_id_index` (`user_id`),
  KEY `system_revisions_field_index` (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.system_revisions: ~0 rows (aproximadamente)
DELETE FROM `system_revisions`;
/*!40000 ALTER TABLE `system_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_revisions` ENABLE KEYS */;

-- Volcando estructura para tabla october.system_settings
DROP TABLE IF EXISTS `system_settings`;
CREATE TABLE IF NOT EXISTS `system_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `system_settings_item_index` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla october.system_settings: ~0 rows (aproximadamente)
DELETE FROM `system_settings`;
/*!40000 ALTER TABLE `system_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_settings` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

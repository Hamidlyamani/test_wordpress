-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 20 août 2026 à 15:51
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_test`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2026-08-19 10:40:59', '2026-08-19 10:40:59', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1787226059;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1787226064;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1787227859;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1787229659;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1787258503;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1787265673;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1787308873;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1787308883;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1787747004;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1787827264;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/test/web/wp', 'on'),
(3, 'home', 'http://localhost/test/web/wp', 'on'),
(4, 'blogname', 'Dr Polle', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'alymnyhmyd763@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '', 'on'),
(30, 'rewrite_rules', '', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'dr-polle', 'on'),
(42, 'stylesheet', 'dr-polle', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '61833', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '12', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1802688059', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'wp_notes_notify', '1', 'on'),
(102, 'initial_db_version', '60717', 'on'),
(103, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(104, 'fresh_site', '0', 'off'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'bedrock_autoloader', 'a:2:{s:7:\"plugins\";a:1:{s:55:\"bedrock-disallow-indexing/bedrock-disallow-indexing.php\";a:15:{s:4:\"Name\";s:17:\"Disallow Indexing\";s:9:\"PluginURI\";s:25:\"https://roots.io/bedrock/\";s:7:\"Version\";s:5:\"2.0.0\";s:11:\"Description\";s:62:\"Disallow indexing of your site on non-production environments.\";s:6:\"Author\";s:5:\"Roots\";s:9:\"AuthorURI\";s:17:\"https://roots.io/\";s:10:\"TextDomain\";s:5:\"roots\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:0:\"\";s:11:\"RequiresPHP\";s:0:\"\";s:9:\"UpdateURI\";s:0:\"\";s:15:\"RequiresPlugins\";s:0:\"\";s:5:\"Title\";s:17:\"Disallow Indexing\";s:10:\"AuthorName\";s:5:\"Roots\";}}s:5:\"count\";i:1;}', 'off'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(123, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"7.0.4\";s:5:\"files\";a:596:{i:0;s:31:\"accordion-heading/style-rtl.css\";i:1;s:35:\"accordion-heading/style-rtl.min.css\";i:2;s:27:\"accordion-heading/style.css\";i:3;s:31:\"accordion-heading/style.min.css\";i:4;s:28:\"accordion-item/style-rtl.css\";i:5;s:32:\"accordion-item/style-rtl.min.css\";i:6;s:24:\"accordion-item/style.css\";i:7;s:28:\"accordion-item/style.min.css\";i:8;s:29:\"accordion-panel/style-rtl.css\";i:9;s:33:\"accordion-panel/style-rtl.min.css\";i:10;s:25:\"accordion-panel/style.css\";i:11;s:29:\"accordion-panel/style.min.css\";i:12;s:23:\"accordion/style-rtl.css\";i:13;s:27:\"accordion/style-rtl.min.css\";i:14;s:19:\"accordion/style.css\";i:15;s:23:\"accordion/style.min.css\";i:16;s:22:\"archives/style-rtl.css\";i:17;s:26:\"archives/style-rtl.min.css\";i:18;s:18:\"archives/style.css\";i:19;s:22:\"archives/style.min.css\";i:20;s:20:\"audio/editor-rtl.css\";i:21;s:24:\"audio/editor-rtl.min.css\";i:22;s:16:\"audio/editor.css\";i:23;s:20:\"audio/editor.min.css\";i:24;s:19:\"audio/style-rtl.css\";i:25;s:23:\"audio/style-rtl.min.css\";i:26;s:15:\"audio/style.css\";i:27;s:19:\"audio/style.min.css\";i:28;s:19:\"audio/theme-rtl.css\";i:29;s:23:\"audio/theme-rtl.min.css\";i:30;s:15:\"audio/theme.css\";i:31;s:19:\"audio/theme.min.css\";i:32;s:21:\"avatar/editor-rtl.css\";i:33;s:25:\"avatar/editor-rtl.min.css\";i:34;s:17:\"avatar/editor.css\";i:35;s:21:\"avatar/editor.min.css\";i:36;s:20:\"avatar/style-rtl.css\";i:37;s:24:\"avatar/style-rtl.min.css\";i:38;s:16:\"avatar/style.css\";i:39;s:20:\"avatar/style.min.css\";i:40;s:25:\"breadcrumbs/style-rtl.css\";i:41;s:29:\"breadcrumbs/style-rtl.min.css\";i:42;s:21:\"breadcrumbs/style.css\";i:43;s:25:\"breadcrumbs/style.min.css\";i:44;s:21:\"button/editor-rtl.css\";i:45;s:25:\"button/editor-rtl.min.css\";i:46;s:17:\"button/editor.css\";i:47;s:21:\"button/editor.min.css\";i:48;s:20:\"button/style-rtl.css\";i:49;s:24:\"button/style-rtl.min.css\";i:50;s:16:\"button/style.css\";i:51;s:20:\"button/style.min.css\";i:52;s:22:\"buttons/editor-rtl.css\";i:53;s:26:\"buttons/editor-rtl.min.css\";i:54;s:18:\"buttons/editor.css\";i:55;s:22:\"buttons/editor.min.css\";i:56;s:21:\"buttons/style-rtl.css\";i:57;s:25:\"buttons/style-rtl.min.css\";i:58;s:17:\"buttons/style.css\";i:59;s:21:\"buttons/style.min.css\";i:60;s:22:\"calendar/style-rtl.css\";i:61;s:26:\"calendar/style-rtl.min.css\";i:62;s:18:\"calendar/style.css\";i:63;s:22:\"calendar/style.min.css\";i:64;s:25:\"categories/editor-rtl.css\";i:65;s:29:\"categories/editor-rtl.min.css\";i:66;s:21:\"categories/editor.css\";i:67;s:25:\"categories/editor.min.css\";i:68;s:24:\"categories/style-rtl.css\";i:69;s:28:\"categories/style-rtl.min.css\";i:70;s:20:\"categories/style.css\";i:71;s:24:\"categories/style.min.css\";i:72;s:19:\"code/editor-rtl.css\";i:73;s:23:\"code/editor-rtl.min.css\";i:74;s:15:\"code/editor.css\";i:75;s:19:\"code/editor.min.css\";i:76;s:18:\"code/style-rtl.css\";i:77;s:22:\"code/style-rtl.min.css\";i:78;s:14:\"code/style.css\";i:79;s:18:\"code/style.min.css\";i:80;s:18:\"code/theme-rtl.css\";i:81;s:22:\"code/theme-rtl.min.css\";i:82;s:14:\"code/theme.css\";i:83;s:18:\"code/theme.min.css\";i:84;s:22:\"columns/editor-rtl.css\";i:85;s:26:\"columns/editor-rtl.min.css\";i:86;s:18:\"columns/editor.css\";i:87;s:22:\"columns/editor.min.css\";i:88;s:21:\"columns/style-rtl.css\";i:89;s:25:\"columns/style-rtl.min.css\";i:90;s:17:\"columns/style.css\";i:91;s:21:\"columns/style.min.css\";i:92;s:33:\"comment-author-name/style-rtl.css\";i:93;s:37:\"comment-author-name/style-rtl.min.css\";i:94;s:29:\"comment-author-name/style.css\";i:95;s:33:\"comment-author-name/style.min.css\";i:96;s:29:\"comment-content/style-rtl.css\";i:97;s:33:\"comment-content/style-rtl.min.css\";i:98;s:25:\"comment-content/style.css\";i:99;s:29:\"comment-content/style.min.css\";i:100;s:26:\"comment-date/style-rtl.css\";i:101;s:30:\"comment-date/style-rtl.min.css\";i:102;s:22:\"comment-date/style.css\";i:103;s:26:\"comment-date/style.min.css\";i:104;s:31:\"comment-edit-link/style-rtl.css\";i:105;s:35:\"comment-edit-link/style-rtl.min.css\";i:106;s:27:\"comment-edit-link/style.css\";i:107;s:31:\"comment-edit-link/style.min.css\";i:108;s:32:\"comment-reply-link/style-rtl.css\";i:109;s:36:\"comment-reply-link/style-rtl.min.css\";i:110;s:28:\"comment-reply-link/style.css\";i:111;s:32:\"comment-reply-link/style.min.css\";i:112;s:30:\"comment-template/style-rtl.css\";i:113;s:34:\"comment-template/style-rtl.min.css\";i:114;s:26:\"comment-template/style.css\";i:115;s:30:\"comment-template/style.min.css\";i:116;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:117;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:118;s:38:\"comments-pagination-numbers/editor.css\";i:119;s:42:\"comments-pagination-numbers/editor.min.css\";i:120;s:34:\"comments-pagination/editor-rtl.css\";i:121;s:38:\"comments-pagination/editor-rtl.min.css\";i:122;s:30:\"comments-pagination/editor.css\";i:123;s:34:\"comments-pagination/editor.min.css\";i:124;s:33:\"comments-pagination/style-rtl.css\";i:125;s:37:\"comments-pagination/style-rtl.min.css\";i:126;s:29:\"comments-pagination/style.css\";i:127;s:33:\"comments-pagination/style.min.css\";i:128;s:29:\"comments-title/editor-rtl.css\";i:129;s:33:\"comments-title/editor-rtl.min.css\";i:130;s:25:\"comments-title/editor.css\";i:131;s:29:\"comments-title/editor.min.css\";i:132;s:23:\"comments/editor-rtl.css\";i:133;s:27:\"comments/editor-rtl.min.css\";i:134;s:19:\"comments/editor.css\";i:135;s:23:\"comments/editor.min.css\";i:136;s:22:\"comments/style-rtl.css\";i:137;s:26:\"comments/style-rtl.min.css\";i:138;s:18:\"comments/style.css\";i:139;s:22:\"comments/style.min.css\";i:140;s:20:\"cover/editor-rtl.css\";i:141;s:24:\"cover/editor-rtl.min.css\";i:142;s:16:\"cover/editor.css\";i:143;s:20:\"cover/editor.min.css\";i:144;s:19:\"cover/style-rtl.css\";i:145;s:23:\"cover/style-rtl.min.css\";i:146;s:15:\"cover/style.css\";i:147;s:19:\"cover/style.min.css\";i:148;s:22:\"details/editor-rtl.css\";i:149;s:26:\"details/editor-rtl.min.css\";i:150;s:18:\"details/editor.css\";i:151;s:22:\"details/editor.min.css\";i:152;s:21:\"details/style-rtl.css\";i:153;s:25:\"details/style-rtl.min.css\";i:154;s:17:\"details/style.css\";i:155;s:21:\"details/style.min.css\";i:156;s:20:\"embed/editor-rtl.css\";i:157;s:24:\"embed/editor-rtl.min.css\";i:158;s:16:\"embed/editor.css\";i:159;s:20:\"embed/editor.min.css\";i:160;s:19:\"embed/style-rtl.css\";i:161;s:23:\"embed/style-rtl.min.css\";i:162;s:15:\"embed/style.css\";i:163;s:19:\"embed/style.min.css\";i:164;s:19:\"embed/theme-rtl.css\";i:165;s:23:\"embed/theme-rtl.min.css\";i:166;s:15:\"embed/theme.css\";i:167;s:19:\"embed/theme.min.css\";i:168;s:19:\"file/editor-rtl.css\";i:169;s:23:\"file/editor-rtl.min.css\";i:170;s:15:\"file/editor.css\";i:171;s:19:\"file/editor.min.css\";i:172;s:18:\"file/style-rtl.css\";i:173;s:22:\"file/style-rtl.min.css\";i:174;s:14:\"file/style.css\";i:175;s:18:\"file/style.min.css\";i:176;s:23:\"footnotes/style-rtl.css\";i:177;s:27:\"footnotes/style-rtl.min.css\";i:178;s:19:\"footnotes/style.css\";i:179;s:23:\"footnotes/style.min.css\";i:180;s:23:\"freeform/editor-rtl.css\";i:181;s:27:\"freeform/editor-rtl.min.css\";i:182;s:19:\"freeform/editor.css\";i:183;s:23:\"freeform/editor.min.css\";i:184;s:22:\"gallery/editor-rtl.css\";i:185;s:26:\"gallery/editor-rtl.min.css\";i:186;s:18:\"gallery/editor.css\";i:187;s:22:\"gallery/editor.min.css\";i:188;s:21:\"gallery/style-rtl.css\";i:189;s:25:\"gallery/style-rtl.min.css\";i:190;s:17:\"gallery/style.css\";i:191;s:21:\"gallery/style.min.css\";i:192;s:21:\"gallery/theme-rtl.css\";i:193;s:25:\"gallery/theme-rtl.min.css\";i:194;s:17:\"gallery/theme.css\";i:195;s:21:\"gallery/theme.min.css\";i:196;s:20:\"group/editor-rtl.css\";i:197;s:24:\"group/editor-rtl.min.css\";i:198;s:16:\"group/editor.css\";i:199;s:20:\"group/editor.min.css\";i:200;s:19:\"group/style-rtl.css\";i:201;s:23:\"group/style-rtl.min.css\";i:202;s:15:\"group/style.css\";i:203;s:19:\"group/style.min.css\";i:204;s:19:\"group/theme-rtl.css\";i:205;s:23:\"group/theme-rtl.min.css\";i:206;s:15:\"group/theme.css\";i:207;s:19:\"group/theme.min.css\";i:208;s:21:\"heading/style-rtl.css\";i:209;s:25:\"heading/style-rtl.min.css\";i:210;s:17:\"heading/style.css\";i:211;s:21:\"heading/style.min.css\";i:212;s:19:\"html/editor-rtl.css\";i:213;s:23:\"html/editor-rtl.min.css\";i:214;s:15:\"html/editor.css\";i:215;s:19:\"html/editor.min.css\";i:216;s:19:\"icon/editor-rtl.css\";i:217;s:23:\"icon/editor-rtl.min.css\";i:218;s:15:\"icon/editor.css\";i:219;s:19:\"icon/editor.min.css\";i:220;s:18:\"icon/style-rtl.css\";i:221;s:22:\"icon/style-rtl.min.css\";i:222;s:14:\"icon/style.css\";i:223;s:18:\"icon/style.min.css\";i:224;s:20:\"image/editor-rtl.css\";i:225;s:24:\"image/editor-rtl.min.css\";i:226;s:16:\"image/editor.css\";i:227;s:20:\"image/editor.min.css\";i:228;s:19:\"image/style-rtl.css\";i:229;s:23:\"image/style-rtl.min.css\";i:230;s:15:\"image/style.css\";i:231;s:19:\"image/style.min.css\";i:232;s:19:\"image/theme-rtl.css\";i:233;s:23:\"image/theme-rtl.min.css\";i:234;s:15:\"image/theme.css\";i:235;s:19:\"image/theme.min.css\";i:236;s:29:\"latest-comments/style-rtl.css\";i:237;s:33:\"latest-comments/style-rtl.min.css\";i:238;s:25:\"latest-comments/style.css\";i:239;s:29:\"latest-comments/style.min.css\";i:240;s:27:\"latest-posts/editor-rtl.css\";i:241;s:31:\"latest-posts/editor-rtl.min.css\";i:242;s:23:\"latest-posts/editor.css\";i:243;s:27:\"latest-posts/editor.min.css\";i:244;s:26:\"latest-posts/style-rtl.css\";i:245;s:30:\"latest-posts/style-rtl.min.css\";i:246;s:22:\"latest-posts/style.css\";i:247;s:26:\"latest-posts/style.min.css\";i:248;s:18:\"list/style-rtl.css\";i:249;s:22:\"list/style-rtl.min.css\";i:250;s:14:\"list/style.css\";i:251;s:18:\"list/style.min.css\";i:252;s:22:\"loginout/style-rtl.css\";i:253;s:26:\"loginout/style-rtl.min.css\";i:254;s:18:\"loginout/style.css\";i:255;s:22:\"loginout/style.min.css\";i:256;s:19:\"math/editor-rtl.css\";i:257;s:23:\"math/editor-rtl.min.css\";i:258;s:15:\"math/editor.css\";i:259;s:19:\"math/editor.min.css\";i:260;s:18:\"math/style-rtl.css\";i:261;s:22:\"math/style-rtl.min.css\";i:262;s:14:\"math/style.css\";i:263;s:18:\"math/style.min.css\";i:264;s:25:\"media-text/editor-rtl.css\";i:265;s:29:\"media-text/editor-rtl.min.css\";i:266;s:21:\"media-text/editor.css\";i:267;s:25:\"media-text/editor.min.css\";i:268;s:24:\"media-text/style-rtl.css\";i:269;s:28:\"media-text/style-rtl.min.css\";i:270;s:20:\"media-text/style.css\";i:271;s:24:\"media-text/style.min.css\";i:272;s:19:\"more/editor-rtl.css\";i:273;s:23:\"more/editor-rtl.min.css\";i:274;s:15:\"more/editor.css\";i:275;s:19:\"more/editor.min.css\";i:276;s:30:\"navigation-link/editor-rtl.css\";i:277;s:34:\"navigation-link/editor-rtl.min.css\";i:278;s:26:\"navigation-link/editor.css\";i:279;s:30:\"navigation-link/editor.min.css\";i:280;s:29:\"navigation-link/style-rtl.css\";i:281;s:33:\"navigation-link/style-rtl.min.css\";i:282;s:25:\"navigation-link/style.css\";i:283;s:29:\"navigation-link/style.min.css\";i:284;s:38:\"navigation-overlay-close/style-rtl.css\";i:285;s:42:\"navigation-overlay-close/style-rtl.min.css\";i:286;s:34:\"navigation-overlay-close/style.css\";i:287;s:38:\"navigation-overlay-close/style.min.css\";i:288;s:33:\"navigation-submenu/editor-rtl.css\";i:289;s:37:\"navigation-submenu/editor-rtl.min.css\";i:290;s:29:\"navigation-submenu/editor.css\";i:291;s:33:\"navigation-submenu/editor.min.css\";i:292;s:25:\"navigation/editor-rtl.css\";i:293;s:29:\"navigation/editor-rtl.min.css\";i:294;s:21:\"navigation/editor.css\";i:295;s:25:\"navigation/editor.min.css\";i:296;s:24:\"navigation/style-rtl.css\";i:297;s:28:\"navigation/style-rtl.min.css\";i:298;s:20:\"navigation/style.css\";i:299;s:24:\"navigation/style.min.css\";i:300;s:23:\"nextpage/editor-rtl.css\";i:301;s:27:\"nextpage/editor-rtl.min.css\";i:302;s:19:\"nextpage/editor.css\";i:303;s:23:\"nextpage/editor.min.css\";i:304;s:24:\"page-list/editor-rtl.css\";i:305;s:28:\"page-list/editor-rtl.min.css\";i:306;s:20:\"page-list/editor.css\";i:307;s:24:\"page-list/editor.min.css\";i:308;s:23:\"page-list/style-rtl.css\";i:309;s:27:\"page-list/style-rtl.min.css\";i:310;s:19:\"page-list/style.css\";i:311;s:23:\"page-list/style.min.css\";i:312;s:24:\"paragraph/editor-rtl.css\";i:313;s:28:\"paragraph/editor-rtl.min.css\";i:314;s:20:\"paragraph/editor.css\";i:315;s:24:\"paragraph/editor.min.css\";i:316;s:23:\"paragraph/style-rtl.css\";i:317;s:27:\"paragraph/style-rtl.min.css\";i:318;s:19:\"paragraph/style.css\";i:319;s:23:\"paragraph/style.min.css\";i:320;s:35:\"post-author-biography/style-rtl.css\";i:321;s:39:\"post-author-biography/style-rtl.min.css\";i:322;s:31:\"post-author-biography/style.css\";i:323;s:35:\"post-author-biography/style.min.css\";i:324;s:30:\"post-author-name/style-rtl.css\";i:325;s:34:\"post-author-name/style-rtl.min.css\";i:326;s:26:\"post-author-name/style.css\";i:327;s:30:\"post-author-name/style.min.css\";i:328;s:26:\"post-author/editor-rtl.css\";i:329;s:30:\"post-author/editor-rtl.min.css\";i:330;s:22:\"post-author/editor.css\";i:331;s:26:\"post-author/editor.min.css\";i:332;s:25:\"post-author/style-rtl.css\";i:333;s:29:\"post-author/style-rtl.min.css\";i:334;s:21:\"post-author/style.css\";i:335;s:25:\"post-author/style.min.css\";i:336;s:33:\"post-comments-count/style-rtl.css\";i:337;s:37:\"post-comments-count/style-rtl.min.css\";i:338;s:29:\"post-comments-count/style.css\";i:339;s:33:\"post-comments-count/style.min.css\";i:340;s:33:\"post-comments-form/editor-rtl.css\";i:341;s:37:\"post-comments-form/editor-rtl.min.css\";i:342;s:29:\"post-comments-form/editor.css\";i:343;s:33:\"post-comments-form/editor.min.css\";i:344;s:32:\"post-comments-form/style-rtl.css\";i:345;s:36:\"post-comments-form/style-rtl.min.css\";i:346;s:28:\"post-comments-form/style.css\";i:347;s:32:\"post-comments-form/style.min.css\";i:348;s:32:\"post-comments-link/style-rtl.css\";i:349;s:36:\"post-comments-link/style-rtl.min.css\";i:350;s:28:\"post-comments-link/style.css\";i:351;s:32:\"post-comments-link/style.min.css\";i:352;s:26:\"post-content/style-rtl.css\";i:353;s:30:\"post-content/style-rtl.min.css\";i:354;s:22:\"post-content/style.css\";i:355;s:26:\"post-content/style.min.css\";i:356;s:23:\"post-date/style-rtl.css\";i:357;s:27:\"post-date/style-rtl.min.css\";i:358;s:19:\"post-date/style.css\";i:359;s:23:\"post-date/style.min.css\";i:360;s:27:\"post-excerpt/editor-rtl.css\";i:361;s:31:\"post-excerpt/editor-rtl.min.css\";i:362;s:23:\"post-excerpt/editor.css\";i:363;s:27:\"post-excerpt/editor.min.css\";i:364;s:26:\"post-excerpt/style-rtl.css\";i:365;s:30:\"post-excerpt/style-rtl.min.css\";i:366;s:22:\"post-excerpt/style.css\";i:367;s:26:\"post-excerpt/style.min.css\";i:368;s:34:\"post-featured-image/editor-rtl.css\";i:369;s:38:\"post-featured-image/editor-rtl.min.css\";i:370;s:30:\"post-featured-image/editor.css\";i:371;s:34:\"post-featured-image/editor.min.css\";i:372;s:33:\"post-featured-image/style-rtl.css\";i:373;s:37:\"post-featured-image/style-rtl.min.css\";i:374;s:29:\"post-featured-image/style.css\";i:375;s:33:\"post-featured-image/style.min.css\";i:376;s:34:\"post-navigation-link/style-rtl.css\";i:377;s:38:\"post-navigation-link/style-rtl.min.css\";i:378;s:30:\"post-navigation-link/style.css\";i:379;s:34:\"post-navigation-link/style.min.css\";i:380;s:27:\"post-template/style-rtl.css\";i:381;s:31:\"post-template/style-rtl.min.css\";i:382;s:23:\"post-template/style.css\";i:383;s:27:\"post-template/style.min.css\";i:384;s:24:\"post-terms/style-rtl.css\";i:385;s:28:\"post-terms/style-rtl.min.css\";i:386;s:20:\"post-terms/style.css\";i:387;s:24:\"post-terms/style.min.css\";i:388;s:31:\"post-time-to-read/style-rtl.css\";i:389;s:35:\"post-time-to-read/style-rtl.min.css\";i:390;s:27:\"post-time-to-read/style.css\";i:391;s:31:\"post-time-to-read/style.min.css\";i:392;s:24:\"post-title/style-rtl.css\";i:393;s:28:\"post-title/style-rtl.min.css\";i:394;s:20:\"post-title/style.css\";i:395;s:24:\"post-title/style.min.css\";i:396;s:26:\"preformatted/style-rtl.css\";i:397;s:30:\"preformatted/style-rtl.min.css\";i:398;s:22:\"preformatted/style.css\";i:399;s:26:\"preformatted/style.min.css\";i:400;s:24:\"pullquote/editor-rtl.css\";i:401;s:28:\"pullquote/editor-rtl.min.css\";i:402;s:20:\"pullquote/editor.css\";i:403;s:24:\"pullquote/editor.min.css\";i:404;s:23:\"pullquote/style-rtl.css\";i:405;s:27:\"pullquote/style-rtl.min.css\";i:406;s:19:\"pullquote/style.css\";i:407;s:23:\"pullquote/style.min.css\";i:408;s:23:\"pullquote/theme-rtl.css\";i:409;s:27:\"pullquote/theme-rtl.min.css\";i:410;s:19:\"pullquote/theme.css\";i:411;s:23:\"pullquote/theme.min.css\";i:412;s:39:\"query-pagination-numbers/editor-rtl.css\";i:413;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:414;s:35:\"query-pagination-numbers/editor.css\";i:415;s:39:\"query-pagination-numbers/editor.min.css\";i:416;s:31:\"query-pagination/editor-rtl.css\";i:417;s:35:\"query-pagination/editor-rtl.min.css\";i:418;s:27:\"query-pagination/editor.css\";i:419;s:31:\"query-pagination/editor.min.css\";i:420;s:30:\"query-pagination/style-rtl.css\";i:421;s:34:\"query-pagination/style-rtl.min.css\";i:422;s:26:\"query-pagination/style.css\";i:423;s:30:\"query-pagination/style.min.css\";i:424;s:25:\"query-title/style-rtl.css\";i:425;s:29:\"query-title/style-rtl.min.css\";i:426;s:21:\"query-title/style.css\";i:427;s:25:\"query-title/style.min.css\";i:428;s:25:\"query-total/style-rtl.css\";i:429;s:29:\"query-total/style-rtl.min.css\";i:430;s:21:\"query-total/style.css\";i:431;s:25:\"query-total/style.min.css\";i:432;s:20:\"query/editor-rtl.css\";i:433;s:24:\"query/editor-rtl.min.css\";i:434;s:16:\"query/editor.css\";i:435;s:20:\"query/editor.min.css\";i:436;s:19:\"quote/style-rtl.css\";i:437;s:23:\"quote/style-rtl.min.css\";i:438;s:15:\"quote/style.css\";i:439;s:19:\"quote/style.min.css\";i:440;s:19:\"quote/theme-rtl.css\";i:441;s:23:\"quote/theme-rtl.min.css\";i:442;s:15:\"quote/theme.css\";i:443;s:19:\"quote/theme.min.css\";i:444;s:23:\"read-more/style-rtl.css\";i:445;s:27:\"read-more/style-rtl.min.css\";i:446;s:19:\"read-more/style.css\";i:447;s:23:\"read-more/style.min.css\";i:448;s:18:\"rss/editor-rtl.css\";i:449;s:22:\"rss/editor-rtl.min.css\";i:450;s:14:\"rss/editor.css\";i:451;s:18:\"rss/editor.min.css\";i:452;s:17:\"rss/style-rtl.css\";i:453;s:21:\"rss/style-rtl.min.css\";i:454;s:13:\"rss/style.css\";i:455;s:17:\"rss/style.min.css\";i:456;s:21:\"search/editor-rtl.css\";i:457;s:25:\"search/editor-rtl.min.css\";i:458;s:17:\"search/editor.css\";i:459;s:21:\"search/editor.min.css\";i:460;s:20:\"search/style-rtl.css\";i:461;s:24:\"search/style-rtl.min.css\";i:462;s:16:\"search/style.css\";i:463;s:20:\"search/style.min.css\";i:464;s:20:\"search/theme-rtl.css\";i:465;s:24:\"search/theme-rtl.min.css\";i:466;s:16:\"search/theme.css\";i:467;s:20:\"search/theme.min.css\";i:468;s:24:\"separator/editor-rtl.css\";i:469;s:28:\"separator/editor-rtl.min.css\";i:470;s:20:\"separator/editor.css\";i:471;s:24:\"separator/editor.min.css\";i:472;s:23:\"separator/style-rtl.css\";i:473;s:27:\"separator/style-rtl.min.css\";i:474;s:19:\"separator/style.css\";i:475;s:23:\"separator/style.min.css\";i:476;s:23:\"separator/theme-rtl.css\";i:477;s:27:\"separator/theme-rtl.min.css\";i:478;s:19:\"separator/theme.css\";i:479;s:23:\"separator/theme.min.css\";i:480;s:24:\"shortcode/editor-rtl.css\";i:481;s:28:\"shortcode/editor-rtl.min.css\";i:482;s:20:\"shortcode/editor.css\";i:483;s:24:\"shortcode/editor.min.css\";i:484;s:24:\"site-logo/editor-rtl.css\";i:485;s:28:\"site-logo/editor-rtl.min.css\";i:486;s:20:\"site-logo/editor.css\";i:487;s:24:\"site-logo/editor.min.css\";i:488;s:23:\"site-logo/style-rtl.css\";i:489;s:27:\"site-logo/style-rtl.min.css\";i:490;s:19:\"site-logo/style.css\";i:491;s:23:\"site-logo/style.min.css\";i:492;s:27:\"site-tagline/editor-rtl.css\";i:493;s:31:\"site-tagline/editor-rtl.min.css\";i:494;s:23:\"site-tagline/editor.css\";i:495;s:27:\"site-tagline/editor.min.css\";i:496;s:26:\"site-tagline/style-rtl.css\";i:497;s:30:\"site-tagline/style-rtl.min.css\";i:498;s:22:\"site-tagline/style.css\";i:499;s:26:\"site-tagline/style.min.css\";i:500;s:25:\"site-title/editor-rtl.css\";i:501;s:29:\"site-title/editor-rtl.min.css\";i:502;s:21:\"site-title/editor.css\";i:503;s:25:\"site-title/editor.min.css\";i:504;s:24:\"site-title/style-rtl.css\";i:505;s:28:\"site-title/style-rtl.min.css\";i:506;s:20:\"site-title/style.css\";i:507;s:24:\"site-title/style.min.css\";i:508;s:26:\"social-link/editor-rtl.css\";i:509;s:30:\"social-link/editor-rtl.min.css\";i:510;s:22:\"social-link/editor.css\";i:511;s:26:\"social-link/editor.min.css\";i:512;s:27:\"social-links/editor-rtl.css\";i:513;s:31:\"social-links/editor-rtl.min.css\";i:514;s:23:\"social-links/editor.css\";i:515;s:27:\"social-links/editor.min.css\";i:516;s:26:\"social-links/style-rtl.css\";i:517;s:30:\"social-links/style-rtl.min.css\";i:518;s:22:\"social-links/style.css\";i:519;s:26:\"social-links/style.min.css\";i:520;s:21:\"spacer/editor-rtl.css\";i:521;s:25:\"spacer/editor-rtl.min.css\";i:522;s:17:\"spacer/editor.css\";i:523;s:21:\"spacer/editor.min.css\";i:524;s:20:\"spacer/style-rtl.css\";i:525;s:24:\"spacer/style-rtl.min.css\";i:526;s:16:\"spacer/style.css\";i:527;s:20:\"spacer/style.min.css\";i:528;s:20:\"table/editor-rtl.css\";i:529;s:24:\"table/editor-rtl.min.css\";i:530;s:16:\"table/editor.css\";i:531;s:20:\"table/editor.min.css\";i:532;s:19:\"table/style-rtl.css\";i:533;s:23:\"table/style-rtl.min.css\";i:534;s:15:\"table/style.css\";i:535;s:19:\"table/style.min.css\";i:536;s:19:\"table/theme-rtl.css\";i:537;s:23:\"table/theme-rtl.min.css\";i:538;s:15:\"table/theme.css\";i:539;s:19:\"table/theme.min.css\";i:540;s:23:\"tag-cloud/style-rtl.css\";i:541;s:27:\"tag-cloud/style-rtl.min.css\";i:542;s:19:\"tag-cloud/style.css\";i:543;s:23:\"tag-cloud/style.min.css\";i:544;s:28:\"template-part/editor-rtl.css\";i:545;s:32:\"template-part/editor-rtl.min.css\";i:546;s:24:\"template-part/editor.css\";i:547;s:28:\"template-part/editor.min.css\";i:548;s:27:\"template-part/theme-rtl.css\";i:549;s:31:\"template-part/theme-rtl.min.css\";i:550;s:23:\"template-part/theme.css\";i:551;s:27:\"template-part/theme.min.css\";i:552;s:24:\"term-count/style-rtl.css\";i:553;s:28:\"term-count/style-rtl.min.css\";i:554;s:20:\"term-count/style.css\";i:555;s:24:\"term-count/style.min.css\";i:556;s:30:\"term-description/style-rtl.css\";i:557;s:34:\"term-description/style-rtl.min.css\";i:558;s:26:\"term-description/style.css\";i:559;s:30:\"term-description/style.min.css\";i:560;s:23:\"term-name/style-rtl.css\";i:561;s:27:\"term-name/style-rtl.min.css\";i:562;s:19:\"term-name/style.css\";i:563;s:23:\"term-name/style.min.css\";i:564;s:28:\"term-template/editor-rtl.css\";i:565;s:32:\"term-template/editor-rtl.min.css\";i:566;s:24:\"term-template/editor.css\";i:567;s:28:\"term-template/editor.min.css\";i:568;s:27:\"term-template/style-rtl.css\";i:569;s:31:\"term-template/style-rtl.min.css\";i:570;s:23:\"term-template/style.css\";i:571;s:27:\"term-template/style.min.css\";i:572;s:27:\"text-columns/editor-rtl.css\";i:573;s:31:\"text-columns/editor-rtl.min.css\";i:574;s:23:\"text-columns/editor.css\";i:575;s:27:\"text-columns/editor.min.css\";i:576;s:26:\"text-columns/style-rtl.css\";i:577;s:30:\"text-columns/style-rtl.min.css\";i:578;s:22:\"text-columns/style.css\";i:579;s:26:\"text-columns/style.min.css\";i:580;s:19:\"verse/style-rtl.css\";i:581;s:23:\"verse/style-rtl.min.css\";i:582;s:15:\"verse/style.css\";i:583;s:19:\"verse/style.min.css\";i:584;s:20:\"video/editor-rtl.css\";i:585;s:24:\"video/editor-rtl.min.css\";i:586;s:16:\"video/editor.css\";i:587;s:20:\"video/editor.min.css\";i:588;s:19:\"video/style-rtl.css\";i:589;s:23:\"video/style-rtl.min.css\";i:590;s:15:\"video/style.css\";i:591;s:19:\"video/style.min.css\";i:592;s:19:\"video/theme-rtl.css\";i:593;s:23:\"video/theme-rtl.min.css\";i:594;s:15:\"video/theme.css\";i:595;s:19:\"video/theme.min.css\";}}', 'on'),
(127, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-7.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-7.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"7.1\";s:7:\"version\";s:3:\"7.1\";s:11:\"php_version\";s:3:\"7.4\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:49:\"https://downloads.w.org/release/wordpress-7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:49:\"https://downloads.w.org/release/wordpress-7.1.zip\";s:10:\"no_content\";s:60:\"https://downloads.w.org/release/wordpress-7.1-no-content.zip\";s:11:\"new_bundled\";s:61:\"https://downloads.w.org/release/wordpress-7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"7.1\";s:7:\"version\";s:3:\"7.1\";s:11:\"php_version\";s:3:\"7.4\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1787223641;s:15:\"version_checked\";s:5:\"7.0.4\";s:12:\"translations\";a:0:{}}', 'off'),
(128, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1787223642;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":14:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.8.8\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.8.8.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3374528\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3374528\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:3:\"7.1\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}s:18:\"disable_autoupdate\";b:1;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.8.7\";}}', 'off'),
(131, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1787223643;s:7:\"checked\";a:2:{s:8:\"dr-polle\";s:5:\"1.0.0\";s:16:\"twentytwentyfive\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.5.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(132, '_site_transient_timeout_browser_6967ec7261b3cbe6a91d798c6b951c60', '1787740880', 'off'),
(133, '_site_transient_browser_6967ec7261b3cbe6a91d798c6b951c60', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"151.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(134, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1787740882', 'off'),
(135, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:3:\"7.4\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(136, 'db_upgraded', '', 'on'),
(143, 'theme_mods_dr-polle', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1787141835;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'on'),
(144, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"d4c194055311dd6a9e111c5556cddc2a\";s:6:\"blocks\";a:7:{s:32:\"0368537a03d4b05ed11f802c802c5153\";s:0:\"\";s:32:\"500888137eafa12a508de2c588d9ffdd\";s:46:\":root :where(.wp-block-icon svg){width: 24px;}\";s:32:\"a6036e6eb2ad2df7ed8860b807868647\";s:0:\"\";s:32:\"3b46efc0a10c1dae38f584ad199c3544\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:32:\"ab4df16c9e454bfed8a404309545590d\";s:120:\":where(.wp-block-term-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-term-template.is-layout-grid){gap: 1.25em;}\";s:32:\"68ec5cad52d993402775a7503ba9efb7\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:32:\"b8b4aa19e69b9b2de0f5c27097467bd6\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(147, 'theme_mods_twentytwentyfive', 'a:3:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1787141846;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'off'),
(148, 'current_theme', 'dr polle', 'auto'),
(149, 'theme_switched', '', 'auto'),
(160, 'can_compress_scripts', '0', 'on'),
(181, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(182, 'recently_activated', 'a:0:{}', 'off'),
(183, 'acf_first_activated_version', '6.8.7', 'on'),
(184, 'acf_site_health', '{\"version\":\"6.8.7\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"7.0.4\",\"mysql_version\":\"10.4.32-MariaDB\",\"is_multisite\":false,\"active_theme\":{\"name\":\"dr polle\",\"version\":\"1.0.0\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.8.7\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"all_location_rules\":[\"post_type==chirurgie\",\"page_type==front_page\"],\"number_of_fields_by_type\":{\"textarea\":1,\"wysiwyg\":1,\"image\":4,\"text\":2,\"link\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"0\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"0\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"ai_enabled\":false,\"schema_support\":false,\"schema_ready_objects\":{\"blocks\":0,\"post_types\":0},\"event_first_activated\":1787172103,\"last_updated\":1787223643}', 'off'),
(185, 'acf_version', '6.8.7', 'auto'),
(194, 'acf_email_opt_in_banner_state', 'dismissed', 'off'),
(210, 'type_chirurgie_children', 'a:0:{}', 'auto'),
(220, 'finished_updating_comment_type', '1', 'auto'),
(221, '_site_transient_timeout_theme_roots', '1787225442', 'off'),
(222, '_site_transient_theme_roots', 'a:2:{s:8:\"dr-polle\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";}', 'off'),
(223, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":4}', 'on'),
(226, '_transient_doing_cron', '1787233829.6244781017303466796875', 'on'),
(231, '_site_transient_timeout_wp_theme_files_patterns-c1ea3c4aaa62d286d46c092bd3e20843', '1787235056', 'off'),
(232, '_site_transient_wp_theme_files_patterns-c1ea3c4aaa62d286d46c092bd3e20843', 'a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1787144736:1'),
(8, 9, '_edit_lock', '1787143881:1'),
(9, 11, '_edit_last', '1'),
(10, 11, '_edit_lock', '1787145750:1'),
(11, 12, '_edit_lock', '1787228941:1'),
(14, 12, '_edit_last', '1'),
(15, 12, 'logo', '23'),
(16, 12, '_logo', 'field_landing_page_fields_logo'),
(17, 12, 'telephone', '02 35 59 59 47'),
(18, 12, '_telephone', 'field_landing_page_fields_telephone'),
(19, 12, 'texte_bouton_contact', 'Nous contacter'),
(20, 12, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(21, 12, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:14:\"Nous contacter\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(22, 12, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(23, 19, 'logo', ''),
(24, 19, '_logo', 'field_landing_page_fields_logo'),
(25, 19, 'telephone', ''),
(26, 19, '_telephone', 'field_landing_page_fields_telephone'),
(27, 19, 'texte_bouton_contact', 'Nous contacter'),
(28, 19, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(29, 19, 'lien_bouton_contact', ''),
(30, 19, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(31, 20, 'logo', ''),
(32, 20, '_logo', 'field_landing_page_fields_logo'),
(33, 20, 'telephone', ''),
(34, 20, '_telephone', 'field_landing_page_fields_telephone'),
(35, 20, 'texte_bouton_contact', 'Nous contacter'),
(36, 20, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(37, 20, 'lien_bouton_contact', ''),
(38, 20, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(41, 22, 'logo', ''),
(42, 22, '_logo', 'field_landing_page_fields_logo'),
(43, 22, 'telephone', ''),
(44, 22, '_telephone', 'field_landing_page_fields_telephone'),
(45, 22, 'texte_bouton_contact', 'Nous contacter'),
(46, 22, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(47, 22, 'lien_bouton_contact', ''),
(48, 22, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(49, 23, '_wp_attached_file', '2026/08/logo.png'),
(50, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:112;s:4:\"file\";s:16:\"2026/08/logo.png\";s:8:\"filesize\";i:7404;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(52, 12, 'footnotes', ''),
(54, 24, 'footnotes', ''),
(56, 24, 'logo', '23'),
(57, 24, '_logo', 'field_landing_page_fields_logo'),
(58, 24, 'telephone', '02 35 59 59 47'),
(59, 24, '_telephone', 'field_landing_page_fields_telephone'),
(60, 24, 'texte_bouton_contact', 'Nous contacter'),
(61, 24, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(62, 24, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(63, 24, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(66, 26, 'footnotes', ''),
(67, 26, 'logo', '23'),
(68, 26, '_logo', 'field_landing_page_fields_logo'),
(69, 26, 'telephone', '02 35 59 59 47'),
(70, 26, '_telephone', 'field_landing_page_fields_telephone'),
(71, 26, 'texte_bouton_contact', 'Nous contacter'),
(72, 26, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(73, 26, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(74, 26, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(75, 27, 'footnotes', ''),
(76, 27, 'logo', '23'),
(77, 27, '_logo', 'field_landing_page_fields_logo'),
(78, 27, 'telephone', '02 35 59 59 47'),
(79, 27, '_telephone', 'field_landing_page_fields_telephone'),
(80, 27, 'texte_bouton_contact', 'Nous contacter'),
(81, 27, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(82, 27, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(83, 27, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(84, 28, 'footnotes', ''),
(85, 28, 'logo', '23'),
(86, 28, '_logo', 'field_landing_page_fields_logo'),
(87, 28, 'telephone', '02 35 59 59 47'),
(88, 28, '_telephone', 'field_landing_page_fields_telephone'),
(89, 28, 'texte_bouton_contact', 'Nous contacter'),
(90, 28, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(91, 28, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(92, 28, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(93, 11, '_wp_trash_meta_status', 'draft'),
(94, 11, '_wp_trash_meta_time', '1787186518'),
(95, 11, '_wp_desired_post_slug', ''),
(96, 5, '_wp_trash_meta_status', 'publish'),
(97, 5, '_wp_trash_meta_time', '1787186523'),
(98, 5, '_wp_desired_post_slug', 'chirurgie-du-genou'),
(99, 30, '_edit_last', '1'),
(100, 30, '_edit_lock', '1787186968:1'),
(101, 31, '_wp_attached_file', '2026/08/card1.png'),
(102, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:392;s:6:\"height\";i:555;s:4:\"file\";s:17:\"2026/08/card1.png\";s:8:\"filesize\";i:162679;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(103, 30, '_thumbnail_id', '31'),
(104, 30, 'texte_carte', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis gravida aenean risus cras purus sit. Nunc netus rhoncus, sit ac aliquet sit. Eu id in leo amet mattis in. Penatibus id egestas sed consectetur mauris sapien laoreet feugiat. Nam amet pellentesque ac nisl egestas sed velit. Eu morbi tortor, ante consectetur. Consequat mattis posuere tortor enim, dictum posuere purus. Erat feugiat enim ornare amet. Adipiscing gravida non feugiat lectus. Viverra ac, magna pharetra ut fames id.'),
(105, 30, '_texte_carte', 'field_chirurgie_fields_texte_carte'),
(106, 30, 'contenu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis gravida aenean risus cras purus sit. Nunc netus rhoncus, sit ac aliquet sit. Eu id in leo amet mattis in. Penatibus id egestas sed consectetur mauris sapien laoreet feugiat. Nam amet pellentesque ac nisl egestas sed velit. Eu morbi tortor, ante consectetur. Consequat mattis posuere tortor enim, dictum posuere purus. Erat feugiat enim ornare amet. Adipiscing gravida non feugiat lectus. Viverra ac, magna pharetra ut fames id.'),
(107, 30, '_contenu', 'field_chirurgie_fields_contenu'),
(108, 32, '_edit_last', '1'),
(109, 32, '_edit_lock', '1787187079:1'),
(110, 33, '_wp_attached_file', '2026/08/card2.png'),
(111, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:396;s:6:\"height\";i:543;s:4:\"file\";s:17:\"2026/08/card2.png\";s:8:\"filesize\";i:167042;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(112, 32, '_thumbnail_id', '33'),
(113, 32, 'texte_carte', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis gravida aenean risus cras purus sit. Nunc netus rhoncus, sit ac aliquet sit. Eu id in leo amet mattis in. Penatibus id egestas sed consectetur mauris sapien laoreet feugiat. Nam amet pellentesque ac nisl egestas sed velit. Eu morbi tortor, ante consectetur. Consequat mattis posuere tortor enim, dictum posuere purus. Erat feugiat enim ornare amet. Adipiscing gravida non feugiat lectus. Viverra ac, magna pharetra ut fames id.'),
(114, 32, '_texte_carte', 'field_chirurgie_fields_texte_carte'),
(115, 32, 'contenu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis gravida aenean risus cras purus sit. Nunc netus rhoncus, sit ac aliquet sit. Eu id in leo amet mattis in. Penatibus id egestas sed consectetur mauris sapien laoreet feugiat. Nam amet pellentesque ac nisl egestas sed velit. Eu morbi tortor, ante consectetur. Consequat mattis posuere tortor enim, dictum posuere purus. Erat feugiat enim ornare amet. Adipiscing gravida non feugiat lectus. Viverra ac, magna pharetra ut fames id.'),
(116, 32, '_contenu', 'field_chirurgie_fields_contenu'),
(117, 34, '_edit_last', '1'),
(118, 34, '_edit_lock', '1787187125:1'),
(119, 35, '_wp_attached_file', '2026/08/card3.png'),
(120, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:396;s:6:\"height\";i:543;s:4:\"file\";s:17:\"2026/08/card3.png\";s:8:\"filesize\";i:166599;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(121, 34, '_thumbnail_id', '35'),
(122, 34, 'texte_carte', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis gravida aenean risus cras purus sit. Nunc netus rhoncus, sit ac aliquet sit. Eu id in leo amet mattis in. Penatibus id egestas sed consectetur mauris sapien laoreet feugiat. Nam amet pellentesque ac nisl egestas sed velit. Eu morbi tortor, ante consectetur. Consequat mattis posuere tortor enim, dictum posuere purus. Erat feugiat enim ornare amet. Adipiscing gravida non feugiat lectus. Viverra ac, magna pharetra ut fames id.'),
(123, 34, '_texte_carte', 'field_chirurgie_fields_texte_carte'),
(124, 34, 'contenu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis gravida aenean risus cras purus sit. Nunc netus rhoncus, sit ac aliquet sit. Eu id in leo amet mattis in. Penatibus id egestas sed consectetur mauris sapien laoreet feugiat. Nam amet pellentesque ac nisl egestas sed velit. Eu morbi tortor, ante consectetur. Consequat mattis posuere tortor enim, dictum posuere purus. Erat feugiat enim ornare amet. Adipiscing gravida non feugiat lectus. Viverra ac, magna pharetra ut fames id.'),
(125, 34, '_contenu', 'field_chirurgie_fields_contenu'),
(126, 36, '_edit_last', '1'),
(127, 36, '_edit_lock', '1787187185:1'),
(128, 37, '_wp_attached_file', '2026/08/img_6.png'),
(129, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:438;s:6:\"height\";i:499;s:4:\"file\";s:17:\"2026/08/img_6.png\";s:8:\"filesize\";i:263288;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(130, 36, '_thumbnail_id', '37'),
(131, 36, 'texte_carte', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Habitasse varius diam egestas lectus sagittis commodo eros risus.\r\n\r\nMauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna.'),
(132, 36, '_texte_carte', 'field_chirurgie_fields_texte_carte'),
(133, 36, 'contenu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Habitasse varius diam egestas lectus sagittis commodo eros risus.\r\n\r\nMauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna.'),
(134, 36, '_contenu', 'field_chirurgie_fields_contenu'),
(135, 38, '_edit_last', '1'),
(136, 38, '_edit_lock', '1787221468:1'),
(137, 38, '_thumbnail_id', '37'),
(138, 38, 'texte_carte', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Habitasse varius diam egestas lectus sagittis commodo eros risus.\r\n\r\nMauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna.'),
(139, 38, '_texte_carte', 'field_chirurgie_fields_texte_carte'),
(140, 38, 'contenu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Habitasse varius diam egestas lectus sagittis commodo eros risus.\r\n\r\nMauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna.'),
(141, 38, '_contenu', 'field_chirurgie_fields_contenu'),
(142, 39, 'footnotes', ''),
(143, 39, 'logo', '23'),
(144, 39, '_logo', 'field_landing_page_fields_logo'),
(145, 39, 'telephone', '02 35 59 59 47'),
(146, 39, '_telephone', 'field_landing_page_fields_telephone'),
(147, 39, 'texte_bouton_contact', 'Nous contacter'),
(148, 39, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(149, 39, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(150, 39, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(151, 40, 'footnotes', ''),
(152, 40, 'logo', '23'),
(153, 40, '_logo', 'field_landing_page_fields_logo'),
(154, 40, 'telephone', '02 35 59 59 47'),
(155, 40, '_telephone', 'field_landing_page_fields_telephone'),
(156, 40, 'texte_bouton_contact', 'Nous contacter'),
(157, 40, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(158, 40, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(159, 40, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(160, 41, 'footnotes', ''),
(161, 41, 'logo', '23'),
(162, 41, '_logo', 'field_landing_page_fields_logo'),
(163, 41, 'telephone', '02 35 59 59 47'),
(164, 41, '_telephone', 'field_landing_page_fields_telephone'),
(165, 41, 'texte_bouton_contact', 'Nous contacter'),
(166, 41, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(167, 41, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(168, 41, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(169, 42, 'footnotes', ''),
(170, 42, 'logo', '23'),
(171, 42, '_logo', 'field_landing_page_fields_logo'),
(172, 42, 'telephone', '02 35 59 59 47'),
(173, 42, '_telephone', 'field_landing_page_fields_telephone'),
(174, 42, 'texte_bouton_contact', 'Nous contacter'),
(175, 42, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(176, 42, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(177, 42, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(180, 44, '_wp_attached_file', '2026/08/hero_mobile.png'),
(181, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:414;s:6:\"height\";i:240;s:4:\"file\";s:23:\"2026/08/hero_mobile.png\";s:8:\"filesize\";i:19247;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(182, 45, 'footnotes', ''),
(183, 45, 'logo', '23'),
(184, 45, '_logo', 'field_landing_page_fields_logo'),
(185, 45, 'telephone', '02 35 59 59 47'),
(186, 45, '_telephone', 'field_landing_page_fields_telephone'),
(187, 45, 'texte_bouton_contact', 'Nous contacter'),
(188, 45, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(189, 45, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(190, 45, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(191, 46, '_wp_attached_file', '2026/08/Arrow_button.png'),
(192, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:21;s:6:\"height\";i:12;s:4:\"file\";s:24:\"2026/08/Arrow_button.png\";s:8:\"filesize\";i:216;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(193, 47, '_wp_attached_file', '2026/08/big_plus.png'),
(194, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1040;s:6:\"height\";i:1040;s:4:\"file\";s:20:\"2026/08/big_plus.png\";s:8:\"filesize\";i:6643;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(195, 48, '_wp_attached_file', '2026/08/c_button.png'),
(196, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:58;s:6:\"height\";i:65;s:4:\"file\";s:20:\"2026/08/c_button.png\";s:8:\"filesize\";i:1163;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(197, 49, '_wp_attached_file', '2026/08/phone.png'),
(198, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:19;s:6:\"height\";i:19;s:4:\"file\";s:17:\"2026/08/phone.png\";s:8:\"filesize\";i:570;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(199, 50, '_wp_attached_file', '2026/08/search_bar_icon.png'),
(200, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:22;s:6:\"height\";i:23;s:4:\"file\";s:27:\"2026/08/search_bar_icon.png\";s:8:\"filesize\";i:602;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(201, 51, '_wp_attached_file', '2026/08/search_icon.png'),
(202, 51, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:50;s:6:\"height\";i:37;s:4:\"file\";s:23:\"2026/08/search_icon.png\";s:8:\"filesize\";i:645;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(203, 52, '_wp_attached_file', '2026/08/small_plus.png'),
(204, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:22:\"2026/08/small_plus.png\";s:8:\"filesize\";i:207;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(205, 53, '_wp_attached_file', '2026/08/Arrow_button-1.png'),
(206, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:21;s:6:\"height\";i:12;s:4:\"file\";s:26:\"2026/08/Arrow_button-1.png\";s:8:\"filesize\";i:216;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(209, 55, '_wp_attached_file', '2026/08/slogen.png'),
(210, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:59;s:4:\"file\";s:18:\"2026/08/slogen.png\";s:8:\"filesize\";i:4868;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(211, 56, '_wp_attached_file', '2026/08/prendre_icon.png'),
(212, 56, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:107;s:6:\"height\";i:112;s:4:\"file\";s:24:\"2026/08/prendre_icon.png\";s:8:\"filesize\";i:7395;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(215, 58, 'footnotes', ''),
(216, 58, 'logo', '23'),
(217, 58, '_logo', 'field_landing_page_fields_logo'),
(218, 58, 'telephone', '02 35 59 59 47'),
(219, 58, '_telephone', 'field_landing_page_fields_telephone'),
(220, 58, 'texte_bouton_contact', 'Nous contacter'),
(221, 58, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(222, 58, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(223, 58, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(224, 59, '_wp_attached_file', '2026/08/hero_image.png'),
(225, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:768;s:6:\"height\";i:728;s:4:\"file\";s:22:\"2026/08/hero_image.png\";s:8:\"filesize\";i:104856;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(226, 60, 'footnotes', ''),
(227, 60, 'logo', '23'),
(228, 60, '_logo', 'field_landing_page_fields_logo'),
(229, 60, 'telephone', '02 35 59 59 47'),
(230, 60, '_telephone', 'field_landing_page_fields_telephone'),
(231, 60, 'texte_bouton_contact', 'Nous contacter'),
(232, 60, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(233, 60, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(234, 60, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(241, 63, 'footnotes', ''),
(243, 12, 'icone_menu', '51'),
(244, 12, '_icone_menu', 'field_landing_page_fields_icone_menu'),
(245, 12, 'icone_telephone', '49'),
(246, 12, '_icone_telephone', 'field_landing_page_fields_icone_telephone'),
(247, 12, 'icone_recherche_header', '62'),
(248, 12, '_icone_recherche_header', 'field_landing_page_fields_icone_recherche_header'),
(249, 63, 'logo', '23'),
(250, 63, '_logo', 'field_landing_page_fields_logo'),
(251, 63, 'telephone', '02 35 59 59 47'),
(252, 63, '_telephone', 'field_landing_page_fields_telephone'),
(253, 63, 'texte_bouton_contact', 'Nous contacter'),
(254, 63, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(255, 63, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(256, 63, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(257, 63, 'icone_menu', '51'),
(258, 63, '_icone_menu', 'field_landing_page_fields_icone_menu'),
(259, 63, 'icone_telephone', '49'),
(260, 63, '_icone_telephone', 'field_landing_page_fields_icone_telephone'),
(261, 63, 'icone_recherche_header', '62'),
(262, 63, '_icone_recherche_header', 'field_landing_page_fields_icone_recherche_header'),
(263, 64, '_wp_attached_file', '2026/08/intro1.png'),
(264, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:623;s:6:\"height\";i:462;s:4:\"file\";s:18:\"2026/08/intro1.png\";s:8:\"filesize\";i:486057;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(267, 66, '_wp_attached_file', '2026/08/intro2.png'),
(268, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:692;s:6:\"height\";i:462;s:4:\"file\";s:18:\"2026/08/intro2.png\";s:8:\"filesize\";i:378321;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(269, 67, 'footnotes', ''),
(270, 67, 'logo', '23'),
(271, 67, '_logo', 'field_landing_page_fields_logo'),
(272, 67, 'telephone', '02 35 59 59 47'),
(273, 67, '_telephone', 'field_landing_page_fields_telephone'),
(274, 67, 'texte_bouton_contact', 'Nous contacter'),
(275, 67, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(276, 67, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(277, 67, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(278, 67, 'icone_menu', '51'),
(279, 67, '_icone_menu', 'field_landing_page_fields_icone_menu'),
(280, 67, 'icone_telephone', '49'),
(281, 67, '_icone_telephone', 'field_landing_page_fields_icone_telephone'),
(282, 67, 'icone_recherche_header', '62'),
(283, 67, '_icone_recherche_header', 'field_landing_page_fields_icone_recherche_header'),
(286, 69, 'footnotes', ''),
(287, 69, 'logo', '23'),
(288, 69, '_logo', 'field_landing_page_fields_logo'),
(289, 69, 'telephone', '02 35 59 59 47'),
(290, 69, '_telephone', 'field_landing_page_fields_telephone'),
(291, 69, 'texte_bouton_contact', 'Nous contacter'),
(292, 69, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(293, 69, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:17:\"Réglages du site\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(294, 69, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(295, 69, 'icone_menu', '51'),
(296, 69, '_icone_menu', 'field_landing_page_fields_icone_menu'),
(297, 69, 'icone_telephone', '49'),
(298, 69, '_icone_telephone', 'field_landing_page_fields_icone_telephone'),
(299, 69, 'icone_recherche_header', '62'),
(300, 69, '_icone_recherche_header', 'field_landing_page_fields_icone_recherche_header'),
(301, 70, '_wp_attached_file', '2026/08/Arrow1.png'),
(302, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:16;s:6:\"height\";i:15;s:4:\"file\";s:18:\"2026/08/Arrow1.png\";s:8:\"filesize\";i:238;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(303, 71, '_wp_attached_file', '2026/08/search.png'),
(304, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:23;s:6:\"height\";i:24;s:4:\"file\";s:18:\"2026/08/search.png\";s:8:\"filesize\";i:425;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(307, 72, 'footnotes', ''),
(309, 72, 'logo', '23'),
(310, 72, '_logo', 'field_landing_page_fields_logo'),
(311, 72, 'telephone', '02 35 59 59 47'),
(312, 72, '_telephone', 'field_landing_page_fields_telephone'),
(313, 72, 'texte_bouton_contact', 'Nous contacter'),
(314, 72, '_texte_bouton_contact', 'field_landing_page_fields_texte_bouton_contact'),
(315, 72, 'lien_bouton_contact', 'a:3:{s:5:\"title\";s:14:\"Nous contacter\";s:3:\"url\";s:26:\"http://localhost/test/web/\";s:6:\"target\";s:0:\"\";}'),
(316, 72, '_lien_bouton_contact', 'field_landing_page_fields_lien_bouton_contact'),
(317, 72, 'icone_menu', '51'),
(318, 72, '_icone_menu', 'field_landing_page_fields_icone_menu'),
(319, 72, 'icone_telephone', '49'),
(320, 72, '_icone_telephone', 'field_landing_page_fields_icone_telephone'),
(321, 72, 'icone_recherche_header', '62'),
(322, 72, '_icone_recherche_header', 'field_landing_page_fields_icone_recherche_header');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2026-08-19 10:40:59', '2026-08-19 10:40:59', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2026-08-19 10:40:59', '2026-08-19 10:40:59', '', 0, 'http://localhost/test/web/?p=1', 0, 'post', '', 1),
(2, 1, '2026-08-19 10:40:59', '2026-08-19 10:40:59', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/test/web/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2026-08-19 10:40:59', '2026-08-19 10:40:59', '', 0, 'http://localhost/test/web/?page_id=2', 0, 'page', '', 0),
(3, 1, '2026-08-19 10:40:59', '2026-08-19 10:40:59', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/test/web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2026-08-19 10:40:59', '2026-08-19 10:40:59', '', 0, 'http://localhost/test/web/?page_id=3', 0, 'page', '', 0),
(4, 1, '2026-08-19 10:41:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2026-08-19 10:41:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/test/web/?p=4', 0, 'post', '', 0),
(5, 1, '2026-08-19 12:18:23', '2026-08-19 12:18:23', '', 'chirurgie du genou', '', 'trash', 'closed', 'closed', '', 'chirurgie-du-genou__trashed', '', '', '2026-08-20 00:42:03', '2026-08-20 00:42:03', '', 0, 'http://localhost/test/web/?post_type=chirurgie&#038;p=5', 0, 'chirurgie', '', 0),
(7, 1, '2026-08-19 12:22:00', '2026-08-19 12:22:00', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-dr-polle', '', '', '2026-08-19 12:22:00', '2026-08-19 12:22:00', '', 0, 'http://localhost/test/web/?p=7', 0, 'wp_global_styles', '', 0),
(8, 1, '2026-08-19 12:42:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-08-19 12:42:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/test/web/?post_type=chirurgie&p=8', 0, 'chirurgie', '', 0),
(9, 1, '2026-08-19 12:51:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-08-19 12:51:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/test/web/?post_type=chirurgie&p=9', 0, 'chirurgie', '', 0),
(10, 1, '2026-08-19 12:54:22', '2026-08-19 12:54:22', '', 'chirurgie du genou', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2026-08-19 12:54:22', '2026-08-19 12:54:22', '', 5, 'http://localhost/test/web/?p=10', 0, 'revision', '', 0),
(11, 1, '2026-08-20 00:41:58', '2026-08-20 00:41:58', '', 'xncxncxn', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2026-08-20 00:41:58', '2026-08-20 00:41:58', '', 0, 'http://localhost/test/web/?post_type=chirurgie&#038;p=11', 0, 'chirurgie', '', 0),
(12, 1, '2026-08-19 13:33:25', '2026-08-19 13:33:25', '<!-- wp:dr-polle/hero {\"texte\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam pellentesque cursus potenti nunc. Ullamcorper tempus\\nimperdiet nunc suscipit lacus, venenatis.\",\"lien_url\":\"#\",\"rdv_url\":\"#\",\"image_id\":59,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_image.png\",\"image_mobile_id\":44,\"image_mobile_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_mobile.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":64,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/intro1.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Un accompagnement\",\"titre_accent\":\"premium\",\"sous_titre\":\"Une prise en charge globale et adaptée au patient / une communication transparente et pédagogique / des dispositifs sanitaires pour assurer une securité maximale / Un suivi personnalisé.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\",\"lien_url\":\"#\",\"image_id\":66,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/intro2.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies {\"texte\":\"Des chirurgies réparatrices pour redonner vie à votre mobilité... Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. Risus scelerisque quis dictumst nibh netus sit sit posuere. Nam massa ante amet orci purus sagittis ornare. Et risus placerat nibh et id sapien.\",\"lien_url\":\"hhhhhhhhhhhhh\"} /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees {\"texte\":\"Des chirurgies réparatrices dédiées aux membres inférieurs. / Clinique spécialisée dans les interventions chirurgicales de prothèse de la cheville et du genou. / Votre spécialiste orthopédique en Normandie ... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. mmm\",\"lien_url\":\"gggggggggggggggggg\"} /-->', 'Page d\'acceuil', '', 'publish', 'closed', 'closed', '', 'reglages-du-site', '', '', '2026-08-20 11:48:09', '2026-08-20 11:48:09', '', 0, 'http://localhost/test/web/?page_id=12', 0, 'page', '', 0),
(13, 1, '2026-08-19 20:36:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-08-19 20:36:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/test/web/?post_type=chirurgie&p=13', 0, 'chirurgie', '', 0),
(14, 1, '2026-08-19 20:40:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-08-19 20:40:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/test/web/?post_type=chirurgie&p=14', 0, 'chirurgie', '', 0),
(15, 1, '2026-08-19 20:40:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-08-19 20:40:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/test/web/?post_type=chirurgie&p=15', 0, 'chirurgie', '', 0),
(16, 1, '2026-08-19 20:42:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-08-19 20:42:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/test/web/?post_type=chirurgie&p=16', 0, 'chirurgie', '', 0),
(17, 1, '2026-08-19 20:51:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-08-19 20:51:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/test/web/?post_type=chirurgie&p=17', 0, 'chirurgie', '', 0),
(19, 1, '2026-08-19 23:55:07', '2026-08-19 23:55:07', '<!-- wp:dr-polle/hero {\"texte\":\"tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds \",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->', 'Réglages du site', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-19 23:55:07', '2026-08-19 23:55:07', '', 12, 'http://localhost/test/web/?p=19', 0, 'revision', '', 0),
(20, 1, '2026-08-19 23:56:40', '2026-08-19 23:56:40', '<!-- wp:dr-polle/hero {\"texte\":\"tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds \",\"lien_url\":\"En savoir plus\",\"rdv_url\":\"En savoir plus \",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->', 'Réglages du site', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-19 23:56:40', '2026-08-19 23:56:40', '', 12, 'http://localhost/test/web/?p=20', 0, 'revision', '', 0),
(22, 1, '2026-08-20 00:00:05', '2026-08-20 00:00:05', '<!-- wp:dr-polle/section-texte-image /-->\n\n<!-- wp:dr-polle/hero {\"texte\":\"tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds \",\"lien_url\":\"En savoir plus\",\"rdv_url\":\"En savoir plus \",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->\n\n<!-- wp:dr-polle/section-texte-image {\"surtitre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"titre\":\"Une équipe expérimentée au service de votre santé\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"jh\\u005czz\\u005chj\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->\n\n<!-- wp:dr-polle/grille-chirurgies /-->\n\n<!-- wp:dr-polle/section-texte-image /-->', 'Réglages du site', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 00:00:05', '2026-08-20 00:00:05', '', 12, 'http://localhost/test/web/?p=22', 0, 'revision', '', 0),
(23, 1, '2026-08-20 00:03:28', '2026-08-20 00:03:28', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2026-08-20 00:03:28', '2026-08-20 00:03:28', '', 12, 'http://localhost/test/web/app/uploads/2026/08/logo.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2026-08-20 00:04:22', '2026-08-20 00:04:22', '<!-- wp:dr-polle/section-texte-image /-->\n\n<!-- wp:dr-polle/hero {\"texte\":\"tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds \",\"lien_url\":\"En savoir plus\",\"rdv_url\":\"En savoir plus \",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->\n\n<!-- wp:dr-polle/section-texte-image {\"surtitre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"titre\":\"Une équipe expérimentée au service de votre santé\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"jh\\u005czz\\u005chj\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->\n\n<!-- wp:dr-polle/grille-chirurgies /-->\n\n<!-- wp:dr-polle/section-texte-image /-->', 'Réglages du site', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 00:04:22', '2026-08-20 00:04:22', '', 12, 'http://localhost/test/web/?p=24', 0, 'revision', '', 0),
(26, 1, '2026-08-20 00:23:05', '2026-08-20 00:23:05', '<!-- wp:dr-polle/hero {\"texte\":\"tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds \",\"lien_url\":\"En savoir plus\",\"rdv_url\":\"En savoir plus \",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"dddd\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees /-->\n\n<!-- wp:dr-polle/introduction /-->\n\n<!-- wp:dr-polle/introduction /-->\n\n<!-- wp:dr-polle/introduction /-->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 00:23:05', '2026-08-20 00:23:05', '', 12, 'http://localhost/test/web/?p=26', 0, 'revision', '', 0),
(27, 1, '2026-08-20 00:25:01', '2026-08-20 00:25:01', '<!-- wp:dr-polle/hero {\"texte\":\"tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds \",\"lien_url\":\"En savoir plus\",\"rdv_url\":\"En savoir plus \",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees /-->\n\n<!-- wp:dr-polle/introduction /-->\n\n<!-- wp:dr-polle/introduction /-->\n\n<!-- wp:dr-polle/introduction /-->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 00:25:01', '2026-08-20 00:25:01', '', 12, 'http://localhost/test/web/?p=27', 0, 'revision', '', 0),
(28, 1, '2026-08-20 00:25:38', '2026-08-20 00:25:38', '<!-- wp:dr-polle/hero {\"texte\":\"tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds \",\"lien_url\":\"En savoir plus\",\"rdv_url\":\"En savoir plus \",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees /-->\n\n<!-- wp:dr-polle/introduction /-->\n\n<!-- wp:dr-polle/introduction /-->\n\n<!-- wp:dr-polle/introduction /-->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 00:25:38', '2026-08-20 00:25:38', '', 12, 'http://localhost/test/web/?p=28', 0, 'revision', '', 0),
(29, 1, '2026-08-20 00:47:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-08-20 00:47:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/test/web/?post_type=chirurgie&p=29', 0, 'chirurgie', '', 0),
(30, 1, '2026-08-20 00:49:26', '2026-08-20 00:49:26', '', 'chirurgie du genou', '', 'publish', 'closed', 'closed', '', 'chirurgie-du-genou', '', '', '2026-08-20 00:49:26', '2026-08-20 00:49:26', '', 0, 'http://localhost/test/web/?post_type=chirurgie&#038;p=30', 0, 'chirurgie', '', 0),
(31, 1, '2026-08-20 00:49:18', '2026-08-20 00:49:18', '', 'card1', '', 'inherit', 'open', 'closed', '', 'card1', '', '', '2026-08-20 00:49:18', '2026-08-20 00:49:18', '', 30, 'http://localhost/test/web/app/uploads/2026/08/card1.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2026-08-20 00:51:17', '2026-08-20 00:51:17', '', 'chirurgie de la cheville', '', 'publish', 'closed', 'closed', '', 'chirurgie-de-la-cheville', '', '', '2026-08-20 00:51:17', '2026-08-20 00:51:17', '', 0, 'http://localhost/test/web/?post_type=chirurgie&#038;p=32', 0, 'chirurgie', '', 0),
(33, 1, '2026-08-20 00:51:06', '2026-08-20 00:51:06', '', 'card2', '', 'inherit', 'open', 'closed', '', 'card2', '', '', '2026-08-20 00:51:06', '2026-08-20 00:51:06', '', 32, 'http://localhost/test/web/app/uploads/2026/08/card2.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2026-08-20 00:52:03', '2026-08-20 00:52:03', '', 'chirurgie du pied', '', 'publish', 'closed', 'closed', '', 'chirurgie-du-pied', '', '', '2026-08-20 00:52:03', '2026-08-20 00:52:03', '', 0, 'http://localhost/test/web/?post_type=chirurgie&#038;p=34', 0, 'chirurgie', '', 0),
(35, 1, '2026-08-20 00:51:58', '2026-08-20 00:51:58', '', 'card3', '', 'inherit', 'open', 'closed', '', 'card3', '', '', '2026-08-20 00:51:58', '2026-08-20 00:51:58', '', 34, 'http://localhost/test/web/app/uploads/2026/08/card3.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2026-08-20 00:53:04', '2026-08-20 00:53:04', '', 'Prothèse totale du genou', '', 'publish', 'closed', 'closed', '', 'prothese-totale-du-genou', '', '', '2026-08-20 00:53:04', '2026-08-20 00:53:04', '', 0, 'http://localhost/test/web/?post_type=chirurgie&#038;p=36', 0, 'chirurgie', '', 0),
(37, 1, '2026-08-20 00:52:53', '2026-08-20 00:52:53', '', 'img_6', '', 'inherit', 'open', 'closed', '', 'img_6', '', '', '2026-08-20 00:52:53', '2026-08-20 00:52:53', '', 36, 'http://localhost/test/web/app/uploads/2026/08/img_6.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2026-08-20 00:53:42', '2026-08-20 00:53:42', '', 'Prothèse totale de la cheville', '', 'publish', 'closed', 'closed', '', 'prothese-totale-de-la-cheville', '', '', '2026-08-20 00:53:42', '2026-08-20 00:53:42', '', 0, 'http://localhost/test/web/?post_type=chirurgie&#038;p=38', 0, 'chirurgie', '', 0),
(39, 1, '2026-08-20 00:55:21', '2026-08-20 00:55:21', '<!-- wp:dr-polle/hero {\"texte\":\"tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds \",\"lien_url\":\"En savoir plus\",\"rdv_url\":\"En savoir plus \",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees {\"texte\":\"Des chirurgies réparatrices dédiées aux membres inférieurs. / Clinique spécialisée dans les interventions chirurgicales de prothèse de la cheville et du genou. / Votre spécialiste orthopédique en Normandie ... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus.\",\"lien_url\":\"gggggggggggggggggg\"} /-->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 00:55:21', '2026-08-20 00:55:21', '', 12, 'http://localhost/test/web/?p=39', 0, 'revision', '', 0),
(40, 1, '2026-08-20 00:56:31', '2026-08-20 00:56:31', '<!-- wp:dr-polle/hero {\"texte\":\"tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds \",\"lien_url\":\"En savoir plus\",\"rdv_url\":\"En savoir plus \",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees {\"texte\":\"Des chirurgies réparatrices dédiées aux membres inférieurs. / Clinique spécialisée dans les interventions chirurgicales de prothèse de la cheville et du genou. / Votre spécialiste orthopédique en Normandie ... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. mmm\",\"lien_url\":\"gggggggggggggggggg\"} /-->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 00:56:31', '2026-08-20 00:56:31', '', 12, 'http://localhost/test/web/?p=40', 0, 'revision', '', 0),
(41, 1, '2026-08-20 00:57:02', '2026-08-20 00:57:02', '<!-- wp:dr-polle/hero {\"texte\":\"tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds \",\"lien_url\":\"En savoir plus\",\"rdv_url\":\"En savoir plus \",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies {\"texte\":\"Des chirurgies réparatrices pour redonner vie à votre mobilité... Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. Risus scelerisque quis dictumst nibh netus sit sit posuere. Nam massa ante amet orci purus sagittis ornare. Et risus placerat nibh et id sapien.\",\"lien_url\":\"hhhhhhhhhhhhh\"} /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees {\"texte\":\"Des chirurgies réparatrices dédiées aux membres inférieurs. / Clinique spécialisée dans les interventions chirurgicales de prothèse de la cheville et du genou. / Votre spécialiste orthopédique en Normandie ... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. mmm\",\"lien_url\":\"gggggggggggggggggg\"} /-->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 00:57:02', '2026-08-20 00:57:02', '', 12, 'http://localhost/test/web/?p=41', 0, 'revision', '', 0),
(42, 1, '2026-08-20 10:25:23', '2026-08-20 10:25:23', '<!-- wp:dr-polle/hero {\"texte\":\"tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds tettt  dshjsdhds \",\"lien_url\":\"En savoir plus\",\"rdv_url\":\"En savoir plus \",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies {\"texte\":\"Des chirurgies réparatrices pour redonner vie à votre mobilité... Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. Risus scelerisque quis dictumst nibh netus sit sit posuere. Nam massa ante amet orci purus sagittis ornare. Et risus placerat nibh et id sapien.\",\"lien_url\":\"hhhhhhhhhhhhh\"} /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees {\"texte\":\"Des chirurgies réparatrices dédiées aux membres inférieurs. / Clinique spécialisée dans les interventions chirurgicales de prothèse de la cheville et du genou. / Votre spécialiste orthopédique en Normandie ... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. mmm\",\"lien_url\":\"gggggggggggggggggg\"} /-->\n\n<!-- wp:paragraph -->\n<p>Section 5</p>\n<!-- /wp:paragraph -->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 10:25:23', '2026-08-20 10:25:23', '', 12, 'http://localhost/test/web/?p=42', 0, 'revision', '', 0),
(44, 1, '2026-08-20 10:30:30', '2026-08-20 10:30:30', '', 'hero_mobile', '', 'inherit', 'open', 'closed', '', 'hero_mobile', '', '', '2026-08-20 10:30:30', '2026-08-20 10:30:30', '', 12, 'http://localhost/test/web/app/uploads/2026/08/hero_mobile.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2026-08-20 10:30:44', '2026-08-20 10:30:44', '<!-- wp:dr-polle/hero {\"texte\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam pellentesque cursus potenti nunc. Ullamcorper tempus\\nimperdiet nunc suscipit lacus, venenatis.\",\"lien_url\":\"#\",\"rdv_url\":\"#\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\",\"image_mobile_id\":44,\"image_mobile_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_mobile.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies {\"texte\":\"Des chirurgies réparatrices pour redonner vie à votre mobilité... Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. Risus scelerisque quis dictumst nibh netus sit sit posuere. Nam massa ante amet orci purus sagittis ornare. Et risus placerat nibh et id sapien.\",\"lien_url\":\"hhhhhhhhhhhhh\"} /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees {\"texte\":\"Des chirurgies réparatrices dédiées aux membres inférieurs. / Clinique spécialisée dans les interventions chirurgicales de prothèse de la cheville et du genou. / Votre spécialiste orthopédique en Normandie ... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. mmm\",\"lien_url\":\"gggggggggggggggggg\"} /-->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 10:30:44', '2026-08-20 10:30:44', '', 12, 'http://localhost/test/web/?p=45', 0, 'revision', '', 0),
(46, 1, '2026-08-20 10:49:58', '2026-08-20 10:49:58', '', 'Arrow_button', '', 'inherit', 'open', 'closed', '', 'arrow_button', '', '', '2026-08-20 10:49:58', '2026-08-20 10:49:58', '', 0, 'http://localhost/test/web/app/uploads/2026/08/Arrow_button.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2026-08-20 10:49:59', '2026-08-20 10:49:59', '', 'big_plus', '', 'inherit', 'open', 'closed', '', 'big_plus', '', '', '2026-08-20 10:49:59', '2026-08-20 10:49:59', '', 0, 'http://localhost/test/web/app/uploads/2026/08/big_plus.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2026-08-20 10:50:00', '2026-08-20 10:50:00', '', 'c_button', '', 'inherit', 'open', 'closed', '', 'c_button', '', '', '2026-08-20 10:50:00', '2026-08-20 10:50:00', '', 0, 'http://localhost/test/web/app/uploads/2026/08/c_button.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2026-08-20 10:50:00', '2026-08-20 10:50:00', '', 'phone', '', 'inherit', 'open', 'closed', '', 'phone', '', '', '2026-08-20 11:03:18', '2026-08-20 11:03:18', '', 12, 'http://localhost/test/web/app/uploads/2026/08/phone.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2026-08-20 10:50:02', '2026-08-20 10:50:02', '', 'search_bar_icon', '', 'inherit', 'open', 'closed', '', 'search_bar_icon', '', '', '2026-08-20 10:50:02', '2026-08-20 10:50:02', '', 0, 'http://localhost/test/web/app/uploads/2026/08/search_bar_icon.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2026-08-20 10:50:02', '2026-08-20 10:50:02', '', 'search_icon', '', 'inherit', 'open', 'closed', '', 'search_icon', '', '', '2026-08-20 11:03:18', '2026-08-20 11:03:18', '', 12, 'http://localhost/test/web/app/uploads/2026/08/search_icon.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2026-08-20 10:50:03', '2026-08-20 10:50:03', '', 'small_plus', '', 'inherit', 'open', 'closed', '', 'small_plus', '', '', '2026-08-20 10:50:03', '2026-08-20 10:50:03', '', 0, 'http://localhost/test/web/app/uploads/2026/08/small_plus.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2026-08-20 10:51:26', '2026-08-20 10:51:26', '', 'Arrow_button', '', 'inherit', 'open', 'closed', '', 'arrow_button-2', '', '', '2026-08-20 10:51:26', '2026-08-20 10:51:26', '', 0, 'http://localhost/test/web/app/uploads/2026/08/Arrow_button-1.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2026-08-20 10:53:42', '2026-08-20 10:53:42', '', 'slogen', '', 'inherit', 'open', 'closed', '', 'slogen', '', '', '2026-08-20 10:53:42', '2026-08-20 10:53:42', '', 12, 'http://localhost/test/web/app/uploads/2026/08/slogen.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2026-08-20 10:53:56', '2026-08-20 10:53:56', '', 'prendre_icon', '', 'inherit', 'open', 'closed', '', 'prendre_icon', '', '', '2026-08-20 10:53:56', '2026-08-20 10:53:56', '', 12, 'http://localhost/test/web/app/uploads/2026/08/prendre_icon.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2026-08-20 10:54:07', '2026-08-20 10:54:07', '<!-- wp:dr-polle/hero {\"texte\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam pellentesque cursus potenti nunc. Ullamcorper tempus\\nimperdiet nunc suscipit lacus, venenatis.\",\"lien_url\":\"#\",\"rdv_url\":\"#\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\",\"image_mobile_id\":44,\"image_mobile_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_mobile.png\",\"slogen_image_id\":55,\"slogen_image_url\":\"http://localhost/test/web/app/uploads/2026/08/slogen.png\",\"rdv_icon_id\":56,\"rdv_icon_url\":\"http://localhost/test/web/app/uploads/2026/08/prendre_icon.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies {\"texte\":\"Des chirurgies réparatrices pour redonner vie à votre mobilité... Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. Risus scelerisque quis dictumst nibh netus sit sit posuere. Nam massa ante amet orci purus sagittis ornare. Et risus placerat nibh et id sapien.\",\"lien_url\":\"hhhhhhhhhhhhh\"} /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees {\"texte\":\"Des chirurgies réparatrices dédiées aux membres inférieurs. / Clinique spécialisée dans les interventions chirurgicales de prothèse de la cheville et du genou. / Votre spécialiste orthopédique en Normandie ... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. mmm\",\"lien_url\":\"gggggggggggggggggg\"} /-->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 10:54:07', '2026-08-20 10:54:07', '', 12, 'http://localhost/test/web/?p=58', 0, 'revision', '', 0),
(59, 1, '2026-08-20 10:58:23', '2026-08-20 10:58:23', '', 'hero_image', '', 'inherit', 'open', 'closed', '', 'hero_image', '', '', '2026-08-20 10:58:23', '2026-08-20 10:58:23', '', 12, 'http://localhost/test/web/app/uploads/2026/08/hero_image.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2026-08-20 10:58:30', '2026-08-20 10:58:30', '<!-- wp:dr-polle/hero {\"texte\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam pellentesque cursus potenti nunc. Ullamcorper tempus\\nimperdiet nunc suscipit lacus, venenatis.\",\"lien_url\":\"#\",\"rdv_url\":\"#\",\"image_id\":59,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_image.png\",\"image_mobile_id\":44,\"image_mobile_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_mobile.png\",\"slogen_image_id\":55,\"slogen_image_url\":\"http://localhost/test/web/app/uploads/2026/08/slogen.png\",\"rdv_icon_id\":56,\"rdv_icon_url\":\"http://localhost/test/web/app/uploads/2026/08/prendre_icon.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies {\"texte\":\"Des chirurgies réparatrices pour redonner vie à votre mobilité... Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. Risus scelerisque quis dictumst nibh netus sit sit posuere. Nam massa ante amet orci purus sagittis ornare. Et risus placerat nibh et id sapien.\",\"lien_url\":\"hhhhhhhhhhhhh\"} /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees {\"texte\":\"Des chirurgies réparatrices dédiées aux membres inférieurs. / Clinique spécialisée dans les interventions chirurgicales de prothèse de la cheville et du genou. / Votre spécialiste orthopédique en Normandie ... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. mmm\",\"lien_url\":\"gggggggggggggggggg\"} /-->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 10:58:30', '2026-08-20 10:58:30', '', 12, 'http://localhost/test/web/?p=60', 0, 'revision', '', 0),
(63, 1, '2026-08-20 11:03:17', '2026-08-20 11:03:17', '<!-- wp:dr-polle/hero {\"texte\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam pellentesque cursus potenti nunc. Ullamcorper tempus\\nimperdiet nunc suscipit lacus, venenatis.\",\"lien_url\":\"#\",\"rdv_url\":\"#\",\"image_id\":59,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_image.png\",\"image_mobile_id\":44,\"image_mobile_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_mobile.png\",\"slogen_image_id\":55,\"slogen_image_url\":\"http://localhost/test/web/app/uploads/2026/08/slogen.png\",\"rdv_icon_id\":56,\"rdv_icon_url\":\"http://localhost/test/web/app/uploads/2026/08/prendre_icon.png\",\"search_bar_icon_id\":50,\"search_bar_icon_url\":\"http://localhost/test/web/app/uploads/2026/08/search_bar_icon.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":6,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/Group-1161.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies {\"texte\":\"Des chirurgies réparatrices pour redonner vie à votre mobilité... Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. Risus scelerisque quis dictumst nibh netus sit sit posuere. Nam massa ante amet orci purus sagittis ornare. Et risus placerat nibh et id sapien.\",\"lien_url\":\"hhhhhhhhhhhhh\"} /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees {\"texte\":\"Des chirurgies réparatrices dédiées aux membres inférieurs. / Clinique spécialisée dans les interventions chirurgicales de prothèse de la cheville et du genou. / Votre spécialiste orthopédique en Normandie ... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. mmm\",\"lien_url\":\"gggggggggggggggggg\"} /-->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 11:03:17', '2026-08-20 11:03:17', '', 12, 'http://localhost/test/web/?p=63', 0, 'revision', '', 0),
(64, 1, '2026-08-20 11:29:33', '2026-08-20 11:29:33', '', 'intro1', '', 'inherit', 'open', 'closed', '', 'intro1', '', '', '2026-08-20 11:29:33', '2026-08-20 11:29:33', '', 12, 'http://localhost/test/web/app/uploads/2026/08/intro1.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2026-08-20 11:31:32', '2026-08-20 11:31:32', '', 'intro2', '', 'inherit', 'open', 'closed', '', 'intro2', '', '', '2026-08-20 11:31:32', '2026-08-20 11:31:32', '', 12, 'http://localhost/test/web/app/uploads/2026/08/intro2.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(67, 1, '2026-08-20 11:31:52', '2026-08-20 11:31:52', '<!-- wp:dr-polle/hero {\"texte\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam pellentesque cursus potenti nunc. Ullamcorper tempus\\nimperdiet nunc suscipit lacus, venenatis.\",\"lien_url\":\"#\",\"rdv_url\":\"#\",\"image_id\":59,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_image.png\",\"image_mobile_id\":44,\"image_mobile_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_mobile.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":64,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/intro1.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Un accompagnement\",\"titre_accent\":\"premium\",\"sous_titre\":\"Une prise en charge globale et adaptée au patient / une communication transparente et pédagogique / des dispositifs sanitaires pour assurer une securité maximale / Un suivi personnalisé.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\",\"lien_url\":\"#\",\"image_id\":66,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/intro2.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies {\"texte\":\"Des chirurgies réparatrices pour redonner vie à votre mobilité... Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. Risus scelerisque quis dictumst nibh netus sit sit posuere. Nam massa ante amet orci purus sagittis ornare. Et risus placerat nibh et id sapien.\",\"lien_url\":\"hhhhhhhhhhhhh\"} /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees {\"texte\":\"Des chirurgies réparatrices dédiées aux membres inférieurs. / Clinique spécialisée dans les interventions chirurgicales de prothèse de la cheville et du genou. / Votre spécialiste orthopédique en Normandie ... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. mmm\",\"lien_url\":\"gggggggggggggggggg\"} /-->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 11:31:52', '2026-08-20 11:31:52', '', 12, 'http://localhost/test/web/?p=67', 0, 'revision', '', 0),
(69, 1, '2026-08-20 11:32:43', '2026-08-20 11:32:43', '<!-- wp:dr-polle/hero {\"texte\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam pellentesque cursus potenti nunc. Ullamcorper tempus\\nimperdiet nunc suscipit lacus, venenatis.\",\"lien_url\":\"#\",\"rdv_url\":\"#\",\"image_id\":59,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_image.png\",\"image_mobile_id\":44,\"image_mobile_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_mobile.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":64,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/intro1.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Un accompagnement\",\"titre_accent\":\"premium\",\"sous_titre\":\"Une prise en charge globale et adaptée au patient / une communication transparente et pédagogique / des dispositifs sanitaires pour assurer une securité maximale / Un suivi personnalisé.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\",\"lien_url\":\"#\",\"image_id\":66,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/intro2.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies {\"texte\":\"Des chirurgies réparatrices pour redonner vie à votre mobilité... Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. Risus scelerisque quis dictumst nibh netus sit sit posuere. Nam massa ante amet orci purus sagittis ornare. Et risus placerat nibh et id sapien.\",\"lien_url\":\"hhhhhhhhhhhhh\"} /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees {\"texte\":\"Des chirurgies réparatrices dédiées aux membres inférieurs. / Clinique spécialisée dans les interventions chirurgicales de prothèse de la cheville et du genou. / Votre spécialiste orthopédique en Normandie ... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. mmm\",\"lien_url\":\"gggggggggggggggggg\"} /-->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 11:32:43', '2026-08-20 11:32:43', '', 12, 'http://localhost/test/web/?p=69', 0, 'revision', '', 0),
(70, 1, '2026-08-20 11:39:51', '2026-08-20 11:39:51', '', 'Arrow1', '', 'inherit', 'open', 'closed', '', 'arrow1', '', '', '2026-08-20 11:39:51', '2026-08-20 11:39:51', '', 0, 'http://localhost/test/web/app/uploads/2026/08/Arrow1.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2026-08-20 11:39:52', '2026-08-20 11:39:52', '', 'search', '', 'inherit', 'open', 'closed', '', 'search', '', '', '2026-08-20 11:39:52', '2026-08-20 11:39:52', '', 0, 'http://localhost/test/web/app/uploads/2026/08/search.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2026-08-20 11:48:08', '2026-08-20 11:48:08', '<!-- wp:dr-polle/hero {\"texte\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam pellentesque cursus potenti nunc. Ullamcorper tempus\\nimperdiet nunc suscipit lacus, venenatis.\",\"lien_url\":\"#\",\"rdv_url\":\"#\",\"image_id\":59,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_image.png\",\"image_mobile_id\":44,\"image_mobile_url\":\"http://localhost/test/web/app/uploads/2026/08/hero_mobile.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Une équipe expérimentée au service de\",\"titre_accent\":\" votre santé\",\"sous_titre\":\"Avec + de 16 ans d’experience et 1600 interventions par an. Une équipe d’experts formée en continue = à la pointe du savoir médical et chirurgical.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\\nPlacerat nunc sagittis molestie mauris. Proin in mauris nisi justo, vestibulum nisl. Dictum ac fermentum,.\",\"lien_url\":\"shshhshshhshsh\",\"image_id\":64,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/intro1.png\"} /-->\n\n<!-- wp:dr-polle/introduction {\"titre\":\"Un accompagnement\",\"titre_accent\":\"premium\",\"sous_titre\":\"Une prise en charge globale et adaptée au patient / une communication transparente et pédagogique / des dispositifs sanitaires pour assurer une securité maximale / Un suivi personnalisé.\",\"texte\":\"Mauris molestie sed cras dictum volutpat in cursus nibh. Accumsan nibh vel at sed cursus tristique faucibus urna. Auctor ipsum aenean maecenas sapien. Arcu aliquam amet consectetur iaculis dictum tincidunt semper pulvinar morbi. Convallis ornare ultricies in magna etiam.\",\"lien_url\":\"#\",\"image_id\":66,\"image_url\":\"http://localhost/test/web/app/uploads/2026/08/intro2.png\",\"position_image\":\"droite\"} /-->\n\n<!-- wp:dr-polle/prise-en-charge /-->\n\n<!-- wp:dr-polle/grille-chirurgies {\"texte\":\"Des chirurgies réparatrices pour redonner vie à votre mobilité... Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. Risus scelerisque quis dictumst nibh netus sit sit posuere. Nam massa ante amet orci purus sagittis ornare. Et risus placerat nibh et id sapien.\",\"lien_url\":\"hhhhhhhhhhhhh\"} /-->\n\n<!-- wp:dr-polle/chirurgies-ciblees {\"texte\":\"Des chirurgies réparatrices dédiées aux membres inférieurs. / Clinique spécialisée dans les interventions chirurgicales de prothèse de la cheville et du genou. / Votre spécialiste orthopédique en Normandie ... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem adipiscing ante etiam et pellentesque rutrum egestas faucibus. mmm\",\"lien_url\":\"gggggggggggggggggg\"} /-->', 'Page d\'acceuil', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2026-08-20 11:48:08', '2026-08-20 11:48:08', '', 12, 'http://localhost/test/web/?p=72', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'dr-polle', 'dr-polle', 0),
(5, 'Ciblée', 'ciblee', 0),
(6, 'Réparatrice', 'reparatrice', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(30, 6, 0),
(32, 6, 0),
(34, 6, 0),
(36, 5, 0),
(38, 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(5, 5, 'type_chirurgie', '', 0, 2),
(6, 6, 'type_chirurgie', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'hamid'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'modern'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"fe20c39591d614ed28fbf107b2eaaa6baf857b11b35fad8beb23b0f2005ab5c7\";a:4:{s:10:\"expiration\";i:1787308872;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36\";s:5:\"login\";i:1787136072;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1787141900'),
(20, 1, 'wp_persisted_preferences', 'a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:3:{s:12:\"welcomeGuide\";b:0;s:19:\"metaBoxesMainIsOpen\";b:1;s:23:\"metaBoxesMainOpenHeight\";d:520.2000122070312;}s:9:\"_modified\";s:24:\"2026-08-20T11:47:45.214Z\";}'),
(21, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(22, 1, 'acf_user_settings', 'a:2:{s:19:\"post-type-first-run\";b:1;s:20:\"taxonomies-first-run\";b:1;}'),
(23, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:29:\"acf-group_landing_page_fields\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:0:{}'),
(26, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'hamid', '$wp$2y$10$Fcc2mHr8qotBAI8bsyN4beZgersmnqBjczZ63LFv5ZAR0GvTgfQBC', 'hamid', 'alymnyhmyd763@gmail.com', 'http://localhost/test/web/wp', '2026-08-19 10:40:59', '', 0, 'hamid');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `type_status_author` (`post_type`,`post_status`,`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.4.11
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2017 年 06 月 14 日 11:01
-- 伺服器版本: 5.6.36
-- PHP 版本： 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `sellbuyshi_mpdb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, '一位 WordPress 留言者', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-02-13 21:31:19', '2017-02-13 13:31:19', '嗨，這是一則迴響。\n為了讓你開始審核、編輯及刪除迴響，請前往控制台的迴響頁面。\n留言者大頭貼來源為 <a href="https://gravatar.com">Gravatar</a>。', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=819 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://local.mental-production.com', 'yes'),
(2, 'home', 'http://local.mental-production.com', 'yes'),
(3, 'blogname', 'Mental Production', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ron.chan@fp-production.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'Y-m-d', 'yes'),
(24, 'time_format', 'H:i:s', 'yes'),
(25, 'links_updated_date_format', 'Y-m-d H:i:s', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:104:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"portfolio/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"portfolio/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"portfolio/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"portfolio/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"portfolio/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"portfolio/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"portfolio/(.+?)/embed/?$";s:42:"index.php?portfolio=$matches[1]&embed=true";s:28:"portfolio/(.+?)/trackback/?$";s:36:"index.php?portfolio=$matches[1]&tb=1";s:36:"portfolio/(.+?)/page/?([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&paged=$matches[2]";s:43:"portfolio/(.+?)/comment-page-([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&cpage=$matches[2]";s:32:"portfolio/(.+?)(?:/([0-9]+))?/?$";s:48:"index.php?portfolio=$matches[1]&page=$matches[2]";s:59:"portfolio-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?portfolio-category=$matches[1]&feed=$matches[2]";s:54:"portfolio-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?portfolio-category=$matches[1]&feed=$matches[2]";s:35:"portfolio-category/([^/]+)/embed/?$";s:51:"index.php?portfolio-category=$matches[1]&embed=true";s:47:"portfolio-category/([^/]+)/page/?([0-9]{1,})/?$";s:58:"index.php?portfolio-category=$matches[1]&paged=$matches[2]";s:29:"portfolio-category/([^/]+)/?$";s:40:"index.php?portfolio-category=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:33:"hide-admin-bar/hide_admin_bar.php";i:3;s:53:"simple-custom-post-order/simple-custom-post-order.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mental_production', 'yes'),
(41, 'stylesheet', 'mental_production', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '270', 'yes'),
(59, 'thumbnail_size_h', '200', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '270', 'yes'),
(62, 'medium_size_h', '200', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:53:"simple-custom-post-order/simple-custom-post-order.php";s:18:"scporder_uninstall";}', 'no'),
(82, 'timezone_string', 'Asia/Hong_Kong', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', '', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"sidebar-footer";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:4:{i:1497447079;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1497447089;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1497451426;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'theme_mods_twentysixteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1486992694;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(116, '_site_transient_timeout_browser_89e98a02642e93650a77c5c0a1d9c25e', '1487597483', 'no'),
(117, '_site_transient_browser_89e98a02642e93650a77c5c0a1d9c25e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"51.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(118, 'can_compress_scripts', '1', 'no'),
(133, '_transient_timeout_dash_47a6b06ed6e5ddea23d9bd5316ed8875', '1487035889', 'no'),
(134, '_transient_dash_47a6b06ed6e5ddea23d9bd5316ed8875', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/01/wordpress-4-7-2-security-release/''>WordPress 4.7.2 Security Release</a> <span class="rss-date">2017-01-26</span><div class="rssSummary">WordPress 4.7.2 is now available. This is a security re [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wptavern.com/10up-unveils-elasticpress-io-elasticsearch-as-a-service-for-wordpress-sites''>WPTavern: 10up Unveils ElasticPress.io: Elasticsearch as a Service for WordPress Sites</a></li><li><a class=''rsswidget'' href=''https://poststatus.com/jason-cohen-wp-engine-founder/''>Post Status: Jason Cohen, founder of WP Engine, on growing your company well — Draft Podcast</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/in-case-you-missed-it-issue-17''>WPTavern: In Case You Missed It – Issue 17</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>熱門外掛:</span> Page Builder by SiteOrigin&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=siteorigin-panels&amp;_wpnonce=89cd439141&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="安裝 Page Builder by SiteOrigin">(安裝)</a></li></ul></div>', 'no'),
(136, 'current_theme', 'Roots Theme', 'yes'),
(137, 'theme_mods_mental_production', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:18:"primary_navigation";i:2;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(139, 'roots_theme_activation_options', 'a:4:{s:17:"create_front_page";b:0;s:26:"change_permalink_structure";b:0;s:23:"create_navigation_menus";b:0;s:31:"add_pages_to_primary_navigation";b:0;}', 'yes'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(143, '_site_transient_timeout_available_translations', '1487007136', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(144, '_site_transient_available_translations', 'a:108:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:38:06";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:08";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-01 08:27:29";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:53:38";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:07";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:29";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:25";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:59";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.7.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:17";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:21";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 13:41:24";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:51:11";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:30";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:34";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 00:40:28";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:07";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:28";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:41:05";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:53:56";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:41:31";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:33";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:24";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:25";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:53:51";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:32";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:30";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:27";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:07";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:45";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:41";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:13";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:27";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 15:18:24";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:22";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:17";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:24";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:13";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:53";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:34";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 07:09:15";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:37";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:49";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.14";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.14/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:31";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:31";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:13";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:48";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-10-14 13:24:10";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:57";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-02 13:47:38";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:18";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.14";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.14/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:15";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:53";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:11";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:09:16";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:41:00";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:49:04";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:49";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:41:03";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:55";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:59";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 19:24:08";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:36:52";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:02";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:35";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:55:14";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:54:45";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:55:10";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(154, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(163, '_site_transient_timeout_browser_f731f7616ab74b84eb6e37a4dee2a379', '1490075114', 'no'),
(164, '_site_transient_browser_f731f7616ab74b84eb6e37a4dee2a379', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"51.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(181, 'acf_version', '5.5.5', 'yes'),
(185, 'category_children', 'a:0:{}', 'yes'),
(287, '_site_transient_timeout_browser_43e3959d25637efe9b68fae476c6453e', '1493096478', 'no'),
(289, '_site_transient_browser_43e3959d25637efe9b68fae476c6453e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"52.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(310, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.8";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1492520535;s:7:"version";s:3:"4.7";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(342, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:26:"ron.chan@fp-production.com";s:7:"version";s:5:"4.7.5";s:9:"timestamp";i:1495440254;}', 'no'),
(632, 'portfolio-category_children', 'a:0:{}', 'yes'),
(738, '_site_transient_timeout_browser_5d9a37c6a96acca914609d0251644dda', '1497507229', 'no'),
(739, '_site_transient_browser_5d9a37c6a96acca914609d0251644dda', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"58.0.3029.110";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(779, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1497374240', 'no'),
(780, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1497374240', 'no'),
(781, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1497331040', 'no'),
(782, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1497374242', 'no'),
(783, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1497374242', 'no'),
(784, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1497331042', 'no'),
(785, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1497374245', 'no'),
(786, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1497374245', 'no'),
(787, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1497331045', 'no'),
(788, '_transient_timeout_plugin_slugs', '1497456990', 'no'),
(789, '_transient_plugin_slugs', 'a:5:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:33:"hide-admin-bar/hide_admin_bar.php";i:3;s:53:"ricg-responsive-images/wp-tevko-responsive-images.php";i:4;s:53:"simple-custom-post-order/simple-custom-post-order.php";}', 'no'),
(790, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1497374245', 'no'),
(791, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/06/evans/''>WordPress 4.8 “Evans”</a> <span class="rss-date">2017-06-08</span><div class="rssSummary">An Update with You in Mind Gear up for a more intuitive WordPress! Version 4.8 of WordPress, named “Evans” in honor of jazz pianist and composer William John “Bill” Evans, is available for download or update in your WordPress dashboard. New features in 4.8 add more ways for you to express yourself and represent your brand. Though some [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wptavern.com/wordcamp-for-publishers-opens-up-ticket-sales-50-sold-in-the-first-day''>WPTavern: WordCamp for Publishers Opens Up Ticket Sales, 50% Sold in the First Day</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/unsplash-updates-its-license-raises-gpl-compatibility-concerns''>WPTavern: Unsplash Updates its License, Raises GPL Compatibility Concerns</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/major-update-coming-to-wp-super-cache-new-rest-api-user-friendly-settings-page-and-improvements-to-legacy-file-storage''>WPTavern: Major Update Coming to WP Super Cache: New REST API, User-Friendly Settings Page, and Improvements to Legacy File Storage</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Popular Plugin:</span> Limit Login Attempts&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=limit-login-attempts&amp;_wpnonce=7b145d1520&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Install Limit Login Attempts">(Install)</a></li></ul></div>', 'no'),
(792, '_site_transient_timeout_browser_3efc016b2059668c69de07123afad5fa', '1497939273', 'no'),
(793, '_site_transient_browser_3efc016b2059668c69de07123afad5fa', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"53.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(796, '_transient_timeout_acf_get_remote_plugin_info', '1497456907', 'no'),
(797, '_transient_acf_get_remote_plugin_info', 'a:12:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:6:"5.5.14";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.8.0";s:6:"tagged";s:123:"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit";s:9:"changelog";s:54:"<h4>5.5.14</h4><ul><li>Core: Minor bug fixes</li></ul>";s:14:"upgrade_notice";s:0:"";}', 'no'),
(801, '_site_transient_timeout_browser_372b39fc0ede5776ae5d65b675deeef4', '1497975328', 'no'),
(802, '_site_transient_browser_372b39fc0ede5776ae5d65b675deeef4', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"53.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(803, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1497381335', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(804, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4342;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2485;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2353;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2128;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1818;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1582;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1557;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1428;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1338;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1325;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1318;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1267;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1260;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1110;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1045;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1040;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:985;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:925;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:814;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:792;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:791;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:762;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:759;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:666;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:657;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:653;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:647;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:643;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:635;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:626;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:604;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:592;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:589;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:579;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:577;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:570;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:568;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:554;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:551;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:538;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:530;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:525;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:518;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:506;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:499;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:491;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:489;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:476;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:466;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:464;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:462;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:461;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:441;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:435;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:434;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:433;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:429;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:420;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:413;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:409;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:405;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:402;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:399;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:397;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:396;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:394;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:377;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:375;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:366;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:366;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:351;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:337;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:330;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:329;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:329;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:323;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:321;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:320;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:319;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:317;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:315;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:314;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:302;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:299;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:293;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:292;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:288;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:286;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:286;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:283;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:278;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:277;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:274;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:274;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:272;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:270;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:264;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:262;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:262;}s:7:"tinymce";a:3:{s:4:"name";s:7:"tinyMCE";s:4:"slug";s:7:"tinymce";s:5:"count";i:261;}}', 'no'),
(807, 'scporder_install', '1', 'yes'),
(810, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.8-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.8-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1497403990;s:15:"version_checked";s:5:"4.7.5";s:12:"translations";a:0:{}}', 'no'),
(812, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1497403996;s:7:"checked";a:1:{s:17:"mental_production";s:5:"7.0.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(813, 'scporder_options', 'a:2:{s:7:"objects";a:3:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:9:"portfolio";}s:4:"tags";a:4:{i:0;s:8:"category";i:1;s:8:"post_tag";i:2;s:13:"link_category";i:3;s:18:"portfolio-category";}}', 'yes'),
(816, '_site_transient_timeout_theme_roots', '1497405792', 'no'),
(817, '_site_transient_theme_roots', 'a:1:{s:17:"mental_production";s:7:"/themes";}', 'no'),
(818, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1497403994;s:8:"response";a:1:{s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":5:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:6:"5.5.14";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:7:"package";s:0:"";}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.8";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.8.zip";}s:33:"hide-admin-bar/hide_admin_bar.php";O:8:"stdClass":6:{s:2:"id";s:28:"w.org/plugins/hide-admin-bar";s:4:"slug";s:14:"hide-admin-bar";s:6:"plugin";s:33:"hide-admin-bar/hide_admin_bar.php";s:11:"new_version";s:7:"0.3.8.1";s:3:"url";s:45:"https://wordpress.org/plugins/hide-admin-bar/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/hide-admin-bar.zip";}s:53:"ricg-responsive-images/wp-tevko-responsive-images.php";O:8:"stdClass":6:{s:2:"id";s:36:"w.org/plugins/ricg-responsive-images";s:4:"slug";s:22:"ricg-responsive-images";s:6:"plugin";s:53:"ricg-responsive-images/wp-tevko-responsive-images.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:53:"https://wordpress.org/plugins/ricg-responsive-images/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/ricg-responsive-images.3.1.1.zip";}s:53:"simple-custom-post-order/simple-custom-post-order.php";O:8:"stdClass":6:{s:2:"id";s:38:"w.org/plugins/simple-custom-post-order";s:4:"slug";s:24:"simple-custom-post-order";s:6:"plugin";s:53:"simple-custom-post-order/simple-custom-post-order.php";s:11:"new_version";s:5:"2.3.2";s:3:"url";s:55:"https://wordpress.org/plugins/simple-custom-post-order/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/simple-custom-post-order.zip";}}}', 'no');

-- --------------------------------------------------------

--
-- 資料表結構 `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(18, 4, '_edit_last', '1'),
(19, 4, '_wp_page_template', 'template-home.php'),
(20, 4, '_edit_lock', '1495524262:2'),
(30, 9, '_edit_last', '2'),
(31, 9, '_edit_lock', '1495518531:2'),
(32, 9, '_wp_page_template', 'template-about_us.php'),
(33, 11, '_edit_last', '2'),
(34, 11, '_edit_lock', '1495522464:2'),
(35, 11, '_wp_page_template', 'template-contact_us.php'),
(36, 13, '_menu_item_type', 'post_type'),
(37, 13, '_menu_item_menu_item_parent', '0'),
(38, 13, '_menu_item_object_id', '11'),
(39, 13, '_menu_item_object', 'page'),
(40, 13, '_menu_item_target', ''),
(41, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 13, '_menu_item_xfn', ''),
(43, 13, '_menu_item_url', ''),
(45, 14, '_menu_item_type', 'post_type'),
(46, 14, '_menu_item_menu_item_parent', '0'),
(47, 14, '_menu_item_object_id', '9'),
(48, 14, '_menu_item_object', 'page'),
(49, 14, '_menu_item_target', ''),
(50, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 14, '_menu_item_xfn', ''),
(52, 14, '_menu_item_url', ''),
(54, 17, '_edit_last', '1'),
(55, 17, '_edit_lock', '1494822645:1'),
(56, 31, '_edit_last', '1'),
(57, 31, '_edit_lock', '1494770646:1'),
(60, 40, '_edit_last', '2'),
(61, 40, 'home_display_image', '63'),
(62, 40, '_home_display_image', 'field_58c78dce38059'),
(63, 40, 'home_display_width', 'width2x'),
(64, 40, '_home_display_width', 'field_58c79b6a5fb9e'),
(65, 40, 'main_video_0_vimeo_link', 'https://vimeo.com/111967668'),
(66, 40, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(67, 40, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(68, 40, '_main_video', 'field_58c7879873152'),
(69, 40, 'author_credit', ''),
(70, 40, '_author_credit', 'field_58c79620a41f6'),
(71, 40, 'related_project', ''),
(72, 40, '_related_project', 'field_58c787a673153'),
(73, 40, '_edit_lock', '1495613190:2'),
(74, 43, '_edit_last', '2'),
(75, 43, '_edit_lock', '1496902322:2'),
(76, 43, 'home_display_image', '64'),
(77, 43, '_home_display_image', 'field_58c78dce38059'),
(78, 43, 'home_display_width', 'normal'),
(79, 43, '_home_display_width', 'field_58c79b6a5fb9e'),
(80, 43, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(81, 43, '_main_video', 'field_58c7879873152'),
(82, 43, 'author_credit', ''),
(83, 43, '_author_credit', 'field_58c79620a41f6'),
(84, 43, 'related_project', 'a:4:{i:0;s:2:"51";i:1;s:2:"46";i:2;s:2:"47";i:3;s:2:"40";}'),
(85, 43, '_related_project', 'field_58c787a673153'),
(86, 44, '_edit_last', '2'),
(87, 44, 'home_display_image', '65'),
(88, 44, '_home_display_image', 'field_58c78dce38059'),
(89, 44, 'home_display_width', 'normal'),
(90, 44, '_home_display_width', 'field_58c79b6a5fb9e'),
(91, 44, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(92, 44, '_main_video', 'field_58c7879873152'),
(93, 44, 'author_credit', ''),
(94, 44, '_author_credit', 'field_58c79620a41f6'),
(95, 44, 'related_project', 'a:13:{i:0;s:3:"132";i:1;s:3:"136";i:2;s:3:"174";i:3;s:2:"44";i:4;s:3:"181";i:5;s:3:"179";i:6;s:3:"170";i:7;s:3:"183";i:8;s:3:"177";i:9;s:3:"150";i:10;s:2:"49";i:11;s:2:"47";i:12;s:3:"168";}'),
(96, 44, '_related_project', 'field_58c787a673153'),
(97, 44, '_edit_lock', '1496902380:2'),
(98, 45, '_edit_last', '1'),
(99, 45, 'home_display_image', '66'),
(100, 45, '_home_display_image', 'field_58c78dce38059'),
(101, 45, 'home_display_width', 'normal'),
(102, 45, '_home_display_width', 'field_58c79b6a5fb9e'),
(103, 45, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(104, 45, '_main_video', 'field_58c7879873152'),
(105, 45, 'author_credit', ''),
(106, 45, '_author_credit', 'field_58c79620a41f6'),
(107, 45, 'related_project', ''),
(108, 45, '_related_project', 'field_58c787a673153'),
(109, 45, '_edit_lock', '1495374932:1'),
(110, 46, '_edit_last', '2'),
(111, 46, '_edit_lock', '1497330950:2'),
(112, 46, 'home_display_image', '67'),
(113, 46, '_home_display_image', 'field_58c78dce38059'),
(114, 46, 'home_display_width', 'normal'),
(115, 46, '_home_display_width', 'field_58c79b6a5fb9e'),
(116, 46, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(117, 46, '_main_video', 'field_58c7879873152'),
(118, 46, 'author_credit', ''),
(119, 46, '_author_credit', 'field_58c79620a41f6'),
(120, 46, 'related_project', ''),
(121, 46, '_related_project', 'field_58c787a673153'),
(122, 47, '_edit_last', '1'),
(123, 47, 'home_display_image', '73'),
(124, 47, '_home_display_image', 'field_58c78dce38059'),
(125, 47, 'home_display_width', 'normal'),
(126, 47, '_home_display_width', 'field_58c79b6a5fb9e'),
(127, 47, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(128, 47, '_main_video', 'field_58c7879873152'),
(129, 47, 'author_credit', ''),
(130, 47, '_author_credit', 'field_58c79620a41f6'),
(131, 47, 'related_project', ''),
(132, 47, '_related_project', 'field_58c787a673153'),
(133, 47, '_edit_lock', '1495374934:1'),
(134, 48, '_edit_last', '2'),
(135, 48, '_edit_lock', '1496902332:2'),
(136, 48, 'home_display_image', '59'),
(137, 48, '_home_display_image', 'field_58c78dce38059'),
(138, 48, 'home_display_width', 'normal'),
(139, 48, '_home_display_width', 'field_58c79b6a5fb9e'),
(140, 48, 'main_video', ''),
(141, 48, '_main_video', 'field_58c7879873152'),
(142, 48, 'author_credit', ''),
(143, 48, '_author_credit', 'field_58c79620a41f6'),
(144, 48, 'related_project', ''),
(145, 48, '_related_project', 'field_58c787a673153'),
(146, 49, '_edit_last', '1'),
(147, 49, '_edit_lock', '1495374937:1'),
(148, 49, 'home_display_image', '60'),
(149, 49, '_home_display_image', 'field_58c78dce38059'),
(150, 49, 'home_display_width', 'normal'),
(151, 49, '_home_display_width', 'field_58c79b6a5fb9e'),
(152, 49, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(153, 49, '_main_video', 'field_58c7879873152'),
(154, 49, 'author_credit', ''),
(155, 49, '_author_credit', 'field_58c79620a41f6'),
(156, 49, 'related_project', ''),
(157, 49, '_related_project', 'field_58c787a673153'),
(158, 50, '_edit_last', '2'),
(159, 50, 'home_display_image', '167'),
(160, 50, '_home_display_image', 'field_58c78dce38059'),
(161, 50, 'home_display_width', 'normal'),
(162, 50, '_home_display_width', 'field_58c79b6a5fb9e'),
(163, 50, 'main_video', ''),
(164, 50, '_main_video', 'field_58c7879873152'),
(165, 50, 'author_credit', ''),
(166, 50, '_author_credit', 'field_58c79620a41f6'),
(167, 50, 'related_project', ''),
(168, 50, '_related_project', 'field_58c787a673153'),
(169, 50, '_edit_lock', '1496902492:2'),
(170, 51, '_edit_last', '2'),
(171, 51, 'home_display_image', '62'),
(172, 51, '_home_display_image', 'field_58c78dce38059'),
(173, 51, 'home_display_width', 'width2x'),
(174, 51, '_home_display_width', 'field_58c79b6a5fb9e'),
(175, 51, 'main_video', ''),
(176, 51, '_main_video', 'field_58c7879873152'),
(177, 51, 'author_credit', ''),
(178, 51, '_author_credit', 'field_58c79620a41f6'),
(179, 51, 'related_project', ''),
(180, 51, '_related_project', 'field_58c787a673153'),
(181, 51, '_edit_lock', '1496902403:2'),
(182, 9, 'biography', ''),
(183, 9, '_biography', 'field_58c79adac2f9c'),
(184, 9, 'exhibition', ''),
(185, 9, '_exhibition', 'field_58c79b04c2f9e'),
(186, 52, 'biography', ''),
(187, 52, '_biography', 'field_58c79adac2f9c'),
(188, 52, 'exhibition', ''),
(189, 52, '_exhibition', 'field_58c79b04c2f9e'),
(199, 11, 'office_location', 'a:3:{s:7:"address";s:41:"香港新蒲崗六合街23號萬昌中心";s:3:"lat";s:18:"22.337071951082343";s:3:"lng";s:18:"114.20003771781921";}'),
(200, 11, '_office_location', 'field_58c79a96a8bf4'),
(201, 53, 'office_location', 'a:3:{s:7:"address";s:41:"香港新蒲崗六合街23號萬昌中心";s:3:"lat";s:18:"22.337071951082343";s:3:"lng";s:18:"114.20003771781921";}'),
(202, 53, '_office_location', 'field_58c79a96a8bf4'),
(203, 11, 'company_name', 'Mental Production Limited'),
(204, 11, '_company_name', 'field_58c7cb0f15f18'),
(205, 11, 'addresss', 'Rm 1802, Max Trade Center, 23 Luk Hop Street, San Po Kong, Kowloon '),
(206, 11, '_addresss', 'field_58c7cb7215f19'),
(207, 11, 'telephone', 'Tel: +852 3105 0603'),
(208, 11, '_telephone', 'field_58c7cb7b15f1a'),
(209, 11, 'email', 'info@mental-production.com'),
(210, 11, '_email', 'field_58c7cb8415f1b'),
(211, 58, 'office_location', 'a:3:{s:7:"address";s:41:"香港新蒲崗六合街23號萬昌中心";s:3:"lat";s:18:"22.337071951082343";s:3:"lng";s:18:"114.20003771781921";}'),
(212, 58, '_office_location', 'field_58c79a96a8bf4'),
(213, 58, 'company_name', 'Mental Production Limited'),
(214, 58, '_company_name', 'field_58c7cb0f15f18'),
(215, 58, 'addresss', 'Rm 1802, Max Trade Center, 23 Luk Hop Street, San Po Kong, Kowloon '),
(216, 58, '_addresss', 'field_58c7cb7215f19'),
(217, 58, 'telephone', '+852 3105 0603'),
(218, 58, '_telephone', 'field_58c7cb7b15f1a'),
(219, 58, 'email', 'info@mental-production.com'),
(220, 58, '_email', 'field_58c7cb8415f1b'),
(221, 59, '_wp_attached_file', '2017/03/07_BasicLaw_c.jpg'),
(222, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1360;s:6:"height";i:1040;s:4:"file";s:25:"2017/03/07_BasicLaw_c.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"07_BasicLaw_c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"07_BasicLaw_c-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"07_BasicLaw_c-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"07_BasicLaw_c-1024x783.jpg";s:5:"width";i:1024;s:6:"height";i:783;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(223, 60, '_wp_attached_file', '2017/03/08_Soyjoy_c.jpg'),
(224, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:23:"2017/03/08_Soyjoy_c.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"08_Soyjoy_c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"08_Soyjoy_c-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"08_Soyjoy_c-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(225, 61, '_wp_attached_file', '2017/03/09_Lamex_c.jpg'),
(226, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1700;s:6:"height";i:1300;s:4:"file";s:22:"2017/03/09_Lamex_c.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"09_Lamex_c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"09_Lamex_c-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"09_Lamex_c-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"09_Lamex_c-1024x783.jpg";s:5:"width";i:1024;s:6:"height";i:783;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(227, 62, '_wp_attached_file', '2017/03/10_Hellokitty_c.jpg'),
(228, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1360;s:6:"height";i:520;s:4:"file";s:27:"2017/03/10_Hellokitty_c.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"10_Hellokitty_c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"10_Hellokitty_c-300x115.jpg";s:5:"width";i:300;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"10_Hellokitty_c-768x294.jpg";s:5:"width";i:768;s:6:"height";i:294;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"10_Hellokitty_c-1024x392.jpg";s:5:"width";i:1024;s:6:"height";i:392;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(229, 63, '_wp_attached_file', '2017/03/01_Showreel_c.jpg'),
(230, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1360;s:6:"height";i:1040;s:4:"file";s:25:"2017/03/01_Showreel_c.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"01_Showreel_c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"01_Showreel_c-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"01_Showreel_c-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"01_Showreel_c-1024x783.jpg";s:5:"width";i:1024;s:6:"height";i:783;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(231, 64, '_wp_attached_file', '2017/03/02_Aweridday_c.jpg'),
(232, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:26:"2017/03/02_Aweridday_c.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"02_Aweridday_c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"02_Aweridday_c-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"02_Aweridday_c-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(233, 65, '_wp_attached_file', '2017/03/03_CLP_c.jpg'),
(234, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:20:"2017/03/03_CLP_c.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"03_CLP_c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"03_CLP_c-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"03_CLP_c-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(235, 66, '_wp_attached_file', '2017/03/04_Philips-Headphone-ANC_c.jpg'),
(236, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:38:"2017/03/04_Philips-Headphone-ANC_c.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"04_Philips-Headphone-ANC_c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"04_Philips-Headphone-ANC_c-300x229.jpg";s:5:"width";i:300;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"04_Philips-Headphone-ANC_c-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(237, 67, '_wp_attached_file', '2017/03/05_The-Octagon_c.jpg'),
(238, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:340;s:6:"height";i:520;s:4:"file";s:28:"2017/03/05_The-Octagon_c.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"05_The-Octagon_c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"05_The-Octagon_c-196x300.jpg";s:5:"width";i:196;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(241, 73, '_wp_attached_file', '2017/03/06_TrueWhite_c.jpg'),
(242, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:680;s:6:"height";i:1040;s:4:"file";s:26:"2017/03/06_TrueWhite_c.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"06_TrueWhite_c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"06_TrueWhite_c-196x300.jpg";s:5:"width";i:196;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"06_TrueWhite_c-670x1024.jpg";s:5:"width";i:670;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(243, 74, '_wp_attached_file', '2017/02/01_Showreel_res.jpg'),
(244, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:1152;s:4:"file";s:27:"2017/02/01_Showreel_res.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"01_Showreel_res-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"01_Showreel_res-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"01_Showreel_res-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"01_Showreel_res-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(245, 9, '_thumbnail_id', '74'),
(246, 75, 'biography', ''),
(247, 75, '_biography', 'field_58c79adac2f9c'),
(248, 75, 'exhibition', ''),
(249, 75, '_exhibition', 'field_58c79b04c2f9e'),
(250, 80, '_form', '<div class="px-form-name">\n[text* your-name placeholder "Your name"]\n</div>\n<div class="px-form-email">\n[email* your-email placeholder "Your email"]\n</div>\n<div class="px-form-message">\n[textarea your-message 40x6 placeholder "Your message" ]\n</div>\n<div class="px-form-submit">\n[submit "Send"]\n</div>'),
(251, 80, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:34:"Mental Production "[your-subject]"";s:6:"sender";s:51:"[your-name] <wordpress@local.mental-production.com>";s:9:"recipient";s:26:"ron.chan@fp-production.com";s:4:"body";s:190:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mental Production (http://local.mental-production.com)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(252, 80, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:34:"Mental Production "[your-subject]"";s:6:"sender";s:57:"Mental Production <wordpress@local.mental-production.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:132:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mental Production (http://local.mental-production.com)";s:18:"additional_headers";s:36:"Reply-To: ron.chan@fp-production.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(253, 80, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(254, 80, '_additional_settings', ''),
(255, 80, '_locale', 'en_US'),
(256, 11, 'address', 'Rm 1802, Max Trade Center,<br/>23 Luk Hop Street, <br/>San Po Kong, Kln'),
(257, 11, '_address', 'field_58c7cb7215f19'),
(258, 81, 'office_location', 'a:3:{s:7:"address";s:41:"香港新蒲崗六合街23號萬昌中心";s:3:"lat";s:18:"22.337071951082343";s:3:"lng";s:18:"114.20003771781921";}'),
(259, 81, '_office_location', 'field_58c79a96a8bf4'),
(260, 81, 'company_name', 'Mental Production Limited'),
(261, 81, '_company_name', 'field_58c7cb0f15f18'),
(262, 81, 'addresss', 'Rm 1802, Max Trade Center, 23 Luk Hop Street, San Po Kong, Kowloon '),
(263, 81, '_addresss', 'field_58c7cb7215f19'),
(264, 81, 'telephone', '+852 3105 0603'),
(265, 81, '_telephone', 'field_58c7cb7b15f1a'),
(266, 81, 'email', 'info@mental-production.com'),
(267, 81, '_email', 'field_58c7cb8415f1b'),
(268, 81, 'address', 'Rm 1802, Max Trade Center, 23 Luk Hop Street, San Po Kong, Kowloon'),
(269, 81, '_address', 'field_58c7cb7215f19'),
(270, 82, 'office_location', 'a:3:{s:7:"address";s:41:"香港新蒲崗六合街23號萬昌中心";s:3:"lat";s:18:"22.337071951082343";s:3:"lng";s:18:"114.20003771781921";}'),
(271, 82, '_office_location', 'field_58c79a96a8bf4'),
(272, 82, 'company_name', 'Mental Production Limited'),
(273, 82, '_company_name', 'field_58c7cb0f15f18'),
(274, 82, 'addresss', 'Rm 1802, Max Trade Center, 23 Luk Hop Street, San Po Kong, Kowloon '),
(275, 82, '_addresss', 'field_58c7cb7215f19'),
(276, 82, 'telephone', '+852 3105 0603'),
(277, 82, '_telephone', 'field_58c7cb7b15f1a'),
(278, 82, 'email', 'info@mental-production.com'),
(279, 82, '_email', 'field_58c7cb8415f1b'),
(280, 82, 'address', 'Rm 1802, Max Trade Center,<br/>23 Luk Hop Street, <br/>San Po Kong, <br/>Kowloon'),
(281, 82, '_address', 'field_58c7cb7215f19'),
(282, 83, '_menu_item_type', 'post_type'),
(283, 83, '_menu_item_menu_item_parent', '0'),
(284, 83, '_menu_item_object_id', '4'),
(285, 83, '_menu_item_object', 'page'),
(286, 83, '_menu_item_target', ''),
(287, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(288, 83, '_menu_item_xfn', ''),
(289, 83, '_menu_item_url', ''),
(390, 95, '_menu_item_type', 'custom'),
(391, 95, '_menu_item_menu_item_parent', '83'),
(392, 95, '_menu_item_object_id', '95'),
(393, 95, '_menu_item_object', 'custom'),
(394, 95, '_menu_item_target', ''),
(395, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(396, 95, '_menu_item_xfn', ''),
(397, 95, '_menu_item_url', '#'),
(399, 96, '_menu_item_type', 'custom'),
(400, 96, '_menu_item_menu_item_parent', '83'),
(401, 96, '_menu_item_object_id', '96'),
(402, 96, '_menu_item_object', 'custom'),
(403, 96, '_menu_item_target', ''),
(404, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(405, 96, '_menu_item_xfn', ''),
(406, 96, '_menu_item_url', '#'),
(408, 97, '_menu_item_type', 'custom'),
(409, 97, '_menu_item_menu_item_parent', '83'),
(410, 97, '_menu_item_object_id', '97'),
(411, 97, '_menu_item_object', 'custom'),
(412, 97, '_menu_item_target', ''),
(413, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(414, 97, '_menu_item_xfn', ''),
(415, 97, '_menu_item_url', '#'),
(417, 98, '_menu_item_type', 'custom'),
(418, 98, '_menu_item_menu_item_parent', '83'),
(419, 98, '_menu_item_object_id', '98'),
(420, 98, '_menu_item_object', 'custom'),
(421, 98, '_menu_item_target', ''),
(422, 98, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(423, 98, '_menu_item_xfn', ''),
(424, 98, '_menu_item_url', '#'),
(426, 99, '_menu_item_type', 'custom'),
(427, 99, '_menu_item_menu_item_parent', '83'),
(428, 99, '_menu_item_object_id', '99'),
(429, 99, '_menu_item_object', 'custom'),
(430, 99, '_menu_item_target', ''),
(431, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(432, 99, '_menu_item_xfn', ''),
(433, 99, '_menu_item_url', '#'),
(435, 100, '_menu_item_type', 'custom'),
(436, 100, '_menu_item_menu_item_parent', '83'),
(437, 100, '_menu_item_object_id', '100'),
(438, 100, '_menu_item_object', 'custom'),
(439, 100, '_menu_item_target', ''),
(440, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(441, 100, '_menu_item_xfn', ''),
(442, 100, '_menu_item_url', '#'),
(444, 101, '_menu_item_type', 'custom'),
(445, 101, '_menu_item_menu_item_parent', '83'),
(446, 101, '_menu_item_object_id', '101'),
(447, 101, '_menu_item_object', 'custom'),
(448, 101, '_menu_item_target', ''),
(449, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(450, 101, '_menu_item_xfn', ''),
(451, 101, '_menu_item_url', '#'),
(453, 102, '_menu_item_type', 'custom'),
(454, 102, '_menu_item_menu_item_parent', '83'),
(455, 102, '_menu_item_object_id', '102'),
(456, 102, '_menu_item_object', 'custom'),
(457, 102, '_menu_item_target', ''),
(458, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(459, 102, '_menu_item_xfn', ''),
(460, 102, '_menu_item_url', '#'),
(462, 103, '_menu_item_type', 'custom'),
(463, 103, '_menu_item_menu_item_parent', '83'),
(464, 103, '_menu_item_object_id', '103'),
(465, 103, '_menu_item_object', 'custom'),
(466, 103, '_menu_item_target', ''),
(467, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(468, 103, '_menu_item_xfn', ''),
(469, 103, '_menu_item_url', '#'),
(471, 43, 'main_video_0_vimeo_link', 'https://vimeo.com/116058307'),
(472, 43, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(473, 106, 'office_location', 'a:3:{s:7:"address";s:41:"香港新蒲崗六合街23號萬昌中心";s:3:"lat";s:18:"22.337071951082343";s:3:"lng";s:18:"114.20003771781921";}'),
(474, 106, '_office_location', 'field_58c79a96a8bf4'),
(475, 106, 'company_name', 'Mental Production Limited'),
(476, 106, '_company_name', 'field_58c7cb0f15f18'),
(477, 106, 'addresss', 'Rm 1802, Max Trade Center, 23 Luk Hop Street, San Po Kong, Kowloon '),
(478, 106, '_addresss', 'field_58c7cb7215f19'),
(479, 106, 'telephone', '+852 3105 0603'),
(480, 106, '_telephone', 'field_58c7cb7b15f1a'),
(481, 106, 'email', 'info@mental-production.com'),
(482, 106, '_email', 'field_58c7cb8415f1b'),
(483, 106, 'address', 'Rm 1802, Max Trade Center,<br/>23 Luk Hop Street, <br/>San Po Kong, <br/>Kowloon'),
(484, 106, '_address', 'field_58c7cb7215f19'),
(485, 107, 'office_location', 'a:3:{s:7:"address";s:41:"香港新蒲崗六合街23號萬昌中心";s:3:"lat";s:18:"22.337071951082343";s:3:"lng";s:18:"114.20003771781921";}'),
(486, 107, '_office_location', 'field_58c79a96a8bf4'),
(487, 107, 'company_name', 'Mental Production Limited'),
(488, 107, '_company_name', 'field_58c7cb0f15f18'),
(489, 107, 'addresss', 'Rm 1802, Max Trade Center, 23 Luk Hop Street, San Po Kong, Kowloon '),
(490, 107, '_addresss', 'field_58c7cb7215f19'),
(491, 107, 'telephone', '+852 3105 0603'),
(492, 107, '_telephone', 'field_58c7cb7b15f1a'),
(493, 107, 'email', 'info@mental-production.com'),
(494, 107, '_email', 'field_58c7cb8415f1b'),
(495, 107, 'address', 'Rm 1802, Max Trade Center,<br/>23 Luk Hop Street, <br/>San Po Kong, <br/>Kowloon'),
(496, 107, '_address', 'field_58c7cb7215f19'),
(497, 108, '_wp_attached_file', '2017/03/DesignConcept.jpg'),
(498, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:487;s:4:"file";s:25:"2017/03/DesignConcept.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"DesignConcept-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"DesignConcept-300x162.jpg";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"DesignConcept-768x416.jpg";s:5:"width";i:768;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(499, 109, '_wp_attached_file', '2017/03/BearStoryboard01.jpg'),
(500, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:628;s:4:"file";s:28:"2017/03/BearStoryboard01.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"BearStoryboard01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"BearStoryboard01-300x209.jpg";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"BearStoryboard01-768x536.jpg";s:5:"width";i:768;s:6:"height";i:536;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:7:"YatMing";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(501, 110, '_wp_attached_file', '2017/03/BearStoryboard02.jpg'),
(502, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:628;s:4:"file";s:28:"2017/03/BearStoryboard02.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"BearStoryboard02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"BearStoryboard02-300x209.jpg";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"BearStoryboard02-768x536.jpg";s:5:"width";i:768;s:6:"height";i:536;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:7:"YatMing";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(503, 111, '_wp_attached_file', '2017/03/BearStoryboard03.jpg'),
(504, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:628;s:4:"file";s:28:"2017/03/BearStoryboard03.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"BearStoryboard03-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"BearStoryboard03-300x209.jpg";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"BearStoryboard03-768x536.jpg";s:5:"width";i:768;s:6:"height";i:536;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:7:"YatMing";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(505, 112, '_wp_attached_file', '2017/03/BearStoryboard04.jpg'),
(506, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:628;s:4:"file";s:28:"2017/03/BearStoryboard04.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"BearStoryboard04-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"BearStoryboard04-300x209.jpg";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"BearStoryboard04-768x536.jpg";s:5:"width";i:768;s:6:"height";i:536;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:7:"YatMing";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(507, 113, '_wp_attached_file', '2017/03/homedesign01.jpg'),
(508, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:244;s:4:"file";s:24:"2017/03/homedesign01.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"homedesign01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"homedesign01-300x163.jpg";s:5:"width";i:300;s:6:"height";i:163;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(509, 114, '_wp_attached_file', '2017/03/homedesign02.jpg'),
(510, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:244;s:4:"file";s:24:"2017/03/homedesign02.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"homedesign02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"homedesign02-300x163.jpg";s:5:"width";i:300;s:6:"height";i:163;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(511, 115, '_wp_attached_file', '2017/03/facialcontroller.jpg'),
(512, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:244;s:4:"file";s:28:"2017/03/facialcontroller.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"facialcontroller-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"facialcontroller-300x163.jpg";s:5:"width";i:300;s:6:"height";i:163;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(513, 116, '_wp_attached_file', '2017/03/bodycontroller.jpg'),
(514, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:244;s:4:"file";s:26:"2017/03/bodycontroller.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bodycontroller-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"bodycontroller-300x163.jpg";s:5:"width";i:300;s:6:"height";i:163;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(515, 117, '_wp_attached_file', '2017/03/fursetting.jpg'),
(516, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:346;s:4:"file";s:22:"2017/03/fursetting.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"fursetting-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"fursetting-300x162.jpg";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(517, 44, 'main_video_0_vimeo_link', 'https://vimeo.com/175356960'),
(518, 44, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(519, 45, 'main_video_0_vimeo_link', 'https://vimeo.com/140161404'),
(520, 45, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(521, 46, 'main_video_0_vimeo_link', 'https://vimeo.com/111710844'),
(522, 46, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(523, 47, 'main_video_0_vimeo_link', 'https://vimeo.com/111706810'),
(524, 47, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(525, 49, 'main_video_0_vimeo_link', 'https://vimeo.com/140159951'),
(526, 49, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(527, 120, '_wp_attached_file', '2017/03/02_Aweridday.jpg'),
(528, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1628;s:6:"height";i:916;s:4:"file";s:24:"2017/03/02_Aweridday.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"02_Aweridday-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"02_Aweridday-270x152.jpg";s:5:"width";i:270;s:6:"height";i:152;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"02_Aweridday-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"02_Aweridday-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(529, 43, '_thumbnail_id', '120'),
(530, 121, '_wp_attached_file', '2017/03/07_BasicLaw.jpg'),
(531, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:23:"2017/03/07_BasicLaw.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"07_BasicLaw-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"07_BasicLaw-270x152.jpg";s:5:"width";i:270;s:6:"height";i:152;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"07_BasicLaw-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"07_BasicLaw-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(532, 48, '_thumbnail_id', '121'),
(533, 122, '_wp_attached_file', '2017/03/03_CLP.jpg'),
(534, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1628;s:6:"height";i:916;s:4:"file";s:18:"2017/03/03_CLP.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"03_CLP-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"03_CLP-270x152.jpg";s:5:"width";i:270;s:6:"height";i:152;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"03_CLP-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"03_CLP-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(535, 44, '_thumbnail_id', '122'),
(536, 123, '_wp_attached_file', '2017/03/10_Hellokitty.jpg'),
(537, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1904;s:6:"height";i:674;s:4:"file";s:25:"2017/03/10_Hellokitty.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"10_Hellokitty-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"10_Hellokitty-270x96.jpg";s:5:"width";i:270;s:6:"height";i:96;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"10_Hellokitty-768x272.jpg";s:5:"width";i:768;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"10_Hellokitty-1024x362.jpg";s:5:"width";i:1024;s:6:"height";i:362;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(538, 51, '_thumbnail_id', '123'),
(539, 124, '_wp_attached_file', '2017/03/Atelier_4_wireframe02.jpg'),
(540, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:940;s:6:"height";i:610;s:4:"file";s:33:"2017/03/Atelier_4_wireframe02.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Atelier_4_wireframe02-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Atelier_4_wireframe02-270x175.jpg";s:5:"width";i:270;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"Atelier_4_wireframe02-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(542, 125, '_wp_attached_file', '2017/03/01_Showreel.jpg'),
(543, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:1152;s:4:"file";s:23:"2017/03/01_Showreel.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"01_Showreel-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"01_Showreel-270x152.jpg";s:5:"width";i:270;s:6:"height";i:152;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"01_Showreel-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"01_Showreel-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(544, 40, '_thumbnail_id', '125'),
(545, 127, '_wp_attached_file', '2017/03/04_Philips-Headphone-ANC.jpg'),
(546, 127, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1628;s:6:"height";i:916;s:4:"file";s:36:"2017/03/04_Philips-Headphone-ANC.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"04_Philips-Headphone-ANC-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"04_Philips-Headphone-ANC-270x152.jpg";s:5:"width";i:270;s:6:"height";i:152;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"04_Philips-Headphone-ANC-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"04_Philips-Headphone-ANC-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(547, 45, '_thumbnail_id', '127'),
(548, 128, '_wp_attached_file', '2017/03/08_Soyjoy.jpg'),
(549, 128, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1628;s:6:"height";i:916;s:4:"file";s:21:"2017/03/08_Soyjoy.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"08_Soyjoy-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"08_Soyjoy-270x152.jpg";s:5:"width";i:270;s:6:"height";i:152;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"08_Soyjoy-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"08_Soyjoy-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(550, 129, '_wp_attached_file', '2017/03/05_The-Octagon.jpg'),
(551, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1628;s:6:"height";i:916;s:4:"file";s:26:"2017/03/05_The-Octagon.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"05_The-Octagon-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"05_The-Octagon-270x152.jpg";s:5:"width";i:270;s:6:"height";i:152;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"05_The-Octagon-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"05_The-Octagon-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(552, 130, '_wp_attached_file', '2017/03/06_TrueWhite.jpg'),
(553, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2017/03/06_TrueWhite.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"06_TrueWhite-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"06_TrueWhite-270x152.jpg";s:5:"width";i:270;s:6:"height";i:152;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"06_TrueWhite-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"06_TrueWhite-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(554, 47, '_thumbnail_id', '130'),
(555, 46, '_thumbnail_id', '129'),
(556, 49, '_thumbnail_id', '128'),
(557, 132, '_edit_lock', '1496902341:2'),
(558, 132, '_edit_last', '2'),
(559, 132, 'home_display_image', '134'),
(560, 132, '_home_display_image', 'field_58c78dce38059'),
(561, 132, 'home_display_width', 'normal'),
(562, 132, '_home_display_width', 'field_58c79b6a5fb9e'),
(563, 132, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(564, 132, '_main_video', 'field_58c7879873152'),
(565, 132, 'author_credit', ''),
(566, 132, '_author_credit', 'field_58c79620a41f6'),
(567, 132, 'related_project', 'a:3:{i:0;s:2:"44";i:1;s:2:"49";i:2;s:2:"47";}'),
(568, 132, '_related_project', 'field_58c787a673153'),
(571, 134, '_wp_attached_file', '2017/05/Bonaqua-Promotion-TVC-@-2012-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(572, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:42:"2017/05/Bonaqua-Promotion-TVC-@-2012-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"Bonaqua-Promotion-TVC-@-2012-1-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"Bonaqua-Promotion-TVC-@-2012-1-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:42:"Bonaqua-Promotion-TVC-@-2012-1-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(573, 132, '_thumbnail_id', '134'),
(574, 132, 'main_video_0_vimeo_link', 'https://vimeo.com/43512831'),
(575, 132, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(580, 136, '_edit_lock', '1496902353:2'),
(581, 136, '_edit_last', '2'),
(582, 137, '_wp_attached_file', '2017/05/Bonaqua-Promotion-TVC-@-2013.jpg'),
(583, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:40:"2017/05/Bonaqua-Promotion-TVC-@-2013.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"Bonaqua-Promotion-TVC-@-2013-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"Bonaqua-Promotion-TVC-@-2013-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:40:"Bonaqua-Promotion-TVC-@-2013-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(584, 136, '_thumbnail_id', '137'),
(585, 136, 'home_display_image', '137'),
(586, 136, '_home_display_image', 'field_58c78dce38059'),
(587, 136, 'home_display_width', 'normal'),
(588, 136, '_home_display_width', 'field_58c79b6a5fb9e'),
(589, 136, 'main_video_0_vimeo_link', 'https://vimeo.com/70610664'),
(590, 136, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(591, 136, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(592, 136, '_main_video', 'field_58c7879873152'),
(593, 136, 'author_credit', ''),
(594, 136, '_author_credit', 'field_58c79620a41f6'),
(595, 136, 'related_project', 'a:4:{i:0;s:3:"132";i:1;s:2:"44";i:2;s:2:"49";i:3;s:2:"47";}'),
(596, 136, '_related_project', 'field_58c787a673153'),
(597, 138, '_edit_lock', '1495518297:2'),
(598, 138, '_edit_last', '2'),
(599, 139, '_wp_attached_file', '2017/05/WN-Power-Booster-Animation.jpg'),
(600, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:38:"2017/05/WN-Power-Booster-Animation.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"WN-Power-Booster-Animation-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"WN-Power-Booster-Animation-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"WN-Power-Booster-Animation-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(601, 138, '_thumbnail_id', '139'),
(602, 138, 'home_display_image', '139'),
(603, 138, '_home_display_image', 'field_58c78dce38059'),
(604, 138, 'home_display_width', 'normal'),
(605, 138, '_home_display_width', 'field_58c79b6a5fb9e'),
(606, 138, 'main_video_0_vimeo_link', 'https://vimeo.com/43514931'),
(607, 138, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(608, 138, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(609, 138, '_main_video', 'field_58c7879873152'),
(610, 138, 'author_credit', ''),
(611, 138, '_author_credit', 'field_58c79620a41f6'),
(612, 138, 'related_project', 'a:1:{i:0;s:2:"45";}'),
(613, 138, '_related_project', 'field_58c787a673153'),
(614, 140, 'biography', ''),
(615, 140, '_biography', 'field_58c79adac2f9c'),
(616, 140, 'exhibition', ''),
(617, 140, '_exhibition', 'field_58c79b04c2f9e'),
(618, 141, 'biography', ''),
(619, 141, '_biography', 'field_58c79adac2f9c'),
(620, 141, 'exhibition', ''),
(621, 141, '_exhibition', 'field_58c79b04c2f9e'),
(622, 142, 'biography', ''),
(623, 142, '_biography', 'field_58c79adac2f9c'),
(624, 142, 'exhibition', ''),
(625, 142, '_exhibition', 'field_58c79b04c2f9e'),
(626, 143, 'biography', ''),
(627, 143, '_biography', 'field_58c79adac2f9c'),
(628, 143, 'exhibition', ''),
(629, 143, '_exhibition', 'field_58c79b04c2f9e'),
(630, 144, 'biography', ''),
(631, 144, '_biography', 'field_58c79adac2f9c'),
(632, 144, 'exhibition', ''),
(633, 144, '_exhibition', 'field_58c79b04c2f9e'),
(634, 145, 'biography', ''),
(635, 145, '_biography', 'field_58c79adac2f9c'),
(636, 145, 'exhibition', ''),
(637, 145, '_exhibition', 'field_58c79b04c2f9e'),
(638, 146, 'biography', ''),
(639, 146, '_biography', 'field_58c79adac2f9c'),
(640, 146, 'exhibition', ''),
(641, 146, '_exhibition', 'field_58c79b04c2f9e'),
(642, 147, 'office_location', 'a:3:{s:7:"address";s:41:"香港新蒲崗六合街23號萬昌中心";s:3:"lat";s:18:"22.337071951082343";s:3:"lng";s:18:"114.20003771781921";}'),
(643, 147, '_office_location', 'field_58c79a96a8bf4'),
(644, 147, 'company_name', 'Mental Production Limited'),
(645, 147, '_company_name', 'field_58c7cb0f15f18'),
(646, 147, 'addresss', 'Rm 1802, Max Trade Center, 23 Luk Hop Street, San Po Kong, Kowloon '),
(647, 147, '_addresss', 'field_58c7cb7215f19'),
(648, 147, 'telephone', '+852 3105 0603'),
(649, 147, '_telephone', 'field_58c7cb7b15f1a'),
(650, 147, 'email', 'info@mental-production.com'),
(651, 147, '_email', 'field_58c7cb8415f1b'),
(652, 147, 'address', 'Rm 1802, Max Trade Center,<br/>23 Luk Hop Street, <br/>San Po Kong, <br/>Kowloon'),
(653, 147, '_address', 'field_58c7cb7215f19'),
(654, 148, 'office_location', 'a:3:{s:7:"address";s:41:"香港新蒲崗六合街23號萬昌中心";s:3:"lat";s:18:"22.337071951082343";s:3:"lng";s:18:"114.20003771781921";}'),
(655, 148, '_office_location', 'field_58c79a96a8bf4'),
(656, 148, 'company_name', 'Mental Production Limited'),
(657, 148, '_company_name', 'field_58c7cb0f15f18'),
(658, 148, 'addresss', 'Rm 1802, Max Trade Center, 23 Luk Hop Street, San Po Kong, Kowloon '),
(659, 148, '_addresss', 'field_58c7cb7215f19'),
(660, 148, 'telephone', '+852 3105 0603'),
(661, 148, '_telephone', 'field_58c7cb7b15f1a'),
(662, 148, 'email', 'info@mental-production.com'),
(663, 148, '_email', 'field_58c7cb8415f1b'),
(664, 148, 'address', 'Rm 1802, Max Trade Center,<br/>23 Luk Hop Street, <br/>San Po Kong, Kln'),
(665, 148, '_address', 'field_58c7cb7215f19'),
(666, 149, 'office_location', 'a:3:{s:7:"address";s:41:"香港新蒲崗六合街23號萬昌中心";s:3:"lat";s:18:"22.337071951082343";s:3:"lng";s:18:"114.20003771781921";}'),
(667, 149, '_office_location', 'field_58c79a96a8bf4'),
(668, 149, 'company_name', 'Mental Production Limited'),
(669, 149, '_company_name', 'field_58c7cb0f15f18'),
(670, 149, 'addresss', 'Rm 1802, Max Trade Center, 23 Luk Hop Street, San Po Kong, Kowloon '),
(671, 149, '_addresss', 'field_58c7cb7215f19'),
(672, 149, 'telephone', 'Tel: +852 3105 0603'),
(673, 149, '_telephone', 'field_58c7cb7b15f1a'),
(674, 149, 'email', 'info@mental-production.com'),
(675, 149, '_email', 'field_58c7cb8415f1b'),
(676, 149, 'address', 'Rm 1802, Max Trade Center,<br/>23 Luk Hop Street, <br/>San Po Kong, Kln'),
(677, 149, '_address', 'field_58c7cb7215f19'),
(678, 150, '_edit_lock', '1495523214:2'),
(679, 150, '_edit_last', '2'),
(680, 151, '_wp_attached_file', '2017/05/MMs-Power-Walk-2010.jpg'),
(681, 151, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:31:"2017/05/MMs-Power-Walk-2010.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"MMs-Power-Walk-2010-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"MMs-Power-Walk-2010-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"MMs-Power-Walk-2010-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(682, 150, '_thumbnail_id', '151'),
(683, 150, 'home_display_image', '151'),
(684, 150, '_home_display_image', 'field_58c78dce38059'),
(685, 150, 'home_display_width', 'normal'),
(686, 150, '_home_display_width', 'field_58c79b6a5fb9e'),
(687, 150, 'main_video_0_vimeo_link', 'https://vimeo.com/30624816'),
(688, 150, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(689, 150, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(690, 150, '_main_video', 'field_58c7879873152'),
(691, 150, 'author_credit', ''),
(692, 150, '_author_credit', 'field_58c79620a41f6'),
(693, 150, 'related_project', 'a:5:{i:0;s:2:"47";i:1;s:2:"49";i:2;s:2:"44";i:3;s:3:"136";i:4;s:3:"132";}'),
(694, 150, '_related_project', 'field_58c787a673153'),
(695, 153, '_edit_lock', '1496902486:2'),
(696, 153, '_edit_last', '2'),
(697, 154, '_wp_attached_file', '2017/05/Lamex-Ranger.jpg'),
(698, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2040;s:6:"height";i:780;s:4:"file";s:24:"2017/05/Lamex-Ranger.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Lamex-Ranger-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Lamex-Ranger-270x103.jpg";s:5:"width";i:270;s:6:"height";i:103;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"Lamex-Ranger-768x294.jpg";s:5:"width";i:768;s:6:"height";i:294;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"Lamex-Ranger-1024x392.jpg";s:5:"width";i:1024;s:6:"height";i:392;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(699, 153, 'home_display_image', '154'),
(700, 153, '_home_display_image', 'field_58c78dce38059'),
(701, 153, 'home_display_width', 'width2x'),
(702, 153, '_home_display_width', 'field_58c79b6a5fb9e'),
(703, 153, 'main_video_0_vimeo_link', 'https://vimeo.com/43473122'),
(704, 153, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(705, 153, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(706, 153, '_main_video', 'field_58c7879873152'),
(707, 153, 'author_credit', ''),
(708, 153, '_author_credit', 'field_58c79620a41f6'),
(709, 153, 'related_project', 'a:2:{i:0;s:3:"138";i:1;s:2:"45";}'),
(710, 153, '_related_project', 'field_58c787a673153'),
(711, 155, '_edit_lock', '1496902616:2'),
(712, 155, '_edit_last', '2'),
(716, 155, 'home_display_image', '164'),
(717, 155, '_home_display_image', 'field_58c78dce38059'),
(718, 155, 'home_display_width', 'normal'),
(719, 155, '_home_display_width', 'field_58c79b6a5fb9e'),
(720, 155, 'main_video_0_vimeo_link', 'https://vimeo.com/44312321'),
(721, 155, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(722, 155, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(723, 155, '_main_video', 'field_58c7879873152'),
(724, 155, 'author_credit', ''),
(725, 155, '_author_credit', 'field_58c79620a41f6'),
(726, 155, 'related_project', 'a:3:{i:0;s:3:"138";i:1;s:3:"153";i:2;s:2:"50";}'),
(727, 155, '_related_project', 'field_58c787a673153'),
(728, 157, '_edit_lock', '1496902489:2'),
(729, 157, '_edit_last', '2'),
(730, 158, '_wp_attached_file', '2017/05/Lamex-Access.jpg'),
(731, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:24:"2017/05/Lamex-Access.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Lamex-Access-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Lamex-Access-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"Lamex-Access-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(732, 157, 'home_display_image', '158'),
(733, 157, '_home_display_image', 'field_58c78dce38059'),
(734, 157, 'home_display_width', 'normal'),
(735, 157, '_home_display_width', 'field_58c79b6a5fb9e'),
(736, 157, 'main_video_0_vimeo_link', 'https://vimeo.com/68834799'),
(737, 157, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(738, 157, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(739, 157, '_main_video', 'field_58c7879873152'),
(740, 157, 'author_credit', ''),
(741, 157, '_author_credit', 'field_58c79620a41f6'),
(742, 157, 'related_project', 'a:5:{i:0;s:3:"138";i:1;s:2:"45";i:2;s:3:"155";i:3;s:3:"153";i:4;s:2:"50";}'),
(743, 157, '_related_project', 'field_58c787a673153'),
(744, 159, '_edit_lock', '1496902492:2'),
(745, 159, '_edit_last', '2'),
(746, 160, '_wp_attached_file', '2017/05/Lamex-Optima.jpg'),
(747, 160, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:24:"2017/05/Lamex-Optima.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Lamex-Optima-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Lamex-Optima-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"Lamex-Optima-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(748, 159, '_thumbnail_id', '160'),
(749, 159, 'home_display_image', '160'),
(750, 159, '_home_display_image', 'field_58c78dce38059'),
(751, 159, 'home_display_width', 'normal'),
(752, 159, '_home_display_width', 'field_58c79b6a5fb9e'),
(753, 159, 'main_video_0_vimeo_link', 'https://vimeo.com/68836595'),
(754, 159, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(755, 159, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(756, 159, '_main_video', 'field_58c7879873152'),
(757, 159, 'author_credit', ''),
(758, 159, '_author_credit', 'field_58c79620a41f6'),
(759, 159, 'related_project', ''),
(760, 159, '_related_project', 'field_58c787a673153'),
(761, 161, '_edit_lock', '1496902495:2'),
(762, 161, '_edit_last', '2'),
(766, 161, 'home_display_image', '165'),
(767, 161, '_home_display_image', 'field_58c78dce38059'),
(768, 161, 'home_display_width', 'normal'),
(769, 161, '_home_display_width', 'field_58c79b6a5fb9e'),
(770, 161, 'main_video_0_vimeo_link', 'https://vimeo.com/43473124'),
(771, 161, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(772, 161, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(773, 161, '_main_video', 'field_58c7879873152'),
(774, 161, 'author_credit', ''),
(775, 161, '_author_credit', 'field_58c79620a41f6'),
(776, 161, 'related_project', 'a:7:{i:0;s:3:"138";i:1;s:2:"45";i:2;s:3:"155";i:3;s:3:"153";i:4;s:3:"159";i:5;s:2:"50";i:6;s:3:"157";}'),
(777, 161, '_related_project', 'field_58c787a673153'),
(780, 164, '_wp_attached_file', '2017/05/Lamex-Rateo-Recta-1.jpg'),
(781, 164, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:31:"2017/05/Lamex-Rateo-Recta-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Lamex-Rateo-Recta-1-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"Lamex-Rateo-Recta-1-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"Lamex-Rateo-Recta-1-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(782, 155, '_thumbnail_id', '164'),
(783, 165, '_wp_attached_file', '2017/05/Lamex-Arctia.jpg'),
(784, 165, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:24:"2017/05/Lamex-Arctia.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Lamex-Arctia-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Lamex-Arctia-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"Lamex-Arctia-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(785, 161, '_thumbnail_id', '165'),
(788, 167, '_wp_attached_file', '2017/03/Lamex-Render-1.jpg'),
(789, 167, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:26:"2017/03/Lamex-Render-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"Lamex-Render-1-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"Lamex-Render-1-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"Lamex-Render-1-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(790, 50, '_thumbnail_id', '167'),
(791, 168, '_edit_lock', '1495531519:2'),
(792, 168, '_edit_last', '2'),
(793, 169, '_wp_attached_file', '2017/05/VTC-TVC.jpg'),
(794, 169, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:19:"2017/05/VTC-TVC.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"VTC-TVC-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"VTC-TVC-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"VTC-TVC-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(795, 168, '_thumbnail_id', '169'),
(796, 168, 'home_display_image', '169'),
(797, 168, '_home_display_image', 'field_58c78dce38059'),
(798, 168, 'home_display_width', 'normal'),
(799, 168, '_home_display_width', 'field_58c79b6a5fb9e'),
(800, 168, 'main_video_0_vimeo_link', 'https://vimeo.com/60806281'),
(801, 168, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(802, 168, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(803, 168, '_main_video', 'field_58c7879873152'),
(804, 168, 'author_credit', ''),
(805, 168, '_author_credit', 'field_58c79620a41f6'),
(806, 168, 'related_project', 'a:6:{i:0;s:2:"47";i:1;s:2:"49";i:2;s:3:"150";i:3;s:2:"44";i:4;s:3:"132";i:5;s:3:"136";}'),
(807, 168, '_related_project', 'field_58c787a673153'),
(808, 170, '_edit_lock', '1496902417:2'),
(809, 170, '_edit_last', '2'),
(810, 171, '_wp_attached_file', '2017/05/Hirudoid-TVC-2013.jpg'),
(811, 171, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:29:"2017/05/Hirudoid-TVC-2013.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"Hirudoid-TVC-2013-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"Hirudoid-TVC-2013-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"Hirudoid-TVC-2013-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(812, 170, '_thumbnail_id', '171'),
(813, 170, 'home_display_image', '171'),
(814, 170, '_home_display_image', 'field_58c78dce38059'),
(815, 170, 'home_display_width', 'normal'),
(816, 170, '_home_display_width', 'field_58c79b6a5fb9e'),
(817, 170, 'main_video_0_vimeo_link', 'https://vimeo.com/68838170'),
(818, 170, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(819, 170, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(820, 170, '_main_video', 'field_58c7879873152'),
(821, 170, 'author_credit', ''),
(822, 170, '_author_credit', 'field_58c79620a41f6'),
(823, 170, 'related_project', 'a:7:{i:0;s:3:"132";i:1;s:3:"136";i:2;s:2:"44";i:3;s:3:"150";i:4;s:2:"49";i:5;s:2:"47";i:6;s:3:"168";}'),
(824, 170, '_related_project', 'field_58c787a673153'),
(825, 172, '_edit_lock', '1496902397:2'),
(826, 173, '_wp_attached_file', '2017/05/Hauwei-P6-Promotion-Video.jpg'),
(827, 173, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:37:"2017/05/Hauwei-P6-Promotion-Video.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"Hauwei-P6-Promotion-Video-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"Hauwei-P6-Promotion-Video-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"Hauwei-P6-Promotion-Video-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(828, 172, '_edit_last', '2'),
(829, 172, '_thumbnail_id', '173'),
(830, 172, 'home_display_image', '173'),
(831, 172, '_home_display_image', 'field_58c78dce38059'),
(832, 172, 'home_display_width', 'normal'),
(833, 172, '_home_display_width', 'field_58c79b6a5fb9e'),
(834, 172, 'main_video_0_vimeo_link', 'https://vimeo.com/70616047'),
(835, 172, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(836, 172, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(837, 172, '_main_video', 'field_58c7879873152'),
(838, 172, 'author_credit', ''),
(839, 172, '_author_credit', 'field_58c79620a41f6'),
(840, 172, 'related_project', 'a:8:{i:0;s:3:"157";i:1;s:3:"161";i:2;s:2:"50";i:3;s:3:"159";i:4;s:3:"153";i:5;s:3:"155";i:6;s:2:"45";i:7;s:2:"46";}'),
(841, 172, '_related_project', 'field_58c787a673153'),
(842, 174, '_edit_lock', '1496902358:2'),
(843, 174, '_edit_last', '2'),
(844, 175, '_wp_attached_file', '2017/05/Carlsberg-Promotion-TVC.jpg'),
(845, 175, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:35:"2017/05/Carlsberg-Promotion-TVC.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"Carlsberg-Promotion-TVC-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"Carlsberg-Promotion-TVC-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"Carlsberg-Promotion-TVC-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(846, 174, '_thumbnail_id', '175'),
(847, 174, 'home_display_image', '175'),
(848, 174, '_home_display_image', 'field_58c78dce38059'),
(849, 174, 'home_display_width', 'normal'),
(850, 174, '_home_display_width', 'field_58c79b6a5fb9e'),
(851, 174, 'main_video_0_vimeo_link', 'https://vimeo.com/68837440'),
(852, 174, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(853, 174, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(854, 174, '_main_video', 'field_58c7879873152'),
(855, 174, 'author_credit', ''),
(856, 174, '_author_credit', 'field_58c79620a41f6'),
(857, 174, 'related_project', 'a:8:{i:0;s:3:"132";i:1;s:3:"136";i:2;s:2:"44";i:3;s:3:"170";i:4;s:3:"150";i:5;s:2:"49";i:6;s:2:"47";i:7;s:3:"168";}'),
(858, 174, '_related_project', 'field_58c787a673153'),
(859, 177, '_edit_lock', '1496902504:2'),
(860, 177, '_edit_last', '2'),
(861, 178, '_wp_attached_file', '2017/05/LANEIGE-TVC-2013.jpg'),
(862, 178, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:28:"2017/05/LANEIGE-TVC-2013.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"LANEIGE-TVC-2013-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"LANEIGE-TVC-2013-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"LANEIGE-TVC-2013-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(863, 177, '_thumbnail_id', '178'),
(864, 177, 'home_display_image', '178'),
(865, 177, '_home_display_image', 'field_58c78dce38059'),
(866, 177, 'home_display_width', 'normal'),
(867, 177, '_home_display_width', 'field_58c79b6a5fb9e'),
(868, 177, 'main_video_0_vimeo_link', 'https://vimeo.com/60808117'),
(869, 177, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(870, 177, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(871, 177, '_main_video', 'field_58c7879873152'),
(872, 177, 'author_credit', ''),
(873, 177, '_author_credit', 'field_58c79620a41f6'),
(874, 177, 'related_project', 'a:8:{i:0;s:3:"132";i:1;s:3:"136";i:2;s:3:"174";i:3;s:3:"170";i:4;s:2:"49";i:5;s:2:"47";i:6;s:3:"168";i:7;s:3:"150";}'),
(875, 177, '_related_project', 'field_58c787a673153'),
(876, 179, '_edit_lock', '1496902400:2'),
(877, 179, '_edit_last', '2'),
(878, 180, '_wp_attached_file', '2017/05/Healthy-Me-BB-TVC-2013.jpg'),
(879, 180, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:34:"2017/05/Healthy-Me-BB-TVC-2013.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"Healthy-Me-BB-TVC-2013-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"Healthy-Me-BB-TVC-2013-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"Healthy-Me-BB-TVC-2013-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(880, 179, '_thumbnail_id', '180'),
(881, 179, 'home_display_image', '180'),
(882, 179, '_home_display_image', 'field_58c78dce38059'),
(883, 179, 'home_display_width', 'normal'),
(884, 179, '_home_display_width', 'field_58c79b6a5fb9e'),
(885, 179, 'main_video_0_vimeo_link', 'https://vimeo.com/68832749'),
(886, 179, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(887, 179, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(888, 179, '_main_video', 'field_58c7879873152'),
(889, 179, 'author_credit', ''),
(890, 179, '_author_credit', 'field_58c79620a41f6'),
(891, 179, 'related_project', 'a:11:{i:0;s:3:"132";i:1;s:3:"136";i:2;s:3:"174";i:3;s:3:"170";i:4;s:3:"177";i:5;s:3:"150";i:6;s:2:"49";i:7;s:2:"49";i:8;s:2:"46";i:9;s:2:"47";i:10;s:3:"168";}'),
(892, 179, '_related_project', 'field_58c787a673153'),
(893, 181, '_edit_lock', '1496902379:2'),
(894, 181, '_edit_last', '2'),
(895, 182, '_wp_attached_file', '2017/05/Estee-Lauder-TVC-2013.jpg'),
(896, 182, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:33:"2017/05/Estee-Lauder-TVC-2013.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Estee-Lauder-TVC-2013-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Estee-Lauder-TVC-2013-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"Estee-Lauder-TVC-2013-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(897, 181, '_thumbnail_id', '182'),
(898, 181, 'home_display_image', '182'),
(899, 181, '_home_display_image', 'field_58c78dce38059'),
(900, 181, 'home_display_width', 'normal'),
(901, 181, '_home_display_width', 'field_58c79b6a5fb9e'),
(902, 181, 'main_video_0_vimeo_link', 'https://vimeo.com/68834611'),
(903, 181, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(904, 181, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(905, 181, '_main_video', 'field_58c7879873152'),
(906, 181, 'author_credit', ''),
(907, 181, '_author_credit', 'field_58c79620a41f6'),
(908, 181, 'related_project', 'a:10:{i:0;s:3:"132";i:1;s:3:"136";i:2;s:3:"174";i:3;s:2:"44";i:4;s:3:"170";i:5;s:3:"177";i:6;s:3:"150";i:7;s:2:"49";i:8;s:2:"47";i:9;s:3:"168";}'),
(909, 181, '_related_project', 'field_58c787a673153'),
(910, 183, '_edit_lock', '1496902419:2'),
(911, 183, '_edit_last', '2'),
(912, 184, '_wp_attached_file', '2017/05/Hong-Kong-Awards-for-Environmental-Excellence-2013.jpg'),
(913, 184, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:62:"2017/05/Hong-Kong-Awards-for-Environmental-Excellence-2013.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:62:"Hong-Kong-Awards-for-Environmental-Excellence-2013-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:62:"Hong-Kong-Awards-for-Environmental-Excellence-2013-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:62:"Hong-Kong-Awards-for-Environmental-Excellence-2013-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(914, 183, '_thumbnail_id', '184'),
(915, 183, 'home_display_image', '184'),
(916, 183, '_home_display_image', 'field_58c78dce38059'),
(917, 183, 'home_display_width', 'normal'),
(918, 183, '_home_display_width', 'field_58c79b6a5fb9e'),
(919, 183, 'main_video_0_vimeo_link', 'https://vimeo.com/70613237'),
(920, 183, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(921, 183, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(922, 183, '_main_video', 'field_58c7879873152'),
(923, 183, 'author_credit', ''),
(924, 183, '_author_credit', 'field_58c79620a41f6'),
(925, 183, 'related_project', 'a:12:{i:0;s:3:"132";i:1;s:3:"136";i:2;s:3:"174";i:3;s:2:"44";i:4;s:3:"181";i:5;s:3:"179";i:6;s:3:"170";i:7;s:3:"177";i:8;s:3:"150";i:9;s:2:"49";i:10;s:2:"47";i:11;s:3:"168";}'),
(926, 183, '_related_project', 'field_58c787a673153'),
(927, 185, '_edit_lock', '1496902398:2'),
(928, 185, '_edit_last', '2'),
(932, 185, 'home_display_image', '187'),
(933, 185, '_home_display_image', 'field_58c78dce38059'),
(934, 185, 'home_display_width', 'normal'),
(935, 185, '_home_display_width', 'field_58c79b6a5fb9e'),
(936, 185, 'main_video_0_vimeo_link', 'https://vimeo.com/68838637'),
(937, 185, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(938, 185, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(939, 185, '_main_video', 'field_58c7879873152'),
(940, 185, 'author_credit', ''),
(941, 185, '_author_credit', 'field_58c79620a41f6'),
(942, 185, 'related_project', 'a:4:{i:0;s:2:"48";i:1;s:3:"172";i:2;s:2:"45";i:3;s:2:"46";}'),
(943, 185, '_related_project', 'field_58c787a673153'),
(944, 187, '_wp_attached_file', '2017/05/FFman.jpg'),
(945, 187, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:17:"2017/05/FFman.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"FFman-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"FFman-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"FFman-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(946, 185, '_thumbnail_id', '187'),
(947, 189, '_menu_item_type', 'custom'),
(948, 189, '_menu_item_menu_item_parent', '83'),
(949, 189, '_menu_item_object_id', '189'),
(950, 189, '_menu_item_object', 'custom'),
(951, 189, '_menu_item_target', ''),
(952, 189, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(953, 189, '_menu_item_xfn', ''),
(954, 189, '_menu_item_url', '#'),
(955, 191, '_edit_lock', '1496903303:2'),
(956, 191, '_edit_last', '2'),
(957, 192, '_wp_attached_file', '2017/06/CEOV.jpg'),
(958, 192, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:16:"2017/06/CEOV.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"CEOV-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"CEOV-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"CEOV-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(959, 191, '_thumbnail_id', '192'),
(960, 191, 'home_display_image', '192'),
(961, 191, '_home_display_image', 'field_58c78dce38059'),
(962, 191, 'home_display_width', 'normal'),
(963, 191, '_home_display_width', 'field_58c79b6a5fb9e'),
(964, 191, 'main_video_0_vimeo_link', 'https://vimeo.com/68839035'),
(965, 191, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(966, 191, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(967, 191, '_main_video', 'field_58c7879873152'),
(968, 191, 'author_credit', ''),
(969, 191, '_author_credit', 'field_58c79620a41f6'),
(970, 191, 'related_project', 'a:7:{i:0;s:3:"155";i:1;s:3:"153";i:2;s:3:"159";i:3;s:2:"50";i:4;s:3:"161";i:5;s:3:"157";i:6;s:3:"172";}'),
(971, 191, '_related_project', 'field_58c787a673153'),
(972, 193, '_edit_lock', '1496904212:2'),
(973, 193, '_edit_last', '2'),
(974, 194, '_wp_attached_file', '2017/06/Stepper.jpg'),
(975, 194, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:19:"2017/06/Stepper.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Stepper-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"Stepper-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"Stepper-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(976, 193, '_thumbnail_id', '194'),
(977, 193, 'home_display_image', '194'),
(978, 193, '_home_display_image', 'field_58c78dce38059'),
(979, 193, 'home_display_width', 'normal'),
(980, 193, '_home_display_width', 'field_58c79b6a5fb9e'),
(981, 193, 'main_video_0_vimeo_link', 'https://vimeo.com/70388941'),
(982, 193, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(983, 193, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(984, 193, '_main_video', 'field_58c7879873152'),
(985, 193, 'author_credit', ''),
(986, 193, '_author_credit', 'field_58c79620a41f6'),
(987, 193, 'related_project', 'a:8:{i:0;s:3:"155";i:1;s:3:"153";i:2;s:3:"159";i:3;s:2:"50";i:4;s:3:"161";i:5;s:3:"157";i:6;s:3:"172";i:7;s:3:"191";}'),
(988, 193, '_related_project', 'field_58c787a673153'),
(989, 195, '_edit_lock', '1496905911:2'),
(990, 195, '_edit_last', '2'),
(993, 197, '_wp_attached_file', '2017/06/OENOBIOL-1.jpg'),
(994, 197, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1020;s:6:"height";i:780;s:4:"file";s:22:"2017/06/OENOBIOL-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"OENOBIOL-1-270x200.jpg";s:5:"width";i:270;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"OENOBIOL-1-262x200.jpg";s:5:"width";i:262;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"OENOBIOL-1-768x587.jpg";s:5:"width";i:768;s:6:"height";i:587;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(995, 195, '_thumbnail_id', '197'),
(996, 195, 'home_display_image', '197'),
(997, 195, '_home_display_image', 'field_58c78dce38059'),
(998, 195, 'home_display_width', 'normal'),
(999, 195, '_home_display_width', 'field_58c79b6a5fb9e'),
(1000, 195, 'main_video_0_vimeo_link', 'https://vimeo.com/70390554'),
(1001, 195, '_main_video_0_vimeo_link', 'field_58c7952688aa2'),
(1002, 195, 'main_video', 'a:1:{i:0;s:11:"vimeo_video";}'),
(1003, 195, '_main_video', 'field_58c7879873152'),
(1004, 195, 'author_credit', ''),
(1005, 195, '_author_credit', 'field_58c79620a41f6'),
(1006, 195, 'related_project', 'a:8:{i:0;s:3:"132";i:1;s:3:"136";i:2;s:3:"174";i:3;s:3:"191";i:4;s:3:"181";i:5;s:3:"172";i:6;s:3:"179";i:7;s:3:"170";}'),
(1007, 195, '_related_project', 'field_58c787a673153');

-- --------------------------------------------------------

--
-- 資料表結構 `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-02-13 21:31:19', '2017-02-13 13:31:19', '歡迎來到 WordPress。這是你的第一篇文章。編輯或者刪除本篇文章，然後開始你的部落客生活！', 'Hello world! 哈囉！', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-02-13 21:31:19', '2017-02-13 13:31:19', '', 0, 'http://local.mental-production.com/?p=1', 1, 'post', '', 1),
(2, 1, '2017-02-13 21:31:19', '2017-02-13 13:31:19', '這是一個範例頁面。它和網誌文章不同，因為它的頁面位置是固定的，同時會顯示於你的網誌導覽選單（大多數的佈景主題）。大多數的人會新增一個「關於」頁面向訪客介紹自己。它可能類似下面這樣：\n\n<blockquote>嗨！你好！白天我是一位單車快遞員，晚上則是個有抱負的演員，這是我的網誌。我居住在台灣高雄，養了一隻名為 Jack 的狗。</blockquote>\n\n...或像這樣：\n\n<blockquote>XYZ Doohickey Comany 成立於 1971 年，公司成立以來，我們一直向市民提供高品質的 doohickies 。我們位於台北市，有超過 2,000 名員工，對台北市政府有著相當大的貢獻。</blockquote>\n\n作為一個新的 WordPress 使用者，你可以前往<a href="http://local.mental-production.com/wp-admin/">你的控制台</a>刪除這個頁面，並建立一個屬於你的全新內容。祝使用愉快！', '範例頁面', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-02-13 21:31:19', '2017-02-13 13:31:19', '', 0, 'http://local.mental-production.com/?page_id=2', 4, 'page', '', 0),
(4, 1, '2017-02-13 21:31:38', '2017-02-13 13:31:38', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum consequat, orci ac laoreet cursus, dolor sem luctus lorem, eget consequat magna felis a magna. Aliquam scelerisque condimentum ante, eget facilisis tortor lobortis in. In interdum venenatis justo eget consequat. Morbi commodo rhoncus mi nec pharetra. Aliquam erat volutpat. Mauris non lorem eu dolor hendrerit dapibus. Mauris mollis nisl quis sapien posuere consectetur. Nullam in sapien at nisi ornare bibendum at ut lectus. Pellentesque ut magna mauris. Nam viverra suscipit ligula, sed accumsan enim placerat nec. Cras vitae metus vel dolor ultrices sagittis. Duis venenatis augue sed risus laoreet congue ac ac leo. Donec fermentum accumsan libero sit amet iaculis. Duis tristique dictum enim, ac fringilla risus bibendum in. Nunc ornare, quam sit amet ultricies gravida, tortor mi malesuada urna, quis commodo dui nibh in lacus. Nunc vel tortor mi. Pellentesque vel urna a arcu adipiscing imperdiet vitae sit amet neque. Integer eu lectus et nunc dictum sagittis. Curabitur commodo vulputate fringilla. Sed eleifend, arcu convallis adipiscing congue, dui turpis commodo magna, et vehicula sapien turpis sit amet nisi.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-02-13 21:41:36', '2017-02-13 13:41:36', '', 0, 'http://local.mental-production.com/home/', 3, 'page', '', 0),
(5, 1, '2017-02-13 21:31:38', '2017-02-13 13:31:38', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum consequat, orci ac laoreet cursus, dolor sem luctus lorem, eget consequat magna felis a magna. Aliquam scelerisque condimentum ante, eget facilisis tortor lobortis in. In interdum venenatis justo eget consequat. Morbi commodo rhoncus mi nec pharetra. Aliquam erat volutpat. Mauris non lorem eu dolor hendrerit dapibus. Mauris mollis nisl quis sapien posuere consectetur. Nullam in sapien at nisi ornare bibendum at ut lectus. Pellentesque ut magna mauris. Nam viverra suscipit ligula, sed accumsan enim placerat nec. Cras vitae metus vel dolor ultrices sagittis. Duis venenatis augue sed risus laoreet congue ac ac leo. Donec fermentum accumsan libero sit amet iaculis. Duis tristique dictum enim, ac fringilla risus bibendum in. Nunc ornare, quam sit amet ultricies gravida, tortor mi malesuada urna, quis commodo dui nibh in lacus. Nunc vel tortor mi. Pellentesque vel urna a arcu adipiscing imperdiet vitae sit amet neque. Integer eu lectus et nunc dictum sagittis. Curabitur commodo vulputate fringilla. Sed eleifend, arcu convallis adipiscing congue, dui turpis commodo magna, et vehicula sapien turpis sit amet nisi.', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-02-13 21:31:38', '2017-02-13 13:31:38', '', 4, 'http://local.mental-production.com/2017/02/13/4-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-02-13 22:43:53', '2017-02-13 14:43:53', '<h6>About Us</h6>\r\nMental Production is a youthful and dynamic company specializing in 2D/3D animation and post production. The word “Mental” of our company Mental Production displaysthe amount of importance we attach to your ideas. We strive to make your ideas a reality. We manage to produce the most impressive visual effects and make most effective promotion. In every project, we have demonstrated consistency in three attitudes:\r\n<ol>\r\n 	<li>Exercise close supervision of the process of the project</li>\r\n 	<li>Collaborate in the brainstorming process for the sake of more production flexibility</li>\r\n 	<li>Provide advanced production techniques and spectacular artistic advices</li>\r\n</ol>\r\nMental Production 是一間年青及活力的動畫及後期製作公司. Mental Production 的Mental 是代表我們重視每個人的想法. 致力把你心中所想化為可能. 從而得到最大的視覺和宣傳效果. 在過去每一次服務之中. 我們都堅守以下三個態度:\r\n<ol>\r\n 	<li>提供盡責和清晰的進度監察</li>\r\n 	<li>如有需要, 我們能和貴客一起創作, 增加製作彈性</li>\r\n 	<li>提供精良的製作技術和良好的美術觸覺</li>\r\n</ol>\r\nSince 2007, we have developed our expertise within the scope of TV commercials, TV series, exhibitions, and multimedia. We have produced more than 100 different projects, which included:\r\n\r\n自從2007年起. 我們一直活躍於廣告. 電視劇集. 展覽和多媒體的領域之中. 同時製作過超過100個不同的Project。\r\n\r\n&nbsp;\r\n<h6>Our Service</h6>\r\n<h5><strong>Pre-production</strong></h5>\r\n<ul>\r\n 	<li>Storyboard design</li>\r\n 	<li>Character design</li>\r\n 	<li>Pre-visualization</li>\r\n 	<li>VFX planning</li>\r\n 	<li>Script writing</li>\r\n</ul>\r\n<h5><strong>Production</strong></h5>\r\n<ul>\r\n 	<li>2D/3D animation</li>\r\n 	<li>Video shooting</li>\r\n 	<li>Motion graphic</li>\r\n 	<li>Photo-realistic architectural rendering</li>\r\n 	<li>Photo-realistic interior rendering</li>\r\n 	<li>Photo-realistic product rendering</li>\r\n 	<li>Multimedia production</li>\r\n 	<li>Slide show</li>\r\n</ul>\r\n<h5><strong>Post-production</strong></h5>\r\n<ul>\r\n 	<li>CG compositing</li>\r\n 	<li>Video editing</li>\r\n 	<li>Online editing (AE)</li>\r\n</ul>\r\n&nbsp;\r\n<h6>Awards</h6>\r\n<ul>\r\n 	<li><strong>2005</strong> Asia Digital Art Award - Category B - Moving images - Finalist Prizes</li>\r\n 	<li><strong>2004</strong> The 4th HONG KONG DIGITAL ENTERTAINMENT EXCELLENCE AWARDS - The Best Computer Animation</li>\r\n</ul>', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2017-05-23 13:50:47', '2017-05-23 05:50:47', '', 0, 'http://local.mental-production.com/?page_id=9', 1, 'page', '', 0),
(10, 1, '2017-02-13 22:43:53', '2017-02-13 14:43:53', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-02-13 22:43:53', '2017-02-13 14:43:53', '', 9, 'http://local.mental-production.com/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-02-13 22:44:07', '2017-02-13 14:44:07', '&nbsp;\r\n\r\nProducer - Yatming Cheng\r\nTel: +852 6226 9652\r\nE-mail: <a href="mailto:yatming@mental-production.com">yatming@mental-production.com</a>\r\n\r\nProducer - Timmy Ng\r\nTel: +852 9858 0010\r\nE-mail: <a href="mailto:timmy@mental-production.com">timmy@mental-production.com</a>', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-05-23 14:56:27', '2017-05-23 06:56:27', '', 0, 'http://local.mental-production.com/?page_id=11', 2, 'page', '', 0),
(12, 1, '2017-02-13 22:44:07', '2017-02-13 14:44:07', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-02-13 22:44:07', '2017-02-13 14:44:07', '', 11, 'http://local.mental-production.com/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-02-13 22:44:24', '2017-02-13 14:44:24', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 0, 'http://local.mental-production.com/?p=13', 13, 'nav_menu_item', '', 0),
(14, 1, '2017-02-13 22:44:24', '2017-02-13 14:44:24', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 0, 'http://local.mental-production.com/?p=14', 12, 'nav_menu_item', '', 0),
(15, 1, '2017-02-13 22:44:30', '2017-02-13 14:44:30', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-02-13 22:44:30', '2017-02-13 14:44:30', '', 11, 'http://local.mental-production.com/11-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-03-14 13:51:21', '2017-03-14 05:51:21', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"portfolio";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Portfolio fields', 'portfolio-fields', 'publish', 'closed', 'closed', '', 'group_58c784cd4457d', '', '', '2017-03-14 19:25:00', '2017-03-14 11:25:00', '', 0, 'http://local.mental-production.com/?post_type=acf-field-group&#038;p=17', 0, 'acf-field-group', '', 0),
(18, 1, '2017-03-14 14:03:31', '2017-03-14 06:03:31', 'a:9:{s:3:"min";s:0:"";s:3:"max";s:0:"";s:12:"button_label";s:7:"Add Row";s:4:"type";s:16:"flexible_content";s:12:"instructions";s:66:"If you want to embed video as the top media, enter your link here.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"layouts";a:2:{i:0;a:6:{s:3:"key";s:13:"58c794c1aaeaf";s:5:"label";s:13:"youtube video";s:4:"name";s:13:"youtube_video";s:7:"display";s:5:"block";s:3:"min";s:0:"";s:3:"max";s:0:"";}i:1;a:6:{s:3:"key";s:13:"58c7951f88aa1";s:5:"label";s:11:"vimeo video";s:4:"name";s:11:"vimeo_video";s:7:"display";s:5:"block";s:3:"min";s:0:"";s:3:"max";s:0:"";}}}', 'Main video', 'main_video', 'publish', 'closed', 'closed', '', 'field_58c7879873152', '', '', '2017-03-14 15:28:44', '2017-03-14 07:28:44', '', 17, 'http://local.mental-production.com/?post_type=acf-field&#038;p=18', 2, 'acf-field', '', 0),
(19, 1, '2017-03-14 14:03:31', '2017-03-14 06:03:31', 'a:12:{s:9:"post_type";a:1:{i:0;s:9:"portfolio";}s:8:"taxonomy";a:0:{}s:3:"min";s:0:"";s:3:"max";s:0:"";s:7:"filters";a:3:{i:0;s:6:"search";i:1;s:9:"post_type";i:2;s:8:"taxonomy";}s:8:"elements";s:0:"";s:13:"return_format";s:6:"object";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Related project', 'related_project', 'publish', 'closed', 'closed', '', 'field_58c787a673153', '', '', '2017-03-14 15:33:01', '2017-03-14 07:33:01', '', 17, 'http://local.mental-production.com/?post_type=acf-field&#038;p=19', 4, 'acf-field', '', 0),
(23, 1, '2017-03-14 14:29:49', '2017-03-14 06:29:49', 'a:15:{s:13:"return_format";s:3:"url";s:12:"preview_size";s:12:"medium_large";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Home display image', 'home_display_image', 'publish', 'closed', 'closed', '', 'field_58c78dce38059', '', '', '2017-03-14 19:11:36', '2017-03-14 11:11:36', '', 17, 'http://local.mental-production.com/?post_type=acf-field&#038;p=23', 0, 'acf-field', '', 0),
(26, 1, '2017-03-14 15:01:06', '2017-03-14 07:01:06', 'a:11:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"58c794c1aaeaf";}', 'youtube link', 'youtube_link', 'publish', 'closed', 'closed', '', 'field_58c794e888aa0', '', '', '2017-03-14 15:01:06', '2017-03-14 07:01:06', '', 18, 'http://local.mental-production.com/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2017-03-14 15:01:06', '2017-03-14 07:01:06', 'a:11:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"58c7951f88aa1";}', 'vimeo link', 'vimeo_link', 'publish', 'closed', 'closed', '', 'field_58c7952688aa2', '', '', '2017-03-14 15:01:06', '2017-03-14 07:01:06', '', 18, 'http://local.mental-production.com/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2017-03-14 15:09:37', '2017-03-14 07:09:37', 'a:9:{s:3:"min";s:0:"";s:3:"max";s:0:"";s:12:"button_label";s:7:"Add Row";s:4:"type";s:16:"flexible_content";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"layouts";a:1:{i:0;a:6:{s:3:"key";s:13:"58c796d3e4dbf";s:5:"label";s:11:"Credit text";s:4:"name";s:11:"credit_text";s:7:"display";s:5:"block";s:3:"min";s:0:"";s:3:"max";s:0:"";}}}', 'Author credit', 'author_credit', 'publish', 'closed', 'closed', '', 'field_58c79620a41f6', '', '', '2017-03-14 15:33:01', '2017-03-14 07:33:01', '', 17, 'http://local.mental-production.com/?post_type=acf-field&#038;p=28', 3, 'acf-field', '', 0),
(29, 1, '2017-03-14 15:09:37', '2017-03-14 07:09:37', 'a:11:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:43:"e.g. "Photo by:", "Video by", "Designed by"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"58c796d3e4dbf";}', 'credit wording', 'credit_wording', 'publish', 'closed', 'closed', '', 'field_58c796dca41f7', '', '', '2017-03-14 15:09:37', '2017-03-14 07:09:37', '', 28, 'http://local.mental-production.com/?post_type=acf-field&p=29', 0, 'acf-field', '', 0),
(30, 1, '2017-03-14 15:09:37', '2017-03-14 07:09:37', 'a:11:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:30:"e.g. "Peter Wong, Sam Chan..."";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"58c796d3e4dbf";}', 'project author', 'project_author', 'publish', 'closed', 'closed', '', 'field_58c79708a41f8', '', '', '2017-03-14 15:09:37', '2017-03-14 07:09:37', '', 28, 'http://local.mental-production.com/?post_type=acf-field&p=30', 1, 'acf-field', '', 0),
(31, 1, '2017-03-14 15:21:33', '2017-03-14 07:21:33', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_template";s:8:"operator";s:2:"==";s:5:"value";s:23:"template-contact_us.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Contact us fields', 'contact-us-fields', 'publish', 'closed', 'closed', '', 'group_58c799f6256cb', '', '', '2017-04-18 15:09:20', '2017-04-18 07:09:20', '', 0, 'http://local.mental-production.com/?post_type=acf-field-group&#038;p=31', 0, 'acf-field-group', '', 0),
(32, 1, '2017-03-14 15:24:48', '2017-03-14 07:24:48', 'a:9:{s:6:"height";s:0:"";s:10:"center_lat";s:10:"22.3355509";s:10:"center_lng";s:11:"114.2048523";s:4:"zoom";s:0:"";s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Office location', 'office_location', 'publish', 'closed', 'closed', '', 'field_58c79a96a8bf4', '', '', '2017-03-14 18:53:33', '2017-03-14 10:53:33', '', 31, 'http://local.mental-production.com/?post_type=acf-field&#038;p=32', 4, 'acf-field', '', 0),
(35, 1, '2017-03-14 15:26:48', '2017-03-14 07:26:48', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Bio item', 'bio_item', 'publish', 'closed', 'closed', '', 'field_58c79aecc2f9d', '', '', '2017-03-14 15:26:48', '2017-03-14 07:26:48', '', 33, 'http://local.mental-production.com/?post_type=acf-field&p=35', 0, 'acf-field', '', 0),
(37, 1, '2017-03-14 15:26:49', '2017-03-14 07:26:49', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'exhibition year', 'exhibition_year', 'publish', 'closed', 'closed', '', 'field_58c79b0cc2f9f', '', '', '2017-03-14 15:26:49', '2017-03-14 07:26:49', '', 33, 'http://local.mental-production.com/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2017-03-14 15:26:49', '2017-03-14 07:26:49', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'exhibition name', 'exhibition_name', 'publish', 'closed', 'closed', '', 'field_58c79b17c2fa0', '', '', '2017-03-14 15:26:49', '2017-03-14 07:26:49', '', 33, 'http://local.mental-production.com/?post_type=acf-field&p=38', 1, 'acf-field', '', 0),
(39, 1, '2017-03-14 15:28:19', '2017-03-14 07:28:19', 'a:13:{s:8:"multiple";i:0;s:10:"allow_null";i:0;s:7:"choices";a:2:{s:6:"normal";s:6:"Normal";s:7:"width2x";s:12:"Double width";}s:13:"default_value";a:1:{i:0;s:6:"normal";}s:2:"ui";i:0;s:4:"ajax";i:0;s:11:"placeholder";s:0:"";s:13:"return_format";s:5:"value";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Home display width', 'home_display_width', 'publish', 'closed', 'closed', '', 'field_58c79b6a5fb9e', '', '', '2017-03-14 19:25:00', '2017-03-14 11:25:00', '', 17, 'http://local.mental-production.com/?post_type=acf-field&#038;p=39', 1, 'acf-field', '', 0),
(40, 1, '2017-03-14 18:09:14', '2017-03-14 10:09:14', '', 'Mental Showreel', '', 'publish', 'closed', 'closed', '', 'mental-showreel', '', '', '2017-05-24 16:02:14', '2017-05-24 08:02:14', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=40', 1, 'portfolio', '', 0),
(43, 1, '2017-03-14 18:28:17', '2017-03-14 10:28:17', 'Mental Production has produced a computer animated short film, entitled A Weird Day. Written by Mental Production crew. We have worked almost 1 year for this project.\r\n\r\n這是本公司原創的動畫短，片名叫「耐人尋味」，由故事創作到製作投入歷時一年的時間。\r\n<h5><span style="text-decoration: underline;">Story Summary / 故事簡介</span>:</h5>\r\nA word "weird" is defined as something supernatural; unearthly. The weird things were happening on every day, every one, everywhere but you did not noticed. In one weird day, a man was victimized in certain weird experience. His house was destroyed cruelty, why is life so hard?\r\n\r\n俗語說﹕「行船遇著對頭風，人衰行路打倒褪。」怎有人想過一個人只想關上櫃門，竟令他家園盡毀。如果上天要愚弄你，你真的不能躲避。正如一個經典漫畫標題﹕此事真「耐人尋味」……\r\n<h5><span style="text-decoration: underline;">Character Design / 角色設計</span>:</h5>\r\nOur creative crew design a different version of main character and finally decide which should be used.\r\n\r\n我們的創作組為角色創作出多個不同版本，最後決定使用現有造型。\r\n\r\n<img class="alignnone wp-image-108 size-full" src="http://local.mental-production.com/wp-content/uploads/2017/03/DesignConcept.jpg" alt="" width="900" height="487" />\r\n<h5>Storyboard:</h5>\r\n<img class="alignnone size-full wp-image-109" src="http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard01.jpg" alt="" width="900" height="628" />\r\n<img class="alignnone size-full wp-image-110" src="http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard02.jpg" alt="" width="900" height="628" />\r\n<img class="alignnone size-full wp-image-111" src="http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard03.jpg" alt="" width="900" height="628" />\r\n<img class="alignnone size-full wp-image-112" src="http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard04.jpg" alt="" width="900" height="628" />\r\n<h5><span style="text-decoration: underline;">Home Design</span>:</h5>\r\n<img class="alignnone size-full wp-image-113" src="http://local.mental-production.com/wp-content/uploads/2017/03/homedesign01.jpg" alt="" width="450" height="244" /><img class="alignnone size-full wp-image-114" src="http://local.mental-production.com/wp-content/uploads/2017/03/homedesign02.jpg" alt="" width="450" height="244" />\r\n<h5><span style="text-decoration: underline;">Body and facial controller</span>:</h5>\r\nOur animation crew create a custom skeleton and facial rigging, it provide a perfect control for animating.\r\n\r\n我們的動畫組創建了一套完整的關節和表情控制系統，大大加強了製作的方便程度。\r\n\r\n<img class="alignnone size-full wp-image-115" src="http://local.mental-production.com/wp-content/uploads/2017/03/facialcontroller.jpg" alt="" width="450" height="244" /> <img class="alignnone size-full wp-image-116" src="http://local.mental-production.com/wp-content/uploads/2017/03/bodycontroller.jpg" alt="" width="450" height="244" />\r\n<h5><span style="text-decoration: underline;">Fur rendering</span>:</h5>\r\nBasically fur and hair rendering is very time consuming and difficult to control. Our render crew separate the fur to several zone, it can provide the maximum controls of the render quality vs time.\r\n\r\n一般來說毛髮的渲染是CG動畫的惡夢，所以我的渲染組將毛髮生成細分多個區域。這樣就可以仔細控制各部份的形態和取樣，從而増加渲染的可控性和成本效益。\r\n\r\n<img class="alignnone size-full wp-image-117" src="http://local.mental-production.com/wp-content/uploads/2017/03/fursetting.jpg" alt="" width="640" height="346" />\r\n<iframe src="https://player.vimeo.com/video/116058284" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\r\n\r\n<a href="https://vimeo.com/116058284">fur render test</a> from <a href="https://vimeo.com/mentalproduction">Mental Production</a> on <a href="https://vimeo.com">Vimeo</a>.', 'A Weird Day / 耐人尋味', '', 'publish', 'closed', 'closed', '', 'a-weird-day', '', '', '2017-05-23 15:14:34', '2017-05-23 07:14:34', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=43', 31, 'portfolio', '', 0),
(44, 1, '2017-03-14 18:28:29', '2017-03-14 10:28:29', '<h5>冷氣機篇</h5>\r\n<iframe src="https://player.vimeo.com/video/175356959" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\r\n<h5>備用電源篇</h5>\r\n<iframe src="https://player.vimeo.com/video/175356958" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\r\n<h5>雪櫃篇</h5>\r\n<iframe src="https://player.vimeo.com/video/175356869" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\r\n<h5>隔熱膜篇</h5>\r\n<iframe src="https://player.vimeo.com/video/175356867" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\r\n<h5>Wi-Fi篇</h5>\r\n<iframe src="https://player.vimeo.com/video/175356860" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\r\n<h5>抽濕機篇</h5>\r\n<iframe src="https://player.vimeo.com/video/175356864" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>', 'CLP - 2016', '', 'publish', 'closed', 'closed', '', 'clp-2016', '', '', '2017-06-08 14:15:20', '2017-06-08 06:15:20', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=44', 30, 'portfolio', '', 0),
(45, 1, '2017-03-14 18:28:42', '2017-03-14 10:28:42', '', 'Philips Headphone ANC - 2015', '', 'publish', 'closed', 'closed', '', 'philips-headphone-anc-2015', '', '', '2017-05-21 21:57:18', '2017-05-21 13:57:18', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=45', 29, 'portfolio', '', 0),
(46, 1, '2017-03-14 18:29:07', '2017-03-14 10:29:07', '<h5>Kawa vfx breakdown</h5>\r\n<iframe src="https://player.vimeo.com/video/112040264" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\r\n<h5>KaWa unused version</h5>\r\n<iframe src="https://player.vimeo.com/video/112040263" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>', 'The Octagon - 2015', '', 'publish', 'closed', 'closed', '', 'the-octagon-2015', '', '', '2017-06-13 13:18:11', '2017-06-13 05:18:11', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=46', 28, 'portfolio', '', 0),
(47, 1, '2017-03-14 18:29:28', '2017-03-14 10:29:28', '', 'True White TVC - 2014', '', 'publish', 'closed', 'closed', '', 'true-white-tvc-2014', '', '', '2017-05-21 21:57:41', '2017-05-21 13:57:41', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=47', 27, 'portfolio', '', 0),
(48, 1, '2017-03-14 18:30:12', '2017-03-14 10:30:12', '', 'Basic Law - 2015', '', 'publish', 'closed', 'closed', '', 'basic-law-2015', '', '', '2017-05-23 15:11:44', '2017-05-23 07:11:44', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=48', 26, 'portfolio', '', 0),
(49, 1, '2017-03-14 18:30:27', '2017-03-14 10:30:27', '', 'Soyjoy TVC - 2015', '', 'publish', 'closed', 'closed', '', 'soyjoy-tvc-2015', '', '', '2017-05-21 21:57:52', '2017-05-21 13:57:52', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=49', 25, 'portfolio', '', 0),
(50, 1, '2017-03-14 18:30:40', '2017-03-14 10:30:40', '', 'Lamex - Interior Render', '', 'publish', 'closed', 'closed', '', 'lamex-interior-render', '', '', '2017-06-08 14:16:18', '2017-06-08 06:16:18', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=50', 24, 'portfolio', '', 0),
(51, 1, '2017-03-14 18:30:57', '2017-03-14 10:30:57', '', 'Hellokitty movie', '', 'publish', 'closed', 'closed', '', 'hellokitty-movie', '', '', '2017-05-23 13:34:03', '2017-05-23 05:34:03', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=51', 23, 'portfolio', '', 0),
(52, 1, '2017-03-14 18:38:52', '2017-03-14 10:38:52', 'Mental Production is a youthful and dynamic company specializing in 2D/3D animation and post production. The word “Mental” of our company Mental Production displaysthe amount of importance we attach to your ideas. We strive to make your ideas a reality. We manage to produce the most impressive visual effects and make most effective promotion. In every project, we have demonstrated consistency in three attitudes:\r\n<ol>\r\n 	<li>Exercise close supervision of the process of the project</li>\r\n 	<li>Collaborate in the brainstorming process for the sake of more production flexibility</li>\r\n 	<li>Provide advanced production techniques and spectacular artistic advices</li>\r\n</ol>\r\nMental Production 是一間年青及活力的動畫及後期製作公司. Mental Production 的Mental 是代表我們重視每個人的想法. 致力把你心中所想化為可能. 從而得到最大的視覺和宣傳效果. 在過去每一次服務之中. 我們都堅守以下三個態度:\r\n<ol>\r\n 	<li>提供盡責和清晰的進度監察</li>\r\n 	<li>如有需要, 我們能和貴客一起創作, 增加製作彈性</li>\r\n 	<li>提供精良的製作技術和良好的美術觸覺</li>\r\n</ol>\r\nSince 2007, we have developed our expertise within the scope of TV commercials, TV series, exhibitions, and multimedia. We have produced more than 100 different projects, which included:\r\n\r\n自從2007年起. 我們一直活躍於廣告. 電視劇集. 展覽和多媒體的領域之中. 同時製作過超過100個不同的Project。\r\n<h3>Our Service:</h3>\r\n<ul>\r\n 	<li>Pre-production</li>\r\n 	<li>Storyboard design</li>\r\n 	<li>Character design</li>\r\n 	<li>Pre-visualization</li>\r\n 	<li>VFX planning</li>\r\n 	<li>Script writing</li>\r\n</ul>\r\n<h3>Production:</h3>\r\n<ul>\r\n 	<li>2D/3D animation</li>\r\n 	<li>Video shooting</li>\r\n 	<li>Motion graphic</li>\r\n 	<li>Photo-realistic architectural rendering</li>\r\n 	<li>Photo-realistic interior rendering</li>\r\n 	<li>Photo-realistic product rendering</li>\r\n 	<li>Multimedia production</li>\r\n 	<li>Slide show</li>\r\n</ul>\r\n<h3>Post-production:</h3>\r\n<ul>\r\n 	<li>CG compositing</li>\r\n 	<li>Video editing</li>\r\n 	<li>Online editing (AE)</li>\r\n</ul>\r\n<h3>Awards:</h3>\r\n<ul>\r\n 	<li><strong>2005</strong> Asia Digital Art Award - Category B - Moving images - Finalist Prizes</li>\r\n 	<li><strong>2004</strong> The 4th HONG KONG DIGITAL ENTERTAINMENT EXCELLENCE AWARDS - The Best Computer Animation</li>\r\n</ul>', 'About Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-03-14 18:38:52', '2017-03-14 10:38:52', '', 9, 'http://local.mental-production.com/9-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-03-14 18:48:59', '2017-03-14 10:48:59', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-03-14 18:48:59', '2017-03-14 10:48:59', '', 11, 'http://local.mental-production.com/11-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2017-03-14 18:53:12', '2017-03-14 10:53:12', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Company name', 'company_name', 'publish', 'closed', 'closed', '', 'field_58c7cb0f15f18', '', '', '2017-03-14 18:53:33', '2017-03-14 10:53:33', '', 31, 'http://local.mental-production.com/?post_type=acf-field&#038;p=54', 0, 'acf-field', '', 0),
(55, 1, '2017-03-14 18:53:12', '2017-03-14 10:53:12', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_58c7cb7215f19', '', '', '2017-04-18 15:09:20', '2017-04-18 07:09:20', '', 31, 'http://local.mental-production.com/?post_type=acf-field&#038;p=55', 1, 'acf-field', '', 0),
(56, 1, '2017-03-14 18:53:13', '2017-03-14 10:53:13', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Telephone', 'telephone', 'publish', 'closed', 'closed', '', 'field_58c7cb7b15f1a', '', '', '2017-03-14 18:53:33', '2017-03-14 10:53:33', '', 31, 'http://local.mental-production.com/?post_type=acf-field&#038;p=56', 2, 'acf-field', '', 0),
(57, 1, '2017-03-14 18:53:13', '2017-03-14 10:53:13', 'a:10:{s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_58c7cb8415f1b', '', '', '2017-03-14 18:53:33', '2017-03-14 10:53:33', '', 31, 'http://local.mental-production.com/?post_type=acf-field&#038;p=57', 3, 'acf-field', '', 0),
(58, 1, '2017-03-14 18:53:58', '2017-03-14 10:53:58', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-03-14 18:53:58', '2017-03-14 10:53:58', '', 11, 'http://local.mental-production.com/11-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-03-14 19:08:54', '2017-03-14 11:08:54', '', '07_BasicLaw_c', '', 'inherit', 'open', 'closed', '', '07_basiclaw_c', '', '', '2017-03-14 19:09:18', '2017-03-14 11:09:18', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/07_BasicLaw_c.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2017-03-14 19:08:55', '2017-03-14 11:08:55', '', '08_Soyjoy_c', '', 'inherit', 'open', 'closed', '', '08_soyjoy_c', '', '', '2017-03-14 19:10:54', '2017-03-14 11:10:54', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/08_Soyjoy_c.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2017-03-14 19:08:56', '2017-03-14 11:08:56', '', '09_Lamex_c', '', 'inherit', 'open', 'closed', '', '09_lamex_c', '', '', '2017-03-14 19:10:12', '2017-03-14 11:10:12', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/09_Lamex_c.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2017-03-14 19:08:57', '2017-03-14 11:08:57', '', '10_Hellokitty_c', '', 'inherit', 'open', 'closed', '', '10_hellokitty_c', '', '', '2017-03-14 19:09:53', '2017-03-14 11:09:53', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/10_Hellokitty_c.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2017-03-14 19:08:58', '2017-03-14 11:08:58', '', '01_Showreel_c', '', 'inherit', 'open', 'closed', '', '01_showreel_c', '', '', '2017-03-14 19:10:24', '2017-03-14 11:10:24', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/01_Showreel_c.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2017-03-14 19:08:59', '2017-03-14 11:08:59', '', '02_Aweridday_c', '', 'inherit', 'open', 'closed', '', '02_aweridday_c', '', '', '2017-05-22 16:25:36', '2017-05-22 08:25:36', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/02_Aweridday_c.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2017-03-14 19:08:59', '2017-03-14 11:08:59', '', '03_CLP_c', '', 'inherit', 'open', 'closed', '', '03_clp_c', '', '', '2017-03-14 19:09:32', '2017-03-14 11:09:32', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/03_CLP_c.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2017-03-14 19:09:00', '2017-03-14 11:09:00', '', '04_Philips Headphone ANC_c', '', 'inherit', 'open', 'closed', '', '04_philips-headphone-anc_c', '', '', '2017-03-14 19:10:44', '2017-03-14 11:10:44', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/04_Philips-Headphone-ANC_c.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2017-03-14 19:09:01', '2017-03-14 11:09:01', '', '05_The Octagon_c', '', 'inherit', 'open', 'closed', '', '05_the-octagon_c', '', '', '2017-03-14 19:11:03', '2017-03-14 11:11:03', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/05_The-Octagon_c.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2017-03-14 19:27:32', '2017-03-14 11:27:32', '', '06_TrueWhite_c', '', 'inherit', 'open', 'closed', '', '06_truewhite_c', '', '', '2017-03-14 19:27:32', '2017-03-14 11:27:32', '', 47, 'http://local.mental-production.com/wp-content/uploads/2017/03/06_TrueWhite_c.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2017-03-14 19:55:45', '2017-03-14 11:55:45', '', '01_Showreel_res', '', 'inherit', 'open', 'closed', '', '01_showreel_res', '', '', '2017-03-14 19:55:45', '2017-03-14 11:55:45', '', 9, 'http://local.mental-production.com/wp-content/uploads/2017/02/01_Showreel_res.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2017-03-14 21:40:53', '2017-03-14 13:40:53', 'Mental Production is a youthful and dynamic company specializing in 2D/3D animation and post production. The word “Mental” of our company Mental Production displaysthe amount of importance we attach to your ideas. We strive to make your ideas a reality. We manage to produce the most impressive visual effects and make most effective promotion. In every project, we have demonstrated consistency in three attitudes:\r\n<ol>\r\n 	<li>Exercise close supervision of the process of the project</li>\r\n 	<li>Collaborate in the brainstorming process for the sake of more production flexibility</li>\r\n 	<li>Provide advanced production techniques and spectacular artistic advices</li>\r\n</ol>\r\nMental Production 是一間年青及活力的動畫及後期製作公司. Mental Production 的Mental 是代表我們重視每個人的想法. 致力把你心中所想化為可能. 從而得到最大的視覺和宣傳效果. 在過去每一次服務之中. 我們都堅守以下三個態度:\r\n<ol>\r\n 	<li>提供盡責和清晰的進度監察</li>\r\n 	<li>如有需要, 我們能和貴客一起創作, 增加製作彈性</li>\r\n 	<li>提供精良的製作技術和良好的美術觸覺</li>\r\n</ol>\r\nSince 2007, we have developed our expertise within the scope of TV commercials, TV series, exhibitions, and multimedia. We have produced more than 100 different projects, which included:\r\n\r\n自從2007年起. 我們一直活躍於廣告. 電視劇集. 展覽和多媒體的領域之中. 同時製作過超過100個不同的Project。\r\n<h6>Our Service</h6>\r\n<ul>\r\n 	<li>Pre-production</li>\r\n 	<li>Storyboard design</li>\r\n 	<li>Character design</li>\r\n 	<li>Pre-visualization</li>\r\n 	<li>VFX planning</li>\r\n 	<li>Script writing</li>\r\n</ul>\r\n<h6>Production</h6>\r\n<ul>\r\n 	<li>2D/3D animation</li>\r\n 	<li>Video shooting</li>\r\n 	<li>Motion graphic</li>\r\n 	<li>Photo-realistic architectural rendering</li>\r\n 	<li>Photo-realistic interior rendering</li>\r\n 	<li>Photo-realistic product rendering</li>\r\n 	<li>Multimedia production</li>\r\n 	<li>Slide show</li>\r\n</ul>\r\n<h3>Post-production</h3>\r\n<ul>\r\n 	<li>CG compositing</li>\r\n 	<li>Video editing</li>\r\n 	<li>Online editing (AE)</li>\r\n</ul>\r\n<h6>Awards</h6>\r\n<ul>\r\n 	<li><strong>2005</strong> Asia Digital Art Award - Category B - Moving images - Finalist Prizes</li>\r\n 	<li><strong>2004</strong> The 4th HONG KONG DIGITAL ENTERTAINMENT EXCELLENCE AWARDS - The Best Computer Animation</li>\r\n</ul>', 'About Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-03-14 21:40:53', '2017-03-14 13:40:53', '', 9, 'http://local.mental-production.com/9-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-04-18 13:02:15', '2017-04-18 05:02:15', '<div class="px-form-name">\r\n[text* your-name placeholder "Your name"]\r\n</div>\r\n<div class="px-form-email">\r\n[email* your-email placeholder "Your email"]\r\n</div>\r\n<div class="px-form-message">\r\n[textarea your-message 40x6 placeholder "Your message" ]\r\n</div>\r\n<div class="px-form-submit">\r\n[submit "Send"]\r\n</div>\n1\nMental Production "[your-subject]"\n[your-name] <wordpress@local.mental-production.com>\nron.chan@fp-production.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Mental Production (http://local.mental-production.com)\nReply-To: [your-email]\n\n\n\n\nMental Production "[your-subject]"\nMental Production <wordpress@local.mental-production.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Mental Production (http://local.mental-production.com)\nReply-To: ron.chan@fp-production.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact us form', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-04-18 13:31:57', '2017-04-18 05:31:57', '', 0, 'http://local.mental-production.com/?post_type=wpcf7_contact_form&#038;p=80', 0, 'wpcf7_contact_form', '', 0),
(81, 1, '2017-04-18 15:10:13', '2017-04-18 07:10:13', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-04-18 15:10:13', '2017-04-18 07:10:13', '', 11, 'http://local.mental-production.com/11-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-04-18 15:10:44', '2017-04-18 07:10:44', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-04-18 15:10:44', '2017-04-18 07:10:44', '', 11, 'http://local.mental-production.com/11-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2017-04-18 18:18:29', '2017-04-18 10:18:29', '', 'Our Projects', '', 'publish', 'closed', 'closed', '', 'our-projects-2', '', '', '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 0, 'http://local.mental-production.com/?p=83', 1, 'nav_menu_item', '', 0),
(95, 1, '2017-04-18 18:38:06', '2017-04-18 10:38:06', '', 'Character', '', 'publish', 'closed', 'closed', '', 'character', '', '', '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 0, 'http://local.mental-production.com/?p=95', 10, 'nav_menu_item', '', 0),
(96, 1, '2017-04-18 18:41:47', '2017-04-18 10:41:47', '', 'Commerical', '', 'publish', 'closed', 'closed', '', 'commerical', '', '', '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 0, 'http://local.mental-production.com/?p=96', 4, 'nav_menu_item', '', 0),
(97, 1, '2017-04-18 18:41:48', '2017-04-18 10:41:48', '', 'Corporate Video', '', 'publish', 'closed', 'closed', '', 'corporate-video', '', '', '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 0, 'http://local.mental-production.com/?p=97', 9, 'nav_menu_item', '', 0),
(98, 1, '2017-04-18 18:41:48', '2017-04-18 10:41:48', '', 'Interior render', '', 'publish', 'closed', 'closed', '', 'interior-render', '', '', '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 0, 'http://local.mental-production.com/?p=98', 11, 'nav_menu_item', '', 0),
(99, 1, '2017-04-18 18:41:48', '2017-04-18 10:41:48', '', 'Motion Graphic', '', 'publish', 'closed', 'closed', '', 'motion-graphic', '', '', '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 0, 'http://local.mental-production.com/?p=99', 7, 'nav_menu_item', '', 0),
(100, 1, '2017-04-18 18:41:48', '2017-04-18 10:41:48', '', 'Multimedia', '', 'publish', 'closed', 'closed', '', 'multimedia', '', '', '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 0, 'http://local.mental-production.com/?p=100', 6, 'nav_menu_item', '', 0),
(101, 1, '2017-04-18 18:41:48', '2017-04-18 10:41:48', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 0, 'http://local.mental-production.com/?p=101', 5, 'nav_menu_item', '', 0),
(102, 1, '2017-04-18 18:41:48', '2017-04-18 10:41:48', '', 'Showreels', '', 'publish', 'closed', 'closed', '', 'showreels-highlights-2', '', '', '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 0, 'http://local.mental-production.com/?p=102', 3, 'nav_menu_item', '', 0),
(103, 1, '2017-04-18 18:41:48', '2017-04-18 10:41:48', '', 'TV Series', '', 'publish', 'closed', 'closed', '', 'tv-series', '', '', '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 0, 'http://local.mental-production.com/?p=103', 8, 'nav_menu_item', '', 0),
(104, 1, '2017-05-14 22:43:50', '2017-05-14 14:43:50', 'Mental Production has produced a computer animated short film, entitled A Weird Day. Written by Mental Production crew. We have worked almost 1 year for this project.\n\n這是本公司原創的動畫短，片名叫「耐人尋味」，由故事創作到製作投入歷時一年的時間。\n<h5>Story Summary / 故事簡介:</h5>\nA word "weird" is defined as something supernatural; unearthly. The weird things were happening on every day, every one, everywhere but you did not noticed. In one weird day, a man was victimized in certain weird experience. His house was destroyed cruelty, why is life so hard?\n\n俗語說﹕「行船遇著對頭風，人衰行路打倒褪。」怎有人想過一個人只想關上櫃門，竟令他家園盡毀。如果上天要愚弄你，你真的不能躲避。正如一個經典漫畫標題﹕此事真「耐人尋味」……\n<h5>Character Design / 角色設計:</h5>\nOur creative crew design a different version of main character and finally decide which should be used.\n\n我們的創作組為角色創作出多個不同版本，最後決定使用現有造型。\n\n<img class="alignnone wp-image-108 size-full" src="http://local.mental-production.com/wp-content/uploads/2017/03/DesignConcept.jpg" alt="" width="900" height="487" />\n<h5>Storyboard:</h5>\n<img class="alignnone size-full wp-image-109" src="http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard01.jpg" alt="" width="900" height="628" />\n<img class="alignnone size-full wp-image-110" src="http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard02.jpg" alt="" width="900" height="628" />\n<img class="alignnone size-full wp-image-111" src="http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard03.jpg" alt="" width="900" height="628" />\n<img class="alignnone size-full wp-image-112" src="http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard04.jpg" alt="" width="900" height="628" />\n<h5>Home Design:</h5>\n<img class="alignnone size-full wp-image-113" src="http://local.mental-production.com/wp-content/uploads/2017/03/homedesign01.jpg" alt="" width="450" height="244" /><img class="alignnone size-full wp-image-114" src="http://local.mental-production.com/wp-content/uploads/2017/03/homedesign02.jpg" alt="" width="450" height="244" />\n<h5>Body and facial controller:</h5>\nOur animation crew create a custom skeleton and facial rigging, it provide a perfect control for animating.\n\n我們的動畫組創建了一套完整的關節和表情控制系統，大大加強了製作的方便程度。\n\n<img class="alignnone size-full wp-image-115" src="http://local.mental-production.com/wp-content/uploads/2017/03/facialcontroller.jpg" alt="" width="450" height="244" /> <img class="alignnone size-full wp-image-116" src="http://local.mental-production.com/wp-content/uploads/2017/03/bodycontroller.jpg" alt="" width="450" height="244" />\n\n<h5>Fur rendering:</h5>\n\nBasically fur and hair rendering is very time consuming and difficult to control. Our render crew separate the fur to several zone, it can provide the maximum controls of the render quality vs time.\n\n一般來說毛髮的渲染是CG動畫的惡夢，所以我的渲染組將毛髮生成細分多個區域。這樣就可以仔細控制各部份的形態和取樣，從而増加渲染的可控性和成本效益。', 'A Weird Day / 「耐人尋味」', '', 'inherit', 'closed', 'closed', '', '43-autosave-v1', '', '', '2017-05-14 22:43:50', '2017-05-14 14:43:50', '', 43, 'http://local.mental-production.com/43-autosave-v1/', 0, 'revision', '', 0),
(106, 1, '2017-05-14 22:23:09', '2017-05-14 14:23:09', 'Producer - Yatming Cheng\r\nTel: +852 6226 9652\r\nE-mail: <a href="mailto:yatming@mental-production.com">yatming@mental-production.com</a>\r\n\r\nProducer - Timmy Ng\r\nTel: +852 9858 0010\r\nE-mail: <a href="mailto:timmy@mental-production.com">timmy@mental-production.com</a>', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-05-14 22:23:09', '2017-05-14 14:23:09', '', 11, 'http://local.mental-production.com/11-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2017-05-14 22:27:36', '2017-05-14 14:27:36', '<p>Producer - Yatming Cheng</p>\nTel: +852 6226 9652\nE-mail: <a href="mailto:yatming@mental-production.com">yatming@mental-production.com</a>\n\nProducer - Timmy Ng\nTel: +852 9858 0010\nE-mail: <a href="mailto:timmy@mental-production.com">timmy@mental-production.com</a>', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2017-05-14 22:27:36', '2017-05-14 14:27:36', '', 11, 'http://local.mental-production.com/11-autosave-v1/', 0, 'revision', '', 0),
(108, 1, '2017-05-14 22:38:49', '2017-05-14 14:38:49', '', 'DesignConcept', '', 'inherit', 'open', 'closed', '', 'designconcept', '', '', '2017-05-14 22:38:49', '2017-05-14 14:38:49', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/DesignConcept.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2017-05-14 22:40:05', '2017-05-14 14:40:05', '', 'BearStoryboard01', '', 'inherit', 'open', 'closed', '', 'bearstoryboard01', '', '', '2017-05-14 22:40:05', '2017-05-14 14:40:05', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard01.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2017-05-14 22:40:06', '2017-05-14 14:40:06', '', 'BearStoryboard02', '', 'inherit', 'open', 'closed', '', 'bearstoryboard02', '', '', '2017-05-14 22:40:06', '2017-05-14 14:40:06', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard02.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2017-05-14 22:40:07', '2017-05-14 14:40:07', '', 'BearStoryboard03', '', 'inherit', 'open', 'closed', '', 'bearstoryboard03', '', '', '2017-05-14 22:40:07', '2017-05-14 14:40:07', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard03.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2017-05-14 22:40:08', '2017-05-14 14:40:08', '', 'BearStoryboard04', '', 'inherit', 'open', 'closed', '', 'bearstoryboard04', '', '', '2017-05-14 22:40:08', '2017-05-14 14:40:08', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard04.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2017-05-14 22:41:48', '2017-05-14 14:41:48', '', 'homedesign01', '', 'inherit', 'open', 'closed', '', 'homedesign01', '', '', '2017-05-14 22:41:48', '2017-05-14 14:41:48', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/homedesign01.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2017-05-14 22:41:49', '2017-05-14 14:41:49', '', 'homedesign02', '', 'inherit', 'open', 'closed', '', 'homedesign02', '', '', '2017-05-14 22:41:49', '2017-05-14 14:41:49', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/homedesign02.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2017-05-14 22:42:54', '2017-05-14 14:42:54', '', 'facialcontroller', '', 'inherit', 'open', 'closed', '', 'facialcontroller', '', '', '2017-05-14 22:42:54', '2017-05-14 14:42:54', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/facialcontroller.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(116, 1, '2017-05-14 22:42:54', '2017-05-14 14:42:54', '', 'bodycontroller', '', 'inherit', 'open', 'closed', '', 'bodycontroller', '', '', '2017-05-14 22:42:54', '2017-05-14 14:42:54', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/bodycontroller.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2017-05-14 22:44:36', '2017-05-14 14:44:36', '', 'fursetting', '', 'inherit', 'open', 'closed', '', 'fursetting', '', '', '2017-05-14 22:44:36', '2017-05-14 14:44:36', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/fursetting.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2017-05-14 22:51:26', '2017-05-14 14:51:26', '<h5>冷氣機篇</h5>\n<iframe src="https://player.vimeo.com/video/175356959" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\n備用電源篇\n<iframe src="https://player.vimeo.com/video/175356958" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\n雪櫃篇\n<iframe src="https://player.vimeo.com/video/175356869" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\n隔熱膜篇\n<iframe src="https://player.vimeo.com/video/175356867" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\nWi-Fi篇\n<iframe src="https://player.vimeo.com/video/175356860" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\n抽濕機篇\n<iframe src="https://player.vimeo.com/video/175356864" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>', 'CLP - 2016', '', 'inherit', 'closed', 'closed', '', '44-autosave-v1', '', '', '2017-05-14 22:51:26', '2017-05-14 14:51:26', '', 44, 'http://local.mental-production.com/44-autosave-v1/', 0, 'revision', '', 0),
(119, 1, '2017-05-14 22:54:12', '2017-05-14 14:54:12', '<h5>Kawa vfx breakdown</h5>\n<iframe src="https://player.vimeo.com/video/112040264" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n\n<h5>KaWa unused version</h5>\n<iframe src="https://player.vimeo.com/video/112040263" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n', 'The Octagon - 2015', '', 'inherit', 'closed', 'closed', '', '46-autosave-v1', '', '', '2017-05-14 22:54:12', '2017-05-14 14:54:12', '', 46, 'http://local.mental-production.com/46-autosave-v1/', 0, 'revision', '', 0),
(120, 1, '2017-05-21 21:52:07', '2017-05-21 13:52:07', '', '02_Aweridday', '', 'inherit', 'open', 'closed', '', '02_aweridday', '', '', '2017-05-21 21:52:07', '2017-05-21 13:52:07', '', 43, 'http://local.mental-production.com/wp-content/uploads/2017/03/02_Aweridday.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2017-05-21 21:52:31', '2017-05-21 13:52:31', '', '07_BasicLaw', '', 'inherit', 'open', 'closed', '', '07_basiclaw', '', '', '2017-05-21 21:52:31', '2017-05-21 13:52:31', '', 48, 'http://local.mental-production.com/wp-content/uploads/2017/03/07_BasicLaw.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2017-05-21 21:53:02', '2017-05-21 13:53:02', '', '03_CLP', '', 'inherit', 'open', 'closed', '', '03_clp', '', '', '2017-05-21 21:53:02', '2017-05-21 13:53:02', '', 44, 'http://local.mental-production.com/wp-content/uploads/2017/03/03_CLP.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2017-05-21 21:53:27', '2017-05-21 13:53:27', '', '10_Hellokitty', '', 'inherit', 'open', 'closed', '', '10_hellokitty', '', '', '2017-05-21 21:53:27', '2017-05-21 13:53:27', '', 51, 'http://local.mental-production.com/wp-content/uploads/2017/03/10_Hellokitty.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2017-05-21 21:54:08', '2017-05-21 13:54:08', '', 'Atelier_4+_wireframe02', '', 'inherit', 'open', 'closed', '', 'atelier_4_wireframe02', '', '', '2017-05-21 21:54:08', '2017-05-21 13:54:08', '', 50, 'http://local.mental-production.com/wp-content/uploads/2017/03/Atelier_4_wireframe02.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2017-05-21 21:54:25', '2017-05-21 13:54:25', '', '01_Showreel', '', 'inherit', 'open', 'closed', '', '01_showreel', '', '', '2017-05-21 21:54:25', '2017-05-21 13:54:25', '', 40, 'http://local.mental-production.com/wp-content/uploads/2017/03/01_Showreel.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2017-05-21 21:56:58', '2017-05-21 13:56:58', '', 'Philips Headphone ANC - 2015', '', 'inherit', 'closed', 'closed', '', '45-autosave-v1', '', '', '2017-05-21 21:56:58', '2017-05-21 13:56:58', '', 45, 'http://local.mental-production.com/45-autosave-v1/', 0, 'revision', '', 0),
(127, 1, '2017-05-21 21:57:05', '2017-05-21 13:57:05', '', '04_Philips Headphone ANC', '', 'inherit', 'open', 'closed', '', '04_philips-headphone-anc', '', '', '2017-05-21 21:57:05', '2017-05-21 13:57:05', '', 45, 'http://local.mental-production.com/wp-content/uploads/2017/03/04_Philips-Headphone-ANC.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2017-05-21 21:57:21', '2017-05-21 13:57:21', '', '08_Soyjoy', '', 'inherit', 'open', 'closed', '', '08_soyjoy', '', '', '2017-05-21 21:57:21', '2017-05-21 13:57:21', '', 49, 'http://local.mental-production.com/wp-content/uploads/2017/03/08_Soyjoy.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2017-05-21 21:57:28', '2017-05-21 13:57:28', '', '05_The Octagon', '', 'inherit', 'open', 'closed', '', '05_the-octagon', '', '', '2017-05-21 21:57:28', '2017-05-21 13:57:28', '', 46, 'http://local.mental-production.com/wp-content/uploads/2017/03/05_The-Octagon.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2017-05-21 21:57:33', '2017-05-21 13:57:33', '', '06_TrueWhite', '', 'inherit', 'open', 'closed', '', '06_truewhite', '', '', '2017-05-21 21:57:33', '2017-05-21 13:57:33', '', 47, 'http://local.mental-production.com/wp-content/uploads/2017/03/06_TrueWhite.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 2, '2017-05-23 13:16:25', '2017-05-23 05:16:25', 'Bonaqua Mineralized Water TVC with Leo Ku\r\nBanaqua is subjected to multiple filtering, safe and reliable mineralized water.', 'Bonaqua TVC 2012', '', 'publish', 'closed', 'closed', '', 'bonaqua-promotion-tvc-2012', '', '', '2017-05-23 13:17:47', '2017-05-23 05:17:47', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=132', 22, 'portfolio', '', 0),
(134, 2, '2017-05-23 13:13:25', '2017-05-23 05:13:25', '', 'Bonaqua Promotion TVC @ 2012', '', 'inherit', 'open', 'closed', '', 'bonaqua-promotion-tvc-2012-2', '', '', '2017-05-23 13:13:37', '2017-05-23 05:13:37', '', 132, 'http://local.mental-production.com/wp-content/uploads/2017/05/Bonaqua-Promotion-TVC-@-2012-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 2, '2017-05-23 13:24:10', '2017-05-23 05:24:10', 'Bonaqua Mineralized Water TVC with Leo Ku\r\nThe production of the plastic bottle is more energy efficient, the plastic reduce by 34%', 'Bonaqua TVC 2013', '', 'publish', 'closed', 'closed', '', 'bonaqua-tvc-2013', '', '', '2017-05-23 15:11:56', '2017-05-23 07:11:56', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=136', 21, 'portfolio', '', 0),
(137, 2, '2017-05-23 13:23:16', '2017-05-23 05:23:16', '', 'Bonaqua Promotion TVC @ 2013', '', 'inherit', 'open', 'closed', '', 'bonaqua-promotion-tvc-2013', '', '', '2017-05-23 13:23:19', '2017-05-23 05:23:19', '', 136, 'http://local.mental-production.com/wp-content/uploads/2017/05/Bonaqua-Promotion-TVC-@-2013.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 2, '2017-05-23 13:40:40', '2017-05-23 05:40:40', 'WN Power Booster can boost the transmission quality of electrical and electronic signals in automobile. The device can boost horsepower and improve the overall performance of the automobile.', 'WN Power Booster', '', 'publish', 'closed', 'closed', '', 'wn-power-booster-animation', '', '', '2017-05-23 13:41:09', '2017-05-23 05:41:09', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=138', 20, 'portfolio', '', 0),
(139, 2, '2017-05-23 13:39:28', '2017-05-23 05:39:28', '', 'WN Power Booster Animation', '', 'inherit', 'open', 'closed', '', 'wn-power-booster-animation', '', '', '2017-05-23 13:39:30', '2017-05-23 05:39:30', '', 138, 'http://local.mental-production.com/wp-content/uploads/2017/05/WN-Power-Booster-Animation.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 2, '2017-05-23 13:47:59', '2017-05-23 05:47:59', 'Mental Production is a youthful and dynamic company specializing in 2D/3D animation and post production. The word “Mental” of our company Mental Production displaysthe amount of importance we attach to your ideas. We strive to make your ideas a reality. We manage to produce the most impressive visual effects and make most effective promotion. In every project, we have demonstrated consistency in three attitudes:\r\n<ol>\r\n 	<li>Exercise close supervision of the process of the project</li>\r\n 	<li>Collaborate in the brainstorming process for the sake of more production flexibility</li>\r\n 	<li>Provide advanced production techniques and spectacular artistic advices</li>\r\n</ol>\r\nMental Production 是一間年青及活力的動畫及後期製作公司. Mental Production 的Mental 是代表我們重視每個人的想法. 致力把你心中所想化為可能. 從而得到最大的視覺和宣傳效果. 在過去每一次服務之中. 我們都堅守以下三個態度:\r\n<ol>\r\n 	<li>提供盡責和清晰的進度監察</li>\r\n 	<li>如有需要, 我們能和貴客一起創作, 增加製作彈性</li>\r\n 	<li>提供精良的製作技術和良好的美術觸覺</li>\r\n</ol>\r\nSince 2007, we have developed our expertise within the scope of TV commercials, TV series, exhibitions, and multimedia. We have produced more than 100 different projects, which included:\r\n\r\n自從2007年起. 我們一直活躍於廣告. 電視劇集. 展覽和多媒體的領域之中. 同時製作過超過100個不同的Project。\r\n<h6>Our Service</h6>\r\n<ul>\r\n 	<li>Pre-production</li>\r\n 	<li>Storyboard design</li>\r\n 	<li>Character design</li>\r\n 	<li>Pre-visualization</li>\r\n 	<li>VFX planning</li>\r\n 	<li>Script writing</li>\r\n</ul>\r\n<h6>Production</h6>\r\n<ul>\r\n 	<li>2D/3D animation</li>\r\n 	<li>Video shooting</li>\r\n 	<li>Motion graphic</li>\r\n 	<li>Photo-realistic architectural rendering</li>\r\n 	<li>Photo-realistic interior rendering</li>\r\n 	<li>Photo-realistic product rendering</li>\r\n 	<li>Multimedia production</li>\r\n 	<li>Slide show</li>\r\n</ul>\r\n<h6>Post-production</h6>\r\n<ul>\r\n 	<li>CG compositing</li>\r\n 	<li>Video editing</li>\r\n 	<li>Online editing (AE)</li>\r\n</ul>\r\n<h6>Awards</h6>\r\n<ul>\r\n 	<li><strong>2005</strong> Asia Digital Art Award - Category B - Moving images - Finalist Prizes</li>\r\n 	<li><strong>2004</strong> The 4th HONG KONG DIGITAL ENTERTAINMENT EXCELLENCE AWARDS - The Best Computer Animation</li>\r\n</ul>', 'About Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-23 13:47:59', '2017-05-23 05:47:59', '', 9, 'http://local.mental-production.com/9-revision-v1/', 0, 'revision', '', 0),
(141, 2, '2017-05-23 13:48:30', '2017-05-23 05:48:30', '<h6>About Us</h6>\r\nMental Production is a youthful and dynamic company specializing in 2D/3D animation and post production. The word “Mental” of our company Mental Production displaysthe amount of importance we attach to your ideas. We strive to make your ideas a reality. We manage to produce the most impressive visual effects and make most effective promotion. In every project, we have demonstrated consistency in three attitudes:\r\n<ol>\r\n 	<li>Exercise close supervision of the process of the project</li>\r\n 	<li>Collaborate in the brainstorming process for the sake of more production flexibility</li>\r\n 	<li>Provide advanced production techniques and spectacular artistic advices</li>\r\n</ol>\r\nMental Production 是一間年青及活力的動畫及後期製作公司. Mental Production 的Mental 是代表我們重視每個人的想法. 致力把你心中所想化為可能. 從而得到最大的視覺和宣傳效果. 在過去每一次服務之中. 我們都堅守以下三個態度:\r\n<ol>\r\n 	<li>提供盡責和清晰的進度監察</li>\r\n 	<li>如有需要, 我們能和貴客一起創作, 增加製作彈性</li>\r\n 	<li>提供精良的製作技術和良好的美術觸覺</li>\r\n</ol>\r\nSince 2007, we have developed our expertise within the scope of TV commercials, TV series, exhibitions, and multimedia. We have produced more than 100 different projects, which included:\r\n\r\n自從2007年起. 我們一直活躍於廣告. 電視劇集. 展覽和多媒體的領域之中. 同時製作過超過100個不同的Project。\r\n<h6>Our Service</h6>\r\n<ul>\r\n 	<li>Pre-production</li>\r\n 	<li>Storyboard design</li>\r\n 	<li>Character design</li>\r\n 	<li>Pre-visualization</li>\r\n 	<li>VFX planning</li>\r\n 	<li>Script writing</li>\r\n</ul>\r\n<h6>Production</h6>\r\n<ul>\r\n 	<li>2D/3D animation</li>\r\n 	<li>Video shooting</li>\r\n 	<li>Motion graphic</li>\r\n 	<li>Photo-realistic architectural rendering</li>\r\n 	<li>Photo-realistic interior rendering</li>\r\n 	<li>Photo-realistic product rendering</li>\r\n 	<li>Multimedia production</li>\r\n 	<li>Slide show</li>\r\n</ul>\r\n<h6>Post-production</h6>\r\n<ul>\r\n 	<li>CG compositing</li>\r\n 	<li>Video editing</li>\r\n 	<li>Online editing (AE)</li>\r\n</ul>\r\n<h6>Awards</h6>\r\n<ul>\r\n 	<li><strong>2005</strong> Asia Digital Art Award - Category B - Moving images - Finalist Prizes</li>\r\n 	<li><strong>2004</strong> The 4th HONG KONG DIGITAL ENTERTAINMENT EXCELLENCE AWARDS - The Best Computer Animation</li>\r\n</ul>', 'About Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-23 13:48:30', '2017-05-23 05:48:30', '', 9, 'http://local.mental-production.com/9-revision-v1/', 0, 'revision', '', 0),
(142, 2, '2017-05-23 13:49:00', '2017-05-23 05:49:00', '<h6>About Us</h6>\r\nMental Production is a youthful and dynamic company specializing in 2D/3D animation and post production. The word “Mental” of our company Mental Production displaysthe amount of importance we attach to your ideas. We strive to make your ideas a reality. We manage to produce the most impressive visual effects and make most effective promotion. In every project, we have demonstrated consistency in three attitudes:\r\n<ol>\r\n 	<li>Exercise close supervision of the process of the project</li>\r\n 	<li>Collaborate in the brainstorming process for the sake of more production flexibility</li>\r\n 	<li>Provide advanced production techniques and spectacular artistic advices</li>\r\n</ol>\r\nMental Production 是一間年青及活力的動畫及後期製作公司. Mental Production 的Mental 是代表我們重視每個人的想法. 致力把你心中所想化為可能. 從而得到最大的視覺和宣傳效果. 在過去每一次服務之中. 我們都堅守以下三個態度:\r\n<ol>\r\n 	<li>提供盡責和清晰的進度監察</li>\r\n 	<li>如有需要, 我們能和貴客一起創作, 增加製作彈性</li>\r\n 	<li>提供精良的製作技術和良好的美術觸覺</li>\r\n</ol>\r\nSince 2007, we have developed our expertise within the scope of TV commercials, TV series, exhibitions, and multimedia. We have produced more than 100 different projects, which included:\r\n\r\n自從2007年起. 我們一直活躍於廣告. 電視劇集. 展覽和多媒體的領域之中. 同時製作過超過100個不同的Project。\r\n\r\n&nbsp;\r\n<h6>Our Service</h6>\r\n<ul>\r\n 	<li>Pre-production</li>\r\n 	<li>Storyboard design</li>\r\n 	<li>Character design</li>\r\n 	<li>Pre-visualization</li>\r\n 	<li>VFX planning</li>\r\n 	<li>Script writing</li>\r\n</ul>\r\n<h6>Production</h6>\r\n<ul>\r\n 	<li>2D/3D animation</li>\r\n 	<li>Video shooting</li>\r\n 	<li>Motion graphic</li>\r\n 	<li>Photo-realistic architectural rendering</li>\r\n 	<li>Photo-realistic interior rendering</li>\r\n 	<li>Photo-realistic product rendering</li>\r\n 	<li>Multimedia production</li>\r\n 	<li>Slide show</li>\r\n</ul>\r\n<h6>Post-production</h6>\r\n<ul>\r\n 	<li>CG compositing</li>\r\n 	<li>Video editing</li>\r\n 	<li>Online editing (AE)</li>\r\n 	<li></li>\r\n</ul>\r\n<h6>Awards</h6>\r\n<ul>\r\n 	<li><strong>2005</strong> Asia Digital Art Award - Category B - Moving images - Finalist Prizes</li>\r\n 	<li><strong>2004</strong> The 4th HONG KONG DIGITAL ENTERTAINMENT EXCELLENCE AWARDS - The Best Computer Animation</li>\r\n</ul>', 'About Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-23 13:49:00', '2017-05-23 05:49:00', '', 9, 'http://local.mental-production.com/9-revision-v1/', 0, 'revision', '', 0),
(143, 2, '2017-05-23 13:49:16', '2017-05-23 05:49:16', '<h6>About Us</h6>\r\nMental Production is a youthful and dynamic company specializing in 2D/3D animation and post production. The word “Mental” of our company Mental Production displaysthe amount of importance we attach to your ideas. We strive to make your ideas a reality. We manage to produce the most impressive visual effects and make most effective promotion. In every project, we have demonstrated consistency in three attitudes:\r\n<ol>\r\n 	<li>Exercise close supervision of the process of the project</li>\r\n 	<li>Collaborate in the brainstorming process for the sake of more production flexibility</li>\r\n 	<li>Provide advanced production techniques and spectacular artistic advices</li>\r\n</ol>\r\nMental Production 是一間年青及活力的動畫及後期製作公司. Mental Production 的Mental 是代表我們重視每個人的想法. 致力把你心中所想化為可能. 從而得到最大的視覺和宣傳效果. 在過去每一次服務之中. 我們都堅守以下三個態度:\r\n<ol>\r\n 	<li>提供盡責和清晰的進度監察</li>\r\n 	<li>如有需要, 我們能和貴客一起創作, 增加製作彈性</li>\r\n 	<li>提供精良的製作技術和良好的美術觸覺</li>\r\n</ol>\r\nSince 2007, we have developed our expertise within the scope of TV commercials, TV series, exhibitions, and multimedia. We have produced more than 100 different projects, which included:\r\n\r\n自從2007年起. 我們一直活躍於廣告. 電視劇集. 展覽和多媒體的領域之中. 同時製作過超過100個不同的Project。\r\n\r\n&nbsp;\r\n<h6>Our Service</h6>\r\n<ul>\r\n 	<li>Pre-production</li>\r\n 	<li>Storyboard design</li>\r\n 	<li>Character design</li>\r\n 	<li>Pre-visualization</li>\r\n 	<li>VFX planning</li>\r\n 	<li>Script writing</li>\r\n</ul>\r\n<h6>Production</h6>\r\n<ul>\r\n 	<li>2D/3D animation</li>\r\n 	<li>Video shooting</li>\r\n 	<li>Motion graphic</li>\r\n 	<li>Photo-realistic architectural rendering</li>\r\n 	<li>Photo-realistic interior rendering</li>\r\n 	<li>Photo-realistic product rendering</li>\r\n 	<li>Multimedia production</li>\r\n 	<li>Slide show</li>\r\n</ul>\r\n<h6>Post-production</h6>\r\n<ul>\r\n 	<li>CG compositing</li>\r\n 	<li>Video editing</li>\r\n 	<li>Online editing (AE)</li>\r\n</ul>\r\n<h6></h6>\r\n<h6>Awards</h6>\r\n<ul>\r\n 	<li><strong>2005</strong> Asia Digital Art Award - Category B - Moving images - Finalist Prizes</li>\r\n 	<li><strong>2004</strong> The 4th HONG KONG DIGITAL ENTERTAINMENT EXCELLENCE AWARDS - The Best Computer Animation</li>\r\n</ul>', 'About Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-23 13:49:16', '2017-05-23 05:49:16', '', 9, 'http://local.mental-production.com/9-revision-v1/', 0, 'revision', '', 0),
(144, 2, '2017-05-23 13:49:36', '2017-05-23 05:49:36', '<h6>About Us</h6>\r\nMental Production is a youthful and dynamic company specializing in 2D/3D animation and post production. The word “Mental” of our company Mental Production displaysthe amount of importance we attach to your ideas. We strive to make your ideas a reality. We manage to produce the most impressive visual effects and make most effective promotion. In every project, we have demonstrated consistency in three attitudes:\r\n<ol>\r\n 	<li>Exercise close supervision of the process of the project</li>\r\n 	<li>Collaborate in the brainstorming process for the sake of more production flexibility</li>\r\n 	<li>Provide advanced production techniques and spectacular artistic advices</li>\r\n</ol>\r\nMental Production 是一間年青及活力的動畫及後期製作公司. Mental Production 的Mental 是代表我們重視每個人的想法. 致力把你心中所想化為可能. 從而得到最大的視覺和宣傳效果. 在過去每一次服務之中. 我們都堅守以下三個態度:\r\n<ol>\r\n 	<li>提供盡責和清晰的進度監察</li>\r\n 	<li>如有需要, 我們能和貴客一起創作, 增加製作彈性</li>\r\n 	<li>提供精良的製作技術和良好的美術觸覺</li>\r\n</ol>\r\nSince 2007, we have developed our expertise within the scope of TV commercials, TV series, exhibitions, and multimedia. We have produced more than 100 different projects, which included:\r\n\r\n自從2007年起. 我們一直活躍於廣告. 電視劇集. 展覽和多媒體的領域之中. 同時製作過超過100個不同的Project。\r\n\r\n&nbsp;\r\n<h6>Our Service</h6>\r\n<ul>\r\n 	<li>Pre-production</li>\r\n 	<li>Storyboard design</li>\r\n 	<li>Character design</li>\r\n 	<li>Pre-visualization</li>\r\n 	<li>VFX planning</li>\r\n 	<li>Script writing</li>\r\n</ul>\r\n<h6>Production</h6>\r\n<ul>\r\n 	<li>2D/3D animation</li>\r\n 	<li>Video shooting</li>\r\n 	<li>Motion graphic</li>\r\n 	<li>Photo-realistic architectural rendering</li>\r\n 	<li>Photo-realistic interior rendering</li>\r\n 	<li>Photo-realistic product rendering</li>\r\n 	<li>Multimedia production</li>\r\n 	<li>Slide show</li>\r\n</ul>\r\n<h6>Post-production</h6>\r\n<ul>\r\n 	<li>CG compositing</li>\r\n 	<li>Video editing</li>\r\n 	<li>Online editing (AE)</li>\r\n</ul>\r\n&nbsp;\r\n<h6>Awards</h6>\r\n<ul>\r\n 	<li><strong>2005</strong> Asia Digital Art Award - Category B - Moving images - Finalist Prizes</li>\r\n 	<li><strong>2004</strong> The 4th HONG KONG DIGITAL ENTERTAINMENT EXCELLENCE AWARDS - The Best Computer Animation</li>\r\n</ul>', 'About Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-23 13:49:36', '2017-05-23 05:49:36', '', 9, 'http://local.mental-production.com/9-revision-v1/', 0, 'revision', '', 0),
(145, 2, '2017-05-23 13:50:29', '2017-05-23 05:50:29', '<h6>About Us</h6>\r\nMental Production is a youthful and dynamic company specializing in 2D/3D animation and post production. The word “Mental” of our company Mental Production displaysthe amount of importance we attach to your ideas. We strive to make your ideas a reality. We manage to produce the most impressive visual effects and make most effective promotion. In every project, we have demonstrated consistency in three attitudes:\r\n<ol>\r\n 	<li>Exercise close supervision of the process of the project</li>\r\n 	<li>Collaborate in the brainstorming process for the sake of more production flexibility</li>\r\n 	<li>Provide advanced production techniques and spectacular artistic advices</li>\r\n</ol>\r\nMental Production 是一間年青及活力的動畫及後期製作公司. Mental Production 的Mental 是代表我們重視每個人的想法. 致力把你心中所想化為可能. 從而得到最大的視覺和宣傳效果. 在過去每一次服務之中. 我們都堅守以下三個態度:\r\n<ol>\r\n 	<li>提供盡責和清晰的進度監察</li>\r\n 	<li>如有需要, 我們能和貴客一起創作, 增加製作彈性</li>\r\n 	<li>提供精良的製作技術和良好的美術觸覺</li>\r\n</ol>\r\nSince 2007, we have developed our expertise within the scope of TV commercials, TV series, exhibitions, and multimedia. We have produced more than 100 different projects, which included:\r\n\r\n自從2007年起. 我們一直活躍於廣告. 電視劇集. 展覽和多媒體的領域之中. 同時製作過超過100個不同的Project。\r\n\r\n&nbsp;\r\n<h6>Our Service</h6>\r\n<h5>Pre-production</h5>\r\n<ul>\r\n 	<li>Storyboard design</li>\r\n 	<li>Character design</li>\r\n 	<li>Pre-visualization</li>\r\n 	<li>VFX planning</li>\r\n 	<li>Script writing</li>\r\n</ul>\r\n<h5>Production</h5>\r\n<ul>\r\n 	<li>2D/3D animation</li>\r\n 	<li>Video shooting</li>\r\n 	<li>Motion graphic</li>\r\n 	<li>Photo-realistic architectural rendering</li>\r\n 	<li>Photo-realistic interior rendering</li>\r\n 	<li>Photo-realistic product rendering</li>\r\n 	<li>Multimedia production</li>\r\n 	<li>Slide show</li>\r\n</ul>\r\n<h5>Post-production</h5>\r\n<ul>\r\n 	<li>CG compositing</li>\r\n 	<li>Video editing</li>\r\n 	<li>Online editing (AE)</li>\r\n</ul>\r\n&nbsp;\r\n<h6>Awards</h6>\r\n<ul>\r\n 	<li><strong>2005</strong> Asia Digital Art Award - Category B - Moving images - Finalist Prizes</li>\r\n 	<li><strong>2004</strong> The 4th HONG KONG DIGITAL ENTERTAINMENT EXCELLENCE AWARDS - The Best Computer Animation</li>\r\n</ul>', 'About Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-23 13:50:29', '2017-05-23 05:50:29', '', 9, 'http://local.mental-production.com/9-revision-v1/', 0, 'revision', '', 0),
(146, 2, '2017-05-23 13:50:47', '2017-05-23 05:50:47', '<h6>About Us</h6>\r\nMental Production is a youthful and dynamic company specializing in 2D/3D animation and post production. The word “Mental” of our company Mental Production displaysthe amount of importance we attach to your ideas. We strive to make your ideas a reality. We manage to produce the most impressive visual effects and make most effective promotion. In every project, we have demonstrated consistency in three attitudes:\r\n<ol>\r\n 	<li>Exercise close supervision of the process of the project</li>\r\n 	<li>Collaborate in the brainstorming process for the sake of more production flexibility</li>\r\n 	<li>Provide advanced production techniques and spectacular artistic advices</li>\r\n</ol>\r\nMental Production 是一間年青及活力的動畫及後期製作公司. Mental Production 的Mental 是代表我們重視每個人的想法. 致力把你心中所想化為可能. 從而得到最大的視覺和宣傳效果. 在過去每一次服務之中. 我們都堅守以下三個態度:\r\n<ol>\r\n 	<li>提供盡責和清晰的進度監察</li>\r\n 	<li>如有需要, 我們能和貴客一起創作, 增加製作彈性</li>\r\n 	<li>提供精良的製作技術和良好的美術觸覺</li>\r\n</ol>\r\nSince 2007, we have developed our expertise within the scope of TV commercials, TV series, exhibitions, and multimedia. We have produced more than 100 different projects, which included:\r\n\r\n自從2007年起. 我們一直活躍於廣告. 電視劇集. 展覽和多媒體的領域之中. 同時製作過超過100個不同的Project。\r\n\r\n&nbsp;\r\n<h6>Our Service</h6>\r\n<h5><strong>Pre-production</strong></h5>\r\n<ul>\r\n 	<li>Storyboard design</li>\r\n 	<li>Character design</li>\r\n 	<li>Pre-visualization</li>\r\n 	<li>VFX planning</li>\r\n 	<li>Script writing</li>\r\n</ul>\r\n<h5><strong>Production</strong></h5>\r\n<ul>\r\n 	<li>2D/3D animation</li>\r\n 	<li>Video shooting</li>\r\n 	<li>Motion graphic</li>\r\n 	<li>Photo-realistic architectural rendering</li>\r\n 	<li>Photo-realistic interior rendering</li>\r\n 	<li>Photo-realistic product rendering</li>\r\n 	<li>Multimedia production</li>\r\n 	<li>Slide show</li>\r\n</ul>\r\n<h5><strong>Post-production</strong></h5>\r\n<ul>\r\n 	<li>CG compositing</li>\r\n 	<li>Video editing</li>\r\n 	<li>Online editing (AE)</li>\r\n</ul>\r\n&nbsp;\r\n<h6>Awards</h6>\r\n<ul>\r\n 	<li><strong>2005</strong> Asia Digital Art Award - Category B - Moving images - Finalist Prizes</li>\r\n 	<li><strong>2004</strong> The 4th HONG KONG DIGITAL ENTERTAINMENT EXCELLENCE AWARDS - The Best Computer Animation</li>\r\n</ul>', 'About Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-23 13:50:47', '2017-05-23 05:50:47', '', 9, 'http://local.mental-production.com/9-revision-v1/', 0, 'revision', '', 0),
(147, 2, '2017-05-23 13:52:02', '2017-05-23 05:52:02', '&nbsp;\r\n\r\nProducer - Yatming Cheng\r\n\r\nTel: +852 6226 9652\r\n\r\nE-mail: <a href="mailto:yatming@mental-production.com">yatming@mental-production.com</a>\r\n\r\nProducer - Timmy Ng\r\n\r\nTel: +852 9858 0010\r\n\r\nE-mail: <a href="mailto:timmy@mental-production.com">timmy@mental-production.com</a>', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-05-23 13:52:02', '2017-05-23 05:52:02', '', 11, 'http://local.mental-production.com/11-revision-v1/', 0, 'revision', '', 0),
(148, 2, '2017-05-23 13:52:34', '2017-05-23 05:52:34', '&nbsp;\r\n\r\nProducer - Yatming Cheng\r\n\r\nTel: +852 6226 9652\r\n\r\nE-mail: <a href="mailto:yatming@mental-production.com">yatming@mental-production.com</a>\r\n\r\nProducer - Timmy Ng\r\n\r\nTel: +852 9858 0010\r\n\r\nE-mail: <a href="mailto:timmy@mental-production.com">timmy@mental-production.com</a>', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-05-23 13:52:34', '2017-05-23 05:52:34', '', 11, 'http://local.mental-production.com/11-revision-v1/', 0, 'revision', '', 0),
(149, 2, '2017-05-23 13:53:14', '2017-05-23 05:53:14', '&nbsp;\r\n\r\nProducer - Yatming Cheng\r\nTel: +852 6226 9652\r\nE-mail: <a href="mailto:yatming@mental-production.com">yatming@mental-production.com</a>\r\n\r\nProducer - Timmy Ng\r\nTel: +852 9858 0010\r\nE-mail: <a href="mailto:timmy@mental-production.com">timmy@mental-production.com</a>', 'Contact', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-05-23 13:53:14', '2017-05-23 05:53:14', '', 11, 'http://local.mental-production.com/11-revision-v1/', 0, 'revision', '', 0),
(150, 2, '2017-05-23 15:07:31', '2017-05-23 07:07:31', 'M&amp;M''s promotion TVC in Hong Kong\r\n\r\nWe are responsible the production of CG package animation.', 'M&M''s - Power Walk', '', 'publish', 'closed', 'closed', '', 'mms-power-walk', '', '', '2017-05-23 15:07:31', '2017-05-23 07:07:31', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=150', 19, 'portfolio', '', 0),
(151, 2, '2017-05-23 15:06:19', '2017-05-23 07:06:19', '', 'M&M''s - Power Walk 2010', '', 'inherit', 'open', 'closed', '', 'mms-power-walk-2010', '', '', '2017-05-23 15:06:20', '2017-05-23 07:06:20', '', 150, 'http://local.mental-production.com/wp-content/uploads/2017/05/MMs-Power-Walk-2010.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 2, '2017-05-23 15:10:52', '2017-05-23 07:10:52', 'Mental Production has produced a computer animated short film, entitled A Weird Day. Written by Mental Production crew. We have worked almost 1 year for this project.\n\n這是本公司原創的動畫短，片名叫「耐人尋味」，由故事創作到製作投入歷時一年的時間。\n<h5><span style="text-decoration: underline;">Story Summary / 故事簡介</span>:</h5>\nA word "weird" is defined as something supernatural; unearthly. The weird things were happening on every day, every one, everywhere but you did not noticed. In one weird day, a man was victimized in certain weird experience. His house was destroyed cruelty, why is life so hard?\n\n俗語說﹕「行船遇著對頭風，人衰行路打倒褪。」怎有人想過一個人只想關上櫃門，竟令他家園盡毀。如果上天要愚弄你，你真的不能躲避。正如一個經典漫畫標題﹕此事真「耐人尋味」……\n<h5><span style="text-decoration: underline;">Character Design / 角色設計</span>:</h5>\nOur creative crew design a different version of main character and finally decide which should be used.\n\n我們的創作組為角色創作出多個不同版本，最後決定使用現有造型。\n\n<img class="alignnone wp-image-108 size-full" src="http://local.mental-production.com/wp-content/uploads/2017/03/DesignConcept.jpg" alt="" width="900" height="487" />\n<h5>Storyboard:</h5>\n<img class="alignnone size-full wp-image-109" src="http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard01.jpg" alt="" width="900" height="628" />\n<img class="alignnone size-full wp-image-110" src="http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard02.jpg" alt="" width="900" height="628" />\n<img class="alignnone size-full wp-image-111" src="http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard03.jpg" alt="" width="900" height="628" />\n<img class="alignnone size-full wp-image-112" src="http://local.mental-production.com/wp-content/uploads/2017/03/BearStoryboard04.jpg" alt="" width="900" height="628" />\n<h5><span style="text-decoration: underline;">Home Design</span>:</h5>\n<img class="alignnone size-full wp-image-113" src="http://local.mental-production.com/wp-content/uploads/2017/03/homedesign01.jpg" alt="" width="450" height="244" /><img class="alignnone size-full wp-image-114" src="http://local.mental-production.com/wp-content/uploads/2017/03/homedesign02.jpg" alt="" width="450" height="244" />\n<h5><span style="text-decoration: underline;">Body and facial controller</span>:</h5>\nOur animation crew create a custom skeleton and facial rigging, it provide a perfect control for animating.\n\n我們的動畫組創建了一套完整的關節和表情控制系統，大大加強了製作的方便程度。\n\n<img class="alignnone size-full wp-image-115" src="http://local.mental-production.com/wp-content/uploads/2017/03/facialcontroller.jpg" alt="" width="450" height="244" /> <img class="alignnone size-full wp-image-116" src="http://local.mental-production.com/wp-content/uploads/2017/03/bodycontroller.jpg" alt="" width="450" height="244" />\n<h5><span style="text-decoration: underline;">Fur rendering</span>:</h5>\nBasically fur and hair rendering is very time consuming and difficult to control. Our render crew separate the fur to several zone, it can provide the maximum controls of the render quality vs time.\n\n一般來說毛髮的渲染是CG動畫的惡夢，所以我的渲染組將毛髮生成細分多個區域。這樣就可以仔細控制各部份的形態和取樣，從而増加渲染的可控性和成本效益。\n\n<img class="alignnone size-full wp-image-117" src="http://local.mental-production.com/wp-content/uploads/2017/03/fursetting.jpg" alt="" width="640" height="346" />\n<iframe src="https://player.vimeo.com/video/116058284" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\n\n&nbsp;', 'A Weird Day / 「耐人尋味」', '', 'inherit', 'closed', 'closed', '', '43-autosave-v1', '', '', '2017-05-23 15:10:52', '2017-05-23 07:10:52', '', 43, 'http://local.mental-production.com/43-autosave-v1/', 0, 'revision', '', 0),
(153, 2, '2017-05-23 15:19:29', '2017-05-23 07:19:29', 'Lamex Ranger -  Product animation\r\n\r\nMovement and comfort are the most important aspects of superior office chair design. Now with Ranger -- the striking silhouette created to match the natural curves of the body -- blood and oxygen are boosted by the achievement of dynamic sitting.', 'Lamex - Ranger', '', 'publish', 'closed', 'closed', '', 'lamex-ranger', '', '', '2017-06-08 14:16:44', '2017-06-08 06:16:44', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=153', 18, 'portfolio', '', 0),
(154, 2, '2017-05-23 15:19:04', '2017-05-23 07:19:04', '', 'Lamex - Ranger', '', 'inherit', 'open', 'closed', '', 'lamex-ranger', '', '', '2017-05-23 15:19:10', '2017-05-23 07:19:10', '', 153, 'http://local.mental-production.com/wp-content/uploads/2017/05/Lamex-Ranger.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 2, '2017-05-23 15:37:00', '2017-05-23 07:37:00', 'Lamex - Rateo &amp; Recta Production Animation\r\n\r\nThe right solution for evolving spacesMaximize your possibilities with Recta, the modular system that combines versatility, convenience and style. Its open and gracious Italian design enhances personalization in the workplace, whether you are supporting a private executive presence or leveraged cooperation throughout your organization.', 'Lamex - Rateo & Recta', '', 'publish', 'closed', 'closed', '', 'lamex-rateo-recta', '', '', '2017-06-08 14:16:46', '2017-06-08 06:16:46', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=155', 17, 'portfolio', '', 0),
(157, 2, '2017-05-23 15:48:49', '2017-05-23 07:48:49', 'Lamex - Access Product Animation\r\n\r\nSleek in style and impressive in function, Access is advanced ergonomics in action. With a contemporary aesthetic that slides seamlessly into any workspace, its comprehensive comfort choices prevent physical fatigue and inspire your best performance. Prioritizing optimal posture while you work, Access supports all body shapes and sizes through its precise and intuitive engineering. Striking a perfect balance between functional comfort and affordable style, Access is a perfect for all, from junior staff to supervisor.', 'Lamex - Access', '', 'publish', 'closed', 'closed', '', 'lamex-access', '', '', '2017-06-08 14:17:03', '2017-06-08 06:17:03', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=157', 16, 'portfolio', '', 0),
(158, 2, '2017-05-23 15:48:17', '2017-05-23 07:48:17', '', 'Lamex - Access', '', 'inherit', 'open', 'closed', '', 'lamex-access', '', '', '2017-05-23 15:48:20', '2017-05-23 07:48:20', '', 157, 'http://local.mental-production.com/wp-content/uploads/2017/05/Lamex-Access.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 2, '2017-05-23 16:04:48', '2017-05-23 08:04:48', 'Lamex - Optima product animation\r\n\r\nItalian designed, impressively versatile, highly durable and great value - the Optima desk collection ticks many boxes.', 'Lamex - Optima', '', 'publish', 'closed', 'closed', '', 'lamex-optima', '', '', '2017-06-08 14:16:36', '2017-06-08 06:16:36', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=159', 15, 'portfolio', '', 0),
(160, 2, '2017-05-23 16:04:36', '2017-05-23 08:04:36', '', 'Lamex - Optima', '', 'inherit', 'open', 'closed', '', 'lamex-optima', '', '', '2017-05-23 16:04:38', '2017-05-23 08:04:38', '', 159, 'http://local.mental-production.com/wp-content/uploads/2017/05/Lamex-Optima.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 2, '2017-05-23 16:16:28', '2017-05-23 08:16:28', 'Lamex - Arctia Product Animation\r\n\r\nARCTIA can be ganged to accommodate office functions such as training, team meeting and conferences. From individual to large team patterns, ARCTIA is well able to create varieties of configurations.', 'Lamex - Arctia', '', 'publish', 'closed', 'closed', '', 'lamex-arctia', '', '', '2017-06-08 14:17:07', '2017-06-08 06:17:07', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=161', 14, 'portfolio', '', 0),
(164, 2, '2017-05-23 16:23:24', '2017-05-23 08:23:24', '', 'Lamex - Rateo & Recta', '', 'inherit', 'open', 'closed', '', 'lamex-rateo-recta-2', '', '', '2017-05-23 16:23:32', '2017-05-23 08:23:32', '', 155, 'http://local.mental-production.com/wp-content/uploads/2017/05/Lamex-Rateo-Recta-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 2, '2017-05-23 16:25:05', '2017-05-23 08:25:05', '', 'Lamex - Arctia', '', 'inherit', 'open', 'closed', '', 'lamex-arctia-2', '', '', '2017-05-23 16:25:06', '2017-05-23 08:25:06', '', 161, 'http://local.mental-production.com/wp-content/uploads/2017/05/Lamex-Arctia.jpg', 0, 'attachment', 'image/jpeg', 0),
(167, 2, '2017-05-23 16:27:45', '2017-05-23 08:27:45', '', 'Lamex - Render', '', 'inherit', 'open', 'closed', '', 'lamex-render-2', '', '', '2017-05-23 16:27:55', '2017-05-23 08:27:55', '', 50, 'http://local.mental-production.com/wp-content/uploads/2017/03/Lamex-Render-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 2, '2017-05-23 16:35:26', '2017-05-23 08:35:26', 'VTC - Recruit students TVC\r\n\r\n3D element + Compositing', 'VTC - Recruit students TVC', '', 'publish', 'closed', 'closed', '', 'vtc-recruit-students-tvc', '', '', '2017-05-23 16:35:26', '2017-05-23 08:35:26', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=168', 13, 'portfolio', '', 0),
(169, 2, '2017-05-23 16:32:22', '2017-05-23 08:32:22', '', 'VTC-TVC', '', 'inherit', 'open', 'closed', '', 'vtc-tvc', '', '', '2017-05-23 16:32:24', '2017-05-23 08:32:24', '', 168, 'http://local.mental-production.com/wp-content/uploads/2017/05/VTC-TVC.jpg', 0, 'attachment', 'image/jpeg', 0),
(170, 2, '2017-05-23 17:31:57', '2017-05-23 09:31:57', 'Hirudoid forte cream Promotion TVC with Jim Chim.\r\nWe are responsible the production of 3D blood vessels animation.', 'Hirudoid forte cream TVC', '', 'publish', 'closed', 'closed', '', 'hirudoid-forte-cream-tvc', '', '', '2017-05-23 17:32:58', '2017-05-23 09:32:58', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=170', 12, 'portfolio', '', 0),
(171, 2, '2017-05-23 17:31:49', '2017-05-23 09:31:49', '', 'Hirudoid - TVC 2013', '', 'inherit', 'open', 'closed', '', 'hirudoid-tvc-2013', '', '', '2017-05-23 17:31:50', '2017-05-23 09:31:50', '', 170, 'http://local.mental-production.com/wp-content/uploads/2017/05/Hirudoid-TVC-2013.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 2, '2017-05-23 17:36:06', '2017-05-23 09:36:06', 'Hauwei P6 Promotion Video', 'Hauwei P6 Promotion Video', '', 'publish', 'closed', 'closed', '', 'hauwei-p6-promotion-video', '', '', '2017-05-23 17:40:36', '2017-05-23 09:40:36', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=172', 11, 'portfolio', '', 0),
(173, 2, '2017-05-23 17:35:29', '2017-05-23 09:35:29', '', 'Hauwei P6 Promotion Video', '', 'inherit', 'open', 'closed', '', 'hauwei-p6-promotion-video', '', '', '2017-05-23 17:35:30', '2017-05-23 09:35:30', '', 172, 'http://local.mental-production.com/wp-content/uploads/2017/05/Hauwei-P6-Promotion-Video.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 2, '2017-05-24 15:34:19', '2017-05-24 07:34:19', 'Carlsberg - Where''s The Party @2013\r\nCarlsberg Promotion TVC with Edison Chan', 'Carlsberg TVC', '', 'publish', 'closed', 'closed', '', 'carlsberg-promotion-tvc', '', '', '2017-05-24 15:36:04', '2017-05-24 07:36:04', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=174', 10, 'portfolio', '', 0),
(175, 2, '2017-05-24 15:33:31', '2017-05-24 07:33:31', '', 'Carlsberg Promotion TVC', '', 'inherit', 'open', 'closed', '', 'carlsberg-promotion-tvc', '', '', '2017-05-24 15:33:34', '2017-05-24 07:33:34', '', 174, 'http://local.mental-production.com/wp-content/uploads/2017/05/Carlsberg-Promotion-TVC.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 2, '2017-05-24 15:43:17', '2017-05-24 07:43:17', 'Mainly responsible for CG shot production.', 'LANEIGE  - TVC 2013', '', 'publish', 'closed', 'closed', '', 'laneige-tvc-2013', '', '', '2017-05-24 15:43:17', '2017-05-24 07:43:17', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=177', 9, 'portfolio', '', 0),
(178, 2, '2017-05-24 15:43:04', '2017-05-24 07:43:04', '', 'LANEIGE - TVC 2013', '', 'inherit', 'open', 'closed', '', 'laneige-tvc-2013', '', '', '2017-05-24 15:43:06', '2017-05-24 07:43:06', '', 177, 'http://local.mental-production.com/wp-content/uploads/2017/05/LANEIGE-TVC-2013.jpg', 0, 'attachment', 'image/jpeg', 0),
(179, 2, '2017-05-24 15:51:40', '2017-05-24 07:51:40', 'Mainly responsible for CG Human &amp; intestine shot', 'Healthy Me BB - TVC 2013', '', 'publish', 'closed', 'closed', '', 'healthy-me-bb-tvc-2013', '', '', '2017-05-24 15:51:40', '2017-05-24 07:51:40', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=179', 8, 'portfolio', '', 0),
(180, 2, '2017-05-24 15:47:42', '2017-05-24 07:47:42', '', 'Healthy Me BB - TVC 2013', '', 'inherit', 'open', 'closed', '', 'healthy-me-bb-tvc-2013', '', '', '2017-05-24 15:47:44', '2017-05-24 07:47:44', '', 179, 'http://local.mental-production.com/wp-content/uploads/2017/05/Healthy-Me-BB-TVC-2013.jpg', 0, 'attachment', 'image/jpeg', 0),
(181, 2, '2017-05-24 16:00:35', '2017-05-24 08:00:35', 'Mainly responsible for CG shot production', 'Estee Lauder - TVC 2013', '', 'publish', 'closed', 'closed', '', 'estee-lauder-tvc-2013', '', '', '2017-05-24 16:00:35', '2017-05-24 08:00:35', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=181', 7, 'portfolio', '', 0),
(182, 2, '2017-05-24 16:00:28', '2017-05-24 08:00:28', '', 'Estee Lauder - TVC 2013', '', 'inherit', 'open', 'closed', '', 'estee-lauder-tvc-2013', '', '', '2017-05-24 16:00:30', '2017-05-24 08:00:30', '', 181, 'http://local.mental-production.com/wp-content/uploads/2017/05/Estee-Lauder-TVC-2013.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 2, '2017-05-24 16:12:27', '2017-05-24 08:12:27', 'CG Production for HKAEE TVC.', 'Hong Kong Awards for Environmental Excellence  2013', '', 'publish', 'closed', 'closed', '', 'hong-kong-awards-for-environmental-excellence-2013', '', '', '2017-05-24 16:12:27', '2017-05-24 08:12:27', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=183', 6, 'portfolio', '', 0),
(184, 2, '2017-05-24 16:12:16', '2017-05-24 08:12:16', '', 'Hong Kong Awards for Environmental Excellence 2013', '', 'inherit', 'open', 'closed', '', 'hong-kong-awards-for-environmental-excellence-2013', '', '', '2017-05-24 16:12:17', '2017-05-24 08:12:17', '', 183, 'http://local.mental-production.com/wp-content/uploads/2017/05/Hong-Kong-Awards-for-Environmental-Excellence-2013.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 2, '2017-05-24 16:56:53', '2017-05-24 08:56:53', 'A CG animation production for First Foundation.\r\nFFman is the character which represent their company.\r\nIn the animation, FFman has introduce the 4 major services &amp; 3 core values of the their company.', 'FFman Promotion Video', '', 'publish', 'closed', 'closed', '', 'ffman-promotion-video', '', '', '2017-06-08 14:15:40', '2017-06-08 06:15:40', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=185', 5, 'portfolio', '', 0),
(187, 2, '2017-05-24 16:58:39', '2017-05-24 08:58:39', '', 'FFman', '', 'inherit', 'open', 'closed', '', 'ffman', '', '', '2017-05-24 16:58:41', '2017-05-24 08:58:41', '', 185, 'http://local.mental-production.com/wp-content/uploads/2017/05/FFman.jpg', 0, 'attachment', 'image/jpeg', 0),
(189, 1, '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 'All Categories', '', 'publish', 'closed', 'closed', '', 'all-categories', '', '', '2017-05-31 11:29:54', '2017-05-31 03:29:54', '', 0, 'http://local.mental-production.com/?p=189', 2, 'nav_menu_item', '', 0),
(190, 2, '2017-06-08 14:13:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-08 14:13:50', '0000-00-00 00:00:00', '', 0, 'http://local.mental-production.com/?p=190', 0, 'post', '', 0),
(191, 2, '2017-06-08 14:28:44', '2017-06-08 06:28:44', 'X-Bridge for CEO-S\r\nAnimation Production for introduce X-Bridge for CEO-S  collection.This revolutionary technology has met a high level of manufacturing and is produced with excellent quality assurance. The X-Bridge provides consistent resiliency and endurance for everyday wear. Not only does it enable the owner to flatten the curvature of the eyewear in order to unfold them neatly into their custom made slim eyewear case, it is also shaped for easy portability.', 'CEOV Promotion Video', '', 'publish', 'closed', 'closed', '', 'ceov-promotion-video', '', '', '2017-06-08 14:28:44', '2017-06-08 06:28:44', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=191', 4, 'portfolio', '', 0),
(192, 2, '2017-06-08 14:22:38', '2017-06-08 06:22:38', '', 'CEOV', '', 'inherit', 'open', 'closed', '', 'ceov', '', '', '2017-06-08 14:22:44', '2017-06-08 06:22:44', '', 191, 'http://local.mental-production.com/wp-content/uploads/2017/06/CEOV.jpg', 0, 'attachment', 'image/jpeg', 0),
(193, 2, '2017-06-08 14:42:49', '2017-06-08 06:42:49', 'Video production for introduce STEPPER Brand.\r\n\r\nIn 2000 STEPPER - with its equipment and know how - moved to China as a joint venture with ARTS Optical of Hong Kong, one of the largest and foremost manufacturers of eyewear. STEPPER EYEWEAR has grown strongly ever since and has developed into a respected and independent player in the global optical market, currently in 37 countries.', 'Stepper Promotion Video', '', 'publish', 'closed', 'closed', '', 'stepper-promotion-video', '', '', '2017-06-08 14:42:49', '2017-06-08 06:42:49', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=193', 3, 'portfolio', '', 0),
(194, 2, '2017-06-08 14:41:23', '2017-06-08 06:41:23', '', 'Stepper', '', 'inherit', 'open', 'closed', '', 'stepper', '', '', '2017-06-08 14:41:30', '2017-06-08 06:41:30', '', 193, 'http://local.mental-production.com/wp-content/uploads/2017/06/Stepper.jpg', 0, 'attachment', 'image/jpeg', 0),
(195, 2, '2017-06-08 15:11:29', '2017-06-08 07:11:29', 'Video production for OENOBIOL Topslim', 'OENOBIOL Promotion video', '', 'publish', 'closed', 'closed', '', 'oenobiol-promotion-video', '', '', '2017-06-08 15:11:29', '2017-06-08 07:11:29', '', 0, 'http://local.mental-production.com/?post_type=portfolio&#038;p=195', 2, 'portfolio', '', 0),
(197, 2, '2017-06-08 15:11:03', '2017-06-08 07:11:03', '', 'OENOBIOL', '', 'inherit', 'open', 'closed', '', 'oenobiol-2', '', '', '2017-06-08 15:11:21', '2017-06-08 07:11:21', '', 195, 'http://local.mental-production.com/wp-content/uploads/2017/06/OENOBIOL-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(198, 1, '2017-06-13 14:14:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-13 14:14:33', '0000-00-00 00:00:00', '', 0, 'http://local.mental-production.com/?p=198', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, '未分類', 'uncategorized', 0, 1),
(2, 'Primary Navigation', 'primary-navigation', 0, 0),
(3, 'Showreels &amp; highlights', 'showreels', 0, 8),
(4, 'Commercial', 'commercial', 0, 2),
(5, 'Products', 'products', 0, 7),
(6, 'Multimedia', 'multimedia', 0, 6),
(7, 'Motion Graphic', 'motion-graphic', 0, 5),
(8, 'TV Series', 'tv-series', 0, 9),
(9, 'Corporate Video', 'corporate-video', 0, 3),
(10, 'Character', 'character', 0, 1),
(11, 'Interior Render', 'interior-render', 0, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(14, 2, 0),
(40, 3, 0),
(43, 10, 0),
(44, 4, 0),
(44, 10, 0),
(45, 5, 0),
(46, 7, 0),
(46, 11, 0),
(47, 5, 0),
(48, 9, 0),
(49, 5, 0),
(50, 5, 0),
(50, 11, 0),
(51, 6, 0),
(51, 10, 0),
(83, 2, 0),
(95, 2, 0),
(96, 2, 0),
(97, 2, 0),
(98, 2, 0),
(99, 2, 0),
(100, 2, 0),
(101, 2, 0),
(102, 2, 0),
(103, 2, 0),
(132, 4, 0),
(132, 5, 0),
(136, 4, 0),
(136, 5, 0),
(138, 5, 0),
(138, 9, 0),
(150, 4, 0),
(150, 5, 0),
(153, 5, 0),
(153, 9, 0),
(153, 11, 0),
(155, 5, 0),
(155, 9, 0),
(155, 11, 0),
(157, 5, 0),
(157, 9, 0),
(157, 11, 0),
(159, 5, 0),
(159, 9, 0),
(159, 11, 0),
(161, 5, 0),
(161, 9, 0),
(161, 11, 0),
(168, 4, 0),
(170, 4, 0),
(170, 5, 0),
(172, 5, 0),
(172, 9, 0),
(174, 4, 0),
(177, 4, 0),
(177, 5, 0),
(179, 4, 0),
(179, 5, 0),
(181, 4, 0),
(181, 5, 0),
(183, 4, 0),
(185, 9, 0),
(185, 10, 0),
(189, 2, 0),
(191, 5, 0),
(191, 9, 0),
(193, 5, 0),
(193, 9, 0),
(195, 5, 0),
(195, 9, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 13),
(3, 3, 'portfolio-category', '', 0, 1),
(4, 4, 'portfolio-category', '', 0, 11),
(5, 5, 'portfolio-category', '', 0, 21),
(6, 6, 'portfolio-category', '', 0, 1),
(7, 7, 'portfolio-category', '', 0, 1),
(8, 8, 'portfolio-category', '', 0, 0),
(9, 9, 'portfolio-category', '', 0, 12),
(10, 10, 'portfolio-category', '', 0, 4),
(11, 11, 'portfolio-category', '', 0, 7);

-- --------------------------------------------------------

--
-- 資料表結構 `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mp_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:2:{s:64:"6c99ba94b1544328770d1bd335f5bafa6caec865af0b5076ac0aa3bbf872752f";a:4:{s:10:"expiration";i:1497507272;s:2:"ip";s:13:"101.78.245.31";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0";s:5:"login";i:1497334472;}s:64:"96d736020b62719d356f649031b3fe48f2541c0b1cfb533ebcff3c4fd692c7b3";a:4:{s:10:"expiration";i:1497543326;s:2:"ip";s:13:"14.199.248.52";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0";s:5:"login";i:1497370526;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '198'),
(17, 1, 'nav_menu_recently_edited', '2'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1&advImgDetails=show&imgsize=full'),
(21, 1, 'wp_user-settings-time', '1494774023'),
(22, 1, 'closedpostboxes_portfolio', 'a:0:{}'),
(23, 1, 'metaboxhidden_portfolio', 'a:1:{i:0;s:7:"slugdiv";}'),
(24, 1, 'acf_user_settings', 'a:0:{}'),
(25, 2, 'nickname', 'mp_user'),
(26, 2, 'first_name', 'Yat Ming'),
(27, 2, 'last_name', ''),
(28, 2, 'description', ''),
(29, 2, 'rich_editing', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(36, 2, 'wp_user_level', '10'),
(37, 2, 'dismissed_wp_pointers', ''),
(38, 2, 'session_tokens', 'a:1:{s:64:"5b008314d7f0f3773fe82aa2d3045ceec1406d22d7dc62ac1e7953f369fefc90";a:4:{s:10:"expiration";i:1497503836;s:2:"ip";s:14:"101.78.235.109";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1497331036;}}'),
(39, 2, 'acf_user_settings', 'a:0:{}'),
(40, 2, 'wp_user-settings', 'libraryContent=browse'),
(41, 2, 'wp_user-settings-time', '1495516542'),
(42, 2, 'wp_dashboard_quick_press_last_post_id', '190'),
(43, 1, 'edit_portfolio_per_page', '50');

-- --------------------------------------------------------

--
-- 資料表結構 `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mp_admin', '$P$BGOS8aPszxGHw66f8K2TU/b5qIkLPV1', 'mp_admin', 'ron.chan@fp-production.com', '', '2017-02-13 13:31:18', '', 0, 'mp_admin'),
(2, 'mp_user', '$P$BlUds5Ndf4pBpu6ubOecX8aFXThwcL1', 'mp_user', 'yatming@mental-production.com', '', '2017-05-22 08:16:50', '1495441037:$P$B4Df1BXi/Z6GYbZW7jGfsaZphs3LWd/', 0, 'Yat Ming');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- 資料表索引 `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- 資料表索引 `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- 資料表索引 `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- 資料表索引 `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- 資料表索引 `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- 資料表索引 `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- 資料表索引 `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 資料表索引 `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=819;
--
-- 使用資料表 AUTO_INCREMENT `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1008;
--
-- 使用資料表 AUTO_INCREMENT `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=199;
--
-- 使用資料表 AUTO_INCREMENT `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- 使用資料表 AUTO_INCREMENT `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- 使用資料表 AUTO_INCREMENT `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- 使用資料表 AUTO_INCREMENT `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

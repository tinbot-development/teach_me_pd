# WordPress MySQL database migration
#
# Generated: Tuesday 22. September 2015 06:38 UTC
# Hostname: localhost
# Database: `stage_teachmepd`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-09-15 01:39:22', '2015-09-15 01:39:22', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0),
(2, 117, 'WooCommerce', 'woocommerce@teachme.tinbotdevelopment.com', '', '', '2015-09-18 06:50:54', '2015-09-18 06:50:54', 'Awaiting cheque payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 117, 'admin', 'admin@teach-me-pd.dev', '', '', '2015-09-18 07:04:01', '2015-09-18 07:04:01', 'Order status changed by bulk edit: Order status changed from On Hold to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=759 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3, 'siteurl', 'http://teach-me-pd.dev/wp', 'yes'),
(4, 'home', 'http://teach-me-pd.dev/wp', 'yes'),
(5, 'blogname', 'Teach Me PD', 'yes'),
(6, 'blogdescription', 'Professional Development and Training for Teachers and Educational Professionals', 'yes'),
(7, 'users_can_register', '0', 'yes'),
(8, 'admin_email', 'admin@teach-me-pd.dev', 'yes'),
(9, 'start_of_week', '1', 'yes'),
(10, 'use_balanceTags', '0', 'yes'),
(11, 'use_smilies', '1', 'yes'),
(12, 'require_name_email', '1', 'yes'),
(13, 'comments_notify', '1', 'yes'),
(14, 'posts_per_rss', '10', 'yes'),
(15, 'rss_use_excerpt', '0', 'yes'),
(16, 'mailserver_url', 'mail.example.com', 'yes'),
(17, 'mailserver_login', 'login@example.com', 'yes'),
(18, 'mailserver_pass', 'password', 'yes'),
(19, 'mailserver_port', '110', 'yes'),
(20, 'default_category', '1', 'yes'),
(21, 'default_comment_status', 'open', 'yes'),
(22, 'default_ping_status', 'open', 'yes'),
(23, 'default_pingback_flag', '1', 'yes'),
(24, 'posts_per_page', '10', 'yes'),
(25, 'date_format', 'F j, Y', 'yes'),
(26, 'time_format', 'g:i a', 'yes'),
(27, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%year%/%monthnum%/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:13:{i:0;s:30:"gravity-forms/gravityforms.php";i:1;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:43:"duplicate-tec-event/duplicate-tec-event.php";i:3;s:43:"events-calendar-pro/events-calendar-pro.php";i:4;s:19:"members/members.php";i:5;s:63:"the-events-calendar-community-events/tribe-community-events.php";i:6;s:43:"the-events-calendar/the-events-calendar.php";i:7;s:59:"woocommerce-checkout-field-editor/checkout-field-editor.php";i:8;s:71:"woocommerce-poor-guys-swiss-knife/woocommerce-poor-guys-swiss-knife.php";i:9;s:27:"woocommerce/woocommerce.php";i:10;s:25:"wootickets/wootickets.php";i:11;s:25:"wp-members/wp-members.php";i:12;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(36, 'category_base', '', 'yes'),
(37, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(38, 'advanced_edit', '0', 'yes'),
(39, 'comment_max_links', '2', 'yes'),
(40, 'gmt_offset', '0', 'yes'),
(41, 'default_email_category', '1', 'yes'),
(42, 'recently_edited', '', 'no'),
(43, 'template', 'teach_me_pd_theme', 'yes'),
(44, 'stylesheet', 'teach_me_pd_theme', 'yes'),
(45, 'comment_whitelist', '1', 'yes'),
(46, 'blacklist_keys', '', 'no'),
(47, 'comment_registration', '0', 'yes'),
(48, 'html_type', 'text/html', 'yes'),
(49, 'use_trackback', '0', 'yes'),
(50, 'default_role', 'subscriber', 'yes'),
(51, 'db_version', '33055', 'yes'),
(52, 'uploads_use_yearmonth_folders', '1', 'yes'),
(53, 'upload_path', '', 'yes'),
(54, 'blog_public', '1', 'yes'),
(55, 'default_link_category', '2', 'yes'),
(56, 'show_on_front', 'page', 'yes'),
(57, 'tag_base', '', 'yes'),
(58, 'show_avatars', '1', 'yes'),
(59, 'avatar_rating', 'G', 'yes'),
(60, 'upload_url_path', '', 'yes'),
(61, 'thumbnail_size_w', '150', 'yes'),
(62, 'thumbnail_size_h', '150', 'yes'),
(63, 'thumbnail_crop', '1', 'yes'),
(64, 'medium_size_w', '300', 'yes'),
(65, 'medium_size_h', '300', 'yes'),
(66, 'avatar_default', 'mystery', 'yes'),
(67, 'large_size_w', '1024', 'yes'),
(68, 'large_size_h', '1024', 'yes'),
(69, 'image_default_link_type', 'file', 'yes'),
(70, 'image_default_size', '', 'yes'),
(71, 'image_default_align', '', 'yes'),
(72, 'close_comments_for_old_posts', '0', 'yes'),
(73, 'close_comments_days_old', '14', 'yes'),
(74, 'thread_comments', '1', 'yes'),
(75, 'thread_comments_depth', '5', 'yes'),
(76, 'page_comments', '0', 'yes'),
(77, 'comments_per_page', '50', 'yes'),
(78, 'default_comments_page', 'newest', 'yes'),
(79, 'comment_order', 'asc', 'yes'),
(80, 'sticky_posts', 'a:0:{}', 'yes'),
(81, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'widget_text', 'a:0:{}', 'yes'),
(83, 'widget_rss', 'a:0:{}', 'yes'),
(84, 'uninstall_plugins', 'a:1:{s:71:"woocommerce-poor-guys-swiss-knife/woocommerce-poor-guys-swiss-knife.php";s:18:"wcpgsk_uninstaller";}', 'no'),
(85, 'timezone_string', '', 'yes'),
(86, 'page_for_posts', '0', 'yes'),
(87, 'page_on_front', '16', 'yes'),
(88, 'default_post_format', '0', 'yes'),
(89, 'link_manager_enabled', '0', 'yes'),
(90, 'finished_splitting_shared_terms', '1', 'yes'),
(91, 'initial_db_version', '33055', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:167:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:25:"read_private_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:24:"edit_others_tribe_events";b:1;s:25:"edit_private_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:26:"delete_others_tribe_events";b:1;s:27:"delete_private_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:29:"read_private_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:28:"edit_others_tribe_organizers";b:1;s:29:"edit_private_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:30:"delete_others_tribe_organizers";b:1;s:31:"delete_private_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:25:"read_private_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:24:"edit_others_tribe_venues";b:1;s:25:"edit_private_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:26:"delete_others_tribe_venues";b:1;s:27:"delete_private_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:10:"list_roles";b:1;s:12:"create_roles";b:1;s:12:"delete_roles";b:1;s:10:"edit_roles";b:1;s:16:"restrict_content";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:64:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:25:"read_private_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:24:"edit_others_tribe_events";b:1;s:25:"edit_private_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:26:"delete_others_tribe_events";b:1;s:27:"delete_private_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:29:"read_private_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:28:"edit_others_tribe_organizers";b:1;s:29:"edit_private_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:30:"delete_others_tribe_organizers";b:1;s:31:"delete_private_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:25:"read_private_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:24:"edit_others_tribe_venues";b:1;s:25:"edit_private_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:26:"delete_others_tribe_venues";b:1;s:27:"delete_private_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:25:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:17:"edit_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:21:"edit_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:17:"edit_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:11:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:17:"edit_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:21:"edit_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:17:"edit_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:1:{i:0;s:30:"tribe-events-adv-list-widget-2";}s:14:"sidebar-footer";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(101, 'bedrock_autoloader', 'a:2:{s:7:"plugins";a:0:{}s:5:"count";i:0;}', 'yes'),
(102, 'cron', 'a:12:{i:1442481441;a:1:{s:41:"tribe_events_pro_process_recurring_events";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:12:"every_30mins";s:4:"args";a:0:{}s:8:"interval";i:1800;}}}i:1442483103;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1442497411;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1442517180;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1442518239;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1442534400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1442540626;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1442545024;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1442556498;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1442560641;a:1:{s:21:"tribe-recurrence-cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1442561439;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'auth_key', '^ _<|~C>82]}=W*U0lVUv2noJY)U;iZ,Z|DNO85?qkK-JZ(o[>hJ/gN<za,O(Noa', 'yes'),
(107, 'auth_salt', 'KNz8EIV,UFkSinc-yq{hs4*.l!= L<@/B++[98~3_d_t0L_i*<Z#*,)VQgrcwNX<', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(108, 'logged_in_key', ',Ri34Lb#,tV5|DNDU-0~P2QMaL;p:o)v^bp>bJ3`6wV4c2?tZ0wM*V_[wY8{k%iq', 'yes'),
(109, 'logged_in_salt', 'tEYpbHF6unF_9t<n&^V5Srp^cM(2sn{SCs8>(#5a]ySh@.|M`VQJiIA.V+?[T2]<', 'yes'),
(110, 'nonce_key', 'w9$7*;+Y=cZ[^_*slaj2Lo<<ib_7]3|9aBgQM>fp!<`H2ft8O/MFUI.T#>IF06fY', 'yes'),
(111, 'nonce_salt', 'toF~{t.^ILMD#JJ2oDp7db)>FruD+-xND8f$Cr!<YmXL)RP;ZPyhGRZQ[0wuh;/D', 'yes'),
(117, 'can_compress_scripts', '0', 'yes'),
(134, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1442281448;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(135, 'template_root', '/themes', 'yes'),
(136, 'stylesheet_root', '/themes', 'yes'),
(137, 'current_theme', 'Sage Starter Theme', 'yes'),
(138, 'theme_mods_teach_me_pd_theme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:18:"primary_navigation";i:3;s:20:"secondary_navigation";i:2;}}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(141, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(148, 'WPLANG', '', 'yes'),
(152, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'tribe_events_calendar_options', 'a:31:{s:16:"tribeEnableViews";a:5:{i:0;s:4:"list";i:1;s:5:"month";i:2;s:4:"week";i:3;s:3:"day";i:4;s:5:"photo";}s:14:"schema-version";s:6:"3.12.1";s:27:"recurring_events_are_hidden";s:7:"exposed";s:21:"previous_ecp_versions";a:1:{i:0;s:1:"0";}s:18:"latest_ecp_version";s:6:"3.12.1";s:29:"disable_metabox_custom_fields";s:4:"hide";s:18:"pro-schema-version";s:4:"3.12";s:19:"last-update-message";s:6:"3.12.1";s:13:"earliest_date";s:19:"2015-09-18 08:45:00";s:11:"latest_date";s:19:"2015-10-26 15:30:00";s:11:"donate-link";b:0;s:12:"postsPerPage";s:2:"10";s:17:"liveFiltersUpdate";b:1;s:32:"hideSubsequentRecurrencesDefault";b:0;s:31:"userToggleSubsequentRecurrences";b:0;s:25:"recurrenceMaxMonthsBefore";s:2:"24";s:24:"recurrenceMaxMonthsAfter";s:2:"24";s:12:"showComments";b:0;s:20:"showEventsInMainLoop";b:0;s:10:"eventsSlug";s:7:"courses";s:15:"singleEventSlug";s:6:"course";s:14:"multiDayCutoff";s:5:"00:00";s:21:"defaultCurrencySymbol";s:1:"$";s:23:"reverseCurrencyPosition";b:0;s:15:"embedGoogleMaps";b:1;s:23:"geoloc_default_geofence";s:2:"25";s:19:"geoloc_default_unit";s:5:"miles";s:19:"embedGoogleMapsZoom";s:2:"10";s:11:"debugEvents";b:0;s:26:"tribe_events_timezone_mode";s:5:"event";s:32:"tribe_events_timezones_show_zone";b:0;}', 'yes'),
(161, 'tribe_last_save_post', '1442903922', 'yes'),
(163, 'widget_tribe-mini-calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(164, 'widget_tribe-events-adv-list-widget', 'a:2:{i:2;a:14:{s:5:"title";s:16:"Upcoming Courses";s:5:"limit";s:1:"5";s:18:"no_upcoming_events";N;s:5:"venue";N;s:7:"country";s:1:"1";s:7:"address";N;s:4:"city";s:1:"1";s:6:"region";s:1:"1";s:3:"zip";N;s:5:"phone";N;s:4:"cost";N;s:9:"organizer";N;s:7:"operand";s:2:"OR";s:7:"filters";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(165, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(177, 'external_updates-events-calendar-pro', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1442892567;s:14:"checkedVersion";s:4:"3.12";s:6:"update";N;}', 'yes'),
(271, 'tribe_community_events_options', 'a:18:{s:17:"maybeFlushRewrite";b:0;s:25:"allowAnonymousSubmissions";b:0;s:15:"useVisualEditor";b:0;s:13:"defaultStatus";s:7:"pending";s:20:"communityRewriteSlug";s:9:"providers";s:18:"emailAlertsEnabled";b:1;s:15:"emailAlertsList";s:21:"admin@teach-me-pd.dev";s:27:"allowUsersToEditSubmissions";b:0;s:29:"allowUsersToDeleteSubmissions";b:0;s:18:"trashItemsVsDelete";s:1:"1";s:13:"eventsPerPage";s:2:"10";s:19:"eventListDateFormat";s:6:"M j, Y";s:19:"blockRolesFromAdmin";b:0;s:14:"blockRolesList";N;s:18:"blockRolesRedirect";s:0:"";s:23:"defaultCommunityVenueID";s:1:"0";s:18:"recaptchaPublicKey";s:0:"";s:19:"recaptchaPrivateKey";s:0:"";}', 'yes'),
(272, 'WP_Router_route_hash', '7582a5b93f00575a53e6a15aba5d4bf4', 'yes'),
(274, 'acf_version', '5.3.0', 'yes'),
(275, 'Tribe__Events__Community__Schemaschema_version', '3', 'yes'),
(278, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(279, 'gform_enable_background_updates', '1', 'yes'),
(280, 'rg_form_version', '1.9.5', 'yes'),
(297, 'external_updates-events-community', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1442892567;s:14:"checkedVersion";s:4:"3.12";s:6:"update";N;}', 'yes'),
(301, 'tribe_events_cat_children', 'a:0:{}', 'yes'),
(319, 'woocommerce_default_country', 'AU', 'yes'),
(320, 'woocommerce_allowed_countries', 'specific', 'yes'),
(321, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:"AU";}', 'yes'),
(322, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(323, 'woocommerce_demo_store', 'no', 'yes'),
(324, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(325, 'woocommerce_currency', 'AUD', 'yes'),
(326, 'woocommerce_currency_pos', 'left', 'yes'),
(327, 'woocommerce_price_thousand_sep', ',', 'yes'),
(328, 'woocommerce_price_decimal_sep', '.', 'yes'),
(329, 'woocommerce_price_num_decimals', '2', 'yes'),
(330, 'woocommerce_weight_unit', 'kg', 'yes'),
(331, 'woocommerce_dimension_unit', 'cm', 'yes'),
(332, 'woocommerce_enable_review_rating', 'yes', 'no'),
(333, 'woocommerce_review_rating_required', 'yes', 'no'),
(334, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(335, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(336, 'woocommerce_shop_page_id', '109', 'yes'),
(337, 'woocommerce_shop_page_display', '', 'yes'),
(338, 'woocommerce_category_archive_display', '', 'yes'),
(339, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(340, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(341, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(342, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(343, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(344, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(345, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(346, 'woocommerce_manage_stock', 'yes', 'yes'),
(347, 'woocommerce_hold_stock_minutes', '60', 'no'),
(348, 'woocommerce_notify_low_stock', 'yes', 'no'),
(349, 'woocommerce_notify_no_stock', 'yes', 'no'),
(350, 'woocommerce_stock_email_recipient', 'admin@teach-me-pd.dev', 'no'),
(351, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(352, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(353, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(354, 'woocommerce_stock_format', '', 'yes'),
(355, 'woocommerce_file_download_method', 'force', 'no'),
(356, 'woocommerce_downloads_require_login', 'no', 'no'),
(357, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(358, 'woocommerce_calc_taxes', 'no', 'yes'),
(359, 'woocommerce_prices_include_tax', 'no', 'yes'),
(360, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(361, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(362, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(363, 'woocommerce_tax_classes', 'Reduced Rate\nZero Rate', 'yes'),
(364, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(365, 'woocommerce_tax_display_cart', 'excl', 'no'),
(366, 'woocommerce_price_display_suffix', '', 'yes'),
(367, 'woocommerce_tax_total_display', 'itemized', 'no'),
(368, 'woocommerce_enable_coupons', 'no', 'no'),
(369, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(370, 'woocommerce_enable_guest_checkout', 'no', 'no'),
(371, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(372, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(373, 'woocommerce_cart_page_id', '110', 'yes'),
(374, 'woocommerce_checkout_page_id', '111', 'yes'),
(375, 'woocommerce_terms_page_id', '119', 'no'),
(376, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(377, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(378, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(379, 'woocommerce_calc_shipping', 'no', 'yes'),
(380, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(381, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(382, 'woocommerce_shipping_method_format', '', 'no'),
(383, 'woocommerce_ship_to_destination', 'billing', 'no'),
(384, 'woocommerce_ship_to_countries', '', 'yes'),
(385, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(386, 'woocommerce_myaccount_page_id', '6', 'yes'),
(387, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(388, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(389, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(390, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(391, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(392, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(393, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(394, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(395, 'woocommerce_registration_generate_username', 'yes', 'no'),
(396, 'woocommerce_registration_generate_password', 'no', 'no'),
(397, 'woocommerce_email_from_name', 'Teach Me PD', 'no'),
(398, 'woocommerce_email_from_address', 'admin@teach-me-pd.dev', 'no'),
(399, 'woocommerce_email_header_image', '', 'no'),
(400, 'woocommerce_email_footer_text', 'Teach Me PD - Powered by WooCommerce', 'no'),
(401, 'woocommerce_email_base_color', '#557da1', 'no'),
(402, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(403, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(404, 'woocommerce_email_text_color', '#505050', 'no'),
(405, 'woocommerce_api_enabled', 'yes', 'yes'),
(407, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(410, 'woocommerce_db_version', '2.4.6', 'yes'),
(411, 'woocommerce_version', '2.4.6', 'yes'),
(413, 'woocommerce_language_pack_version', 'a:2:{i:0;s:5:"2.4.6";i:1;s:0:"";}', 'yes'),
(417, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(435, 'external_updates-tribe-wootickets', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1442892567;s:14:"checkedVersion";s:4:"3.12";s:6:"update";N;}', 'yes'),
(515, 'category_children', 'a:0:{}', 'yes'),
(585, 'general_options', '', 'yes'),
(586, 'pricing_options', '', 'yes'),
(591, 'woocommerce_cheque_settings', 'a:4:{s:7:"enabled";s:3:"yes";s:5:"title";s:15:"Account Payment";s:11:"description";s:135:"All payments are sent via email to either you, or the person you request. You can enter the details for this person while checking out.";s:12:"instructions";s:0:"";}', 'yes'),
(608, 'account_page_options', '', 'yes'),
(609, 'account_endpoint_options', '', 'yes'),
(610, 'account_registration_options', '', 'yes'),
(619, 'wpmembers_settings', 'a:16:{s:7:"version";s:5:"3.0.4";s:6:"notify";i:0;s:7:"mod_reg";i:0;s:7:"captcha";s:1:"0";s:7:"use_exp";i:0;s:9:"use_trial";i:0;s:8:"warnings";i:0;s:10:"user_pages";a:3:{s:7:"profile";s:36:"http://teach-me-pd.dev/my-account-2/";s:8:"register";s:32:"http://teach-me-pd.dev/register/";s:5:"login";s:29:"http://teach-me-pd.dev/login/";}s:6:"cssurl";s:71:"http://teach-me-pd.dev//app/plugins/wp-members/css/generic-no-float.css";s:5:"style";s:71:"http://teach-me-pd.dev//app/plugins/wp-members/css/generic-no-float.css";s:6:"autoex";a:2:{s:7:"auto_ex";i:0;s:11:"auto_ex_len";s:0:"";}s:6:"attrib";i:0;s:5:"block";a:6:{s:4:"post";s:1:"0";s:4:"page";s:1:"0";s:7:"product";i:0;s:12:"tribe_events";i:0;s:11:"tribe_venue";i:0;s:15:"tribe_organizer";i:0;}s:12:"show_excerpt";a:6:{s:4:"post";i:0;s:4:"page";i:0;s:7:"product";i:0;s:12:"tribe_events";i:0;s:11:"tribe_venue";i:0;s:15:"tribe_organizer";i:0;}s:10:"show_login";a:6:{s:4:"post";s:1:"1";s:4:"page";s:1:"1";s:7:"product";i:0;s:12:"tribe_events";i:0;s:11:"tribe_venue";i:0;s:15:"tribe_organizer";i:0;}s:8:"show_reg";a:6:{s:4:"post";s:1:"1";s:4:"page";s:1:"1";s:7:"product";i:0;s:12:"tribe_events";i:0;s:11:"tribe_venue";i:0;s:15:"tribe_organizer";i:0;}}', 'yes'),
(620, 'wpmembers_fields', 'a:20:{i:0;a:8:{i:0;i:1;i:1;s:10:"First Name";i:2;s:10:"first_name";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"y";i:7;s:0:"";}i:1;a:8:{i:0;i:2;i:1;s:9:"Last Name";i:2;s:9:"last_name";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"y";i:7;s:0:"";}i:2;a:8:{i:0;i:3;i:1;s:7:"Address";i:2;s:17:"billing_address_1";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"n";i:7;s:0:"";}i:3;a:8:{i:0;i:4;i:1;s:4:"City";i:2;s:4:"city";i:3;s:4:"text";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:0:"";}i:4;a:8:{i:0;i:5;i:1;s:5:"State";i:2;s:13:"billing_state";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"n";i:7;s:0:"";}i:5;a:8:{i:0;i:6;i:1;s:3:"Zip";i:2;s:3:"zip";i:3;s:4:"text";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:0:"";}i:6;a:8:{i:0;i:7;i:1;s:7:"Country";i:2;s:7:"country";i:3;s:4:"text";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:0:"";}i:7;a:8:{i:0;i:8;i:1;s:6:"Mobile";i:2;s:13:"billing_phone";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"n";i:7;s:0:"";}i:8;a:8:{i:0;i:9;i:1;s:5:"Email";i:2;s:10:"user_email";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"y";i:7;s:0:"";}i:9;a:8:{i:0;i:10;i:1;s:13:"Confirm Email";i:2;s:13:"confirm_email";i:3;s:4:"text";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:0:"";}i:10;a:8:{i:0;i:11;i:1;s:7:"Website";i:2;s:8:"user_url";i:3;s:4:"text";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"y";i:7;s:0:"";}i:11;a:8:{i:0;i:12;i:1;s:17:"Biographical Info";i:2;s:11:"description";i:3;s:8:"textarea";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"y";i:7;s:0:"";}i:12;a:8:{i:0;i:13;i:1;s:8:"Password";i:2;s:8:"password";i:3;s:8:"password";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:0:"";}i:13;a:8:{i:0;i:14;i:1;s:16:"Confirm Password";i:2;s:16:"confirm_password";i:3;s:8:"password";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:0:"";}i:14;a:9:{i:0;i:15;i:1;s:3:"TOS";i:2;s:3:"tos";i:3;s:8:"checkbox";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:5:"agree";i:8;s:1:"n";}i:15;a:8:{i:0;i:16;i:1;s:26:"School / attending school:";i:2;s:6:"school";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"n";i:7;s:0:"";}i:16;a:8:{i:0;i:17;i:1;s:19:"Dietary Requirement";i:2;s:20:"dietarty_requirement";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"n";i:7;s:0:"";}i:17;a:8:{i:0;i:18;i:1;s:9:"Job Title";i:2;s:9:"Job_Title";i:3;s:6:"select";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"n";i:7;a:7:{i:0;s:23:"<---- Select One ---->|";i:1;s:21:"Principal |principal ";i:2;s:42:"Assistant Principal | assistant_principal ";i:3;s:64:"Business Manager ­ Office Admin |business_manager_office_admin ";i:4;s:50:"Teacher ­Supply Teacher | teacher_supply_teacher ";i:5;s:19:"Student 	|student 	";i:6;s:37:"Interrogation Aid	| interrogation_aid";}}i:18;a:8:{i:0;i:19;i:1;s:9:"TO number";i:2;s:9:"TO_number";i:3;s:4:"text";i:4;s:1:"y";i:5;s:0:"";i:6;s:1:"n";i:7;s:0:"";}i:19;a:8:{i:0;i:20;i:1;s:20:"Mobility Requirement";i:2;s:16:"billing_mobility";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"n";i:7;s:0:"";}}', 'yes'),
(621, 'wpmembers_tos', 'Put your TOS (Terms of Service) text here.  You can use HTML markup.', 'yes'),
(622, 'wpmembers_dialogs', 'a:9:{i:0;s:119:"This content is restricted to site members.  If you are an existing user, please log in.  New users may register below.";i:1;s:50:"Sorry, that username is taken, please try another.";i:2;s:74:"Sorry, that email address already has an account.<br />Please try another.";i:3;s:124:"Congratulations! Your registration was successful.<br /><br />You may now log in using the password that was emailed to you.";i:4;s:29:"Your information was updated!";i:5;s:53:"Passwords did not match.<br /><br />Please try again.";i:6;s:30:"Password successfully changed!";i:7;s:65:"Either the username or email address do not exist in our records.";i:8;s:135:"Password successfully reset!<br /><br />An email containing a new password has been sent to the email address on file for your account.";}', 'yes'),
(623, 'wpmembers_email_newreg', 'a:2:{s:4:"subj";s:37:"Your registration info for [blogname]";s:4:"body";s:268:"Thank you for registering for [blogname]\r\n\r\nYour registration information is below.\r\nYou may wish to retain a copy for your records.\r\n\r\nusername: [username]\r\npassword: [password]\r\n\r\nYou may login here:\r\n[reglink]\r\n\r\nYou may change your password here:\r\n[members-area]\r\n";}', 'no'),
(624, 'wpmembers_email_newmod', 'a:2:{s:4:"subj";s:40:"Thank you for registering for [blogname]";s:4:"body";s:173:"Thank you for registering for [blogname]. \r\nYour registration has been received and is pending approval.\r\nYou will receive login instructions upon approval of your account\r\n";}', 'no'),
(625, 'wpmembers_email_appmod', 'a:2:{s:4:"subj";s:50:"Your registration for [blogname] has been approved";s:4:"body";s:299:"Your registration for [blogname] has been approved.\r\n\r\nYour registration information is below.\r\nYou may wish to retain a copy for your records.\r\n\r\nusername: [username]\r\npassword: [password]\r\n\r\nYou may login and change your password here:\r\n[members-area]\r\n\r\nYou originally registered at:\r\n[reglink]\r\n";}', 'no'),
(626, 'wpmembers_email_repass', 'a:2:{s:4:"subj";s:34:"Your password reset for [blogname]";s:4:"body";s:157:"Your password for [blogname] has been reset\r\n\r\nYour new password is included below. You may wish to retain a copy for your records.\r\n\r\npassword: [password]\r\n";}', 'no'),
(627, 'wpmembers_email_notify', 'a:2:{s:4:"subj";s:36:"New user registration for [blogname]";s:4:"body";s:194:"The following user registered for [blogname]:\r\n\r\nusername: [username]\r\nemail: [email]\r\n\r\n[fields]\r\nThis user registered here:\r\n[reglink]\r\n\r\nuser IP: [user-ip]\r\n\r\nactivate user: [activate-user]\r\n";}', 'no'),
(628, 'wpmembers_email_footer', '----------------------------------\r\nThis is an automated message from [blogname]\r\nPlease do not reply to this address', 'no'),
(629, 'wpmembers_style', 'http://teach-me-pd.dev//app/plugins/wp-members/css/generic-no-float.css', 'yes'),
(636, 'wpmembers_utfields', 'a:10:{s:10:"first_name";s:10:"First Name";s:9:"last_name";s:9:"Last Name";s:17:"billing_address_1";s:7:"Address";s:13:"billing_state";s:5:"State";s:13:"billing_phone";s:6:"Mobile";s:6:"school";s:26:"School / attending school:";s:20:"dietarty_requirement";s:19:"Dietary Requirement";s:9:"Job_Title";s:9:"Job Title";s:9:"TO_number";s:9:"TO number";s:16:"billing_mobility";s:20:"Mobility Requirement";}', 'yes'),
(651, '_wc_session_c2ca561430b31de5fa2811e2638b8de2', 'a:22:{s:4:"cart";s:306:"a:1:{s:32:"a97da629b098b75c294dffdc3e463904";a:9:{s:10:"product_id";i:107;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:275;s:8:"line_tax";i:0;s:13:"line_subtotal";i:275;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:275;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:1;s:5:"total";d:275;s:8:"subtotal";i:275;s:15:"subtotal_ex_tax";i:275;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:6:"cheque";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";}', 'no'),
(652, '_wc_session_expires_c2ca561430b31de5fa2811e2638b8de2', '1442734823', 'no'),
(671, '_wc_session_18c91a19f9fc03bc6610ef8582c8c152', 'a:22:{s:4:"cart";s:306:"a:1:{s:32:"76dc611d6ebaafc66cc0879c71b5db5c";a:9:{s:10:"product_id";i:128;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:275;s:8:"line_tax";i:0;s:13:"line_subtotal";i:275;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:275;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:1;s:5:"total";d:275;s:8:"subtotal";i:275;s:15:"subtotal_ex_tax";i:275;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:6:"cheque";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";}', 'no'),
(672, '_wc_session_expires_18c91a19f9fc03bc6610ef8582c8c152', '1442990930', 'no'),
(677, '_wc_session_613f1eb142f6bb78e756d313183ffe17', 'a:22:{s:4:"cart";s:306:"a:1:{s:32:"76dc611d6ebaafc66cc0879c71b5db5c";a:9:{s:10:"product_id";i:128;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:275;s:8:"line_tax";i:0;s:13:"line_subtotal";i:275;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:275;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:1;s:5:"total";d:275;s:8:"subtotal";i:275;s:15:"subtotal_ex_tax";i:275;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:6:"cheque";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";}', 'no'),
(678, '_wc_session_expires_613f1eb142f6bb78e756d313183ffe17', '1443056754', 'no'),
(723, 'wc_fields_billing', 'a:19:{s:18:"billing_first_name";a:11:{s:5:"label";s:10:"First Name";s:8:"required";b:1;s:5:"class";a:1:{i:20;s:14:"form-row-first";}s:4:"type";s:4:"text";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:1:"1";s:7:"enabled";b:1;s:8:"validate";a:1:{i:0;s:8:"required";}s:6:"custom";b:0;}s:17:"billing_last_name";a:11:{s:5:"label";s:9:"Last Name";s:8:"required";b:1;s:5:"class";a:1:{i:20;s:13:"form-row-last";}s:5:"clear";b:0;s:4:"type";s:4:"text";s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:1:"2";s:7:"enabled";b:1;s:8:"validate";a:1:{i:0;s:8:"required";}s:6:"custom";b:0;}s:15:"billing_company";a:11:{s:5:"label";s:12:"Company Name";s:5:"class";a:1:{i:20;s:13:"form-row-wide";}s:4:"type";s:4:"text";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:1:"3";s:7:"enabled";b:0;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:0;}s:13:"billing_email";a:11:{s:5:"label";s:13:"Email Address";s:8:"required";b:1;s:4:"type";s:4:"text";s:5:"class";a:1:{i:20;s:14:"form-row-first";}s:8:"validate";a:2:{i:0;s:8:"required";i:1;s:5:"email";}s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:1:"4";s:7:"enabled";b:1;s:6:"custom";b:0;}s:13:"billing_phone";a:11:{s:5:"label";s:6:"Mobile";s:8:"required";b:1;s:4:"type";s:4:"text";s:5:"class";a:1:{i:20;s:13:"form-row-last";}s:5:"clear";b:1;s:8:"validate";a:1:{i:0;s:8:"required";}s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:1:"5";s:7:"enabled";b:1;s:6:"custom";b:0;}s:15:"billing_country";a:11:{s:4:"type";s:7:"country";s:5:"label";s:7:"Country";s:8:"required";b:1;s:5:"class";a:3:{i:1;s:13:"address-field";i:2;s:23:"update_totals_on_change";i:22;s:13:"form-row-wide";}s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:1:"6";s:7:"enabled";b:1;s:8:"validate";a:1:{i:0;s:8:"required";}s:6:"custom";b:0;}s:17:"billing_address_1";a:10:{s:5:"label";s:7:"Address";s:11:"placeholder";s:14:"Street address";s:8:"required";b:1;s:5:"class";a:2:{i:1;s:13:"address-field";i:21;s:13:"form-row-wide";}s:4:"type";s:4:"text";s:5:"clear";b:0;s:7:"options";a:0:{}s:5:"order";s:1:"7";s:7:"enabled";b:1;s:6:"custom";b:0;}s:17:"billing_address_2";a:10:{s:11:"placeholder";s:38:"Apartment, suite, unit etc. (optional)";s:5:"class";a:2:{i:1;s:13:"address-field";i:21;s:13:"form-row-wide";}s:8:"required";b:0;s:4:"type";s:4:"text";s:5:"label";s:0:"";s:5:"clear";b:0;s:7:"options";a:0:{}s:5:"order";s:1:"8";s:7:"enabled";b:0;s:6:"custom";b:0;}s:12:"billing_city";a:10:{s:5:"label";s:0:"";s:11:"placeholder";s:0:"";s:8:"required";b:1;s:5:"class";a:2:{i:1;s:13:"address-field";i:21;s:13:"form-row-wide";}s:4:"type";s:4:"text";s:5:"clear";b:0;s:7:"options";a:0:{}s:5:"order";s:1:"9";s:7:"enabled";b:1;s:6:"custom";b:0;}s:13:"billing_state";a:11:{s:4:"type";s:5:"state";s:5:"label";s:0:"";s:8:"required";b:1;s:5:"class";a:2:{i:1;s:13:"address-field";i:21;s:14:"form-row-first";}s:8:"validate";a:1:{i:0;s:5:"state";}s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"10";s:7:"enabled";b:1;s:6:"custom";b:0;}s:16:"billing_postcode";a:11:{s:5:"label";s:0:"";s:11:"placeholder";s:0:"";s:8:"required";b:1;s:5:"class";a:2:{i:1;s:13:"address-field";i:21;s:13:"form-row-last";}s:5:"clear";b:1;s:8:"validate";a:1:{i:0;s:8:"postcode";}s:4:"type";s:4:"text";s:7:"options";a:0:{}s:5:"order";s:2:"11";s:7:"enabled";b:1;s:6:"custom";b:0;}s:6:"school";a:12:{s:4:"type";s:4:"text";s:5:"label";s:14:"Confirm School";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"12";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:17;s:13:"form-row-wide";}}s:20:"dietarty_requirement";a:12:{s:4:"type";s:4:"text";s:5:"label";s:28:"Confirm Dietary Requirements";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"13";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:16;s:13:"form-row-wide";}}s:16:"billing_mobility";a:12:{s:4:"type";s:4:"text";s:5:"label";s:20:"Mobility Requirement";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"14";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:6;s:13:"form-row-wide";}}s:9:"job_title";a:12:{s:4:"type";s:6:"select";s:5:"label";s:9:"Job Title";s:5:"clear";b:0;s:7:"options";a:6:{s:9:"Principal";s:9:"Principal";s:19:"Assistant Principal";s:19:"Assistant Principal";s:32:"Business Manager ­ Office Admin";s:32:"Business Manager ­ Office Admin";s:24:"Teacher ­Supply Teacher";s:24:"Teacher ­Supply Teacher";s:7:"Student";s:7:"Student";s:17:"Interrogation Aid";s:17:"Interrogation Aid";}s:11:"placeholder";s:0:"";s:5:"order";s:2:"15";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:15;s:13:"form-row-wide";}}s:9:"to_number";a:12:{s:4:"type";s:4:"text";s:5:"label";s:9:"TO Number";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"16";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:14;s:13:"form-row-wide";}}s:14:"invoice_school";a:12:{s:4:"type";s:5:"radio";s:5:"label";s:7:"Invoice";s:5:"clear";b:0;s:7:"options";a:2:{s:10:"Invoice Me";s:10:"Invoice Me";s:17:"Invoice My School";s:17:"Invoice My School";}s:11:"placeholder";s:0:"";s:5:"order";s:2:"17";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:3;s:13:"form-row-wide";}}s:12:"manager_name";a:12:{s:4:"type";s:4:"text";s:5:"label";s:21:"Business Manager Name";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"18";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:2;s:13:"form-row-wide";}}s:13:"manager_email";a:12:{s:4:"type";s:4:"text";s:5:"label";s:22:"Business Manager Email";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"19";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:2;s:13:"form-row-wide";}}}', 'yes'),
(724, 'wcpgsk-version', '2.2.4', 'yes'),
(725, 'wcpgsk_settings', 'a:6:{s:7:"filters";a:19:{s:18:"loop_shop_per_page";s:2:"10";s:17:"loop_shop_columns";s:1:"4";s:38:"woocommerce_product_thumbnails_columns";s:1:"3";s:42:"woocommerce_create_account_default_checked";s:1:"0";s:32:"woocommerce_countries_tax_or_vat";s:3:"Tax";s:36:"woocommerce_countries_inc_tax_or_vat";s:11:"(incl. tax)";s:35:"woocommerce_countries_ex_tax_or_vat";s:9:"(ex. tax)";s:41:"woocommerce_product_description_tab_title";s:11:"Description";s:39:"woocommerce_product_description_heading";s:19:"Product Description";s:52:"woocommerce_product_additional_information_tab_title";s:22:"Additional Information";s:50:"woocommerce_product_additional_information_heading";s:22:"Additional Information";s:29:"woocommerce_order_button_text";s:11:"Place order";s:33:"woocommerce_pay_order_button_text";s:13:"Pay for order";s:46:"woocommerce_checkout_must_be_logged_in_message";s:34:"You must be logged in to checkout.";s:34:"woocommerce_checkout_login_message";s:19:"Returning customer?";s:35:"woocommerce_checkout_coupon_message";s:14:"Have a coupon?";s:40:"woocommerce_checkout_coupon_link_message";s:29:"Click here to enter your code";s:40:"woocommerce_thankyou_order_received_text";s:40:"Thank you. Your order has been received.";s:31:"woocommerce_placeholder_img_src";s:0:"";}s:7:"process";a:14:{s:8:"fastcart";s:1:"0";s:12:"fastcheckout";s:1:"0";s:15:"paymentgateways";s:1:"0";s:11:"onsalelabel";s:5:"Sale!";s:14:"backorderlabel";s:0:"";s:15:"fastcheckoutbtn";s:0:"";s:11:"readmorebtn";s:0:"";s:15:"viewproductsbtn";s:0:"";s:16:"selectoptionsbtn";s:0:"";s:13:"buyproductbtn";s:0:"";s:13:"outofstockbtn";s:0:"";s:16:"empty_price_html";s:0:"";s:14:"emptycartlabel";s:11:"Empty cart?";s:16:"confirmemptycart";s:15:"Yes, empty cart";}s:5:"email";a:2:{s:11:"wc_cc_email";s:0:"";s:12:"wc_bcc_email";s:0:"";}s:4:"cart";a:23:{s:12:"addemptycart";s:1:"0";s:12:"minitemscart";i:0;s:12:"maxitemscart";i:0;s:24:"variationscountasproduct";s:1:"0";s:10:"maxqtycart";i:0;s:10:"minqtycart";i:0;s:17:"minmaxstepproduct";s:1:"0";s:21:"variationproductnoqty";s:1:"0";s:20:"variableproductnoqty";s:1:"0";s:20:"externalproductnoqty";s:1:"0";s:18:"simpleproductnoqty";s:1:"0";s:16:"minqty_variation";i:0;s:16:"maxqty_variation";i:0;s:17:"stepqty_variation";i:0;s:15:"minqty_variable";i:0;s:15:"maxqty_variable";i:0;s:16:"stepqty_variable";i:0;s:15:"minqty_external";i:0;s:15:"maxqty_external";i:0;s:16:"stepqty_external";i:0;s:13:"minqty_simple";i:0;s:13:"maxqty_simple";i:0;s:14:"stepqty_simple";i:0;}s:12:"checkoutform";a:13:{s:7:"mindate";i:0;s:7:"maxdate";s:3:"450";s:13:"caltimepicker";s:1:"0";s:11:"caltimeampm";s:1:"0";s:8:"cssclass";s:0:"";s:16:"morebillingtitle";s:0:"";s:17:"moreshippingtitle";s:0:"";s:21:"billingemailvalidator";s:1:"0";s:17:"default_address_1";s:1:"0";s:17:"default_address_2";s:1:"0";s:13:"default_state";s:1:"0";s:16:"default_postcode";s:1:"0";s:12:"default_city";s:1:"0";}s:9:"woofields";a:208:{s:24:"order_billing_first_name";s:1:"1";s:25:"remove_billing_first_name";s:1:"0";s:27:"required_billing_first_name";s:1:"1";s:28:"hideorder_billing_first_name";s:1:"0";s:31:"customeronly_billing_first_name";s:1:"1";s:24:"label_billing_first_name";s:10:"First Name";s:30:"placeholder_billing_first_name";s:0:"";s:24:"class_billing_first_name";s:14:"form-row-first";s:23:"order_billing_last_name";s:1:"2";s:24:"remove_billing_last_name";s:1:"0";s:26:"required_billing_last_name";s:1:"1";s:27:"hideorder_billing_last_name";s:1:"0";s:30:"customeronly_billing_last_name";s:1:"1";s:23:"label_billing_last_name";s:9:"Last Name";s:29:"placeholder_billing_last_name";s:0:"";s:23:"class_billing_last_name";s:13:"form-row-last";s:19:"order_billing_email";s:1:"3";s:20:"remove_billing_email";s:1:"0";s:22:"required_billing_email";s:1:"1";s:23:"hideorder_billing_email";s:1:"0";s:26:"customeronly_billing_email";s:1:"0";s:19:"label_billing_email";s:13:"Email Address";s:25:"placeholder_billing_email";s:0:"";s:19:"class_billing_email";s:14:"form-row-first";s:19:"order_billing_phone";s:1:"4";s:20:"remove_billing_phone";s:1:"0";s:22:"required_billing_phone";s:1:"1";s:23:"hideorder_billing_phone";s:1:"0";s:26:"customeronly_billing_phone";s:1:"0";s:19:"label_billing_phone";s:6:"Mobile";s:25:"placeholder_billing_phone";s:0:"";s:19:"class_billing_phone";s:13:"form-row-last";s:21:"order_billing_country";s:1:"5";s:22:"remove_billing_country";s:1:"0";s:24:"required_billing_country";s:1:"1";s:25:"hideorder_billing_country";s:1:"0";s:28:"customeronly_billing_country";s:1:"0";s:21:"label_billing_country";s:7:"Country";s:27:"placeholder_billing_country";s:0:"";s:21:"class_billing_country";s:13:"form-row-wide";s:23:"order_billing_address_1";s:1:"6";s:24:"remove_billing_address_1";s:1:"0";s:26:"required_billing_address_1";s:1:"1";s:27:"hideorder_billing_address_1";s:1:"0";s:30:"customeronly_billing_address_1";s:1:"0";s:23:"label_billing_address_1";s:7:"Address";s:29:"placeholder_billing_address_1";s:14:"Street address";s:23:"class_billing_address_1";s:13:"form-row-wide";s:18:"order_billing_city";s:1:"7";s:19:"remove_billing_city";s:1:"0";s:21:"required_billing_city";s:1:"1";s:22:"hideorder_billing_city";s:1:"0";s:25:"customeronly_billing_city";s:1:"0";s:18:"label_billing_city";s:6:"Suburb";s:24:"placeholder_billing_city";s:6:"Suburb";s:18:"class_billing_city";s:13:"form-row-wide";s:19:"order_billing_state";s:1:"8";s:20:"remove_billing_state";s:1:"0";s:22:"required_billing_state";s:1:"1";s:23:"hideorder_billing_state";s:1:"0";s:26:"customeronly_billing_state";s:1:"0";s:19:"label_billing_state";s:5:"State";s:25:"placeholder_billing_state";s:0:"";s:19:"class_billing_state";s:14:"form-row-first";s:22:"order_billing_postcode";s:1:"9";s:23:"remove_billing_postcode";s:1:"0";s:25:"required_billing_postcode";s:1:"1";s:26:"hideorder_billing_postcode";s:1:"0";s:29:"customeronly_billing_postcode";s:1:"0";s:22:"label_billing_postcode";s:8:"Postcode";s:28:"placeholder_billing_postcode";s:8:"Postcode";s:22:"class_billing_postcode";s:13:"form-row-last";s:12:"order_school";s:2:"10";s:13:"remove_school";s:1:"0";s:15:"required_school";s:1:"1";s:16:"hideorder_school";s:1:"0";s:19:"customeronly_school";s:1:"0";s:12:"label_school";s:14:"Confirm School";s:18:"placeholder_school";s:0:"";s:12:"class_school";s:13:"form-row-wide";s:26:"order_dietarty_requirement";s:2:"11";s:27:"remove_dietarty_requirement";s:1:"0";s:29:"required_dietarty_requirement";s:1:"1";s:30:"hideorder_dietarty_requirement";s:1:"0";s:33:"customeronly_dietarty_requirement";s:1:"0";s:26:"label_dietarty_requirement";s:28:"Confirm Dietary Requirements";s:32:"placeholder_dietarty_requirement";s:0:"";s:26:"class_dietarty_requirement";s:13:"form-row-wide";s:22:"order_billing_mobility";s:2:"12";s:23:"remove_billing_mobility";s:1:"0";s:25:"required_billing_mobility";s:1:"1";s:26:"hideorder_billing_mobility";s:1:"0";s:29:"customeronly_billing_mobility";s:1:"0";s:22:"label_billing_mobility";s:20:"Mobility Requirement";s:28:"placeholder_billing_mobility";s:0:"";s:22:"class_billing_mobility";s:13:"form-row-wide";s:15:"order_job_title";s:2:"13";s:16:"remove_job_title";s:1:"0";s:18:"required_job_title";s:1:"1";s:19:"hideorder_job_title";s:1:"0";s:22:"customeronly_job_title";s:1:"0";s:15:"label_job_title";s:9:"Job Title";s:21:"placeholder_job_title";s:0:"";s:15:"class_job_title";s:13:"form-row-wide";s:15:"order_to_number";s:2:"14";s:16:"remove_to_number";s:1:"0";s:18:"required_to_number";s:1:"0";s:19:"hideorder_to_number";s:1:"0";s:22:"customeronly_to_number";s:1:"0";s:15:"label_to_number";s:9:"TO Number";s:21:"placeholder_to_number";s:0:"";s:15:"class_to_number";s:13:"form-row-wide";s:20:"order_invoice_school";s:2:"15";s:21:"remove_invoice_school";s:1:"0";s:23:"required_invoice_school";s:1:"1";s:24:"hideorder_invoice_school";s:1:"0";s:27:"customeronly_invoice_school";s:1:"0";s:20:"label_invoice_school";s:7:"Invoice";s:26:"placeholder_invoice_school";s:0:"";s:20:"class_invoice_school";s:13:"form-row-wide";s:18:"order_manager_name";s:2:"16";s:19:"remove_manager_name";s:1:"0";s:21:"required_manager_name";s:1:"0";s:22:"hideorder_manager_name";s:1:"0";s:25:"customeronly_manager_name";s:1:"1";s:18:"label_manager_name";s:21:"Business Manager Name";s:24:"placeholder_manager_name";s:0:"";s:18:"class_manager_name";s:13:"form-row-wide";s:19:"order_manager_email";s:2:"17";s:20:"remove_manager_email";s:1:"0";s:22:"required_manager_email";s:1:"0";s:23:"hideorder_manager_email";s:1:"0";s:26:"customeronly_manager_email";s:1:"1";s:19:"label_manager_email";s:22:"Business Manager Email";s:25:"placeholder_manager_email";s:0:"";s:19:"class_manager_email";s:13:"form-row-wide";s:25:"order_shipping_first_name";s:1:"1";s:26:"remove_shipping_first_name";s:1:"0";s:28:"required_shipping_first_name";s:1:"1";s:29:"hideorder_shipping_first_name";s:1:"0";s:32:"customeronly_shipping_first_name";s:1:"0";s:25:"label_shipping_first_name";s:10:"First Name";s:31:"placeholder_shipping_first_name";s:0:"";s:25:"class_shipping_first_name";s:14:"form-row-first";s:24:"order_shipping_last_name";s:1:"2";s:25:"remove_shipping_last_name";s:1:"0";s:27:"required_shipping_last_name";s:1:"1";s:28:"hideorder_shipping_last_name";s:1:"0";s:31:"customeronly_shipping_last_name";s:1:"0";s:24:"label_shipping_last_name";s:9:"Last Name";s:30:"placeholder_shipping_last_name";s:0:"";s:24:"class_shipping_last_name";s:13:"form-row-last";s:22:"order_shipping_company";s:1:"3";s:23:"remove_shipping_company";s:1:"0";s:25:"required_shipping_company";s:1:"0";s:26:"hideorder_shipping_company";s:1:"0";s:29:"customeronly_shipping_company";s:1:"0";s:22:"label_shipping_company";s:12:"Company Name";s:28:"placeholder_shipping_company";s:0:"";s:22:"class_shipping_company";s:13:"form-row-wide";s:22:"order_shipping_country";s:1:"4";s:23:"remove_shipping_country";s:1:"0";s:25:"required_shipping_country";s:1:"1";s:26:"hideorder_shipping_country";s:1:"0";s:29:"customeronly_shipping_country";s:1:"0";s:22:"label_shipping_country";s:7:"Country";s:28:"placeholder_shipping_country";s:0:"";s:22:"class_shipping_country";s:13:"form-row-wide";s:24:"order_shipping_address_1";s:1:"5";s:25:"remove_shipping_address_1";s:1:"0";s:27:"required_shipping_address_1";s:1:"1";s:28:"hideorder_shipping_address_1";s:1:"0";s:31:"customeronly_shipping_address_1";s:1:"0";s:24:"label_shipping_address_1";s:7:"Address";s:30:"placeholder_shipping_address_1";s:14:"Street address";s:24:"class_shipping_address_1";s:13:"form-row-wide";s:24:"order_shipping_address_2";s:1:"6";s:25:"remove_shipping_address_2";s:1:"0";s:27:"required_shipping_address_2";s:1:"0";s:28:"hideorder_shipping_address_2";s:1:"0";s:31:"customeronly_shipping_address_2";s:1:"0";s:24:"label_shipping_address_2";s:0:"";s:30:"placeholder_shipping_address_2";s:38:"Apartment, suite, unit etc. (optional)";s:24:"class_shipping_address_2";s:13:"form-row-wide";s:19:"order_shipping_city";s:1:"7";s:20:"remove_shipping_city";s:1:"0";s:22:"required_shipping_city";s:1:"1";s:23:"hideorder_shipping_city";s:1:"0";s:26:"customeronly_shipping_city";s:1:"0";s:19:"label_shipping_city";s:6:"Suburb";s:25:"placeholder_shipping_city";s:6:"Suburb";s:19:"class_shipping_city";s:13:"form-row-wide";s:20:"order_shipping_state";s:1:"8";s:21:"remove_shipping_state";s:1:"0";s:23:"required_shipping_state";s:1:"1";s:24:"hideorder_shipping_state";s:1:"0";s:27:"customeronly_shipping_state";s:1:"0";s:20:"label_shipping_state";s:5:"State";s:26:"placeholder_shipping_state";s:0:"";s:20:"class_shipping_state";s:14:"form-row-first";s:23:"order_shipping_postcode";s:1:"9";s:24:"remove_shipping_postcode";s:1:"0";s:26:"required_shipping_postcode";s:1:"1";s:27:"hideorder_shipping_postcode";s:1:"0";s:30:"customeronly_shipping_postcode";s:1:"0";s:23:"label_shipping_postcode";s:8:"Postcode";s:29:"placeholder_shipping_postcode";s:8:"Postcode";s:23:"class_shipping_postcode";s:13:"form-row-last";}}', 'yes'),
(732, 'checkout_process_options', '', 'yes'),
(733, 'checkout_page_options', '', 'yes'),
(734, 'checkout_endpoint_options', '', 'yes'),
(735, 'payment_gateways_options', '', 'yes'),
(736, 'woocommerce_default_gateway', '', 'yes'),
(737, 'woocommerce_gateway_order', 'a:4:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:6:"paypal";i:3;}', 'yes'),
(740, 'wc_fields_additional', 'a:1:{s:14:"order_comments";a:9:{s:4:"type";s:8:"textarea";s:5:"class";a:2:{i:0;s:5:"notes";i:1;s:14:"form-row-first";}s:5:"label";s:11:"Order Notes";s:11:"placeholder";s:56:"Notes about your order, e.g. special notes for delivery.";s:5:"clear";b:0;s:7:"options";a:0:{}s:5:"order";s:1:"1";s:7:"enabled";b:0;s:6:"custom";b:0;}}', 'yes'),
(749, '_wc_session_35ac19d5a4d088cc0034d556cc7cf9d1', 'a:22:{s:4:"cart";s:306:"a:1:{s:32:"2b44928ae11fb9384c4cf38708677c48";a:9:{s:10:"product_id";i:115;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:300;s:8:"line_tax";i:0;s:13:"line_subtotal";i:300;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:300;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:1;s:5:"total";d:300;s:8:"subtotal";i:300;s:15:"subtotal_ex_tax";i:300;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:0:"";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";}', 'no'),
(750, '_wc_session_expires_35ac19d5a4d088cc0034d556cc7cf9d1', '1443075484', 'no'),
(753, '_wc_session_1', 'a:22:{s:4:"cart";s:306:"a:1:{s:32:"76dc611d6ebaafc66cc0879c71b5db5c";a:9:{s:10:"product_id";i:128;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:3;s:10:"line_total";d:825;s:8:"line_tax";i:0;s:13:"line_subtotal";i:825;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:825;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:3;s:5:"total";d:825;s:8:"subtotal";i:825;s:15:"subtotal_ex_tax";i:825;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:0:"";s:8:"customer";s:449:"a:14:{s:8:"postcode";s:4:"3149";s:4:"city";s:14:"mount waverley";s:9:"address_1";s:15:"address billing";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:4:"3149";s:13:"shipping_city";s:14:"mount waverley";s:18:"shipping_address_1";s:15:"address billing";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";}', 'no'),
(754, '_wc_session_expires_1', '1443076000', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(755, 'rewrite_rules', 'a:311:{s:36:"^courses/providers/edit/venue/(\\d+)$";s:65:"index.php?tribe_event_id=$matches[1]&WP_Route=ce-edit-venue-route";s:40:"^courses/providers/edit/organizer/(\\d+)$";s:69:"index.php?tribe_event_id=$matches[1]&WP_Route=ce-edit-organizer-route";s:38:"^courses/providers/edit/event/(\\d+/?)$";s:69:"index.php?tribe_community_event_id=$matches[1]&WP_Route=ce-edit-route";s:30:"^courses/providers/edit/(\\d+)$";s:62:"index.php?tribe_id=$matches[1]&WP_Route=ce-edit-redirect-route";s:23:"^courses/providers/add$";s:31:"index.php?WP_Route=ce-add-route";s:20:"courses/providers/?$";s:43:"index.php?WP_Route=ce-redirect-to-add-route";s:32:"^courses/providers/delete/(\\d+)$";s:61:"index.php?tribe_event_id=$matches[1]&WP_Route=ce-delete-route";s:40:"^courses/providers/list(/page/(\\d+))?/?$";s:49:"index.php?page=$matches[2]&WP_Route=ce-list-route";s:17:"^wp_router/(.*?)$";s:63:"index.php?sample_argument=$matches[1]&WP_Route=wp-router-sample";s:11:"courses/map";s:49:"index.php?post_type=tribe_events&eventDisplay=map";s:46:"(.*)courses/category/(?:[^/]+/)*([^/]+)/map/?$";s:78:"index.php?tribe_events_cat=$matches[2]&post_type=tribe_events&eventDisplay=map";s:30:"(.*)courses/tag/([^/]+)/map/?$";s:65:"index.php?tag=$matches[2]&post_type=tribe_events&eventDisplay=map";s:41:"(?:course)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$";s:56:"index.php?tribe_events=$matches[1]&eventDate=$matches[2]";s:29:"(?:course)/([^/]+)/(?:all)/?$";s:74:"index.php?tribe_events=$matches[1]&post_type=tribe_events&eventDisplay=all";s:46:"(?:course)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/ical/?$";s:63:"index.php?tribe_events=$matches[1]&eventDate=$matches[2]&ical=1";s:26:"(?:course)/([^/]+)/ical/?$";s:56:"index.php?ical=1&name=$matches[1]&post_type=tribe_events";s:29:"(?:courses)/(?:page)/(\\d+)/?$";s:68:"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]";s:39:"(?:courses)/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?post_type=tribe_events&eventDisplay=list&feed=$matches[1]";s:24:"(?:courses)/(?:month)/?$";s:51:"index.php?post_type=tribe_events&eventDisplay=month";s:38:"(?:courses)/(?:list)/(?:page)/(\\d+)/?$";s:68:"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]";s:23:"(?:courses)/(?:list)/?$";s:50:"index.php?post_type=tribe_events&eventDisplay=list";s:24:"(?:courses)/(?:today)/?$";s:49:"index.php?post_type=tribe_events&eventDisplay=day";s:28:"(?:courses)/(\\d{4}-\\d{2})/?$";s:73:"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]";s:34:"(?:courses)/(\\d{4}-\\d{2}-\\d{2})/?$";s:71:"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]";s:14:"(?:courses)/?$";s:53:"index.php?post_type=tribe_events&eventDisplay=default";s:19:"(?:courses)/ical/?$";s:39:"index.php?post_type=tribe_events&ical=1";s:39:"(?:courses)/(\\d{4}-\\d{2}-\\d{2})/ical/?$";s:78:"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]";s:61:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:page)/(\\d+)/?$";s:97:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]";s:56:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:month)/?$";s:80:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month";s:70:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:page)/(\\d+)/?$";s:97:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]";s:55:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/?$";s:79:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list";s:56:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:today)/?$";s:78:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day";s:74:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$";s:100:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:60:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/?$";s:102:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]";s:66:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$";s:100:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:51:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/feed/?$";s:89:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&feed=rss2";s:51:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/ical/?$";s:68:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&ical=1";s:76:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:78:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&feed=$matches[2]";s:46:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/?$";s:80:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month";s:45:"(?:courses)/(?:tag)/([^/]+)/(?:page)/(\\d+)/?$";s:84:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]";s:40:"(?:courses)/(?:tag)/([^/]+)/(?:month)/?$";s:67:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month";s:54:"(?:courses)/(?:tag)/([^/]+)/(?:list)/(?:page)/(\\d+)/?$";s:84:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]";s:39:"(?:courses)/(?:tag)/([^/]+)/(?:list)/?$";s:66:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list";s:40:"(?:courses)/(?:tag)/([^/]+)/(?:today)/?$";s:65:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day";s:58:"(?:courses)/(?:tag)/([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$";s:87:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:44:"(?:courses)/(?:tag)/([^/]+)/(\\d{4}-\\d{2})/?$";s:89:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]";s:50:"(?:courses)/(?:tag)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$";s:87:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:35:"(?:courses)/(?:tag)/([^/]+)/feed/?$";s:76:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2";s:35:"(?:courses)/(?:tag)/([^/]+)/ical/?$";s:55:"index.php?post_type=tribe_events&tag=$matches[1]&ical=1";s:60:"(?:courses)/(?:tag)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:65:"index.php?post_type=tribe_events&tag=$matches[1]&feed=$matches[2]";s:30:"(?:courses)/(?:tag)/([^/]+)/?$";s:67:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month";s:23:"(?:courses)/(?:week)/?$";s:50:"index.php?post_type=tribe_events&eventDisplay=week";s:31:"(?:courses)/(?:week)/(\\d{2})/?$";s:72:"index.php?post_type=tribe_events&eventDisplay=week&eventDate=$matches[1]";s:43:"(?:courses)/(?:week)/(\\d{4}-\\d{2}-\\d{2})/?$";s:72:"index.php?post_type=tribe_events&eventDisplay=week&eventDate=$matches[1]";s:55:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:week)/?$";s:79:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=week";s:75:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:week)/(\\d{4}-\\d{2}-\\d{2})/?$";s:101:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=week&eventDate=$matches[2]";s:39:"(?:courses)/(?:tag)/([^/]+)/(?:week)/?$";s:66:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=week";s:59:"(?:courses)/(?:tag)/([^/]+)/(?:week)/(\\d{4}-\\d{2}-\\d{2})/?$";s:88:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=week&eventDate=$matches[2]";s:24:"(?:courses)/(?:photo)/?$";s:51:"index.php?post_type=tribe_events&eventDisplay=photo";s:44:"(?:courses)/(?:photo)/(\\d{4}-\\d{2}-\\d{2})/?$";s:73:"index.php?post_type=tribe_events&eventDisplay=photo&eventDate=$matches[1]";s:56:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:photo)/?$";s:80:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=photo";s:40:"(?:courses)/(?:tag)/([^/]+)/(?:photo)/?$";s:67:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=photo";s:12:"WP_Router/?$";s:34:"index.php?post_type=wp_router_page";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:9:"course/?$";s:32:"index.php?post_type=tribe_events";s:39:"course/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=tribe_events&feed=$matches[1]";s:34:"course/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=tribe_events&feed=$matches[1]";s:26:"course/page/([0-9]{1,})/?$";s:50:"index.php?post_type=tribe_events&paged=$matches[1]";s:37:"WP_Router/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"WP_Router/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"WP_Router/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"WP_Router/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"WP_Router/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"WP_Router/([^/]+)/trackback/?$";s:41:"index.php?wp_router_page=$matches[1]&tb=1";s:38:"WP_Router/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?wp_router_page=$matches[1]&paged=$matches[2]";s:45:"WP_Router/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?wp_router_page=$matches[1]&cpage=$matches[2]";s:35:"WP_Router/([^/]+)/wc-api(/(.*))?/?$";s:55:"index.php?wp_router_page=$matches[1]&wc-api=$matches[3]";s:41:"WP_Router/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"WP_Router/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"WP_Router/([^/]+)(/[0-9]+)?/?$";s:53:"index.php?wp_router_page=$matches[1]&page=$matches[2]";s:26:"WP_Router/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"WP_Router/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"WP_Router/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"WP_Router/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"WP_Router/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:28:"product/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"product_variation/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"shop_order_refund/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"course/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"course/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"course/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"course/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"course/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"course/([^/]+)/trackback/?$";s:39:"index.php?tribe_events=$matches[1]&tb=1";s:47:"course/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?tribe_events=$matches[1]&feed=$matches[2]";s:42:"course/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?tribe_events=$matches[1]&feed=$matches[2]";s:35:"course/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?tribe_events=$matches[1]&paged=$matches[2]";s:42:"course/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?tribe_events=$matches[1]&cpage=$matches[2]";s:32:"course/([^/]+)/wc-api(/(.*))?/?$";s:53:"index.php?tribe_events=$matches[1]&wc-api=$matches[3]";s:38:"course/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:49:"course/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:27:"course/([^/]+)(/[0-9]+)?/?$";s:51:"index.php?tribe_events=$matches[1]&page=$matches[2]";s:23:"course/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"course/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"course/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"course/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"course/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"venue/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"venue/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"venue/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"venue/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"venue/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"venue/([^/]+)/trackback/?$";s:38:"index.php?tribe_venue=$matches[1]&tb=1";s:34:"venue/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?tribe_venue=$matches[1]&paged=$matches[2]";s:41:"venue/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?tribe_venue=$matches[1]&cpage=$matches[2]";s:31:"venue/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?tribe_venue=$matches[1]&wc-api=$matches[3]";s:37:"venue/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:48:"venue/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:26:"venue/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?tribe_venue=$matches[1]&page=$matches[2]";s:22:"venue/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"venue/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"venue/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"venue/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"venue/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"organizer/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"organizer/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"organizer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"organizer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"organizer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"organizer/([^/]+)/trackback/?$";s:42:"index.php?tribe_organizer=$matches[1]&tb=1";s:38:"organizer/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?tribe_organizer=$matches[1]&paged=$matches[2]";s:45:"organizer/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?tribe_organizer=$matches[1]&cpage=$matches[2]";s:35:"organizer/([^/]+)/wc-api(/(.*))?/?$";s:56:"index.php?tribe_organizer=$matches[1]&wc-api=$matches[3]";s:41:"organizer/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"organizer/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"organizer/([^/]+)(/[0-9]+)?/?$";s:54:"index.php?tribe_organizer=$matches[1]&page=$matches[2]";s:26:"organizer/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"organizer/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"organizer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"organizer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"organizer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"courses/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]";s:50:"courses/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]";s:43:"courses/category/(.+?)/page/?([0-9]{1,})/?$";s:56:"index.php?tribe_events_cat=$matches[1]&paged=$matches[2]";s:25:"courses/category/(.+?)/?$";s:38:"index.php?tribe_events_cat=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=16&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:47:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"([0-9]{4})/([0-9]{1,2})/([^/]+)/trackback/?$";s:69:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&tb=1";s:64:"([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:52:"([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&paged=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&cpage=$matches[4]";s:49:"([0-9]{4})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:83:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&wc-api=$matches[5]";s:51:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:62:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]";s:36:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=564 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(20, 6, '_edit_last', '1'),
(21, 6, '_wp_page_template', 'default'),
(22, 6, '_edit_lock', '1442559084:1'),
(23, 8, '_edit_last', '1'),
(24, 8, '_wp_page_template', 'default'),
(25, 8, '_edit_lock', '1442559354:1'),
(26, 10, '_edit_last', '1'),
(27, 10, '_wp_page_template', 'default'),
(28, 10, '_edit_lock', '1442559357:1'),
(29, 12, '_edit_last', '1'),
(30, 12, '_wp_page_template', 'default'),
(31, 12, '_edit_lock', '1442285718:1'),
(32, 14, '_edit_last', '1'),
(33, 14, '_wp_page_template', 'default'),
(34, 14, '_edit_lock', '1442285727:1'),
(35, 16, '_edit_last', '1'),
(36, 16, '_wp_page_template', 'template-home.php'),
(37, 16, '_edit_lock', '1442302302:1'),
(38, 18, '_edit_last', '1'),
(39, 18, '_edit_lock', '1442555837:1'),
(40, 18, '_wp_page_template', 'default'),
(41, 20, '_edit_last', '1'),
(42, 20, '_wp_page_template', 'default'),
(43, 20, '_edit_lock', '1442553906:1'),
(44, 22, '_edit_last', '1'),
(45, 22, '_wp_page_template', 'template-courses.php'),
(46, 22, '_edit_lock', '1442554334:1'),
(47, 24, '_menu_item_type', 'post_type'),
(48, 24, '_menu_item_menu_item_parent', '0'),
(49, 24, '_menu_item_object_id', '12'),
(50, 24, '_menu_item_object', 'page'),
(51, 24, '_menu_item_target', ''),
(52, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 24, '_menu_item_xfn', ''),
(54, 24, '_menu_item_url', ''),
(65, 26, '_menu_item_type', 'post_type'),
(66, 26, '_menu_item_menu_item_parent', '0'),
(67, 26, '_menu_item_object_id', '6'),
(68, 26, '_menu_item_object', 'page'),
(69, 26, '_menu_item_target', ''),
(70, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 26, '_menu_item_xfn', ''),
(72, 26, '_menu_item_url', ''),
(92, 29, '_menu_item_type', 'post_type'),
(93, 29, '_menu_item_menu_item_parent', '0'),
(94, 29, '_menu_item_object_id', '22'),
(95, 29, '_menu_item_object', 'page'),
(96, 29, '_menu_item_target', ''),
(97, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(98, 29, '_menu_item_xfn', ''),
(99, 29, '_menu_item_url', ''),
(110, 31, '_menu_item_type', 'post_type'),
(111, 31, '_menu_item_menu_item_parent', '0'),
(112, 31, '_menu_item_object_id', '18'),
(113, 31, '_menu_item_object', 'page'),
(114, 31, '_menu_item_target', ''),
(115, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(116, 31, '_menu_item_xfn', ''),
(117, 31, '_menu_item_url', ''),
(119, 32, '_menu_item_type', 'post_type'),
(120, 32, '_menu_item_menu_item_parent', '0'),
(121, 32, '_menu_item_object_id', '16'),
(122, 32, '_menu_item_object', 'page'),
(123, 32, '_menu_item_target', ''),
(124, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(125, 32, '_menu_item_xfn', ''),
(126, 32, '_menu_item_url', ''),
(127, 33, '_wp_attached_file', '2015/09/banner-image-placeholder-245x288.jpg'),
(128, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:288;s:4:"file";s:44:"2015/09/banner-image-placeholder-245x288.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"banner-image-placeholder-245x288-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(129, 34, '_wp_attached_file', '2015/09/bw-img-placeholder-439x296.jpg'),
(130, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:439;s:6:"height";i:296;s:4:"file";s:38:"2015/09/bw-img-placeholder-439x296.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"bw-img-placeholder-439x296-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"bw-img-placeholder-439x296-300x202.jpg";s:5:"width";i:300;s:6:"height";i:202;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(131, 35, '_wp_attached_file', '2015/09/hero-image-placeholder-742x374.jpg'),
(132, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:742;s:6:"height";i:374;s:4:"file";s:42:"2015/09/hero-image-placeholder-742x374.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"hero-image-placeholder-742x374-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"hero-image-placeholder-742x374-300x151.jpg";s:5:"width";i:300;s:6:"height";i:151;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(133, 36, '_wp_attached_file', '2015/09/featured-image-placeholder-222x148.jpg'),
(134, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:222;s:6:"height";i:148;s:4:"file";s:46:"2015/09/featured-image-placeholder-222x148.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"featured-image-placeholder-222x148-150x148.jpg";s:5:"width";i:150;s:6:"height";i:148;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(135, 39, '_edit_last', '1'),
(136, 39, '_wp_page_template', 'default'),
(137, 39, '_edit_lock', '1442467458:1'),
(138, 41, '_EventOrigin', 'events-calendar'),
(139, 41, '_edit_last', '1'),
(140, 41, '_edit_lock', '1442471184:1'),
(141, 41, '_EventShowMapLink', '1'),
(142, 41, '_EventShowMap', '1'),
(143, 42, '_VenueOrigin', 'events-calendar'),
(144, 42, '_EventShowMapLink', '1'),
(145, 42, '_EventShowMap', '1'),
(146, 42, '_VenueVenue', 'asdasd'),
(147, 42, '_VenueAddress', 'sadasd'),
(148, 42, '_VenueCity', 'asdasd'),
(149, 42, '_VenueCountry', 'Afghanistan'),
(150, 42, '_VenueProvince', 'asdsad'),
(151, 42, '_VenueState', ''),
(152, 42, '_VenueZip', 'asdasd'),
(153, 42, '_VenuePhone', 'asdasd'),
(154, 42, '_VenueURL', 'asd'),
(155, 42, '_VenueShowMap', 'true'),
(156, 42, '_VenueShowMapLink', 'true'),
(157, 42, '_VenueStateProvince', 'asdsad'),
(158, 42, '_VenueOverwriteCoords', '0') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(159, 42, '_VenueGeoAddress', 'sadasd asdasd asdsad  asdasd Afghanistan'),
(160, 41, '_EventAllDay', 'yes'),
(161, 41, '_EventStartDate', '2015-09-18 00:00:00'),
(162, 41, '_EventEndDate', '2015-09-18 23:59:59'),
(163, 41, '_EventStartDateUTC', '2015-09-18 00:00:00'),
(164, 41, '_EventEndDateUTC', '2015-09-18 23:59:59'),
(165, 41, '_EventDuration', '86399'),
(166, 41, '_EventVenueID', '42'),
(167, 41, '_EventCurrencySymbol', '$'),
(168, 41, '_EventCurrencyPosition', 'prefix'),
(169, 41, '_EventCost', '1000'),
(170, 41, '_EventURL', ''),
(171, 41, '_EventOrganizerID', '0'),
(172, 41, '_EventTimezone', 'UTC+0'),
(173, 41, '_EventTimezoneAbbr', ''),
(174, 41, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:11:"Every Month";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-09-18 00:00:00";s:12:"EventEndDate";s:19:"2015-09-18 23:59:59";}}s:10:"exclusions";a:0:{}}'),
(175, 44, '_OrganizerOrigin', 'events-calendar'),
(176, 41, '_wp_trash_meta_status', 'publish'),
(177, 41, '_wp_trash_meta_time', '1442550854'),
(178, 45, '_EventOrigin', 'events-calendar'),
(179, 45, '_edit_last', '1'),
(180, 45, '_edit_lock', '1442558253:1'),
(181, 45, '_EventShowMapLink', '1'),
(182, 45, '_EventShowMap', '1'),
(183, 46, '_OrganizerOrigin', 'events-calendar'),
(184, 46, '_OrganizerOrganizer', 'Andrell Education'),
(185, 46, '_OrganizerPhone', ' 0407 874 829'),
(186, 46, '_OrganizerWebsite', 'http://andrelleducation.com.au/'),
(187, 46, '_OrganizerEmail', 'info@andrelleducation.com.au '),
(188, 47, '_VenueOrigin', 'events-calendar'),
(189, 47, '_EventShowMapLink', '1'),
(190, 47, '_EventShowMap', '1'),
(191, 47, '_VenueVenue', ''),
(192, 47, '_VenueAddress', ' Vasey St, VIC 3079, Australia'),
(193, 47, '_VenueCity', 'Ivanhoe'),
(194, 47, '_VenueCountry', 'Australia'),
(195, 47, '_VenueProvince', 'Victoria'),
(196, 47, '_VenueState', ''),
(197, 47, '_VenueZip', '3079'),
(198, 47, '_VenuePhone', ''),
(199, 47, '_VenueURL', ''),
(200, 47, '_VenueShowMap', 'true'),
(201, 47, '_VenueShowMapLink', 'true'),
(202, 47, '_VenueStateProvince', 'Victoria'),
(203, 47, '_VenueOverwriteCoords', '0'),
(204, 47, '_VenueLat', '-37.7792029'),
(205, 47, '_VenueLng', '145.0572227'),
(206, 47, '_VenueGeoAddress', 'Vasey St, VIC 3079, Australia Ivanhoe Victoria  3079 Australia'),
(207, 45, '_EventStartDate', '2015-10-09 08:45:00'),
(208, 45, '_EventEndDate', '2015-10-09 15:30:00'),
(209, 45, '_EventStartDateUTC', '2015-10-09 08:45:00'),
(210, 45, '_EventEndDateUTC', '2015-10-09 15:30:00'),
(211, 45, '_EventDuration', '24300'),
(212, 45, '_EventVenueID', '47'),
(213, 45, '_EventURL', ''),
(215, 45, '_EventTimezone', 'UTC+0'),
(216, 45, '_EventTimezoneAbbr', ''),
(217, 45, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-10-09 08:45:00";s:12:"EventEndDate";s:19:"2015-10-09 15:30:00";}}s:10:"exclusions";a:0:{}}'),
(218, 48, '_EventOrigin', 'events-calendar'),
(219, 48, '_edit_last', '1'),
(220, 48, '_edit_lock', '1442562193:1'),
(221, 48, '_EventShowMapLink', '1'),
(222, 48, '_EventShowMap', '1'),
(223, 49, '_VenueOrigin', 'events-calendar'),
(224, 49, '_EventShowMapLink', '1'),
(225, 49, '_EventShowMap', '1'),
(226, 49, '_VenueVenue', 'Brisbane QLD, Australia'),
(227, 49, '_VenueAddress', 'Brisbane QLD, Australia'),
(228, 49, '_VenueCity', 'Brisbane'),
(229, 49, '_VenueCountry', 'Australia'),
(230, 49, '_VenueProvince', 'QLD'),
(231, 49, '_VenueState', ''),
(232, 49, '_VenueZip', ''),
(233, 49, '_VenuePhone', ''),
(234, 49, '_VenueURL', ''),
(235, 49, '_VenueShowMap', 'true'),
(236, 49, '_VenueShowMapLink', 'true'),
(237, 49, '_VenueStateProvince', 'QLD'),
(238, 49, '_VenueOverwriteCoords', '0'),
(239, 49, '_VenueLat', '-27.4709331'),
(240, 49, '_VenueLng', '153.0235024'),
(241, 49, '_VenueGeoAddress', 'Brisbane QLD, Australia Brisbane QLD   Australia'),
(242, 48, '_EventStartDate', '2015-10-17 08:45:00'),
(243, 48, '_EventEndDate', '2015-10-17 15:45:00'),
(244, 48, '_EventStartDateUTC', '2015-10-17 08:45:00'),
(245, 48, '_EventEndDateUTC', '2015-10-17 15:45:00'),
(246, 48, '_EventDuration', '25200'),
(247, 48, '_EventVenueID', '49'),
(248, 48, '_EventURL', ''),
(250, 48, '_EventTimezone', 'UTC+0'),
(251, 48, '_EventTimezoneAbbr', ''),
(252, 48, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-10-17 08:45:00";s:12:"EventEndDate";s:19:"2015-10-17 15:45:00";}}s:10:"exclusions";a:0:{}}'),
(255, 50, '_edit_last', '1'),
(256, 50, '_edit_lock', '1442558633:1'),
(257, 51, '_EventOrigin', 'events-calendar'),
(259, 50, '_wp_page_template', 'default'),
(260, 53, '_edit_last', '1'),
(261, 53, '_edit_lock', '1442558640:1'),
(262, 54, '_wp_attached_file', '2015/09/kids-istock_000013576285small.jpg'),
(263, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:849;s:6:"height";i:565;s:4:"file";s:41:"2015/09/kids-istock_000013576285small.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"kids-istock_000013576285small-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"kids-istock_000013576285small-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:41:"kids-istock_000013576285small-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:41:"kids-istock_000013576285small-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:41:"kids-istock_000013576285small-600x565.jpg";s:5:"width";i:600;s:6:"height";i:565;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(264, 53, '_wp_page_template', 'default'),
(267, 57, '_edit_last', '1'),
(268, 57, '_wp_page_template', 'default'),
(269, 57, '_edit_lock', '1442558134:1'),
(270, 59, '_edit_last', '1'),
(271, 59, '_wp_page_template', 'default'),
(272, 59, '_edit_lock', '1442558634:1'),
(273, 48, '_thumbnail_id', '54'),
(274, 48, '_EventOrganizerID', '46'),
(275, 61, '_edit_last', '1'),
(276, 61, '_wp_page_template', 'default'),
(277, 61, '_edit_lock', '1442558637:1'),
(278, 45, '_thumbnail_id', '54'),
(280, 63, '_edit_last', '1'),
(281, 63, '_wp_page_template', 'default'),
(282, 63, '_edit_lock', '1442558636:1'),
(283, 65, '_edit_last', '1'),
(284, 65, '_wp_page_template', 'default'),
(285, 65, '_edit_lock', '1442666675:1'),
(286, 67, '_edit_last', '1'),
(287, 67, '_wp_page_template', 'default'),
(288, 67, '_edit_lock', '1442557922:1'),
(289, 71, '_wp_attached_file', '2015/09/andress.jpeg'),
(290, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:20:"2015/09/andress.jpeg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"andress-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"andress-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"andress-180x180.jpeg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"andress-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(291, 1, '_wp_trash_meta_status', 'publish'),
(292, 1, '_wp_trash_meta_time', '1442554897'),
(293, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(294, 85, '_edit_last', '1'),
(295, 85, '_edit_lock', '1442555758:1'),
(296, 85, '_wp_page_template', 'default'),
(297, 91, '_edit_last', '1'),
(298, 91, '_edit_lock', '1442556358:1'),
(299, 94, '_wp_attached_file', '2015/09/pic2.jpg'),
(300, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:370;s:6:"height";i:250;s:4:"file";s:16:"2015/09/pic2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pic2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"pic2-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"pic2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"pic2-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(301, 91, '_thumbnail_id', '94'),
(302, 91, '_pingme', '1'),
(303, 91, '_encloseme', '1'),
(304, 100, '_menu_item_type', 'custom'),
(305, 100, '_menu_item_menu_item_parent', '0'),
(306, 100, '_menu_item_object_id', '100'),
(307, 100, '_menu_item_object', 'custom'),
(308, 100, '_menu_item_target', ''),
(309, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(310, 100, '_menu_item_xfn', ''),
(311, 100, '_menu_item_url', '/courses/'),
(313, 101, '_EventOrigin', 'events-calendar'),
(314, 101, '_EventShowMapLink', '1'),
(315, 101, '_EventShowMap', '1'),
(316, 101, '_EventStartDate', '2015-09-18 08:45:00'),
(317, 101, '_EventEndDate', '2015-09-18 15:30:00'),
(318, 101, '_EventStartDateUTC', '2015-09-18 08:45:00'),
(319, 101, '_EventEndDateUTC', '2015-09-18 15:30:00'),
(320, 101, '_EventDuration', '24300'),
(321, 101, '_EventTimezone', 'UTC+0'),
(322, 101, '_EventTimezoneAbbr', ''),
(323, 101, '_edit_last', '1'),
(324, 101, '_edit_lock', '1442558197:1'),
(325, 101, '_EventVenueID', '106'),
(326, 101, '_EventURL', ''),
(329, 103, '_EventOrigin', 'events-calendar'),
(330, 104, '_wp_attached_file', '2015/09/Hands-Up.jpg'),
(331, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:387;s:4:"file";s:20:"2015/09/Hands-Up.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Hands-Up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"Hands-Up-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"Hands-Up-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"Hands-Up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"Hands-Up-600x387.jpg";s:5:"width";i:600;s:6:"height";i:387;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(332, 101, '_thumbnail_id', '104'),
(333, 101, '_wp_old_slug', 'ivanhoe-day-2-open-session'),
(334, 106, '_VenueOrigin', 'events-calendar'),
(335, 106, '_EventShowMapLink', '1'),
(336, 106, '_EventShowMap', '1'),
(337, 106, '_VenueVenue', 'Brunswick'),
(338, 106, '_VenueAddress', ''),
(339, 106, '_VenueCity', ' Brunswick 3056, Australia'),
(340, 106, '_VenueCountry', 'Australia'),
(341, 106, '_VenueProvince', 'Victoria'),
(342, 106, '_VenueZip', '3056'),
(343, 106, '_VenuePhone', ''),
(344, 106, '_VenueURL', ''),
(345, 106, '_VenueShowMap', 'true'),
(346, 106, '_VenueShowMapLink', 'true'),
(347, 106, '_VenueStateProvince', 'Victoria'),
(348, 106, '_VenueOverwriteCoords', '0'),
(349, 106, '_VenueLat', '-37.771901'),
(350, 106, '_VenueLng', '144.962483'),
(351, 106, '_VenueGeoAddress', 'Brunswick 3056, Australia Victoria  3056 Australia'),
(352, 101, '_EventOrganizerID', '46'),
(353, 101, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-09-18 08:45:00";s:12:"EventEndDate";s:19:"2015-09-18 15:30:00";}}s:10:"exclusions";a:0:{}}'),
(354, 107, '_visibility', 'hidden'),
(355, 107, '_tax_status', 'taxable'),
(356, 107, '_tax_class', ''),
(357, 107, '_purchase_note', ''),
(358, 107, '_weight', ''),
(359, 107, '_length', ''),
(360, 107, '_width', ''),
(361, 107, '_height', ''),
(362, 107, '_downloadable', 'no'),
(363, 107, '_virtual', 'yes'),
(364, 107, '_sale_price_dates_from', ''),
(365, 107, '_sale_price_dates_to', ''),
(366, 107, '_product_attributes', 'a:0:{}'),
(367, 107, '_sale_price', ''),
(368, 107, 'total_sales', '0'),
(369, 107, '_tribe_wooticket_for_event', '101') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(370, 107, '_regular_price', '275'),
(371, 107, '_price', '275'),
(372, 107, '_stock', '10'),
(373, 107, '_stock_status', 'instock'),
(374, 107, '_backorders', 'no'),
(375, 107, '_manage_stock', 'yes'),
(376, 107, '_sku', 'and112'),
(377, 101, '_EventCost', '275'),
(378, 115, '_visibility', 'hidden'),
(379, 115, '_tax_status', 'taxable'),
(380, 115, '_tax_class', ''),
(381, 115, '_purchase_note', ''),
(382, 115, '_weight', ''),
(383, 115, '_length', ''),
(384, 115, '_width', ''),
(385, 115, '_height', ''),
(386, 115, '_downloadable', 'no'),
(387, 115, '_virtual', 'yes'),
(388, 115, '_sale_price_dates_from', ''),
(389, 115, '_sale_price_dates_to', ''),
(390, 115, '_product_attributes', 'a:0:{}'),
(391, 115, '_sale_price', ''),
(392, 115, 'total_sales', '2'),
(393, 115, '_tribe_wooticket_for_event', '45'),
(394, 115, '_regular_price', '300'),
(395, 115, '_price', '300'),
(396, 115, '_manage_stock', 'no'),
(397, 115, '_sku', ''),
(399, 45, '_EventCost', '300'),
(400, 45, '_EventOrganizerID', '46'),
(401, 112, '_edit_lock', '1442898796:1'),
(402, 117, '_order_key', 'wc_order_55fbb44e5f693'),
(403, 117, '_order_currency', 'AUD'),
(404, 117, '_prices_include_tax', 'no'),
(405, 117, '_customer_ip_address', '120.149.216.103'),
(406, 117, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36'),
(407, 117, '_customer_user', '1'),
(408, 117, '_created_via', 'checkout'),
(409, 117, '_order_version', '2.4.6'),
(410, 117, '_billing_first_name', 'Matthew'),
(411, 117, '_billing_last_name', 'Keath'),
(412, 117, '_billing_company', ''),
(413, 117, '_billing_email', 'admin@teach-me-pd.dev'),
(414, 117, '_billing_phone', '555 555 555'),
(415, 117, '_billing_country', 'AU'),
(416, 117, '_billing_address_1', '38 Winbourne Road'),
(417, 117, '_billing_address_2', ''),
(418, 117, '_billing_city', 'mount waverley'),
(419, 117, '_billing_state', 'VIC'),
(420, 117, '_billing_postcode', '3149'),
(421, 117, '_shipping_first_name', 'Matthew'),
(422, 117, '_shipping_last_name', 'Keath'),
(423, 117, '_shipping_company', ''),
(424, 117, '_shipping_country', 'AU'),
(425, 117, '_shipping_address_1', '38 Winbourne Road'),
(426, 117, '_shipping_address_2', ''),
(427, 117, '_shipping_city', 'mount waverley'),
(428, 117, '_shipping_state', 'VIC'),
(429, 117, '_shipping_postcode', '3149'),
(430, 117, '_payment_method', 'cheque'),
(431, 117, '_payment_method_title', 'Account Payment'),
(432, 117, '_order_shipping', ''),
(433, 117, '_cart_discount', '0'),
(434, 117, '_cart_discount_tax', '0'),
(435, 117, '_order_tax', '0'),
(436, 117, '_order_shipping_tax', '0'),
(437, 117, '_order_total', '600.00'),
(438, 117, '_recorded_sales', 'yes'),
(439, 119, '_edit_last', '1'),
(440, 119, '_edit_lock', '1442566404:1'),
(441, 119, '_wp_page_template', 'default'),
(442, 121, '_edit_last', '1'),
(443, 121, '_wp_page_template', 'default'),
(444, 121, '_edit_lock', '1442566404:1'),
(445, 117, '_download_permissions_granted', '1'),
(446, 125, '_tribe_wooticket_product', '115'),
(447, 125, '_tribe_wooticket_order', '117'),
(448, 125, '_tribe_wooticket_event', '45'),
(449, 125, '_tribe_wooticket_security_code', '78cc6a4f17'),
(450, 126, '_tribe_wooticket_product', '115'),
(451, 126, '_tribe_wooticket_order', '117'),
(452, 126, '_tribe_wooticket_event', '45'),
(453, 126, '_tribe_wooticket_security_code', '8855c940e8'),
(454, 117, '_tribe_has_tickets', '1'),
(455, 117, '_completed_date', '2015-09-18 07:04:01'),
(456, 127, '_EventOrigin', 'events-calendar'),
(457, 127, '_EventShowMapLink', '1'),
(458, 127, '_EventShowMap', '1'),
(459, 127, '_EventStartDate', '2015-10-26 08:45:00'),
(460, 127, '_EventEndDate', '2015-10-26 15:30:00'),
(461, 127, '_EventStartDateUTC', '2015-10-26 08:45:00'),
(462, 127, '_EventEndDateUTC', '2015-10-26 15:30:00'),
(463, 127, '_EventDuration', '24300'),
(464, 127, '_EventTimezone', 'UTC+0'),
(465, 127, '_EventTimezoneAbbr', ''),
(466, 127, '_edit_last', '1'),
(467, 127, '_edit_lock', '1442560714:1'),
(468, 127, '_EventVenueID', '130'),
(469, 127, '_EventURL', ''),
(471, 127, '_wp_old_slug', 'ivanhoe-day-2-open-session') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(474, 128, '_visibility', 'hidden'),
(475, 128, '_tax_status', 'taxable'),
(476, 128, '_tax_class', ''),
(477, 128, '_purchase_note', ''),
(478, 128, '_weight', ''),
(479, 128, '_length', ''),
(480, 128, '_width', ''),
(481, 128, '_height', ''),
(482, 128, '_downloadable', 'no'),
(483, 128, '_virtual', 'yes'),
(484, 128, '_sale_price_dates_from', ''),
(485, 128, '_sale_price_dates_to', ''),
(486, 128, '_product_attributes', 'a:0:{}'),
(487, 128, '_sale_price', ''),
(488, 128, 'total_sales', '0'),
(489, 128, '_tribe_wooticket_for_event', '127'),
(490, 128, '_regular_price', '275'),
(491, 128, '_price', '275'),
(492, 128, '_manage_stock', 'no'),
(493, 128, '_sku', ''),
(495, 129, '_wp_attached_file', '2015/09/sun-smart-school-kids1.jpg'),
(496, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:580;s:6:"height";i:350;s:4:"file";s:34:"2015/09/sun-smart-school-kids1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"sun-smart-school-kids1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"sun-smart-school-kids1-300x181.jpg";s:5:"width";i:300;s:6:"height";i:181;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"sun-smart-school-kids1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:34:"sun-smart-school-kids1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(497, 127, '_thumbnail_id', '129'),
(498, 127, '_wp_old_slug', 'ivanhoe-day-2-open-session-2'),
(499, 130, '_VenueOrigin', 'events-calendar'),
(500, 130, '_EventShowMapLink', '1'),
(501, 130, '_EventShowMap', '1'),
(502, 130, '_VenueVenue', 'Frankston'),
(503, 130, '_VenueAddress', 'Franston'),
(504, 130, '_VenueCity', ' Frankston, Australia'),
(505, 130, '_VenueCountry', 'Australia'),
(506, 130, '_VenueProvince', 'Victoria'),
(507, 130, '_VenueZip', ''),
(508, 130, '_VenuePhone', ''),
(509, 130, '_VenueURL', ''),
(510, 130, '_VenueShowMap', 'true'),
(511, 130, '_VenueShowMapLink', 'true'),
(512, 130, '_VenueStateProvince', 'Victoria'),
(513, 130, '_VenueOverwriteCoords', '0'),
(514, 130, '_VenueLat', '-38.1433323'),
(515, 130, '_VenueLng', '145.1259423'),
(516, 130, '_VenueGeoAddress', 'Franston  Frankston, Australia Victoria   Australia'),
(519, 127, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-10-26 08:45:00";s:12:"EventEndDate";s:19:"2015-10-26 15:30:00";}}s:10:"exclusions";a:0:{}}'),
(520, 127, '_wp_old_slug', 'ivanhoe-day-2-open-session-2-2'),
(523, 127, '_wp_old_slug', 'day-1-assessment-data-tracking-frankston-day-1-open-session'),
(524, 127, '_EventCost', '275'),
(525, 127, '_EventOrganizerID', '46'),
(526, 131, '_edit_last', '1'),
(527, 131, '_wp_page_template', 'default'),
(528, 131, '_edit_lock', '1442566405:1'),
(529, 110, '_edit_lock', '1442898472:1'),
(530, 110, '_edit_last', '1'),
(531, 110, '_wp_page_template', 'default'),
(532, 112, '_edit_last', '1'),
(533, 112, '_wp_page_template', 'default'),
(534, 111, '_edit_lock', '1442901840:1'),
(535, 111, '_edit_last', '1'),
(536, 111, '_wp_page_template', 'default'),
(537, 136, '_menu_item_type', 'post_type'),
(538, 136, '_menu_item_menu_item_parent', '0'),
(539, 136, '_menu_item_object_id', '12'),
(540, 136, '_menu_item_object', 'page'),
(541, 136, '_menu_item_target', ''),
(542, 136, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(543, 136, '_menu_item_xfn', ''),
(544, 136, '_menu_item_url', ''),
(546, 137, '_menu_item_type', 'post_type'),
(547, 137, '_menu_item_menu_item_parent', '0'),
(548, 137, '_menu_item_object_id', '8'),
(549, 137, '_menu_item_object', 'page'),
(550, 137, '_menu_item_target', ''),
(551, 137, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(552, 137, '_menu_item_xfn', ''),
(553, 137, '_menu_item_url', ''),
(555, 138, '_menu_item_type', 'post_type'),
(556, 138, '_menu_item_menu_item_parent', '0'),
(557, 138, '_menu_item_object_id', '10'),
(558, 138, '_menu_item_object', 'page'),
(559, 138, '_menu_item_target', ''),
(560, 138, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(561, 138, '_menu_item_xfn', ''),
(562, 138, '_menu_item_url', '') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-09-15 01:39:22', '2015-09-15 01:39:22', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2015-09-18 05:41:37', '2015-09-18 05:41:37', '', 0, 'http://teach-me-pd.dev/?p=1', 0, 'post', '', 1),
(2, 1, '2015-09-15 01:39:22', '2015-09-15 01:39:22', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://teach-me-pd.dev/wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-09-15 01:39:22', '2015-09-15 01:39:22', '', 0, 'http://teach-me-pd.dev/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-09-15 01:43:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-09-15 01:43:50', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/?p=3', 0, 'post', '', 0),
(6, 1, '2015-09-15 02:57:15', '2015-09-15 02:57:15', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2015-09-18 06:53:46', '2015-09-18 06:53:46', '', 0, 'http://teach-me-pd.dev/?page_id=6', 0, 'page', '', 0),
(7, 1, '2015-09-15 02:57:15', '2015-09-15 02:57:15', '', 'My Account', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-09-15 02:57:15', '2015-09-15 02:57:15', '', 6, 'http://teach-me-pd.dev/?p=7', 0, 'revision', '', 0),
(8, 1, '2015-09-15 02:57:25', '2015-09-15 02:57:25', '[wp-members page=login]', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2015-09-18 06:58:17', '2015-09-18 06:58:17', '', 0, 'http://teach-me-pd.dev/?page_id=8', 0, 'page', '', 0),
(9, 1, '2015-09-15 02:57:25', '2015-09-15 02:57:25', '', 'Login', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2015-09-15 02:57:25', '2015-09-15 02:57:25', '', 8, 'http://teach-me-pd.dev/?p=9', 0, 'revision', '', 0),
(10, 1, '2015-09-15 02:57:34', '2015-09-15 02:57:34', '[wp-members page=register]', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2015-09-18 06:58:10', '2015-09-18 06:58:10', '', 0, 'http://teach-me-pd.dev/?page_id=10', 0, 'page', '', 0),
(11, 1, '2015-09-15 02:57:34', '2015-09-15 02:57:34', '', 'Register', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-09-15 02:57:34', '2015-09-15 02:57:34', '', 10, 'http://teach-me-pd.dev/?p=11', 0, 'revision', '', 0),
(12, 1, '2015-09-15 02:57:41', '2015-09-15 02:57:41', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2015-09-15 02:57:41', '2015-09-15 02:57:41', '', 0, 'http://teach-me-pd.dev/?page_id=12', 0, 'page', '', 0),
(13, 1, '2015-09-15 02:57:41', '2015-09-15 02:57:41', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-09-15 02:57:41', '2015-09-15 02:57:41', '', 12, 'http://teach-me-pd.dev/?p=13', 0, 'revision', '', 0),
(14, 1, '2015-09-15 02:57:46', '2015-09-15 02:57:46', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2015-09-15 02:57:46', '2015-09-15 02:57:46', '', 0, 'http://teach-me-pd.dev/?page_id=14', 0, 'page', '', 0),
(15, 1, '2015-09-15 02:57:46', '2015-09-15 02:57:46', '', 'News', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2015-09-15 02:57:46', '2015-09-15 02:57:46', '', 14, 'http://teach-me-pd.dev/?p=15', 0, 'revision', '', 0),
(16, 1, '2015-09-15 02:57:56', '2015-09-15 02:57:56', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2015-09-15 07:33:55', '2015-09-15 07:33:55', '', 0, 'http://teach-me-pd.dev/?page_id=16', 0, 'page', '', 0),
(17, 1, '2015-09-15 02:57:56', '2015-09-15 02:57:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2015-09-15 02:57:56', '2015-09-15 02:57:56', '', 16, 'http://teach-me-pd.dev/?p=17', 0, 'revision', '', 0),
(18, 1, '2015-09-15 02:58:07', '2015-09-15 02:58:07', '[caption id="attachment_71" align="alignnone" width="300"]<a href="http://teach-me-pd.dev/organizer/andrell-education/"><img class="wp-image-71 size-medium" src="http://teach-me-pd.dev//app/uploads/2015/09/andress-300x300.jpeg" alt="andress" width="300" height="300" /></a> Andrell Education[/caption]\r\n<h3>Become a provider</h3>\r\nWe currently accepting application to be an provider on teachmepd.com.au. To apply, please fill out our application form <a href="http://teach-me-pd.dev/provider-application/">here</a>, and we shall be in touch.\r\n\r\n&nbsp;', 'Providers', '', 'publish', 'closed', 'closed', '', 'providers', '', '', '2015-09-18 05:59:36', '2015-09-18 05:59:36', '', 0, 'http://teach-me-pd.dev/?page_id=18', 0, 'page', '', 0),
(19, 1, '2015-09-15 02:58:07', '2015-09-15 02:58:07', '', 'Providers', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-09-15 02:58:07', '2015-09-15 02:58:07', '', 18, 'http://teach-me-pd.dev/?p=19', 0, 'revision', '', 0),
(20, 1, '2015-09-15 02:58:13', '2015-09-15 02:58:13', '', 'Calendar', '', 'publish', 'closed', 'closed', '', 'calendar', '', '', '2015-09-15 02:58:13', '2015-09-15 02:58:13', '', 0, 'http://teach-me-pd.dev/?page_id=20', 0, 'page', '', 0),
(21, 1, '2015-09-15 02:58:13', '2015-09-15 02:58:13', '', 'Calendar', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2015-09-15 02:58:13', '2015-09-15 02:58:13', '', 20, 'http://teach-me-pd.dev/?p=21', 0, 'revision', '', 0),
(22, 1, '2015-09-15 02:58:20', '2015-09-15 02:58:20', '', 'Courses', '', 'publish', 'closed', 'closed', '', 'courses-grid', '', '', '2015-09-18 05:21:49', '2015-09-18 05:21:49', '', 0, 'http://teach-me-pd.dev/?page_id=22', 0, 'page', '', 0),
(23, 1, '2015-09-15 02:58:20', '2015-09-15 02:58:20', '', 'Courses', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2015-09-15 02:58:20', '2015-09-15 02:58:20', '', 22, 'http://teach-me-pd.dev/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-09-15 03:07:59', '2015-09-15 03:07:59', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2015-09-22 06:26:49', '2015-09-22 06:26:49', '', 0, 'http://teach-me-pd.dev/?p=24', 2, 'nav_menu_item', '', 0),
(26, 1, '2015-09-15 03:07:59', '2015-09-15 03:07:59', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2015-09-22 06:26:49', '2015-09-22 06:26:49', '', 0, 'http://teach-me-pd.dev/?p=26', 1, 'nav_menu_item', '', 0),
(29, 1, '2015-09-15 03:08:32', '2015-09-15 03:08:32', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2015-09-18 06:26:26', '2015-09-18 06:26:26', '', 0, 'http://teach-me-pd.dev/?p=29', 4, 'nav_menu_item', '', 0),
(31, 1, '2015-09-15 03:08:32', '2015-09-15 03:08:32', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2015-09-18 06:26:26', '2015-09-18 06:26:26', '', 0, 'http://teach-me-pd.dev/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2015-09-15 03:08:32', '2015-09-15 03:08:32', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2015-09-18 06:26:26', '2015-09-18 06:26:26', '', 0, 'http://teach-me-pd.dev/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2015-09-16 02:07:05', '2015-09-16 02:07:05', '', 'banner-image-placeholder-245x288', '', 'inherit', 'open', 'closed', '', 'banner-image-placeholder-245x288', '', '', '2015-09-16 02:07:05', '2015-09-16 02:07:05', '', 0, 'http://teach-me-pd.dev/app/uploads/2015/09/banner-image-placeholder-245x288.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2015-09-16 02:07:05', '2015-09-16 02:07:05', '', 'bw-img-placeholder-439x296', '', 'inherit', 'open', 'closed', '', 'bw-img-placeholder-439x296', '', '', '2015-09-16 02:07:05', '2015-09-16 02:07:05', '', 0, 'http://teach-me-pd.dev/app/uploads/2015/09/bw-img-placeholder-439x296.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2015-09-16 02:07:06', '2015-09-16 02:07:06', '', 'hero-image-placeholder-742x374', '', 'inherit', 'open', 'closed', '', 'hero-image-placeholder-742x374', '', '', '2015-09-16 02:07:06', '2015-09-16 02:07:06', '', 0, 'http://teach-me-pd.dev/app/uploads/2015/09/hero-image-placeholder-742x374.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2015-09-16 08:02:54', '2015-09-16 08:02:54', '', 'featured-image-placeholder-222x148', '', 'inherit', 'open', 'closed', '', 'featured-image-placeholder-222x148', '', '', '2015-09-16 08:02:54', '2015-09-16 08:02:54', '', 0, 'http://teach-me-pd.dev/app/uploads/2015/09/featured-image-placeholder-222x148.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2015-09-16 09:12:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-09-16 09:12:19', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/?p=37', 0, 'post', '', 0),
(38, 1, '2015-09-16 09:35:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-09-16 09:35:58', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/?p=38', 0, 'post', '', 0),
(39, 1, '2015-09-17 05:26:27', '2015-09-17 05:26:27', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2015-09-17 05:26:27', '2015-09-17 05:26:27', '', 0, 'http://teach-me-pd.dev/?page_id=39', 0, 'page', '', 0),
(40, 1, '2015-09-17 05:26:27', '2015-09-17 05:26:27', '', 'Events', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2015-09-17 05:26:27', '2015-09-17 05:26:27', '', 39, 'http://teach-me-pd.dev/2015/09/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2015-09-17 05:29:49', '2015-09-17 05:29:49', 'Fusce vulputate eleifend sapien. Curabitur turpis. Quisque libero metus, condimentum nec, tempor a, commodo mollis, magna. Nullam sagittis. Quisque rutrum.\r\n\r\nNullam tincidunt adipiscing enim. Nulla porta dolor. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Aenean vulputate eleifend tellus.', 'test event', '', 'trash', 'open', 'closed', '', 'test-event', '', '', '2015-09-18 04:34:14', '2015-09-18 04:34:14', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(42, 1, '2015-09-17 05:29:49', '2015-09-17 05:29:49', '', 'asdasd', '', 'publish', 'closed', 'closed', '', 'asdasd', '', '', '2015-09-17 05:29:49', '2015-09-17 05:29:49', '', 0, 'http://teach-me-pd.dev/venue/asdasd/', 0, 'tribe_venue', '', 0),
(43, 1, '2015-09-17 06:17:19', '2015-09-17 06:17:19', '', 'WP Router Placeholder Page', '', 'publish', 'closed', 'closed', '', 'wp-router-placeholder-page', '', '', '2015-09-17 06:17:19', '2015-09-17 06:17:19', '', 0, 'http://teach-me-pd.dev/WP_Router/wp-router-placeholder-page/', 0, 'wp_router_page', '', 0),
(44, 1, '2015-09-18 00:19:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-09-18 00:19:00', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_organizer', '', 0),
(45, 1, '2015-09-18 04:46:23', '2015-09-18 04:46:23', 'We understand that there was a lot of information in Day 1, and that we only just touched on assessment so as not to overwhelm you. When you walked away, your focus should have been on setting up your classroom and introducing the program slowly. For that reason, we have started running Day 2, dedicated to Assessment &amp; Data Tracking.\r\n\r\nIt is imperative that you have not only completed Day 1, but have set up your classroom and started having a go at assessment with the Australian Criterion Scale, (we recommend at least 4-6 months between sessions).\r\n\r\nParticipants are required to bring 2 photocopies of low, mid, and high assessment pieces from their classrooms which they have assessed using the Australian Criterion Scale, using the moderating template (available on the website in the ‘Downloads’ section).\r\n\r\nDay 2 will cover the more intensive Assessment &amp; Data Tracking element of the program for both your classroom and at a school wide tracking level.\r\n\r\nIn this session, we will reflect on your progress so far, share with you in your celebrations, and seek to help overcome any hurdles you have come across that are preventing you from reaching your goals. From there we are going to model and practise placing children on an appropriate level and discuss why it is important to look at all aspects of the writing piece, and not to pre-judge based on length, handwriting, etc.\r\n\r\nThe next step is gaining a deeper understanding of the criteria at various levels, so we will be modelling, sharing, and practising on the pieces you have brought in to make it more relevant to your classroom. From this, we will look at goal setting appropriate to moving that child forward.\r\n\r\nWe will then look at data tracking in your classroom, across your year level, and school wide, showing you different ways of collecting, using, and recording data to ensure it is purposeful.\r\n\r\nOf course, during the day we will still suggest and play games and activities that you can take back to your classroom to add to your resource kits. As usual with the Andrell team, you will be guaranteed chocolates and a laugh.', 'Day 2 - Assessment & Data Tracking - Ivanhoe- Day 2 open session', '', 'publish', 'open', 'closed', '', 'ivanhoe-day-2-open-session', '', '', '2015-09-18 06:39:53', '2015-09-18 06:39:53', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(46, 1, '2015-09-18 04:46:23', '2015-09-18 04:46:23', '', 'Andrell Education', '', 'publish', 'closed', 'closed', '', 'andrell-education', '', '', '2015-09-18 04:46:23', '2015-09-18 04:46:23', '', 0, 'http://teach-me-pd.dev/organizer/andrell-education/', 0, 'tribe_organizer', '', 0),
(47, 1, '2015-09-18 04:46:23', '2015-09-18 04:46:23', '', 'Unnamed Venue', '', 'publish', 'closed', 'closed', '', 'unnamed-venue', '', '', '2015-09-18 04:46:23', '2015-09-18 04:46:23', '', 0, 'http://teach-me-pd.dev/venue/unnamed-venue/', 0, 'tribe_venue', '', 0),
(48, 1, '2015-09-18 04:51:03', '2015-09-18 04:51:03', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.\r\n\r\nYou will leave the day excited, enthused and wanting to race back to your classrooms to play Kung Fu Punctuation, and many other exciting games, with your students.\r\n\r\nIn this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. Presented to you by classroom teachers - who have used the program successfully across multiple year levels - you will become their students for the day, to really understand what a Big Write &amp; VCOP classroom looks and feels like.\r\n\r\nWe will cover all stages of the program from setting up your classroom, to integration into the literacy block, running the writing session, editing, up-levelling and analysis, goal setting, and touching on assessment and data tracking.\r\n\r\nThe session runs from 9:00am to 3:30pm. You will be provided with morning tea, lunch, and delegate pack including PowerPoint notes, Australian Criterion Scale and Student Friendly Criterion Scale. However, we ask that you bring a pen and extra note taking materials, as well as your enthusiasm.', 'Introduction to Big Write & VCOP - Brisbane Day 1- open session', '', 'publish', 'open', 'closed', '', 'introduction-to-big-write-vcop-brisbane-day-1-open-session', '', '', '2015-09-18 05:13:15', '2015-09-18 05:13:15', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(49, 1, '2015-09-18 04:51:03', '2015-09-18 04:51:03', '', 'Brisbane QLD, Australia', '', 'publish', 'closed', 'closed', '', 'brisbane-qld-australia', '', '', '2015-09-18 04:51:03', '2015-09-18 04:51:03', '', 0, 'http://teach-me-pd.dev/venue/brisbane-qld-australia/', 0, 'tribe_venue', '', 0),
(50, 1, '2015-09-18 05:07:29', '2015-09-18 05:07:29', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 28 Apr 2015 – Fri 3 Jul 2015\r\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Fri 18 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\nTeachers commence Thursday 28 January 2016.\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 28 Sep</h3>\r\nFamily &amp; Community Day\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Additional holiday for Boxing Day 26 December 2015\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Mon 14 Mar</h3>\r\nCanberra Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 26 Sep</h3>\r\nFamily and Community Day\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday Substitute for Christmas Day', 'ACT Term dates', '', 'publish', 'closed', 'closed', '', 'term-dates-and-public-holidays-act', '', '', '2015-09-18 06:10:36', '2015-09-18 06:10:36', '', 0, 'http://teach-me-pd.dev/?page_id=50', 0, 'page', '', 0),
(51, 1, '2015-09-18 05:05:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2015-09-18 05:05:28', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(52, 1, '2015-09-18 05:07:29', '2015-09-18 05:07:29', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 28 Apr 2015 – Fri 3 Jul 2015\r\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Fri 18 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\n\r\nTeachers commence Thursday 28 January 2016.\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016', 'Term dates and public holidays ACT', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-09-18 05:07:29', '2015-09-18 05:07:29', '', 50, 'http://teach-me-pd.dev/2015/09/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2015-09-18 05:12:44', '2015-09-18 05:12:44', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 21 Apr 2015 – Fri 26 Jun 2015\r\nTeachers commence Monday 20 April 2015.\r\n<h3>TERM 3</h3>\r\nTue 14 Jul 2015 – Fri 18 Sep 2015\r\nTeachers commence Monday 13 July 2015.\r\n<h3>TERM 4</h3>\r\nTue 6 Oct 2015 – Wed 16 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nThu 28 Jan 2016 – Fri 8 Apr 2016\r\nEastern Division, Teachers commence Wednesday 27 January 2016.\r\n<h3>TERM 1</h3>\r\nThu 4 Feb 2016 – Fri 8 Apr 2016\r\nWestern Division, Teachers commence Wednesday 03 February 2016.\r\n<h3>TERM 2</h3>\r\nWed 27 Apr 2016 – Fri 1 Jul 2016\r\nTeachers commence Tuesday 26 April 2016.\r\n<h3>TERM 3</h3>\r\nTue 19 Jul 2016 – Fri 23 Sep 2016\r\nTeachers commence Monday 18 July 2016.\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\nTeachers finish Tuesday 20 December 2016.\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend.\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Sun 27 Mar</h3>\r\nEaster Sunday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday An additional public holiday to be added when New Year\'s Day, Christmas Day or Boxing Day falls on a weekend.', 'NSW Term Dates', '', 'publish', 'closed', 'closed', '', 'nsw-term-dates', '', '', '2015-09-18 06:19:33', '2015-09-18 06:19:33', '', 0, 'http://teach-me-pd.dev/?page_id=53', 0, 'page', '', 0),
(54, 1, '2015-09-18 05:12:34', '2015-09-18 05:12:34', '', 'kids-istock_000013576285small', '', 'inherit', 'open', 'closed', '', 'kids-istock_000013576285small', '', '', '2015-09-18 05:38:07', '2015-09-18 05:38:07', '', 18, 'http://teach-me-pd.dev//app/uploads/2015/09/kids-istock_000013576285small.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2015-09-18 05:12:44', '2015-09-18 05:12:44', '', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2015-09-18 05:12:44', '2015-09-18 05:12:44', '', 53, 'http://teach-me-pd.dev/2015/09/53-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2015-09-18 05:13:01', '2015-09-18 05:13:01', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 13 Apr 2015 – Fri 26 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 13 Jul 2015 – Fri 18 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Fri 18 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nWed 27 Jan 2016 – Thu 24 Mar 2016\r\nFirst day of Term 1 is a student-free day.\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 11 Jul 2016 – Fri 16 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 3 Oct 2016 – Tue 20 Dec 2016\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Fri 2 Oct</h3>\r\nGrand Final Friday\r\n<h3>Tue 3 Nov</h3>\r\nMelbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council.\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Monday 28 December additional day.\r\n\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Mon 14 Mar</h3>\r\nLabour Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Tue 1 Nov</h3>\r\nMelbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council.\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday Substitute day for Christmas Day', 'Vic Term Dates', '', 'publish', 'closed', 'closed', '', 'vic-term-dates', '', '', '2015-09-18 06:37:41', '2015-09-18 06:37:41', '', 0, 'http://teach-me-pd.dev/?page_id=57', 0, 'page', '', 0),
(58, 1, '2015-09-18 05:13:01', '2015-09-18 05:13:01', '', 'Vic Term Dates', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-09-18 05:13:01', '2015-09-18 05:13:01', '', 57, 'http://teach-me-pd.dev/2015/09/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2015-09-18 05:13:09', '2015-09-18 05:13:09', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 27 Apr 2015 – Fri 3 Jul 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Fri 11 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 15 Apr 2016\r\n<h3>TERM 2</h3>\r\nMon 2 May 2016 – Fri 8 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 25 Jul 2016 – Fri 30 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 17 Oct 2016 – Fri 16 Dec 2016\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Thu 24 Dec</h3>\r\nChristmas Eve A part-day public holiday from 7pm to 12 midnight.\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 28 Dec</h3>\r\nProclamation Day If that date falls on a Saturday the public holiday transfers to the following Monday\r\n<h3>Thu 31 Dec</h3>\r\nNew Year\'s Eve Is a part-day public holiday from 7pm to 12 midnight.\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sat 24 Dec</h3>\r\nChristmas Eve Is a part-day public holiday from 7pm to 12 midnight.\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nChristmas Day holiday Additional day as Christmas Day falls on a Sunday.\r\n<h3>Tue 27 Dec</h3>\r\nProclamation Day Additional day as 26 December is the Christmas Day public holiday\r\n<h3>Sat 31 Dec</h3>\r\nNew Year\'s Eve Is a part-day public holiday from 7pm to 12 midnight.', 'SA Term Dates', '', 'publish', 'closed', 'closed', '', 'sa-term-dates', '', '', '2015-09-18 06:31:22', '2015-09-18 06:31:22', '', 0, 'http://teach-me-pd.dev/?page_id=59', 0, 'page', '', 0),
(60, 1, '2015-09-18 05:13:09', '2015-09-18 05:13:09', '', 'SA Term Dates', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2015-09-18 05:13:09', '2015-09-18 05:13:09', '', 59, 'http://teach-me-pd.dev/2015/09/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2015-09-18 05:13:20', '2015-09-18 05:13:20', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 13 Apr 2015 – Fri 19 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\nStudents resume Tuesday 21 July\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Thu 10 Dec 2015\r\nUrban Schools\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Fri 11 Dec 2015\r\nRemote Schools\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nFri 22 Jan 2016 – Fri 1 Apr 2016\r\nUrban Schools, Students resume Monday 25 January\r\n<h3>TERM 1</h3>\r\nMon 25 Jan 2016 – Fri 1 Apr 2016\r\nRemote Schools, Students resume Wednesday 27 January.\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 25 Jul 2016 – Fri 30 Sep 2016\r\nStudents resume Tuesday 26 July\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Thu 15 Dec 2016\r\nUrban Schools\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\nRemote Schools\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Substitute for Boxing Day\r\n\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 1 Aug</h3>\r\nPicnic Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday Substitute for Christmas Day 25 December 2016.', 'NT Term Dates', '', 'publish', 'closed', 'closed', '', 'nt-term-dates', '', '', '2015-09-18 06:20:44', '2015-09-18 06:20:44', '', 0, 'http://teach-me-pd.dev/?page_id=61', 0, 'page', '', 0),
(62, 1, '2015-09-18 05:13:20', '2015-09-18 05:13:20', '', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-09-18 05:13:20', '2015-09-18 05:13:20', '', 61, 'http://teach-me-pd.dev/2015/09/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-09-18 05:13:31', '2015-09-18 05:13:31', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 26 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 13 Jul 2015 – Fri 18 Sep 2015\r\n<h3>TERM 4</h3>\r\nTue 6 Oct 2015 – Fri 11 Dec 2015\r\nYear 12 - Friday 20 November; Year 10 &amp; 11 - Friday 27 November 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 25 Jan 2016 – Thu 24 Mar 2016\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 11 Jul 2016 – Fri 16 Sep 2016\r\n<h3>TERM 4</h3>\r\nTue 4 Oct 2016 – Fri 9 Dec 2016\r\nYear 12 - Friday 18 November 2016; Year 10 &amp; 11 - Friday 25 November 2016.\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend.\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday An additional public holiday to be added when New Year\'s Day, Christmas Day or Boxing Day falls on a weekend.', 'QLD Term dates', '', 'publish', 'closed', 'closed', '', 'qld-term-dates', '', '', '2015-09-18 06:26:43', '2015-09-18 06:26:43', '', 0, 'http://teach-me-pd.dev/?page_id=63', 0, 'page', '', 0),
(64, 1, '2015-09-18 05:13:31', '2015-09-18 05:13:31', '', 'QLD Term dates', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2015-09-18 05:13:31', '2015-09-18 05:13:31', '', 63, 'http://teach-me-pd.dev/2015/09/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2015-09-18 05:13:42', '2015-09-18 05:13:42', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 3 Jul 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Thu 17 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Thu 15 Dec 2016\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 28 Sep</h3>\r\nQueen\'s Birthday Some regional areas in WA may hold the Queen\'s Birthday public holiday on an different date\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Additional holiday for Boxing Day 26 December 2015\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Mon 7 Mar</h3>\r\nLabour Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 6 Jun</h3>\r\nWestern Australia Day\r\n<h3>Mon 26 Sep</h3>\r\nQueen\'s Birthday Some regional areas in WA may hold the Queen\'s Birthday public holiday on an different date\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day When New Year\'s Day, Anzac Day, or Christmas Day falls on a Saturday or Sunday, the next following Monday is also a public holiday.\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day When Boxing Day falls on a Sunday or Monday, the next following Tuesday is also a public holiday\r\n<h3>Mon 26 Dec</h3>\r\nChristmas Day holiday Substitute day for Christmas Day\r\n<h3>Tue 27 Dec</h3>\r\nBoxing Day holiday Substitute day for Boxing Day', 'WA Term Dates', '', 'publish', 'closed', 'closed', '', 'wa-term-dates', '', '', '2015-09-18 06:40:30', '2015-09-18 06:40:30', '', 0, 'http://teach-me-pd.dev/?page_id=65', 0, 'page', '', 0),
(66, 1, '2015-09-18 05:13:42', '2015-09-18 05:13:42', '', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2015-09-18 05:13:42', '2015-09-18 05:13:42', '', 65, 'http://teach-me-pd.dev/2015/09/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2015-09-18 05:13:58', '2015-09-18 05:13:58', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 3 Jul 2015\r\nTeachers commence Monday 2 February 2015 and finish Thursday 2 April 2015.\r\n<h3>TERM 3</h3>\r\nTue 21 Jul 2015 – Fri 25 Sep 2015\r\nTeachers commence Monday 20 July 2015.\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Thu 17 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nWed 3 Feb 2016 – Fri 8 Apr 2016\r\nTeachers commence Monday 1 February 2016.\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Wed 21 Dec 2016\r\nTeachers finish Thursday 22 December 2016.\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Substitute for Boxing Day 26 December 2015\r\n\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Mon 14 Mar</h3>\r\nEight Hours Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Tue 29 Mar</h3>\r\nEaster Tuesday Restricted public holiday in Tasmania. Observed by some awards/agreements and the State Public Service.\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday Substitute for Christmas Day', 'Tas Term dates', '', 'publish', 'closed', 'closed', '', 'tas-term-dates', '', '', '2015-09-18 06:34:17', '2015-09-18 06:34:17', '', 0, 'http://teach-me-pd.dev/?page_id=67', 0, 'page', '', 0),
(68, 1, '2015-09-18 05:13:58', '2015-09-18 05:13:58', '', 'Tas Term dates', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2015-09-18 05:13:58', '2015-09-18 05:13:58', '', 67, 'http://teach-me-pd.dev/2015/09/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2015-09-18 05:23:33', '2015-09-18 05:23:33', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 28 Apr 2015 – Fri 3 Jul 2015\r\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Fri 18 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\n\r\nTeachers commence Thursday 28 January 2016.\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016', 'ACT Term dates', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-09-18 05:23:33', '2015-09-18 05:23:33', '', 50, 'http://teach-me-pd.dev/2015/09/50-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2015-09-18 06:17:28', '2015-09-18 06:17:28', '<h2>2015</h2>\n<h3>TERM 2</h3>\nTue 21 Apr 2015 – Fri 26 Jun 2015\nTeachers commence Monday 20 April 2015.\n<h3>TERM 3</h3>\nTue 14 Jul 2015 – Fri 18 Sep 2015\nTeachers commence Monday 13 July 2015.\n<h3>TERM 4</h3>\nTue 6 Oct 2015 – Wed 16 Dec 2015\nTeachers finish Friday 18 December 2015.\n<h2>2016</h2>\n<h3>TERM 1</h3>\nThu 28 Jan 2016 – Fri 8 Apr 2016\nEastern Division, Teachers commence Wednesday 27 January 2016.\n<h3>TERM 1</h3>\nThu 4 Feb 2016 – Fri 8 Apr 2016\nWestern Division, Teachers commence Wednesday 03 February 2016.\n<h3>TERM 2</h3>\nWed 27 Apr 2016 – Fri 1 Jul 2016\nTeachers commence Tuesday 26 April 2016.\n<h3>TERM 3</h3>\nTue 19 Jul 2016 – Fri 23 Sep 2016\nTeachers commence Monday 18 July 2016.\n<h3>TERM 4</h3>\nMon 10 Oct 2016 – Fri 16 Dec 2016\nTeachers finish Tuesday 20 December 2016.\n\nPublic Holidays\n<h2>2015</h2>\n<h3>Mon 5 Oct</h3>\nLabour Day\n<h3>Fri 25 Dec</h3>\nChristmas Day\n<h3>Sat 26 Dec</h3>\nBoxing Day\n<h3>Mon 28 Dec</h3>\nBoxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend.\n\n<h2>2016</h2>\n<h3>Fri 1 Jan</h3>\nNew Year\'s Day\n<h3>Tue 26 Jan</h3>\nAustralia Day\n<h3>Fri 25 Mar</h3>\nGood Friday\n<h3>Sat 26 Mar</h3>\nEaster Saturday\n<h3>Sun 27 Mar</h3>\nEaster Sunday\n<h3>Mon 28 Mar<h3>\nEaster Monday\nMon 25 Apr\nAnzac Day\nMon 13 Jun\nQueen\'s Birthday\nMon 3 Oct\nLabour Day\nSun 25 Dec\nChristmas Day\nMon 26 Dec\nBoxing Day\nTue 27 Dec\nChristmas Day holiday An additional public holiday to be added when New Year\'s Day, Christmas Day or Boxing Day falls on a weekend.', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-autosave-v1', '', '', '2015-09-18 06:17:28', '2015-09-18 06:17:28', '', 53, 'http://teach-me-pd.dev/2015/09/53-autosave-v1/', 0, 'revision', '', 0),
(71, 1, '2015-09-18 05:38:05', '2015-09-18 05:38:05', '', 'andress', '', 'inherit', 'open', 'closed', '', 'andress', '', '', '2015-09-18 05:38:05', '2015-09-18 05:38:05', '', 18, 'http://teach-me-pd.dev//app/uploads/2015/09/andress.jpeg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2015-09-18 05:38:27', '2015-09-18 05:38:27', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 21 Apr 2015 – Fri 26 Jun 2015\r\nTeachers commence Monday 20 April 2015.\r\n<h3>TERM 3</h3>\r\nTue 14 Jul 2015 – Fri 18 Sep 2015\r\nTeachers commence Monday 13 July 2015.\r\n<h3>TERM 4</h3>\r\nTue 6 Oct 2015 – Wed 16 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nThu 28 Jan 2016 – Fri 8 Apr 2016\r\nEastern Division, Teachers commence Wednesday 27 January 2016.\r\n<h3>TERM 1</h3>\r\nThu 4 Feb 2016 – Fri 8 Apr 2016\r\nWestern Division, Teachers commence Wednesday 03 February 2016.\r\n<h3>TERM 2</h3>\r\nWed 27 Apr 2016 – Fri 1 Jul 2016\r\nTeachers commence Tuesday 26 April 2016.\r\n<h3>TERM 3</h3>\r\nTue 19 Jul 2016 – Fri 23 Sep 2016\r\nTeachers commence Monday 18 July 2016.\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\nTeachers finish Tuesday 20 December 2016.', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2015-09-18 05:38:27', '2015-09-18 05:38:27', '', 53, 'http://teach-me-pd.dev/2015/09/53-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2015-09-18 05:42:37', '2015-09-18 05:42:37', '[caption id="attachment_71" align="alignnone" width="300"]<a href="http://teach-me-pd.dev/organizer/andrell-education/"><img class="wp-image-71 size-medium" src="http://teach-me-pd.dev//app/uploads/2015/09/andress-300x300.jpeg" alt="andress" width="300" height="300" /></a> Andrell Education[/caption]\n<h3>Become a provider</h3>\nWe currently accepting application to be an provider on teachmepd.com.au. To apply, please fill out our application form here, and we shall be in touch.\n\n&nbsp;', 'Providers', '', 'inherit', 'closed', 'closed', '', '18-autosave-v1', '', '', '2015-09-18 05:42:37', '2015-09-18 05:42:37', '', 18, 'http://teach-me-pd.dev/2015/09/18-autosave-v1/', 0, 'revision', '', 0),
(74, 1, '2015-09-18 05:39:35', '2015-09-18 05:39:35', '[caption id="attachment_71" align="alignleft" width="300"]<a href="http://teach-me-pd.dev/organizer/andrell-education/"><img class="wp-image-71 size-medium" src="http://teach-me-pd.dev//app/uploads/2015/09/andress-300x300.jpeg" alt="andress" width="300" height="300" /></a> Andrell Education[/caption]\r\n\r\n&nbsp;', 'Providers', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-09-18 05:39:35', '2015-09-18 05:39:35', '', 18, 'http://teach-me-pd.dev/2015/09/18-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2015-09-18 05:41:37', '2015-09-18 05:41:37', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2015-09-18 05:41:37', '2015-09-18 05:41:37', '', 1, 'http://teach-me-pd.dev/2015/09/1-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2015-09-18 06:19:11', '2015-09-18 06:19:11', '<h2>2015</h2>\n<h3>TERM 2</h3>\nMon 13 Apr 2015 – Fri 19 Jun 2015\n<h3>TERM 3</h3>\nMon 20 Jul 2015 – Fri 25 Sep 2015\nStudents resume Tuesday 21 July\n<h3>TERM 4</h3>\nMon 5 Oct 2015 – Thu 10 Dec 2015\nUrban Schools\n<h3>TERM 4</h3>\nMon 5 Oct 2015 – Fri 11 Dec 2015\nRemote Schools\n<h2>2016</h2>\n<h3>TERM 1</h3>\nFri 22 Jan 2016 – Fri 1 Apr 2016\nUrban Schools, Students resume Monday 25 January\n<h3>TERM 1</h3>\nMon 25 Jan 2016 – Fri 1 Apr 2016\nRemote Schools, Students resume Wednesday 27 January.\n<h3>TERM 2</h3>\nMon 11 Apr 2016 – Fri 24 Jun 2016\n<h3>TERM 3</h3>\nMon 25 Jul 2016 – Fri 30 Sep 2016\nStudents resume Tuesday 26 July\n<h3>TERM 4</h3>\nMon 10 Oct 2016 – Thu 15 Dec 2016\nUrban Schools\n<h3>TERM 4</h3>\nMon 10 Oct 2016 – Fri 16 Dec 2016\nRemote Schools\n\nPublic Holidays\n2015\nFri 25 Dec\nChristmas Day\nSat 26 Dec\nBoxing Day\nMon 28 Dec\nBoxing Day holiday Substitute for Boxing Day\n\n2016\nFri 1 Jan\nNew Year\'s Day\nTue 26 Jan\nAustralia Day\nFri 25 Mar\nGood Friday\nSat 26 Mar\nEaster Saturday\nMon 28 Mar\nEaster Monday\nMon 25 Apr\nAnzac Day\nMon 13 Jun\nQueen\'s Birthday\nMon 1 Aug\nPicnic Day\nSun 25 Dec\nChristmas Day\nMon 26Dec\nBoxing Day\nTue27Dec\nChristmas Day holiday Substitute for Christmas Day 25 December 2016.', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '61-autosave-v1', '', '', '2015-09-18 06:19:11', '2015-09-18 06:19:11', '', 61, 'http://teach-me-pd.dev/2015/09/61-autosave-v1/', 0, 'revision', '', 0),
(77, 1, '2015-09-18 05:42:52', '2015-09-18 05:42:52', '[caption id="attachment_71" align="alignnone" width="300"]<a href="http://teach-me-pd.dev/organizer/andrell-education/"><img class="wp-image-71 size-medium" src="http://teach-me-pd.dev//app/uploads/2015/09/andress-300x300.jpeg" alt="andress" width="300" height="300" /></a> Andrell Education[/caption]\r\n<h3>Become a provider</h3>\r\nWe currently accepting application to be an provider on teachmepd.com.au. To apply, please fill out our application form here, and we shall be in touch.\r\n\r\n&nbsp;', 'Providers', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-09-18 05:42:52', '2015-09-18 05:42:52', '', 18, 'http://teach-me-pd.dev/2015/09/18-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2015-09-18 05:45:18', '2015-09-18 05:45:18', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 13 Apr 2015 – Fri 19 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\nStudents resume Tuesday 21 July\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Thu 10 Dec 2015\r\nUrban Schools\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Fri 11 Dec 2015\r\nRemote Schools\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nFri 22 Jan 2016 – Fri 1 Apr 2016\r\nUrban Schools, Students resume Monday 25 January\r\n<h3>TERM 1</h3>\r\nMon 25 Jan 2016 – Fri 1 Apr 2016\r\nRemote Schools, Students resume Wednesday 27 January.\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 25 Jul 2016 – Fri 30 Sep 2016\r\nStudents resume Tuesday 26 July\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Thu 15 Dec 2016\r\nUrban Schools\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\nRemote Schools', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-09-18 05:45:18', '2015-09-18 05:45:18', '', 61, 'http://teach-me-pd.dev/2015/09/61-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2015-09-18 06:25:49', '2015-09-18 06:25:49', '<h2>2015</h2>\n<h3>TERM 2</h3>\nMon 20 Apr 2015 – Fri 26 Jun 2015\n<h3>TERM 3</h3>\nMon 13 Jul 2015 – Fri 18 Sep 2015\n<h3>TERM 4</h3>\nTue 6 Oct 2015 – Fri 11 Dec 2015\nYear 12 - Friday 20 November; Year 10 &amp; 11 - Friday 27 November 2015.\n<h2>2016</h2>\n<h3>TERM 1</h3>\nMon 25 Jan 2016 – Thu 24 Mar 2016\n<h3>TERM 2</h3>\nMon 11 Apr 2016 – Fri 24 Jun 2016\n<h3>TERM 3</h3>\nMon 11 Jul 2016 – Fri 16 Sep 2016\n<h3>TERM 4</h3>\nTue 4 Oct 2016 – Fri 9 Dec 2016\nYear 12 - Friday 18 November 2016; Year 10 &amp; 11 - Friday 25 November 2016.\n\n<h2>Public Holidays</h2>\n<h2>2015</h2>\n<h3>Mon 5 Oct</h3>\nLabour Day\n<h3>Fri 25 Dec</h3>\nChristmas Day\n<h3>Sat 26 Dec</h3>\nBoxing Day\n<h3>Mon 28 Dec</h3>\nBoxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend.\n\n<h2>2016</h2>\n<h3>Fri 1 Jan</h3>\nNew Year\'s Day\n<h3>Tue 26 Jan</h3>\nAustralia Day\n<h3>Fri 25 Mar</h3>\nGood Friday\n<h3>Sat 26 Mar</h3>\nEaster Saturday\n<h3>Mon 28 Mar</h3>\nEaster Monday\n<h3>Mon 25 Apr</h3>\nAnzac Day\nMon13Jun\nQueen\'s Birthday\nMon3Oct\nLabour Day\nSun25Dec\nChristmas Day\nMon26Dec\nBoxing Day\nTue27Dec\nChristmas Day holiday An additional public holiday to be added when New Year\'s Day, Christmas Day or Boxing Day falls on a weekend.', 'QLD Term dates', '', 'inherit', 'closed', 'closed', '', '63-autosave-v1', '', '', '2015-09-18 06:25:49', '2015-09-18 06:25:49', '', 63, 'http://teach-me-pd.dev/2015/09/63-autosave-v1/', 0, 'revision', '', 0),
(80, 1, '2015-09-18 05:52:03', '2015-09-18 05:52:03', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 26 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 13 Jul 2015 – Fri 18 Sep 2015\r\n<h3>TERM 4</h3>\r\nTue 6 Oct 2015 – Fri 11 Dec 2015\r\nYear 12 - Friday 20 November; Year 10 &amp; 11 - Friday 27 November 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 25 Jan 2016 – Thu 24 Mar 2016\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 11 Jul 2016 – Fri 16 Sep 2016\r\n<h3>TERM 4</h3>\r\nTue 4 Oct 2016 – Fri 9 Dec 2016\r\nYear 12 - Friday 18 November 2016; Year 10 &amp; 11 - Friday 25 November 2016.', 'QLD Term dates', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2015-09-18 05:52:03', '2015-09-18 05:52:03', '', 63, 'http://teach-me-pd.dev/2015/09/63-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2015-09-18 06:30:01', '2015-09-18 06:30:01', '<h2>2015</h2>\n<h3>TERM 2</h3>\nMon 27 Apr 2015 – Fri 3 Jul 2015\n<h3>TERM 3</h3>\nMon 20 Jul 2015 – Fri 25 Sep 2015\n<h3>TERM 4</h3>\nMon 12 Oct 2015 – Fri 11 Dec 2015\n<h2>2016</h2>\n<h3>TERM 1</h3>\nMon 1 Feb 2016 – Fri 15 Apr 2016\n<h3>TERM 2</h3>\nMon 2 May 2016 – Fri 8 Jul 2016\n<h3>TERM 3</h3>\nMon 25 Jul 2016 – Fri 30 Sep 2016\n<h3>TERM 4</h3>\nMon 17 Oct 2016 – Fri 16 Dec 2016\n\n<h2>Public Holidays</h2>\n<h2>2015</h2>\n<h3>Mon 5 Oct</h3>\nLabour Day\n<h3>Thu 24 Dec</h3>\nChristmas Eve A part-day public holiday from 7pm to 12 midnight.\n<h3>Fri 25 Dec</h3>\nChristmas Day\n<h3>Mon 28 Dec</h3>\nProclamation Day If that date falls on a Saturday the public holiday transfers to the following Monday\n<h3>Thu 31 Dec</h3>\nNew Year\'s Eve Is a part-day public holiday from 7pm to 12 midnight.\n\n<h2>2016</h2>\n<h3>Fri 1 Jan</h3>\nNew Year\'s Day\n<h3>Tue 26 Jan</h3>\nAustralia Day\n<h3>Fri 25 Mar</h3>\nGood Friday\n<h3>Sat 26 Mar</h3>\nEaster Saturday\n<h3>Mon 28 Mar</h3>\nEaster Monday\n<h3>Mon 25 Apr</h3>\nAnzac Day\n<h3>Mon 13 Jun</h3>\nQueen\'s Birthday\n<h3>Mon 3 Oct</h3>\nLabour Day\nSat 24 Dec\nChristmas Eve Is a part-day public holiday from 7pm to 12 midnight.\nSun 25 Dec\nChristmas Day\nMon 26 Dec\nChristmas Day holiday Additional day as Christmas Day falls on a Sunday.\nTue 27 Dec\nProclamation Day Additional day as 26 December is the Christmas Day public holiday\nSat 31 Dec\nNew Year\'s Eve Is a part-day public holiday from 7pm to 12 midnight.', 'SA Term Dates', '', 'inherit', 'closed', 'closed', '', '59-autosave-v1', '', '', '2015-09-18 06:30:01', '2015-09-18 06:30:01', '', 59, 'http://teach-me-pd.dev/2015/09/59-autosave-v1/', 0, 'revision', '', 0),
(82, 1, '2015-09-18 05:54:25', '2015-09-18 05:54:25', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 27 Apr 2015 – Fri 3 Jul 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Fri 11 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 15 Apr 2016\r\n<h3>TERM 2</h3>\r\nMon 2 May 2016 – Fri 8 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 25 Jul 2016 – Fri 30 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 17 Oct 2016 – Fri 16 Dec 2016', 'SA Term Dates', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2015-09-18 05:54:25', '2015-09-18 05:54:25', '', 59, 'http://teach-me-pd.dev/2015/09/59-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(83, 1, '2015-09-18 06:33:03', '2015-09-18 06:33:03', '<h2>2015</h2>\n<h3>TERM 2</h3>\nMon 20 Apr 2015 – Fri 3 Jul 2015\nTeachers commence Monday 2 February 2015 and finish Thursday 2 April 2015.\n<h3>TERM 3</h3>\nTue 21 Jul 2015 – Fri 25 Sep 2015\nTeachers commence Monday 20 July 2015.\n<h3>TERM 4</h3>\nMon 12 Oct 2015 – Thu 17 Dec 2015\nTeachers finish Friday 18 December 2015.\n<h2>2016</h2>\n<h3>TERM 1</h3>\nWed 3 Feb 2016 – Fri 8 Apr 2016\nTeachers commence Monday 1 February 2016.\n<h3>TERM 2</h3>\nTue 26 Apr 2016 – Fri 1 Jul 2016\n<h3>TERM 3</h3>\nMon 18 Jul 2016 – Fri 23 Sep 2016\n<h3>TERM 4</h3>\nMon 10 Oct 2016 – Wed 21 Dec 2016\nTeachers finish Thursday 22 December 2016.\n\nPublic Holidays\n2015\nFri 25 Dec\nChristmas Day\nSat 26 Dec\nBoxing Day\nMon 28 Dec\nBoxing Day holiday Substitute for Boxing Day 26 December 2015\n\n2016\nFri 1 Jan\nNew Year\'s Day\nTue 26 Jan\nAustralia Day\nMon 14 Mar\nEight Hours Day\nFri 25 Mar\nGood Friday\nMon 28 Mar\nEaster Monday\nTue 29 Mar\nEaster Tuesday Restricted public holiday in Tasmania. Observed by some awards/agreements and the State Public Service.\nMon 25 Apr\nAnzac Day\nMon 13 Jun\nQueen\'s Birthday\nSun 25 Dec\nChristmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday\nMon 26 Dec\nBoxing Day\nTue 27 Dec\nChristmas Day holiday Substitute for Christmas Day', 'Tas Term dates', '', 'inherit', 'closed', 'closed', '', '67-autosave-v1', '', '', '2015-09-18 06:33:03', '2015-09-18 06:33:03', '', 67, 'http://teach-me-pd.dev/2015/09/67-autosave-v1/', 0, 'revision', '', 0),
(84, 1, '2015-09-18 05:57:29', '2015-09-18 05:57:29', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 3 Jul 2015\r\nTeachers commence Monday 2 February 2015 and finish Thursday 2 April 2015.\r\n<h3>TERM 3</h3>\r\nTue 21 Jul 2015 – Fri 25 Sep 2015\r\nTeachers commence Monday 20 July 2015.\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Thu 17 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nWed 3 Feb 2016 – Fri 8 Apr 2016\r\nTeachers commence Monday 1 February 2016.\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Wed 21 Dec 2016\r\nTeachers finish Thursday 22 December 2016.', 'Tas Term dates', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2015-09-18 05:57:29', '2015-09-18 05:57:29', '', 67, 'http://teach-me-pd.dev/2015/09/67-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2015-09-18 05:58:17', '2015-09-18 05:58:17', '[gravityform id="1" title="false" description="false"]', 'Provider application', '', 'publish', 'closed', 'closed', '', 'provider-application', '', '', '2015-09-18 05:58:17', '2015-09-18 05:58:17', '', 0, 'http://teach-me-pd.dev/?page_id=85', 0, 'page', '', 0),
(86, 1, '2015-09-18 05:58:17', '2015-09-18 05:58:17', '[gravityform id="1" title="false" description="false"]', 'Provider application', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2015-09-18 05:58:17', '2015-09-18 05:58:17', '', 85, 'http://teach-me-pd.dev/2015/09/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-09-18 06:37:32', '2015-09-18 06:37:32', '<h2>2015</h2>\n<h3>TERM 2</h3>\nMon 13 Apr 2015 – Fri 26 Jun 2015\n<h3>TERM 3</h3>\nMon 13 Jul 2015 – Fri 18 Sep 2015\n<h3>TERM 4</h3>\nMon 5 Oct 2015 – Fri 18 Dec 2015\n<h2>2016</h2>\n<h3>TERM 1</h3>\nWed 27 Jan 2016 – Thu 24 Mar 2016\nFirst day of Term 1 is a student-free day.\n<h3>TERM 2</h3>\nMon 11 Apr 2016 – Fri 24 Jun 2016\n<h3>TERM 3</h3>\nMon 11 Jul 2016 – Fri 16 Sep 2016\n<h3>TERM 4</h3>\nMon 3 Oct 2016 – Tue 20 Dec 2016\n\n<h2>Public Holidays</h2>\n<h2>2015</h2>\n<h3>Fri 2 Oct</h3>\nGrand Final Friday\n<h3>Tue 3 Nov</h3>\nMelbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council.\n<h3>Fri 25 Dec</h3>\nChristmas Day\n<h3>Sat 26 Dec</h3>\nBoxing Day\n<h3>Mon 28 Dec</h3>\nBoxing Day holiday Monday 28 December additional day.\n\n<h2>2016</h2>\n<h3>Fri 1 Jan</h3>\nNew Year\'s Day\n<h3>Tue 26 Jan</h3>\nAustralia Day\n<h3>Mon 14 Mar</h3>\nLabour Day\n<h3>Fri 25 Mar</h3>\nGood Friday\n<h3>Sat 26 Mar</h3>\nEaster Saturday\n<h3>Mon 28 Mar</h3>\nEaster Monday\n<h3>Mon 25 Apr</h3>\nAnzac Day\n<h3>Mon 13 Jun</h3>\nQueen\'s Birthday\n<h3>Tue 1 Nov</h3>\nMelbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council.\n<h3>Sun 25 Dec</h3>\nChristmas Day\n<h3>Mon 26 Dec</h3>\nBoxing Day\nTue 27 Dec\nChristmas Day holiday Substitute day for Christmas Day', 'Vic Term Dates', '', 'inherit', 'closed', 'closed', '', '57-autosave-v1', '', '', '2015-09-18 06:37:32', '2015-09-18 06:37:32', '', 57, 'http://teach-me-pd.dev/2015/09/57-autosave-v1/', 0, 'revision', '', 0),
(88, 1, '2015-09-18 05:59:36', '2015-09-18 05:59:36', '[caption id="attachment_71" align="alignnone" width="300"]<a href="http://teach-me-pd.dev/organizer/andrell-education/"><img class="wp-image-71 size-medium" src="http://teach-me-pd.dev//app/uploads/2015/09/andress-300x300.jpeg" alt="andress" width="300" height="300" /></a> Andrell Education[/caption]\r\n<h3>Become a provider</h3>\r\nWe currently accepting application to be an provider on teachmepd.com.au. To apply, please fill out our application form <a href="http://teach-me-pd.dev/provider-application/">here</a>, and we shall be in touch.\r\n\r\n&nbsp;', 'Providers', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-09-18 05:59:36', '2015-09-18 05:59:36', '', 18, 'http://teach-me-pd.dev/2015/09/18-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2015-09-18 05:59:47', '2015-09-18 05:59:47', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 13 Apr 2015 – Fri 26 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 13 Jul 2015 – Fri 18 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Fri 18 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nWed 27 Jan 2016 – Thu 24 Mar 2016\r\nFirst day of Term 1 is a student-free day.\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 11 Jul 2016 – Fri 16 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 3 Oct 2016 – Tue 20 Dec 2016', 'Vic Term Dates', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-09-18 05:59:47', '2015-09-18 05:59:47', '', 57, 'http://teach-me-pd.dev/2015/09/57-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2015-09-18 06:01:32', '2015-09-18 06:01:32', '<h2>2015</h2>\r\n<h3>Term 2</h3>\r\nMon 20 Apr 2015 – Fri 3 Jul 2015\r\n<h3>Term 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>Term 4</h3>\r\nMon 12 Oct 2015 – Thu 17 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n\r\n<h2>2016</h2>\r\n<h3>Term 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\n<h3>Term 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>Term 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>Term 4</h3>\r\nMon 10 Oct 2016 – Thu 15 Dec 2016', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2015-09-18 06:01:32', '2015-09-18 06:01:32', '', 65, 'http://teach-me-pd.dev/2015/09/65-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2015-09-18 06:08:18', '2015-09-18 06:08:18', '<h3>Hello and welcome,</h3>\r\nToday is the soft launch of our new website. We shall be adding more features over the next week.\r\n\r\nIn the meantime, have a good look around and if you have any questions please <a href="http://teach-me-pd.dev/contact/">contact us!</a>', 'Welcome to the new site!', '', 'publish', 'open', 'open', '', 'welcome-to-the-new-site', '', '', '2015-09-18 06:08:18', '2015-09-18 06:08:18', '', 0, 'http://teach-me-pd.dev/?p=91', 0, 'post', '', 0),
(92, 1, '2015-09-18 06:02:16', '2015-09-18 06:02:16', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 3 Jul 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Thu 17 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Thu 15 Dec 2016', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2015-09-18 06:02:16', '2015-09-18 06:02:16', '', 65, 'http://teach-me-pd.dev/2015/09/65-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2015-09-18 06:09:28', '2015-09-18 06:09:28', '<h2>2015</h2>\n<h3>TERM 2</h3>\nTue 28 Apr 2015 – Fri 3 Jul 2015\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday\n<h3>TERM 3</h3>\nMon 20 Jul 2015 – Fri 25 Sep 2015\n<h3>TERM 4</h3>\nMon 12 Oct 2015 – Fri 18 Dec 2015\n<h2>2016</h2>\n<h3>TERM 1</h3>\nMon 1 Feb 2016 – Fri 8 Apr 2016\nTeachers commence Thursday 28 January 2016.\n<h3>TERM 2</h3>\nTue 26 Apr 2016 – Fri 1 Jul 2016\n<h3>TERM 3</h3>\nMon 18 Jul 2016 – Fri 23 Sep 2016\n<h3>TERM 4</h3>\nMon 10 Oct 2016 – Fri 16 Dec 2016\n<h2>Public Holidays</h2>\n<h2>2015</h2>\n<h3>Mon 28 Sep</h3>\nFamily &amp; Community Day\n<h3>Mon 5 Oct</h3>\nLabour Day\n<h3>Fri 25 Dec</h3>\nChristmas Day\n<h3>Sat 26 Dec</h3>\nBoxing Day\n<h3>Mon 28 Dec</h3>\nBoxing Day holiday Additional holiday for Boxing Day 26 December 2015\n\n<h2>2016</h2>\n<h3>Fri 1 Jan</h3>\nNew Year\'s Day\n<h3>Tue 26 Jan</h3>\nAustralia Day\n<h3>Mon 14 Mar</h3>\nCanberra Day\n<h3>Fri 25 Mar</h3>\nGood Friday\n<h3>Sat 26 Mar</h3>\nEaster Saturday\n<h3>Mon 28 Mar</h3>\nEaster Monday\n<h3>Mon 25 Apr</h3>\nAnzac Day\n<h3>Mon 13 Jun</h3>\nQueen\'s Birthday\n<h3>Mon 26 Sep<h3>\nFamily and Community Day\nMon 3 Oct\nLabour Day\nSun 25 Dec\nChristmas Day\nMon 26 Dec\nBoxing Day\nTue 27 Dec\nChristmas Day holiday Substitute for Christmas Day', 'ACT Term dates', '', 'inherit', 'closed', 'closed', '', '50-autosave-v1', '', '', '2015-09-18 06:09:28', '2015-09-18 06:09:28', '', 50, 'http://teach-me-pd.dev/2015/09/50-autosave-v1/', 0, 'revision', '', 0),
(94, 1, '2015-09-18 06:08:13', '2015-09-18 06:08:13', '', 'pic2', '', 'inherit', 'open', 'closed', '', 'pic2', '', '', '2015-09-18 06:08:13', '2015-09-18 06:08:13', '', 91, 'http://teach-me-pd.dev//app/uploads/2015/09/pic2.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2015-09-18 06:08:18', '2015-09-18 06:08:18', '<h3>Hello and welcome,</h3>\r\nToday is the soft launch of our new website. We shall be adding more features over the next week.\r\n\r\nIn the meantime, have a good look around and if you have any questions please <a href="http://teach-me-pd.dev/contact/">contact us!</a>', 'Welcome to the new site!', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2015-09-18 06:08:18', '2015-09-18 06:08:18', '', 91, 'http://teach-me-pd.dev/2015/09/91-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2015-09-18 06:10:36', '2015-09-18 06:10:36', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 28 Apr 2015 – Fri 3 Jul 2015\r\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Fri 18 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\nTeachers commence Thursday 28 January 2016.\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 28 Sep</h3>\r\nFamily &amp; Community Day\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Additional holiday for Boxing Day 26 December 2015\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Mon 14 Mar</h3>\r\nCanberra Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 26 Sep</h3>\r\nFamily and Community Day\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday Substitute for Christmas Day', 'ACT Term dates', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-09-18 06:10:36', '2015-09-18 06:10:36', '', 50, 'http://teach-me-pd.dev/2015/09/50-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2015-09-18 06:18:00', '2015-09-18 06:18:00', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 21 Apr 2015 – Fri 26 Jun 2015\r\nTeachers commence Monday 20 April 2015.\r\n<h3>TERM 3</h3>\r\nTue 14 Jul 2015 – Fri 18 Sep 2015\r\nTeachers commence Monday 13 July 2015.\r\n<h3>TERM 4</h3>\r\nTue 6 Oct 2015 – Wed 16 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nThu 28 Jan 2016 – Fri 8 Apr 2016\r\nEastern Division, Teachers commence Wednesday 27 January 2016.\r\n<h3>TERM 1</h3>\r\nThu 4 Feb 2016 – Fri 8 Apr 2016\r\nWestern Division, Teachers commence Wednesday 03 February 2016.\r\n<h3>TERM 2</h3>\r\nWed 27 Apr 2016 – Fri 1 Jul 2016\r\nTeachers commence Tuesday 26 April 2016.\r\n<h3>TERM 3</h3>\r\nTue 19 Jul 2016 – Fri 23 Sep 2016\r\nTeachers commence Monday 18 July 2016.\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\nTeachers finish Tuesday 20 December 2016.\r\n\r\nPublic Holidays\r\n<h2>2015</h2>\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend.\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Sun 27 Mar</h3>\r\nEaster Sunday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday An additional public holiday to be added when New Year\'s Day, Christmas Day or Boxing Day falls on a weekend.', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2015-09-18 06:18:00', '2015-09-18 06:18:00', '', 53, 'http://teach-me-pd.dev/2015/09/53-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2015-09-18 06:19:33', '2015-09-18 06:19:33', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 21 Apr 2015 – Fri 26 Jun 2015\r\nTeachers commence Monday 20 April 2015.\r\n<h3>TERM 3</h3>\r\nTue 14 Jul 2015 – Fri 18 Sep 2015\r\nTeachers commence Monday 13 July 2015.\r\n<h3>TERM 4</h3>\r\nTue 6 Oct 2015 – Wed 16 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nThu 28 Jan 2016 – Fri 8 Apr 2016\r\nEastern Division, Teachers commence Wednesday 27 January 2016.\r\n<h3>TERM 1</h3>\r\nThu 4 Feb 2016 – Fri 8 Apr 2016\r\nWestern Division, Teachers commence Wednesday 03 February 2016.\r\n<h3>TERM 2</h3>\r\nWed 27 Apr 2016 – Fri 1 Jul 2016\r\nTeachers commence Tuesday 26 April 2016.\r\n<h3>TERM 3</h3>\r\nTue 19 Jul 2016 – Fri 23 Sep 2016\r\nTeachers commence Monday 18 July 2016.\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\nTeachers finish Tuesday 20 December 2016.\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend.\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Sun 27 Mar</h3>\r\nEaster Sunday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday An additional public holiday to be added when New Year\'s Day, Christmas Day or Boxing Day falls on a weekend.', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2015-09-18 06:19:33', '2015-09-18 06:19:33', '', 53, 'http://teach-me-pd.dev/2015/09/53-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2015-09-18 06:20:44', '2015-09-18 06:20:44', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 13 Apr 2015 – Fri 19 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\nStudents resume Tuesday 21 July\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Thu 10 Dec 2015\r\nUrban Schools\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Fri 11 Dec 2015\r\nRemote Schools\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nFri 22 Jan 2016 – Fri 1 Apr 2016\r\nUrban Schools, Students resume Monday 25 January\r\n<h3>TERM 1</h3>\r\nMon 25 Jan 2016 – Fri 1 Apr 2016\r\nRemote Schools, Students resume Wednesday 27 January.\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 25 Jul 2016 – Fri 30 Sep 2016\r\nStudents resume Tuesday 26 July\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Thu 15 Dec 2016\r\nUrban Schools\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\nRemote Schools\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Substitute for Boxing Day\r\n\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 1 Aug</h3>\r\nPicnic Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday Substitute for Christmas Day 25 December 2016.', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-09-18 06:20:44', '2015-09-18 06:20:44', '', 61, 'http://teach-me-pd.dev/2015/09/61-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2015-09-18 06:26:26', '2015-09-18 06:26:26', '', 'Calendar', '', 'publish', 'closed', 'closed', '', 'calendar', '', '', '2015-09-18 06:26:26', '2015-09-18 06:26:26', '', 0, 'http://teach-me-pd.dev/?p=100', 3, 'nav_menu_item', '', 0),
(101, 1, '2015-09-18 04:46:23', '2015-09-18 04:46:23', 'We understand that there was a lot of information in Day 1, and that we only just touched on assessment so as not to overwhelm you. When you walked away, your focus should have been on setting up your classroom and introducing the program slowly. For that reason, we have started running Day 2, dedicated to Assessment &amp; Data Tracking.\r\n\r\nIt is imperative that you have not only completed Day 1, but have set up your classroom and started having a go at assessment with the Australian Criterion Scale, (we recommend at least 4-6 months between sessions).\r\n\r\nParticipants are required to bring 2 photocopies of low, mid, and high assessment pieces from their classrooms which they have assessed using the Australian Criterion Scale, using the moderating template (available on the website in the ‘Downloads’ section).\r\n\r\nDay 2 will cover the more intensive Assessment &amp; Data Tracking element of the program for both your classroom and at a school wide tracking level.\r\n\r\nIn this session, we will reflect on your progress so far, share with you in your celebrations, and seek to help overcome any hurdles you have come across that are preventing you from reaching your goals. From there we are going to model and practise placing children on an appropriate level and discuss why it is important to look at all aspects of the writing piece, and not to pre-judge based on length, handwriting, etc.\r\n\r\nThe next step is gaining a deeper understanding of the criteria at various levels, so we will be modelling, sharing, and practising on the pieces you have brought in to make it more relevant to your classroom. From this, we will look at goal setting appropriate to moving that child forward.\r\n\r\nWe will then look at data tracking in your classroom, across your year level, and school wide, showing you different ways of collecting, using, and recording data to ensure it is purposeful.\r\n\r\nOf course, during the day we will still suggest and play games and activities that you can take back to your classroom to add to your resource kits. As usual with the Andrell team, you will be guaranteed chocolates and a laugh.', 'Day 2 - Assessment & Data Tracking - Brunswick PS Whole School Booking Day 2', '', 'publish', 'open', 'closed', '', 'ivanhoe-day-2-open-session-2', '', '', '2015-09-18 06:31:58', '2015-09-18 06:31:58', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(102, 1, '2015-09-18 06:26:43', '2015-09-18 06:26:43', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 26 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 13 Jul 2015 – Fri 18 Sep 2015\r\n<h3>TERM 4</h3>\r\nTue 6 Oct 2015 – Fri 11 Dec 2015\r\nYear 12 - Friday 20 November; Year 10 &amp; 11 - Friday 27 November 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 25 Jan 2016 – Thu 24 Mar 2016\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 11 Jul 2016 – Fri 16 Sep 2016\r\n<h3>TERM 4</h3>\r\nTue 4 Oct 2016 – Fri 9 Dec 2016\r\nYear 12 - Friday 18 November 2016; Year 10 &amp; 11 - Friday 25 November 2016.\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend.\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday An additional public holiday to be added when New Year\'s Day, Christmas Day or Boxing Day falls on a weekend.', 'QLD Term dates', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2015-09-18 06:26:43', '2015-09-18 06:26:43', '', 63, 'http://teach-me-pd.dev/2015/09/63-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2015-09-18 06:27:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2015-09-18 06:27:49', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(104, 1, '2015-09-18 06:30:22', '2015-09-18 06:30:22', '', 'Hands-Up', '', 'inherit', 'open', 'closed', '', 'hands-up', '', '', '2015-09-18 06:30:22', '2015-09-18 06:30:22', '', 101, 'http://teach-me-pd.dev//app/uploads/2015/09/Hands-Up.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2015-09-18 06:30:27', '2015-09-18 06:30:27', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 27 Apr 2015 – Fri 3 Jul 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Fri 11 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 15 Apr 2016\r\n<h3>TERM 2</h3>\r\nMon 2 May 2016 – Fri 8 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 25 Jul 2016 – Fri 30 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 17 Oct 2016 – Fri 16 Dec 2016\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Thu 24 Dec</h3>\r\nChristmas Eve A part-day public holiday from 7pm to 12 midnight.\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 28 Dec</h3>\r\nProclamation Day If that date falls on a Saturday the public holiday transfers to the following Monday\r\n<h3>Thu 31 Dec</h3>\r\nNew Year\'s Eve Is a part-day public holiday from 7pm to 12 midnight.\r\n\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sat 24 Dec</h3>\r\nChristmas Eve Is a part-day public holiday from 7pm to 12 midnight.\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nChristmas Day holiday Additional day as Christmas Day falls on a Sunday.\r\n<h3>Tue 27 Dec</h3>\r\nProclamation Day Additional day as 26 December is the Christmas Day public holiday\r\n<h3>Sat 31 Dec</h3>\r\nNew Year\'s Eve Is a part-day public holiday from 7pm to 12 midnight.', 'SA Term Dates', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2015-09-18 06:30:27', '2015-09-18 06:30:27', '', 59, 'http://teach-me-pd.dev/2015/09/59-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2015-09-18 06:31:58', '2015-09-18 06:31:58', '', 'Brunswick', '', 'publish', 'closed', 'closed', '', 'brunswick', '', '', '2015-09-18 06:31:58', '2015-09-18 06:31:58', '', 0, 'http://teach-me-pd.dev/venue/brunswick/', 0, 'tribe_venue', '', 0),
(107, 1, '2015-09-18 06:33:20', '2015-09-18 06:33:20', '', 'Booking request', 'This is a request for booking. We shall be in touch to confirm.', 'publish', 'open', 'closed', '', 'booking-request', '', '', '2015-09-18 06:33:20', '2015-09-18 06:33:20', '', 0, 'http://teach-me-pd.dev/product/booking-request/', 0, 'product', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(108, 1, '2015-09-18 06:34:17', '2015-09-18 06:34:17', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 3 Jul 2015\r\nTeachers commence Monday 2 February 2015 and finish Thursday 2 April 2015.\r\n<h3>TERM 3</h3>\r\nTue 21 Jul 2015 – Fri 25 Sep 2015\r\nTeachers commence Monday 20 July 2015.\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Thu 17 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nWed 3 Feb 2016 – Fri 8 Apr 2016\r\nTeachers commence Monday 1 February 2016.\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Wed 21 Dec 2016\r\nTeachers finish Thursday 22 December 2016.\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Substitute for Boxing Day 26 December 2015\r\n\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Mon 14 Mar</h3>\r\nEight Hours Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Tue 29 Mar</h3>\r\nEaster Tuesday Restricted public holiday in Tasmania. Observed by some awards/agreements and the State Public Service.\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday Substitute for Christmas Day', 'Tas Term dates', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2015-09-18 06:34:17', '2015-09-18 06:34:17', '', 67, 'http://teach-me-pd.dev/2015/09/67-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2015-09-18 06:35:25', '2015-09-18 06:35:25', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2015-09-18 06:35:25', '2015-09-18 06:35:25', '', 0, 'http://teach-me-pd.dev/shop/', 0, 'page', '', 0),
(110, 1, '2015-09-18 06:35:25', '2015-09-18 06:35:25', '[woocommerce_cart]', 'Book', '', 'publish', 'closed', 'closed', '', 'book', '', '', '2015-09-22 05:10:12', '2015-09-22 05:10:12', '', 0, 'http://teach-me-pd.dev/cart/', 0, 'page', '', 0),
(111, 1, '2015-09-18 06:35:25', '2015-09-18 06:35:25', '[woocommerce_checkout]', 'Confirm Booking', '', 'publish', 'closed', 'closed', '', 'confirm-booking', '', '', '2015-09-22 06:06:20', '2015-09-22 06:06:20', '', 0, 'http://teach-me-pd.dev/checkout/', 0, 'page', '', 0),
(112, 1, '2015-09-18 06:35:25', '2015-09-18 06:35:25', '[wp-members page=user-profile]', 'My Account', '', 'publish', 'closed', 'closed', '', 'user-profile', '', '', '2015-09-22 05:15:39', '2015-09-22 05:15:39', '', 0, 'http://teach-me-pd.dev/my-account-2/', 0, 'page', '', 0),
(113, 1, '2015-09-18 06:37:41', '2015-09-18 06:37:41', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 13 Apr 2015 – Fri 26 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 13 Jul 2015 – Fri 18 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Fri 18 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nWed 27 Jan 2016 – Thu 24 Mar 2016\r\nFirst day of Term 1 is a student-free day.\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 11 Jul 2016 – Fri 16 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 3 Oct 2016 – Tue 20 Dec 2016\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Fri 2 Oct</h3>\r\nGrand Final Friday\r\n<h3>Tue 3 Nov</h3>\r\nMelbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council.\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Monday 28 December additional day.\r\n\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Mon 14 Mar</h3>\r\nLabour Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Tue 1 Nov</h3>\r\nMelbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council.\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday Substitute day for Christmas Day', 'Vic Term Dates', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-09-18 06:37:41', '2015-09-18 06:37:41', '', 57, 'http://teach-me-pd.dev/2015/09/57-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2015-09-18 06:39:05', '2015-09-18 06:39:05', '<h2>2015</h2>\n<h3>TERM 2</h3>\nMon 20 Apr 2015 – Fri 3 Jul 2015\n<h3>TERM 3</h3>\nMon 20 Jul 2015 – Fri 25 Sep 2015\n<h3>TERM 4</h3>\nMon 12 Oct 2015 – Thu 17 Dec 2015\nTeachers finish Friday 18 December 2015.\n<h2>2016</h2>\n<h3>TERM 1</h3>\nMon 1 Feb 2016 – Fri 8 Apr 2016\n<h3>TERM 2</h3>\nTue 26 Apr 2016 – Fri 1 Jul 2016\n<h3>TERM 3</h3>\nMon 18 Jul 2016 – Fri 23 Sep 2016\n<h3>TERM 4</h3>\nMon 10 Oct 2016 – Thu 15 Dec 2016\n\nPublic Holidays\n2015\nMon 28 Sep\nQueen\'s Birthday Some regional areas in WA may hold the Queen\'s Birthday public holiday on an different date\nFri 25 Dec\nChristmas Day\nSat 26 Dec\nBoxing Day\nMon 28 Dec\nBoxing Day holiday Additional holiday for Boxing Day 26 December 2015\n\n2016\nFri 1 Jan\nNew Year\'s Day\nTue 26 Jan\nAustralia Day\nMon 7 Mar\nLabour Day\nFri 25 Mar\nGood Friday\nMon 28 Mar\nEaster Monday\nMon 25 Apr\nAnzac Day\nMon 6 Jun\nWestern Australia Day\nMon 26 Sep\nQueen\'s Birthday Some regional areas in WA may hold the Queen\'s Birthday public holiday on an different date\nSun 25 Dec\nChristmas Day When New Year\'s Day, Anzac Day, or Christmas Day falls on a Saturday or Sunday, the next following Monday is also a public holiday.\nMon 26 Dec\nBoxing Day When Boxing Day falls on a Sunday or Monday, the next following Tuesday is also a public holiday\nMon 26 Dec\nChristmas Day holiday Substitute day for Christmas Day\nTue27Dec\nBoxing Day holiday Substitute day for Boxing Day', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '65-autosave-v1', '', '', '2015-09-18 06:39:05', '2015-09-18 06:39:05', '', 65, 'http://teach-me-pd.dev/2015/09/65-autosave-v1/', 0, 'revision', '', 0),
(115, 1, '2015-09-18 06:39:45', '2015-09-18 06:39:45', '', 'Booking Request', 'This is a booking request. We shall be in touch to confirm', 'publish', 'open', 'closed', '', 'booking-request-2', '', '', '2015-09-18 06:39:45', '2015-09-18 06:39:45', '', 0, 'http://teach-me-pd.dev/product/booking-request-2/', 0, 'product', '', 0),
(116, 1, '2015-09-18 06:40:30', '2015-09-18 06:40:30', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 3 Jul 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Thu 17 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Thu 15 Dec 2016\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 28 Sep</h3>\r\nQueen\'s Birthday Some regional areas in WA may hold the Queen\'s Birthday public holiday on an different date\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Additional holiday for Boxing Day 26 December 2015\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Mon 7 Mar</h3>\r\nLabour Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 6 Jun</h3>\r\nWestern Australia Day\r\n<h3>Mon 26 Sep</h3>\r\nQueen\'s Birthday Some regional areas in WA may hold the Queen\'s Birthday public holiday on an different date\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day When New Year\'s Day, Anzac Day, or Christmas Day falls on a Saturday or Sunday, the next following Monday is also a public holiday.\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day When Boxing Day falls on a Sunday or Monday, the next following Tuesday is also a public holiday\r\n<h3>Mon 26 Dec</h3>\r\nChristmas Day holiday Substitute day for Christmas Day\r\n<h3>Tue 27 Dec</h3>\r\nBoxing Day holiday Substitute day for Boxing Day', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2015-09-18 06:40:30', '2015-09-18 06:40:30', '', 65, 'http://teach-me-pd.dev/2015/09/65-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2015-09-18 06:50:54', '2015-09-18 06:50:54', '', 'Order &ndash; September 18, 2015 @ 06:50 AM', '', 'wc-completed', 'open', 'closed', 'order_55fbb44e5dea0', 'order-sep-18-2015-0650-am', '', '', '2015-09-18 07:04:01', '2015-09-18 07:04:01', '', 0, 'http://teach-me-pd.dev/', 0, 'shop_order', '', 2),
(118, 1, '2015-09-18 06:53:43', '2015-09-18 06:53:43', '[woocommerce_my_account]', 'My Account', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-09-18 06:53:43', '2015-09-18 06:53:43', '', 6, 'http://teach-me-pd.dev/2015/09/6-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2015-09-18 06:54:55', '2015-09-18 06:54:55', 'Coming soon', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2015-09-18 06:54:55', '2015-09-18 06:54:55', '', 0, 'http://teach-me-pd.dev/?page_id=119', 0, 'page', '', 0),
(120, 1, '2015-09-18 06:54:55', '2015-09-18 06:54:55', 'Coming soon', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2015-09-18 06:54:55', '2015-09-18 06:54:55', '', 119, 'http://teach-me-pd.dev/2015/09/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2015-09-18 06:55:02', '2015-09-18 06:55:02', '', 'Terms', '', 'publish', 'closed', 'closed', '', 'terms', '', '', '2015-09-18 06:55:02', '2015-09-18 06:55:02', '', 0, 'http://teach-me-pd.dev/?page_id=121', 0, 'page', '', 0),
(122, 1, '2015-09-18 06:55:02', '2015-09-18 06:55:02', '', 'Terms', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2015-09-18 06:55:02', '2015-09-18 06:55:02', '', 121, 'http://teach-me-pd.dev/2015/09/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2015-09-18 06:58:10', '2015-09-18 06:58:10', '[wp-members page=register]', 'Register', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-09-18 06:58:10', '2015-09-18 06:58:10', '', 10, 'http://teach-me-pd.dev/2015/09/10-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2015-09-18 06:58:17', '2015-09-18 06:58:17', '[wp-members page=login]', 'Login', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2015-09-18 06:58:17', '2015-09-18 06:58:17', '', 8, 'http://teach-me-pd.dev/2015/09/8-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2015-09-18 07:04:01', '2015-09-18 07:04:01', '', '117 | Booking Request | 1', '', 'publish', 'closed', 'closed', '', '117-booking-request-1', '', '', '2015-09-18 07:04:01', '2015-09-18 07:04:01', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_wooticket', '', 0),
(126, 1, '2015-09-18 07:04:01', '2015-09-18 07:04:01', '', '117 | Booking Request | 2', '', 'publish', 'closed', 'closed', '', '117-booking-request-2', '', '', '2015-09-18 07:04:01', '2015-09-18 07:04:01', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_wooticket', '', 0),
(127, 1, '2015-09-18 04:46:23', '2015-09-18 04:46:23', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.\r\n\r\nYou will leave the day excited, enthused and wanting to race back to your classrooms to play Kung Fu Punctuation, and many other exciting games, with your students.\r\n\r\nIn this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. Presented to you by classroom teachers - who have used the program successfully across multiple year levels - you will become their students for the day, to really understand what a Big Write &amp; VCOP classroom looks and feels like.\r\n\r\nWe will cover all stages of the program from setting up your classroom, to integration into the literacy block, running the writing session, editing, up-levelling and analysis, goal setting, and touching on assessment and data tracking.\r\n\r\nThe session runs from 9:00am to 3:30pm. You will be provided with morning tea, lunch, and delegate pack including PowerPoint notes, Australian Criterion Scale and Student Friendly Criterion Scale. However, we ask that you bring a pen and extra note taking materials, as well as your enthusiasm.', 'Day 1 - Introduction to Big Write & VCOP - Frankston Day 1 open session', '', 'publish', 'open', 'closed', '', 'day-1-introduction-to-big-write-vcop-frankston-day-1-open-session', '', '', '2015-09-18 07:10:27', '2015-09-18 07:10:27', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(128, 1, '2015-09-18 07:07:42', '2015-09-18 07:07:42', '', 'Frankston day 1', '', 'publish', 'open', 'closed', '', 'frankston-day-1', '', '', '2015-09-18 07:07:42', '2015-09-18 07:07:42', '', 0, 'http://teach-me-pd.dev/product/frankston-day-1/', 0, 'product', '', 0),
(129, 1, '2015-09-18 07:09:23', '2015-09-18 07:09:23', '', 'sun-smart-school-kids1', '', 'inherit', 'open', 'closed', '', 'sun-smart-school-kids1', '', '', '2015-09-18 07:09:23', '2015-09-18 07:09:23', '', 127, 'http://teach-me-pd.dev//app/uploads/2015/09/sun-smart-school-kids1.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2015-09-18 07:09:30', '2015-09-18 07:09:30', '', 'Frankston', '', 'publish', 'closed', 'closed', '', 'frankston', '', '', '2015-09-18 07:09:30', '2015-09-18 07:09:30', '', 0, 'http://teach-me-pd.dev/venue/frankston/', 0, 'tribe_venue', '', 0),
(131, 1, '2015-09-18 07:53:20', '2015-09-18 07:53:20', '', 'Policy', '', 'publish', 'closed', 'closed', '', 'policy', '', '', '2015-09-18 07:53:20', '2015-09-18 07:53:20', '', 0, 'http://teach-me-pd.dev/?page_id=131', 0, 'page', '', 0),
(132, 1, '2015-09-18 07:53:20', '2015-09-18 07:53:20', '', 'Policy', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2015-09-18 07:53:20', '2015-09-18 07:53:20', '', 131, 'http://teach-me-pd.dev/2015/09/131-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2015-09-22 05:10:12', '2015-09-22 05:10:12', '[woocommerce_cart]', 'Book', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2015-09-22 05:10:12', '2015-09-22 05:10:12', '', 110, 'http://teach-me-pd.dev/2015/09/110-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2015-09-22 05:15:27', '2015-09-22 05:15:27', '[wp-members page=user-profile]', 'My Account', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2015-09-22 05:15:27', '2015-09-22 05:15:27', '', 112, 'http://teach-me-pd.dev/2015/09/112-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2015-09-22 06:06:20', '2015-09-22 06:06:20', '[woocommerce_checkout]', 'Confirm Booking', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2015-09-22 06:06:20', '2015-09-22 06:06:20', '', 111, 'http://teach-me-pd.dev/2015/09/111-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2015-09-22 06:25:37', '2015-09-22 06:25:37', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2015-09-22 06:25:37', '2015-09-22 06:25:37', '', 0, 'http://teach-me-pd.dev/?p=136', 3, 'nav_menu_item', '', 0),
(137, 1, '2015-09-22 06:25:37', '2015-09-22 06:25:37', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2015-09-22 06:25:37', '2015-09-22 06:25:37', '', 0, 'http://teach-me-pd.dev/?p=137', 2, 'nav_menu_item', '', 0),
(138, 1, '2015-09-22 06:25:37', '2015-09-22 06:25:37', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2015-09-22 06:25:37', '2015-09-22 06:25:37', '', 0, 'http://teach-me-pd.dev/?p=138', 1, 'nav_menu_item', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form`
#

DROP TABLE IF EXISTS `wp_rg_form`;


#
# Table structure of table `wp_rg_form`
#

CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_form`
#
INSERT INTO `wp_rg_form` ( `id`, `title`, `date_created`, `is_active`, `is_trash`) VALUES
(1, 'Teacher Pre Reg', '2015-09-18 05:56:50', 1, 0) ;

#
# End of data contents of table `wp_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_rg_form_meta`;


#
# Table structure of table `wp_rg_form_meta`
#

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8_unicode_ci,
  `confirmations` longtext COLLATE utf8_unicode_ci,
  `notifications` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_form_meta`
#
INSERT INTO `wp_rg_form_meta` ( `form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{"title":"Teacher Pre Reg","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Submit","imageUrl":""},"fields":[{"type":"section","id":6,"label":"Provider","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"displayOnly":true,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"description":"If you would like to take advantage of marketing to over 100,000 educators already registered on a national scale, please fill out this form to request a detailed provider document with your options.","conditionalLogic":false,"formId":1,"choices":"","inputType":"","pageNumber":1},{"type":"name","id":7,"label":"Name","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","nameFormat":"advanced","inputs":[{"id":"7.2","label":"Prefix","name":"","choices":[{"text":"Mr.","value":"Mr.","isSelected":false,"price":""},{"text":"Mrs.","value":"Mrs.","isSelected":false,"price":""},{"text":"Miss","value":"Miss","isSelected":false,"price":""},{"text":"Ms.","value":"Ms.","isSelected":false,"price":""},{"text":"Dr.","value":"Dr.","isSelected":false,"price":""},{"text":"Prof.","value":"Prof.","isSelected":false,"price":""},{"text":"Rev.","value":"Rev.","isSelected":false,"price":""}],"isHidden":true,"inputType":"radio"},{"id":"7.3","label":"First","name":""},{"id":"7.4","label":"Middle","name":"","isHidden":true},{"id":"7.6","label":"Last","name":""},{"id":"7.8","label":"Suffix","name":"","isHidden":true}],"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"conditionalLogic":false,"formId":1,"choices":"","displayOnly":"","inputType":"","pageNumber":1},{"type":"email","id":8,"label":"Email","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"conditionalLogic":false,"formId":1,"choices":"","displayOnly":"","inputType":"","pageNumber":1}],"id":1,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null}', '', '{"55e8f7763453c":{"id":"55e8f7763453c","name":"Default Confirmation","isDefault":true,"type":"message","message":"<h2 style=\\"text-align: center;\\">Thanks! We shall be in touch<\\/h2>\\r\\n&nbsp;","url":"","pageId":0,"queryString":"","disableAutoformat":false,"conditionalLogic":[]}}', '{"55e8f77634189":{"isActive":true,"id":"55e8f77634189","name":"Admin Notification","event":"form_submission","to":"info@teachmepd.com.au","toType":"email","bcc":"","subject":"New submission from website - {form_title}","message":"{all_fields}","from":"info@teachmepd.com.au","fromName":"","replyTo":"","routing":null,"conditionalLogic":null,"disableAutoformat":false}}') ;

#
# End of data contents of table `wp_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_view`
#

DROP TABLE IF EXISTS `wp_rg_form_view`;


#
# Table structure of table `wp_rg_form_view`
#

CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_form_view`
#

#
# End of data contents of table `wp_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_rg_incomplete_submissions`;


#
# Table structure of table `wp_rg_incomplete_submissions`
#

CREATE TABLE `wp_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead`
#

DROP TABLE IF EXISTS `wp_rg_lead`;


#
# Table structure of table `wp_rg_lead`
#

CREATE TABLE `wp_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_lead`
#

#
# End of data contents of table `wp_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail`;


#
# Table structure of table `wp_rg_lead_detail`
#

CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_lead_detail`
#

#
# End of data contents of table `wp_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail_long`;


#
# Table structure of table `wp_rg_lead_detail_long`
#

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_lead_detail_long`
#

#
# End of data contents of table `wp_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_rg_lead_meta`;


#
# Table structure of table `wp_rg_lead_meta`
#

CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_lead_meta`
#

#
# End of data contents of table `wp_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_rg_lead_notes`;


#
# Table structure of table `wp_rg_lead_notes`
#

CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `note_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_lead_notes`
#

#
# End of data contents of table `wp_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(24, 2, 0),
(26, 2, 0),
(29, 3, 0),
(31, 3, 0),
(32, 3, 0),
(91, 1, 0),
(100, 3, 0),
(136, 8, 0),
(137, 8, 0),
(138, 8, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'nav_menu', '', 0, 3) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu Logged In', 'top-menu-logged-in', 0),
(3, 'Main Navigation', 'main-navigation', 0),
(4, 'simple', 'simple', 0),
(5, 'grouped', 'grouped', 0),
(6, 'variable', 'variable', 0),
(7, 'external', 'external', 0),
(8, 'Top Menu Logged Out', 'top-menu-logged-out', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Test Admin Name'),
(3, 1, 'last_name', 'Admin Last Name'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"7cd588a0705fe5efe1b9e939bfa29126ba681f2ebc0f5df4e5e32318b7187e20";a:4:{s:10:"expiration";i:1443578806;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36";s:5:"login";i:1442369206;}s:64:"b56e471b0c3ace5011e720d3ae315db826c419463353b7628ced935d8fb3b466";a:4:{s:10:"expiration";i:1443694543;s:2:"ip";s:14:"49.151.106.250";s:2:"ua";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36";s:5:"login";i:1442484943;}s:64:"e0bc2d05349b20015c676e8b1ca1e7199a314c0a2af3a3c2cf6bd79564149a7d";a:4:{s:10:"expiration";i:1444112791;s:2:"ip";s:13:"49.151.104.21";s:2:"ua";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36";s:5:"login";i:1442903191;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(18, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&hidetb=1&advImgDetails=show&wplink=1'),
(19, 1, 'wp_user-settings-time', '1442558277'),
(20, 1, 'billing_first_name', 'Matthew'),
(21, 1, 'billing_last_name', 'Keath'),
(22, 1, 'billing_company', ''),
(23, 1, 'billing_address_1', 'address billing'),
(24, 1, 'billing_address_2', ''),
(25, 1, 'billing_city', 'mount waverley'),
(26, 1, 'billing_postcode', '3149'),
(27, 1, 'billing_country', 'AU'),
(28, 1, 'billing_state', 'state test'),
(29, 1, 'billing_phone', '555 555 555'),
(30, 1, 'billing_email', 'admin@teach-me-pd.dev'),
(31, 1, 'shipping_first_name', ''),
(32, 1, 'shipping_last_name', ''),
(33, 1, 'shipping_company', ''),
(34, 1, 'shipping_address_1', ''),
(35, 1, 'shipping_address_2', ''),
(36, 1, 'shipping_city', ''),
(37, 1, 'shipping_postcode', ''),
(38, 1, 'shipping_country', ''),
(39, 1, 'shipping_state', ''),
(40, 1, 'nav_menu_recently_edited', '2'),
(41, 1, 'tribe_setDefaultNavMenuBoxes', '1'),
(43, 1, 'paying_customer', '1'),
(44, 1, '_money_spent', '600'),
(45, 1, '_order_count', '1'),
(46, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:1:{s:32:"76dc611d6ebaafc66cc0879c71b5db5c";a:9:{s:10:"product_id";i:128;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:3;s:10:"line_total";d:825;s:8:"line_tax";i:0;s:13:"line_subtotal";i:825;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}'),
(47, 1, 'school', 'School / attending s'),
(48, 1, 'Dietary_Requirement', 'Dietary Require'),
(49, 1, 'Mobility_Requirement', 'asdasda'),
(50, 1, 'Job_Title', 'principal'),
(51, 1, 'TO_number', ''),
(52, 1, 'dietarty_requirement', 'Dietary Requirement test'),
(53, 1, 'billing_mobility', 'test') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B5ZnzkyyqtrMtRX9mc5A4B8LSZ/sEp0', 'admin', 'admin@teach-me-pd.dev', '', '2015-09-15 01:39:22', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_api_keys`
#

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;


#
# Table structure of table `wp_woocommerce_api_keys`
#

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `permissions` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8_unicode_ci,
  `truncated_key` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_api_keys`
#

#
# End of data contents of table `wp_woocommerce_api_keys`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_attribute_taxonomies`
#

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;


#
# Table structure of table `wp_woocommerce_attribute_taxonomies`
#

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_attribute_taxonomies`
#

#
# End of data contents of table `wp_woocommerce_attribute_taxonomies`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_downloadable_product_permissions`
#

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;


#
# Table structure of table `wp_woocommerce_downloadable_product_permissions`
#

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_downloadable_product_permissions`
#

#
# End of data contents of table `wp_woocommerce_downloadable_product_permissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_order_itemmeta`
#

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;


#
# Table structure of table `wp_woocommerce_order_itemmeta`
#

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_order_itemmeta`
#
INSERT INTO `wp_woocommerce_order_itemmeta` ( `meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_qty', '2'),
(2, 1, '_tax_class', ''),
(3, 1, '_product_id', '115'),
(4, 1, '_variation_id', '0'),
(5, 1, '_line_subtotal', '600'),
(6, 1, '_line_total', '600'),
(7, 1, '_line_subtotal_tax', '0'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}') ;

#
# End of data contents of table `wp_woocommerce_order_itemmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_order_items`
#

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;


#
# Table structure of table `wp_woocommerce_order_items`
#

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_order_items`
#
INSERT INTO `wp_woocommerce_order_items` ( `order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Booking Request', 'line_item', 117) ;

#
# End of data contents of table `wp_woocommerce_order_items`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_tax_rate_locations`
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;


#
# Table structure of table `wp_woocommerce_tax_rate_locations`
#

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_tax_rate_locations`
#

#
# End of data contents of table `wp_woocommerce_tax_rate_locations`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_tax_rates`
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;


#
# Table structure of table `wp_woocommerce_tax_rates`
#

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`(191)),
  KEY `tax_rate_state` (`tax_rate_state`(191)),
  KEY `tax_rate_class` (`tax_rate_class`(191)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_tax_rates`
#

#
# End of data contents of table `wp_woocommerce_tax_rates`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_termmeta`
#

DROP TABLE IF EXISTS `wp_woocommerce_termmeta`;


#
# Table structure of table `wp_woocommerce_termmeta`
#

CREATE TABLE `wp_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `woocommerce_term_id` (`woocommerce_term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_termmeta`
#

#
# End of data contents of table `wp_woocommerce_termmeta`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#


# WordPress MySQL database migration
#
# Generated: Monday 2. November 2015 00:03 UTC
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-09-15 01:39:22', '2015-09-15 01:39:22', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0),
(2, 117, 'WooCommerce', 'woocommerce@teachme.tinbotdevelopment.com', '', '', '2015-09-18 06:50:54', '2015-09-18 06:50:54', 'Awaiting cheque payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 117, 'admin', 'admin@teach-me-pd.dev', '', '', '2015-09-18 07:04:01', '2015-09-18 07:04:01', 'Order status changed by bulk edit: Order status changed from On Hold to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 139, 'WooCommerce', 'woocommerce@teachme.tinbotdevelopment.com', '', '', '2015-09-22 06:58:08', '2015-09-22 06:58:08', 'Awaiting cheque payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 314, 'WooCommerce', 'woocommerce@teachme.tinbotdevelopment.com', '', '', '2015-10-30 00:25:47', '2015-10-30 00:25:47', 'Awaiting cheque payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 314, 'WooCommerce', 'woocommerce@teachme.tinbotdevelopment.com', '', '', '2015-10-30 00:25:47', '2015-10-30 00:25:47', 'Item #107 stock reduced from 10 to 8.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 317, 'WooCommerce', 'woocommerce@teachme.tinbotdevelopment.com', '', '', '2015-10-30 00:32:18', '2015-10-30 00:32:18', 'Awaiting cheque payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 317, 'WooCommerce', 'woocommerce@teachme.tinbotdevelopment.com', '', '', '2015-10-30 00:38:50', '2015-10-30 00:38:50', 'Order status changed from On Hold to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=2202 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3, 'siteurl', 'http://teach-me-pd.dev/wp', 'yes'),
(4, 'home', 'http://teach-me-pd.dev/wp', 'yes'),
(5, 'blogname', 'TeachMe PD', 'yes'),
(6, 'blogdescription', 'Professional Development and Training for Teachers and Educational Professionals', 'yes'),
(7, 'users_can_register', '0', 'yes'),
(8, 'admin_email', 'Bree@teachmepd.com.au', 'yes'),
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
(35, 'active_plugins', 'a:20:{i:0;s:30:"gravity-forms/gravityforms.php";i:1;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:43:"duplicate-tec-event/duplicate-tec-event.php";i:3;s:25:"event-rocket/launcher.php";i:4;s:43:"events-calendar-pro/events-calendar-pro.php";i:5;s:19:"members/members.php";i:6;s:45:"providers-management/providers-management.php";i:7;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:8;s:39:"simple-custom-css/simple-custom-css.php";i:9;s:25:"tablepress/tablepress.php";i:10;s:43:"teachers-management/teachers-management.php";i:11;s:63:"the-events-calendar-community-events/tribe-community-events.php";i:12;s:43:"the-events-calendar/the-events-calendar.php";i:13;s:55:"view-own-posts-media-only/view-own-posts-media-only.php";i:14;s:59:"woocommerce-checkout-field-editor/checkout-field-editor.php";i:15;s:71:"woocommerce-poor-guys-swiss-knife/woocommerce-poor-guys-swiss-knife.php";i:16;s:27:"woocommerce/woocommerce.php";i:17;s:25:"wootickets/wootickets.php";i:18;s:25:"wp-members/wp-members.php";i:19;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
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
(84, 'uninstall_plugins', 'a:2:{s:71:"woocommerce-poor-guys-swiss-knife/woocommerce-poor-guys-swiss-knife.php";s:18:"wcpgsk_uninstaller";s:39:"simple-custom-css/simple-custom-css.php";s:15:"sccss_uninstall";}', 'no'),
(85, 'timezone_string', '', 'yes'),
(86, 'page_for_posts', '0', 'yes'),
(87, 'page_on_front', '1073741824', 'yes'),
(88, 'default_post_format', '0', 'yes'),
(89, 'link_manager_enabled', '0', 'yes'),
(90, 'finished_splitting_shared_terms', '1', 'yes'),
(91, 'initial_db_version', '33055', 'yes'),
(92, 'wp_user_roles', 'a:9:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:178:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:25:"read_private_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:24:"edit_others_tribe_events";b:1;s:25:"edit_private_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:26:"delete_others_tribe_events";b:1;s:27:"delete_private_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:29:"read_private_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:28:"edit_others_tribe_organizers";b:1;s:29:"edit_private_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:30:"delete_others_tribe_organizers";b:1;s:31:"delete_private_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:25:"read_private_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:24:"edit_others_tribe_venues";b:1;s:25:"edit_private_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:26:"delete_others_tribe_venues";b:1;s:27:"delete_private_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:10:"list_roles";b:1;s:12:"create_roles";b:1;s:12:"delete_roles";b:1;s:10:"edit_roles";b:1;s:16:"restrict_content";b:1;s:22:"tablepress_edit_tables";b:1;s:24:"tablepress_delete_tables";b:1;s:22:"tablepress_list_tables";b:1;s:21:"tablepress_add_tables";b:1;s:22:"tablepress_copy_tables";b:1;s:24:"tablepress_import_tables";b:1;s:24:"tablepress_export_tables";b:1;s:32:"tablepress_access_options_screen";b:1;s:30:"tablepress_access_about_screen";b:1;s:29:"tablepress_import_tables_wptr";b:1;s:23:"tablepress_edit_options";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:73:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:25:"read_private_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:24:"edit_others_tribe_events";b:1;s:25:"edit_private_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:26:"delete_others_tribe_events";b:1;s:27:"delete_private_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:29:"read_private_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:28:"edit_others_tribe_organizers";b:1;s:29:"edit_private_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:30:"delete_others_tribe_organizers";b:1;s:31:"delete_private_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:25:"read_private_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:24:"edit_others_tribe_venues";b:1;s:25:"edit_private_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:26:"delete_others_tribe_venues";b:1;s:27:"delete_private_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:22:"tablepress_edit_tables";b:1;s:24:"tablepress_delete_tables";b:1;s:22:"tablepress_list_tables";b:1;s:21:"tablepress_add_tables";b:1;s:22:"tablepress_copy_tables";b:1;s:24:"tablepress_import_tables";b:1;s:24:"tablepress_export_tables";b:1;s:32:"tablepress_access_options_screen";b:1;s:30:"tablepress_access_about_screen";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:34:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:17:"edit_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:21:"edit_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;s:17:"edit_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:22:"tablepress_edit_tables";b:1;s:24:"tablepress_delete_tables";b:1;s:22:"tablepress_list_tables";b:1;s:21:"tablepress_add_tables";b:1;s:22:"tablepress_copy_tables";b:1;s:24:"tablepress_import_tables";b:1;s:24:"tablepress_export_tables";b:1;s:32:"tablepress_access_options_screen";b:1;s:30:"tablepress_access_about_screen";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:11:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:17:"edit_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:21:"edit_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:17:"edit_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:8:"provider";a:2:{s:4:"name";s:8:"Provider";s:12:"capabilities";a:48:{s:20:"publish_tribe_events";b:1;s:4:"read";b:1;s:12:"upload_files";b:1;s:27:"delete_private_tribe_events";b:0;s:19:"delete_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:25:"read_private_tribe_events";b:0;s:16:"activate_plugins";b:0;s:9:"add_users";b:0;s:20:"assign_product_terms";b:0;s:24:"assign_shop_coupon_terms";b:0;s:23:"assign_shop_order_terms";b:0;s:25:"assign_shop_webhook_terms";b:0;s:12:"create_roles";b:0;s:12:"create_users";b:0;s:19:"delete_others_pages";b:0;s:19:"delete_others_posts";b:0;s:22:"delete_others_products";b:0;s:26:"delete_others_shop_coupons";b:0;s:25:"delete_others_shop_orders";b:0;s:27:"delete_others_shop_webhooks";b:0;s:26:"delete_others_tribe_events";b:0;s:12:"delete_posts";b:0;s:20:"delete_private_posts";b:0;s:17:"edit_others_posts";b:1;s:10:"edit_posts";b:1;s:18:"edit_private_posts";b:0;s:13:"publish_posts";b:1;s:29:"delete_published_tribe_events";b:0;s:24:"edit_others_tribe_events";b:0;s:25:"edit_private_tribe_events";b:0;s:18:"read_private_posts";b:0;s:30:"delete_others_tribe_organizers";b:0;s:31:"delete_private_tribe_organizers";b:0;s:33:"delete_published_tribe_organizers";b:0;s:23:"delete_tribe_organizers";b:0;s:28:"edit_others_tribe_organizers";b:0;s:29:"edit_private_tribe_organizers";b:0;s:31:"edit_published_tribe_organizers";b:0;s:24:"publish_tribe_organizers";b:0;s:29:"read_private_tribe_organizers";b:0;s:22:"delete_published_posts";b:0;s:20:"edit_published_posts";b:0;s:17:"edit_tribe_venues";b:1;s:24:"edit_others_tribe_venues";b:0;s:20:"publish_tribe_venues";b:0;s:25:"read_private_tribe_venues";b:1;}}s:16:"pending_approval";a:2:{s:4:"name";s:16:"Pending Approval";s:12:"capabilities";a:0:{}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:1:{i:0;s:30:"tribe-events-adv-list-widget-2";}s:14:"sidebar-footer";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(101, 'bedrock_autoloader', 'a:2:{s:7:"plugins";a:0:{}s:5:"count";i:0;}', 'yes'),
(102, 'cron', 'a:26:{i:1442481441;a:1:{s:41:"tribe_events_pro_process_recurring_events";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:12:"every_30mins";s:4:"args";a:0:{}s:8:"interval";i:1800;}}}i:1442497411;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1442517180;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1442540626;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1442545024;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1442556498;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1442560641;a:1:{s:21:"tribe-recurrence-cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1446167514;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446167574;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446168015;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446168123;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446168535;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446168570;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446168659;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446168728;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446170007;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446170108;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446170180;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446170205;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446171875;a:2:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1446175475;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446186027;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446186664;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446189797;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1446249600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
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
(138, 'theme_mods_teach_me_pd_theme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:18:"primary_navigation";i:3;s:20:"secondary_navigation";i:2;s:17:"footer_navigation";i:9;}}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(141, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(148, 'WPLANG', '', 'yes'),
(152, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'tribe_events_calendar_options', 'a:31:{s:16:"tribeEnableViews";a:5:{i:0;s:4:"list";i:1;s:5:"month";i:2;s:4:"week";i:3;s:3:"day";i:4;s:5:"photo";}s:14:"schema-version";s:6:"3.12.1";s:27:"recurring_events_are_hidden";s:7:"exposed";s:21:"previous_ecp_versions";a:1:{i:0;s:1:"0";}s:18:"latest_ecp_version";s:6:"3.12.1";s:29:"disable_metabox_custom_fields";s:4:"hide";s:18:"pro-schema-version";s:4:"3.12";s:19:"last-update-message";s:6:"3.12.1";s:13:"earliest_date";s:19:"2015-11-05 08:45:00";s:11:"latest_date";s:19:"2015-12-14 15:30:00";s:11:"donate-link";b:0;s:12:"postsPerPage";s:2:"10";s:17:"liveFiltersUpdate";b:1;s:32:"hideSubsequentRecurrencesDefault";b:0;s:31:"userToggleSubsequentRecurrences";b:0;s:25:"recurrenceMaxMonthsBefore";s:2:"24";s:24:"recurrenceMaxMonthsAfter";s:2:"24";s:12:"showComments";b:0;s:20:"showEventsInMainLoop";b:0;s:10:"eventsSlug";s:7:"courses";s:15:"singleEventSlug";s:6:"course";s:14:"multiDayCutoff";s:5:"00:00";s:21:"defaultCurrencySymbol";s:1:"$";s:23:"reverseCurrencyPosition";b:0;s:15:"embedGoogleMaps";b:1;s:23:"geoloc_default_geofence";s:2:"25";s:19:"geoloc_default_unit";s:5:"miles";s:19:"embedGoogleMapsZoom";s:2:"10";s:11:"debugEvents";b:0;s:26:"tribe_events_timezone_mode";s:5:"event";s:32:"tribe_events_timezones_show_zone";b:0;}', 'yes'),
(161, 'tribe_last_save_post', '1446422584', 'yes'),
(163, 'widget_tribe-mini-calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(164, 'widget_tribe-events-adv-list-widget', 'a:2:{i:2;a:14:{s:5:"title";s:16:"Upcoming Courses";s:5:"limit";s:1:"5";s:18:"no_upcoming_events";N;s:5:"venue";N;s:7:"country";s:1:"1";s:7:"address";N;s:4:"city";s:1:"1";s:6:"region";s:1:"1";s:3:"zip";N;s:5:"phone";N;s:4:"cost";N;s:9:"organizer";N;s:7:"operand";s:2:"OR";s:7:"filters";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(165, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(177, 'external_updates-events-calendar-pro', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1446422047;s:14:"checkedVersion";s:4:"3.12";s:6:"update";N;}', 'yes'),
(271, 'tribe_community_events_options', 'a:18:{s:17:"maybeFlushRewrite";b:0;s:25:"allowAnonymousSubmissions";b:0;s:15:"useVisualEditor";b:0;s:13:"defaultStatus";s:7:"pending";s:20:"communityRewriteSlug";s:9:"providers";s:18:"emailAlertsEnabled";b:1;s:15:"emailAlertsList";s:21:"admin@teach-me-pd.dev";s:27:"allowUsersToEditSubmissions";b:0;s:29:"allowUsersToDeleteSubmissions";b:0;s:18:"trashItemsVsDelete";s:1:"1";s:13:"eventsPerPage";s:2:"10";s:19:"eventListDateFormat";s:6:"M j, Y";s:19:"blockRolesFromAdmin";b:0;s:14:"blockRolesList";N;s:18:"blockRolesRedirect";s:0:"";s:23:"defaultCommunityVenueID";s:1:"0";s:18:"recaptchaPublicKey";s:0:"";s:19:"recaptchaPrivateKey";s:0:"";}', 'yes'),
(272, 'WP_Router_route_hash', '7582a5b93f00575a53e6a15aba5d4bf4', 'yes'),
(274, 'acf_version', '5.3.0', 'yes'),
(275, 'Tribe__Events__Community__Schemaschema_version', '3', 'yes'),
(278, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(279, 'gform_enable_background_updates', '1', 'yes'),
(280, 'rg_form_version', '1.9.5', 'yes'),
(297, 'external_updates-events-community', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1446422047;s:14:"checkedVersion";s:4:"3.12";s:6:"update";N;}', 'yes'),
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
(397, 'woocommerce_email_from_name', 'TeachMe PD', 'no'),
(398, 'woocommerce_email_from_address', 'Bree@teachmepd.com.au', 'no'),
(399, 'woocommerce_email_header_image', 'http://teach-me-pd.dev/app/themes/teach_me_pd_theme/dist/images/logo.png', 'no'),
(400, 'woocommerce_email_footer_text', 'TeachMe PD - Powered by WooCommerce', 'no'),
(401, 'woocommerce_email_base_color', '#4bb8cc', 'no'),
(402, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(403, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(404, 'woocommerce_email_text_color', '#505050', 'no'),
(405, 'woocommerce_api_enabled', 'yes', 'yes'),
(413, 'woocommerce_language_pack_version', 'a:2:{i:0;s:5:"2.4.6";i:1;s:0:"";}', 'yes'),
(417, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(435, 'external_updates-tribe-wootickets', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1446422047;s:14:"checkedVersion";s:4:"3.12";s:6:"update";N;}', 'yes'),
(515, 'category_children', 'a:0:{}', 'yes'),
(585, 'general_options', '', 'yes'),
(586, 'pricing_options', '', 'yes'),
(591, 'woocommerce_cheque_settings', 'a:4:{s:7:"enabled";s:3:"yes";s:5:"title";s:15:"Account Payment";s:11:"description";s:135:"All payments are sent via email to either you, or the person you request. You can enter the details for this person while checking out.";s:12:"instructions";s:0:"";}', 'yes'),
(608, 'account_page_options', '', 'yes'),
(609, 'account_endpoint_options', '', 'yes'),
(610, 'account_registration_options', '', 'yes'),
(619, 'wpmembers_settings', 'a:16:{s:7:"version";s:5:"3.0.4";s:6:"notify";s:1:"1";s:7:"mod_reg";i:0;s:7:"captcha";s:1:"0";s:7:"use_exp";i:0;s:9:"use_trial";i:0;s:8:"warnings";i:0;s:10:"user_pages";a:3:{s:7:"profile";s:36:"http://teach-me-pd.dev/user-profile/";s:8:"register";s:32:"http://teach-me-pd.dev/register/";s:5:"login";s:29:"http://teach-me-pd.dev/login/";}s:6:"cssurl";s:71:"http://teach-me-pd.dev//app/plugins/wp-members/css/generic-no-float.css";s:5:"style";s:71:"http://teach-me-pd.dev//app/plugins/wp-members/css/generic-no-float.css";s:6:"autoex";a:2:{s:7:"auto_ex";i:0;s:11:"auto_ex_len";s:0:"";}s:6:"attrib";i:0;s:5:"block";a:6:{s:4:"post";s:1:"0";s:4:"page";s:1:"0";s:7:"product";i:0;s:12:"tribe_events";i:0;s:11:"tribe_venue";i:0;s:14:"tribe_provider";i:0;}s:12:"show_excerpt";a:6:{s:4:"post";i:0;s:4:"page";i:0;s:7:"product";i:0;s:12:"tribe_events";i:0;s:11:"tribe_venue";i:0;s:14:"tribe_provider";i:0;}s:10:"show_login";a:6:{s:4:"post";s:1:"1";s:4:"page";s:1:"1";s:7:"product";i:0;s:12:"tribe_events";i:0;s:11:"tribe_venue";i:0;s:14:"tribe_provider";i:0;}s:8:"show_reg";a:6:{s:4:"post";s:1:"1";s:4:"page";s:1:"1";s:7:"product";i:0;s:12:"tribe_events";i:0;s:11:"tribe_venue";i:0;s:14:"tribe_provider";i:0;}}', 'yes'),
(620, 'wpmembers_fields', 'a:16:{i:0;a:8:{i:0;i:1;i:1;s:10:"First Name";i:2;s:10:"first_name";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"y";i:7;s:0:"";}i:1;a:8:{i:0;i:2;i:1;s:9:"Last Name";i:2;s:9:"last_name";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"y";i:7;s:0:"";}i:2;a:8:{i:0;i:3;i:1;s:5:"State";i:2;s:13:"billing_state";i:3;s:6:"select";i:4;s:1:"y";i:5;s:0:"";i:6;s:1:"n";i:7;a:8:{i:0;s:17:"Capital Territory";i:1;s:15:"New South Wales";i:2;s:18:"Northern Territory";i:3;s:10:"Queensland";i:4;s:15:"South Australia";i:5;s:8:"Tasmania";i:6;s:8:"Victoria";i:7;s:17:"Western Australia";}}i:3;a:8:{i:0;i:4;i:1;s:7:"Address";i:2;s:17:"billing_address_1";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"n";i:7;s:0:"";}i:4;a:8:{i:0;i:5;i:1;s:6:"Mobile";i:2;s:13:"billing_phone";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"n";i:7;s:0:"";}i:5;a:8:{i:0;i:6;i:1;s:5:"Email";i:2;s:10:"user_email";i:3;s:4:"text";i:4;s:1:"y";i:5;s:1:"y";i:6;s:1:"y";i:7;s:0:"";}i:6;a:8:{i:0;i:7;i:1;s:13:"Confirm Email";i:2;s:13:"confirm_email";i:3;s:4:"text";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:0:"";}i:7;a:8:{i:0;i:8;i:1;s:7:"Website";i:2;s:8:"user_url";i:3;s:4:"text";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"y";i:7;s:0:"";}i:8;a:8:{i:0;i:9;i:1;s:17:"Biographical Info";i:2;s:11:"description";i:3;s:8:"textarea";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"y";i:7;s:0:"";}i:9;a:8:{i:0;i:10;i:1;s:8:"Password";i:2;s:8:"password";i:3;s:8:"password";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:0:"";}i:10;a:8:{i:0;i:11;i:1;s:16:"Confirm Password";i:2;s:16:"confirm_password";i:3;s:8:"password";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:0:"";}i:11;a:9:{i:0;i:12;i:1;s:3:"TOS";i:2;s:3:"tos";i:3;s:8:"checkbox";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:5:"agree";i:8;s:1:"n";}i:12;a:8:{i:0;i:13;i:1;s:26:"School / attending school:";i:2;s:6:"school";i:3;s:4:"text";i:4;s:0:"";i:5;s:1:"y";i:6;s:1:"n";i:7;s:0:"";}i:13;a:8:{i:0;i:14;i:1;s:9:"Job Title";i:2;s:9:"job_title";i:3;s:4:"text";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:0:"";}i:14;a:8:{i:0;i:15;i:1;s:20:"Dietary Requirements";i:2;s:15:"billing_dietary";i:3;s:8:"textarea";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:0:"";}i:15;a:8:{i:0;i:16;i:1;s:21:"Mobility Requirements";i:2;s:16:"billing_mobility";i:3;s:8:"textarea";i:4;s:0:"";i:5;s:0:"";i:6;s:1:"n";i:7;s:0:"";}}', 'yes'),
(621, 'wpmembers_tos', 'Put your TOS (Terms of Service) text here.  You can use HTML markup.', 'yes'),
(622, 'wpmembers_dialogs', 'a:9:{i:0;s:119:"This content is restricted to site members.  If you are an existing user, please log in.  New users may register below.";i:1;s:50:"Sorry, that username is taken, please try another.";i:2;s:74:"Sorry, that email address already has an account.<br />Please try another.";i:3;s:124:"Congratulations! Your registration was successful.<br /><br />You may now log in using the password that was emailed to you.";i:4;s:29:"Your information was updated!";i:5;s:53:"Passwords did not match.<br /><br />Please try again.";i:6;s:30:"Password successfully changed!";i:7;s:65:"Either the username or email address do not exist in our records.";i:8;s:135:"Password successfully reset!<br /><br />An email containing a new password has been sent to the email address on file for your account.";}', 'yes'),
(623, 'wpmembers_email_newreg', 'a:2:{s:4:"subj";s:37:"Your registration info for [blogname]";s:4:"body";s:268:"Thank you for registering for [blogname]\r\n\r\nYour registration information is below.\r\nYou may wish to retain a copy for your records.\r\n\r\nusername: [username]\r\npassword: [password]\r\n\r\nYou may login here:\r\n[reglink]\r\n\r\nYou may change your password here:\r\n[members-area]\r\n";}', 'no'),
(624, 'wpmembers_email_newmod', 'a:2:{s:4:"subj";s:40:"Thank you for registering for [blogname]";s:4:"body";s:173:"Thank you for registering for [blogname]. \r\nYour registration has been received and is pending approval.\r\nYou will receive login instructions upon approval of your account\r\n";}', 'no'),
(625, 'wpmembers_email_appmod', 'a:2:{s:4:"subj";s:50:"Your registration for [blogname] has been approved";s:4:"body";s:299:"Your registration for [blogname] has been approved.\r\n\r\nYour registration information is below.\r\nYou may wish to retain a copy for your records.\r\n\r\nusername: [username]\r\npassword: [password]\r\n\r\nYou may login and change your password here:\r\n[members-area]\r\n\r\nYou originally registered at:\r\n[reglink]\r\n";}', 'no'),
(626, 'wpmembers_email_repass', 'a:2:{s:4:"subj";s:34:"Your password reset for [blogname]";s:4:"body";s:157:"Your password for [blogname] has been reset\r\n\r\nYour new password is included below. You may wish to retain a copy for your records.\r\n\r\npassword: [password]\r\n";}', 'no'),
(627, 'wpmembers_email_notify', 'a:2:{s:4:"subj";s:36:"New user registration for [blogname]";s:4:"body";s:194:"The following user registered for [blogname]:\r\n\r\nusername: [username]\r\nemail: [email]\r\n\r\n[fields]\r\nThis user registered here:\r\n[reglink]\r\n\r\nuser IP: [user-ip]\r\n\r\nactivate user: [activate-user]\r\n";}', 'no'),
(628, 'wpmembers_email_footer', '----------------------------------\r\nThis is an automated message from [blogname]\r\nPlease do not reply to this address', 'no'),
(629, 'wpmembers_style', 'http://teach-me-pd.dev//app/plugins/wp-members/css/generic-no-float.css', 'yes'),
(636, 'wpmembers_utfields', 'a:4:{s:10:"first_name";s:10:"First Name";s:9:"last_name";s:9:"Last Name";s:13:"billing_state";s:5:"State";s:17:"billing_address_1";s:7:"Address";}', 'yes'),
(651, '_wc_session_c2ca561430b31de5fa2811e2638b8de2', 'a:22:{s:4:"cart";s:306:"a:1:{s:32:"a97da629b098b75c294dffdc3e463904";a:9:{s:10:"product_id";i:107;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:275;s:8:"line_tax";i:0;s:13:"line_subtotal";i:275;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:275;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:1;s:5:"total";d:275;s:8:"subtotal";i:275;s:15:"subtotal_ex_tax";i:275;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:6:"cheque";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";}', 'no'),
(652, '_wc_session_expires_c2ca561430b31de5fa2811e2638b8de2', '1442734823', 'no'),
(671, '_wc_session_18c91a19f9fc03bc6610ef8582c8c152', 'a:22:{s:4:"cart";s:306:"a:1:{s:32:"76dc611d6ebaafc66cc0879c71b5db5c";a:9:{s:10:"product_id";i:128;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:275;s:8:"line_tax";i:0;s:13:"line_subtotal";i:275;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:275;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:1;s:5:"total";d:275;s:8:"subtotal";i:275;s:15:"subtotal_ex_tax";i:275;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:6:"cheque";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";}', 'no'),
(672, '_wc_session_expires_18c91a19f9fc03bc6610ef8582c8c152', '1442990930', 'no'),
(677, '_wc_session_613f1eb142f6bb78e756d313183ffe17', 'a:22:{s:4:"cart";s:306:"a:1:{s:32:"76dc611d6ebaafc66cc0879c71b5db5c";a:9:{s:10:"product_id";i:128;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:275;s:8:"line_tax";i:0;s:13:"line_subtotal";i:275;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:275;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:1;s:5:"total";d:275;s:8:"subtotal";i:275;s:15:"subtotal_ex_tax";i:275;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:6:"cheque";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";}', 'no'),
(678, '_wc_session_expires_613f1eb142f6bb78e756d313183ffe17', '1443056754', 'no'),
(723, 'wc_fields_billing', 'a:19:{s:18:"billing_first_name";a:11:{s:5:"label";s:10:"First Name";s:8:"required";b:1;s:5:"class";a:1:{i:22;s:14:"form-row-first";}s:4:"type";s:4:"text";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:1:"1";s:7:"enabled";b:1;s:8:"validate";a:1:{i:0;s:8:"required";}s:6:"custom";b:0;}s:17:"billing_last_name";a:11:{s:5:"label";s:9:"Last Name";s:8:"required";b:1;s:5:"class";a:1:{i:22;s:13:"form-row-last";}s:5:"clear";b:0;s:4:"type";s:4:"text";s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:1:"2";s:7:"enabled";b:1;s:8:"validate";a:1:{i:0;s:8:"required";}s:6:"custom";b:0;}s:15:"billing_company";a:11:{s:5:"label";s:12:"Company Name";s:5:"class";a:1:{i:22;s:13:"form-row-wide";}s:4:"type";s:4:"text";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:1:"3";s:7:"enabled";b:0;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:0;}s:13:"billing_email";a:11:{s:5:"label";s:13:"Email Address";s:8:"required";b:1;s:4:"type";s:4:"text";s:5:"class";a:1:{i:22;s:14:"form-row-first";}s:8:"validate";a:2:{i:0;s:8:"required";i:1;s:5:"email";}s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:1:"4";s:7:"enabled";b:1;s:6:"custom";b:0;}s:13:"billing_phone";a:11:{s:5:"label";s:6:"Mobile";s:8:"required";b:1;s:4:"type";s:4:"text";s:5:"class";a:1:{i:22;s:13:"form-row-last";}s:5:"clear";b:1;s:8:"validate";a:1:{i:0;s:8:"required";}s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:1:"5";s:7:"enabled";b:1;s:6:"custom";b:0;}s:15:"billing_country";a:11:{s:4:"type";s:7:"country";s:5:"label";s:7:"Country";s:8:"required";b:1;s:5:"class";a:3:{i:1;s:13:"address-field";i:2;s:23:"update_totals_on_change";i:24;s:13:"form-row-wide";}s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:1:"6";s:7:"enabled";b:1;s:8:"validate";a:1:{i:0;s:8:"required";}s:6:"custom";b:0;}s:17:"billing_address_1";a:10:{s:5:"label";s:7:"Address";s:11:"placeholder";s:14:"Street address";s:8:"required";b:1;s:5:"class";a:2:{i:1;s:13:"address-field";i:23;s:13:"form-row-wide";}s:4:"type";s:4:"text";s:5:"clear";b:0;s:7:"options";a:0:{}s:5:"order";s:1:"7";s:7:"enabled";b:1;s:6:"custom";b:0;}s:17:"billing_address_2";a:10:{s:11:"placeholder";s:38:"Apartment, suite, unit etc. (optional)";s:5:"class";a:2:{i:1;s:13:"address-field";i:23;s:13:"form-row-wide";}s:8:"required";b:0;s:4:"type";s:4:"text";s:5:"label";s:0:"";s:5:"clear";b:0;s:7:"options";a:0:{}s:5:"order";s:1:"8";s:7:"enabled";b:0;s:6:"custom";b:0;}s:12:"billing_city";a:10:{s:5:"label";s:0:"";s:11:"placeholder";s:0:"";s:8:"required";b:1;s:5:"class";a:2:{i:1;s:13:"address-field";i:23;s:13:"form-row-wide";}s:4:"type";s:4:"text";s:5:"clear";b:0;s:7:"options";a:0:{}s:5:"order";s:1:"9";s:7:"enabled";b:1;s:6:"custom";b:0;}s:13:"billing_state";a:11:{s:4:"type";s:5:"state";s:5:"label";s:0:"";s:8:"required";b:1;s:5:"class";a:2:{i:1;s:13:"address-field";i:23;s:14:"form-row-first";}s:8:"validate";a:1:{i:0;s:5:"state";}s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"10";s:7:"enabled";b:1;s:6:"custom";b:0;}s:16:"billing_postcode";a:11:{s:5:"label";s:0:"";s:11:"placeholder";s:0:"";s:8:"required";b:1;s:5:"class";a:2:{i:1;s:13:"address-field";i:23;s:13:"form-row-last";}s:5:"clear";b:1;s:8:"validate";a:1:{i:0;s:8:"postcode";}s:4:"type";s:4:"text";s:7:"options";a:0:{}s:5:"order";s:2:"11";s:7:"enabled";b:1;s:6:"custom";b:0;}s:6:"school";a:12:{s:4:"type";s:4:"text";s:5:"label";s:14:"Confirm School";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"12";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:19;s:13:"form-row-wide";}}s:15:"billing_dietary";a:12:{s:4:"type";s:8:"textarea";s:5:"label";s:28:"Confirm Dietary Requirements";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"13";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:1;s:13:"form-row-wide";}}s:16:"billing_mobility";a:12:{s:4:"type";s:4:"text";s:5:"label";s:20:"Mobility Requirement";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"14";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:8;s:13:"form-row-wide";}}s:9:"job_title";a:12:{s:4:"type";s:6:"select";s:5:"label";s:9:"Job Title";s:5:"clear";b:0;s:7:"options";a:6:{s:9:"Principal";s:9:"Principal";s:19:"Assistant Principal";s:19:"Assistant Principal";s:32:"Business Manager ­ Office Admin";s:32:"Business Manager ­ Office Admin";s:24:"Teacher ­Supply Teacher";s:24:"Teacher ­Supply Teacher";s:7:"Student";s:7:"Student";s:17:"Interrogation Aid";s:17:"Interrogation Aid";}s:11:"placeholder";s:0:"";s:5:"order";s:2:"15";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:17;s:13:"form-row-wide";}}s:9:"to_number";a:12:{s:4:"type";s:4:"text";s:5:"label";s:9:"TO Number";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"16";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:16;s:13:"form-row-wide";}}s:14:"invoice_school";a:12:{s:4:"type";s:5:"radio";s:5:"label";s:7:"Invoice";s:5:"clear";b:0;s:7:"options";a:2:{s:10:"Invoice Me";s:10:"Invoice Me";s:17:"Invoice My School";s:17:"Invoice My School";}s:11:"placeholder";s:0:"";s:5:"order";s:2:"17";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:5;s:13:"form-row-wide";}}s:12:"manager_name";a:12:{s:4:"type";s:4:"text";s:5:"label";s:21:"Business Manager Name";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"18";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:4;s:13:"form-row-wide";}}s:13:"manager_email";a:12:{s:4:"type";s:4:"text";s:5:"label";s:22:"Business Manager Email";s:5:"clear";b:0;s:7:"options";a:0:{}s:11:"placeholder";s:0:"";s:5:"order";s:2:"19";s:7:"enabled";b:1;s:8:"validate";a:0:{}s:8:"required";b:0;s:6:"custom";b:1;s:15:"display_options";a:0:{}s:5:"class";a:1:{i:4;s:13:"form-row-wide";}}}', 'yes'),
(724, 'wcpgsk-version', '2.2.4', 'yes'),
(725, 'wcpgsk_settings', 'a:6:{s:7:"filters";a:19:{s:18:"loop_shop_per_page";s:2:"10";s:17:"loop_shop_columns";s:1:"4";s:38:"woocommerce_product_thumbnails_columns";s:1:"3";s:42:"woocommerce_create_account_default_checked";s:1:"0";s:32:"woocommerce_countries_tax_or_vat";s:3:"Tax";s:36:"woocommerce_countries_inc_tax_or_vat";s:11:"(incl. tax)";s:35:"woocommerce_countries_ex_tax_or_vat";s:9:"(ex. tax)";s:41:"woocommerce_product_description_tab_title";s:11:"Description";s:39:"woocommerce_product_description_heading";s:19:"Product Description";s:52:"woocommerce_product_additional_information_tab_title";s:22:"Additional Information";s:50:"woocommerce_product_additional_information_heading";s:22:"Additional Information";s:29:"woocommerce_order_button_text";s:11:"Place order";s:33:"woocommerce_pay_order_button_text";s:13:"Pay for order";s:46:"woocommerce_checkout_must_be_logged_in_message";s:34:"You must be logged in to checkout.";s:34:"woocommerce_checkout_login_message";s:19:"Returning customer?";s:35:"woocommerce_checkout_coupon_message";s:14:"Have a coupon?";s:40:"woocommerce_checkout_coupon_link_message";s:29:"Click here to enter your code";s:40:"woocommerce_thankyou_order_received_text";s:40:"Thank you. Your order has been received.";s:31:"woocommerce_placeholder_img_src";s:0:"";}s:7:"process";a:14:{s:8:"fastcart";s:1:"0";s:12:"fastcheckout";s:1:"0";s:15:"paymentgateways";s:1:"0";s:11:"onsalelabel";s:5:"Sale!";s:14:"backorderlabel";s:0:"";s:15:"fastcheckoutbtn";s:0:"";s:11:"readmorebtn";s:0:"";s:15:"viewproductsbtn";s:0:"";s:16:"selectoptionsbtn";s:0:"";s:13:"buyproductbtn";s:0:"";s:13:"outofstockbtn";s:0:"";s:16:"empty_price_html";s:0:"";s:14:"emptycartlabel";s:11:"Empty cart?";s:16:"confirmemptycart";s:15:"Yes, empty cart";}s:5:"email";a:2:{s:11:"wc_cc_email";s:0:"";s:12:"wc_bcc_email";s:0:"";}s:4:"cart";a:23:{s:12:"addemptycart";s:1:"0";s:12:"minitemscart";i:0;s:12:"maxitemscart";i:0;s:24:"variationscountasproduct";s:1:"0";s:10:"maxqtycart";i:0;s:10:"minqtycart";i:0;s:17:"minmaxstepproduct";s:1:"0";s:21:"variationproductnoqty";s:1:"0";s:20:"variableproductnoqty";s:1:"0";s:20:"externalproductnoqty";s:1:"0";s:18:"simpleproductnoqty";s:1:"0";s:16:"minqty_variation";i:0;s:16:"maxqty_variation";i:0;s:17:"stepqty_variation";i:0;s:15:"minqty_variable";i:0;s:15:"maxqty_variable";i:0;s:16:"stepqty_variable";i:0;s:15:"minqty_external";i:0;s:15:"maxqty_external";i:0;s:16:"stepqty_external";i:0;s:13:"minqty_simple";i:0;s:13:"maxqty_simple";i:0;s:14:"stepqty_simple";i:0;}s:12:"checkoutform";a:13:{s:7:"mindate";i:0;s:7:"maxdate";s:3:"450";s:13:"caltimepicker";s:1:"0";s:11:"caltimeampm";s:1:"0";s:8:"cssclass";s:0:"";s:16:"morebillingtitle";s:0:"";s:17:"moreshippingtitle";s:0:"";s:21:"billingemailvalidator";s:1:"0";s:17:"default_address_1";s:1:"0";s:17:"default_address_2";s:1:"0";s:13:"default_state";s:1:"0";s:16:"default_postcode";s:1:"0";s:12:"default_city";s:1:"0";}s:9:"woofields";a:211:{s:24:"order_billing_first_name";s:1:"1";s:25:"remove_billing_first_name";s:1:"0";s:27:"required_billing_first_name";s:1:"1";s:28:"hideorder_billing_first_name";s:1:"0";s:31:"customeronly_billing_first_name";s:1:"1";s:24:"label_billing_first_name";s:10:"First Name";s:30:"placeholder_billing_first_name";s:0:"";s:24:"class_billing_first_name";s:14:"form-row-first";s:23:"order_billing_last_name";s:1:"2";s:24:"remove_billing_last_name";s:1:"0";s:26:"required_billing_last_name";s:1:"1";s:27:"hideorder_billing_last_name";s:1:"0";s:30:"customeronly_billing_last_name";s:1:"1";s:23:"label_billing_last_name";s:9:"Last Name";s:29:"placeholder_billing_last_name";s:0:"";s:23:"class_billing_last_name";s:13:"form-row-last";s:19:"order_billing_email";s:1:"3";s:20:"remove_billing_email";s:1:"0";s:22:"required_billing_email";s:1:"1";s:23:"hideorder_billing_email";s:1:"0";s:26:"customeronly_billing_email";s:1:"0";s:19:"label_billing_email";s:13:"Email Address";s:25:"placeholder_billing_email";s:0:"";s:19:"class_billing_email";s:14:"form-row-first";s:19:"order_billing_phone";s:1:"4";s:20:"remove_billing_phone";s:1:"0";s:22:"required_billing_phone";s:1:"1";s:23:"hideorder_billing_phone";s:1:"0";s:26:"customeronly_billing_phone";s:1:"0";s:19:"label_billing_phone";s:6:"Mobile";s:25:"placeholder_billing_phone";s:0:"";s:19:"class_billing_phone";s:13:"form-row-last";s:21:"order_billing_country";s:1:"5";s:22:"remove_billing_country";s:1:"0";s:24:"required_billing_country";s:1:"1";s:25:"hideorder_billing_country";s:1:"0";s:28:"customeronly_billing_country";s:1:"0";s:21:"label_billing_country";s:7:"Country";s:27:"placeholder_billing_country";s:0:"";s:21:"class_billing_country";s:13:"form-row-wide";s:23:"order_billing_address_1";s:1:"6";s:24:"remove_billing_address_1";s:1:"0";s:26:"required_billing_address_1";s:1:"1";s:27:"hideorder_billing_address_1";s:1:"0";s:30:"customeronly_billing_address_1";s:1:"0";s:23:"label_billing_address_1";s:7:"Address";s:29:"placeholder_billing_address_1";s:14:"Street address";s:23:"class_billing_address_1";s:13:"form-row-wide";s:18:"order_billing_city";s:1:"7";s:19:"remove_billing_city";s:1:"0";s:21:"required_billing_city";s:1:"1";s:22:"hideorder_billing_city";s:1:"0";s:25:"customeronly_billing_city";s:1:"0";s:18:"label_billing_city";s:6:"Suburb";s:24:"placeholder_billing_city";s:6:"Suburb";s:18:"class_billing_city";s:13:"form-row-wide";s:19:"order_billing_state";s:1:"8";s:20:"remove_billing_state";s:1:"0";s:22:"required_billing_state";s:1:"1";s:23:"hideorder_billing_state";s:1:"0";s:26:"customeronly_billing_state";s:1:"0";s:19:"label_billing_state";s:5:"State";s:25:"placeholder_billing_state";s:0:"";s:19:"class_billing_state";s:14:"form-row-first";s:22:"order_billing_postcode";s:1:"9";s:23:"remove_billing_postcode";s:1:"0";s:25:"required_billing_postcode";s:1:"1";s:26:"hideorder_billing_postcode";s:1:"0";s:29:"customeronly_billing_postcode";s:1:"0";s:22:"label_billing_postcode";s:8:"Postcode";s:28:"placeholder_billing_postcode";s:8:"Postcode";s:22:"class_billing_postcode";s:13:"form-row-last";s:12:"order_school";s:2:"10";s:13:"remove_school";s:1:"0";s:15:"required_school";s:1:"1";s:16:"hideorder_school";s:1:"0";s:19:"customeronly_school";s:1:"0";s:12:"label_school";s:14:"Confirm School";s:18:"placeholder_school";s:0:"";s:12:"class_school";s:13:"form-row-wide";s:21:"order_billing_dietary";s:2:"12";s:7:"billing";a:1:{s:15:"billing_dietary";a:1:{s:22:"custom_billing_dietary";s:15:"billing_dietary";}}s:22:"remove_billing_dietary";s:1:"0";s:24:"required_billing_dietary";s:1:"0";s:25:"hideorder_billing_dietary";s:1:"1";s:28:"customeronly_billing_dietary";s:1:"0";s:21:"label_billing_dietary";s:28:"Confirm Dietary Requirements";s:27:"placeholder_billing_dietary";s:0:"";s:21:"class_billing_dietary";s:13:"form-row-wide";s:20:"type_billing_dietary";s:4:"text";s:24:"settings_billing_dietary";s:0:"";s:22:"order_billing_mobility";s:2:"13";s:23:"remove_billing_mobility";s:1:"0";s:25:"required_billing_mobility";s:1:"1";s:26:"hideorder_billing_mobility";s:1:"0";s:29:"customeronly_billing_mobility";s:1:"0";s:22:"label_billing_mobility";s:20:"Mobility Requirement";s:28:"placeholder_billing_mobility";s:0:"";s:22:"class_billing_mobility";s:13:"form-row-wide";s:15:"order_job_title";s:2:"14";s:16:"remove_job_title";s:1:"0";s:18:"required_job_title";s:1:"1";s:19:"hideorder_job_title";s:1:"0";s:22:"customeronly_job_title";s:1:"0";s:15:"label_job_title";s:9:"Job Title";s:21:"placeholder_job_title";s:0:"";s:15:"class_job_title";s:13:"form-row-wide";s:15:"order_to_number";s:2:"15";s:16:"remove_to_number";s:1:"0";s:18:"required_to_number";s:1:"0";s:19:"hideorder_to_number";s:1:"0";s:22:"customeronly_to_number";s:1:"0";s:15:"label_to_number";s:9:"TO Number";s:21:"placeholder_to_number";s:0:"";s:15:"class_to_number";s:13:"form-row-wide";s:20:"order_invoice_school";s:2:"16";s:21:"remove_invoice_school";s:1:"0";s:23:"required_invoice_school";s:1:"1";s:24:"hideorder_invoice_school";s:1:"0";s:27:"customeronly_invoice_school";s:1:"0";s:20:"label_invoice_school";s:7:"Invoice";s:26:"placeholder_invoice_school";s:0:"";s:20:"class_invoice_school";s:13:"form-row-wide";s:18:"order_manager_name";s:2:"17";s:19:"remove_manager_name";s:1:"0";s:21:"required_manager_name";s:1:"0";s:22:"hideorder_manager_name";s:1:"0";s:25:"customeronly_manager_name";s:1:"1";s:18:"label_manager_name";s:21:"Business Manager Name";s:24:"placeholder_manager_name";s:0:"";s:18:"class_manager_name";s:13:"form-row-wide";s:19:"order_manager_email";s:2:"18";s:20:"remove_manager_email";s:1:"0";s:22:"required_manager_email";s:1:"0";s:23:"hideorder_manager_email";s:1:"0";s:26:"customeronly_manager_email";s:1:"1";s:19:"label_manager_email";s:22:"Business Manager Email";s:25:"placeholder_manager_email";s:0:"";s:19:"class_manager_email";s:13:"form-row-wide";s:25:"order_shipping_first_name";s:1:"1";s:26:"remove_shipping_first_name";s:1:"0";s:28:"required_shipping_first_name";s:1:"1";s:29:"hideorder_shipping_first_name";s:1:"0";s:32:"customeronly_shipping_first_name";s:1:"0";s:25:"label_shipping_first_name";s:10:"First Name";s:31:"placeholder_shipping_first_name";s:0:"";s:25:"class_shipping_first_name";s:14:"form-row-first";s:24:"order_shipping_last_name";s:1:"2";s:25:"remove_shipping_last_name";s:1:"0";s:27:"required_shipping_last_name";s:1:"1";s:28:"hideorder_shipping_last_name";s:1:"0";s:31:"customeronly_shipping_last_name";s:1:"0";s:24:"label_shipping_last_name";s:9:"Last Name";s:30:"placeholder_shipping_last_name";s:0:"";s:24:"class_shipping_last_name";s:13:"form-row-last";s:22:"order_shipping_company";s:1:"3";s:23:"remove_shipping_company";s:1:"0";s:25:"required_shipping_company";s:1:"0";s:26:"hideorder_shipping_company";s:1:"0";s:29:"customeronly_shipping_company";s:1:"0";s:22:"label_shipping_company";s:12:"Company Name";s:28:"placeholder_shipping_company";s:0:"";s:22:"class_shipping_company";s:13:"form-row-wide";s:22:"order_shipping_country";s:1:"4";s:23:"remove_shipping_country";s:1:"0";s:25:"required_shipping_country";s:1:"1";s:26:"hideorder_shipping_country";s:1:"0";s:29:"customeronly_shipping_country";s:1:"0";s:22:"label_shipping_country";s:7:"Country";s:28:"placeholder_shipping_country";s:0:"";s:22:"class_shipping_country";s:13:"form-row-wide";s:24:"order_shipping_address_1";s:1:"5";s:25:"remove_shipping_address_1";s:1:"0";s:27:"required_shipping_address_1";s:1:"1";s:28:"hideorder_shipping_address_1";s:1:"0";s:31:"customeronly_shipping_address_1";s:1:"0";s:24:"label_shipping_address_1";s:7:"Address";s:30:"placeholder_shipping_address_1";s:14:"Street address";s:24:"class_shipping_address_1";s:13:"form-row-wide";s:24:"order_shipping_address_2";s:1:"6";s:25:"remove_shipping_address_2";s:1:"0";s:27:"required_shipping_address_2";s:1:"0";s:28:"hideorder_shipping_address_2";s:1:"0";s:31:"customeronly_shipping_address_2";s:1:"0";s:24:"label_shipping_address_2";s:0:"";s:30:"placeholder_shipping_address_2";s:38:"Apartment, suite, unit etc. (optional)";s:24:"class_shipping_address_2";s:13:"form-row-wide";s:19:"order_shipping_city";s:1:"7";s:20:"remove_shipping_city";s:1:"0";s:22:"required_shipping_city";s:1:"1";s:23:"hideorder_shipping_city";s:1:"0";s:26:"customeronly_shipping_city";s:1:"0";s:19:"label_shipping_city";s:6:"Suburb";s:25:"placeholder_shipping_city";s:6:"Suburb";s:19:"class_shipping_city";s:13:"form-row-wide";s:20:"order_shipping_state";s:1:"8";s:21:"remove_shipping_state";s:1:"0";s:23:"required_shipping_state";s:1:"1";s:24:"hideorder_shipping_state";s:1:"0";s:27:"customeronly_shipping_state";s:1:"0";s:20:"label_shipping_state";s:5:"State";s:26:"placeholder_shipping_state";s:0:"";s:20:"class_shipping_state";s:14:"form-row-first";s:23:"order_shipping_postcode";s:1:"9";s:24:"remove_shipping_postcode";s:1:"0";s:26:"required_shipping_postcode";s:1:"1";s:27:"hideorder_shipping_postcode";s:1:"0";s:30:"customeronly_shipping_postcode";s:1:"0";s:23:"label_shipping_postcode";s:8:"Postcode";s:29:"placeholder_shipping_postcode";s:8:"Postcode";s:23:"class_shipping_postcode";s:13:"form-row-last";}}', 'yes'),
(732, 'checkout_process_options', '', 'yes'),
(733, 'checkout_page_options', '', 'yes'),
(734, 'checkout_endpoint_options', '', 'yes'),
(735, 'payment_gateways_options', '', 'yes'),
(736, 'woocommerce_default_gateway', '', 'yes'),
(737, 'woocommerce_gateway_order', 'a:4:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:6:"paypal";i:3;}', 'yes'),
(740, 'wc_fields_additional', 'a:1:{s:14:"order_comments";a:9:{s:4:"type";s:8:"textarea";s:5:"class";a:2:{i:0;s:5:"notes";i:1;s:14:"form-row-first";}s:5:"label";s:11:"Order Notes";s:11:"placeholder";s:56:"Notes about your order, e.g. special notes for delivery.";s:5:"clear";b:0;s:7:"options";a:0:{}s:5:"order";s:1:"1";s:7:"enabled";b:0;s:6:"custom";b:0;}}', 'yes'),
(749, '_wc_session_35ac19d5a4d088cc0034d556cc7cf9d1', 'a:22:{s:4:"cart";s:306:"a:1:{s:32:"2b44928ae11fb9384c4cf38708677c48";a:9:{s:10:"product_id";i:115;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:300;s:8:"line_tax";i:0;s:13:"line_subtotal";i:300;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:300;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:1;s:5:"total";d:300;s:8:"subtotal";i:300;s:15:"subtotal_ex_tax";i:300;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:0:"";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";}', 'no'),
(750, '_wc_session_expires_35ac19d5a4d088cc0034d556cc7cf9d1', '1443075484', 'no'),
(1006, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes'),
(1018, '_wc_session_8b82ede1b368705f04d03eb9d89c7fc2', 'a:22:{s:4:"cart";s:306:"a:1:{s:32:"2b44928ae11fb9384c4cf38708677c48";a:9:{s:10:"product_id";i:115;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:300;s:8:"line_tax";i:0;s:13:"line_subtotal";i:300;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:300;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:1;s:5:"total";d:300;s:8:"subtotal";i:300;s:15:"subtotal_ex_tax";i:300;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:0:"";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";}', 'no'),
(1019, '_wc_session_expires_8b82ede1b368705f04d03eb9d89c7fc2', '1443871124', 'no'),
(1053, 'tablepress_plugin_options', '{"plugin_options_db_version":31,"table_scheme_db_version":3,"prev_tablepress_version":"0","tablepress_version":"1.6.1","first_activation":1443762336,"message_plugin_update":false,"message_donation_nag":true,"use_custom_css":true,"use_custom_css_file":true,"custom_css":"","custom_css_minified":"","custom_css_version":0}', 'yes'),
(1056, 'tablepress_tables', '{"last_id":47,"table_post":{"1":152,"2":155,"3":165,"4":166,"5":171,"6":172,"7":176,"8":177,"9":181,"10":182,"11":186,"12":187,"13":191,"14":192,"15":196,"16":197,"17":203,"18":209,"19":212,"20":215,"21":217,"22":221,"23":223,"24":226,"25":229,"26":231,"27":233,"28":236,"29":238,"30":241,"31":242,"32":246,"33":247,"34":252,"35":253,"36":260,"37":261,"38":265,"39":266,"40":272,"41":273,"42":277,"43":278,"44":282,"45":283,"46":287,"47":289}}', 'yes'),
(1089, 'email_recipient_options', '', 'yes'),
(1090, 'email_options', '', 'yes'),
(1091, 'email_template_options', '', 'yes'),
(1112, '_wc_session_9', 'a:24:{s:4:"cart";s:306:"a:1:{s:32:"2b44928ae11fb9384c4cf38708677c48";a:9:{s:10:"product_id";i:115;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:2;s:10:"line_total";d:600;s:8:"line_tax";i:0;s:13:"line_subtotal";i:600;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:600;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:2;s:5:"total";d:600;s:8:"subtotal";i:600;s:15:"subtotal_ex_tax";i:600;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:6:"paypal";s:8:"customer";s:391:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:6:"NCrlsv";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:6:"NCrlsv";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";s:4:"post";s:701:"a:20:{s:18:"billing_first_name";s:0:"";s:17:"billing_last_name";s:0:"";s:13:"billing_email";s:27:"michael@cloudemployee.co.uk";s:13:"billing_phone";s:1:"M";s:15:"billing_country";s:2:"AU";s:17:"billing_address_1";s:6:"NCrlsv";s:12:"billing_city";s:0:"";s:13:"billing_state";s:0:"";s:16:"billing_postcode";s:0:"";s:6:"school";s:14:"Ahehma algauhg";s:20:"dietarty_requirement";s:5:"Oa wa";s:16:"billing_mobility";s:6:"Nkhkgv";s:9:"job_title";s:9:"Principal";s:9:"to_number";s:0:"";s:12:"manager_name";s:0:"";s:13:"manager_email";s:0:"";s:14:"payment_method";s:6:"paypal";s:8:"_wpnonce";s:10:"8dc4cf4ae0";s:16:"_wp_http_referer";s:45:"/confirm-booking/?wc-ajax=update_order_review";s:5:"terms";s:2:"on";}";s:10:"wc_notices";N;}', 'no'),
(1113, '_wc_session_expires_9', '1443952931', 'no'),
(1170, '_wc_session_1dd58a6a6e17aa7e6afa3bf7d61d8390', 'a:22:{s:4:"cart";s:306:"a:1:{s:32:"2b44928ae11fb9384c4cf38708677c48";a:9:{s:10:"product_id";i:115;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:300;s:8:"line_tax";i:0;s:13:"line_subtotal";i:300;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:300;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:1;s:5:"total";d:300;s:8:"subtotal";i:300;s:15:"subtotal_ex_tax";i:300;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:0:"";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";}', 'no'),
(1171, '_wc_session_expires_1dd58a6a6e17aa7e6afa3bf7d61d8390', '1444303852', 'no'),
(1194, '_wc_session_a1d808c49570350b28aec0847ac7f880', 'a:22:{s:4:"cart";s:306:"a:1:{s:32:"2b44928ae11fb9384c4cf38708677c48";a:9:{s:10:"product_id";i:115;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:300;s:8:"line_tax";i:0;s:13:"line_subtotal";i:300;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:300;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:1;s:5:"total";d:300;s:8:"subtotal";i:300;s:15:"subtotal_ex_tax";i:300;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:0:"";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";}', 'no'),
(1195, '_wc_session_expires_a1d808c49570350b28aec0847ac7f880', '1444445971', 'no'),
(1293, '_wc_session_6', 'a:20:{s:4:"cart";s:306:"a:1:{s:32:"76dc611d6ebaafc66cc0879c71b5db5c";a:9:{s:10:"product_id";i:128;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:2;s:10:"line_total";d:550;s:8:"line_tax";i:0;s:13:"line_subtotal";i:550;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:550;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:2;s:5:"total";i:0;s:8:"subtotal";i:550;s:15:"subtotal_ex_tax";i:550;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";}', 'no'),
(1294, '_wc_session_expires_6', '1444995670', 'no'),
(1722, '_wc_session_0ca74f70f3ba3fb70eb6d9ca9651b6c2', 'a:5:{s:21:"removed_cart_contents";s:6:"a:0:{}";s:14:"shipping_total";N;s:21:"chosen_payment_method";s:6:"cheque";s:8:"customer";s:449:"a:14:{s:8:"postcode";s:4:"1542";s:4:"city";s:8:"asdasdas";s:9:"address_1";s:19:"my addresss asdasda";s:9:"address_2";s:0:"";s:5:"state";s:3:"TAS";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:4:"1542";s:13:"shipping_city";s:8:"asdasdas";s:18:"shipping_address_1";s:19:"my addresss asdasda";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:3:"TAS";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";s:4:"post";s:1444:"a:21:{s:18:"billing_first_name";s:7:"Michael";s:17:"billing_last_name";s:7:"Cequina";s:13:"billing_email";s:27:"michael@cloudemployee.co.uk";s:13:"billing_phone";s:11:"01472574782";s:15:"billing_country";s:2:"AU";s:17:"billing_address_1";s:19:"my addresss asdasda";s:12:"billing_city";s:8:"asdasdas";s:13:"billing_state";s:3:"TAS";s:16:"billing_postcode";s:4:"1542";s:6:"school";s:13:"Aasdas School";s:15:"billing_dietary";s:643:"Nuztolbe avika wivhad aru zi unhuwro nuap hikbu rumek rujofzed of fon lonlafci ansufru jidu. Rug unpik cug degadfe la juwpevgo kipo sah suf wosawev uvuciod il hav zijiji. Sor fizvel irunooz ravzurza id jusus tatagis ossolco zih odi ruacomo golekca can la vaja diwovaon. Risom hovliwke me kibbulwa sekba da iti lelef megu miacaeca fi hirmoki eja koze naalokos goli cipeggis olegi. Comciep ud nid eniatawi ziolibo ted tocbirkeg jelek bovcawvo arvim helufos sozubu ti fos adipuid lirhus dapoco domoj. Wib giwpuw olahutir von gocweug si zadtecuvi uheci jil ig opajojig cel ti. Dafag racji ho dave rusnogsak iwdif fi dihec ku epageciz la wun fezep.";s:16:"billing_mobility";s:20:"Mobility Requirement";s:9:"job_title";s:9:"Principal";s:9:"to_number";s:0:"";s:14:"invoice_school";s:10:"Invoice Me";s:12:"manager_name";s:0:"";s:13:"manager_email";s:0:"";s:14:"payment_method";s:6:"cheque";s:8:"_wpnonce";s:10:"70e7032037";s:16:"_wp_http_referer";s:45:"/confirm-booking/?wc-ajax=update_order_review";s:5:"terms";s:2:"on";}";}', 'no'),
(1723, '_wc_session_expires_0ca74f70f3ba3fb70eb6d9ca9651b6c2', '1446170475', 'no'),
(1890, 'woocommerce_new_order_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:9:"recipient";s:21:"Bree@teachmepd.com.au";s:7:"subject";s:65:"[{site_title}] New customer order ({order_number}) - {order_date}";s:7:"heading";s:18:"New customer order";s:10:"email_type";s:4:"html";}', 'yes'),
(1895, 'woocommerce_db_version', '2.4.6', 'yes'),
(1896, 'woocommerce_version', '2.4.6', 'yes'),
(1898, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(1915, 'wpmembers_email_wpfrom', 'Bree@teachmepd.com.au', 'yes'),
(1916, 'wpmembers_email_wpname', 'Bree TeachMe PD', 'yes'),
(1952, 'view_own_post_media_only', 'a:4:{s:28:"select_uploaded_to_this_post";s:1:"1";s:26:"hide_attachments_type_menu";s:1:"1";s:25:"hide_other_posts_comments";s:1:"1";s:25:"exclude_custom_post_types";a:1:{i:0;s:11:"tribe_venue";}}', 'yes'),
(2086, '_wc_session_1', 'a:20:{s:4:"cart";s:606:"a:2:{s:32:"3dd48ab31d016ffcbf3314df2b3cb9ce";a:9:{s:10:"product_id";i:341;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:275;s:8:"line_tax";i:0;s:13:"line_subtotal";i:275;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"aa942ab2bfa6ebda4840e7360ce6e7ef";a:9:{s:10:"product_id";i:358;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:275;s:8:"line_tax";i:0;s:13:"line_subtotal";i:275;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:550;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:2;s:5:"total";i:0;s:8:"subtotal";i:550;s:15:"subtotal_ex_tax";i:550;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";}', 'no'),
(2087, '_wc_session_expires_1', '1446410055', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2196, 'rewrite_rules', 'a:311:{s:36:"^courses/providers/edit/venue/(\\d+)$";s:65:"index.php?tribe_event_id=$matches[1]&WP_Route=ce-edit-venue-route";s:40:"^courses/providers/edit/organizer/(\\d+)$";s:69:"index.php?tribe_event_id=$matches[1]&WP_Route=ce-edit-organizer-route";s:38:"^courses/providers/edit/event/(\\d+/?)$";s:69:"index.php?tribe_community_event_id=$matches[1]&WP_Route=ce-edit-route";s:30:"^courses/providers/edit/(\\d+)$";s:62:"index.php?tribe_id=$matches[1]&WP_Route=ce-edit-redirect-route";s:23:"^courses/providers/add$";s:31:"index.php?WP_Route=ce-add-route";s:20:"courses/providers/?$";s:43:"index.php?WP_Route=ce-redirect-to-add-route";s:32:"^courses/providers/delete/(\\d+)$";s:61:"index.php?tribe_event_id=$matches[1]&WP_Route=ce-delete-route";s:40:"^courses/providers/list(/page/(\\d+))?/?$";s:49:"index.php?page=$matches[2]&WP_Route=ce-list-route";s:17:"^wp_router/(.*?)$";s:63:"index.php?sample_argument=$matches[1]&WP_Route=wp-router-sample";s:11:"courses/map";s:49:"index.php?post_type=tribe_events&eventDisplay=map";s:46:"(.*)courses/category/(?:[^/]+/)*([^/]+)/map/?$";s:78:"index.php?tribe_events_cat=$matches[2]&post_type=tribe_events&eventDisplay=map";s:30:"(.*)courses/tag/([^/]+)/map/?$";s:65:"index.php?tag=$matches[2]&post_type=tribe_events&eventDisplay=map";s:41:"(?:course)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$";s:56:"index.php?tribe_events=$matches[1]&eventDate=$matches[2]";s:29:"(?:course)/([^/]+)/(?:all)/?$";s:74:"index.php?tribe_events=$matches[1]&post_type=tribe_events&eventDisplay=all";s:46:"(?:course)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/ical/?$";s:63:"index.php?tribe_events=$matches[1]&eventDate=$matches[2]&ical=1";s:26:"(?:course)/([^/]+)/ical/?$";s:56:"index.php?ical=1&name=$matches[1]&post_type=tribe_events";s:29:"(?:courses)/(?:page)/(\\d+)/?$";s:68:"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]";s:39:"(?:courses)/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?post_type=tribe_events&eventDisplay=list&feed=$matches[1]";s:24:"(?:courses)/(?:month)/?$";s:51:"index.php?post_type=tribe_events&eventDisplay=month";s:38:"(?:courses)/(?:list)/(?:page)/(\\d+)/?$";s:68:"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]";s:23:"(?:courses)/(?:list)/?$";s:50:"index.php?post_type=tribe_events&eventDisplay=list";s:24:"(?:courses)/(?:today)/?$";s:49:"index.php?post_type=tribe_events&eventDisplay=day";s:28:"(?:courses)/(\\d{4}-\\d{2})/?$";s:73:"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]";s:34:"(?:courses)/(\\d{4}-\\d{2}-\\d{2})/?$";s:71:"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]";s:14:"(?:courses)/?$";s:53:"index.php?post_type=tribe_events&eventDisplay=default";s:19:"(?:courses)/ical/?$";s:39:"index.php?post_type=tribe_events&ical=1";s:39:"(?:courses)/(\\d{4}-\\d{2}-\\d{2})/ical/?$";s:78:"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]";s:61:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:page)/(\\d+)/?$";s:97:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]";s:56:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:month)/?$";s:80:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month";s:70:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:page)/(\\d+)/?$";s:97:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]";s:55:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/?$";s:79:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list";s:56:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:today)/?$";s:78:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day";s:74:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$";s:100:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:60:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/?$";s:102:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]";s:66:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$";s:100:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:51:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/feed/?$";s:89:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&feed=rss2";s:51:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/ical/?$";s:68:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&ical=1";s:76:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:78:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&feed=$matches[2]";s:46:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/?$";s:80:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month";s:45:"(?:courses)/(?:tag)/([^/]+)/(?:page)/(\\d+)/?$";s:84:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]";s:40:"(?:courses)/(?:tag)/([^/]+)/(?:month)/?$";s:67:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month";s:54:"(?:courses)/(?:tag)/([^/]+)/(?:list)/(?:page)/(\\d+)/?$";s:84:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]";s:39:"(?:courses)/(?:tag)/([^/]+)/(?:list)/?$";s:66:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list";s:40:"(?:courses)/(?:tag)/([^/]+)/(?:today)/?$";s:65:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day";s:58:"(?:courses)/(?:tag)/([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$";s:87:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:44:"(?:courses)/(?:tag)/([^/]+)/(\\d{4}-\\d{2})/?$";s:89:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]";s:50:"(?:courses)/(?:tag)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$";s:87:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:35:"(?:courses)/(?:tag)/([^/]+)/feed/?$";s:76:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2";s:35:"(?:courses)/(?:tag)/([^/]+)/ical/?$";s:55:"index.php?post_type=tribe_events&tag=$matches[1]&ical=1";s:60:"(?:courses)/(?:tag)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:65:"index.php?post_type=tribe_events&tag=$matches[1]&feed=$matches[2]";s:30:"(?:courses)/(?:tag)/([^/]+)/?$";s:67:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month";s:23:"(?:courses)/(?:week)/?$";s:50:"index.php?post_type=tribe_events&eventDisplay=week";s:31:"(?:courses)/(?:week)/(\\d{2})/?$";s:72:"index.php?post_type=tribe_events&eventDisplay=week&eventDate=$matches[1]";s:43:"(?:courses)/(?:week)/(\\d{4}-\\d{2}-\\d{2})/?$";s:72:"index.php?post_type=tribe_events&eventDisplay=week&eventDate=$matches[1]";s:55:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:week)/?$";s:79:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=week";s:75:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:week)/(\\d{4}-\\d{2}-\\d{2})/?$";s:101:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=week&eventDate=$matches[2]";s:39:"(?:courses)/(?:tag)/([^/]+)/(?:week)/?$";s:66:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=week";s:59:"(?:courses)/(?:tag)/([^/]+)/(?:week)/(\\d{4}-\\d{2}-\\d{2})/?$";s:88:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=week&eventDate=$matches[2]";s:24:"(?:courses)/(?:photo)/?$";s:51:"index.php?post_type=tribe_events&eventDisplay=photo";s:44:"(?:courses)/(?:photo)/(\\d{4}-\\d{2}-\\d{2})/?$";s:73:"index.php?post_type=tribe_events&eventDisplay=photo&eventDate=$matches[1]";s:56:"(?:courses)/(?:category)/(?:[^/]+/)*([^/]+)/(?:photo)/?$";s:80:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=photo";s:40:"(?:courses)/(?:tag)/([^/]+)/(?:photo)/?$";s:67:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=photo";s:12:"WP_Router/?$";s:34:"index.php?post_type=wp_router_page";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:9:"course/?$";s:32:"index.php?post_type=tribe_events";s:39:"course/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=tribe_events&feed=$matches[1]";s:34:"course/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=tribe_events&feed=$matches[1]";s:26:"course/page/([0-9]{1,})/?$";s:50:"index.php?post_type=tribe_events&paged=$matches[1]";s:37:"WP_Router/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"WP_Router/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"WP_Router/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"WP_Router/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"WP_Router/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"WP_Router/([^/]+)/trackback/?$";s:41:"index.php?wp_router_page=$matches[1]&tb=1";s:38:"WP_Router/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?wp_router_page=$matches[1]&paged=$matches[2]";s:45:"WP_Router/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?wp_router_page=$matches[1]&cpage=$matches[2]";s:35:"WP_Router/([^/]+)/wc-api(/(.*))?/?$";s:55:"index.php?wp_router_page=$matches[1]&wc-api=$matches[3]";s:41:"WP_Router/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"WP_Router/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"WP_Router/([^/]+)(/[0-9]+)?/?$";s:53:"index.php?wp_router_page=$matches[1]&page=$matches[2]";s:26:"WP_Router/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"WP_Router/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"WP_Router/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"WP_Router/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"WP_Router/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:28:"product/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"product_variation/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"shop_order_refund/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"course/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"course/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"course/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"course/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"course/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"course/([^/]+)/trackback/?$";s:39:"index.php?tribe_events=$matches[1]&tb=1";s:47:"course/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?tribe_events=$matches[1]&feed=$matches[2]";s:42:"course/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?tribe_events=$matches[1]&feed=$matches[2]";s:35:"course/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?tribe_events=$matches[1]&paged=$matches[2]";s:42:"course/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?tribe_events=$matches[1]&cpage=$matches[2]";s:32:"course/([^/]+)/wc-api(/(.*))?/?$";s:53:"index.php?tribe_events=$matches[1]&wc-api=$matches[3]";s:38:"course/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:49:"course/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:27:"course/([^/]+)(/[0-9]+)?/?$";s:51:"index.php?tribe_events=$matches[1]&page=$matches[2]";s:23:"course/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"course/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"course/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"course/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"course/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"venue/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"venue/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"venue/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"venue/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"venue/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"venue/([^/]+)/trackback/?$";s:38:"index.php?tribe_venue=$matches[1]&tb=1";s:34:"venue/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?tribe_venue=$matches[1]&paged=$matches[2]";s:41:"venue/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?tribe_venue=$matches[1]&cpage=$matches[2]";s:31:"venue/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?tribe_venue=$matches[1]&wc-api=$matches[3]";s:37:"venue/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:48:"venue/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:26:"venue/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?tribe_venue=$matches[1]&page=$matches[2]";s:22:"venue/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"venue/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"venue/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"venue/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"venue/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"provider/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"provider/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"provider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"provider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"provider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"provider/([^/]+)/trackback/?$";s:41:"index.php?tribe_provider=$matches[1]&tb=1";s:37:"provider/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?tribe_provider=$matches[1]&paged=$matches[2]";s:44:"provider/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?tribe_provider=$matches[1]&cpage=$matches[2]";s:34:"provider/([^/]+)/wc-api(/(.*))?/?$";s:55:"index.php?tribe_provider=$matches[1]&wc-api=$matches[3]";s:40:"provider/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"provider/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:29:"provider/([^/]+)(/[0-9]+)?/?$";s:53:"index.php?tribe_provider=$matches[1]&page=$matches[2]";s:25:"provider/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"provider/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"provider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"provider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"provider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"courses/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]";s:50:"courses/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]";s:43:"courses/category/(.+?)/page/?([0-9]{1,})/?$";s:56:"index.php?tribe_events_cat=$matches[1]&paged=$matches[2]";s:25:"courses/category/(.+?)/?$";s:38:"index.php?tribe_events_cat=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:47:"index.php?&page_id=1073741824&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:47:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"([0-9]{4})/([0-9]{1,2})/([^/]+)/trackback/?$";s:69:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&tb=1";s:64:"([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:52:"([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&paged=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&cpage=$matches[4]";s:49:"([0-9]{4})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:83:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&wc-api=$matches[5]";s:51:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:62:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]";s:36:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(2197, 'sccss_settings', 'a:1:{s:13:"sccss-content";s:56:".page .wrap>.content {\r\n    padding: 0px 0!important;\r\n}";}', 'yes') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=2423 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(20, 6, '_edit_last', '1'),
(21, 6, '_wp_page_template', 'default'),
(22, 6, '_edit_lock', '1446227102:1'),
(23, 8, '_edit_last', '1'),
(24, 8, '_wp_page_template', 'default'),
(25, 8, '_edit_lock', '1443762223:1'),
(26, 10, '_edit_last', '1'),
(27, 10, '_wp_page_template', 'default'),
(28, 10, '_edit_lock', '1446227124:1'),
(29, 12, '_edit_last', '1'),
(30, 12, '_wp_page_template', 'default'),
(31, 12, '_edit_lock', '1446203187:1'),
(32, 14, '_edit_last', '1'),
(33, 14, '_wp_page_template', 'default'),
(34, 14, '_edit_lock', '1442285727:1'),
(35, 16, '_edit_last', '1'),
(36, 16, '_wp_page_template', 'template-home.php'),
(37, 16, '_edit_lock', '1442302302:1'),
(38, 18, '_edit_last', '1'),
(39, 18, '_edit_lock', '1446268512:1'),
(40, 18, '_wp_page_template', 'template-providers.php'),
(41, 20, '_edit_last', '1'),
(42, 20, '_wp_page_template', 'default'),
(43, 20, '_edit_lock', '1442553906:1'),
(44, 22, '_edit_last', '1'),
(45, 22, '_wp_page_template', 'template-courses.php'),
(46, 22, '_edit_lock', '1446334873:1'),
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
(127, 33, '_wp_attached_file', '2015/09/banner-image-placeholder-245x288.jpg'),
(128, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:288;s:4:"file";s:44:"2015/09/banner-image-placeholder-245x288.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"banner-image-placeholder-245x288-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:44:"banner-image-placeholder-245x288-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(129, 34, '_wp_attached_file', '2015/09/bw-img-placeholder-439x296.jpg'),
(130, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:439;s:6:"height";i:296;s:4:"file";s:38:"2015/09/bw-img-placeholder-439x296.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"bw-img-placeholder-439x296-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"bw-img-placeholder-439x296-300x202.jpg";s:5:"width";i:300;s:6:"height";i:202;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:38:"bw-img-placeholder-439x296-370x296.jpg";s:5:"width";i:370;s:6:"height";i:296;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:38:"bw-img-placeholder-439x296-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:38:"bw-img-placeholder-439x296-300x296.jpg";s:5:"width";i:300;s:6:"height";i:296;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(131, 35, '_wp_attached_file', '2015/09/hero-image-placeholder-742x374.jpg'),
(132, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:742;s:6:"height";i:374;s:4:"file";s:42:"2015/09/hero-image-placeholder-742x374.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"hero-image-placeholder-742x374-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"hero-image-placeholder-742x374-300x151.jpg";s:5:"width";i:300;s:6:"height";i:151;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:42:"hero-image-placeholder-742x374-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"hero-image-placeholder-742x374-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:42:"hero-image-placeholder-742x374-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:42:"hero-image-placeholder-742x374-600x374.jpg";s:5:"width";i:600;s:6:"height";i:374;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(133, 36, '_wp_attached_file', '2015/09/featured-image-placeholder-222x148.jpg'),
(134, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:222;s:6:"height";i:148;s:4:"file";s:46:"2015/09/featured-image-placeholder-222x148.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"featured-image-placeholder-222x148-150x148.jpg";s:5:"width";i:150;s:6:"height";i:148;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:46:"featured-image-placeholder-222x148-180x148.jpg";s:5:"width";i:180;s:6:"height";i:148;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(135, 39, '_edit_last', '1'),
(136, 39, '_wp_page_template', 'default'),
(137, 39, '_edit_lock', '1442467458:1'),
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
(158, 42, '_VenueOverwriteCoords', '0'),
(159, 42, '_VenueGeoAddress', 'sadasd asdasd asdsad  asdasd Afghanistan'),
(175, 44, '_OrganizerOrigin', 'events-calendar'),
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
(193, 47, '_VenueCity', 'Ivanhoe') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
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
(255, 50, '_edit_last', '1'),
(256, 50, '_edit_lock', '1445412550:1'),
(257, 51, '_EventOrigin', 'events-calendar'),
(259, 50, '_wp_page_template', 'default'),
(260, 53, '_edit_last', '1'),
(261, 53, '_edit_lock', '1445410673:1'),
(262, 54, '_wp_attached_file', '2015/09/kids-istock_000013576285small.jpg'),
(263, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:849;s:6:"height";i:565;s:4:"file";s:41:"2015/09/kids-istock_000013576285small.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"kids-istock_000013576285small-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"kids-istock_000013576285small-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:41:"kids-istock_000013576285small-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:41:"kids-istock_000013576285small-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:41:"kids-istock_000013576285small-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:41:"kids-istock_000013576285small-600x565.jpg";s:5:"width";i:600;s:6:"height";i:565;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(264, 53, '_wp_page_template', 'default'),
(267, 57, '_edit_last', '1'),
(268, 57, '_wp_page_template', 'default'),
(269, 57, '_edit_lock', '1446205572:1'),
(270, 59, '_edit_last', '1'),
(271, 59, '_wp_page_template', 'default'),
(272, 59, '_edit_lock', '1445411103:1'),
(275, 61, '_edit_last', '1'),
(276, 61, '_wp_page_template', 'default'),
(277, 61, '_edit_lock', '1445411552:1'),
(280, 63, '_edit_last', '1'),
(281, 63, '_wp_page_template', 'default'),
(282, 63, '_edit_lock', '1445412947:1'),
(283, 65, '_edit_last', '1'),
(284, 65, '_wp_page_template', 'default'),
(285, 65, '_edit_lock', '1445412370:1'),
(286, 67, '_edit_last', '1'),
(287, 67, '_wp_page_template', 'default'),
(288, 67, '_edit_lock', '1446205512:1'),
(289, 71, '_wp_attached_file', '2015/09/andress.jpeg'),
(290, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:20:"2015/09/andress.jpeg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"andress-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"andress-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:20:"andress-370x370.jpeg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"andress-180x180.jpeg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"andress-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(291, 1, '_wp_trash_meta_status', 'publish'),
(292, 1, '_wp_trash_meta_time', '1442554897'),
(293, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(294, 85, '_edit_last', '1'),
(295, 85, '_edit_lock', '1445482734:1'),
(296, 85, '_wp_page_template', 'default'),
(297, 91, '_edit_last', '1'),
(298, 91, '_edit_lock', '1442556358:1'),
(299, 94, '_wp_attached_file', '2015/09/pic2.jpg'),
(300, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:370;s:6:"height";i:250;s:4:"file";s:16:"2015/09/pic2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pic2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"pic2-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:16:"pic2-370x250.jpg";s:5:"width";i:370;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"pic2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"pic2-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
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
(329, 103, '_EventOrigin', 'events-calendar'),
(330, 104, '_wp_attached_file', '2015/09/Hands-Up.jpg'),
(331, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:387;s:4:"file";s:20:"2015/09/Hands-Up.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Hands-Up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"Hands-Up-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:20:"Hands-Up-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"Hands-Up-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"Hands-Up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"Hands-Up-600x387.jpg";s:5:"width";i:600;s:6:"height";i:387;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
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
(348, 106, '_VenueOverwriteCoords', '0') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(349, 106, '_VenueLat', '-37.771901'),
(350, 106, '_VenueLng', '144.962483'),
(351, 106, '_VenueGeoAddress', 'Brunswick 3056, Australia Victoria  3056 Australia'),
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
(368, 107, 'total_sales', '2'),
(369, 107, '_tribe_wooticket_for_event', '101'),
(370, 107, '_regular_price', '275'),
(371, 107, '_price', '275'),
(372, 107, '_stock', '8'),
(373, 107, '_stock_status', 'instock'),
(374, 107, '_backorders', 'no'),
(375, 107, '_manage_stock', 'yes'),
(376, 107, '_sku', 'and112'),
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
(401, 112, '_edit_lock', '1445498299:1'),
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
(440, 119, '_edit_lock', '1446197652:1'),
(441, 119, '_wp_page_template', 'default'),
(442, 121, '_edit_last', '1'),
(443, 121, '_wp_page_template', 'default'),
(444, 121, '_edit_lock', '1445482908:1'),
(445, 117, '_download_permissions_granted', '1'),
(446, 125, '_tribe_wooticket_product', '115'),
(447, 125, '_tribe_wooticket_order', '117'),
(448, 125, '_tribe_wooticket_event', '45'),
(449, 125, '_tribe_wooticket_security_code', '78cc6a4f17'),
(450, 126, '_tribe_wooticket_product', '115'),
(451, 126, '_tribe_wooticket_order', '117'),
(452, 126, '_tribe_wooticket_event', '45'),
(453, 126, '_tribe_wooticket_security_code', '8855c940e8'),
(454, 117, '_tribe_has_tickets', '1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(455, 117, '_completed_date', '2015-09-18 07:04:01'),
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
(488, 128, 'total_sales', '3'),
(489, 128, '_tribe_wooticket_for_event', '127'),
(490, 128, '_regular_price', '275'),
(491, 128, '_price', '275'),
(492, 128, '_manage_stock', 'no'),
(493, 128, '_sku', ''),
(495, 129, '_wp_attached_file', '2015/09/sun-smart-school-kids1.jpg'),
(496, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:580;s:6:"height";i:350;s:4:"file";s:34:"2015/09/sun-smart-school-kids1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"sun-smart-school-kids1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"sun-smart-school-kids1-300x181.jpg";s:5:"width";i:300;s:6:"height";i:181;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:34:"sun-smart-school-kids1-370x350.jpg";s:5:"width";i:370;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"sun-smart-school-kids1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:34:"sun-smart-school-kids1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(499, 130, '_VenueOrigin', 'events-calendar'),
(500, 130, '_EventShowMapLink', ''),
(501, 130, '_EventShowMap', ''),
(502, 130, '_VenueVenue', 'Frankston'),
(503, 130, '_VenueAddress', '165/235 Frankston-Dandenong Rd'),
(504, 130, '_VenueCity', ' Frankston'),
(505, 130, '_VenueCountry', 'Australia'),
(506, 130, '_VenueProvince', 'Victoria'),
(507, 130, '_VenueZip', '3199'),
(508, 130, '_VenuePhone', ''),
(509, 130, '_VenueURL', ''),
(510, 130, '_VenueShowMap', 'true'),
(511, 130, '_VenueShowMapLink', 'true'),
(512, 130, '_VenueStateProvince', 'Victoria'),
(513, 130, '_VenueOverwriteCoords', '0'),
(514, 130, '_VenueLat', '-38.1272291'),
(515, 130, '_VenueLng', '145.1360409'),
(516, 130, '_VenueGeoAddress', '165/235 Frankston-Dandenong Rd  Frankston Victoria  3199 Australia'),
(526, 131, '_edit_last', '1'),
(527, 131, '_wp_page_template', 'default'),
(528, 131, '_edit_lock', '1446191480:1'),
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
(564, 139, '_order_key', 'wc_order_5600fc004a92f'),
(565, 139, '_order_currency', 'AUD'),
(566, 139, '_prices_include_tax', 'no'),
(567, 139, '_customer_ip_address', '49.151.104.21'),
(568, 139, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36'),
(569, 139, '_customer_user', '1'),
(570, 139, '_created_via', 'checkout'),
(571, 139, '_order_version', '2.4.6'),
(572, 139, '_billing_first_name', 'Matthew'),
(573, 139, '_billing_last_name', 'Keath'),
(574, 139, '_billing_email', 'admin@teach-me-pd.dev'),
(575, 139, '_billing_phone', '555 555 555'),
(576, 139, '_billing_country', 'AU'),
(577, 139, '_billing_address_1', 'address billing'),
(578, 139, '_billing_city', 'mount waverley'),
(579, 139, '_billing_state', 'TAS'),
(580, 139, '_billing_postcode', '3149'),
(581, 139, '_billing_school', ''),
(582, 139, '_billing_dietarty_requirement', ''),
(583, 139, '_billing_mobility', 'test'),
(584, 139, '_billing_job_title', ''),
(585, 139, '_billing_to_number', ''),
(586, 139, '_billing_invoice_school', ''),
(587, 139, '_billing_manager_name', ''),
(588, 139, '_billing_manager_email', ''),
(589, 139, '_shipping_first_name', 'Matthew'),
(590, 139, '_shipping_last_name', 'Keath'),
(591, 139, '_shipping_company', ''),
(592, 139, '_shipping_country', 'AU'),
(593, 139, '_shipping_address_1', 'address billing'),
(594, 139, '_shipping_address_2', ''),
(595, 139, '_shipping_city', 'mount waverley') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(596, 139, '_shipping_state', 'TAS'),
(597, 139, '_shipping_postcode', '3149'),
(598, 139, '_payment_method', 'cheque'),
(599, 139, '_payment_method_title', 'Account Payment'),
(600, 139, '_order_shipping', ''),
(601, 139, '_cart_discount', '0'),
(602, 139, '_cart_discount_tax', '0'),
(603, 139, '_order_tax', '0'),
(604, 139, '_order_shipping_tax', '0'),
(605, 139, '_order_total', '825.00'),
(606, 139, 'school', 'School / attending s'),
(607, 139, 'dietarty_requirement', 'Dietary Requirement test'),
(608, 139, 'billing_mobility', 'test'),
(609, 139, 'job_title', 'Principal'),
(610, 139, 'invoice_school', 'Invoice My School'),
(611, 139, '_recorded_sales', 'yes'),
(612, 141, '_edit_last', '1'),
(613, 141, '_edit_lock', '1445498293:1'),
(614, 141, '_wp_page_template', 'template-custom.php'),
(615, 144, '_wp_attached_file', '2015/09/author-placeholder.png'),
(616, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:151;s:6:"height";i:145;s:4:"file";s:30:"2015/09/author-placeholder.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"author-placeholder-150x145.png";s:5:"width";i:150;s:6:"height";i:145;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(660, 147, '_edit_lock', '1443427077:1'),
(661, 147, '_edit_last', '1'),
(683, 152, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(684, 152, '_tablepress_table_visibility', '{"rows":[1,1,1,1],"columns":[1,1,1,1,1]}'),
(685, 155, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(686, 155, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(693, 165, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(694, 165, '_tablepress_table_visibility', '{"rows":[1,1,1,1],"columns":[1,1,1,1,1]}'),
(695, 166, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(696, 166, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(697, 171, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(698, 171, '_tablepress_table_visibility', '{"rows":[1,1,1,1],"columns":[1,1,1,1,1]}'),
(699, 172, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(700, 172, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(701, 176, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(702, 176, '_tablepress_table_visibility', '{"rows":[1,1,1,1],"columns":[1,1,1,1,1]}'),
(703, 177, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(704, 177, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(705, 181, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(706, 181, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(707, 182, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(708, 182, '_tablepress_table_visibility', '{"rows":[1,1,1,1],"columns":[1,1,1,1,1]}'),
(709, 186, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(710, 186, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(711, 187, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(712, 187, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(713, 191, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(714, 191, '_tablepress_table_visibility', '{"rows":[1,1,1,1],"columns":[1,1,1,1,1]}'),
(715, 192, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(716, 192, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(717, 196, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(718, 196, '_tablepress_table_visibility', '{"rows":[1,1,1,1],"columns":[1,1,1,1,1]}'),
(719, 197, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(720, 197, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(721, 128, '_edit_lock', '1444714843:1'),
(732, 203, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(733, 203, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(734, 209, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(735, 209, '_tablepress_table_visibility', '{"rows":[1,1,1,1],"columns":[1,1,1]}'),
(736, 212, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(737, 212, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(738, 215, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(739, 215, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(740, 217, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(741, 217, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(742, 221, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(743, 221, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1],"columns":[1,1,1]}'),
(744, 223, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(745, 223, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(746, 226, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(747, 226, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(748, 229, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(749, 229, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(750, 231, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(751, 231, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1],"columns":[1,1,1]}'),
(752, 233, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(753, 233, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(754, 236, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(755, 236, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(756, 238, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(757, 238, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(758, 241, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(759, 241, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1],"columns":[1,1,1]}'),
(760, 242, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(761, 242, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(762, 246, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(763, 246, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(764, 247, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(765, 247, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(766, 252, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(767, 252, '_tablepress_table_visibility', '{"rows":[1,1,1,1],"columns":[1,1,1]}'),
(768, 253, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(769, 253, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(770, 260, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(771, 260, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(772, 261, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(773, 261, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(774, 265, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(775, 265, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1],"columns":[1,1,1]}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(776, 266, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(777, 266, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(778, 272, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(779, 272, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(780, 273, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(781, 273, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(782, 277, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(783, 277, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1],"columns":[1,1,1]}'),
(784, 278, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(785, 278, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(786, 282, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(787, 282, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(788, 283, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(789, 283, '_tablepress_table_visibility', '{"rows":[1,1],"columns":[1,1,1,1,1]}'),
(790, 287, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(791, 287, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1],"columns":[1,1,1]}'),
(792, 289, '_tablepress_table_options', '{"last_editor":1,"table_head":true,"table_foot":false,"alternating_row_colors":true,"row_hover":true,"print_name":false,"print_name_position":"above","print_description":false,"print_description_position":"below","extra_css_classes":"","use_datatables":false,"datatables_sort":true,"datatables_filter":true,"datatables_paginate":true,"datatables_lengthchange":true,"datatables_paginate_entries":10,"datatables_info":true,"datatables_scrollx":false,"datatables_custom_commands":""}'),
(793, 289, '_tablepress_table_visibility', '{"rows":[1,1,1,1,1,1,1,1,1,1,1,1,1],"columns":[1,1,1]}'),
(794, 91, '_wp_trash_meta_status', 'publish'),
(795, 91, '_wp_trash_meta_time', '1445413095'),
(801, 294, '_menu_item_type', 'custom'),
(802, 294, '_menu_item_menu_item_parent', '0'),
(803, 294, '_menu_item_object_id', '294'),
(804, 294, '_menu_item_object', 'custom'),
(805, 294, '_menu_item_target', ''),
(806, 294, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(807, 294, '_menu_item_xfn', ''),
(808, 294, '_menu_item_url', 'http://teach-me-pd.dev/'),
(810, 295, '_menu_item_type', 'post_type'),
(811, 295, '_menu_item_menu_item_parent', '0'),
(812, 295, '_menu_item_object_id', '12'),
(813, 295, '_menu_item_object', 'page'),
(814, 295, '_menu_item_target', ''),
(815, 295, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(816, 295, '_menu_item_xfn', ''),
(817, 295, '_menu_item_url', ''),
(819, 296, '_menu_item_type', 'post_type'),
(820, 296, '_menu_item_menu_item_parent', '0'),
(821, 296, '_menu_item_object_id', '14'),
(822, 296, '_menu_item_object', 'page'),
(823, 296, '_menu_item_target', ''),
(824, 296, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(825, 296, '_menu_item_xfn', ''),
(826, 296, '_menu_item_url', ''),
(828, 297, '_menu_item_type', 'post_type'),
(829, 297, '_menu_item_menu_item_parent', '0'),
(830, 297, '_menu_item_object_id', '119'),
(831, 297, '_menu_item_object', 'page'),
(832, 297, '_menu_item_target', ''),
(833, 297, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(834, 297, '_menu_item_xfn', ''),
(835, 297, '_menu_item_url', ''),
(837, 298, '_menu_item_type', 'post_type'),
(838, 298, '_menu_item_menu_item_parent', '0'),
(839, 298, '_menu_item_object_id', '131'),
(840, 298, '_menu_item_object', 'page'),
(841, 298, '_menu_item_target', ''),
(842, 298, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(843, 298, '_menu_item_xfn', ''),
(844, 298, '_menu_item_url', ''),
(855, 121, '_wp_trash_meta_status', 'publish'),
(856, 121, '_wp_trash_meta_time', '1445482907'),
(873, 143, '_wp_trash_meta_status', 'auto-draft'),
(874, 143, '_wp_trash_meta_time', '1446082030'),
(889, 307, '_menu_item_type', 'post_type'),
(890, 307, '_menu_item_menu_item_parent', '0'),
(891, 307, '_menu_item_object_id', '22'),
(892, 307, '_menu_item_object', 'page'),
(893, 307, '_menu_item_target', ''),
(894, 307, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(895, 307, '_menu_item_xfn', ''),
(896, 307, '_menu_item_url', ''),
(898, 308, '_menu_item_type', 'post_type'),
(899, 308, '_menu_item_menu_item_parent', '0'),
(900, 308, '_menu_item_object_id', '18'),
(901, 308, '_menu_item_object', 'page'),
(902, 308, '_menu_item_target', ''),
(903, 308, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(904, 308, '_menu_item_xfn', ''),
(905, 308, '_menu_item_url', ''),
(910, 309, '_wp_attached_file', '2015/10/IMG_3222.jpg'),
(911, 309, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:20:"2015/10/IMG_3222.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3222-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3222-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:20:"IMG_3222-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"IMG_3222-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"IMG_3222-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:5;s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 600D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1401363325;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"44";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(912, 310, '_wp_attached_file', '2015/10/Twitter.jpg'),
(913, 310, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:19:"2015/10/Twitter.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Twitter-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"Twitter-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:19:"Twitter-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"Twitter-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"Twitter-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1441644424;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(914, 311, '_wp_attached_file', '2015/10/AE_Logo_Round_large.png'),
(915, 311, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:31:"2015/10/AE_Logo_Round_large.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"AE_Logo_Round_large-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"AE_Logo_Round_large-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:31:"AE_Logo_Round_large-370x370.png";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"AE_Logo_Round_large-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"AE_Logo_Round_large-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(928, 313, '_OrganizerOrigin', 'events-calendar'),
(929, 313, '_OrganizerPhone', ''),
(930, 313, '_OrganizerWebsite', 'http://www.andrelleducation.com.au'),
(931, 313, '_OrganizerEmail', 'samantha@andrelleducation.com.au'),
(932, 313, 'facebook', 'https://www.facebook.com/groups/608805285893925/?fref=nf'),
(933, 313, 'instagram', 'https://instagram.com/bigwrite_vcop/'),
(934, 313, 'twitter', 'https://twitter.com/bigwrite_vcop'),
(935, 313, 'linkedin', 'https://www.linkedin.com/'),
(936, 313, '_edit_lock', '1446226763:1'),
(937, 313, '_edit_last', '1'),
(938, 313, 'address', 'Langwarrin, Vic 3910'),
(939, 313, '_address', 'field_5631c5c248943'),
(940, 313, '_facebook', 'field_5631ccac664be'),
(941, 313, '_instagram', 'field_5631ccb507ae2') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(942, 313, '_twitter', 'field_5631ccbf6dcdd'),
(943, 313, '_linkedin', 'field_5631ccc8401be'),
(944, 313, '_Organizer2ndImage', '309'),
(945, 313, '__Organizer2ndImage', 'field_5631b8124f02a'),
(946, 313, 'provider_logo', '311'),
(947, 313, '_provider_logo', 'field_5631c47a61cf7'),
(948, 313, '_thumbnail_id', '310'),
(949, 314, '_order_key', 'wc_order_5632b90ba0844'),
(950, 314, '_order_currency', 'AUD'),
(951, 314, '_prices_include_tax', 'no'),
(952, 314, '_customer_ip_address', '180.191.111.236'),
(953, 314, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:41.0) Gecko/20100101 Firefox/41.0'),
(954, 314, '_customer_user', '16'),
(955, 314, '_created_via', 'checkout'),
(956, 314, '_order_version', '2.4.6'),
(957, 314, '_billing_first_name', 'Michael'),
(958, 314, '_billing_last_name', 'Cequina'),
(959, 314, '_billing_email', 'michael@cloudemployee.co.uk'),
(960, 314, '_billing_phone', '01472574782'),
(961, 314, '_billing_country', 'AU'),
(962, 314, '_billing_address_1', 'my addresss asdasda'),
(963, 314, '_billing_city', 'asdasdas'),
(964, 314, '_billing_state', 'TAS'),
(965, 314, '_billing_postcode', '1542'),
(966, 314, '_billing_school', ''),
(967, 314, '_billing_dietary', 'Nuztolbe avika wivhad aru zi unhuwro nuap hikbu rumek rujofzed of fon lonlafci ansufru jidu. Rug unpik cug degadfe la juwpevgo kipo sah suf wosawev uvuciod il hav zijiji. Sor fizvel irunooz ravzurza id jusus tatagis ossolco zih odi ruacomo golekca can la vaja diwovaon. Risom hovliwke me kibbulwa sekba da iti lelef megu miacaeca fi hirmoki eja koze naalokos goli cipeggis olegi. Comciep ud nid eniatawi ziolibo ted tocbirkeg jelek bovcawvo arvim helufos sozubu ti fos adipuid lirhus dapoco domoj. Wib giwpuw olahutir von gocweug si zadtecuvi uheci jil ig opajojig cel ti. Dafag racji ho dave rusnogsak iwdif fi dihec ku epageciz la wun fezep.'),
(968, 314, '_billing_mobility', 'Mobility Requirement'),
(969, 314, '_billing_job_title', ''),
(970, 314, '_billing_to_number', ''),
(971, 314, '_billing_invoice_school', ''),
(972, 314, '_billing_manager_name', ''),
(973, 314, '_billing_manager_email', ''),
(974, 314, '_shipping_first_name', 'Michael'),
(975, 314, '_shipping_last_name', 'Cequina'),
(976, 314, '_shipping_company', ''),
(977, 314, '_shipping_country', 'AU'),
(978, 314, '_shipping_address_1', 'my addresss asdasda'),
(979, 314, '_shipping_address_2', ''),
(980, 314, '_shipping_city', 'asdasdas'),
(981, 314, '_shipping_state', 'TAS'),
(982, 314, '_shipping_postcode', '1542'),
(983, 314, '_payment_method', 'cheque'),
(984, 314, '_payment_method_title', 'Account Payment'),
(985, 314, '_order_shipping', ''),
(986, 314, '_cart_discount', '0'),
(987, 314, '_cart_discount_tax', '0'),
(988, 314, '_order_tax', '0'),
(989, 314, '_order_shipping_tax', '0'),
(990, 314, '_order_total', '550.00'),
(991, 314, 'school', 'Aasdas School'),
(992, 314, 'billing_dietary', 'Nuztolbe avika wivhad aru zi unhuwro nuap hikbu rumek rujofzed of fon lonlafci ansufru jidu. Rug unpik cug degadfe la juwpevgo kipo sah suf wosawev uvuciod il hav zijiji. Sor fizvel irunooz ravzurza id jusus tatagis ossolco zih odi ruacomo golekca can la vaja diwovaon. Risom hovliwke me kibbulwa sekba da iti lelef megu miacaeca fi hirmoki eja koze naalokos goli cipeggis olegi. Comciep ud nid eniatawi ziolibo ted tocbirkeg jelek bovcawvo arvim helufos sozubu ti fos adipuid lirhus dapoco domoj. Wib giwpuw olahutir von gocweug si zadtecuvi uheci jil ig opajojig cel ti. Dafag racji ho dave rusnogsak iwdif fi dihec ku epageciz la wun fezep.'),
(993, 314, 'billing_mobility', 'Mobility Requirement'),
(994, 314, 'job_title', 'Principal'),
(995, 314, 'to_number', '12312312'),
(996, 314, 'invoice_school', 'Invoice Me'),
(997, 314, '_recorded_sales', 'yes'),
(1000, 316, '_visibility', 'hidden'),
(1001, 316, '_tax_status', 'taxable'),
(1002, 316, '_tax_class', ''),
(1003, 316, '_purchase_note', ''),
(1004, 316, '_weight', ''),
(1005, 316, '_length', ''),
(1006, 316, '_width', ''),
(1007, 316, '_height', ''),
(1008, 316, '_downloadable', 'no'),
(1009, 316, '_virtual', 'yes'),
(1010, 316, '_sale_price_dates_from', ''),
(1011, 316, '_sale_price_dates_to', ''),
(1012, 316, '_product_attributes', 'a:0:{}'),
(1013, 316, '_sale_price', ''),
(1014, 316, 'total_sales', '1'),
(1015, 316, '_tribe_wooticket_for_event', '127'),
(1016, 316, '_regular_price', '142'),
(1017, 316, '_price', '142'),
(1018, 316, '_manage_stock', 'no'),
(1019, 316, '_sku', ''),
(1032, 317, '_order_key', 'wc_order_5632ba927ecd6'),
(1033, 317, '_order_currency', 'AUD'),
(1034, 317, '_prices_include_tax', 'no'),
(1035, 317, '_customer_ip_address', '180.191.111.236'),
(1036, 317, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:41.0) Gecko/20100101 Firefox/41.0'),
(1037, 317, '_customer_user', '16'),
(1038, 317, '_created_via', 'checkout'),
(1039, 317, '_order_version', '2.4.6'),
(1040, 317, '_billing_first_name', 'Michael'),
(1041, 317, '_billing_last_name', 'Cequina'),
(1042, 317, '_billing_email', 'michael@cloudemployee.co.uk'),
(1043, 317, '_billing_phone', '01472574782'),
(1044, 317, '_billing_country', 'AU'),
(1045, 317, '_billing_address_1', 'my addresss asdasda'),
(1046, 317, '_billing_city', 'asdasdas'),
(1047, 317, '_billing_state', 'TAS'),
(1048, 317, '_billing_postcode', '1542'),
(1049, 317, '_billing_school', ''),
(1050, 317, '_billing_dietary', 'Nuztolbe avika wivhad aru zi unhuwro nuap hikbu rumek rujofzed of fon lonlafci ansufru jidu. Rug unpik cug degadfe la juwpevgo kipo sah suf wosawev uvuciod il hav zijiji. Sor fizvel irunooz ravzurza id jusus tatagis ossolco zih odi ruacomo golekca can la vaja diwovaon. Risom hovliwke me kibbulwa sekba da iti lelef megu miacaeca fi hirmoki eja koze naalokos goli cipeggis olegi. Comciep ud nid eniatawi ziolibo ted tocbirkeg jelek bovcawvo arvim helufos sozubu ti fos adipuid lirhus dapoco domoj. Wib giwpuw olahutir von gocweug si zadtecuvi uheci jil ig opajojig cel ti. Dafag racji ho dave rusnogsak iwdif fi dihec ku epageciz la wun fezep.'),
(1051, 317, '_billing_mobility', 'Mobility Requirement'),
(1052, 317, '_billing_job_title', ''),
(1053, 317, '_billing_to_number', ''),
(1054, 317, '_billing_invoice_school', ''),
(1055, 317, '_billing_manager_name', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1056, 317, '_billing_manager_email', ''),
(1057, 317, '_shipping_first_name', 'Michael'),
(1058, 317, '_shipping_last_name', 'Cequina'),
(1059, 317, '_shipping_company', ''),
(1060, 317, '_shipping_country', 'AU'),
(1061, 317, '_shipping_address_1', 'my addresss asdasda'),
(1062, 317, '_shipping_address_2', ''),
(1063, 317, '_shipping_city', 'asdasdas'),
(1064, 317, '_shipping_state', 'TAS'),
(1065, 317, '_shipping_postcode', '1542'),
(1066, 317, '_payment_method', 'cheque'),
(1067, 317, '_payment_method_title', 'Account Payment'),
(1068, 317, '_order_shipping', ''),
(1069, 317, '_cart_discount', '0'),
(1070, 317, '_cart_discount_tax', '0'),
(1071, 317, '_order_tax', '0'),
(1072, 317, '_order_shipping_tax', '0'),
(1073, 317, '_order_total', '142.00'),
(1074, 317, 'school', 'Aasdas School'),
(1075, 317, 'billing_dietary', 'Nuztolbe avika wivhad aru zi unhuwro nuap hikbu rumek rujofzed of fon lonlafci ansufru jidu. Rug unpik cug degadfe la juwpevgo kipo sah suf wosawev uvuciod il hav zijiji. Sor fizvel irunooz ravzurza id jusus tatagis ossolco zih odi ruacomo golekca can la vaja diwovaon. Risom hovliwke me kibbulwa sekba da iti lelef megu miacaeca fi hirmoki eja koze naalokos goli cipeggis olegi. Comciep ud nid eniatawi ziolibo ted tocbirkeg jelek bovcawvo arvim helufos sozubu ti fos adipuid lirhus dapoco domoj. Wib giwpuw olahutir von gocweug si zadtecuvi uheci jil ig opajojig cel ti. Dafag racji ho dave rusnogsak iwdif fi dihec ku epageciz la wun fezep.'),
(1076, 317, 'billing_mobility', 'Mobility Requirement'),
(1077, 317, 'job_title', 'Principal'),
(1078, 317, 'invoice_school', 'Invoice Me'),
(1079, 317, '_recorded_sales', 'yes'),
(1080, 317, '_download_permissions_granted', '1'),
(1081, 318, '_tribe_wooticket_product', '316'),
(1082, 318, '_tribe_wooticket_order', '317'),
(1083, 318, '_tribe_wooticket_event', '127'),
(1084, 318, '_tribe_wooticket_security_code', 'f39945efdc'),
(1085, 317, '_tribe_has_tickets', '1'),
(1086, 317, '_completed_date', '2015-10-30 00:38:50'),
(1088, 319, '_wp_attached_file', '2015/10/banner-providers-e1446269415296.jpg'),
(1089, 319, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:5028;s:6:"height";i:2086;s:4:"file";s:43:"2015/10/banner-providers-e1446269415296.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"banner-providers-e1446269415296-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"banner-providers-e1446269415296-300x124.jpg";s:5:"width";i:300;s:6:"height";i:124;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"banner-providers-e1446269415296-1024x425.jpg";s:5:"width";i:1024;s:6:"height";i:425;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:43:"banner-providers-e1446269415296-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:43:"banner-providers-e1446269415296-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:43:"banner-providers-e1446269415296-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:43:"banner-providers-e1446269415296-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1090, 320, '_edit_lock', '1446167811:1'),
(1091, 320, '_edit_last', '1'),
(1092, 320, '_thumbnail_id', '311'),
(1093, 320, '_pingme', '1'),
(1094, 320, '_encloseme', '1'),
(1095, 320, '_pingme', '1'),
(1096, 320, '_encloseme', '1'),
(1097, 323, '_edit_lock', '1446203187:1'),
(1098, 323, '_edit_last', '1'),
(1099, 323, '_pingme', '1'),
(1100, 323, '_encloseme', '1'),
(1101, 325, '_wp_attached_file', '2015/10/Number-Formation-Rhymes-Pin.jpg'),
(1102, 325, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:2100;s:4:"file";s:39:"2015/10/Number-Formation-Rhymes-Pin.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"Number-Formation-Rhymes-Pin-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"Number-Formation-Rhymes-Pin-214x300.jpg";s:5:"width";i:214;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:40:"Number-Formation-Rhymes-Pin-731x1024.jpg";s:5:"width";i:731;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:39:"Number-Formation-Rhymes-Pin-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:39:"Number-Formation-Rhymes-Pin-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:39:"Number-Formation-Rhymes-Pin-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:39:"Number-Formation-Rhymes-Pin-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1103, 323, '_thumbnail_id', '325'),
(1104, 323, '_pingme', '1'),
(1105, 323, '_encloseme', '1'),
(1106, 326, '_edit_lock', '1446186811:1'),
(1107, 326, '_edit_last', '1'),
(1108, 326, '_pingme', '1'),
(1109, 326, '_encloseme', '1'),
(1110, 326, '_oembed_d4d54af9d5f44c3b228fc0f58e671fb3', '{{unknown}}'),
(1111, 328, '_edit_lock', '1446186475:1'),
(1112, 328, '_edit_last', '1'),
(1113, 328, '_pingme', '1'),
(1114, 328, '_encloseme', '1'),
(1115, 330, '_edit_lock', '1446173243:1'),
(1116, 330, '_edit_last', '1'),
(1117, 330, '_pingme', '1'),
(1118, 330, '_encloseme', '1'),
(1119, 332, '_wp_attached_file', '2015/09/blind-date-with-a-book.jpeg'),
(1120, 332, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:194;s:6:"height";i:259;s:4:"file";s:35:"2015/09/blind-date-with-a-book.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"blind-date-with-a-book-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"blind-date-with-a-book-180x180.jpeg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1121, 330, '_thumbnail_id', '332'),
(1122, 330, '_pingme', '1'),
(1123, 330, '_encloseme', '1'),
(1124, 330, '_pingme', '1'),
(1125, 330, '_encloseme', '1'),
(1126, 326, '_pingme', '1'),
(1127, 326, '_encloseme', '1'),
(1128, 330, '_pingme', '1'),
(1129, 330, '_encloseme', '1'),
(1130, 323, '_pingme', '1'),
(1131, 323, '_encloseme', '1'),
(1132, 338, '_menu_item_type', 'custom'),
(1133, 338, '_menu_item_menu_item_parent', '0'),
(1134, 338, '_menu_item_object_id', '338'),
(1135, 338, '_menu_item_object', 'custom'),
(1136, 338, '_menu_item_target', ''),
(1137, 338, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1138, 338, '_menu_item_xfn', ''),
(1139, 338, '_menu_item_url', '/?a=logout'),
(1141, 339, '_EventOrigin', 'events-calendar'),
(1142, 339, '_edit_lock', '1446175214:15'),
(1143, 340, '_EventOrigin', 'events-calendar'),
(1144, 340, '_edit_lock', '1446238517:1'),
(1145, 340, '_edit_last', '1'),
(1146, 341, '_visibility', 'hidden'),
(1147, 341, '_tax_status', 'taxable'),
(1148, 341, '_tax_class', ''),
(1149, 341, '_purchase_note', ''),
(1150, 341, '_weight', ''),
(1151, 341, '_length', ''),
(1152, 341, '_width', ''),
(1153, 341, '_height', ''),
(1154, 341, '_downloadable', 'no'),
(1155, 341, '_virtual', 'yes'),
(1156, 341, '_sale_price_dates_from', ''),
(1157, 341, '_sale_price_dates_to', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1158, 341, '_product_attributes', 'a:0:{}'),
(1159, 341, '_sale_price', ''),
(1160, 341, 'total_sales', '0'),
(1161, 341, '_tribe_wooticket_for_event', '340'),
(1162, 341, '_regular_price', '275'),
(1163, 341, '_price', '275'),
(1164, 341, '_manage_stock', 'yes'),
(1165, 341, '_sku', ''),
(1167, 340, 'base_event', ''),
(1168, 340, '_base_event', 'field_5608e0d6c43c6'),
(1169, 340, '_EventShowMapLink', '1'),
(1170, 340, '_EventShowMap', '1'),
(1171, 342, '_VenueOrigin', 'events-calendar'),
(1172, 342, '_EventShowMapLink', ''),
(1173, 342, '_EventShowMap', ''),
(1174, 342, '_VenueVenue', 'Albury'),
(1175, 342, '_VenueAddress', 'Riverina Highway, Lake Hume Village'),
(1176, 342, '_VenueCity', 'Albury'),
(1177, 342, '_VenueCountry', 'Australia'),
(1178, 342, '_VenueProvince', 'NSW'),
(1179, 342, '_VenueState', ''),
(1180, 342, '_VenueZip', '2640'),
(1181, 342, '_VenuePhone', ''),
(1182, 342, '_VenueURL', ''),
(1183, 342, '_VenueShowMap', 'true'),
(1184, 342, '_VenueShowMapLink', 'true'),
(1185, 342, '_VenueStateProvince', 'NSW'),
(1186, 342, '_VenueOverwriteCoords', '0'),
(1187, 342, '_VenueLat', '-36.0757467'),
(1188, 342, '_VenueLng', '146.9308946'),
(1189, 342, '_VenueGeoAddress', 'Riverina Highway, Lake Hume Village Albury NSW  2640 Australia'),
(1191, 340, '_EventStartDate', '2015-11-06 08:45:00'),
(1192, 340, '_EventEndDate', '2015-11-06 15:30:00'),
(1193, 340, '_EventStartDateUTC', '2015-11-06 08:45:00'),
(1194, 340, '_EventEndDateUTC', '2015-11-06 15:30:00'),
(1195, 340, '_EventDuration', '24300'),
(1196, 340, '_EventVenueID', '342'),
(1198, 340, '_EventURL', 'http://andrelleducation.com.au/courses'),
(1200, 340, '_EventTimezone', 'UTC+0'),
(1201, 340, '_EventTimezoneAbbr', ''),
(1202, 340, '_eventrocket_enable_rsvp', ''),
(1203, 340, '_eventrocket_restrict_rsvp', ''),
(1204, 340, '_eventrocket_limit_rsvp', '40'),
(1205, 340, '_eventrocket_show_attendees_rsvp', ''),
(1206, 340, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-11-06 08:45:00";s:12:"EventEndDate";s:19:"2015-11-06 15:30:00";}}s:10:"exclusions";a:0:{}}'),
(1207, 343, '_wp_attached_file', '2015/10/Day-1-Introduction-to-Big-Write-VCOP.jpg'),
(1208, 343, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:48:"2015/10/Day-1-Introduction-to-Big-Write-VCOP.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"Day-1-Introduction-to-Big-Write-VCOP-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"Day-1-Introduction-to-Big-Write-VCOP-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:48:"Day-1-Introduction-to-Big-Write-VCOP-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:48:"Day-1-Introduction-to-Big-Write-VCOP-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:48:"Day-1-Introduction-to-Big-Write-VCOP-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:48:"Day-1-Introduction-to-Big-Write-VCOP-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1213, 340, '_thumbnail_id', '343'),
(1218, 344, '_EventOrigin', 'events-calendar'),
(1219, 344, '_edit_lock', '1446238633:1'),
(1220, 344, '_edit_last', '1'),
(1221, 344, 'base_event', '340'),
(1222, 344, '_base_event', 'field_5608e0d6c43c6'),
(1223, 344, '_EventShowMapLink', '1'),
(1224, 344, '_EventShowMap', '1'),
(1226, 344, '_EventStartDate', '2015-11-13 08:45:00'),
(1227, 344, '_EventEndDate', '2015-11-13 15:30:00'),
(1228, 344, '_EventStartDateUTC', '2015-11-13 08:45:00'),
(1229, 344, '_EventEndDateUTC', '2015-11-13 15:30:00'),
(1230, 344, '_EventDuration', '24300'),
(1231, 344, '_EventVenueID', '349'),
(1232, 344, '_EventURL', 'http://andrelleducation.com.au/courses'),
(1233, 344, '_EventTimezone', 'UTC+0'),
(1234, 344, '_EventTimezoneAbbr', ''),
(1235, 344, '_eventrocket_enable_rsvp', ''),
(1236, 344, '_eventrocket_restrict_rsvp', ''),
(1237, 344, '_eventrocket_limit_rsvp', '40'),
(1238, 344, '_eventrocket_show_attendees_rsvp', ''),
(1239, 344, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-11-13 08:45:00";s:12:"EventEndDate";s:19:"2015-11-13 15:30:00";}}s:10:"exclusions";a:0:{}}'),
(1240, 344, '_thumbnail_id', '343'),
(1244, 345, '_EventOrigin', 'events-calendar'),
(1245, 345, '_EventShowMapLink', '1'),
(1246, 345, '_EventShowMap', '1'),
(1247, 345, '_EventStartDate', '2015-11-21 08:45:00'),
(1248, 345, '_EventEndDate', '2015-11-21 15:30:00'),
(1249, 345, '_EventStartDateUTC', '2015-11-21 08:45:00'),
(1250, 345, '_EventEndDateUTC', '2015-11-21 15:30:00'),
(1251, 345, '_EventDuration', '24300'),
(1252, 345, '_EventTimezone', 'UTC+0'),
(1253, 345, '_EventTimezoneAbbr', ''),
(1254, 345, '_eventrocket_enable_rsvp', ''),
(1255, 345, '_eventrocket_restrict_rsvp', ''),
(1256, 345, '_eventrocket_limit_rsvp', '30'),
(1257, 345, '_eventrocket_show_attendees_rsvp', ''),
(1258, 345, '_edit_lock', '1446238592:1'),
(1259, 345, '_edit_last', '1'),
(1260, 345, 'base_event', '340'),
(1261, 345, '_base_event', 'field_5608e0d6c43c6'),
(1263, 345, '_EventVenueID', '130'),
(1264, 345, '_EventURL', 'http://andrelleducation.com.au/courses'),
(1265, 345, '_thumbnail_id', '343'),
(1269, 345, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop'),
(1271, 345, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-11-21 08:45:00";s:12:"EventEndDate";s:19:"2015-11-21 15:30:00";}}s:10:"exclusions";a:0:{}}'),
(1286, 346, '_EventOrigin', 'events-calendar'),
(1287, 346, '_EventShowMapLink', '1'),
(1288, 346, '_EventShowMap', '1'),
(1289, 346, '_EventStartDate', '2015-11-23 08:45:00'),
(1290, 346, '_EventEndDate', '2015-11-23 15:30:00'),
(1291, 346, '_EventStartDateUTC', '2015-11-23 08:45:00'),
(1292, 346, '_EventEndDateUTC', '2015-11-23 15:30:00') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1293, 346, '_EventDuration', '24300'),
(1294, 346, '_EventTimezone', 'UTC+0'),
(1295, 346, '_EventTimezoneAbbr', ''),
(1296, 346, '_eventrocket_enable_rsvp', ''),
(1297, 346, '_eventrocket_restrict_rsvp', ''),
(1298, 346, '_eventrocket_limit_rsvp', '40'),
(1299, 346, '_eventrocket_show_attendees_rsvp', ''),
(1300, 346, '_edit_lock', '1446238574:1'),
(1301, 346, '_edit_last', '1'),
(1302, 346, 'base_event', '340'),
(1303, 346, '_base_event', 'field_5608e0d6c43c6'),
(1305, 346, '_EventVenueID', '350'),
(1306, 346, '_EventURL', 'http://andrelleducation.com.au/courses'),
(1307, 346, '_thumbnail_id', '343'),
(1310, 346, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop'),
(1312, 346, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-11-23 08:45:00";s:12:"EventEndDate";s:19:"2015-11-23 15:30:00";}}s:10:"exclusions";a:0:{}}'),
(1313, 347, '_VenueOrigin', 'events-calendar'),
(1314, 347, '_EventShowMapLink', '1'),
(1315, 347, '_EventShowMap', '1'),
(1316, 347, '_VenueVenue', 'Swan Hill'),
(1317, 347, '_VenueAddress', ''),
(1318, 347, '_VenueCity', ''),
(1319, 347, '_VenueCountry', 'Australia'),
(1320, 347, '_VenueProvince', ''),
(1321, 347, '_VenueState', ''),
(1322, 347, '_VenueZip', ''),
(1323, 347, '_VenuePhone', ''),
(1324, 347, '_VenueURL', ''),
(1325, 347, '_VenueShowMap', 'true'),
(1326, 347, '_VenueShowMapLink', 'true'),
(1327, 347, '_VenueStateProvince', ''),
(1328, 347, '_VenueOverwriteCoords', '0'),
(1329, 347, '_VenueLat', '-25.274398'),
(1330, 347, '_VenueLng', '133.775136'),
(1331, 347, '_VenueGeoAddress', 'Australia'),
(1334, 348, '_EventOrigin', 'events-calendar'),
(1335, 349, '_VenueOrigin', 'events-calendar'),
(1336, 349, '_EventShowMapLink', '1'),
(1337, 349, '_EventShowMap', '1'),
(1338, 349, '_VenueVenue', 'Warrnambool'),
(1339, 349, '_VenueAddress', ''),
(1340, 349, '_VenueCity', ''),
(1341, 349, '_VenueCountry', 'Australia'),
(1342, 349, '_VenueProvince', ''),
(1343, 349, '_VenueZip', ''),
(1344, 349, '_VenuePhone', ''),
(1345, 349, '_VenueURL', ''),
(1346, 349, '_VenueShowMap', 'true'),
(1347, 349, '_VenueShowMapLink', 'true'),
(1348, 349, '_VenueStateProvince', ''),
(1349, 349, '_VenueOverwriteCoords', '0'),
(1350, 349, '_VenueLat', '-25.274398'),
(1351, 349, '_VenueLng', '133.775136'),
(1352, 349, '_VenueGeoAddress', 'Australia'),
(1356, 350, '_VenueOrigin', 'events-calendar'),
(1357, 350, '_EventShowMapLink', '1'),
(1358, 350, '_EventShowMap', '1'),
(1359, 350, '_VenueVenue', 'Bendigo'),
(1360, 350, '_VenueAddress', ''),
(1361, 350, '_VenueCity', ''),
(1362, 350, '_VenueCountry', 'Australia'),
(1363, 350, '_VenueProvince', ''),
(1364, 350, '_VenueZip', ''),
(1365, 350, '_VenuePhone', ''),
(1366, 350, '_VenueURL', ''),
(1367, 350, '_VenueShowMap', 'true'),
(1368, 350, '_VenueShowMapLink', 'true'),
(1369, 350, '_VenueStateProvince', ''),
(1370, 350, '_VenueOverwriteCoords', '0'),
(1371, 350, '_VenueLat', '-25.274398'),
(1372, 350, '_VenueLng', '133.775136'),
(1373, 350, '_VenueGeoAddress', 'Australia'),
(1375, 47, '_wp_trash_meta_status', 'publish'),
(1376, 47, '_wp_trash_meta_time', '1446182235'),
(1377, 42, '_wp_trash_meta_status', 'publish'),
(1378, 42, '_wp_trash_meta_time', '1446182235'),
(1379, 351, '_EventOrigin', 'events-calendar'),
(1380, 351, '_EventShowMapLink', '1'),
(1381, 351, '_EventShowMap', '1'),
(1382, 351, '_EventStartDate', '2015-11-24 08:45:00'),
(1383, 351, '_EventEndDate', '2015-11-24 15:30:00'),
(1384, 351, '_EventStartDateUTC', '2015-11-24 08:45:00'),
(1385, 351, '_EventEndDateUTC', '2015-11-24 15:30:00'),
(1386, 351, '_EventDuration', '24300'),
(1387, 351, '_EventTimezone', 'UTC+0'),
(1388, 351, '_EventTimezoneAbbr', ''),
(1389, 351, '_eventrocket_enable_rsvp', ''),
(1390, 351, '_eventrocket_restrict_rsvp', ''),
(1391, 351, '_eventrocket_limit_rsvp', '40'),
(1392, 351, '_eventrocket_show_attendees_rsvp', ''),
(1393, 351, '_edit_lock', '1446238555:1'),
(1394, 351, '_edit_last', '1'),
(1395, 351, 'base_event', '340'),
(1396, 351, '_base_event', 'field_5608e0d6c43c6'),
(1398, 351, '_EventVenueID', '347'),
(1399, 351, '_EventURL', 'http://andrelleducation.com.au/courses'),
(1400, 351, '_thumbnail_id', '343'),
(1403, 351, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop'),
(1405, 351, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-11-24 08:45:00";s:12:"EventEndDate";s:19:"2015-11-24 15:30:00";}}s:10:"exclusions";a:0:{}}'),
(1406, 352, '_EventOrigin', 'events-calendar') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1407, 352, '_EventShowMapLink', '1'),
(1408, 352, '_EventShowMap', '1'),
(1409, 352, '_EventStartDate', '2015-11-12 16:00:00'),
(1410, 352, '_EventEndDate', '2015-11-12 18:00:00'),
(1411, 352, '_EventStartDateUTC', '2015-11-12 16:00:00'),
(1412, 352, '_EventEndDateUTC', '2015-11-12 18:00:00'),
(1413, 352, '_EventDuration', '7200'),
(1414, 352, '_EventTimezone', 'UTC+0'),
(1415, 352, '_EventTimezoneAbbr', ''),
(1416, 352, '_eventrocket_enable_rsvp', ''),
(1417, 352, '_eventrocket_restrict_rsvp', ''),
(1418, 352, '_eventrocket_limit_rsvp', '20'),
(1419, 352, '_eventrocket_show_attendees_rsvp', '1'),
(1420, 352, '_edit_lock', '1446336030:1'),
(1421, 352, '_edit_last', '1'),
(1422, 352, 'base_event', '340'),
(1423, 352, '_base_event', 'field_5608e0d6c43c6'),
(1425, 352, '_EventVenueID', '412'),
(1426, 352, '_EventURL', 'http://edumazing.com.au/'),
(1427, 352, '_thumbnail_id', '408'),
(1430, 352, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop'),
(1431, 353, '_VenueOrigin', 'events-calendar'),
(1432, 353, '_EventShowMapLink', ''),
(1433, 353, '_EventShowMap', ''),
(1434, 353, '_VenueVenue', 'Perth'),
(1435, 353, '_VenueAddress', 'Swan Bank Rd'),
(1436, 353, '_VenueCity', 'Maylands'),
(1437, 353, '_VenueCountry', 'Australia'),
(1438, 353, '_VenueProvince', 'WA'),
(1439, 353, '_VenueZip', '6051'),
(1440, 353, '_VenuePhone', ''),
(1441, 353, '_VenueURL', ''),
(1442, 353, '_VenueShowMap', 'true'),
(1443, 353, '_VenueShowMapLink', 'true'),
(1444, 353, '_VenueStateProvince', 'WA'),
(1445, 353, '_VenueOverwriteCoords', '0'),
(1446, 353, '_VenueLat', '-31.9437339'),
(1447, 353, '_VenueLng', '115.9032879'),
(1448, 353, '_VenueGeoAddress', 'Swan Bank Rd Maylands WA WA 6051 Australia'),
(1450, 352, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-11-12 16:00:00";s:12:"EventEndDate";s:19:"2015-11-12 18:00:00";}}s:10:"exclusions";a:0:{}}'),
(1451, 354, '_visibility', 'hidden'),
(1452, 354, '_tax_status', 'taxable'),
(1453, 354, '_tax_class', ''),
(1454, 354, '_purchase_note', ''),
(1455, 354, '_weight', ''),
(1456, 354, '_length', ''),
(1457, 354, '_width', ''),
(1458, 354, '_height', ''),
(1459, 354, '_downloadable', 'no'),
(1460, 354, '_virtual', 'yes'),
(1461, 354, '_sale_price_dates_from', ''),
(1462, 354, '_sale_price_dates_to', ''),
(1463, 354, '_product_attributes', 'a:0:{}'),
(1464, 354, '_sale_price', ''),
(1465, 354, 'total_sales', '0'),
(1466, 354, '_tribe_wooticket_for_event', '352'),
(1467, 354, '_regular_price', '99'),
(1468, 354, '_price', '99'),
(1469, 354, '_manage_stock', 'no'),
(1470, 354, '_sku', ''),
(1474, 355, '_visibility', 'hidden'),
(1475, 355, '_tax_status', 'taxable'),
(1476, 355, '_tax_class', ''),
(1477, 355, '_purchase_note', ''),
(1478, 355, '_weight', ''),
(1479, 355, '_length', ''),
(1480, 355, '_width', ''),
(1481, 355, '_height', ''),
(1482, 355, '_downloadable', 'no'),
(1483, 355, '_virtual', 'yes'),
(1484, 355, '_sale_price_dates_from', ''),
(1485, 355, '_sale_price_dates_to', ''),
(1486, 355, '_product_attributes', 'a:0:{}'),
(1487, 355, '_sale_price', ''),
(1488, 355, 'total_sales', '0'),
(1489, 355, '_tribe_wooticket_for_event', '344'),
(1490, 355, '_regular_price', '275'),
(1491, 355, '_price', '275'),
(1492, 355, '_manage_stock', 'yes'),
(1493, 355, '_sku', ''),
(1497, 356, '_visibility', 'hidden'),
(1498, 356, '_tax_status', 'taxable'),
(1499, 356, '_tax_class', ''),
(1500, 356, '_purchase_note', ''),
(1501, 356, '_weight', ''),
(1502, 356, '_length', ''),
(1503, 356, '_width', ''),
(1504, 356, '_height', ''),
(1505, 356, '_downloadable', 'no'),
(1506, 356, '_virtual', 'yes'),
(1507, 356, '_sale_price_dates_from', ''),
(1508, 356, '_sale_price_dates_to', ''),
(1509, 356, '_product_attributes', 'a:0:{}'),
(1510, 356, '_sale_price', ''),
(1511, 356, 'total_sales', '0'),
(1512, 356, '_tribe_wooticket_for_event', '351'),
(1513, 356, '_regular_price', '275'),
(1514, 356, '_price', '275'),
(1515, 356, '_manage_stock', 'yes'),
(1516, 356, '_sku', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1522, 357, '_visibility', 'hidden'),
(1523, 357, '_tax_status', 'taxable'),
(1524, 357, '_tax_class', ''),
(1525, 357, '_purchase_note', ''),
(1526, 357, '_weight', ''),
(1527, 357, '_length', ''),
(1528, 357, '_width', ''),
(1529, 357, '_height', ''),
(1530, 357, '_downloadable', 'no'),
(1531, 357, '_virtual', 'yes'),
(1532, 357, '_sale_price_dates_from', ''),
(1533, 357, '_sale_price_dates_to', ''),
(1534, 357, '_product_attributes', 'a:0:{}'),
(1535, 357, '_sale_price', ''),
(1536, 357, 'total_sales', '0'),
(1537, 357, '_tribe_wooticket_for_event', '345'),
(1538, 357, '_regular_price', '200'),
(1539, 357, '_price', '200'),
(1540, 357, '_manage_stock', 'yes'),
(1541, 357, '_sku', ''),
(1546, 358, '_visibility', 'hidden'),
(1547, 358, '_tax_status', 'taxable'),
(1548, 358, '_tax_class', ''),
(1549, 358, '_purchase_note', ''),
(1550, 358, '_weight', ''),
(1551, 358, '_length', ''),
(1552, 358, '_width', ''),
(1553, 358, '_height', ''),
(1554, 358, '_downloadable', 'no'),
(1555, 358, '_virtual', 'yes'),
(1556, 358, '_sale_price_dates_from', ''),
(1557, 358, '_sale_price_dates_to', ''),
(1558, 358, '_product_attributes', 'a:0:{}'),
(1559, 358, '_sale_price', ''),
(1560, 358, 'total_sales', '0'),
(1561, 358, '_tribe_wooticket_for_event', '346'),
(1562, 358, '_regular_price', '275'),
(1563, 358, '_price', '275'),
(1564, 358, '_manage_stock', 'yes'),
(1565, 358, '_sku', ''),
(1589, 359, '_wp_attached_file', '2015/10/image3.png'),
(1590, 359, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1366;s:6:"height";i:768;s:4:"file";s:18:"2015/10/image3.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"image3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"image3-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:19:"image3-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:18:"image3-370x370.png";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"image3-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"image3-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:18:"image3-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1591, 328, '_thumbnail_id', '359'),
(1592, 328, '_pingme', '1'),
(1593, 328, '_encloseme', '1'),
(1594, 361, '_EventOrigin', 'events-calendar'),
(1595, 361, '_edit_lock', '1446239005:1'),
(1596, 362, '_wp_attached_file', '2015/09/k_jdubois_nbarchowsky_handwriting_04-02-081.jpg'),
(1597, 362, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:288;s:4:"file";s:55:"2015/09/k_jdubois_nbarchowsky_handwriting_04-02-081.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:55:"k_jdubois_nbarchowsky_handwriting_04-02-081-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:55:"k_jdubois_nbarchowsky_handwriting_04-02-081-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:55:"k_jdubois_nbarchowsky_handwriting_04-02-081-370x288.jpg";s:5:"width";i:370;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:55:"k_jdubois_nbarchowsky_handwriting_04-02-081-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:55:"k_jdubois_nbarchowsky_handwriting_04-02-081-300x288.jpg";s:5:"width";i:300;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1598, 326, '_thumbnail_id', '362'),
(1599, 326, '_pingme', '1'),
(1600, 326, '_encloseme', '1'),
(1601, 361, '_edit_last', '1'),
(1602, 363, '_visibility', 'hidden'),
(1603, 363, '_tax_status', 'taxable'),
(1604, 363, '_tax_class', ''),
(1605, 363, '_purchase_note', ''),
(1606, 363, '_weight', ''),
(1607, 363, '_length', ''),
(1608, 363, '_width', ''),
(1609, 363, '_height', ''),
(1610, 363, '_downloadable', 'no'),
(1611, 363, '_virtual', 'yes'),
(1612, 363, '_sale_price_dates_from', ''),
(1613, 363, '_sale_price_dates_to', ''),
(1614, 363, '_product_attributes', 'a:0:{}'),
(1615, 363, '_sale_price', ''),
(1616, 363, 'total_sales', '0'),
(1617, 363, '_tribe_wooticket_for_event', '361'),
(1618, 363, '_regular_price', '300'),
(1619, 363, '_price', '300'),
(1620, 363, '_manage_stock', 'yes'),
(1621, 363, '_sku', ''),
(1623, 361, 'base_event', ''),
(1624, 361, '_base_event', 'field_5608e0d6c43c6'),
(1625, 361, '_EventShowMapLink', '1'),
(1626, 361, '_EventShowMap', '1'),
(1627, 361, '_EventStartDate', '2015-11-05 08:45:00'),
(1628, 361, '_EventEndDate', '2015-11-05 15:30:00'),
(1629, 361, '_EventStartDateUTC', '2015-11-05 08:45:00'),
(1630, 361, '_EventEndDateUTC', '2015-11-05 15:30:00'),
(1631, 361, '_EventDuration', '24300'),
(1632, 361, '_EventVenueID', '342'),
(1634, 361, '_EventURL', 'http://andrelleducation.com.au/courses'),
(1636, 361, '_EventTimezone', 'UTC+0'),
(1637, 361, '_EventTimezoneAbbr', ''),
(1638, 361, '_eventrocket_enable_rsvp', ''),
(1639, 361, '_eventrocket_restrict_rsvp', ''),
(1640, 361, '_eventrocket_limit_rsvp', '25'),
(1641, 361, '_eventrocket_show_attendees_rsvp', ''),
(1642, 361, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-11-05 08:45:00";s:12:"EventEndDate";s:19:"2015-11-05 15:30:00";}}s:10:"exclusions";a:0:{}}'),
(1643, 364, '_EventOrigin', 'events-calendar'),
(1644, 364, '_EventShowMapLink', '1'),
(1645, 364, '_EventShowMap', '1'),
(1646, 364, '_EventStartDate', '2015-11-12 08:45:00'),
(1647, 364, '_EventEndDate', '2015-11-12 15:30:00'),
(1648, 364, '_EventStartDateUTC', '2015-11-12 08:45:00'),
(1649, 364, '_EventEndDateUTC', '2015-11-12 15:30:00'),
(1650, 364, '_EventDuration', '24300'),
(1651, 364, '_EventTimezone', 'UTC+0') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1652, 364, '_EventTimezoneAbbr', ''),
(1653, 364, '_eventrocket_enable_rsvp', ''),
(1654, 364, '_eventrocket_restrict_rsvp', ''),
(1655, 364, '_eventrocket_limit_rsvp', '25'),
(1656, 364, '_eventrocket_show_attendees_rsvp', ''),
(1657, 364, '_edit_lock', '1446238653:1'),
(1658, 364, '_edit_last', '1'),
(1659, 364, 'base_event', '361'),
(1660, 364, '_base_event', 'field_5608e0d6c43c6'),
(1661, 364, '_EventVenueID', '349'),
(1663, 364, '_EventURL', 'http://andrelleducation.com.au/courses'),
(1665, 365, '_visibility', 'hidden'),
(1666, 365, '_tax_status', 'taxable'),
(1667, 365, '_tax_class', ''),
(1668, 365, '_purchase_note', ''),
(1669, 365, '_weight', ''),
(1670, 365, '_length', ''),
(1671, 365, '_width', ''),
(1672, 365, '_height', ''),
(1673, 365, '_downloadable', 'no'),
(1674, 365, '_virtual', 'yes'),
(1675, 365, '_sale_price_dates_from', ''),
(1676, 365, '_sale_price_dates_to', ''),
(1677, 365, '_product_attributes', 'a:0:{}'),
(1678, 365, '_sale_price', ''),
(1679, 365, 'total_sales', '0'),
(1680, 365, '_tribe_wooticket_for_event', '364'),
(1681, 365, '_regular_price', '300'),
(1682, 365, '_price', '300'),
(1683, 365, '_manage_stock', 'yes'),
(1684, 365, '_sku', ''),
(1686, 364, '_wp_old_slug', 'day-2-assessment-and-data-tracking'),
(1689, 364, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-11-12 08:45:00";s:12:"EventEndDate";s:19:"2015-11-12 15:30:00";}}s:10:"exclusions";a:0:{}}'),
(1690, 366, '_wp_attached_file', '2015/10/Day2.jpg'),
(1691, 366, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:16:"2015/10/Day2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"Day2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"Day2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:16:"Day2-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"Day2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"Day2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.2000000000000002;s:6:"credit";s:0:"";s:6:"camera";s:8:"iPhone 6";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1438273913;s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"4.15";s:3:"iso";s:2:"32";s:13:"shutter_speed";s:17:"0.033333333333333";s:5:"title";s:0:"";s:11:"orientation";i:6;}}'),
(1692, 364, '_thumbnail_id', '366'),
(1695, 361, '_thumbnail_id', '366'),
(1700, 367, '_EventOrigin', 'events-calendar'),
(1701, 367, '_EventShowMapLink', '1'),
(1702, 367, '_EventShowMap', '1'),
(1703, 367, '_EventStartDate', '2015-11-17 08:45:00'),
(1704, 367, '_EventEndDate', '2015-11-17 15:30:00'),
(1705, 367, '_EventStartDateUTC', '2015-11-17 08:45:00'),
(1706, 367, '_EventEndDateUTC', '2015-11-17 15:30:00'),
(1707, 367, '_EventDuration', '24300'),
(1708, 367, '_EventTimezone', 'UTC+0'),
(1709, 367, '_EventTimezoneAbbr', ''),
(1710, 367, '_eventrocket_enable_rsvp', ''),
(1711, 367, '_eventrocket_restrict_rsvp', ''),
(1712, 367, '_eventrocket_limit_rsvp', '25'),
(1713, 367, '_eventrocket_show_attendees_rsvp', ''),
(1714, 367, '_edit_lock', '1446238613:1'),
(1715, 367, '_edit_last', '1'),
(1716, 367, 'base_event', '361'),
(1717, 367, '_base_event', 'field_5608e0d6c43c6'),
(1718, 367, '_EventVenueID', '441'),
(1719, 367, '_EventURL', 'http://andrelleducation.com.au/courses'),
(1720, 367, '_thumbnail_id', '366'),
(1723, 368, '_visibility', 'hidden'),
(1724, 368, '_tax_status', 'taxable'),
(1725, 368, '_tax_class', ''),
(1726, 368, '_purchase_note', ''),
(1727, 368, '_weight', ''),
(1728, 368, '_length', ''),
(1729, 368, '_width', ''),
(1730, 368, '_height', ''),
(1731, 368, '_downloadable', 'no'),
(1732, 368, '_virtual', 'yes'),
(1733, 368, '_sale_price_dates_from', ''),
(1734, 368, '_sale_price_dates_to', ''),
(1735, 368, '_product_attributes', 'a:0:{}'),
(1736, 368, '_sale_price', ''),
(1737, 368, 'total_sales', '0'),
(1738, 368, '_tribe_wooticket_for_event', '367'),
(1739, 368, '_regular_price', '300'),
(1740, 368, '_price', '300'),
(1741, 368, '_manage_stock', 'no'),
(1742, 368, '_sku', ''),
(1744, 367, '_wp_old_slug', 'day-2-assessment-and-data-tracking'),
(1747, 367, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-11-17 08:45:00";s:12:"EventEndDate";s:19:"2015-11-17 15:30:00";}}s:10:"exclusions";a:0:{}}'),
(1750, 323, '_pingme', '1'),
(1751, 323, '_encloseme', '1'),
(1752, 397, '_edit_lock', '1446226781:1'),
(1753, 397, '_edit_last', '1'),
(1754, 397, '_wp_page_template', 'default'),
(1755, 399, '_menu_item_type', 'post_type'),
(1756, 399, '_menu_item_menu_item_parent', '0'),
(1757, 399, '_menu_item_object_id', '397'),
(1758, 399, '_menu_item_object', 'page'),
(1759, 399, '_menu_item_target', ''),
(1760, 399, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1761, 399, '_menu_item_xfn', ''),
(1762, 399, '_menu_item_url', ''),
(1764, 402, '_OrganizerOrigin', 'events-calendar'),
(1765, 402, '_edit_lock', '1446336433:1'),
(1766, 402, '_edit_last', '1'),
(1767, 402, '_OrganizerPhone', '03 9731 1400'),
(1768, 402, '_OrganizerWebsite', 'https://edumazing.com/'),
(1769, 402, '_OrganizerEmail', 'info@edumazing.com'),
(1770, 402, 'address', 'Werribee, Victoria 3030') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1771, 402, '_address', 'field_5631c5c248943'),
(1772, 402, 'facebook', 'https://www.facebook.com/Edumazing'),
(1773, 402, '_facebook', 'field_5631ccac664be'),
(1774, 402, 'instagram', ''),
(1775, 402, '_instagram', 'field_5631ccb507ae2'),
(1776, 402, 'twitter', 'http://twitter.com/edumazing'),
(1777, 402, '_twitter', 'field_5631ccbf6dcdd'),
(1778, 402, 'linkedin', 'http://au.linkedin.com/in/georginapazzi'),
(1779, 402, '_linkedin', 'field_5631ccc8401be'),
(1780, 402, '_Organizer2ndImage', '404'),
(1781, 402, '__Organizer2ndImage', 'field_5631b8124f02a'),
(1782, 402, 'provider_logo', '407'),
(1783, 402, '_provider_logo', 'field_5631c47a61cf7'),
(1784, 403, '_wp_attached_file', '2015/10/powerofblogging.jpg'),
(1785, 403, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:750;s:4:"file";s:27:"2015/10/powerofblogging.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"powerofblogging-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"powerofblogging-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"powerofblogging-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:27:"powerofblogging-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"powerofblogging-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"powerofblogging-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:27:"powerofblogging-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(1786, 404, '_wp_attached_file', '2015/10/Orange.png'),
(1787, 404, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:524;s:6:"height";i:455;s:4:"file";s:18:"2015/10/Orange.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Orange-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"Orange-300x260.png";s:5:"width";i:300;s:6:"height";i:260;s:9:"mime-type";s:9:"image/png";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:18:"Orange-370x370.png";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"Orange-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"Orange-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1788, 405, '_wp_attached_file', '2015/10/logo.png'),
(1789, 405, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:418;s:6:"height";i:106;s:4:"file";s:16:"2015/10/logo.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo-150x106.png";s:5:"width";i:150;s:6:"height";i:106;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"logo-300x76.png";s:5:"width";i:300;s:6:"height";i:76;s:9:"mime-type";s:9:"image/png";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:16:"logo-370x106.png";s:5:"width";i:370;s:6:"height";i:106;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"logo-180x106.png";s:5:"width";i:180;s:6:"height";i:106;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"logo-300x106.png";s:5:"width";i:300;s:6:"height";i:106;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1790, 406, '_wp_attached_file', '2015/10/edumazingbanner.png'),
(1791, 406, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:600;s:4:"file";s:27:"2015/10/edumazingbanner.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"edumazingbanner-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"edumazingbanner-300x75.png";s:5:"width";i:300;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:28:"edumazingbanner-1024x256.png";s:5:"width";i:1024;s:6:"height";i:256;s:9:"mime-type";s:9:"image/png";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:27:"edumazingbanner-370x370.png";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"edumazingbanner-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"edumazingbanner-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:27:"edumazingbanner-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1792, 407, '_wp_attached_file', '2015/10/Community-Portrait.png'),
(1793, 407, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:988;s:6:"height";i:1004;s:4:"file";s:30:"2015/10/Community-Portrait.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"Community-Portrait-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"Community-Portrait-295x300.png";s:5:"width";i:295;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:30:"Community-Portrait-370x370.png";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"Community-Portrait-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"Community-Portrait-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:30:"Community-Portrait-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1794, 408, '_wp_attached_file', '2015/10/BYODAppToolkit.jpg'),
(1795, 408, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2015/10/BYODAppToolkit.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"BYODAppToolkit-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"BYODAppToolkit-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:26:"BYODAppToolkit-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"BYODAppToolkit-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"BYODAppToolkit-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"BYODAppToolkit-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1796, 402, '_members_access_role', 'provider'),
(1798, 402, '_thumbnail_id', '405'),
(1799, 410, '_EventOrigin', 'events-calendar'),
(1800, 410, '_EventShowMapLink', '1'),
(1801, 410, '_EventShowMap', '1'),
(1802, 410, '_EventStartDate', '2015-12-14 08:45:00'),
(1803, 410, '_EventEndDate', '2015-12-14 15:30:00'),
(1804, 410, '_EventStartDateUTC', '2015-12-14 08:45:00'),
(1805, 410, '_EventEndDateUTC', '2015-12-14 15:30:00'),
(1806, 410, '_EventDuration', '24300'),
(1807, 410, '_EventTimezone', 'UTC+0'),
(1808, 410, '_EventTimezoneAbbr', ''),
(1809, 410, '_eventrocket_enable_rsvp', ''),
(1810, 410, '_eventrocket_restrict_rsvp', ''),
(1811, 410, '_eventrocket_limit_rsvp', '40'),
(1812, 410, '_eventrocket_show_attendees_rsvp', ''),
(1813, 410, '_edit_lock', '1446238536:1'),
(1814, 410, '_edit_last', '1'),
(1815, 410, 'base_event', '340'),
(1816, 410, '_base_event', 'field_5608e0d6c43c6'),
(1818, 410, '_EventVenueID', '353'),
(1819, 410, '_EventURL', 'http://andrelleducation.com.au/courses'),
(1820, 410, '_thumbnail_id', '343'),
(1821, 410, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop'),
(1826, 352, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop-6'),
(1827, 412, '_VenueOrigin', 'events-calendar'),
(1828, 412, '_EventShowMapLink', '1'),
(1829, 412, '_EventShowMap', '1'),
(1830, 412, '_VenueVenue', 'Edumazing Educational Studios'),
(1831, 412, '_VenueAddress', 'Level 1, 84 Synnot Street,'),
(1832, 412, '_VenueCity', 'Werribee'),
(1833, 412, '_VenueProvince', 'Perth'),
(1834, 412, '_VenueZip', '3030'),
(1835, 412, '_VenuePhone', ''),
(1836, 412, '_VenueURL', ''),
(1837, 412, '_VenueShowMap', 'true'),
(1838, 412, '_VenueShowMapLink', 'true'),
(1839, 412, '_VenueStateProvince', 'Perth'),
(1840, 412, '_VenueOverwriteCoords', '0'),
(1841, 412, '_VenueGeoAddress', 'Level 1, 84 Synnot Street, Werribee Perth  3030'),
(1844, 413, '_EventOrigin', 'events-calendar'),
(1845, 413, '_EventShowMapLink', '1'),
(1846, 413, '_EventShowMap', '1'),
(1847, 413, '_EventStartDate', '2015-11-18 16:00:00'),
(1848, 413, '_EventEndDate', '2015-11-18 18:00:00'),
(1849, 413, '_EventStartDateUTC', '2015-11-18 16:00:00'),
(1850, 413, '_EventEndDateUTC', '2015-11-18 18:00:00'),
(1851, 413, '_EventDuration', '7200'),
(1852, 413, '_EventTimezone', 'UTC+0'),
(1853, 413, '_EventTimezoneAbbr', ''),
(1854, 413, '_eventrocket_enable_rsvp', ''),
(1855, 413, '_eventrocket_restrict_rsvp', ''),
(1856, 413, '_eventrocket_limit_rsvp', '20'),
(1857, 413, '_eventrocket_show_attendees_rsvp', '1'),
(1858, 413, '_edit_lock', '1446335978:1'),
(1859, 413, '_edit_last', '1'),
(1860, 413, 'base_event', '340'),
(1861, 413, '_base_event', 'field_5608e0d6c43c6'),
(1862, 413, '_EventVenueID', '414'),
(1863, 413, '_EventURL', 'http://edumazing.com.au/'),
(1864, 413, '_thumbnail_id', '408'),
(1865, 413, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop'),
(1868, 413, '_wp_old_slug', 'byod-app-toolkit'),
(1869, 414, '_VenueOrigin', 'events-calendar'),
(1870, 414, '_EventShowMapLink', '1'),
(1871, 414, '_EventShowMap', '1'),
(1872, 414, '_VenueVenue', 'Darebin Arts & Entertainment Centre'),
(1873, 414, '_VenueAddress', 'Cnr Bell St & St Georges Rd'),
(1874, 414, '_VenueCity', 'Preston'),
(1875, 414, '_VenueProvince', 'Perth'),
(1876, 414, '_VenueZip', '3072'),
(1877, 414, '_VenuePhone', ''),
(1878, 414, '_VenueURL', ''),
(1879, 414, '_VenueShowMap', 'true'),
(1880, 414, '_VenueShowMapLink', 'true') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1881, 414, '_VenueStateProvince', 'Perth'),
(1882, 414, '_VenueOverwriteCoords', '0'),
(1883, 414, '_VenueGeoAddress', 'Cnr Bell St & St Georges Rd Preston Perth  3072'),
(1885, 413, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-11-18 16:00:00";s:12:"EventEndDate";s:19:"2015-11-18 18:00:00";}}s:10:"exclusions";a:0:{}}'),
(1886, 415, '_EventOrigin', 'events-calendar'),
(1887, 415, '_EventShowMapLink', '1'),
(1888, 415, '_EventShowMap', '1'),
(1889, 415, '_EventStartDate', '2015-11-20 20:45:00'),
(1890, 415, '_EventEndDate', '2015-11-20 20:45:00'),
(1891, 415, '_EventStartDateUTC', '2015-11-20 20:45:00'),
(1892, 415, '_EventEndDateUTC', '2015-11-20 20:45:00'),
(1893, 415, '_EventDuration', '0'),
(1894, 415, '_EventTimezone', 'UTC+0'),
(1895, 415, '_EventTimezoneAbbr', ''),
(1896, 415, '_eventrocket_enable_rsvp', ''),
(1897, 415, '_eventrocket_restrict_rsvp', ''),
(1898, 415, '_eventrocket_limit_rsvp', '20'),
(1899, 415, '_eventrocket_show_attendees_rsvp', '1'),
(1900, 415, '_edit_lock', '1446335704:1'),
(1901, 415, '_edit_last', '1'),
(1902, 415, 'base_event', '340'),
(1903, 415, '_base_event', 'field_5608e0d6c43c6'),
(1904, 415, '_EventVenueID', '417'),
(1905, 415, '_EventURL', 'http://edumazing.com.au/'),
(1906, 415, '_thumbnail_id', '416'),
(1907, 415, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop'),
(1909, 416, '_wp_attached_file', '2015/10/engagingreluctantlearners.jpg'),
(1910, 416, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:750;s:4:"file";s:37:"2015/10/engagingreluctantlearners.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"engagingreluctantlearners-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"engagingreluctantlearners-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"engagingreluctantlearners-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:37:"engagingreluctantlearners-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"engagingreluctantlearners-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:37:"engagingreluctantlearners-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:37:"engagingreluctantlearners-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(1911, 417, '_VenueOrigin', 'events-calendar'),
(1912, 417, '_EventShowMapLink', '1'),
(1913, 417, '_EventShowMap', '1'),
(1914, 417, '_VenueVenue', 'Club Ringwood'),
(1915, 417, '_VenueAddress', 'Maroondah Hwy'),
(1916, 417, '_VenueCity', 'Ringwood'),
(1917, 417, '_VenueProvince', 'Perth'),
(1918, 417, '_VenueZip', '3134'),
(1919, 417, '_VenuePhone', ''),
(1920, 417, '_VenueURL', ''),
(1921, 417, '_VenueShowMap', 'true'),
(1922, 417, '_VenueShowMapLink', 'true'),
(1923, 417, '_VenueStateProvince', 'Perth'),
(1924, 417, '_VenueOverwriteCoords', '0'),
(1925, 417, '_VenueGeoAddress', 'Maroondah Hwy Ringwood Perth  3134'),
(1927, 415, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-11-20 20:45:00";s:12:"EventEndDate";s:19:"2015-11-20 20:45:00";}}s:10:"exclusions";a:0:{}}'),
(1929, 418, '_EventOrigin', 'events-calendar'),
(1930, 418, '_EventShowMapLink', '1'),
(1931, 418, '_EventShowMap', '1'),
(1932, 418, '_EventStartDate', '2015-11-27 20:45:00'),
(1933, 418, '_EventEndDate', '2015-11-27 20:45:00'),
(1934, 418, '_EventStartDateUTC', '2015-11-27 20:45:00'),
(1935, 418, '_EventEndDateUTC', '2015-11-27 20:45:00'),
(1936, 418, '_EventDuration', '0'),
(1937, 418, '_EventTimezone', 'UTC+0'),
(1938, 418, '_EventTimezoneAbbr', ''),
(1939, 418, '_eventrocket_enable_rsvp', ''),
(1940, 418, '_eventrocket_restrict_rsvp', ''),
(1941, 418, '_eventrocket_limit_rsvp', '20'),
(1942, 418, '_eventrocket_show_attendees_rsvp', '1'),
(1943, 418, '_edit_lock', '1446422489:1'),
(1944, 418, '_edit_last', '1'),
(1945, 418, 'base_event', '340'),
(1946, 418, '_base_event', 'field_5608e0d6c43c6'),
(1947, 418, '_EventVenueID', '412'),
(1948, 418, '_EventURL', 'http://edumazing.com.au/'),
(1949, 418, '_thumbnail_id', '416'),
(1950, 418, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop'),
(1952, 418, '_wp_old_slug', 'engaging-reluctant-literacy-learners'),
(1954, 418, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-11-27 20:45:00";s:12:"EventEndDate";s:19:"2015-11-27 20:45:00";}}s:10:"exclusions";a:0:{}}'),
(1956, 410, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-12-14 08:45:00";s:12:"EventEndDate";s:19:"2015-12-14 15:30:00";}}s:10:"exclusions";a:0:{}}'),
(1957, 419, '_EventOrigin', 'events-calendar'),
(1958, 419, '_EventShowMapLink', '1'),
(1959, 419, '_EventShowMap', '1'),
(1960, 419, '_EventStartDate', '2015-11-27 20:45:00'),
(1961, 419, '_EventEndDate', '2015-11-27 20:45:00'),
(1962, 419, '_EventStartDateUTC', '2015-11-27 20:45:00'),
(1963, 419, '_EventEndDateUTC', '2015-11-27 20:45:00'),
(1964, 419, '_EventDuration', '0'),
(1965, 419, '_EventTimezone', 'UTC+0'),
(1966, 419, '_EventTimezoneAbbr', ''),
(1967, 419, '_eventrocket_enable_rsvp', ''),
(1968, 419, '_eventrocket_restrict_rsvp', ''),
(1969, 419, '_eventrocket_limit_rsvp', '20'),
(1970, 419, '_eventrocket_show_attendees_rsvp', '1'),
(1971, 419, '_edit_lock', '1446335866:1'),
(1972, 419, '_edit_last', '1'),
(1973, 419, 'base_event', '340'),
(1974, 419, '_base_event', 'field_5608e0d6c43c6'),
(1975, 419, '_EventVenueID', '421'),
(1976, 419, '_EventURL', 'http://edumazing.com.au/'),
(1977, 419, '_thumbnail_id', '403'),
(1978, 419, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop'),
(1980, 420, '_visibility', 'hidden'),
(1981, 420, '_tax_status', 'taxable'),
(1982, 420, '_tax_class', ''),
(1983, 420, '_purchase_note', ''),
(1984, 420, '_weight', ''),
(1985, 420, '_length', ''),
(1986, 420, '_width', ''),
(1987, 420, '_height', ''),
(1988, 420, '_downloadable', 'no') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1989, 420, '_virtual', 'yes'),
(1990, 420, '_sale_price_dates_from', ''),
(1991, 420, '_sale_price_dates_to', ''),
(1992, 420, '_product_attributes', 'a:0:{}'),
(1993, 420, '_sale_price', ''),
(1994, 420, 'total_sales', '0'),
(1995, 420, '_tribe_wooticket_for_event', '419'),
(1996, 420, '_regular_price', '242'),
(1997, 420, '_price', '242'),
(1998, 420, '_manage_stock', 'yes'),
(1999, 420, '_sku', ''),
(2001, 420, '_stock', '20'),
(2002, 420, '_stock_status', 'instock'),
(2003, 420, '_backorders', 'no'),
(2005, 412, '_edit_lock', '1446229014:1'),
(2006, 421, '_VenueOrigin', 'events-calendar'),
(2007, 421, '_EventShowMapLink', ''),
(2008, 421, '_EventShowMap', ''),
(2009, 421, '_VenueVenue', 'Burwood Corporate Centre (BCC)'),
(2010, 421, '_VenueAddress', 'Deakin University Level 2 Building BC'),
(2011, 421, '_VenueCity', '221 Burwood Highway Burwood'),
(2012, 421, '_VenueProvince', 'Perth'),
(2013, 421, '_VenueZip', '3030'),
(2014, 421, '_VenuePhone', ''),
(2015, 421, '_VenueURL', ''),
(2016, 421, '_VenueShowMap', 'true'),
(2017, 421, '_VenueShowMapLink', 'true'),
(2018, 421, '_VenueStateProvince', 'Perth'),
(2019, 421, '_VenueOverwriteCoords', '0'),
(2020, 421, '_VenueGeoAddress', 'Deakin University Level 2 Building BC 221 Burwood Highway Burwood Perth  3030'),
(2023, 419, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-11-27 20:45:00";s:12:"EventEndDate";s:19:"2015-11-27 20:45:00";}}s:10:"exclusions";a:0:{}}'),
(2024, 421, '_edit_lock', '1446229201:1'),
(2025, 421, '_edit_last', '1'),
(2026, 421, '_VenueCountry', ''),
(2027, 421, '_VenueState', ''),
(2030, 422, '_visibility', 'hidden'),
(2031, 422, '_tax_status', 'taxable'),
(2032, 422, '_tax_class', ''),
(2033, 422, '_purchase_note', ''),
(2034, 422, '_weight', ''),
(2035, 422, '_length', ''),
(2036, 422, '_width', ''),
(2037, 422, '_height', ''),
(2038, 422, '_downloadable', 'no'),
(2039, 422, '_virtual', 'yes'),
(2040, 422, '_sale_price_dates_from', ''),
(2041, 422, '_sale_price_dates_to', ''),
(2042, 422, '_product_attributes', 'a:0:{}'),
(2043, 422, '_sale_price', ''),
(2044, 422, 'total_sales', '0'),
(2045, 422, '_tribe_wooticket_for_event', '418'),
(2046, 422, '_regular_price', '242'),
(2047, 422, '_price', '242'),
(2048, 422, '_stock', '20'),
(2049, 422, '_stock_status', 'instock'),
(2050, 422, '_backorders', 'no'),
(2051, 422, '_manage_stock', 'yes'),
(2052, 422, '_sku', ''),
(2056, 423, '_visibility', 'hidden'),
(2057, 423, '_tax_status', 'taxable'),
(2058, 423, '_tax_class', ''),
(2059, 423, '_purchase_note', ''),
(2060, 423, '_weight', ''),
(2061, 423, '_length', ''),
(2062, 423, '_width', ''),
(2063, 423, '_height', ''),
(2064, 423, '_downloadable', 'no'),
(2065, 423, '_virtual', 'yes'),
(2066, 423, '_sale_price_dates_from', ''),
(2067, 423, '_sale_price_dates_to', ''),
(2068, 423, '_product_attributes', 'a:0:{}'),
(2069, 423, '_sale_price', ''),
(2070, 423, 'total_sales', '0'),
(2071, 423, '_tribe_wooticket_for_event', '415'),
(2072, 423, '_regular_price', '242'),
(2073, 423, '_price', '242'),
(2074, 423, '_stock', '20'),
(2075, 423, '_stock_status', 'instock'),
(2076, 423, '_backorders', 'no'),
(2077, 423, '_manage_stock', 'yes'),
(2078, 423, '_sku', ''),
(2082, 424, '_visibility', 'hidden'),
(2083, 424, '_tax_status', 'taxable'),
(2084, 424, '_tax_class', ''),
(2085, 424, '_purchase_note', ''),
(2086, 424, '_weight', ''),
(2087, 424, '_length', ''),
(2088, 424, '_width', ''),
(2089, 424, '_height', ''),
(2090, 424, '_downloadable', 'no'),
(2091, 424, '_virtual', 'yes'),
(2092, 424, '_sale_price_dates_from', ''),
(2093, 424, '_sale_price_dates_to', ''),
(2094, 424, '_product_attributes', 'a:0:{}'),
(2095, 424, '_sale_price', ''),
(2096, 424, 'total_sales', '0'),
(2097, 424, '_tribe_wooticket_for_event', '413'),
(2098, 424, '_regular_price', '99'),
(2099, 424, '_price', '99'),
(2100, 424, '_stock', '20') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2101, 424, '_stock_status', 'instock'),
(2102, 424, '_backorders', 'no'),
(2103, 424, '_manage_stock', 'yes'),
(2104, 424, '_sku', ''),
(2115, 425, '_OrganizerOrigin', 'events-calendar'),
(2116, 425, '_edit_lock', '1446233070:1'),
(2117, 425, '_edit_last', '1'),
(2118, 426, '_wp_attached_file', '2015/10/DIPL-Logo-HR.png'),
(2119, 426, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:160;s:6:"height";i:160;s:4:"file";s:24:"2015/10/DIPL-Logo-HR.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"DIPL-Logo-HR-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(2120, 427, '_wp_attached_file', '2015/10/DIPL.jpg'),
(2121, 427, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:196;s:4:"file";s:16:"2015/10/DIPL.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"DIPL-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"DIPL-300x147.jpg";s:5:"width";i:300;s:6:"height";i:147;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:16:"DIPL-370x196.jpg";s:5:"width";i:370;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"DIPL-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"DIPL-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(2122, 425, '_thumbnail_id', '427'),
(2123, 425, '_OrganizerPhone', '02 49 562 555'),
(2124, 425, '_OrganizerWebsite', 'https://dipl.com.au'),
(2125, 425, '_OrganizerEmail', 'danielle@dipl.com.au'),
(2126, 425, 'address', '18 Toohey Crescent,  Adamstown Heights  NSW 2289 Australia'),
(2127, 425, '_address', 'field_5631c5c248943'),
(2128, 425, 'facebook', 'https://www.facebook.com/DoorwayIntoPracticalLiteracy/'),
(2129, 425, '_facebook', 'field_5631ccac664be'),
(2130, 425, 'instagram', ''),
(2131, 425, '_instagram', 'field_5631ccb507ae2'),
(2132, 425, 'twitter', 'https://twitter.com/DIPLTweets'),
(2133, 425, '_twitter', 'field_5631ccbf6dcdd'),
(2134, 425, 'linkedin', ''),
(2135, 425, '_linkedin', 'field_5631ccc8401be'),
(2136, 425, '_Organizer2ndImage', '430'),
(2137, 425, '__Organizer2ndImage', 'field_5631b8124f02a'),
(2138, 425, 'provider_logo', '431'),
(2139, 425, '_provider_logo', 'field_5631c47a61cf7'),
(2140, 425, '_members_access_role', 'provider'),
(2141, 428, '_wp_attached_file', '2015/10/Untitled-4.png'),
(2142, 428, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:489;s:6:"height";i:276;s:4:"file";s:22:"2015/10/Untitled-4.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Untitled-4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"Untitled-4-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:22:"Untitled-4-370x276.png";s:5:"width";i:370;s:6:"height";i:276;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"Untitled-4-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"Untitled-4-300x276.png";s:5:"width";i:300;s:6:"height";i:276;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(2143, 429, '_wp_attached_file', '2015/10/dipllogo@2x.png'),
(2144, 429, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:543;s:6:"height";i:262;s:4:"file";s:23:"2015/10/dipllogo@2x.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"dipllogo@2x-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"dipllogo@2x-300x145.png";s:5:"width";i:300;s:6:"height";i:145;s:9:"mime-type";s:9:"image/png";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:23:"dipllogo@2x-370x262.png";s:5:"width";i:370;s:6:"height";i:262;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"dipllogo@2x-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"dipllogo@2x-300x262.png";s:5:"width";i:300;s:6:"height";i:262;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(2145, 430, '_wp_attached_file', '2015/10/Dipllogo.jpg'),
(2146, 430, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:20:"2015/10/Dipllogo.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Dipllogo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"Dipllogo-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:20:"Dipllogo-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"Dipllogo-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"Dipllogo-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(2147, 431, '_wp_attached_file', '2015/10/Dipllogo2.jpg'),
(2148, 431, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:21:"2015/10/Dipllogo2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Dipllogo2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Dipllogo2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:21:"Dipllogo2-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"Dipllogo2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"Dipllogo2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(2149, 432, '_OrganizerOrigin', 'events-calendar'),
(2150, 432, '_edit_lock', '1446234249:1'),
(2151, 432, '_edit_last', '1'),
(2152, 432, '_oembed_7b0628c0c3d6f54d5a9e43f5a53896d9', '{{unknown}}'),
(2153, 433, '_wp_attached_file', '2015/10/Mappen-logo.jpg'),
(2154, 433, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:958;s:6:"height";i:960;s:4:"file";s:23:"2015/10/Mappen-logo.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Mappen-logo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"Mappen-logo-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:23:"Mappen-logo-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Mappen-logo-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"Mappen-logo-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"Mappen-logo-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(2155, 434, '_wp_attached_file', '2015/10/11698622_1460129144304927_3718016601140030839_n.png'),
(2156, 434, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:504;s:6:"height";i:504;s:4:"file";s:59:"2015/10/11698622_1460129144304927_3718016601140030839_n.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"11698622_1460129144304927_3718016601140030839_n-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:59:"11698622_1460129144304927_3718016601140030839_n-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:59:"11698622_1460129144304927_3718016601140030839_n-370x370.png";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:59:"11698622_1460129144304927_3718016601140030839_n-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:59:"11698622_1460129144304927_3718016601140030839_n-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(2157, 435, '_wp_attached_file', '2015/10/11705808_1473249186326256_9003493764925092127_o.jpg'),
(2158, 435, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:1366;s:4:"file";s:59:"2015/10/11705808_1473249186326256_9003493764925092127_o.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"11705808_1473249186326256_9003493764925092127_o-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"11705808_1473249186326256_9003493764925092127_o-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:60:"11705808_1473249186326256_9003493764925092127_o-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:59:"11705808_1473249186326256_9003493764925092127_o-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:59:"11705808_1473249186326256_9003493764925092127_o-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:59:"11705808_1473249186326256_9003493764925092127_o-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:59:"11705808_1473249186326256_9003493764925092127_o-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(2159, 436, '_wp_attached_file', '2015/10/11850517_1473249586326216_5189513214850165239_o.jpg'),
(2160, 436, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:1365;s:4:"file";s:59:"2015/10/11850517_1473249586326216_5189513214850165239_o.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"11850517_1473249586326216_5189513214850165239_o-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"11850517_1473249586326216_5189513214850165239_o-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:60:"11850517_1473249586326216_5189513214850165239_o-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:59:"11850517_1473249586326216_5189513214850165239_o-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:59:"11850517_1473249586326216_5189513214850165239_o-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:59:"11850517_1473249586326216_5189513214850165239_o-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:59:"11850517_1473249586326216_5189513214850165239_o-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:12:"Lisa Axiotis";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:12:"Lisa Axiotis";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(2161, 432, '_thumbnail_id', '436'),
(2162, 432, '_OrganizerPhone', '0409 542 930'),
(2163, 432, '_OrganizerWebsite', 'http://getmappen.com'),
(2164, 432, '_OrganizerEmail', 'info@getmappen.com'),
(2165, 432, 'address', 'Moorabbin, VIC 3189'),
(2166, 432, '_address', 'field_5631c5c248943'),
(2167, 432, 'facebook', 'https://www.facebook.com/getmappen'),
(2168, 432, '_facebook', 'field_5631ccac664be'),
(2169, 432, 'instagram', ''),
(2170, 432, '_instagram', 'field_5631ccb507ae2'),
(2171, 432, 'twitter', 'https://twitter.com/getmappen'),
(2172, 432, '_twitter', 'field_5631ccbf6dcdd'),
(2173, 432, 'linkedin', ''),
(2174, 432, '_linkedin', 'field_5631ccc8401be'),
(2175, 432, '_Organizer2ndImage', '434'),
(2176, 432, '__Organizer2ndImage', 'field_5631b8124f02a'),
(2177, 432, 'provider_logo', '433'),
(2178, 432, '_provider_logo', 'field_5631c47a61cf7'),
(2179, 438, '_visibility', 'hidden'),
(2180, 438, '_tax_status', 'taxable'),
(2181, 438, '_tax_class', ''),
(2182, 438, '_purchase_note', ''),
(2183, 438, '_weight', ''),
(2184, 438, '_length', ''),
(2185, 438, '_width', ''),
(2186, 438, '_height', ''),
(2187, 438, '_downloadable', 'no'),
(2188, 438, '_virtual', 'yes'),
(2189, 438, '_sale_price_dates_from', ''),
(2190, 438, '_sale_price_dates_to', ''),
(2191, 438, '_product_attributes', 'a:0:{}'),
(2192, 438, '_sale_price', ''),
(2193, 438, 'total_sales', '0'),
(2194, 438, '_tribe_wooticket_for_event', '410'),
(2195, 438, '_regular_price', '275'),
(2196, 438, '_price', '275'),
(2197, 438, '_stock', '15'),
(2198, 438, '_stock_status', 'instock'),
(2199, 438, '_backorders', 'no'),
(2200, 438, '_manage_stock', 'yes'),
(2201, 438, '_sku', ''),
(2202, 438, '_ticket_end_date', '2015-12-01 17:00:00'),
(2204, 353, '_edit_lock', '1446237373:1'),
(2205, 353, '_edit_last', '1'),
(2206, 353, '_VenueState', 'WA'),
(2207, 353, '_wp_old_slug', 'perth'),
(2208, 342, '_edit_lock', '1446237330:1'),
(2209, 342, '_edit_last', '1'),
(2210, 130, '_edit_lock', '1446237520:1'),
(2211, 130, '_edit_last', '1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2212, 130, '_VenueState', ''),
(2213, 106, '_wp_trash_meta_status', 'publish'),
(2214, 106, '_wp_trash_meta_time', '1446237673'),
(2215, 441, '_VenueOrigin', 'events-calendar'),
(2216, 441, '_edit_lock', '1446237644:1'),
(2217, 441, '_edit_last', '1'),
(2218, 441, '_EventShowMapLink', ''),
(2219, 441, '_EventShowMap', ''),
(2220, 441, '_VenueAddress', '25-41 Princes Highway'),
(2221, 441, '_VenueCity', 'Sale'),
(2222, 441, '_VenueCountry', 'Australia'),
(2223, 441, '_VenueProvince', 'Sale'),
(2224, 441, '_VenueState', ''),
(2225, 441, '_VenueZip', '3850'),
(2226, 441, '_VenuePhone', ''),
(2227, 441, '_VenueURL', ''),
(2228, 441, '_VenueShowMap', 'true'),
(2229, 441, '_VenueShowMapLink', 'true'),
(2230, 441, '_VenueStateProvince', 'Sale'),
(2231, 441, '_VenueOverwriteCoords', '0'),
(2232, 441, '_VenueLat', '-38.090276'),
(2233, 441, '_VenueLng', '147.068476'),
(2234, 441, '_VenueGeoAddress', '25-41 Princes Highway Sale Sale  3850 Australia'),
(2237, 410, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop-6'),
(2242, 356, '_stock', '20'),
(2243, 356, '_stock_status', 'instock'),
(2244, 356, '_backorders', 'no'),
(2246, 351, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop-5'),
(2251, 358, '_stock', '20'),
(2252, 358, '_stock_status', 'instock'),
(2253, 358, '_backorders', 'no'),
(2254, 358, '_ticket_end_date', '2015-11-16 17:00:00'),
(2256, 346, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop-4'),
(2262, 357, '_stock', '20'),
(2263, 357, '_stock_status', 'instock'),
(2264, 357, '_backorders', 'no'),
(2265, 357, '_ticket_end_date', '2015-11-14 17:00:00'),
(2269, 367, '_wp_old_slug', 'day-2-assessment-and-data-tracking-3'),
(2272, 355, '_stock', '0'),
(2273, 355, '_stock_status', 'outofstock'),
(2274, 355, '_backorders', 'no'),
(2276, 344, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop-2'),
(2279, 365, '_stock', '15'),
(2280, 365, '_stock_status', 'instock'),
(2281, 365, '_backorders', 'no'),
(2283, 364, '_wp_old_slug', 'day-2-assessment-and-data-tracking-2'),
(2286, 341, '_stock', '30'),
(2287, 341, '_stock_status', 'instock'),
(2288, 341, '_backorders', 'no'),
(2289, 341, '_ticket_end_date', '2015-11-06 17:00:00'),
(2293, 340, '_wp_old_slug', 'day-1-introduction-to-big-write-vcop'),
(2294, 340, '_EventCost', '275'),
(2295, 340, '_EventOrganizerID', '313'),
(2296, 410, '_EventCost', '275'),
(2297, 410, '_EventOrganizerID', '313'),
(2298, 351, '_EventCost', '275'),
(2299, 351, '_EventOrganizerID', '313'),
(2300, 346, '_EventCost', '275'),
(2301, 346, '_EventOrganizerID', '313'),
(2302, 345, '_EventCost', '200'),
(2303, 345, '_EventOrganizerID', '313'),
(2304, 367, '_EventCost', '300'),
(2305, 367, '_EventOrganizerID', '313'),
(2306, 344, '_EventCost', '275'),
(2307, 344, '_EventOrganizerID', '313'),
(2308, 364, '_EventCost', '300'),
(2309, 364, '_EventOrganizerID', '313'),
(2310, 363, '_stock', '0'),
(2311, 363, '_stock_status', 'outofstock'),
(2312, 363, '_backorders', 'no'),
(2314, 361, '_wp_old_slug', 'day-2-assessment-and-data-tracking'),
(2317, 361, '_EventCost', '300'),
(2318, 361, '_EventOrganizerID', '313'),
(2319, 444, '_OrganizerOrigin', 'events-calendar'),
(2320, 444, '_edit_lock', '1446266646:1'),
(2321, 444, '_edit_last', '1'),
(2322, 445, '_wp_attached_file', '2015/10/IMG_5611.jpeg'),
(2323, 445, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:320;s:6:"height";i:214;s:4:"file";s:21:"2015/10/IMG_5611.jpeg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"IMG_5611-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"IMG_5611-300x201.jpeg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"IMG_5611-180x180.jpeg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"IMG_5611-300x214.jpeg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(2324, 446, '_wp_attached_file', '2015/10/IMG_5671.jpeg'),
(2325, 446, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:320;s:6:"height";i:214;s:4:"file";s:21:"2015/10/IMG_5671.jpeg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"IMG_5671-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"IMG_5671-300x201.jpeg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"IMG_5671-180x180.jpeg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"IMG_5671-300x214.jpeg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(2331, 449, '_wp_attached_file', '2015/10/K2D.png'),
(2332, 449, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:15:"2015/10/K2D.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"K2D-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"K2D-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:15:"K2D-370x370.png";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"K2D-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"K2D-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(2333, 444, '_thumbnail_id', '445'),
(2334, 444, '_OrganizerPhone', ''),
(2335, 444, '_OrganizerWebsite', 'www.kinect2dance.com.au'),
(2336, 444, '_OrganizerEmail', 'info@kinect2dance.com.au'),
(2337, 444, 'address', 'Melbourne, Victoria 3930'),
(2338, 444, '_address', 'field_5631c5c248943'),
(2339, 444, 'facebook', ''),
(2340, 444, '_facebook', 'field_5631ccac664be'),
(2341, 444, 'instagram', ''),
(2342, 444, '_instagram', 'field_5631ccb507ae2'),
(2343, 444, 'twitter', ''),
(2344, 444, '_twitter', 'field_5631ccbf6dcdd'),
(2345, 444, 'linkedin', ''),
(2346, 444, '_linkedin', 'field_5631ccc8401be'),
(2347, 444, '_Organizer2ndImage', '446'),
(2348, 444, '__Organizer2ndImage', 'field_5631b8124f02a'),
(2349, 444, 'provider_logo', '449'),
(2350, 444, '_provider_logo', 'field_5631c47a61cf7') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2351, 444, '_members_access_role', 'provider'),
(2352, 452, '_EventOrigin', 'events-calendar'),
(2353, 452, '_edit_lock', '1446270453:1'),
(2354, 452, '_edit_last', '1'),
(2355, 452, 'base_event', ''),
(2356, 452, '_base_event', 'field_5608e0d6c43c6'),
(2357, 452, '_EventShowMapLink', '1'),
(2358, 452, '_EventShowMap', '1'),
(2359, 452, '_EventStartDate', '2015-10-31 08:00:00'),
(2360, 452, '_EventEndDate', '2015-10-31 17:00:00'),
(2361, 452, '_EventStartDateUTC', '2015-10-31 08:00:00'),
(2362, 452, '_EventEndDateUTC', '2015-10-31 17:00:00'),
(2363, 452, '_EventDuration', '32400'),
(2364, 452, '_EventVenueID', '0'),
(2365, 452, '_EventURL', ''),
(2367, 452, '_EventTimezone', 'UTC+0'),
(2368, 452, '_EventTimezoneAbbr', ''),
(2369, 452, '_eventrocket_enable_rsvp', ''),
(2370, 452, '_eventrocket_restrict_rsvp', ''),
(2371, 452, '_eventrocket_limit_rsvp', '20'),
(2372, 452, '_eventrocket_show_attendees_rsvp', ''),
(2373, 452, '_EventRecurrence', 'a:2:{s:5:"rules";a:1:{i:0;a:6:{s:4:"type";s:4:"None";s:8:"end-type";s:2:"On";s:3:"end";s:0:"";s:9:"end-count";s:0:"";s:14:"EventStartDate";s:19:"2015-10-31 08:00:00";s:12:"EventEndDate";s:19:"2015-10-31 17:00:00";}}s:10:"exclusions";a:0:{}}'),
(2374, 452, '_EventOrganizerID', '402'),
(2375, 319, '_edit_lock', '1446274523:1'),
(2376, 319, '_wp_attachment_backup_sizes', 'a:8:{s:9:"full-orig";a:3:{s:5:"width";i:5028;s:6:"height";i:3538;s:4:"file";s:20:"banner-providers.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:28:"banner-providers-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:28:"banner-providers-300x211.jpg";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:29:"banner-providers-1024x721.jpg";s:5:"width";i:1024;s:6:"height";i:721;s:9:"mime-type";s:10:"image/jpeg";}s:23:"courses-grid-thumb-orig";a:4:{s:4:"file";s:28:"banner-providers-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:19:"shop_thumbnail-orig";a:4:{s:4:"file";s:28:"banner-providers-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop_catalog-orig";a:4:{s:4:"file";s:28:"banner-providers-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"shop_single-orig";a:4:{s:4:"file";s:28:"banner-providers-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}'),
(2377, 319, '_edit_last', '1'),
(2378, 453, '_wp_attached_file', '2015/10/edumazingbannerflip-e1446269890634.png'),
(2379, 453, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:600;s:4:"file";s:46:"2015/10/edumazingbannerflip-e1446269890634.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"edumazingbannerflip-e1446269890634-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:45:"edumazingbannerflip-e1446269890634-300x75.png";s:5:"width";i:300;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:47:"edumazingbannerflip-e1446269890634-1024x256.png";s:5:"width";i:1024;s:6:"height";i:256;s:9:"mime-type";s:9:"image/png";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:46:"edumazingbannerflip-e1446269890634-370x370.png";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:46:"edumazingbannerflip-e1446269890634-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:46:"edumazingbannerflip-e1446269890634-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:46:"edumazingbannerflip-e1446269890634-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(2380, 453, '_wp_attachment_backup_sizes', 'a:8:{s:9:"full-orig";a:3:{s:5:"width";i:2400;s:6:"height";i:600;s:4:"file";s:23:"edumazingbannerflip.png";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:31:"edumazingbannerflip-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"medium-orig";a:4:{s:4:"file";s:30:"edumazingbannerflip-300x75.png";s:5:"width";i:300;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:10:"large-orig";a:4:{s:4:"file";s:32:"edumazingbannerflip-1024x256.png";s:5:"width";i:1024;s:6:"height";i:256;s:9:"mime-type";s:9:"image/png";}s:23:"courses-grid-thumb-orig";a:4:{s:4:"file";s:31:"edumazingbannerflip-370x370.png";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:9:"image/png";}s:19:"shop_thumbnail-orig";a:4:{s:4:"file";s:31:"edumazingbannerflip-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:17:"shop_catalog-orig";a:4:{s:4:"file";s:31:"edumazingbannerflip-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:16:"shop_single-orig";a:4:{s:4:"file";s:31:"edumazingbannerflip-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}'),
(2381, 454, '_wp_attached_file', '2015/10/Andrell-banner.jpg'),
(2382, 454, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:500;s:4:"file";s:26:"2015/10/Andrell-banner.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"Andrell-banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Andrell-banner-300x63.jpg";s:5:"width";i:300;s:6:"height";i:63;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"Andrell-banner-1024x213.jpg";s:5:"width";i:1024;s:6:"height";i:213;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:26:"Andrell-banner-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"Andrell-banner-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"Andrell-banner-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"Andrell-banner-600x500.jpg";s:5:"width";i:600;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(2383, 455, '_wp_attached_file', '2015/10/Andrell-banner2.jpg'),
(2384, 455, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:500;s:4:"file";s:27:"2015/10/Andrell-banner2.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"Andrell-banner2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"Andrell-banner2-300x63.jpg";s:5:"width";i:300;s:6:"height";i:63;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"Andrell-banner2-1024x213.jpg";s:5:"width";i:1024;s:6:"height";i:213;s:9:"mime-type";s:10:"image/jpeg";}s:18:"courses-grid-thumb";a:4:{s:4:"file";s:27:"Andrell-banner2-370x370.jpg";s:5:"width";i:370;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"Andrell-banner2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"Andrell-banner2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:27:"Andrell-banner2-600x500.jpg";s:5:"width";i:600;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1446309951;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(2385, 452, '_wp_trash_meta_status', 'publish'),
(2386, 452, '_wp_trash_meta_time', '1446270600'),
(2391, 418, '_EventCost', '242'),
(2392, 418, '_EventOrganizerID', '402'),
(2395, 456, 'base_event', '340'),
(2396, 456, '_base_event', 'field_5608e0d6c43c6'),
(2398, 415, '_EventCost', '242'),
(2399, 415, '_EventOrganizerID', '402'),
(2400, 419, '_EventCost', '242'),
(2401, 419, '_EventOrganizerID', '402'),
(2402, 413, '_EventCost', '99'),
(2403, 413, '_EventOrganizerID', '402'),
(2404, 352, '_EventCost', '99'),
(2405, 352, '_EventOrganizerID', '402'),
(2420, 402, '_members_access_role', 'provider') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=460 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
(10, 1, '2015-09-15 02:57:34', '2015-09-15 02:57:34', '[teacher_registration_form]', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2015-10-28 06:20:14', '2015-10-28 06:20:14', '', 0, 'http://teach-me-pd.dev/?page_id=10', 0, 'page', '', 0),
(11, 1, '2015-09-15 02:57:34', '2015-09-15 02:57:34', '', 'Register', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-09-15 02:57:34', '2015-09-15 02:57:34', '', 10, 'http://teach-me-pd.dev/?p=11', 0, 'revision', '', 0),
(12, 1, '2015-09-15 02:57:41', '2015-09-15 02:57:41', '[gravityform id="3" title="false" description="false"]\r\n\r\n&nbsp;\r\n\r\nFor further information or for support, please email <a href="mailto:info@teachmepd.com.au">info@teachmepd.com.au</a>', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2015-10-30 07:03:09', '2015-10-30 07:03:09', '', 0, 'http://teach-me-pd.dev/?page_id=12', 0, 'page', '', 0),
(13, 1, '2015-09-15 02:57:41', '2015-09-15 02:57:41', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-09-15 02:57:41', '2015-09-15 02:57:41', '', 12, 'http://teach-me-pd.dev/?p=13', 0, 'revision', '', 0),
(14, 1, '2015-09-15 02:57:46', '2015-09-15 02:57:46', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2015-09-15 02:57:46', '2015-09-15 02:57:46', '', 0, 'http://teach-me-pd.dev/?page_id=14', 0, 'page', '', 0),
(15, 1, '2015-09-15 02:57:46', '2015-09-15 02:57:46', '', 'News', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2015-09-15 02:57:46', '2015-09-15 02:57:46', '', 14, 'http://teach-me-pd.dev/?p=15', 0, 'revision', '', 0),
(16, 1, '2015-09-15 02:57:56', '2015-09-15 02:57:56', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2015-09-15 07:33:55', '2015-09-15 07:33:55', '', 0, 'http://teach-me-pd.dev/?page_id=16', 0, 'page', '', 0),
(17, 1, '2015-09-15 02:57:56', '2015-09-15 02:57:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2015-09-15 02:57:56', '2015-09-15 02:57:56', '', 16, 'http://teach-me-pd.dev/?p=17', 0, 'revision', '', 0),
(18, 1, '2015-09-15 02:58:07', '2015-09-15 02:58:07', '', 'Providers', '', 'publish', 'closed', 'closed', '', 'providers', '', '', '2015-10-31 05:10:47', '2015-10-31 05:10:47', '', 0, 'http://teach-me-pd.dev/?page_id=18', 0, 'page', '', 0),
(19, 1, '2015-09-15 02:58:07', '2015-09-15 02:58:07', '', 'Providers', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-09-15 02:58:07', '2015-09-15 02:58:07', '', 18, 'http://teach-me-pd.dev/?p=19', 0, 'revision', '', 0),
(20, 1, '2015-09-15 02:58:13', '2015-09-15 02:58:13', '', 'Calendar', '', 'publish', 'closed', 'closed', '', 'calendar', '', '', '2015-09-15 02:58:13', '2015-09-15 02:58:13', '', 0, 'http://teach-me-pd.dev/?page_id=20', 0, 'page', '', 0),
(21, 1, '2015-09-15 02:58:13', '2015-09-15 02:58:13', '', 'Calendar', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2015-09-15 02:58:13', '2015-09-15 02:58:13', '', 20, 'http://teach-me-pd.dev/?p=21', 0, 'revision', '', 0),
(22, 1, '2015-09-15 02:58:20', '2015-09-15 02:58:20', '', 'Courses', '', 'publish', 'closed', 'closed', '', 'courses-grid', '', '', '2015-09-18 05:21:49', '2015-09-18 05:21:49', '', 0, 'http://teach-me-pd.dev/?page_id=22', 0, 'page', '', 0),
(23, 1, '2015-09-15 02:58:20', '2015-09-15 02:58:20', '', 'Courses', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2015-09-15 02:58:20', '2015-09-15 02:58:20', '', 22, 'http://teach-me-pd.dev/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-09-15 03:07:59', '2015-09-15 03:07:59', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2015-10-30 02:45:40', '2015-10-30 02:45:40', '', 0, 'http://teach-me-pd.dev/?p=24', 3, 'nav_menu_item', '', 0),
(26, 1, '2015-09-15 03:07:59', '2015-09-15 03:07:59', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2015-10-30 02:45:40', '2015-10-30 02:45:40', '', 0, 'http://teach-me-pd.dev/?p=26', 1, 'nav_menu_item', '', 0),
(29, 1, '2015-09-15 03:08:32', '2015-09-15 03:08:32', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2015-10-22 23:27:20', '2015-10-22 23:27:20', '', 0, 'http://teach-me-pd.dev/?p=29', 2, 'nav_menu_item', '', 0),
(31, 1, '2015-09-15 03:08:32', '2015-09-15 03:08:32', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2015-10-22 23:27:20', '2015-10-22 23:27:20', '', 0, 'http://teach-me-pd.dev/?p=31', 3, 'nav_menu_item', '', 0),
(33, 1, '2015-09-16 02:07:05', '2015-09-16 02:07:05', '', 'banner-image-placeholder-245x288', '', 'inherit', 'open', 'closed', '', 'banner-image-placeholder-245x288', '', '', '2015-09-16 02:07:05', '2015-09-16 02:07:05', '', 0, 'http://teach-me-pd.dev/app/uploads/2015/09/banner-image-placeholder-245x288.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2015-09-16 02:07:05', '2015-09-16 02:07:05', '', 'bw-img-placeholder-439x296', '', 'inherit', 'open', 'closed', '', 'bw-img-placeholder-439x296', '', '', '2015-09-16 02:07:05', '2015-09-16 02:07:05', '', 0, 'http://teach-me-pd.dev/app/uploads/2015/09/bw-img-placeholder-439x296.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2015-09-16 02:07:06', '2015-09-16 02:07:06', '', 'hero-image-placeholder-742x374', '', 'inherit', 'open', 'closed', '', 'hero-image-placeholder-742x374', '', '', '2015-09-16 02:07:06', '2015-09-16 02:07:06', '', 0, 'http://teach-me-pd.dev/app/uploads/2015/09/hero-image-placeholder-742x374.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2015-09-16 08:02:54', '2015-09-16 08:02:54', '', 'featured-image-placeholder-222x148', '', 'inherit', 'open', 'closed', '', 'featured-image-placeholder-222x148', '', '', '2015-09-16 08:02:54', '2015-09-16 08:02:54', '', 0, 'http://teach-me-pd.dev/app/uploads/2015/09/featured-image-placeholder-222x148.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2015-09-16 09:12:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-09-16 09:12:19', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/?p=37', 0, 'post', '', 0),
(38, 1, '2015-09-16 09:35:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-09-16 09:35:58', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/?p=38', 0, 'post', '', 0),
(39, 1, '2015-09-17 05:26:27', '2015-09-17 05:26:27', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2015-09-17 05:26:27', '2015-09-17 05:26:27', '', 0, 'http://teach-me-pd.dev/?page_id=39', 0, 'page', '', 0),
(40, 1, '2015-09-17 05:26:27', '2015-09-17 05:26:27', '', 'Events', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2015-09-17 05:26:27', '2015-09-17 05:26:27', '', 39, 'http://teach-me-pd.dev/2015/09/39-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2015-09-17 05:29:49', '2015-09-17 05:29:49', '', 'asdasd', '', 'trash', 'closed', 'closed', '', 'asdasd', '', '', '2015-10-30 05:17:15', '2015-10-30 05:17:15', '', 0, 'http://teach-me-pd.dev/venue/asdasd/', 0, 'tribe_venue', '', 0),
(43, 1, '2015-09-17 06:17:19', '2015-09-17 06:17:19', '', 'WP Router Placeholder Page', '', 'publish', 'closed', 'closed', '', 'wp-router-placeholder-page', '', '', '2015-09-17 06:17:19', '2015-09-17 06:17:19', '', 0, 'http://teach-me-pd.dev/WP_Router/wp-router-placeholder-page/', 0, 'wp_router_page', '', 0),
(44, 1, '2015-09-18 00:19:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-09-18 00:19:00', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_organizer', '', 0),
(46, 1, '2015-09-18 04:46:23', '2015-09-18 04:46:23', '', 'Andrell Education', '', 'publish', 'closed', 'closed', '', 'andrell-education', '', '', '2015-09-18 04:46:23', '2015-09-18 04:46:23', '', 0, 'http://teach-me-pd.dev/organizer/andrell-education/', 0, 'tribe_organizer', '', 0),
(47, 1, '2015-09-18 04:46:23', '2015-09-18 04:46:23', '', 'Unnamed Venue', '', 'trash', 'closed', 'closed', '', 'unnamed-venue', '', '', '2015-10-30 05:17:15', '2015-10-30 05:17:15', '', 0, 'http://teach-me-pd.dev/venue/unnamed-venue/', 0, 'tribe_venue', '', 0),
(49, 1, '2015-09-18 04:51:03', '2015-09-18 04:51:03', '', 'Brisbane QLD, Australia', '', 'publish', 'closed', 'closed', '', 'brisbane-qld-australia', '', '', '2015-09-18 04:51:03', '2015-09-18 04:51:03', '', 0, 'http://teach-me-pd.dev/venue/brisbane-qld-australia/', 0, 'tribe_venue', '', 0),
(50, 1, '2015-09-18 05:07:29', '2015-09-18 05:07:29', '[table id=40 /]\r\n\r\n[table id=41 /]\r\n<h2>ACT Public Holiday</h2>\r\n[table id=42 /]\r\n\r\n[table id=43 /]', 'ACT Term dates', '', 'publish', 'closed', 'closed', '', 'term-dates-and-public-holidays-act', '', '', '2015-10-21 07:31:05', '2015-10-21 07:31:05', '', 0, 'http://teach-me-pd.dev/?page_id=50', 0, 'page', '', 0),
(51, 1, '2015-09-18 05:05:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2015-09-18 05:05:28', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(52, 1, '2015-09-18 05:07:29', '2015-09-18 05:07:29', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 28 Apr 2015 – Fri 3 Jul 2015\r\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Fri 18 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\n\r\nTeachers commence Thursday 28 January 2016.\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016', 'Term dates and public holidays ACT', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-09-18 05:07:29', '2015-09-18 05:07:29', '', 50, 'http://teach-me-pd.dev/2015/09/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2015-09-18 05:12:44', '2015-09-18 05:12:44', '[table id=24 /]\r\n\r\n[table id=25 /]\r\n<h2>NSW Public Holidays</h2>\r\n[table id=26 /]\r\n\r\n[table id=27 /]\r\n\r\n&nbsp;', 'NSW Term Dates', '', 'publish', 'closed', 'closed', '', 'nsw-term-dates', '', '', '2015-10-21 06:59:21', '2015-10-21 06:59:21', '', 0, 'http://teach-me-pd.dev/?page_id=53', 0, 'page', '', 0),
(54, 1, '2015-09-18 05:12:34', '2015-09-18 05:12:34', '', 'kids-istock_000013576285small', '', 'inherit', 'open', 'closed', '', 'kids-istock_000013576285small', '', '', '2015-09-18 05:38:07', '2015-09-18 05:38:07', '', 18, 'http://teach-me-pd.dev//app/uploads/2015/09/kids-istock_000013576285small.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2015-09-18 05:12:44', '2015-09-18 05:12:44', '', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2015-09-18 05:12:44', '2015-09-18 05:12:44', '', 53, 'http://teach-me-pd.dev/2015/09/53-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2015-09-18 05:13:01', '2015-09-18 05:13:01', '[table id=20 /]\r\n\r\n[table id=21 /]\r\n<h2>VIC Public Holidays</h2>\r\n[table id=22 /]\r\n\r\n[table id=23 /]', 'VIC Term Dates', '', 'publish', 'closed', 'closed', '', 'vic-term-dates', '', '', '2015-10-30 11:47:55', '2015-10-30 11:47:55', '', 0, 'http://teach-me-pd.dev/?page_id=57', 0, 'page', '', 0),
(58, 1, '2015-09-18 05:13:01', '2015-09-18 05:13:01', '', 'Vic Term Dates', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-09-18 05:13:01', '2015-09-18 05:13:01', '', 57, 'http://teach-me-pd.dev/2015/09/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2015-09-18 05:13:09', '2015-09-18 05:13:09', '[table id=28 /]\r\n\r\n[table id=29 /]\r\n<h2>SA Public Holidays</h2>\r\n[table id=30 /]\r\n\r\n[table id=31 /]\r\n\r\n&nbsp;', 'SA Term Dates', '', 'publish', 'closed', 'closed', '', 'sa-term-dates', '', '', '2015-10-21 07:06:54', '2015-10-21 07:06:54', '', 0, 'http://teach-me-pd.dev/?page_id=59', 0, 'page', '', 0),
(60, 1, '2015-09-18 05:13:09', '2015-09-18 05:13:09', '', 'SA Term Dates', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2015-09-18 05:13:09', '2015-09-18 05:13:09', '', 59, 'http://teach-me-pd.dev/2015/09/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2015-09-18 05:13:20', '2015-09-18 05:13:20', '[table id=32 /]\r\n\r\n[table id=33 /]\r\n<h2>NT Public Holidays</h2>\r\n[table id=34 /]\r\n\r\n[table id=35 /]\r\n\r\n&nbsp;', 'NT Term Dates', '', 'publish', 'closed', 'closed', '', 'nt-term-dates', '', '', '2015-10-21 07:14:22', '2015-10-21 07:14:22', '', 0, 'http://teach-me-pd.dev/?page_id=61', 0, 'page', '', 0),
(62, 1, '2015-09-18 05:13:20', '2015-09-18 05:13:20', '', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-09-18 05:13:20', '2015-09-18 05:13:20', '', 61, 'http://teach-me-pd.dev/2015/09/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-09-18 05:13:31', '2015-09-18 05:13:31', '[table id=44 /]\r\n\r\n[table id=45 /]\r\n<h2>QLD Public Holidays</h2>\r\n[table id=46 /]\r\n\r\n[table id=47 /]\r\n\r\n&nbsp;', 'QLD Term dates', '', 'publish', 'closed', 'closed', '', 'qld-term-dates', '', '', '2015-10-21 07:37:35', '2015-10-21 07:37:35', '', 0, 'http://teach-me-pd.dev/?page_id=63', 0, 'page', '', 0),
(64, 1, '2015-09-18 05:13:31', '2015-09-18 05:13:31', '', 'QLD Term dates', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2015-09-18 05:13:31', '2015-09-18 05:13:31', '', 63, 'http://teach-me-pd.dev/2015/09/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2015-09-18 05:13:42', '2015-09-18 05:13:42', '[table id=36 /]\r\n\r\n[table id=37 /]\r\n<h2>WA Public Holidays</h2>\r\n[table id=38 /]\r\n\r\n[table id=39 /]\r\n\r\n&nbsp;', 'WA Term Dates', '', 'publish', 'closed', 'closed', '', 'wa-term-dates', '', '', '2015-10-21 07:19:47', '2015-10-21 07:19:47', '', 0, 'http://teach-me-pd.dev/?page_id=65', 0, 'page', '', 0),
(66, 1, '2015-09-18 05:13:42', '2015-09-18 05:13:42', '', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2015-09-18 05:13:42', '2015-09-18 05:13:42', '', 65, 'http://teach-me-pd.dev/2015/09/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2015-09-18 05:13:58', '2015-09-18 05:13:58', '[table id=11 /]\r\n\r\n[table id=17 /]\r\n<h2>TAS Public Holidays</h2>\r\n[table id=18 /]\r\n\r\n[table id=19 /]', 'TAS Term dates', '', 'publish', 'closed', 'closed', '', 'tas-term-dates', '', '', '2015-10-30 11:47:20', '2015-10-30 11:47:20', '', 0, 'http://teach-me-pd.dev/?page_id=67', 0, 'page', '', 0),
(68, 1, '2015-09-18 05:13:58', '2015-09-18 05:13:58', '', 'Tas Term dates', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2015-09-18 05:13:58', '2015-09-18 05:13:58', '', 67, 'http://teach-me-pd.dev/2015/09/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2015-09-18 05:23:33', '2015-09-18 05:23:33', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 28 Apr 2015 – Fri 3 Jul 2015\r\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Fri 18 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\n\r\nTeachers commence Thursday 28 January 2016.\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016', 'ACT Term dates', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-09-18 05:23:33', '2015-09-18 05:23:33', '', 50, 'http://teach-me-pd.dev/2015/09/50-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2015-10-21 06:59:16', '2015-10-21 06:59:16', '[table id=24 /]\n\n[table id=25 /]\n<h2>NSW Public Holidays</h2>\n[table id=26 /]\n\n[table id=27 /]\n\n&nbsp;', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-autosave-v1', '', '', '2015-10-21 06:59:16', '2015-10-21 06:59:16', '', 53, 'http://teach-me-pd.dev/2015/09/53-autosave-v1/', 0, 'revision', '', 0),
(71, 1, '2015-09-18 05:38:05', '2015-09-18 05:38:05', '', 'andress', '', 'inherit', 'open', 'closed', '', 'andress', '', '', '2015-09-18 05:38:05', '2015-09-18 05:38:05', '', 18, 'http://teach-me-pd.dev//app/uploads/2015/09/andress.jpeg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2015-09-18 05:38:27', '2015-09-18 05:38:27', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 21 Apr 2015 – Fri 26 Jun 2015\r\nTeachers commence Monday 20 April 2015.\r\n<h3>TERM 3</h3>\r\nTue 14 Jul 2015 – Fri 18 Sep 2015\r\nTeachers commence Monday 13 July 2015.\r\n<h3>TERM 4</h3>\r\nTue 6 Oct 2015 – Wed 16 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nThu 28 Jan 2016 – Fri 8 Apr 2016\r\nEastern Division, Teachers commence Wednesday 27 January 2016.\r\n<h3>TERM 1</h3>\r\nThu 4 Feb 2016 – Fri 8 Apr 2016\r\nWestern Division, Teachers commence Wednesday 03 February 2016.\r\n<h3>TERM 2</h3>\r\nWed 27 Apr 2016 – Fri 1 Jul 2016\r\nTeachers commence Tuesday 26 April 2016.\r\n<h3>TERM 3</h3>\r\nTue 19 Jul 2016 – Fri 23 Sep 2016\r\nTeachers commence Monday 18 July 2016.\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\nTeachers finish Tuesday 20 December 2016.', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2015-09-18 05:38:27', '2015-09-18 05:38:27', '', 53, 'http://teach-me-pd.dev/2015/09/53-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2015-10-30 17:45:46', '2015-10-30 17:45:46', '[caption id="attachment_71" align="alignnone" width="300"]<a href="http://teach-me-pd.dev/organizer/andrell-education/"><img class="wp-image-71 size-medium" src="http://teach-me-pd.dev//app/uploads/2015/09/andress-300x300.jpeg" alt="andress" width="300" height="300" /></a> Andrell Education[/caption]\n\n[caption id="attachment_407" align="alignnone" width="295"]<a href="http://teach-me-pd.dev/organizer/edumazing/"><img class="wp-image-407" src="http://teach-me-pd.dev//app/uploads/2015/10/Community-Portrait-295x300.png" alt="Edumazing" width="295" height="300" /></a> Edumazing[/caption]\n<h3>Become a provider</h3>\nWe currently accepting application to be an provider on teachmepd.com.au. To apply, please fill out our application form <a href="http://teach-me-pd.dev/provider-application/">here</a>, and we shall be in touch.\n\n&nbsp;', 'Providers', '', 'inherit', 'closed', 'closed', '', '18-autosave-v1', '', '', '2015-10-30 17:45:46', '2015-10-30 17:45:46', '', 18, 'http://teach-me-pd.dev/2015/09/18-autosave-v1/', 0, 'revision', '', 0),
(74, 1, '2015-09-18 05:39:35', '2015-09-18 05:39:35', '[caption id="attachment_71" align="alignleft" width="300"]<a href="http://teach-me-pd.dev/organizer/andrell-education/"><img class="wp-image-71 size-medium" src="http://teach-me-pd.dev//app/uploads/2015/09/andress-300x300.jpeg" alt="andress" width="300" height="300" /></a> Andrell Education[/caption]\r\n\r\n&nbsp;', 'Providers', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-09-18 05:39:35', '2015-09-18 05:39:35', '', 18, 'http://teach-me-pd.dev/2015/09/18-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2015-09-18 05:41:37', '2015-09-18 05:41:37', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2015-09-18 05:41:37', '2015-09-18 05:41:37', '', 1, 'http://teach-me-pd.dev/2015/09/1-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2015-10-21 07:12:49', '2015-10-21 07:12:49', '[table id=12 /]\n\n[table id=23 /]\n<h2>NT Public Holidays</h2>\n[table id=34 /]\n\n[table id=35 /]\n\n&nbsp;', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '61-autosave-v1', '', '', '2015-10-21 07:12:49', '2015-10-21 07:12:49', '', 61, 'http://teach-me-pd.dev/2015/09/61-autosave-v1/', 0, 'revision', '', 0),
(77, 1, '2015-09-18 05:42:52', '2015-09-18 05:42:52', '[caption id="attachment_71" align="alignnone" width="300"]<a href="http://teach-me-pd.dev/organizer/andrell-education/"><img class="wp-image-71 size-medium" src="http://teach-me-pd.dev//app/uploads/2015/09/andress-300x300.jpeg" alt="andress" width="300" height="300" /></a> Andrell Education[/caption]\r\n<h3>Become a provider</h3>\r\nWe currently accepting application to be an provider on teachmepd.com.au. To apply, please fill out our application form here, and we shall be in touch.\r\n\r\n&nbsp;', 'Providers', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-09-18 05:42:52', '2015-09-18 05:42:52', '', 18, 'http://teach-me-pd.dev/2015/09/18-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2015-09-18 05:45:18', '2015-09-18 05:45:18', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 13 Apr 2015 – Fri 19 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\nStudents resume Tuesday 21 July\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Thu 10 Dec 2015\r\nUrban Schools\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Fri 11 Dec 2015\r\nRemote Schools\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nFri 22 Jan 2016 – Fri 1 Apr 2016\r\nUrban Schools, Students resume Monday 25 January\r\n<h3>TERM 1</h3>\r\nMon 25 Jan 2016 – Fri 1 Apr 2016\r\nRemote Schools, Students resume Wednesday 27 January.\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 25 Jul 2016 – Fri 30 Sep 2016\r\nStudents resume Tuesday 26 July\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Thu 15 Dec 2016\r\nUrban Schools\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\nRemote Schools', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-09-18 05:45:18', '2015-09-18 05:45:18', '', 61, 'http://teach-me-pd.dev/2015/09/61-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2015-10-21 07:34:33', '2015-10-21 07:34:33', '[table id=44 /]\n\n[table id=44 /]\n<h2>QLD Public Holidays</h2>\n[table id=6 /]\n\n&nbsp;', 'QLD Term dates', '', 'inherit', 'closed', 'closed', '', '63-autosave-v1', '', '', '2015-10-21 07:34:33', '2015-10-21 07:34:33', '', 63, 'http://teach-me-pd.dev/2015/09/63-autosave-v1/', 0, 'revision', '', 0),
(80, 1, '2015-09-18 05:52:03', '2015-09-18 05:52:03', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 26 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 13 Jul 2015 – Fri 18 Sep 2015\r\n<h3>TERM 4</h3>\r\nTue 6 Oct 2015 – Fri 11 Dec 2015\r\nYear 12 - Friday 20 November; Year 10 &amp; 11 - Friday 27 November 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 25 Jan 2016 – Thu 24 Mar 2016\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 11 Jul 2016 – Fri 16 Sep 2016\r\n<h3>TERM 4</h3>\r\nTue 4 Oct 2016 – Fri 9 Dec 2016\r\nYear 12 - Friday 18 November 2016; Year 10 &amp; 11 - Friday 25 November 2016.', 'QLD Term dates', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2015-09-18 05:52:03', '2015-09-18 05:52:03', '', 63, 'http://teach-me-pd.dev/2015/09/63-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2015-10-21 07:06:49', '2015-10-21 07:06:49', '[table id=28 /]\n\n[table id=29 /]\n<h2>SA Public Holidays</h2>\n[table id=30 /]\n\n&nbsp;', 'SA Term Dates', '', 'inherit', 'closed', 'closed', '', '59-autosave-v1', '', '', '2015-10-21 07:06:49', '2015-10-21 07:06:49', '', 59, 'http://teach-me-pd.dev/2015/09/59-autosave-v1/', 0, 'revision', '', 0),
(82, 1, '2015-09-18 05:54:25', '2015-09-18 05:54:25', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 27 Apr 2015 – Fri 3 Jul 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Fri 11 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 15 Apr 2016\r\n<h3>TERM 2</h3>\r\nMon 2 May 2016 – Fri 8 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 25 Jul 2016 – Fri 30 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 17 Oct 2016 – Fri 16 Dec 2016', 'SA Term Dates', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2015-09-18 05:54:25', '2015-09-18 05:54:25', '', 59, 'http://teach-me-pd.dev/2015/09/59-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2015-10-02 10:43:15', '2015-10-02 10:43:15', '[table id=11 /]\n<h2>TAS Public Holidays</h2>\n<h2>2015</h2>\n<h3>Fri 25 Dec</h3>\nChristmas Day\n<h3>Sat 26 Dec</h3>\nBoxing Day\n<h3>Mon 28 Dec</h3>\nBoxing Day holiday Substitute for Boxing Day 26 December 2015\n<h2>2016</h2>\n<h3>Fri 1 Jan</h3>\nNew Year\'s Day\n<h3>Tue 26 Jan</h3>\nAustralia Day\n<h3>Mon 14 Mar</h3>\nEight Hours Day\n<h3>Fri 25 Mar</h3>\nGood Friday\n<h3>Mon 28 Mar</h3>\nEaster Monday\n<h3>Tue 29 Mar</h3>\nEaster Tuesday Restricted public holiday in Tasmania. Observed by some awards/agreements and the State Public Service.\n<h3>Mon 25 Apr</h3>\nAnzac Day\n<h3>Mon 13 Jun</h3>\nQueen\'s Birthday\n<h3>Sun 25 Dec</h3>\nChristmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday\n<h3>Mon 26 Dec</h3>\nBoxing Day\n<h3>Tue 27 Dec</h3>\nChristmas Day holiday Substitute for Christmas Day', 'Tas Term dates', '', 'inherit', 'closed', 'closed', '', '67-autosave-v1', '', '', '2015-10-02 10:43:15', '2015-10-02 10:43:15', '', 67, 'http://teach-me-pd.dev/2015/09/67-autosave-v1/', 0, 'revision', '', 0),
(84, 1, '2015-09-18 05:57:29', '2015-09-18 05:57:29', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 3 Jul 2015\r\nTeachers commence Monday 2 February 2015 and finish Thursday 2 April 2015.\r\n<h3>TERM 3</h3>\r\nTue 21 Jul 2015 – Fri 25 Sep 2015\r\nTeachers commence Monday 20 July 2015.\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Thu 17 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nWed 3 Feb 2016 – Fri 8 Apr 2016\r\nTeachers commence Monday 1 February 2016.\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Wed 21 Dec 2016\r\nTeachers finish Thursday 22 December 2016.', 'Tas Term dates', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2015-09-18 05:57:29', '2015-09-18 05:57:29', '', 67, 'http://teach-me-pd.dev/2015/09/67-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2015-09-18 05:58:17', '2015-09-18 05:58:17', '[provider_registration_form]', 'Provider application', '', 'publish', 'closed', 'closed', '', 'provider-application', '', '', '2015-09-23 09:31:30', '2015-09-23 09:31:30', '', 0, 'http://teach-me-pd.dev/?page_id=85', 0, 'page', '', 0),
(86, 1, '2015-09-18 05:58:17', '2015-09-18 05:58:17', '[gravityform id="1" title="false" description="false"]', 'Provider application', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2015-09-18 05:58:17', '2015-09-18 05:58:17', '', 85, 'http://teach-me-pd.dev/2015/09/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-10-21 06:47:01', '2015-10-21 06:47:01', '[table id=20 /]\n\n[table id=21 /]\n<h2>VIC Public Holidays</h2>\n[table id=22 /]\n\n&nbsp;', 'Vic Term Dates', '', 'inherit', 'closed', 'closed', '', '57-autosave-v1', '', '', '2015-10-21 06:47:01', '2015-10-21 06:47:01', '', 57, 'http://teach-me-pd.dev/2015/09/57-autosave-v1/', 0, 'revision', '', 0),
(88, 1, '2015-09-18 05:59:36', '2015-09-18 05:59:36', '[caption id="attachment_71" align="alignnone" width="300"]<a href="http://teach-me-pd.dev/organizer/andrell-education/"><img class="wp-image-71 size-medium" src="http://teach-me-pd.dev//app/uploads/2015/09/andress-300x300.jpeg" alt="andress" width="300" height="300" /></a> Andrell Education[/caption]\r\n<h3>Become a provider</h3>\r\nWe currently accepting application to be an provider on teachmepd.com.au. To apply, please fill out our application form <a href="http://teach-me-pd.dev/provider-application/">here</a>, and we shall be in touch.\r\n\r\n&nbsp;', 'Providers', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-09-18 05:59:36', '2015-09-18 05:59:36', '', 18, 'http://teach-me-pd.dev/2015/09/18-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2015-09-18 05:59:47', '2015-09-18 05:59:47', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 13 Apr 2015 – Fri 26 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 13 Jul 2015 – Fri 18 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Fri 18 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nWed 27 Jan 2016 – Thu 24 Mar 2016\r\nFirst day of Term 1 is a student-free day.\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 11 Jul 2016 – Fri 16 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 3 Oct 2016 – Tue 20 Dec 2016', 'Vic Term Dates', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-09-18 05:59:47', '2015-09-18 05:59:47', '', 57, 'http://teach-me-pd.dev/2015/09/57-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2015-09-18 06:01:32', '2015-09-18 06:01:32', '<h2>2015</h2>\r\n<h3>Term 2</h3>\r\nMon 20 Apr 2015 – Fri 3 Jul 2015\r\n<h3>Term 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>Term 4</h3>\r\nMon 12 Oct 2015 – Thu 17 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n\r\n<h2>2016</h2>\r\n<h3>Term 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\n<h3>Term 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>Term 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>Term 4</h3>\r\nMon 10 Oct 2016 – Thu 15 Dec 2016', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2015-09-18 06:01:32', '2015-09-18 06:01:32', '', 65, 'http://teach-me-pd.dev/2015/09/65-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2015-09-18 06:08:18', '2015-09-18 06:08:18', '<h3>Hello and welcome,</h3>\r\nToday is the soft launch of our new website. We shall be adding more features over the next week.\r\n\r\nIn the meantime, have a good look around and if you have any questions please <a href="http://teach-me-pd.dev/contact/">contact us!</a>', 'Welcome to the new site!', '', 'trash', 'open', 'open', '', 'welcome-to-the-new-site', '', '', '2015-10-21 07:38:15', '2015-10-21 07:38:15', '', 0, 'http://teach-me-pd.dev/?p=91', 0, 'post', '', 0),
(92, 1, '2015-09-18 06:02:16', '2015-09-18 06:02:16', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 3 Jul 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Thu 17 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Thu 15 Dec 2016', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2015-09-18 06:02:16', '2015-09-18 06:02:16', '', 65, 'http://teach-me-pd.dev/2015/09/65-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2015-10-21 07:31:00', '2015-10-21 07:31:00', '[table id=40 /]\n\n[table id=41 /]\n<h2>ACT Public Holiday</h2>\n[table id=42 /]\n\n&nbsp;', 'ACT Term dates', '', 'inherit', 'closed', 'closed', '', '50-autosave-v1', '', '', '2015-10-21 07:31:00', '2015-10-21 07:31:00', '', 50, 'http://teach-me-pd.dev/2015/09/50-autosave-v1/', 0, 'revision', '', 0),
(94, 1, '2015-09-18 06:08:13', '2015-09-18 06:08:13', '', 'pic2', '', 'inherit', 'open', 'closed', '', 'pic2', '', '', '2015-09-18 06:08:13', '2015-09-18 06:08:13', '', 91, 'http://teach-me-pd.dev//app/uploads/2015/09/pic2.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2015-09-18 06:08:18', '2015-09-18 06:08:18', '<h3>Hello and welcome,</h3>\r\nToday is the soft launch of our new website. We shall be adding more features over the next week.\r\n\r\nIn the meantime, have a good look around and if you have any questions please <a href="http://teach-me-pd.dev/contact/">contact us!</a>', 'Welcome to the new site!', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2015-09-18 06:08:18', '2015-09-18 06:08:18', '', 91, 'http://teach-me-pd.dev/2015/09/91-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2015-09-18 06:10:36', '2015-09-18 06:10:36', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 28 Apr 2015 – Fri 3 Jul 2015\r\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Fri 18 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\nTeachers commence Thursday 28 January 2016.\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 28 Sep</h3>\r\nFamily &amp; Community Day\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Additional holiday for Boxing Day 26 December 2015\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Mon 14 Mar</h3>\r\nCanberra Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 26 Sep</h3>\r\nFamily and Community Day\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday Substitute for Christmas Day', 'ACT Term dates', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-09-18 06:10:36', '2015-09-18 06:10:36', '', 50, 'http://teach-me-pd.dev/2015/09/50-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2015-09-18 06:18:00', '2015-09-18 06:18:00', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 21 Apr 2015 – Fri 26 Jun 2015\r\nTeachers commence Monday 20 April 2015.\r\n<h3>TERM 3</h3>\r\nTue 14 Jul 2015 – Fri 18 Sep 2015\r\nTeachers commence Monday 13 July 2015.\r\n<h3>TERM 4</h3>\r\nTue 6 Oct 2015 – Wed 16 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nThu 28 Jan 2016 – Fri 8 Apr 2016\r\nEastern Division, Teachers commence Wednesday 27 January 2016.\r\n<h3>TERM 1</h3>\r\nThu 4 Feb 2016 – Fri 8 Apr 2016\r\nWestern Division, Teachers commence Wednesday 03 February 2016.\r\n<h3>TERM 2</h3>\r\nWed 27 Apr 2016 – Fri 1 Jul 2016\r\nTeachers commence Tuesday 26 April 2016.\r\n<h3>TERM 3</h3>\r\nTue 19 Jul 2016 – Fri 23 Sep 2016\r\nTeachers commence Monday 18 July 2016.\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\nTeachers finish Tuesday 20 December 2016.\r\n\r\nPublic Holidays\r\n<h2>2015</h2>\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend.\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Sun 27 Mar</h3>\r\nEaster Sunday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday An additional public holiday to be added when New Year\'s Day, Christmas Day or Boxing Day falls on a weekend.', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2015-09-18 06:18:00', '2015-09-18 06:18:00', '', 53, 'http://teach-me-pd.dev/2015/09/53-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2015-09-18 06:19:33', '2015-09-18 06:19:33', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 21 Apr 2015 – Fri 26 Jun 2015\r\nTeachers commence Monday 20 April 2015.\r\n<h3>TERM 3</h3>\r\nTue 14 Jul 2015 – Fri 18 Sep 2015\r\nTeachers commence Monday 13 July 2015.\r\n<h3>TERM 4</h3>\r\nTue 6 Oct 2015 – Wed 16 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nThu 28 Jan 2016 – Fri 8 Apr 2016\r\nEastern Division, Teachers commence Wednesday 27 January 2016.\r\n<h3>TERM 1</h3>\r\nThu 4 Feb 2016 – Fri 8 Apr 2016\r\nWestern Division, Teachers commence Wednesday 03 February 2016.\r\n<h3>TERM 2</h3>\r\nWed 27 Apr 2016 – Fri 1 Jul 2016\r\nTeachers commence Tuesday 26 April 2016.\r\n<h3>TERM 3</h3>\r\nTue 19 Jul 2016 – Fri 23 Sep 2016\r\nTeachers commence Monday 18 July 2016.\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\nTeachers finish Tuesday 20 December 2016.\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend.\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Sun 27 Mar</h3>\r\nEaster Sunday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday An additional public holiday to be added when New Year\'s Day, Christmas Day or Boxing Day falls on a weekend.', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2015-09-18 06:19:33', '2015-09-18 06:19:33', '', 53, 'http://teach-me-pd.dev/2015/09/53-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2015-09-18 06:20:44', '2015-09-18 06:20:44', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 13 Apr 2015 – Fri 19 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\nStudents resume Tuesday 21 July\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Thu 10 Dec 2015\r\nUrban Schools\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Fri 11 Dec 2015\r\nRemote Schools\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nFri 22 Jan 2016 – Fri 1 Apr 2016\r\nUrban Schools, Students resume Monday 25 January\r\n<h3>TERM 1</h3>\r\nMon 25 Jan 2016 – Fri 1 Apr 2016\r\nRemote Schools, Students resume Wednesday 27 January.\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 25 Jul 2016 – Fri 30 Sep 2016\r\nStudents resume Tuesday 26 July\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Thu 15 Dec 2016\r\nUrban Schools\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\nRemote Schools\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Substitute for Boxing Day\r\n\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 1 Aug</h3>\r\nPicnic Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday Substitute for Christmas Day 25 December 2016.', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-09-18 06:20:44', '2015-09-18 06:20:44', '', 61, 'http://teach-me-pd.dev/2015/09/61-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2015-09-18 06:26:26', '2015-09-18 06:26:26', '', 'Calendar', '', 'publish', 'closed', 'closed', '', 'calendar', '', '', '2015-10-22 23:27:20', '2015-10-22 23:27:20', '', 0, 'http://teach-me-pd.dev/?p=100', 4, 'nav_menu_item', '', 0),
(102, 1, '2015-09-18 06:26:43', '2015-09-18 06:26:43', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 26 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 13 Jul 2015 – Fri 18 Sep 2015\r\n<h3>TERM 4</h3>\r\nTue 6 Oct 2015 – Fri 11 Dec 2015\r\nYear 12 - Friday 20 November; Year 10 &amp; 11 - Friday 27 November 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 25 Jan 2016 – Thu 24 Mar 2016\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 11 Jul 2016 – Fri 16 Sep 2016\r\n<h3>TERM 4</h3>\r\nTue 4 Oct 2016 – Fri 9 Dec 2016\r\nYear 12 - Friday 18 November 2016; Year 10 &amp; 11 - Friday 25 November 2016.\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend.\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday An additional public holiday to be added when New Year\'s Day, Christmas Day or Boxing Day falls on a weekend.', 'QLD Term dates', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2015-09-18 06:26:43', '2015-09-18 06:26:43', '', 63, 'http://teach-me-pd.dev/2015/09/63-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2015-09-18 06:27:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2015-09-18 06:27:49', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(104, 1, '2015-09-18 06:30:22', '2015-09-18 06:30:22', '', 'Hands-Up', '', 'inherit', 'open', 'closed', '', 'hands-up', '', '', '2015-09-18 06:30:22', '2015-09-18 06:30:22', '', 0, 'http://teach-me-pd.dev//app/uploads/2015/09/Hands-Up.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2015-09-18 06:30:27', '2015-09-18 06:30:27', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 27 Apr 2015 – Fri 3 Jul 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Fri 11 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 15 Apr 2016\r\n<h3>TERM 2</h3>\r\nMon 2 May 2016 – Fri 8 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 25 Jul 2016 – Fri 30 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 17 Oct 2016 – Fri 16 Dec 2016\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Thu 24 Dec</h3>\r\nChristmas Eve A part-day public holiday from 7pm to 12 midnight.\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 28 Dec</h3>\r\nProclamation Day If that date falls on a Saturday the public holiday transfers to the following Monday\r\n<h3>Thu 31 Dec</h3>\r\nNew Year\'s Eve Is a part-day public holiday from 7pm to 12 midnight.\r\n\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sat 24 Dec</h3>\r\nChristmas Eve Is a part-day public holiday from 7pm to 12 midnight.\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nChristmas Day holiday Additional day as Christmas Day falls on a Sunday.\r\n<h3>Tue 27 Dec</h3>\r\nProclamation Day Additional day as 26 December is the Christmas Day public holiday\r\n<h3>Sat 31 Dec</h3>\r\nNew Year\'s Eve Is a part-day public holiday from 7pm to 12 midnight.', 'SA Term Dates', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2015-09-18 06:30:27', '2015-09-18 06:30:27', '', 59, 'http://teach-me-pd.dev/2015/09/59-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2015-09-18 06:31:58', '2015-09-18 06:31:58', '', 'Brunswick', '', 'trash', 'closed', 'closed', '', 'brunswick', '', '', '2015-10-30 20:41:13', '2015-10-30 20:41:13', '', 0, 'http://teach-me-pd.dev/venue/brunswick/', 0, 'tribe_venue', '', 0),
(107, 1, '2015-09-18 06:33:20', '2015-09-18 06:33:20', '', 'Booking request', 'This is a request for booking. We shall be in touch to confirm.', 'publish', 'open', 'closed', '', 'booking-request', '', '', '2015-09-18 06:33:20', '2015-09-18 06:33:20', '', 0, 'http://teach-me-pd.dev/product/booking-request/', 0, 'product', '', 0),
(108, 1, '2015-09-18 06:34:17', '2015-09-18 06:34:17', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 3 Jul 2015\r\nTeachers commence Monday 2 February 2015 and finish Thursday 2 April 2015.\r\n<h3>TERM 3</h3>\r\nTue 21 Jul 2015 – Fri 25 Sep 2015\r\nTeachers commence Monday 20 July 2015.\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Thu 17 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nWed 3 Feb 2016 – Fri 8 Apr 2016\r\nTeachers commence Monday 1 February 2016.\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Wed 21 Dec 2016\r\nTeachers finish Thursday 22 December 2016.\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Substitute for Boxing Day 26 December 2015\r\n\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Mon 14 Mar</h3>\r\nEight Hours Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Tue 29 Mar</h3>\r\nEaster Tuesday Restricted public holiday in Tasmania. Observed by some awards/agreements and the State Public Service.\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday Substitute for Christmas Day', 'Tas Term dates', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2015-09-18 06:34:17', '2015-09-18 06:34:17', '', 67, 'http://teach-me-pd.dev/2015/09/67-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2015-09-18 06:35:25', '2015-09-18 06:35:25', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2015-09-18 06:35:25', '2015-09-18 06:35:25', '', 0, 'http://teach-me-pd.dev/shop/', 0, 'page', '', 0),
(110, 1, '2015-09-18 06:35:25', '2015-09-18 06:35:25', '[woocommerce_cart]', 'Book', '', 'publish', 'closed', 'closed', '', 'book', '', '', '2015-09-22 05:10:12', '2015-09-22 05:10:12', '', 0, 'http://teach-me-pd.dev/cart/', 0, 'page', '', 0),
(111, 1, '2015-09-18 06:35:25', '2015-09-18 06:35:25', '[woocommerce_checkout]', 'Confirm Booking', '', 'publish', 'closed', 'closed', '', 'confirm-booking', '', '', '2015-09-22 06:06:20', '2015-09-22 06:06:20', '', 0, 'http://teach-me-pd.dev/checkout/', 0, 'page', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(112, 1, '2015-09-18 06:35:25', '2015-09-18 06:35:25', '[wp-members page=user-profile]', 'User Profile', '', 'publish', 'closed', 'closed', '', 'user-profile', '', '', '2015-10-02 09:59:34', '2015-10-02 09:59:34', '', 0, 'http://teach-me-pd.dev/my-account-2/', 0, 'page', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(113, 1, '2015-09-18 06:37:41', '2015-09-18 06:37:41', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 13 Apr 2015 – Fri 26 Jun 2015\r\n<h3>TERM 3</h3>\r\nMon 13 Jul 2015 – Fri 18 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 5 Oct 2015 – Fri 18 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nWed 27 Jan 2016 – Thu 24 Mar 2016\r\nFirst day of Term 1 is a student-free day.\r\n<h3>TERM 2</h3>\r\nMon 11 Apr 2016 – Fri 24 Jun 2016\r\n<h3>TERM 3</h3>\r\nMon 11 Jul 2016 – Fri 16 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 3 Oct 2016 – Tue 20 Dec 2016\r\n\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Fri 2 Oct</h3>\r\nGrand Final Friday\r\n<h3>Tue 3 Nov</h3>\r\nMelbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council.\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Monday 28 December additional day.\r\n\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Mon 14 Mar</h3>\r\nLabour Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Tue 1 Nov</h3>\r\nMelbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council.\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday Substitute day for Christmas Day', 'Vic Term Dates', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-09-18 06:37:41', '2015-09-18 06:37:41', '', 57, 'http://teach-me-pd.dev/2015/09/57-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2015-10-21 07:19:40', '2015-10-21 07:19:40', '[table id=36 /]\n\n[table id=37 /]\n<h2>WA Public Holidays</h2>\n[table id=38 /]\n\n[table id=39 /]\n\n&nbsp;', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '65-autosave-v1', '', '', '2015-10-21 07:19:40', '2015-10-21 07:19:40', '', 65, 'http://teach-me-pd.dev/2015/09/65-autosave-v1/', 0, 'revision', '', 0),
(115, 1, '2015-09-18 06:39:45', '2015-09-18 06:39:45', '', 'Booking Request', 'This is a booking request. We shall be in touch to confirm', 'publish', 'open', 'closed', '', 'booking-request-2', '', '', '2015-09-18 06:39:45', '2015-09-18 06:39:45', '', 0, 'http://teach-me-pd.dev/product/booking-request-2/', 0, 'product', '', 0),
(116, 1, '2015-09-18 06:40:30', '2015-09-18 06:40:30', '<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nMon 20 Apr 2015 – Fri 3 Jul 2015\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Thu 17 Dec 2015\r\nTeachers finish Friday 18 December 2015.\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Thu 15 Dec 2016\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 28 Sep</h3>\r\nQueen\'s Birthday Some regional areas in WA may hold the Queen\'s Birthday public holiday on an different date\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Additional holiday for Boxing Day 26 December 2015\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Mon 7 Mar</h3>\r\nLabour Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 6 Jun</h3>\r\nWestern Australia Day\r\n<h3>Mon 26 Sep</h3>\r\nQueen\'s Birthday Some regional areas in WA may hold the Queen\'s Birthday public holiday on an different date\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day When New Year\'s Day, Anzac Day, or Christmas Day falls on a Saturday or Sunday, the next following Monday is also a public holiday.\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day When Boxing Day falls on a Sunday or Monday, the next following Tuesday is also a public holiday\r\n<h3>Mon 26 Dec</h3>\r\nChristmas Day holiday Substitute day for Christmas Day\r\n<h3>Tue 27 Dec</h3>\r\nBoxing Day holiday Substitute day for Boxing Day', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2015-09-18 06:40:30', '2015-09-18 06:40:30', '', 65, 'http://teach-me-pd.dev/2015/09/65-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2015-09-18 06:50:54', '2015-09-18 06:50:54', '', 'Order &ndash; September 18, 2015 @ 06:50 AM', '', 'wc-completed', 'open', 'closed', 'order_55fbb44e5dea0', 'order-sep-18-2015-0650-am', '', '', '2015-09-18 07:04:01', '2015-09-18 07:04:01', '', 0, 'http://teach-me-pd.dev/', 0, 'shop_order', '', 2),
(118, 1, '2015-09-18 06:53:43', '2015-09-18 06:53:43', '[woocommerce_my_account]', 'My Account', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-09-18 06:53:43', '2015-09-18 06:53:43', '', 6, 'http://teach-me-pd.dev/2015/09/6-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2015-09-18 06:54:55', '2015-09-18 06:54:55', '<h3>Terms</h3>\r\nIt is important that you read these terms and conditions of use carefully. By using, visiting or browsing the TeachMe PD website you agree to be bound by these terms and conditions of use, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this web site are protected by applicable copyright and trademark law.\r\n<h3>Changes to terms and conditions of use</h3>\r\nWe reserve the right from time to time to change these terms and conditions at our sole discretion. The most current version of the terms and conditions will supersede all previous versions and can be reviewed by clicking on the "Terms &amp; conditions" hyperlink located at the bottom of the pages of the TeachMe PD website.\r\n<h3>Links</h3>\r\nSome of the hyperlinks on the TeachMe PD website may lead to other websites that are not controlled by or affiliated with TeachMe PD. Use of any such linked web site is at the user’s own risk.\r\nIn addition, other websites may link to the TeachMe PD website. TeachMe PD has not reviewed such websites and is not responsible for their content or privacy policies.\r\n<h3>Subscription</h3>\r\nTo subscribe to TeachMe PD’s services, you must be at least 18 years of age, have a valid email address, and be employed by an authorised school, organisation or government authority, or studying to become so.\r\n\r\nTo register for PD courses through TeachMe PD, you will need to be at least 18 years of age and must establish a retail account by providing a valid email address and contact details, and nominate an authorised body for payment of course bookings. If you are already a member of the subscription service, then there is no need to enter any further details.\r\n<h3>Maintaining account access and information</h3>\r\nYou are responsible for ensuring your subscription information as entered in the registration form and subsequently detailed in the "My account" section is current, accurate and complete. You can maintain and update your subscription information from the "My account" page and may request access to all personal information held by us as stated in our Privacy Policy. You are responsible for maintaining the confidentiality of your account and password and for restricting access to your account. TeachMe PD will charge you for PD bookings made as a result of you not maintaining your account information.\r\n\r\nWe reserve the right to keep indefinitely any information relating to members who have been identified as abusing TeachMe PD Services in any way.\r\n<h3>Right to suspend or cancel</h3>\r\nWe reserve the right to suspend or cancel your subscription if we have reasonable grounds to suspect that your information is incorrect, inaccurate or incomplete or there has been unauthorised access to your account.\r\nWe reserve the right to terminate or restrict your use of TeachMe PD Services, without notice, for any or no reason whatsoever.\r\n<h3>Payment &amp; Billing</h3>\r\nOnce minimum numbers for a course have been reached, you or your nominated school/organisation/agency, will be invoiced with the cost of any and all selected Professional Learning courses for immediate payment, prior to the commencement of the course.\r\n\r\nIn the event of non-attendance without a withdrawal, you or your nominated school/organisation/agency will be invoiced for the cost of your attendance, as if you had attended.\r\n\r\nTax invoices will be created and sent to you or your nominated school/organisation/authority by email only. Please contact our office to issue a tax invoice.\r\nIn the event that your nominated school/organisation/authority refuses payment, for any reason, you will be held personally responsible for the immediate payment of the invoice prior to commencement of the course, or you may be turned away on the day.\r\n<h3>Refunds</h3>\r\nAny billing related refunds will be at the discretion of TeachMe PD.\r\n<h3>Limitations on liability</h3>\r\nOther than as specified expressly in these terms and conditions we will not be liable for any loss or damage (including indirect or consequential loss or damage) however caused which may be suffered or incurred or which may arise directly or indirectly in respect of the use by you of the TeachMe PD service or the TeachMe PD website except to the extent that such liability cannot be excluded by law.\r\n\r\nWhere the law implies warranties or conditions into these terms and conditions which cannot be excluded, restricted or modified, to the extent which TeachMe PD is entitled, its liability will be limited in the manner permitted under section 68A of the Trade Practices Act 1974 at its option to in the case of a supply of services, the supply of the services again, the supply of equivalent services, the payment of the cost of having the services supplied again, or the payment of the cost of supplying equivalent services.\r\n<h3>Assignment</h3>\r\nWe may assign any or all of our rights and obligations pursuant to these terms and conditions without the need to obtain your consent.\r\n<h3>Privacy</h3>\r\nAny information submitted on the TeachMe PD website is subject to our "Privacy policy". Please review our "Privacy policy" to understand our practices.\r\n<h3>Copyright</h3>\r\nAll content of the TeachMe PD website including text, graphics, logos, designs, photographs, button icons, images, audio/video clips, digital downloads, data compilations and software and its compilation is the property of TeachMe PD or its authorised PD providers and is protected by Australian and International copyright laws.\r\n\r\nUnless otherwise specified, the content of the TeachMe PD website is for your personal and non-commercial use and we grant you a limited license to access the TeachMe PD website for that purpose. You may not download (other than through page caching necessary for personal use), modify, copy, distribute, transmit, display, perform, reproduce, duplicate, publish, license, create derivative works from, or offer for sale any information contained on, or obtained from, the TeachMe PD website without our express written consent.\r\n<h3>Changes to terms and conditions of use</h3>\r\nWe reserve the right from time to time to change these terms and conditions at our sole discretion. We will notify you of any material updates by email. The most current version of the terms and conditions will supersede all previous versions and can be reviewed by clicking on the "Terms &amp; conditions" hyperlink located at the bottom of the pages of the TeachMe PD website.\r\n<h3>Applicable law</h3>\r\nYour use of this site is governed by, construed and enforced in accordance with the laws of Victoria, Australia. Disputes arising from your use of this site are exclusively subject to the jurisdiction of the courts of Victoria, Australia.', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2015-10-30 07:59:39', '2015-10-30 07:59:39', '', 0, 'http://teach-me-pd.dev/?page_id=119', 0, 'page', '', 0),
(120, 1, '2015-09-18 06:54:55', '2015-09-18 06:54:55', 'Coming soon', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2015-09-18 06:54:55', '2015-09-18 06:54:55', '', 119, 'http://teach-me-pd.dev/2015/09/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2015-09-18 06:55:02', '2015-09-18 06:55:02', '', 'Terms', '', 'trash', 'closed', 'closed', '', 'terms', '', '', '2015-10-22 03:01:47', '2015-10-22 03:01:47', '', 0, 'http://teach-me-pd.dev/?page_id=121', 0, 'page', '', 0),
(122, 1, '2015-09-18 06:55:02', '2015-09-18 06:55:02', '', 'Terms', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2015-09-18 06:55:02', '2015-09-18 06:55:02', '', 121, 'http://teach-me-pd.dev/2015/09/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2015-09-18 06:58:10', '2015-09-18 06:58:10', '[wp-members page=register]', 'Register', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-09-18 06:58:10', '2015-09-18 06:58:10', '', 10, 'http://teach-me-pd.dev/2015/09/10-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2015-09-18 06:58:17', '2015-09-18 06:58:17', '[wp-members page=login]', 'Login', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2015-09-18 06:58:17', '2015-09-18 06:58:17', '', 8, 'http://teach-me-pd.dev/2015/09/8-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2015-09-18 07:04:01', '2015-09-18 07:04:01', '', '117 | Booking Request | 1', '', 'publish', 'closed', 'closed', '', '117-booking-request-1', '', '', '2015-09-18 07:04:01', '2015-09-18 07:04:01', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_wooticket', '', 0),
(126, 1, '2015-09-18 07:04:01', '2015-09-18 07:04:01', '', '117 | Booking Request | 2', '', 'publish', 'closed', 'closed', '', '117-booking-request-2', '', '', '2015-09-18 07:04:01', '2015-09-18 07:04:01', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_wooticket', '', 0),
(128, 1, '2015-09-18 07:07:42', '2015-09-18 07:07:42', '', 'Frankston day 1', '', 'publish', 'open', 'closed', '', 'frankston-day-1', '', '', '2015-09-18 07:07:42', '2015-09-18 07:07:42', '', 0, 'http://teach-me-pd.dev/product/frankston-day-1/', 0, 'product', '', 0),
(129, 1, '2015-09-18 07:09:23', '2015-09-18 07:09:23', '', 'sun-smart-school-kids1', '', 'inherit', 'open', 'closed', '', 'sun-smart-school-kids1', '', '', '2015-09-18 07:09:23', '2015-09-18 07:09:23', '', 0, 'http://teach-me-pd.dev//app/uploads/2015/09/sun-smart-school-kids1.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2015-09-18 07:09:30', '2015-09-18 07:09:30', 'The National Golf Course, Long Island Site, 165/235 Frankston-Dandenong Rd, Frankston VIC 3199', 'The National Golf Course, Long Island Site', '', 'publish', 'closed', 'closed', '', 'frankston', '', '', '2015-10-30 20:40:57', '2015-10-30 20:40:57', '', 0, 'http://teach-me-pd.dev/venue/frankston/', 0, 'tribe_venue', '', 0),
(131, 1, '2015-09-18 07:53:20', '2015-09-18 07:53:20', 'Accordingly, we have developed this Policy in order for you to understand how we collect, use, communicate and disclose and make use of personal information. The following outlines our privacy policy.\r\n<ul>\r\n	<li>Before or at the time of collecting personal information, we will identify the purposes for which information is being collected.</li>\r\n	<li>We will collect and use of personal information solely with the objective of fulfilling those purposes specified by us and for other compatible purposes, unless we obtain the consent of the individual concerned or as required by law.</li>\r\n	<li>We will only retain personal information as long as necessary for the fulfillment of those purposes.</li>\r\n	<li>We will collect personal information by lawful and fair means and, where appropriate, with the knowledge or consent of the individual concerned.</li>\r\n	<li>Personal data should be relevant to the purposes for which it is to be used, and, to the extent necessary for those purposes, should be accurate, complete, and up-to-date.</li>\r\n	<li>We will protect personal information by reasonable security safeguards against loss or theft, as well as unauthorized access, disclosure, copying, use or modification.</li>\r\n	<li>If we want to use any personal information, we will ask you first.</li>\r\n	<li>We will contact you post-purchase as a courtesy follow up to inform you of the option to view your purchase or order details online.</li>\r\n	<li>We will contact you from time-to-time if you register as a member or if there are announcements related to your purchase.</li>\r\n</ul>', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'policy', '', '', '2015-10-30 07:53:37', '2015-10-30 07:53:37', '', 0, 'http://teach-me-pd.dev/?page_id=131', 0, 'page', '', 0),
(132, 1, '2015-09-18 07:53:20', '2015-09-18 07:53:20', '', 'Policy', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2015-09-18 07:53:20', '2015-09-18 07:53:20', '', 131, 'http://teach-me-pd.dev/2015/09/131-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2015-09-22 05:10:12', '2015-09-22 05:10:12', '[woocommerce_cart]', 'Book', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2015-09-22 05:10:12', '2015-09-22 05:10:12', '', 110, 'http://teach-me-pd.dev/2015/09/110-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2015-09-22 05:15:27', '2015-09-22 05:15:27', '[wp-members page=user-profile]', 'My Account', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2015-09-22 05:15:27', '2015-09-22 05:15:27', '', 112, 'http://teach-me-pd.dev/2015/09/112-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2015-09-22 06:06:20', '2015-09-22 06:06:20', '[woocommerce_checkout]', 'Confirm Booking', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2015-09-22 06:06:20', '2015-09-22 06:06:20', '', 111, 'http://teach-me-pd.dev/2015/09/111-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2015-09-22 06:25:37', '2015-09-22 06:25:37', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2015-10-30 09:33:59', '2015-10-30 09:33:59', '', 0, 'http://teach-me-pd.dev/?p=136', 2, 'nav_menu_item', '', 0),
(137, 1, '2015-09-22 06:25:37', '2015-09-22 06:25:37', '', 'Login / Register', '', 'publish', 'closed', 'closed', '', '137', '', '', '2015-10-30 09:33:59', '2015-10-30 09:33:59', '', 0, 'http://teach-me-pd.dev/?p=137', 1, 'nav_menu_item', '', 0),
(139, 1, '2015-09-22 06:58:08', '2015-09-22 06:58:08', '', 'Order &ndash; September 22, 2015 @ 06:58 AM', '', 'wc-on-hold', 'open', 'closed', 'order_5600fc0047a67', 'order-sep-22-2015-0658-am', '', '', '2015-09-22 06:58:08', '2015-09-22 06:58:08', '', 0, 'http://teach-me-pd.dev/', 0, 'shop_order', '', 1),
(140, 1, '2015-09-23 09:31:30', '2015-09-23 09:31:30', '[provider_registration_form]', 'Provider application', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2015-09-23 09:31:30', '2015-09-23 09:31:30', '', 85, 'http://teach-me-pd.dev/2015/09/85-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2015-09-23 09:36:49', '2015-09-23 09:36:49', 'Your application for provider has been submitted. We will notify once it is approved.', 'Thank You For Applying as a Provider', '', 'publish', 'closed', 'closed', '', 'provider-application-success', '', '', '2015-09-23 09:37:28', '2015-09-23 09:37:28', '', 0, 'http://teach-me-pd.dev/?page_id=141', 0, 'page', '', 0),
(142, 1, '2015-09-23 09:36:49', '2015-09-23 09:36:49', 'Your application for provider has been submitted. We will notify once it is approved.', 'Thank You For Applying as a Provider', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2015-09-23 09:36:49', '2015-09-23 09:36:49', '', 141, 'http://teach-me-pd.dev/2015/09/141-revision-v1/', 0, 'revision', '', 0),
(143, 2, '2015-09-24 08:17:21', '2015-09-24 08:17:21', '', 'Auto Draft', '', 'trash', 'open', 'open', '', 'auto-draft', '', '', '2015-10-29 01:27:10', '2015-10-29 01:27:10', '', 0, 'http://teach-me-pd.dev/?p=143', 0, 'post', '', 0),
(144, 1, '2015-09-25 08:20:08', '2015-09-25 08:20:08', '', 'author-placeholder', '', 'inherit', 'open', 'closed', '', 'author-placeholder', '', '', '2015-09-25 08:20:08', '2015-09-25 08:20:08', '', 0, 'http://teach-me-pd.dev//app/uploads/2015/09/author-placeholder.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2015-09-28 06:40:38', '2015-09-28 06:40:38', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:12:"tribe_events";}}}s:8:"position";s:4:"side";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Base Event', 'base-event', 'publish', 'closed', 'closed', '', 'group_5608e0cc18359', '', '', '2015-09-28 06:41:18', '2015-09-28 06:41:18', '', 0, 'http://teach-me-pd.dev/', 0, 'acf-field-group', '', 0),
(148, 1, '2015-09-28 06:40:38', '2015-09-28 06:40:38', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'ID', 'base_event', 'publish', 'closed', 'closed', '', 'field_5608e0d6c43c6', '', '', '2015-09-28 06:40:38', '2015-09-28 06:40:38', '', 147, 'http://teach-me-pd.dev/', 0, 'acf-field', '', 0),
(152, 1, '2015-10-02 06:02:17', '2015-10-02 06:02:17', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Tue 28 Apr 2015 \\u2013 \\nFri 3 Jul 2015\\n\\nWhen Anzac Day falls\\n on a weekend ACT\\n public schools\\n commence on the\\n Tuesday","Mon 20 Jul 2015 \\u2013 \\nFri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 \\nFri 18 Dec 2015"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 \\nFri 8 Apr 2016\\n\\nTeachers commence\\n Thursday 28 January\\n 2016.","Tue 26 Apr 2016 \\u2013 \\nFri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 \\nFri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 \\nFri 16 Dec 2016"]]', 'ACT Term Dates', '', 'publish', 'closed', 'closed', '', 'act-term-dates', '', '', '2015-10-30 07:44:57', '2015-10-30 07:44:57', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(153, 1, '2015-10-02 06:07:18', '2015-10-02 06:07:18', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["                     ACT","","Tue 28 Apr 2015 \\u2013 Fri 3 Jul 2015\\n\\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 Fri 18 Dec 2015"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["                     ACT","Mon 1 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nTeachers commence Thursday 28 January 2016.","Tue 26 Apr 2016 \\u2013 Fri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 Fri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 Fri 16 Dec 2016"]]', 'ACT Term Dates', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2015-10-02 06:07:18', '2015-10-02 06:07:18', '', 152, 'http://teach-me-pd.dev/2015/10/152-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2015-10-02 06:07:37', '2015-10-02 06:07:37', '[table id=1 /]\r\n<h2>2015</h2>\r\n<h3>TERM 2</h3>\r\nTue 28 Apr 2015 – Fri 3 Jul 2015\r\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday\r\n<h3>TERM 3</h3>\r\nMon 20 Jul 2015 – Fri 25 Sep 2015\r\n<h3>TERM 4</h3>\r\nMon 12 Oct 2015 – Fri 18 Dec 2015\r\n<h2>2016</h2>\r\n<h3>TERM 1</h3>\r\nMon 1 Feb 2016 – Fri 8 Apr 2016\r\nTeachers commence Thursday 28 January 2016.\r\n<h3>TERM 2</h3>\r\nTue 26 Apr 2016 – Fri 1 Jul 2016\r\n<h3>TERM 3</h3>\r\nMon 18 Jul 2016 – Fri 23 Sep 2016\r\n<h3>TERM 4</h3>\r\nMon 10 Oct 2016 – Fri 16 Dec 2016\r\n<h2>Public Holidays</h2>\r\n<h2>2015</h2>\r\n<h3>Mon 28 Sep</h3>\r\nFamily &amp; Community Day\r\n<h3>Mon 5 Oct</h3>\r\nLabour Day\r\n<h3>Fri 25 Dec</h3>\r\nChristmas Day\r\n<h3>Sat 26 Dec</h3>\r\nBoxing Day\r\n<h3>Mon 28 Dec</h3>\r\nBoxing Day holiday Additional holiday for Boxing Day 26 December 2015\r\n<h2>2016</h2>\r\n<h3>Fri 1 Jan</h3>\r\nNew Year\'s Day\r\n<h3>Tue 26 Jan</h3>\r\nAustralia Day\r\n<h3>Mon 14 Mar</h3>\r\nCanberra Day\r\n<h3>Fri 25 Mar</h3>\r\nGood Friday\r\n<h3>Sat 26 Mar</h3>\r\nEaster Saturday\r\n<h3>Mon 28 Mar</h3>\r\nEaster Monday\r\n<h3>Mon 25 Apr</h3>\r\nAnzac Day\r\n<h3>Mon 13 Jun</h3>\r\nQueen\'s Birthday\r\n<h3>Mon 26 Sep</h3>\r\nFamily and Community Day\r\n<h3>Mon 3 Oct</h3>\r\nLabour Day\r\n<h3>Sun 25 Dec</h3>\r\nChristmas Day\r\n<h3>Mon 26 Dec</h3>\r\nBoxing Day\r\n<h3>Tue 27 Dec</h3>\r\nChristmas Day holiday Substitute for Christmas Day', 'ACT Term dates', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-10-02 06:07:37', '2015-10-02 06:07:37', '', 50, 'http://teach-me-pd.dev/2015/10/50-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2015-10-02 06:11:06', '2015-10-02 06:11:06', '[["                     2015","                    Date","                  Holiday"],["","Mon 28 Sep","Family & Community Day"],["","Mon 5 Oct","Labour Day"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Additional holiday for Boxing Day 26 December 2015"],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 14 Mar","Canberra Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 26 Sep","Family and Community Day"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day"]]', 'ACT Public Holidays', '', 'publish', 'closed', 'closed', '', 'act-public-holidays', '', '', '2015-10-02 06:37:23', '2015-10-02 06:37:23', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(156, 1, '2015-10-02 06:27:13', '2015-10-02 06:27:13', '[["                     2015","                    Date","                  Holiday","           State\\/Territories"],["","Mon 28 Sep","Family & Community Day","ACT"],["","Mon 5 Oct","Labour Day","ACT"],["","Fri 25 Dec","Christmas Day","ACT"],["","Sat 26 Dec","Boxing Day","ACT"],["","Mon 28 Dec","Boxing Day holiday Additional holiday for Boxing Day 26 December 2015","ACT"],["                     2016","                    Date","                  Holiday","           State\\/Territories"],["","Fri 1 Jan","New Year\\u2019s Day","ACT"],["","Tue 26 Jan","Australia Day","ACT"],["","Mon 14 Mar","Canberra Day","ACT"],["","Fri 25 Mar","Good Friday","ACT"],["","Sat 26 Mar","Easter Saturday","ACT"],["","Mon 28 Mar","Easter Monday","ACT"],["","Mon 25 Apr","Anzac Day","ACT"],["","Mon 13 Jun","Queen\\u2019s Birthday","ACT"],["","Mon 26 Sep","Family and Community Day","ACT"],["","Mon 3 Oct","Labour Day","ACT"],["","Sun 25 Dec","Christmas Day","ACT"],["","Mon 26 Dec","Boxing Day","ACT"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day","ACT"]]', 'ACT Public Holidays', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2015-10-02 06:27:13', '2015-10-02 06:27:13', '', 155, 'http://teach-me-pd.dev/2015/10/155-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2015-10-02 06:27:29', '2015-10-02 06:27:29', '[table id=1 /]\r\n\r\n[table id=2 /]\r\n\r\n&nbsp;', 'ACT Term dates', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-10-02 06:27:29', '2015-10-02 06:27:29', '', 50, 'http://teach-me-pd.dev/2015/10/50-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2015-10-02 06:29:04', '2015-10-02 06:29:04', '[table id=1 /]\r\n<h2>ACT Public Holiday</h2>\r\n[table id=2 /]\r\n\r\n&nbsp;', 'ACT Term dates', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-10-02 06:29:04', '2015-10-02 06:29:04', '', 50, 'http://teach-me-pd.dev/2015/10/50-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2015-10-02 06:37:23', '2015-10-02 06:37:23', '[["                     2015","                    Date","                  Holiday"],["","Mon 28 Sep","Family & Community Day"],["","Mon 5 Oct","Labour Day"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Additional holiday for Boxing Day 26 December 2015"],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 14 Mar","Canberra Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 26 Sep","Family and Community Day"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day"]]', 'ACT Public Holidays', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2015-10-02 06:37:23', '2015-10-02 06:37:23', '', 155, 'http://teach-me-pd.dev/2015/10/155-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2015-10-02 06:38:37', '2015-10-02 06:38:37', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Tue 28 Apr 2015 \\u2013 Fri 3 Jul 2015\\n\\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 Fri 18 Dec 2015"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nTeachers commence Thursday 28 January 2016.","Tue 26 Apr 2016 \\u2013 Fri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 Fri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 Fri 16 Dec 2016"]]', 'ACT Term Dates', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2015-10-02 06:38:37', '2015-10-02 06:38:37', '', 152, 'http://teach-me-pd.dev/2015/10/152-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2015-10-02 09:59:14', '2015-10-02 09:59:14', '[wp-members page=user-profile]', 'My Account', '', 'inherit', 'closed', 'closed', '', '112-autosave-v1', '', '', '2015-10-02 09:59:14', '2015-10-02 09:59:14', '', 112, 'http://teach-me-pd.dev/2015/10/112-autosave-v1/', 0, 'revision', '', 0),
(164, 1, '2015-10-02 09:59:34', '2015-10-02 09:59:34', '[wp-members page=user-profile]', 'User Profile', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2015-10-02 09:59:34', '2015-10-02 09:59:34', '', 112, 'http://teach-me-pd.dev/2015/10/112-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2015-10-02 10:15:22', '2015-10-02 10:15:22', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Tue 21 Apr 2015 \\u2013 \\nFri 26 Jun 2015\\n\\nTeachers commence\\n Monday 20 April\\n 2015.","Tue 14 Jul 2015 \\u2013 \\nFri 18 Sep 2015\\n\\nTeachers commence\\n Monday 13 July\\n 2015.","Tue 6 Oct 2015 \\u2013 Wed 16 Dec 2015\\n\\nTeachers finish\\n Friday 18 December\\n 2015."],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Thu 28 Jan 2016 \\u2013 \\nFri 8 Apr 2016\\n\\nEastern Division, Teachers commence Wednesday 27 January 2016.\\n\\nThu 4 Feb 2016 \\u2013 \\nFri 8 Apr 2016\\n\\nWestern Division, \\nTeachers commence\\n Wednesday 03\\n February 2016.","Wed 27 Apr 2016 \\u2013\\n Fri 1 Jul 2016\\n\\nTeachers commence\\n Tuesday 26 April\\n 2016.","Tue 19 Jul 2016 \\u2013 \\nFri 23 Sep 2016\\n\\nTeachers commence\\n Monday 18 July\\n 2016.","Mon 10 Oct 2016 \\u2013 \\nFri 16 Dec 2016\\n\\nTeachers finish\\n Tuesday 20 \\nDecember 2016."]]', 'NSW Term Dates', '', 'publish', 'closed', 'closed', '', 'copy-of-act-term-dates', '', '', '2015-10-30 07:47:38', '2015-10-30 07:47:38', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(166, 1, '2015-10-02 10:15:23', '2015-10-02 10:15:23', '[["                     2015","                    Date","                  Holiday"],["","Mon 5 Oct","Labour Day"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend."],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Sun 27 Mar","Easter Sunday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday An additional public holiday to be added when New Year\\u2019s Day, Christmas Day or Boxing Day falls on a weekend."]]', 'NSW Public Holidays', '', 'publish', 'closed', 'closed', '', 'copy-of-act-public-holidays', '', '', '2015-10-02 10:21:28', '2015-10-02 10:21:28', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(167, 1, '2015-10-02 10:17:44', '2015-10-02 10:17:44', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Tue 21 Apr 2015 \\u2013 Fri 26 Jun 2015\\n\\nTeachers commence Monday 20 April 2015.","Tue 14 Jul 2015 \\u2013 Fri 18 Sep 2015\\n\\nTeachers commence Monday 13 July 2015.","Tue 6 Oct 2015 \\u2013 Wed 16 Dec 2015\\n\\nTeachers finish Friday 18 December 2015."],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Thu 28 Jan 2016 \\u2013 Fri 8 Apr 2016\\n\\nEastern Division, Teachers commence Wednesday 27 January 2016.\\n\\nThu 4 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nWestern Division, Teachers commence Wednesday 03 February 2016.","Wed 27 Apr 2016 \\u2013 Fri 1 Jul 2016\\n\\nTeachers commence Tuesday 26 April 2016.","Tue 19 Jul 2016 \\u2013 Fri 23 Sep 2016\\n\\nTeachers commence Monday 18 July 2016.","Mon 10 Oct 2016 \\u2013 Fri 16 Dec 2016\\n\\nTeachers finish Tuesday 20 December 2016."]]', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2015-10-02 10:17:44', '2015-10-02 10:17:44', '', 165, 'http://teach-me-pd.dev/2015/10/165-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2015-10-02 10:21:28', '2015-10-02 10:21:28', '[["                     2015","                    Date","                  Holiday"],["","Mon 5 Oct","Labour Day"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend."],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Sun 27 Mar","Easter Sunday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday An additional public holiday to be added when New Year\\u2019s Day, Christmas Day or Boxing Day falls on a weekend."]]', 'NSW Public Holidays', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2015-10-02 10:21:28', '2015-10-02 10:21:28', '', 166, 'http://teach-me-pd.dev/2015/10/166-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2015-10-02 10:21:43', '2015-10-02 10:21:43', '[table id=3 /]\r\n<h2>Public Holidays</h2>\r\n[table id=4 /]\r\n\r\n&nbsp;', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2015-10-02 10:21:43', '2015-10-02 10:21:43', '', 53, 'http://teach-me-pd.dev/2015/10/53-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2015-10-02 10:22:23', '2015-10-02 10:22:23', '[table id=3 /]\r\n<h2>NSW Public Holidays</h2>\r\n[table id=4 /]\r\n\r\n&nbsp;', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2015-10-02 10:22:23', '2015-10-02 10:22:23', '', 53, 'http://teach-me-pd.dev/2015/10/53-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2015-10-02 10:23:38', '2015-10-02 10:23:38', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013\\n Fri 26 Jun 2015","Mon 13 Jul 2015 \\u2013 \\nFri 18 Sep 2015","Tue 6 Oct 2015 \\u2013 \\nFri 11 Dec 2015\\n\\nYear 12 \\u2013 Friday 20 \\nNovember; Year 10 &\\n 11 \\u2013 Friday 27\\n November 2015."],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 25 Jan 2016 \\u2013 \\nThu 24 Mar 2016","Mon 11 Apr 2016 \\u2013 \\nFri 24 Jun 2016","Mon 11 Jul 2016 \\u2013 \\nFri 16 Sep 2016","Tue 4 Oct 2016 \\u2013 \\nFri 9 Dec 2016\\n\\nYear 12 \\u2013 Friday 18\\n November 2016;\\n Year 10 & 11 \\u2013\\n Friday 25 November\\n 2016."]]', 'QLD Term Dates', '', 'publish', 'closed', 'closed', '', 'copy-of-nsw-term-dates', '', '', '2015-10-30 07:48:46', '2015-10-30 07:48:46', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(172, 1, '2015-10-02 10:23:39', '2015-10-02 10:23:39', '[["                     2015","                    Date","                  Holiday"],["","Mon 5 Oct","Labour Day"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend."],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Sun 25 Dec","Christmas Day"],["","Tue 27 Dec","Christmas Day holiday An additional public holiday to be added when New Year\\u2019s Day, Christmas Day or Boxing Day falls on a weekend."]]', 'QLD Public Holidays', '', 'publish', 'closed', 'closed', '', 'copy-of-nsw-public-holidays', '', '', '2015-10-02 10:28:15', '2015-10-02 10:28:15', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(173, 1, '2015-10-02 10:25:14', '2015-10-02 10:25:14', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013 Fri 26 Jun 2015","Mon 13 Jul 2015 \\u2013 Fri 18 Sep 2015","Tue 6 Oct 2015 \\u2013 Fri 11 Dec 2015\\n\\nYear 12 \\u2013 Friday 20 November; Year 10 & 11 \\u2013 Friday 27 November 2015."],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 25 Jan 2016 \\u2013 Thu 24 Mar 2016","Mon 11 Apr 2016 \\u2013 Fri 24 Jun 2016","Mon 11 Jul 2016 \\u2013 Fri 16 Sep 2016","Tue 4 Oct 2016 \\u2013 Fri 9 Dec 2016\\n\\nYear 12 \\u2013 Friday 18 November 2016; Year 10 & 11 \\u2013 Friday 25 November 2016."]]', 'QLD Term Dates', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2015-10-02 10:25:14', '2015-10-02 10:25:14', '', 171, 'http://teach-me-pd.dev/2015/10/171-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2015-10-02 10:28:15', '2015-10-02 10:28:15', '[["                     2015","                    Date","                  Holiday"],["","Mon 5 Oct","Labour Day"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend."],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Sun 25 Dec","Christmas Day"],["","Tue 27 Dec","Christmas Day holiday An additional public holiday to be added when New Year\\u2019s Day, Christmas Day or Boxing Day falls on a weekend."]]', 'QLD Public Holidays', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2015-10-02 10:28:15', '2015-10-02 10:28:15', '', 172, 'http://teach-me-pd.dev/2015/10/172-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2015-10-02 10:28:31', '2015-10-02 10:28:31', '[table id=5 /]\r\n<h2>QLD Public Holidays</h2>\r\n[table id=6 /]\r\n\r\n&nbsp;', 'QLD Term dates', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2015-10-02 10:28:31', '2015-10-02 10:28:31', '', 63, 'http://teach-me-pd.dev/2015/10/63-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2015-10-02 10:29:35', '2015-10-02 10:29:35', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 27 Apr 2015 \\u2013 \\nFri 3 Jul 2015","Mon 20 Jul 2015 \\u2013 \\nFri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 \\nFri 11 Dec 2015"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 \\nFri 15 Apr 2016","Mon 2 May 2016 \\u2013 \\nFri 8 Jul 2016","Mon 25 Jul 2016 \\u2013 \\nFri 30 Sep 2016","Mon 17 Oct 2016 \\u2013 \\nFri 16 Dec 2016"]]', 'SA Term Dates', '', 'publish', 'closed', 'closed', '', 'copy-of-nsw-term-dates-2', '', '', '2015-10-30 07:49:48', '2015-10-30 07:49:48', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(177, 1, '2015-10-02 10:29:37', '2015-10-02 10:29:37', '[["                     2015","                    Date","                  Holiday"],["","Mon 5 Oct","Labour Day"],["","Thu 24 Dec","Christmas Eve A part-day public holiday from 7pm to 12 midnight."],["","Fri 25 Dec","Christmas Day"],["","Mon 28 Dec","Proclamation Day If that date falls on a Saturday the public holiday transfers to the following Monday"],["","Thu 31 Dec","New Year\\u2019s Eve Is a part-day public holiday from 7pm to 12 midnight."],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sat 24 Dec","Christmas Eve Is a part-day public holiday from 7pm to 12 midnight."],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Christmas Day holiday Additional day as Christmas Day falls on a Sunday."],["","Tue 27 Dec","Proclamation Day Additional day as 26 December is the Christmas Day public holiday"],["","Sat 31 Dec","New Year\\u2019s Eve Is a part-day public holiday from 7pm to 12 midnight."]]', 'SA Public Holidays', '', 'publish', 'closed', 'closed', '', 'copy-of-nsw-public-holidays-2', '', '', '2015-10-02 10:34:40', '2015-10-02 10:34:40', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(178, 1, '2015-10-02 10:30:42', '2015-10-02 10:30:42', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 27 Apr 2015 \\u2013 Fri 3 Jul 2015","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 Fri 11 Dec 2015"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 Fri 15 Apr 2016","Mon 2 May 2016 \\u2013 Fri 8 Jul 2016","Mon 25 Jul 2016 \\u2013 Fri 30 Sep 2016","Mon 17 Oct 2016 \\u2013 Fri 16 Dec 2016"]]', 'SA Term Dates', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2015-10-02 10:30:42', '2015-10-02 10:30:42', '', 176, 'http://teach-me-pd.dev/2015/10/176-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2015-10-02 10:34:40', '2015-10-02 10:34:40', '[["                     2015","                    Date","                  Holiday"],["","Mon 5 Oct","Labour Day"],["","Thu 24 Dec","Christmas Eve A part-day public holiday from 7pm to 12 midnight."],["","Fri 25 Dec","Christmas Day"],["","Mon 28 Dec","Proclamation Day If that date falls on a Saturday the public holiday transfers to the following Monday"],["","Thu 31 Dec","New Year\\u2019s Eve Is a part-day public holiday from 7pm to 12 midnight."],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sat 24 Dec","Christmas Eve Is a part-day public holiday from 7pm to 12 midnight."],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Christmas Day holiday Additional day as Christmas Day falls on a Sunday."],["","Tue 27 Dec","Proclamation Day Additional day as 26 December is the Christmas Day public holiday"],["","Sat 31 Dec","New Year\\u2019s Eve Is a part-day public holiday from 7pm to 12 midnight."]]', 'SA Public Holidays', '', 'inherit', 'closed', 'closed', '', '177-revision-v1', '', '', '2015-10-02 10:34:40', '2015-10-02 10:34:40', '', 177, 'http://teach-me-pd.dev/2015/10/177-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2015-10-02 10:34:59', '2015-10-02 10:34:59', '[table id=7 /]\r\n<h2>SA Public Holidays</h2>\r\n[table id=8 /]\r\n\r\n&nbsp;', 'SA Term Dates', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2015-10-02 10:34:59', '2015-10-02 10:34:59', '', 59, 'http://teach-me-pd.dev/2015/10/59-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2015-10-02 10:35:44', '2015-10-02 10:35:44', '[["                     2015","                    Date","                  Holiday"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Substitute for Boxing Day"],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 1 Aug","Picnic Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day 25 December 2016."]]', 'NT Public Holidays', '', 'publish', 'closed', 'closed', '', 'copy-of-sa-public-holidays', '', '', '2015-10-02 10:40:08', '2015-10-02 10:40:08', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(182, 1, '2015-10-02 10:35:45', '2015-10-02 10:35:45', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 13 Apr 2015 \\u2013 \\nFri 19 Jun 2015","Mon 20 Jul 2015 \\u2013 \\nFri 25 Sep 2015\\n\\nStudents resume\\n Tuesday 21 July","Mon 5 Oct 2015 \\u2013\\n Thu 10 Dec 2015\\n\\nUrban Schools\\n\\nMon 5 Oct 2015 \\u2013 \\nFri 11 Dec 2015\\n\\nRemote Schools\\n"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Fri 22 Jan 2016 \\u2013 \\nFri 1 Apr 2016\\n\\nUrban Schools,\\n Students resume\\n Monday 25 January\\n\\n\\nMon 25 Jan 2016 \\u2013 \\nFri 1 Apr 2016\\n\\nRemote Schools, \\nStudents resume\\n Wednesday 27\\n January.","Mon 11 Apr 2016 \\u2013 \\nFri 24 Jun 2016","Mon 25 Jul 2016 \\u2013 \\nFri 30 Sep 2016\\n\\nStudents resume\\n Tuesday 26 July","Mon 10 Oct 2016 \\u2013 \\nThu 15 Dec 2016\\n\\nUrban Schools\\n\\nMon 10 Oct 2016 \\u2013\\n Fri 16 Dec 2016\\n\\nRemote Schools\\n"]]', 'NT Term Dates', '', 'publish', 'closed', 'closed', '', 'copy-of-sa-term-dates', '', '', '2015-10-30 07:51:35', '2015-10-30 07:51:35', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(183, 1, '2015-10-02 10:37:34', '2015-10-02 10:37:34', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 13 Apr 2015 \\u2013 Fri 19 Jun 2015","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015\\n\\nStudents resume Tuesday 21 July","Mon 5 Oct 2015 \\u2013 Thu 10 Dec 2015\\n\\nUrban Schools\\n\\nMon 5 Oct 2015 \\u2013 Fri 11 Dec 2015\\n\\nRemote Schools"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Fri 22 Jan 2016 \\u2013 Fri 1 Apr 2016\\n\\nUrban Schools, Students resume Monday 25 January\\n\\nMon 25 Jan 2016 \\u2013 Fri 1 Apr 2016\\n\\nRemote Schools, Students resume Wednesday 27 January.","Mon 11 Apr 2016 \\u2013 Fri 24 Jun 2016","Mon 25 Jul 2016 \\u2013 Fri 30 Sep 2016\\n\\nStudents resume Tuesday 26 July","Mon 10 Oct 2016 \\u2013 Thu 15 Dec 2016\\n\\nUrban Schools\\n\\nMon 10 Oct 2016 \\u2013 Fri 16 Dec 2016\\n\\nRemote Schools"]]', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2015-10-02 10:37:34', '2015-10-02 10:37:34', '', 182, 'http://teach-me-pd.dev/2015/10/182-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2015-10-02 10:40:08', '2015-10-02 10:40:08', '[["                     2015","                    Date","                  Holiday"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Substitute for Boxing Day"],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 1 Aug","Picnic Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day 25 December 2016."]]', 'NT Public Holidays', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2015-10-02 10:40:08', '2015-10-02 10:40:08', '', 181, 'http://teach-me-pd.dev/2015/10/181-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2015-10-02 10:40:24', '2015-10-02 10:40:24', '[table id=10 /]\r\n<h2>NT Public Holidays</h2>\r\n[table id=9 /]\r\n\r\n&nbsp;', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-10-02 10:40:24', '2015-10-02 10:40:24', '', 61, 'http://teach-me-pd.dev/2015/10/61-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2015-10-02 10:41:33', '2015-10-02 10:41:33', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["                         ","","Mon 20 Apr 2015 \\u2013\\n Fri 3 Jul 2015\\n\\nTeachers commence\\n Monday 2 February\\n 2015 and finish \\nThursday 2 April \\n2015.","Tue 21 Jul 2015 \\u2013 \\nFri 25 Sep 2015\\n\\nTeachers commence\\n Monday 20 July\\n 2015.","Mon 12 Oct 2015 \\u2013\\n Thu 17 Dec 2015\\n\\nTeachers finish \\nFriday 18 December \\n2015."]]', 'TAS Term Dates 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-nsw-term-dates-3', '', '', '2015-10-30 07:52:33', '2015-10-30 07:52:33', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(187, 1, '2015-10-02 10:41:34', '2015-10-02 10:41:34', '[["                     2015","                    Date","                  Holiday"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Substitute for Boxing Day 26 December 2015"],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 14 Mar","Eight Hours Day"],["","Fri 25 Mar","Good Friday"],["","Mon 28 Mar","Easter Monday"],["","Tue 29 Mar","Easter Tuesday Restricted public holiday in Tasmania. Observed by some awards\\/agreements and the State Public Service."],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Sun 25 Dec","Christmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day"]]', 'TAS Public Holidays', '', 'publish', 'closed', 'closed', '', 'copy-of-nsw-public-holidays-3', '', '', '2015-10-02 10:45:51', '2015-10-02 10:45:51', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(188, 1, '2015-10-02 10:42:54', '2015-10-02 10:42:54', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013 Fri 3 Jul 2015\\n\\nTeachers commence Monday 2 February 2015 and finish Thursday 2 April 2015.","Tue 21 Jul 2015 \\u2013 Fri 25 Sep 2015\\n\\nTeachers commence Monday 20 July 2015.","Mon 12 Oct 2015 \\u2013 Thu 17 Dec 2015\\n\\nTeachers finish Friday 18 December 2015."],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Wed 3 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nTeachers commence Monday 1 February 2016.","Tue 26 Apr 2016 \\u2013 Fri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 Fri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 Wed 21 Dec 2016\\n\\nTeachers finish Thursday 22 December 2016."]]', 'TAS Term Dates', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2015-10-02 10:42:54', '2015-10-02 10:42:54', '', 186, 'http://teach-me-pd.dev/2015/10/186-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2015-10-02 10:45:51', '2015-10-02 10:45:51', '[["                     2015","                    Date","                  Holiday"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Substitute for Boxing Day 26 December 2015"],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 14 Mar","Eight Hours Day"],["","Fri 25 Mar","Good Friday"],["","Mon 28 Mar","Easter Monday"],["","Tue 29 Mar","Easter Tuesday Restricted public holiday in Tasmania. Observed by some awards\\/agreements and the State Public Service."],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Sun 25 Dec","Christmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day"]]', 'TAS Public Holidays', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2015-10-02 10:45:51', '2015-10-02 10:45:51', '', 187, 'http://teach-me-pd.dev/2015/10/187-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2015-10-02 10:46:04', '2015-10-02 10:46:04', '[table id=11 /]\r\n<h2>TAS Public Holidays</h2>\r\n[table id=12 /]\r\n\r\n&nbsp;', 'Tas Term dates', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2015-10-02 10:46:04', '2015-10-02 10:46:04', '', 67, 'http://teach-me-pd.dev/2015/10/67-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2015-10-02 10:46:45', '2015-10-02 10:46:45', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 13 Apr 2015 \\u2013\\n Fri 26 Jun 2015","Mon 13 Jul 2015 \\u2013 \\nFri 18 Sep 2015","Mon 5 Oct 2015 \\u2013 \\nFri 18 Dec 2015"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Wed 27 Jan 2016 \\u2013\\n Thu 24 Mar 2016\\n\\nFirst day of Term 1 \\nis a student-free day.","Mon 11 Apr 2016 \\u2013 \\nFri 24 Jun 2016","Mon 11 Jul 2016 \\u2013 \\nFri 16 Sep 2016","Mon 3 Oct 2016 \\u2013 \\nTue 20 Dec 2016"]]', 'VIC Term Dates', '', 'publish', 'closed', 'closed', '', 'copy-of-tas-term-dates', '', '', '2015-10-30 07:53:34', '2015-10-30 07:53:34', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(192, 1, '2015-10-02 10:46:46', '2015-10-02 10:46:46', '[["                     2015","                    Date","                  Holiday"],["","Fri 2 Oct","Grand Final Friday"],["","Tue 3 Nov","Melbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council."],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Monday 28 December additional day."],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 14 Mar","Labour Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Tue 1 Nov","Melbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council."],["","Sun 25 Dec","Christmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute day for Christmas Day"]]', 'VIC Public Holidays', '', 'publish', 'closed', 'closed', '', 'copy-of-tas-public-holidays', '', '', '2015-10-02 10:51:15', '2015-10-02 10:51:15', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(193, 1, '2015-10-02 10:48:02', '2015-10-02 10:48:02', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 13 Apr 2015 \\u2013 Fri 26 Jun 2015","Mon 13 Jul 2015 \\u2013 Fri 18 Sep 2015","Mon 5 Oct 2015 \\u2013 Fri 18 Dec 2015"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Wed 27 Jan 2016 \\u2013 Thu 24 Mar 2016\\n\\nFirst day of Term 1 is a student-free day.","Mon 11 Apr 2016 \\u2013 Fri 24 Jun 2016","Mon 11 Jul 2016 \\u2013 Fri 16 Sep 2016","Mon 3 Oct 2016 \\u2013 Tue 20 Dec 2016"]]', 'VIC Term Dates', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2015-10-02 10:48:02', '2015-10-02 10:48:02', '', 191, 'http://teach-me-pd.dev/2015/10/191-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2015-10-02 10:51:15', '2015-10-02 10:51:15', '[["                     2015","                    Date","                  Holiday"],["","Fri 2 Oct","Grand Final Friday"],["","Tue 3 Nov","Melbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council."],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Monday 28 December additional day."],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 14 Mar","Labour Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Tue 1 Nov","Melbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council."],["","Sun 25 Dec","Christmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute day for Christmas Day"]]', 'VIC Public Holidays', '', 'inherit', 'closed', 'closed', '', '192-revision-v1', '', '', '2015-10-02 10:51:15', '2015-10-02 10:51:15', '', 192, 'http://teach-me-pd.dev/2015/10/192-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2015-10-02 10:51:26', '2015-10-02 10:51:26', '[table id=13 /]\r\n<h2>VIC Public Holidays</h2>\r\n[table id=14 /]\r\n\r\n&nbsp;', 'Vic Term Dates', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-10-02 10:51:26', '2015-10-02 10:51:26', '', 57, 'http://teach-me-pd.dev/2015/10/57-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2015-10-02 10:52:12', '2015-10-02 10:52:12', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013\\nFri 3 Jul 2015","Mon 20 Jul 2015 \\u2013 \\nFri 25 Sep 2015","Mon 12 Oct 2015 \\u2013\\n Thu 17 Dec 2015\\n\\nTeachers finish\\n Friday 18 December\\n 2015."],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 \\nFri 8 Apr 2016","Tue 26 Apr 2016 \\u2013 \\nFri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 \\nFri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 \\nThu 15 Dec 2016"]]', 'WA Term Dates', '', 'publish', 'closed', 'closed', '', 'copy-of-nsw-term-dates-4', '', '', '2015-10-30 07:54:14', '2015-10-30 07:54:14', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(197, 1, '2015-10-02 10:52:13', '2015-10-02 10:52:13', '[["                     2015","                    Date","                  Holiday"],["","Mon 28 Sep","Queen\\u2019s Birthday Some regional areas in WA may hold the Queen\\u2019s Birthday public holiday on an different date"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Additional holiday for Boxing Day 26 December 2015"],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 7 Mar","Labour Day"],["","Fri 25 Mar","Good Friday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 6 Jun","Western Australia Day"],["","Mon 26 Sep","Queen\\u2019s Birthday Some regional areas in WA may hold the Queen\\u2019s Birthday public holiday on an different date"],["","Sun 25 Dec","Christmas Day When New Year\\u2019s Day, Anzac Day, or Christmas Day falls on a Saturday or Sunday, the next following Monday is also a public holiday."],["","Mon 26 Dec","Boxing Day When Boxing Day falls on a Sunday or Monday, the next following Tuesday is also a public holiday"],["","Mon 26 Dec","Christmas Day holiday Substitute day for Christmas Day"],["","Tue 27 Dec","Boxing Day holiday Substitute day for Boxing Day"]]', 'WA Public Holidays', '', 'publish', 'closed', 'closed', '', 'copy-of-nsw-public-holidays-4', '', '', '2015-10-02 10:56:19', '2015-10-02 10:56:19', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(198, 1, '2015-10-02 10:53:11', '2015-10-02 10:53:11', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013 Fri 3 Jul 2015","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 Thu 17 Dec 2015\\n\\nTeachers finish Friday 18 December 2015."],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 Fri 8 Apr 2016","Tue 26 Apr 2016 \\u2013 Fri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 Fri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 Thu 15 Dec 2016"]]', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '196-revision-v1', '', '', '2015-10-02 10:53:11', '2015-10-02 10:53:11', '', 196, 'http://teach-me-pd.dev/2015/10/196-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2015-10-02 10:56:19', '2015-10-02 10:56:19', '[["                     2015","                    Date","                  Holiday"],["","Mon 28 Sep","Queen\\u2019s Birthday Some regional areas in WA may hold the Queen\\u2019s Birthday public holiday on an different date"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Additional holiday for Boxing Day 26 December 2015"],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 7 Mar","Labour Day"],["","Fri 25 Mar","Good Friday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 6 Jun","Western Australia Day"],["","Mon 26 Sep","Queen\\u2019s Birthday Some regional areas in WA may hold the Queen\\u2019s Birthday public holiday on an different date"],["","Sun 25 Dec","Christmas Day When New Year\\u2019s Day, Anzac Day, or Christmas Day falls on a Saturday or Sunday, the next following Monday is also a public holiday."],["","Mon 26 Dec","Boxing Day When Boxing Day falls on a Sunday or Monday, the next following Tuesday is also a public holiday"],["","Mon 26 Dec","Christmas Day holiday Substitute day for Christmas Day"],["","Tue 27 Dec","Boxing Day holiday Substitute day for Boxing Day"]]', 'WA Public Holidays', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2015-10-02 10:56:19', '2015-10-02 10:56:19', '', 197, 'http://teach-me-pd.dev/2015/10/197-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2015-10-02 10:56:31', '2015-10-02 10:56:31', '[table id=15 /]\r\n<h2>WA Public Holidays</h2>\r\n[table id=16 /]\r\n\r\n&nbsp;', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2015-10-02 10:56:31', '2015-10-02 10:56:31', '', 65, 'http://teach-me-pd.dev/2015/10/65-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2015-10-21 05:51:18', '2015-10-21 05:51:18', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013 Fri 3 Jul 2015\\n\\nTeachers commence Monday 2 February 2015 and finish Thursday 2 April 2015.","Tue 21 Jul 2015 \\u2013 Fri 25 Sep 2015\\n\\nTeachers commence Monday 20 July 2015.","Mon 12 Oct 2015 \\u2013 Thu 17 Dec 2015\\n\\nTeachers finish Friday 18 December 2015."],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Wed 3 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nTeachers commence Monday 1 February 2016.","Tue 26 Apr 2016 \\u2013 Fri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 Fri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 Wed 21 Dec 2016\\n\\nTeachers finish Thursday 22 December 2016."]]', 'TAS Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2015-10-21 05:51:18', '2015-10-21 05:51:18', '', 186, 'http://teach-me-pd.dev/2015/10/186-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2015-10-21 05:52:32', '2015-10-21 05:52:32', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Wed 3 Feb 2016 \\u2013 \\nFri 8 Apr 2016\\n\\nTeachers commence\\n Monday 1 February\\n 2016.","Tue 26 Apr 2016 \\u2013 \\nFri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 \\nFri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 \\nWed 21 Dec 2016\\n\\nTeachers finish\\n Thursday 22\\n December 2016."]]', 'TAS Term Dates 2016', '', 'publish', 'closed', 'closed', '', 'copy-of-tas-term-dates-2015', '', '', '2015-10-30 07:55:06', '2015-10-30 07:55:06', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(204, 1, '2015-10-21 05:52:43', '2015-10-21 05:52:43', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013 Fri 3 Jul 2015\\n\\nTeachers commence Monday 2 February 2015 and finish Thursday 2 April 2015.","Tue 21 Jul 2015 \\u2013 Fri 25 Sep 2015\\n\\nTeachers commence Monday 20 July 2015.","Mon 12 Oct 2015 \\u2013 Thu 17 Dec 2015\\n\\nTeachers finish Friday 18 December 2015."],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Wed 3 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nTeachers commence Monday 1 February 2016.","Tue 26 Apr 2016 \\u2013 Fri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 Fri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 Wed 21 Dec 2016\\n\\nTeachers finish Thursday 22 December 2016."]]', 'TAS Term Dates 2016', '', 'inherit', 'closed', 'closed', '', '203-revision-v1', '', '', '2015-10-21 05:52:43', '2015-10-21 05:52:43', '', 203, 'http://teach-me-pd.dev/2015/10/203-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2015-10-21 05:53:49', '2015-10-21 05:53:49', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Wed 3 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nTeachers commence Monday 1 February 2016.","Tue 26 Apr 2016 \\u2013 Fri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 Fri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 Wed 21 Dec 2016\\n\\nTeachers finish Thursday 22 December 2016."]]', 'TAS Term Dates 2016', '', 'inherit', 'closed', 'closed', '', '203-revision-v1', '', '', '2015-10-21 05:53:49', '2015-10-21 05:53:49', '', 203, 'http://teach-me-pd.dev/2015/10/203-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2015-10-21 05:54:15', '2015-10-21 05:54:15', '<p>[table id=11 /]</p><p>[table id=17 /]</p><h2>TAS Public Holidays</h2><p>[table id=12 /]  </p>', 'Tas Term dates', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2015-10-21 05:54:15', '2015-10-21 05:54:15', '', 67, 'http://teach-me-pd.dev/2015/10/67-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2015-10-21 05:56:04', '2015-10-21 05:56:04', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013 Fri 3 Jul 2015\\n\\nTeachers commence Monday 2 February 2015 and finish Thursday 2 April 2015.","Tue 21 Jul 2015 \\u2013 Fri 25 Sep 2015\\n\\nTeachers commence Monday 20 July 2015.","Mon 12 Oct 2015 \\u2013 Thu 17 Dec 2015\\n\\nTeachers finish Friday 18 December 2015."]]', 'TAS Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2015-10-21 05:56:04', '2015-10-21 05:56:04', '', 186, 'http://teach-me-pd.dev/2015/10/186-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2015-10-21 05:59:28', '2015-10-21 05:59:28', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["                         ","","Mon 20 Apr 2015 \\u2013 Fri 3 Jul 2015\\n\\nTeachers commence Monday 2 February 2015 and finish Thursday 2 April 2015.","Tue 21 Jul 2015 \\u2013 Fri 25 Sep 2015\\n\\nTeachers commence Monday 20 July 2015.","Mon 12 Oct 2015 \\u2013 Thu 17 Dec 2015\\n\\nTeachers finish Friday 18 December 2015."]]', 'TAS Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2015-10-21 05:59:28', '2015-10-21 05:59:28', '', 186, 'http://teach-me-pd.dev/2015/10/186-revision-v1/', 0, 'revision', '', 0),
(209, 1, '2015-10-21 06:01:16', '2015-10-21 06:01:16', '[["                     2015","                    Date","                  Holiday"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Substitute for Boxing Day 26 December 2015"]]', 'TAS Public Holidays 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-tas-public-holidays-2', '', '', '2015-10-21 06:09:34', '2015-10-21 06:09:34', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(210, 1, '2015-10-21 06:01:42', '2015-10-21 06:01:42', '[["                     2015","                    Date","                  Holiday"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Substitute for Boxing Day 26 December 2015"],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 14 Mar","Eight Hours Day"],["","Fri 25 Mar","Good Friday"],["","Mon 28 Mar","Easter Monday"],["","Tue 29 Mar","Easter Tuesday Restricted public holiday in Tasmania. Observed by some awards\\/agreements and the State Public Service."],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Sun 25 Dec","Christmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day"]]', 'TAS Public Holidays 2015', '', 'inherit', 'closed', 'closed', '', '209-revision-v1', '', '', '2015-10-21 06:01:42', '2015-10-21 06:01:42', '', 209, 'http://teach-me-pd.dev/2015/10/209-revision-v1/', 0, 'revision', '', 0),
(211, 1, '2015-10-21 06:02:49', '2015-10-21 06:02:49', '[["                     2015","                    Date","                  Holiday"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Substitute for Boxing Day 26 December 2015"]]', 'TAS Public Holidays 2015', '', 'inherit', 'closed', 'closed', '', '209-revision-v1', '', '', '2015-10-21 06:02:49', '2015-10-21 06:02:49', '', 209, 'http://teach-me-pd.dev/2015/10/209-revision-v1/', 0, 'revision', '', 0),
(212, 1, '2015-10-21 06:09:49', '2015-10-21 06:09:49', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 14 Mar","Eight Hours Day"],["","Fri 25 Mar","Good Friday"],["","Mon 28 Mar","Easter Monday"],["","Tue 29 Mar","Easter Tuesday Restricted public holiday in Tasmania. Observed by some awards\\/agreements and the State Public Service."],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Sun 25 Dec","Christmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day"]]', 'TAS Public Holidays 2016', '', 'publish', 'closed', 'closed', '', 'copy-of-tas-public-holidays-3', '', '', '2015-10-21 06:10:10', '2015-10-21 06:10:10', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(213, 1, '2015-10-21 06:10:10', '2015-10-21 06:10:10', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 14 Mar","Eight Hours Day"],["","Fri 25 Mar","Good Friday"],["","Mon 28 Mar","Easter Monday"],["","Tue 29 Mar","Easter Tuesday Restricted public holiday in Tasmania. Observed by some awards\\/agreements and the State Public Service."],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Sun 25 Dec","Christmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day"]]', 'TAS Public Holidays 2016', '', 'inherit', 'closed', 'closed', '', '212-revision-v1', '', '', '2015-10-21 06:10:10', '2015-10-21 06:10:10', '', 212, 'http://teach-me-pd.dev/2015/10/212-revision-v1/', 0, 'revision', '', 0),
(214, 1, '2015-10-21 06:10:32', '2015-10-21 06:10:32', '[table id=11 /]\r\n\r\n[table id=17 /]\r\n<h2>TAS Public Holidays</h2>\r\n[table id=18 /]\r\n\r\n[table id=19 /]', 'Tas Term dates', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2015-10-21 06:10:32', '2015-10-21 06:10:32', '', 67, 'http://teach-me-pd.dev/2015/10/67-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2015-10-21 06:35:57', '2015-10-21 06:35:57', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 13 Apr 2015 \\u2013 \\nFri 26 Jun 2015","Mon 13 Jul 2015 \\u2013 \\nFri 18 Sep 2015","Mon 5 Oct 2015 \\u2013 \\nFri 18 Dec 2015"]]', 'VIC Term Dates 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-vic-term-dates', '', '', '2015-10-30 07:04:24', '2015-10-30 07:04:24', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(216, 1, '2015-10-21 06:36:16', '2015-10-21 06:36:16', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 13 Apr 2015 \\u2013 Fri 26 Jun 2015","Mon 13 Jul 2015 \\u2013 Fri 18 Sep 2015","Mon 5 Oct 2015 \\u2013 Fri 18 Dec 2015"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Wed 27 Jan 2016 \\u2013 Thu 24 Mar 2016\\n\\nFirst day of Term 1 is a student-free day.","Mon 11 Apr 2016 \\u2013 Fri 24 Jun 2016","Mon 11 Jul 2016 \\u2013 Fri 16 Sep 2016","Mon 3 Oct 2016 \\u2013 Tue 20 Dec 2016"]]', 'VIC Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '215-revision-v1', '', '', '2015-10-21 06:36:16', '2015-10-21 06:36:16', '', 215, 'http://teach-me-pd.dev/2015/10/215-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2015-10-21 06:39:05', '2015-10-21 06:39:05', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Wed 27 Jan 2016 \\u2013 Thu 24 Mar 2016\\n\\nFirst day of Term 1 is a student-free day.","Mon 11 Apr 2016 \\u2013 \\nFri 24 Jun 2016","Mon 11 Jul 2016 \\u2013 \\nFri 16 Sep 2016","Mon 3 Oct 2016 \\u2013 \\nTue 20 Dec 2016"]]', 'VIC Term Dates 2016', '', 'publish', 'closed', 'closed', '', 'copy-of-vic-term-dates-2', '', '', '2015-10-30 07:04:55', '2015-10-30 07:04:55', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(218, 1, '2015-10-21 06:39:37', '2015-10-21 06:39:37', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Wed 27 Jan 2016 \\u2013 Thu 24 Mar 2016\\n\\nFirst day of Term 1 is a student-free day.","Mon 11 Apr 2016 \\u2013 Fri 24 Jun 2016","Mon 11 Jul 2016 \\u2013 Fri 16 Sep 2016","Mon 3 Oct 2016 \\u2013 Tue 20 Dec 2016"]]', 'VIC Term Dates 2016', '', 'inherit', 'closed', 'closed', '', '217-revision-v1', '', '', '2015-10-21 06:39:37', '2015-10-21 06:39:37', '', 217, 'http://teach-me-pd.dev/2015/10/217-revision-v1/', 0, 'revision', '', 0),
(219, 1, '2015-10-21 06:41:02', '2015-10-21 06:41:02', '[table id=20 /]\r\n\r\n[table id=21 /]\r\n<h2>VIC Public Holidays</h2>\r\n[table id=14 /]\r\n\r\n&nbsp;', 'Vic Term Dates', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-10-21 06:41:02', '2015-10-21 06:41:02', '', 57, 'http://teach-me-pd.dev/2015/10/57-revision-v1/', 0, 'revision', '', 0),
(220, 1, '2015-10-21 06:41:37', '2015-10-21 06:41:37', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 13 Apr 2015 \\u2013 Fri 26 Jun 2015","Mon 13 Jul 2015 \\u2013 Fri 18 Sep 2015","Mon 5 Oct 2015 \\u2013 Fri 18 Dec 2015"]]', 'VIC Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '215-revision-v1', '', '', '2015-10-21 06:41:37', '2015-10-21 06:41:37', '', 215, 'http://teach-me-pd.dev/2015/10/215-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2015-10-21 06:43:43', '2015-10-21 06:43:43', '[["                     2015","                    Date","                  Holiday"],["","Fri 2 Oct","Grand Final Friday"],["","Tue 3 Nov","Melbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council."],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Monday 28 December additional day."]]', 'VIC Public Holidays 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-vic-public-holidays', '', '', '2015-10-21 06:44:21', '2015-10-21 06:44:21', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(222, 1, '2015-10-21 06:44:21', '2015-10-21 06:44:21', '[["                     2015","                    Date","                  Holiday"],["","Fri 2 Oct","Grand Final Friday"],["","Tue 3 Nov","Melbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council."],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Monday 28 December additional day."]]', 'VIC Public Holidays 2015', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2015-10-21 06:44:21', '2015-10-21 06:44:21', '', 221, 'http://teach-me-pd.dev/2015/10/221-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(223, 1, '2015-10-21 06:45:55', '2015-10-21 06:45:55', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 14 Mar","Labour Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Tue 1 Nov","Melbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council."],["","Sun 25 Dec","Christmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute day for Christmas Day"]]', 'Copy of VIC Public Holidays', '', 'publish', 'closed', 'closed', '', 'copy-of-vic-public-holidays-2', '', '', '2015-10-21 06:49:39', '2015-10-21 06:49:39', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(224, 1, '2015-10-21 06:48:17', '2015-10-21 06:48:17', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 14 Mar","Labour Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Tue 1 Nov","Melbourne Cup A public holiday across all of Victoria, unless alternate local holiday has been arranged by non-metro council."],["","Sun 25 Dec","Christmas Day Christmas Day falls on a Sunday, so Tuesday 27 December is also a public holiday"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute day for Christmas Day"]]', 'Copy of VIC Public Holidays', '', 'inherit', 'closed', 'closed', '', '223-revision-v1', '', '', '2015-10-21 06:48:17', '2015-10-21 06:48:17', '', 223, 'http://teach-me-pd.dev/2015/10/223-revision-v1/', 0, 'revision', '', 0),
(225, 1, '2015-10-21 06:49:49', '2015-10-21 06:49:49', '[table id=20 /]\r\n\r\n[table id=21 /]\r\n<h2>VIC Public Holidays</h2>\r\n[table id=22 /]\r\n\r\n[table id=23 /]', 'Vic Term Dates', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-10-21 06:49:49', '2015-10-21 06:49:49', '', 57, 'http://teach-me-pd.dev/2015/10/57-revision-v1/', 0, 'revision', '', 0),
(226, 1, '2015-10-21 06:52:00', '2015-10-21 06:52:00', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Tue 21 Apr 2015 \\u2013 \\nFri 26 Jun 2015\\n\\nTeachers commence Monday 20 April 2015.","Tue 14 Jul 2015 \\u2013 \\nFri 18 Sep 2015\\n\\nTeachers commence Monday 13 July 2015.","Tue 6 Oct 2015 \\u2013 Wed 16 Dec 2015\\n\\nTeachers finish Friday 18 December 2015."]]', 'NSW Term Dates 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-nsw-term-dates-5', '', '', '2015-10-30 07:02:10', '2015-10-30 07:02:10', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(227, 1, '2015-10-21 06:52:29', '2015-10-21 06:52:29', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Tue 21 Apr 2015 \\u2013 Fri 26 Jun 2015\\n\\nTeachers commence Monday 20 April 2015.","Tue 14 Jul 2015 \\u2013 Fri 18 Sep 2015\\n\\nTeachers commence Monday 13 July 2015.","Tue 6 Oct 2015 \\u2013 Wed 16 Dec 2015\\n\\nTeachers finish Friday 18 December 2015."]]', 'NSW Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '226-revision-v1', '', '', '2015-10-21 06:52:29', '2015-10-21 06:52:29', '', 226, 'http://teach-me-pd.dev/2015/10/226-revision-v1/', 0, 'revision', '', 0),
(228, 1, '2015-10-21 06:53:14', '2015-10-21 06:53:14', '[table id=24 /]\r\n\r\n[table id=25 /]\r\n<h2>NSW Public Holidays</h2>\r\n[table id=4 /]\r\n\r\n&nbsp;', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2015-10-21 06:53:14', '2015-10-21 06:53:14', '', 53, 'http://teach-me-pd.dev/2015/10/53-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2015-10-21 06:55:08', '2015-10-21 06:55:08', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Thu 28 Jan 2016 \\u2013 \\nFri 8 Apr 2016\\n\\nEastern Division, Teachers commence Wednesday 27 January 2016.\\n\\nThu 4 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nWestern Division, Teachers commence Wednesday 03 February 2016.","Wed 27 Apr 2016 \\u2013 Fri 1 Jul 2016\\n\\nTeachers commence Tuesday 26 April 2016.","Tue 19 Jul 2016 \\u2013 \\nFri 23 Sep 2016\\n\\nTeachers commence Monday 18 July 2016.","Mon 10 Oct 2016 \\u2013 Fri 16 Dec 2016\\n\\nTeachers finish Tuesday 20 December 2016."]]', 'NSW Term Dates', '', 'publish', 'closed', 'closed', '', 'copy-of-nsw-term-dates-6', '', '', '2015-10-30 07:03:14', '2015-10-30 07:03:14', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(230, 1, '2015-10-21 06:55:26', '2015-10-21 06:55:26', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Thu 28 Jan 2016 \\u2013 Fri 8 Apr 2016\\n\\nEastern Division, Teachers commence Wednesday 27 January 2016.\\n\\nThu 4 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nWestern Division, Teachers commence Wednesday 03 February 2016.","Wed 27 Apr 2016 \\u2013 Fri 1 Jul 2016\\n\\nTeachers commence Tuesday 26 April 2016.","Tue 19 Jul 2016 \\u2013 Fri 23 Sep 2016\\n\\nTeachers commence Monday 18 July 2016.","Mon 10 Oct 2016 \\u2013 Fri 16 Dec 2016\\n\\nTeachers finish Tuesday 20 December 2016."]]', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2015-10-21 06:55:26', '2015-10-21 06:55:26', '', 229, 'http://teach-me-pd.dev/2015/10/229-revision-v1/', 0, 'revision', '', 0),
(231, 1, '2015-10-21 06:56:25', '2015-10-21 06:56:25', '[["                     2015","                    Date","                  Holiday"],["","Mon 5 Oct","Labour Day"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend."]]', 'NSW Public Holidays 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-nsw-public-holidays-5', '', '', '2015-10-21 06:57:12', '2015-10-21 06:57:12', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(232, 1, '2015-10-21 06:57:12', '2015-10-21 06:57:12', '[["                     2015","                    Date","                  Holiday"],["","Mon 5 Oct","Labour Day"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend."]]', 'NSW Public Holidays 2015', '', 'inherit', 'closed', 'closed', '', '231-revision-v1', '', '', '2015-10-21 06:57:12', '2015-10-21 06:57:12', '', 231, 'http://teach-me-pd.dev/2015/10/231-revision-v1/', 0, 'revision', '', 0),
(233, 1, '2015-10-21 06:58:35', '2015-10-21 06:58:35', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Sun 27 Mar","Easter Sunday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday An additional public holiday to be added when New Year\\u2019s Day, Christmas Day or Boxing Day falls on a weekend."]]', 'NSW Public Holidays', '', 'publish', 'closed', 'closed', '', 'copy-of-nsw-public-holidays-6', '', '', '2015-10-21 06:58:58', '2015-10-21 06:58:58', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(234, 1, '2015-10-21 06:58:58', '2015-10-21 06:58:58', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Sun 27 Mar","Easter Sunday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday An additional public holiday to be added when New Year\\u2019s Day, Christmas Day or Boxing Day falls on a weekend."]]', 'NSW Public Holidays', '', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2015-10-21 06:58:58', '2015-10-21 06:58:58', '', 233, 'http://teach-me-pd.dev/2015/10/233-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2015-10-21 06:59:21', '2015-10-21 06:59:21', '[table id=24 /]\r\n\r\n[table id=25 /]\r\n<h2>NSW Public Holidays</h2>\r\n[table id=26 /]\r\n\r\n[table id=27 /]\r\n\r\n&nbsp;', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2015-10-21 06:59:21', '2015-10-21 06:59:21', '', 53, 'http://teach-me-pd.dev/2015/10/53-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2015-10-21 07:01:12', '2015-10-21 07:01:12', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 27 Apr 2015 \\u2013 Fri 3 Jul 2015","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 Fri 11 Dec 2015"]]', 'SA Term Dates 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-sa-term-dates-2', '', '', '2015-10-21 07:01:41', '2015-10-21 07:01:41', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(237, 1, '2015-10-21 07:01:41', '2015-10-21 07:01:41', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 27 Apr 2015 \\u2013 Fri 3 Jul 2015","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 Fri 11 Dec 2015"]]', 'SA Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '236-revision-v1', '', '', '2015-10-21 07:01:41', '2015-10-21 07:01:41', '', 236, 'http://teach-me-pd.dev/2015/10/236-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2015-10-21 07:02:13', '2015-10-21 07:02:13', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 Fri 15 Apr 2016","Mon 2 May 2016 \\u2013 Fri 8 Jul 2016","Mon 25 Jul 2016 \\u2013 Fri 30 Sep 2016","Mon 17 Oct 2016 \\u2013 Fri 16 Dec 2016"]]', 'SA Term Dates 2016', '', 'publish', 'closed', 'closed', '', 'copy-of-sa-term-dates-3', '', '', '2015-10-21 07:02:33', '2015-10-21 07:02:33', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(239, 1, '2015-10-21 07:02:33', '2015-10-21 07:02:33', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 Fri 15 Apr 2016","Mon 2 May 2016 \\u2013 Fri 8 Jul 2016","Mon 25 Jul 2016 \\u2013 Fri 30 Sep 2016","Mon 17 Oct 2016 \\u2013 Fri 16 Dec 2016"]]', 'SA Term Dates 2016', '', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2015-10-21 07:02:33', '2015-10-21 07:02:33', '', 238, 'http://teach-me-pd.dev/2015/10/238-revision-v1/', 0, 'revision', '', 0),
(240, 1, '2015-10-21 07:02:55', '2015-10-21 07:02:55', '[table id=28 /]\r\n\r\n[table id=29 /]\r\n<h2>SA Public Holidays</h2>\r\n[table id=8 /]\r\n\r\n&nbsp;', 'SA Term Dates', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2015-10-21 07:02:55', '2015-10-21 07:02:55', '', 59, 'http://teach-me-pd.dev/2015/10/59-revision-v1/', 0, 'revision', '', 0),
(241, 1, '2015-10-21 07:04:18', '2015-10-21 07:04:18', '[["                     2015","                    Date","                  Holiday"],["","Mon 5 Oct","Labour Day"],["","Thu 24 Dec","Christmas Eve A part-day public holiday from 7pm to 12 midnight."],["","Fri 25 Dec","Christmas Day"],["","Mon 28 Dec","Proclamation Day If that date falls on a Saturday the public holiday transfers to the following Monday"],["","Thu 31 Dec","New Year\\u2019s Eve Is a part-day public holiday from 7pm to 12 midnight."]]', 'SA Public Holidays 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-sa-public-holidays-2', '', '', '2015-10-21 07:04:54', '2015-10-21 07:04:54', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(242, 1, '2015-10-21 07:04:32', '2015-10-21 07:04:32', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sat 24 Dec","Christmas Eve Is a part-day public holiday from 7pm to 12 midnight."],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Christmas Day holiday Additional day as Christmas Day falls on a Sunday."],["","Tue 27 Dec","Proclamation Day Additional day as 26 December is the Christmas Day public holiday"],["","Sat 31 Dec","New Year\\u2019s Eve Is a part-day public holiday from 7pm to 12 midnight."]]', 'SA Public Holidays 2016', '', 'publish', 'closed', 'closed', '', 'copy-of-copy-of-sa-public-holidays', '', '', '2015-10-21 07:05:20', '2015-10-21 07:05:20', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(243, 1, '2015-10-21 07:04:52', '2015-10-21 07:04:52', '[["                     2015","                    Date","                  Holiday"],["","Mon 5 Oct","Labour Day"],["","Thu 24 Dec","Christmas Eve A part-day public holiday from 7pm to 12 midnight."],["","Fri 25 Dec","Christmas Day"],["","Mon 28 Dec","Proclamation Day If that date falls on a Saturday the public holiday transfers to the following Monday"],["","Thu 31 Dec","New Year\\u2019s Eve Is a part-day public holiday from 7pm to 12 midnight."]]', 'SA Public Holidays 2015', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2015-10-21 07:04:52', '2015-10-21 07:04:52', '', 241, 'http://teach-me-pd.dev/2015/10/241-revision-v1/', 0, 'revision', '', 0),
(244, 1, '2015-10-21 07:05:20', '2015-10-21 07:05:20', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sat 24 Dec","Christmas Eve Is a part-day public holiday from 7pm to 12 midnight."],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Christmas Day holiday Additional day as Christmas Day falls on a Sunday."],["","Tue 27 Dec","Proclamation Day Additional day as 26 December is the Christmas Day public holiday"],["","Sat 31 Dec","New Year\\u2019s Eve Is a part-day public holiday from 7pm to 12 midnight."]]', 'SA Public Holidays 2016', '', 'inherit', 'closed', 'closed', '', '242-revision-v1', '', '', '2015-10-21 07:05:20', '2015-10-21 07:05:20', '', 242, 'http://teach-me-pd.dev/2015/10/242-revision-v1/', 0, 'revision', '', 0),
(245, 1, '2015-10-21 07:06:54', '2015-10-21 07:06:54', '[table id=28 /]\r\n\r\n[table id=29 /]\r\n<h2>SA Public Holidays</h2>\r\n[table id=30 /]\r\n\r\n[table id=31 /]\r\n\r\n&nbsp;', 'SA Term Dates', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2015-10-21 07:06:54', '2015-10-21 07:06:54', '', 59, 'http://teach-me-pd.dev/2015/10/59-revision-v1/', 0, 'revision', '', 0),
(246, 1, '2015-10-21 07:07:47', '2015-10-21 07:07:47', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 13 Apr 2015 \\u2013 Fri 19 Jun 2015","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015\\n\\nStudents resume Tuesday 21 July","Mon 5 Oct 2015 \\u2013 Thu 10 Dec 2015\\n\\nUrban Schools\\n\\nMon 5 Oct 2015 \\u2013 Fri 11 Dec 2015\\n\\nRemote Schools"]]', 'NT Term Dates 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-nt-term-dates', '', '', '2015-10-21 07:08:11', '2015-10-21 07:08:11', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(247, 1, '2015-10-21 07:07:48', '2015-10-21 07:07:48', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Fri 22 Jan 2016 \\u2013 Fri 1 Apr 2016\\n\\nUrban Schools, Students resume Monday 25 January\\n\\nMon 25 Jan 2016 \\u2013 Fri 1 Apr 2016\\n\\nRemote Schools, Students resume Wednesday 27 January.","Mon 11 Apr 2016 \\u2013 Fri 24 Jun 2016","Mon 25 Jul 2016 \\u2013 Fri 30 Sep 2016\\n\\nStudents resume Tuesday 26 July","Mon 10 Oct 2016 \\u2013 Thu 15 Dec 2016\\n\\nUrban Schools\\n\\nMon 10 Oct 2016 \\u2013 Fri 16 Dec 2016\\n\\nRemote Schools"]]', 'NT Term Dates 2016', '', 'publish', 'closed', 'closed', '', 'copy-of-nt-term-dates-2', '', '', '2015-10-21 07:08:43', '2015-10-21 07:08:43', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(248, 1, '2015-10-21 07:08:11', '2015-10-21 07:08:11', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 13 Apr 2015 \\u2013 Fri 19 Jun 2015","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015\\n\\nStudents resume Tuesday 21 July","Mon 5 Oct 2015 \\u2013 Thu 10 Dec 2015\\n\\nUrban Schools\\n\\nMon 5 Oct 2015 \\u2013 Fri 11 Dec 2015\\n\\nRemote Schools"]]', 'NT Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '246-revision-v1', '', '', '2015-10-21 07:08:11', '2015-10-21 07:08:11', '', 246, 'http://teach-me-pd.dev/2015/10/246-revision-v1/', 0, 'revision', '', 0),
(249, 1, '2015-10-21 07:08:35', '2015-10-21 07:08:35', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Fri 22 Jan 2016 \\u2013 Fri 1 Apr 2016\\n\\nUrban Schools, Students resume Monday 25 January\\n\\nMon 25 Jan 2016 \\u2013 Fri 1 Apr 2016\\n\\nRemote Schools, Students resume Wednesday 27 January.","Mon 11 Apr 2016 \\u2013 Fri 24 Jun 2016","Mon 25 Jul 2016 \\u2013 Fri 30 Sep 2016\\n\\nStudents resume Tuesday 26 July","Mon 10 Oct 2016 \\u2013 Thu 15 Dec 2016\\n\\nUrban Schools\\n\\nMon 10 Oct 2016 \\u2013 Fri 16 Dec 2016\\n\\nRemote Schools"]]', 'Copy of NT Term Dates', '', 'inherit', 'closed', 'closed', '', '247-revision-v1', '', '', '2015-10-21 07:08:35', '2015-10-21 07:08:35', '', 247, 'http://teach-me-pd.dev/2015/10/247-revision-v1/', 0, 'revision', '', 0),
(250, 1, '2015-10-21 07:08:43', '2015-10-21 07:08:43', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Fri 22 Jan 2016 \\u2013 Fri 1 Apr 2016\\n\\nUrban Schools, Students resume Monday 25 January\\n\\nMon 25 Jan 2016 \\u2013 Fri 1 Apr 2016\\n\\nRemote Schools, Students resume Wednesday 27 January.","Mon 11 Apr 2016 \\u2013 Fri 24 Jun 2016","Mon 25 Jul 2016 \\u2013 Fri 30 Sep 2016\\n\\nStudents resume Tuesday 26 July","Mon 10 Oct 2016 \\u2013 Thu 15 Dec 2016\\n\\nUrban Schools\\n\\nMon 10 Oct 2016 \\u2013 Fri 16 Dec 2016\\n\\nRemote Schools"]]', 'NT Term Dates 2016', '', 'inherit', 'closed', 'closed', '', '247-revision-v1', '', '', '2015-10-21 07:08:43', '2015-10-21 07:08:43', '', 247, 'http://teach-me-pd.dev/2015/10/247-revision-v1/', 0, 'revision', '', 0),
(251, 1, '2015-10-21 07:08:47', '2015-10-21 07:08:47', '[table id=22 /]\r\n\r\n[table id=23 /]\r\n<h2>NT Public Holidays</h2>\r\n[table id=9 /]\r\n\r\n&nbsp;', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-10-21 07:08:47', '2015-10-21 07:08:47', '', 61, 'http://teach-me-pd.dev/2015/10/61-revision-v1/', 0, 'revision', '', 0),
(252, 1, '2015-10-21 07:09:02', '2015-10-21 07:09:02', '[["                     2015","                    Date","                  Holiday"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Substitute for Boxing Day"]]', 'NT Public Holidays 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-nt-public-holidays', '', '', '2015-10-21 07:14:12', '2015-10-21 07:14:12', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(253, 1, '2015-10-21 07:09:06', '2015-10-21 07:09:06', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 1 Aug","Picnic Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day 25 December 2016."]]', 'NT Public Holidays 2016', '', 'publish', 'closed', 'closed', '', 'copy-of-copy-of-nt-public-holidays', '', '', '2015-10-21 07:10:26', '2015-10-21 07:10:26', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(254, 1, '2015-10-21 07:09:52', '2015-10-21 07:09:52', '[["                     2015","                    Date","                  Holiday"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Substitute for Boxing Day"]]', 'NT Public Holidays', '', 'inherit', 'closed', 'closed', '', '252-revision-v1', '', '', '2015-10-21 07:09:52', '2015-10-21 07:09:52', '', 252, 'http://teach-me-pd.dev/2015/10/252-revision-v1/', 0, 'revision', '', 0),
(255, 1, '2015-10-21 07:10:06', '2015-10-21 07:10:06', '[table id=22 /]\r\n\r\n[table id=23 /]\r\n<h2>NT Public Holidays</h2>\r\n[table id=34 /]\r\n\r\n[table id=35 /]\r\n\r\n&nbsp;', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-10-21 07:10:06', '2015-10-21 07:10:06', '', 61, 'http://teach-me-pd.dev/2015/10/61-revision-v1/', 0, 'revision', '', 0),
(256, 1, '2015-10-21 07:10:26', '2015-10-21 07:10:26', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 1 Aug","Picnic Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day 25 December 2016."]]', 'NT Public Holidays 2016', '', 'inherit', 'closed', 'closed', '', '253-revision-v1', '', '', '2015-10-21 07:10:26', '2015-10-21 07:10:26', '', 253, 'http://teach-me-pd.dev/2015/10/253-revision-v1/', 0, 'revision', '', 0),
(257, 1, '2015-10-21 07:12:53', '2015-10-21 07:12:53', '[table id=11 /]\r\n\r\n[table id=12 /]\r\n<h2>NT Public Holidays</h2>\r\n[table id=34 /]\r\n\r\n[table id=35 /]\r\n\r\n&nbsp;', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-10-21 07:12:53', '2015-10-21 07:12:53', '', 61, 'http://teach-me-pd.dev/2015/10/61-revision-v1/', 0, 'revision', '', 0),
(258, 1, '2015-10-21 07:14:12', '2015-10-21 07:14:12', '[["                     2015","                    Date","                  Holiday"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Substitute for Boxing Day"]]', 'NT Public Holidays 2015', '', 'inherit', 'closed', 'closed', '', '252-revision-v1', '', '', '2015-10-21 07:14:12', '2015-10-21 07:14:12', '', 252, 'http://teach-me-pd.dev/2015/10/252-revision-v1/', 0, 'revision', '', 0),
(259, 1, '2015-10-21 07:14:22', '2015-10-21 07:14:22', '[table id=32 /]\r\n\r\n[table id=33 /]\r\n<h2>NT Public Holidays</h2>\r\n[table id=34 /]\r\n\r\n[table id=35 /]\r\n\r\n&nbsp;', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-10-21 07:14:22', '2015-10-21 07:14:22', '', 61, 'http://teach-me-pd.dev/2015/10/61-revision-v1/', 0, 'revision', '', 0),
(260, 1, '2015-10-21 07:15:13', '2015-10-21 07:15:13', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013 Fri 3 Jul 2015","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 Thu 17 Dec 2015\\n\\nTeachers finish Friday 18 December 2015."]]', 'WA Term Dates 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-wa-term-dates', '', '', '2015-10-21 07:15:42', '2015-10-21 07:15:42', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(261, 1, '2015-10-21 07:15:30', '2015-10-21 07:15:30', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 Fri 8 Apr 2016","Tue 26 Apr 2016 \\u2013 Fri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 Fri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 Thu 15 Dec 2016"]]', 'WA Term Dates 2016', '', 'publish', 'closed', 'closed', '', 'copy-of-copy-of-wa-term-dates', '', '', '2015-10-21 07:16:03', '2015-10-21 07:16:03', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(262, 1, '2015-10-21 07:15:42', '2015-10-21 07:15:42', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013 Fri 3 Jul 2015","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 Thu 17 Dec 2015\\n\\nTeachers finish Friday 18 December 2015."]]', 'WA Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '260-revision-v1', '', '', '2015-10-21 07:15:42', '2015-10-21 07:15:42', '', 260, 'http://teach-me-pd.dev/2015/10/260-revision-v1/', 0, 'revision', '', 0),
(263, 1, '2015-10-21 07:16:03', '2015-10-21 07:16:03', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 Fri 8 Apr 2016","Tue 26 Apr 2016 \\u2013 Fri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 Fri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 Thu 15 Dec 2016"]]', 'WA Term Dates 2016', '', 'inherit', 'closed', 'closed', '', '261-revision-v1', '', '', '2015-10-21 07:16:03', '2015-10-21 07:16:03', '', 261, 'http://teach-me-pd.dev/2015/10/261-revision-v1/', 0, 'revision', '', 0),
(264, 1, '2015-10-21 07:16:29', '2015-10-21 07:16:29', '[table id=36 /]\r\n\r\n[table id=37 /]\r\n<h2>WA Public Holidays</h2>\r\n[table id=16 /]\r\n\r\n&nbsp;', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2015-10-21 07:16:29', '2015-10-21 07:16:29', '', 65, 'http://teach-me-pd.dev/2015/10/65-revision-v1/', 0, 'revision', '', 0),
(265, 1, '2015-10-21 07:17:11', '2015-10-21 07:17:11', '[["                     2015","                    Date","                  Holiday"],["","Mon 28 Sep","Queen\\u2019s Birthday Some regional areas in WA may hold the Queen\\u2019s Birthday public holiday on an different date"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Additional holiday for Boxing Day 26 December 2015"]]', 'WA Public Holidays 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-wa-public-holidays', '', '', '2015-10-21 07:17:58', '2015-10-21 07:17:58', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(266, 1, '2015-10-21 07:17:16', '2015-10-21 07:17:16', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 7 Mar","Labour Day"],["","Fri 25 Mar","Good Friday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 6 Jun","Western Australia Day"],["","Mon 26 Sep","Queen\\u2019s Birthday Some regional areas in WA may hold the Queen\\u2019s Birthday public holiday on an different date"],["","Sun 25 Dec","Christmas Day When New Year\\u2019s Day, Anzac Day, or Christmas Day falls on a Saturday or Sunday, the next following Monday is also a public holiday."],["","Mon 26 Dec","Boxing Day When Boxing Day falls on a Sunday or Monday, the next following Tuesday is also a public holiday"],["","Mon 26 Dec","Christmas Day holiday Substitute day for Christmas Day"],["","Tue 27 Dec","Boxing Day holiday Substitute day for Boxing Day"]]', 'WA Public Holidays 2016', '', 'publish', 'closed', 'closed', '', 'copy-of-copy-of-wa-public-holidays', '', '', '2015-10-21 07:19:20', '2015-10-21 07:19:20', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(267, 1, '2015-10-21 07:17:58', '2015-10-21 07:17:58', '[["                     2015","                    Date","                  Holiday"],["","Mon 28 Sep","Queen\\u2019s Birthday Some regional areas in WA may hold the Queen\\u2019s Birthday public holiday on an different date"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Additional holiday for Boxing Day 26 December 2015"]]', 'WA Public Holidays 2015', '', 'inherit', 'closed', 'closed', '', '265-revision-v1', '', '', '2015-10-21 07:17:58', '2015-10-21 07:17:58', '', 265, 'http://teach-me-pd.dev/2015/10/265-revision-v1/', 0, 'revision', '', 0),
(268, 1, '2015-10-21 07:19:20', '2015-10-21 07:19:20', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 7 Mar","Labour Day"],["","Fri 25 Mar","Good Friday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 6 Jun","Western Australia Day"],["","Mon 26 Sep","Queen\\u2019s Birthday Some regional areas in WA may hold the Queen\\u2019s Birthday public holiday on an different date"],["","Sun 25 Dec","Christmas Day When New Year\\u2019s Day, Anzac Day, or Christmas Day falls on a Saturday or Sunday, the next following Monday is also a public holiday."],["","Mon 26 Dec","Boxing Day When Boxing Day falls on a Sunday or Monday, the next following Tuesday is also a public holiday"],["","Mon 26 Dec","Christmas Day holiday Substitute day for Christmas Day"],["","Tue 27 Dec","Boxing Day holiday Substitute day for Boxing Day"]]', 'WA Public Holidays 2016', '', 'inherit', 'closed', 'closed', '', '266-revision-v1', '', '', '2015-10-21 07:19:20', '2015-10-21 07:19:20', '', 266, 'http://teach-me-pd.dev/2015/10/266-revision-v1/', 0, 'revision', '', 0),
(269, 1, '2015-10-21 07:19:42', '2015-10-21 07:19:42', '[table id=36 /]\r\n\r\n[table id=37 /]\r\n<h2>WA Public Holidays</h2>\r\n[table id=38 /]\r\n\r\n[table id=39 /]\r\n\r\n&nbsp;', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2015-10-21 07:19:42', '2015-10-21 07:19:42', '', 65, 'http://teach-me-pd.dev/2015/10/65-revision-v1/', 0, 'revision', '', 0),
(270, 1, '2015-10-21 07:24:19', '2015-10-21 07:24:19', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nTeachers commence Thursday 28 January 2016.","Tue 26 Apr 2016 \\u2013 Fri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 Fri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 Fri 16 Dec 2016"]]', 'ACT Term Dates', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2015-10-21 07:24:19', '2015-10-21 07:24:19', '', 152, 'http://teach-me-pd.dev/2015/10/152-revision-v1/', 0, 'revision', '', 0),
(271, 1, '2015-10-21 07:27:19', '2015-10-21 07:27:19', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Tue 28 Apr 2015 \\u2013 Fri 3 Jul 2015\\n\\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 Fri 18 Dec 2015"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nTeachers commence Thursday 28 January 2016.","Tue 26 Apr 2016 \\u2013 Fri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 Fri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 Fri 16 Dec 2016"]]', 'ACT Term Dates', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2015-10-21 07:27:19', '2015-10-21 07:27:19', '', 152, 'http://teach-me-pd.dev/2015/10/152-revision-v1/', 0, 'revision', '', 0),
(272, 1, '2015-10-21 07:27:44', '2015-10-21 07:27:44', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Tue 28 Apr 2015 \\u2013 Fri 3 Jul 2015\\n\\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 Fri 18 Dec 2015"]]', 'ACT Term Dates 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-act-term-dates-2', '', '', '2015-10-21 07:28:10', '2015-10-21 07:28:10', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(273, 1, '2015-10-21 07:27:51', '2015-10-21 07:27:51', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nTeachers commence Thursday 28 January 2016.","Tue 26 Apr 2016 \\u2013 Fri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 Fri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 Fri 16 Dec 2016"]]', 'ACT Term Dates 2016', '', 'publish', 'closed', 'closed', '', 'copy-of-copy-of-act-term-dates', '', '', '2015-10-21 07:28:29', '2015-10-21 07:28:29', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(274, 1, '2015-10-21 07:28:07', '2015-10-21 07:28:07', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Tue 28 Apr 2015 \\u2013 Fri 3 Jul 2015\\n\\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday","Mon 20 Jul 2015 \\u2013 Fri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 Fri 18 Dec 2015"]]', 'ACT Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2015-10-21 07:28:07', '2015-10-21 07:28:07', '', 272, 'http://teach-me-pd.dev/2015/10/272-revision-v1/', 0, 'revision', '', 0),
(275, 1, '2015-10-21 07:28:29', '2015-10-21 07:28:29', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nTeachers commence Thursday 28 January 2016.","Tue 26 Apr 2016 \\u2013 Fri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 Fri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 Fri 16 Dec 2016"]]', 'ACT Term Dates 2016', '', 'inherit', 'closed', 'closed', '', '273-revision-v1', '', '', '2015-10-21 07:28:29', '2015-10-21 07:28:29', '', 273, 'http://teach-me-pd.dev/2015/10/273-revision-v1/', 0, 'revision', '', 0),
(276, 1, '2015-10-21 07:28:53', '2015-10-21 07:28:53', '[table id=40 /]\r\n\r\n[table id=41 /]\r\n<h2>ACT Public Holiday</h2>\r\n[table id=2 /]\r\n\r\n&nbsp;', 'ACT Term dates', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-10-21 07:28:53', '2015-10-21 07:28:53', '', 50, 'http://teach-me-pd.dev/2015/10/50-revision-v1/', 0, 'revision', '', 0),
(277, 1, '2015-10-21 07:29:15', '2015-10-21 07:29:15', '[["                     2015","                    Date","                  Holiday"],["","Mon 28 Sep","Family & Community Day"],["","Mon 5 Oct","Labour Day"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Additional holiday for Boxing Day 26 December 2015"]]', 'ACT Public Holidays 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-act-public-holidays-2', '', '', '2015-10-21 07:29:59', '2015-10-21 07:29:59', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(278, 1, '2015-10-21 07:29:20', '2015-10-21 07:29:20', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 14 Mar","Canberra Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 26 Sep","Family and Community Day"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day"]]', 'ACT Public Holidays 2016', '', 'publish', 'closed', 'closed', '', 'copy-of-copy-of-act-public-holidays', '', '', '2015-10-21 07:30:29', '2015-10-21 07:30:29', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(279, 1, '2015-10-21 07:29:59', '2015-10-21 07:29:59', '[["                     2015","                    Date","                  Holiday"],["","Mon 28 Sep","Family & Community Day"],["","Mon 5 Oct","Labour Day"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday Additional holiday for Boxing Day 26 December 2015"]]', 'ACT Public Holidays 2015', '', 'inherit', 'closed', 'closed', '', '277-revision-v1', '', '', '2015-10-21 07:29:59', '2015-10-21 07:29:59', '', 277, 'http://teach-me-pd.dev/2015/10/277-revision-v1/', 0, 'revision', '', 0),
(280, 1, '2015-10-21 07:30:29', '2015-10-21 07:30:29', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Mon 14 Mar","Canberra Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 26 Sep","Family and Community Day"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Tue 27 Dec","Christmas Day holiday Substitute for Christmas Day"]]', 'ACT Public Holidays 2016', '', 'inherit', 'closed', 'closed', '', '278-revision-v1', '', '', '2015-10-21 07:30:29', '2015-10-21 07:30:29', '', 278, 'http://teach-me-pd.dev/2015/10/278-revision-v1/', 0, 'revision', '', 0),
(281, 1, '2015-10-21 07:31:05', '2015-10-21 07:31:05', '[table id=40 /]\r\n\r\n[table id=41 /]\r\n<h2>ACT Public Holiday</h2>\r\n[table id=42 /]\r\n\r\n[table id=43 /]', 'ACT Term dates', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2015-10-21 07:31:05', '2015-10-21 07:31:05', '', 50, 'http://teach-me-pd.dev/2015/10/50-revision-v1/', 0, 'revision', '', 0),
(282, 1, '2015-10-21 07:32:15', '2015-10-21 07:32:15', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013 Fri 26 Jun 2015","Mon 13 Jul 2015 \\u2013 Fri 18 Sep 2015","Tue 6 Oct 2015 \\u2013 Fri 11 Dec 2015\\n\\nYear 12 \\u2013 Friday 20 November; Year 10 & 11 \\u2013 Friday 27 November 2015."]]', 'QLD Term Dates 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-qld-term-dates', '', '', '2015-10-21 07:33:37', '2015-10-21 07:33:37', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(283, 1, '2015-10-21 07:33:14', '2015-10-21 07:33:14', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 25 Jan 2016 \\u2013 Thu 24 Mar 2016","Mon 11 Apr 2016 \\u2013 Fri 24 Jun 2016","Mon 11 Jul 2016 \\u2013 Fri 16 Sep 2016","Tue 4 Oct 2016 \\u2013 Fri 9 Dec 2016\\n\\nYear 12 \\u2013 Friday 18 November 2016; Year 10 & 11 \\u2013 Friday 25 November 2016."]]', 'QLD Term Dates 2016', '', 'publish', 'closed', 'closed', '', 'copy-of-copy-of-qld-term-dates', '', '', '2015-10-21 07:34:13', '2015-10-21 07:34:13', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(284, 1, '2015-10-21 07:33:37', '2015-10-21 07:33:37', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013 Fri 26 Jun 2015","Mon 13 Jul 2015 \\u2013 Fri 18 Sep 2015","Tue 6 Oct 2015 \\u2013 Fri 11 Dec 2015\\n\\nYear 12 \\u2013 Friday 20 November; Year 10 & 11 \\u2013 Friday 27 November 2015."]]', 'QLD Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '282-revision-v1', '', '', '2015-10-21 07:33:37', '2015-10-21 07:33:37', '', 282, 'http://teach-me-pd.dev/2015/10/282-revision-v1/', 0, 'revision', '', 0),
(285, 1, '2015-10-21 07:34:10', '2015-10-21 07:34:10', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 25 Jan 2016 \\u2013 Thu 24 Mar 2016","Mon 11 Apr 2016 \\u2013 Fri 24 Jun 2016","Mon 11 Jul 2016 \\u2013 Fri 16 Sep 2016","Tue 4 Oct 2016 \\u2013 Fri 9 Dec 2016\\n\\nYear 12 \\u2013 Friday 18 November 2016; Year 10 & 11 \\u2013 Friday 25 November 2016."]]', 'QLD Term Dates 2016', '', 'inherit', 'closed', 'closed', '', '283-revision-v1', '', '', '2015-10-21 07:34:10', '2015-10-21 07:34:10', '', 283, 'http://teach-me-pd.dev/2015/10/283-revision-v1/', 0, 'revision', '', 0),
(286, 1, '2015-10-21 07:34:38', '2015-10-21 07:34:38', '[table id=44 /]\r\n\r\n[table id=45 /]\r\n<h2>QLD Public Holidays</h2>\r\n[table id=6 /]\r\n\r\n&nbsp;', 'QLD Term dates', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2015-10-21 07:34:38', '2015-10-21 07:34:38', '', 63, 'http://teach-me-pd.dev/2015/10/63-revision-v1/', 0, 'revision', '', 0),
(287, 1, '2015-10-21 07:34:59', '2015-10-21 07:34:59', '[["                     2015","                    Date","                  Holiday"],["","Mon 5 Oct","Labour Day"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend."]]', 'QLD Public Holidays 2015', '', 'publish', 'closed', 'closed', '', 'copy-of-qld-public-holidays', '', '', '2015-10-21 07:37:19', '2015-10-21 07:37:19', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(288, 1, '2015-10-21 07:35:12', '2015-10-21 07:35:12', '[["                     2015","                    Date","                  Holiday"],["","Mon 5 Oct","Labour Day"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend."],["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Sun 25 Dec","Christmas Day"],["","Tue 27 Dec","Christmas Day holiday An additional public holiday to be added when New Year\\u2019s Day, Christmas Day or Boxing Day falls on a weekend."]]', 'QLD Public Holidays 2015', '', 'inherit', 'closed', 'closed', '', '287-revision-v1', '', '', '2015-10-21 07:35:12', '2015-10-21 07:35:12', '', 287, 'http://teach-me-pd.dev/2015/10/287-revision-v1/', 0, 'revision', '', 0),
(289, 1, '2015-10-21 07:35:20', '2015-10-21 07:35:20', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Sun 25 Dec","Christmas Day"],["","Tue 27 Dec","Christmas Day holiday An additional public holiday to be added when New Year\\u2019s Day, Christmas Day or Boxing Day falls on a weekend."]]', 'QLD Public Holidays 2016', '', 'publish', 'closed', 'closed', '', 'copy-of-qld-public-holidays-2015', '', '', '2015-10-21 07:35:44', '2015-10-21 07:35:44', '', 0, 'http://teach-me-pd.dev/', 0, 'tablepress_table', 'application/json', 0),
(290, 1, '2015-10-21 07:35:44', '2015-10-21 07:35:44', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Sun 25 Dec","Christmas Day"],["","Tue 27 Dec","Christmas Day holiday An additional public holiday to be added when New Year\\u2019s Day, Christmas Day or Boxing Day falls on a weekend."]]', 'QLD Public Holidays 2016', '', 'inherit', 'closed', 'closed', '', '289-revision-v1', '', '', '2015-10-21 07:35:44', '2015-10-21 07:35:44', '', 289, 'http://teach-me-pd.dev/2015/10/289-revision-v1/', 0, 'revision', '', 0),
(291, 1, '2015-10-21 07:36:26', '2015-10-21 07:36:26', '[["                     2016","                    Date","                  Holiday"],["","Fri 1 Jan","New Year\\u2019s Day"],["","Tue 26 Jan","Australia Day"],["","Fri 25 Mar","Good Friday"],["","Sat 26 Mar","Easter Saturday"],["","Mon 28 Mar","Easter Monday"],["","Mon 25 Apr","Anzac Day"],["","Mon 13 Jun","Queen\\u2019s Birthday"],["","Mon 3 Oct","Labour Day"],["","Sun 25 Dec","Christmas Day"],["","Mon 26 Dec","Boxing Day"],["","Sun 25 Dec","Christmas Day"],["","Tue 27 Dec","Christmas Day holiday An additional public holiday to be added when New Year\\u2019s Day, Christmas Day or Boxing Day falls on a weekend."]]', 'QLD Public Holidays 2015', '', 'inherit', 'closed', 'closed', '', '287-revision-v1', '', '', '2015-10-21 07:36:26', '2015-10-21 07:36:26', '', 287, 'http://teach-me-pd.dev/2015/10/287-revision-v1/', 0, 'revision', '', 0),
(292, 1, '2015-10-21 07:37:19', '2015-10-21 07:37:19', '[["                     2015","                    Date","                  Holiday"],["","Mon 5 Oct","Labour Day"],["","Fri 25 Dec","Christmas Day"],["","Sat 26 Dec","Boxing Day"],["","Mon 28 Dec","Boxing Day holiday The Holiday Act provides for an extra public holiday to be added when Christmas Day or Boxing Day falls on a weekend."]]', 'QLD Public Holidays 2015', '', 'inherit', 'closed', 'closed', '', '287-revision-v1', '', '', '2015-10-21 07:37:19', '2015-10-21 07:37:19', '', 287, 'http://teach-me-pd.dev/2015/10/287-revision-v1/', 0, 'revision', '', 0),
(293, 1, '2015-10-21 07:37:35', '2015-10-21 07:37:35', '[table id=44 /]\r\n\r\n[table id=45 /]\r\n<h2>QLD Public Holidays</h2>\r\n[table id=46 /]\r\n\r\n[table id=47 /]\r\n\r\n&nbsp;', 'QLD Term dates', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2015-10-21 07:37:35', '2015-10-21 07:37:35', '', 63, 'http://teach-me-pd.dev/2015/10/63-revision-v1/', 0, 'revision', '', 0),
(294, 1, '2015-10-22 02:18:24', '2015-10-22 02:18:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2015-10-22 23:27:20', '2015-10-22 23:27:20', '', 0, 'http://teach-me-pd.dev/?p=294', 1, 'nav_menu_item', '', 0),
(295, 1, '2015-10-22 02:20:18', '2015-10-22 02:20:18', ' ', '', '', 'publish', 'closed', 'closed', '', '295', '', '', '2015-10-30 09:51:30', '2015-10-30 09:51:30', '', 0, 'http://teach-me-pd.dev/?p=295', 1, 'nav_menu_item', '', 0),
(296, 1, '2015-10-22 02:20:18', '2015-10-22 02:20:18', ' ', '', '', 'publish', 'closed', 'closed', '', '296', '', '', '2015-10-30 09:51:30', '2015-10-30 09:51:30', '', 0, 'http://teach-me-pd.dev/?p=296', 2, 'nav_menu_item', '', 0),
(297, 1, '2015-10-22 02:20:18', '2015-10-22 02:20:18', ' ', '', '', 'publish', 'closed', 'closed', '', '297', '', '', '2015-10-30 09:51:30', '2015-10-30 09:51:30', '', 0, 'http://teach-me-pd.dev/?p=297', 3, 'nav_menu_item', '', 0),
(298, 1, '2015-10-22 02:20:18', '2015-10-22 02:20:18', ' ', '', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2015-10-30 09:51:30', '2015-10-30 09:51:30', '', 0, 'http://teach-me-pd.dev/?p=298', 4, 'nav_menu_item', '', 0),
(301, 1, '2015-10-28 06:00:25', '2015-10-28 06:00:25', '[wp-members page=register]\r\n\r\n[teacher_registration_form]', 'Register', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-28 06:00:25', '2015-10-28 06:00:25', '', 10, 'http://teach-me-pd.dev/2015/10/10-revision-v1/', 0, 'revision', '', 0),
(302, 1, '2015-10-28 06:20:14', '2015-10-28 06:20:14', '[teacher_registration_form]', 'Register', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-28 06:20:14', '2015-10-28 06:20:14', '', 10, 'http://teach-me-pd.dev/2015/10/10-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(304, 1, '2015-10-29 01:27:10', '2015-10-29 01:27:10', '', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2015-10-29 01:27:10', '2015-10-29 01:27:10', '', 143, 'http://teach-me-pd.dev/2015/10/143-revision-v1/', 0, 'revision', '', 0),
(307, 1, '2015-10-29 06:57:21', '2015-10-29 06:57:21', ' ', '', '', 'publish', 'closed', 'closed', '', '307', '', '', '2015-10-29 06:57:21', '2015-10-29 06:57:21', '', 0, 'http://teach-me-pd.dev/?p=307', 2, 'nav_menu_item', '', 0),
(308, 1, '2015-10-29 06:57:21', '2015-10-29 06:57:21', ' ', '', '', 'publish', 'closed', 'closed', '', '308', '', '', '2015-10-29 06:57:21', '2015-10-29 06:57:21', '', 0, 'http://teach-me-pd.dev/?p=308', 1, 'nav_menu_item', '', 0),
(309, 1, '2015-10-29 06:58:05', '2015-10-29 06:58:05', '', 'IMG_3222', '', 'inherit', 'open', 'closed', '', 'img_3222', '', '', '2015-10-29 06:58:05', '2015-10-29 06:58:05', '', 0, 'http://teach-me-pd.dev//app/uploads/2015/10/IMG_3222.jpg', 0, 'attachment', 'image/jpeg', 0),
(310, 1, '2015-10-29 06:58:08', '2015-10-29 06:58:08', '', 'Twitter', '', 'inherit', 'open', 'closed', '', 'twitter', '', '', '2015-10-29 06:58:08', '2015-10-29 06:58:08', '', 0, 'http://teach-me-pd.dev//app/uploads/2015/10/Twitter.jpg', 0, 'attachment', 'image/jpeg', 0),
(311, 1, '2015-10-29 06:58:19', '2015-10-29 06:58:19', '', 'AE_Logo_Round_large', '', 'inherit', 'open', 'closed', '', 'ae_logo_round_large', '', '', '2015-10-29 06:58:19', '2015-10-29 06:58:19', '', 0, 'http://teach-me-pd.dev//app/uploads/2015/10/AE_Logo_Round_large.png', 0, 'attachment', 'image/png', 0),
(313, 15, '2015-10-29 08:19:37', '2015-10-29 08:19:37', 'Big Write and VCOP is designed to bring the fun back into writing, to make the children want to write and to be continuously challenged throughout the writing journey. Through games, activities, writing tasks, conversations and discussions, students will learn not only where their abilities lie in a fun and engaging way, but also the steps they need to take, in order to continue to improve.\r\n\r\n<br>\r\n\r\nBig Write and VCOP is a methodology for raising the standards in writing across all ages and ability levels throughout Australasia. It seeks to address the reasons why there are falling standards in writing. Based on the premise that ‘if they can’t say it, they can’t write it’, we scaffold the learning to allow children to become articulate thinkers and speakers, who will then become articulate writers. It is a differentiated approach suitable for pre-writers, all the way through secondary school. Underpinning the progress the students will achieve is the \'back to basics\' approach of teaching the building blocks of writing through the use of the GHaSP method.\r\n\r\n<br>\r\n\r\nBig Write comes with a comprehensive, evidence-based assessment tool (linked to the Australian National Curriculum), that develops consistency and accuracy of writing assessment right across your school. The Student Friendly Criterion Scale empowers the children by allowing them to analyse where their skill set lies, and specifically what steps they need to take in order to move forward.\r\n\r\n<h4 class="text-center" style="font-weight: bold;"><em>Presented BY teachers, FOR teachers.</em></h4>', 'Andrell Education', '', 'publish', 'closed', 'closed', '', 'andrell-education', '', '', '2015-10-29 08:22:03', '2015-10-29 08:22:03', '', 0, 'http://teach-me-pd.dev/provider/andrell-education/', 0, 'tribe_provider', '', 0),
(314, 1, '2015-10-30 00:25:47', '2015-10-30 00:25:47', '', 'Order &ndash; October 30, 2015 @ 12:25 AM', '', 'wc-on-hold', 'open', 'closed', 'order_5632b90b9eb3d', 'order-oct-30-2015-1225-am', '', '', '2015-10-30 00:25:47', '2015-10-30 00:25:47', '', 0, 'http://teach-me-pd.dev/', 0, 'shop_order', '', 2),
(316, 1, '2015-10-30 00:31:26', '2015-10-30 00:31:26', '', 'Frankston Day 1', 'Day 1 - Introduction to Big Write &amp; VCOP - Frankston Day 1 open session', 'publish', 'open', 'closed', '', 'frankston-day-1-2', '', '', '2015-10-30 00:31:26', '2015-10-30 00:31:26', '', 0, 'http://teach-me-pd.dev/product/frankston-day-1-2/', 0, 'product', '', 0),
(317, 1, '2015-10-30 00:32:18', '2015-10-30 00:32:18', '', 'Order &ndash; October 30, 2015 @ 12:32 AM', '', 'wc-completed', 'open', 'closed', 'order_5632ba927d468', 'order-oct-30-2015-1232-am', '', '', '2015-10-30 00:38:50', '2015-10-30 00:38:50', '', 0, 'http://teach-me-pd.dev/', 0, 'shop_order', '', 2),
(318, 1, '2015-10-30 00:38:50', '2015-10-30 00:38:50', '', '317 | Frankston Day 1 | 1', '', 'publish', 'closed', 'closed', '', '317-frankston-day-1-1', '', '', '2015-10-30 00:38:50', '2015-10-30 00:38:50', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_wooticket', '', 0),
(319, 1, '2015-10-30 00:58:43', '2015-10-30 00:58:43', '', 'banner-providers', '', 'inherit', 'open', 'closed', '', 'banner-providers', '', '', '2015-10-31 05:30:44', '2015-10-31 05:30:44', '', 0, 'http://teach-me-pd.dev//app/uploads/2015/10/banner-providers.jpg', 0, 'attachment', 'image/jpeg', 0),
(320, 1, '2015-09-07 01:10:51', '2015-09-07 01:10:51', 'We\'d like to welcome our first provider on board, Andrell Education who run the Big Write and VCOP writing program. Head over to their FB to find out more www.facebook.com./andrelleducation\r\nBig Write and VCOP is designed to bring the fun back into writing, to make the children want to write and to be continuously challenged throughout the writing journey. Through games, activities, writing tasks, conversations and discussions, students will learn not only where their abilities lie in a fun and engaging way, but also the steps they need to take, in order to continue to improve.\r\nBig Write and VCOP is a methodology for raising the standards in writing across all ages and ability levels throughout Australasia. It seeks to address the reasons why there are falling standards in writing. Based on the premise that ‘if they can’t say it, they can’t write it’, we scaffold the learning to allow children to become articulate thinkers and speakers, who will then become articulate writers. It is a differentiated approach suitable for pre-writers, all the way through secondary school. Underpinning the progress the students will achieve is the \'back to basics\' approach of teaching the building blocks of writing through the use of the GHaSP method.\r\nBig Write comes with a comprehensive, evidence-based assessment tool (linked to the Australian National Curriculum), that develops consistency and accuracy of writing assessment right across your school. The Student Friendly Criterion Scale empowers the children by allowing them to analyse where their skill set lies, and specifically what steps they need to take in order to move forward.\r\n', 'Andrell Education is our first provider on board', 'We\'d like to welcome our first provider on board, Andrell Education who run the Big Write and VCOP writing program. Head over to their FB to find out more www.facebook.com./andrelleducation\r\nBig Write and VCOP is designed to bring the fun back into writing, to make the children want to write and to be continuously challenged throughout the writing journey. ', 'publish', 'open', 'open', '', 'andrell-education-is-our-first-provider-on-board', '', '', '2015-10-30 01:12:54', '2015-10-30 01:12:54', '', 0, 'http://teach-me-pd.dev/?p=320', 0, 'post', '', 0),
(321, 1, '2015-10-30 01:11:54', '2015-10-30 01:11:54', 'We\'d like to welcome our first provider on board, Andrell Education who run the Big Write and VCOP writing program. Head over to their FB to find out more www.facebook.com./andrelleducation\r\nBig Write and VCOP is designed to bring the fun back into writing, to make the children want to write and to be continuously challenged throughout the writing journey. Through games, activities, writing tasks, conversations and discussions, students will learn not only where their abilities lie in a fun and engaging way, but also the steps they need to take, in order to continue to improve.\r\nBig Write and VCOP is a methodology for raising the standards in writing across all ages and ability levels throughout Australasia. It seeks to address the reasons why there are falling standards in writing. Based on the premise that ‘if they can’t say it, they can’t write it’, we scaffold the learning to allow children to become articulate thinkers and speakers, who will then become articulate writers. It is a differentiated approach suitable for pre-writers, all the way through secondary school. Underpinning the progress the students will achieve is the \'back to basics\' approach of teaching the building blocks of writing through the use of the GHaSP method.\r\nBig Write comes with a comprehensive, evidence-based assessment tool (linked to the Australian National Curriculum), that develops consistency and accuracy of writing assessment right across your school. The Student Friendly Criterion Scale empowers the children by allowing them to analyse where their skill set lies, and specifically what steps they need to take in order to move forward.\r\n', 'Andrell Education is our first provider on board', '', 'inherit', 'closed', 'closed', '', '320-revision-v1', '', '', '2015-10-30 01:11:54', '2015-10-30 01:11:54', '', 320, 'http://teach-me-pd.dev/2015/10/320-revision-v1/', 0, 'revision', '', 0),
(322, 1, '2015-10-30 01:12:54', '2015-10-30 01:12:54', 'We\'d like to welcome our first provider on board, Andrell Education who run the Big Write and VCOP writing program. Head over to their FB to find out more www.facebook.com./andrelleducation\r\nBig Write and VCOP is designed to bring the fun back into writing, to make the children want to write and to be continuously challenged throughout the writing journey. Through games, activities, writing tasks, conversations and discussions, students will learn not only where their abilities lie in a fun and engaging way, but also the steps they need to take, in order to continue to improve.\r\nBig Write and VCOP is a methodology for raising the standards in writing across all ages and ability levels throughout Australasia. It seeks to address the reasons why there are falling standards in writing. Based on the premise that ‘if they can’t say it, they can’t write it’, we scaffold the learning to allow children to become articulate thinkers and speakers, who will then become articulate writers. It is a differentiated approach suitable for pre-writers, all the way through secondary school. Underpinning the progress the students will achieve is the \'back to basics\' approach of teaching the building blocks of writing through the use of the GHaSP method.\r\nBig Write comes with a comprehensive, evidence-based assessment tool (linked to the Australian National Curriculum), that develops consistency and accuracy of writing assessment right across your school. The Student Friendly Criterion Scale empowers the children by allowing them to analyse where their skill set lies, and specifically what steps they need to take in order to move forward.\r\n', 'Andrell Education is our first provider on board', 'We\'d like to welcome our first provider on board, Andrell Education who run the Big Write and VCOP writing program. Head over to their FB to find out more www.facebook.com./andrelleducation\r\nBig Write and VCOP is designed to bring the fun back into writing, to make the children want to write and to be continuously challenged throughout the writing journey. ', 'inherit', 'closed', 'closed', '', '320-revision-v1', '', '', '2015-10-30 01:12:54', '2015-10-30 01:12:54', '', 320, 'http://teach-me-pd.dev/2015/10/320-revision-v1/', 0, 'revision', '', 0),
(323, 1, '2015-09-29 01:19:14', '2015-09-29 01:19:14', 'Oh I like this! Kids love repetition, rhythm and rhyme. \r\nNot only are we teaching letter/number formation, find motor development and reading, but following directions, sequencing, and rhyming words. \r\nI\'m taking this concept and rolling with it for older students... I\'m thinking we\'ll try a Noun Rap!! Stay tuned.\r\nWhat will you do? \r\n#teachme_pd #aussieteacher #learnthroughplay Teaching and Learning in South Australia\r\n', 'Number Formation Rhymes', 'Oh I like this! Kids love repetition, rhythm and rhyme. Not only are we teaching letter/number formation, find motor development and reading', 'publish', 'open', 'open', '', 'number-formation-rhymes', '', '', '2015-10-30 07:23:17', '2015-10-30 07:23:17', '', 0, 'http://teach-me-pd.dev/?p=323', 0, 'post', '', 0),
(324, 1, '2015-10-30 01:20:15', '2015-10-30 01:20:15', 'Oh I like this! Kids love repetition, rhythm and rhyme. \r\nNot only are we teaching letter/number formation, find motor development and reading, but following directions, sequencing, and rhyming words. \r\nI\'m taking this concept and rolling with it for older students... I\'m thinking we\'ll try a Noun Rap!! Stay tuned.\r\nWhat will you do? \r\n#teachme_pd #aussieteacher #learnthroughplay Teaching and Learning in South Australia\r\n', 'Number Formation Rhymes', '', 'inherit', 'closed', 'closed', '', '323-revision-v1', '', '', '2015-10-30 01:20:15', '2015-10-30 01:20:15', '', 323, 'http://teach-me-pd.dev/2015/10/323-revision-v1/', 0, 'revision', '', 0),
(325, 1, '2015-10-30 01:21:49', '2015-10-30 01:21:49', '', 'Number-Formation-Rhymes-Pin', '', 'inherit', 'open', 'closed', '', 'number-formation-rhymes-pin', '', '', '2015-10-30 01:21:49', '2015-10-30 01:21:49', '', 0, 'http://teach-me-pd.dev//app/uploads/2015/10/Number-Formation-Rhymes-Pin.jpg', 0, 'attachment', 'image/jpeg', 0),
(326, 1, '2015-09-30 01:28:02', '2015-09-30 01:28:02', 'To continue your PD on handwriting, yesterday was number formation rhymes, today I found this on Andrell\'s page for Happy Handwriting.\r\n\r\nWhat can you add?\r\n\r\nhttps://www.facebook.com/AndrellEducation/posts/904907212891497', 'Andrell\'s page for Happy Handwriting', 'To continue your PD on handwriting, yesterday was number formation rhymes, today I found this on Andrell\'s page for Happy Handwriting.', 'publish', 'open', 'open', '', 'andrells-page-for-happy-handwriting', '', '', '2015-10-30 06:31:04', '2015-10-30 06:31:04', '', 0, 'http://teach-me-pd.dev/?p=326', 0, 'post', '', 0),
(327, 1, '2015-10-30 01:28:55', '2015-10-30 01:28:55', 'To continue your PD on handwriting, yesterday was number formation rhymes, today I found this on Andrell\'s page for Happy Handwriting.\r\nWhat can you add?\r\nhttps://www.facebook.com/AndrellEducation/posts/904907212891497\r\n', 'Andrell\'s page for Happy Handwriting', '', 'inherit', 'closed', 'closed', '', '326-revision-v1', '', '', '2015-10-30 01:28:55', '2015-10-30 01:28:55', '', 326, 'http://teach-me-pd.dev/2015/10/326-revision-v1/', 0, 'revision', '', 0),
(328, 1, '2015-10-21 01:28:59', '2015-10-21 01:28:59', 'Geography PD today- discover the size of different countries using this easy to use tool. \r\n\r\nWhat activities would you do?\r\n\r\nwww.thetruesize.com\r\n', 'Geography PD today', '', 'publish', 'open', 'open', '', 'geography-pd-today', '', '', '2015-10-30 06:20:27', '2015-10-30 06:20:27', '', 0, 'http://teach-me-pd.dev/?p=328', 0, 'post', '', 0),
(329, 1, '2015-10-30 01:29:30', '2015-10-30 01:29:30', 'Geography PD today- discover the size of different countries using this easy to use tool. \r\nWhat activities would you do?\r\nwww.thetruesize.com\r\n', 'Geography PD today', '', 'inherit', 'closed', 'closed', '', '328-revision-v1', '', '', '2015-10-30 01:29:30', '2015-10-30 01:29:30', '', 328, 'http://teach-me-pd.dev/2015/10/328-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(330, 1, '2015-09-28 08:29:51', '2015-09-28 08:29:51', 'Professional Development can be defined as \'activities that develop an individual\'s skills, knowledge, expertise and other characteristics as a teacher\' (OECD, 2009, p.49) Therefore, scrolling your Facebook newsfeed, Pinterest, twitter or Instagram should be logged as PD should it not? haha \r\nWell here\'s a few minutes of free PD, you may not be able to log it, but hopefully it sparks a few ideas to stimulate your class.\r\nWhat activities does this picture inspire for you?\r\nFor me, immediately I think I can easily link it in to Social and Well-being, Interpersonal development and Grammar.  \r\n \r\nWe\'ll discuss idioms; looking for them through literacy inquiry, listen out for them in speech and have a go at using them in our writing. We\'ll link in to Big Write and VCOP here (www.facebook.com/andrelleducation) discussing how idioms would come under V-Vocabulary for figurative language.\r\n \r\nSo I\'m thinking we\'ll discuss making judgments about people, or people making judgments about them. We might look at stereotypes and what that means. Depending on the age of my students, we might run a practical social experiment. If I had high school students, we might look at how they might be judged on their age, or dress when they attend a job interview and actually send them off for interviews. What about sending a group into town, split up as a homeless teen group, a wealthy, well dressed female group and maybe a group of skaters. They might have to do something like ask strangers for directions and see the reactions. I might use the topic/idiom \'Walking in someone else\'s shoes\' and ask them to write about their experience. Here i can link in text types either by free choice (Report on experience, recount what happened, Explanation of why you think it happened, Narrative- open ended).  \r\n \r\nIn a Primary school setting, I\'m thinking I\'ll send a note home to parents or have teacher-student \'get to know you\' interviews I\'d ask them for 5 interesting things about themselves/their children that people might not know (hobbies, family, travel, talents, a fear, a celebration etc). \r\nAsk them to send in a photo that captures a special moment and write a short note about what the moment is. \r\nI\'d then frame and wrap all the pictures in brown paper and put the 5 facts on the front. Everyone has to get one (not their own one, if they know). Read out, try and guess, unwrap and read their special moment story.      \r\nYou could bring in speaking and listening and ask for a speech. Maybe this is part of their graduation reflecting on their school experience, maybe a Mother\'s Day/Father\'s Day present.\r\n \r\nThe possibilities are endless... all from seeing a picture on my Facebook feed. So, what do you see? What comes to your creative mind?\r\nComment and Share, after all the best PD\'s are viral!\r\n #bigwrite_vcop #teachme_pd #professionaldevelopment\r\n', 'Professional Development', 'Professional Development can be defined as \'activities that develop an individual\'s skills, knowledge, expertise and other characteristics as a teacher\' (OECD, 2009, p.49)', 'publish', 'open', 'open', '', 'professional-development', '', '', '2015-10-30 01:56:20', '2015-10-30 01:56:20', '', 0, 'http://teach-me-pd.dev/?p=330', 0, 'post', '', 0),
(331, 1, '2015-10-30 01:30:59', '2015-10-30 01:30:59', 'Professional Development can be defined as \'activities that develop an individual\'s skills, knowledge, expertise and other characteristics as a teacher\' (OECD, 2009, p.49) Therefore, scrolling your Facebook newsfeed, Pinterest, twitter or Instagram should be logged as PD should it not? haha \r\nWell here\'s a few minutes of free PD, you may not be able to log it, but hopefully it sparks a few ideas to stimulate your class.\r\nWhat activities does this picture inspire for you?\r\nFor me, immediately I think I can easily link it in to Social and Well-being, Interpersonal development and Grammar.  \r\n \r\nWe\'ll discuss idioms; looking for them through literacy inquiry, listen out for them in speech and have a go at using them in our writing. We\'ll link in to Big Write and VCOP here (www.facebook.com/andrelleducation) discussing how idioms would come under V-Vocabulary for figurative language.\r\n \r\nSo I\'m thinking we\'ll discuss making judgments about people, or people making judgments about them. We might look at stereotypes and what that means. Depending on the age of my students, we might run a practical social experiment. If I had high school students, we might look at how they might be judged on their age, or dress when they attend a job interview and actually send them off for interviews. What about sending a group into town, split up as a homeless teen group, a wealthy, well dressed female group and maybe a group of skaters. They might have to do something like ask strangers for directions and see the reactions. I might use the topic/idiom \'Walking in someone else\'s shoes\' and ask them to write about their experience. Here i can link in text types either by free choice (Report on experience, recount what happened, Explanation of why you think it happened, Narrative- open ended).  \r\n \r\nIn a Primary school setting, I\'m thinking I\'ll send a note home to parents or have teacher-student \'get to know you\' interviews I\'d ask them for 5 interesting things about themselves/their children that people might not know (hobbies, family, travel, talents, a fear, a celebration etc). \r\nAsk them to send in a photo that captures a special moment and write a short note about what the moment is. \r\nI\'d then frame and wrap all the pictures in brown paper and put the 5 facts on the front. Everyone has to get one (not their own one, if they know). Read out, try and guess, unwrap and read their special moment story.      \r\nYou could bring in speaking and listening and ask for a speech. Maybe this is part of their graduation reflecting on their school experience, maybe a Mother\'s Day/Father\'s Day present.\r\n \r\nThe possibilities are endless... all from seeing a picture on my Facebook feed. So, what do you see? What comes to your creative mind?\r\nComment and Share, after all the best PD\'s are viral!\r\n #bigwrite_vcop #teachme_pd #professionaldevelopment\r\n', 'Professional Development', '', 'inherit', 'closed', 'closed', '', '330-revision-v1', '', '', '2015-10-30 01:30:59', '2015-10-30 01:30:59', '', 330, 'http://teach-me-pd.dev/2015/10/330-revision-v1/', 0, 'revision', '', 0),
(332, 1, '2015-10-30 01:32:03', '2015-10-30 01:32:03', '', 'blind-date-with-a-book', '', 'inherit', 'open', 'closed', '', 'blind-date-with-a-book', '', '', '2015-10-30 01:32:03', '2015-10-30 01:32:03', '', 330, 'http://teach-me-pd.dev//app/uploads/2015/09/blind-date-with-a-book.jpeg', 0, 'attachment', 'image/jpeg', 0),
(333, 1, '2015-10-30 01:53:27', '2015-10-30 01:53:27', 'Professional Development can be defined as \'activities that develop an individual\'s skills, knowledge, expertise and other characteristics as a teacher\' (OECD, 2009, p.49) Therefore, scrolling your Facebook newsfeed, Pinterest, twitter or Instagram should be logged as PD should it not? haha \r\nWell here\'s a few minutes of free PD, you may not be able to log it, but hopefully it sparks a few ideas to stimulate your class.\r\nWhat activities does this picture inspire for you?\r\nFor me, immediately I think I can easily link it in to Social and Well-being, Interpersonal development and Grammar.  \r\n \r\nWe\'ll discuss idioms; looking for them through literacy inquiry, listen out for them in speech and have a go at using them in our writing. We\'ll link in to Big Write and VCOP here (www.facebook.com/andrelleducation) discussing how idioms would come under V-Vocabulary for figurative language.\r\n \r\nSo I\'m thinking we\'ll discuss making judgments about people, or people making judgments about them. We might look at stereotypes and what that means. Depending on the age of my students, we might run a practical social experiment. If I had high school students, we might look at how they might be judged on their age, or dress when they attend a job interview and actually send them off for interviews. What about sending a group into town, split up as a homeless teen group, a wealthy, well dressed female group and maybe a group of skaters. They might have to do something like ask strangers for directions and see the reactions. I might use the topic/idiom \'Walking in someone else\'s shoes\' and ask them to write about their experience. Here i can link in text types either by free choice (Report on experience, recount what happened, Explanation of why you think it happened, Narrative- open ended).  \r\n \r\nIn a Primary school setting, I\'m thinking I\'ll send a note home to parents or have teacher-student \'get to know you\' interviews I\'d ask them for 5 interesting things about themselves/their children that people might not know (hobbies, family, travel, talents, a fear, a celebration etc). \r\nAsk them to send in a photo that captures a special moment and write a short note about what the moment is. \r\nI\'d then frame and wrap all the pictures in brown paper and put the 5 facts on the front. Everyone has to get one (not their own one, if they know). Read out, try and guess, unwrap and read their special moment story.      \r\nYou could bring in speaking and listening and ask for a speech. Maybe this is part of their graduation reflecting on their school experience, maybe a Mother\'s Day/Father\'s Day present.\r\n \r\nThe possibilities are endless... all from seeing a picture on my Facebook feed. So, what do you see? What comes to your creative mind?\r\nComment and Share, after all the best PD\'s are viral!\r\n #bigwrite_vcop #teachme_pd #professionaldevelopment\r\n', 'Professional Development', 'Professional Development can be defined as \'activities that develop an individual\'s skills, knowledge, expertise and other characteristics as a teacher\' (OECD, 2009, p.49) Therefore, scrolling your Facebook newsfeed, Pinterest, twitter or Instagram should be logged as PD should it not? haha \r\nWell here\'s a few minutes of free PD, you may not be able to log it, but hopefully it sparks a few ideas to stimulate your class.\r\nWhat activities does this picture inspire for you?\r\nFor me, immediately I think I can easily link it in to Social and Well-being, Interpersonal development and Grammar.  ', 'inherit', 'closed', 'closed', '', '330-revision-v1', '', '', '2015-10-30 01:53:27', '2015-10-30 01:53:27', '', 330, 'http://teach-me-pd.dev/2015/10/330-revision-v1/', 0, 'revision', '', 0),
(334, 1, '2015-10-30 01:55:08', '2015-10-30 01:55:08', 'To continue your PD on handwriting, yesterday was number formation rhymes, today I found this on Andrell\'s page for Happy Handwriting.\r\nWhat can you add?\r\nhttps://www.facebook.com/AndrellEducation/posts/904907212891497', 'Andrell\'s page for Happy Handwriting', 'To continue your PD on handwriting, yesterday was number formation rhymes, today I found this on Andrell\'s page for Happy Handwriting.', 'inherit', 'closed', 'closed', '', '326-revision-v1', '', '', '2015-10-30 01:55:08', '2015-10-30 01:55:08', '', 326, 'http://teach-me-pd.dev/2015/10/326-revision-v1/', 0, 'revision', '', 0),
(335, 1, '2015-10-30 01:55:45', '2015-10-30 01:55:45', 'Professional Development can be defined as \'activities that develop an individual\'s skills, knowledge, expertise and other characteristics as a teacher\' (OECD, 2009, p.49) Therefore, scrolling your Facebook newsfeed, Pinterest, twitter or Instagram should be logged as PD should it not? haha \nWell here\'s a few minutes of free PD, you may not be able to log it, but hopefully it sparks a few ideas to stimulate your class.\nWhat activities does this picture inspire for you?\nFor me, immediately I think I can easily link it in to Social and Well-being, Interpersonal development and Grammar.  \n \nWe\'ll discuss idioms; looking for them through literacy inquiry, listen out for them in speech and have a go at using them in our writing. We\'ll link in to Big Write and VCOP here (www.facebook.com/andrelleducation) discussing how idioms would come under V-Vocabulary for figurative language.\n \nSo I\'m thinking we\'ll discuss making judgments about people, or people making judgments about them. We might look at stereotypes and what that means. Depending on the age of my students, we might run a practical social experiment. If I had high school students, we might look at how they might be judged on their age, or dress when they attend a job interview and actually send them off for interviews. What about sending a group into town, split up as a homeless teen group, a wealthy, well dressed female group and maybe a group of skaters. They might have to do something like ask strangers for directions and see the reactions. I might use the topic/idiom \'Walking in someone else\'s shoes\' and ask them to write about their experience. Here i can link in text types either by free choice (Report on experience, recount what happened, Explanation of why you think it happened, Narrative- open ended).  \n \nIn a Primary school setting, I\'m thinking I\'ll send a note home to parents or have teacher-student \'get to know you\' interviews I\'d ask them for 5 interesting things about themselves/their children that people might not know (hobbies, family, travel, talents, a fear, a celebration etc). \nAsk them to send in a photo that captures a special moment and write a short note about what the moment is. \nI\'d then frame and wrap all the pictures in brown paper and put the 5 facts on the front. Everyone has to get one (not their own one, if they know). Read out, try and guess, unwrap and read their special moment story.      \nYou could bring in speaking and listening and ask for a speech. Maybe this is part of their graduation reflecting on their school experience, maybe a Mother\'s Day/Father\'s Day present.\n \nThe possibilities are endless... all from seeing a picture on my Facebook feed. So, what do you see? What comes to your creative mind?\nComment and Share, after all the best PD\'s are viral!\n #bigwrite_vcop #teachme_pd #professionaldevelopment\n', 'Professional Development', 'To continue your PD on handwriting, yesterday was number formation rhymes, today I found this on Andrell\'s page for Happy Handwriting.', 'inherit', 'closed', 'closed', '', '330-autosave-v1', '', '', '2015-10-30 01:55:45', '2015-10-30 01:55:45', '', 330, 'http://teach-me-pd.dev/2015/10/330-autosave-v1/', 0, 'revision', '', 0),
(336, 1, '2015-10-30 01:56:20', '2015-10-30 01:56:20', 'Professional Development can be defined as \'activities that develop an individual\'s skills, knowledge, expertise and other characteristics as a teacher\' (OECD, 2009, p.49) Therefore, scrolling your Facebook newsfeed, Pinterest, twitter or Instagram should be logged as PD should it not? haha \r\nWell here\'s a few minutes of free PD, you may not be able to log it, but hopefully it sparks a few ideas to stimulate your class.\r\nWhat activities does this picture inspire for you?\r\nFor me, immediately I think I can easily link it in to Social and Well-being, Interpersonal development and Grammar.  \r\n \r\nWe\'ll discuss idioms; looking for them through literacy inquiry, listen out for them in speech and have a go at using them in our writing. We\'ll link in to Big Write and VCOP here (www.facebook.com/andrelleducation) discussing how idioms would come under V-Vocabulary for figurative language.\r\n \r\nSo I\'m thinking we\'ll discuss making judgments about people, or people making judgments about them. We might look at stereotypes and what that means. Depending on the age of my students, we might run a practical social experiment. If I had high school students, we might look at how they might be judged on their age, or dress when they attend a job interview and actually send them off for interviews. What about sending a group into town, split up as a homeless teen group, a wealthy, well dressed female group and maybe a group of skaters. They might have to do something like ask strangers for directions and see the reactions. I might use the topic/idiom \'Walking in someone else\'s shoes\' and ask them to write about their experience. Here i can link in text types either by free choice (Report on experience, recount what happened, Explanation of why you think it happened, Narrative- open ended).  \r\n \r\nIn a Primary school setting, I\'m thinking I\'ll send a note home to parents or have teacher-student \'get to know you\' interviews I\'d ask them for 5 interesting things about themselves/their children that people might not know (hobbies, family, travel, talents, a fear, a celebration etc). \r\nAsk them to send in a photo that captures a special moment and write a short note about what the moment is. \r\nI\'d then frame and wrap all the pictures in brown paper and put the 5 facts on the front. Everyone has to get one (not their own one, if they know). Read out, try and guess, unwrap and read their special moment story.      \r\nYou could bring in speaking and listening and ask for a speech. Maybe this is part of their graduation reflecting on their school experience, maybe a Mother\'s Day/Father\'s Day present.\r\n \r\nThe possibilities are endless... all from seeing a picture on my Facebook feed. So, what do you see? What comes to your creative mind?\r\nComment and Share, after all the best PD\'s are viral!\r\n #bigwrite_vcop #teachme_pd #professionaldevelopment\r\n', 'Professional Development', 'Professional Development can be defined as \'activities that develop an individual\'s skills, knowledge, expertise and other characteristics as a teacher\' (OECD, 2009, p.49)', 'inherit', 'closed', 'closed', '', '330-revision-v1', '', '', '2015-10-30 01:56:20', '2015-10-30 01:56:20', '', 330, 'http://teach-me-pd.dev/2015/10/330-revision-v1/', 0, 'revision', '', 0),
(337, 1, '2015-10-30 01:56:45', '2015-10-30 01:56:45', 'Oh I like this! Kids love repetition, rhythm and rhyme. \r\nNot only are we teaching letter/number formation, find motor development and reading, but following directions, sequencing, and rhyming words. \r\nI\'m taking this concept and rolling with it for older students... I\'m thinking we\'ll try a Noun Rap!! Stay tuned.\r\nWhat will you do? \r\n#teachme_pd #aussieteacher #learnthroughplay Teaching and Learning in South Australia\r\n', 'Number Formation Rhymes', 'Oh I like this! Kids love repetition, rhythm and rhyme. Not only are we teaching letter/number formation, find motor development and reading, but following directions, sequencing, and rhyming words. ', 'inherit', 'closed', 'closed', '', '323-revision-v1', '', '', '2015-10-30 01:56:45', '2015-10-30 01:56:45', '', 323, 'http://teach-me-pd.dev/2015/10/323-revision-v1/', 0, 'revision', '', 0),
(338, 1, '2015-10-30 02:45:40', '2015-10-30 02:45:40', '', 'Logout', '', 'publish', 'closed', 'closed', '', 'logout', '', '', '2015-10-30 02:45:40', '2015-10-30 02:45:40', '', 0, 'http://teach-me-pd.dev/?p=338', 2, 'nav_menu_item', '', 0),
(339, 15, '2015-10-30 03:17:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2015-10-30 03:17:32', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(340, 15, '2015-10-30 03:24:08', '2015-10-30 03:24:08', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.\r\n\r\nYou will leave the day excited, enthused and wanting to race back to your classrooms to play Kung Fu Punctuation, and many other exciting games, with your students.\r\n\r\nIn this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. Presented to you by classroom teachers - who have used the program successfully across multiple year levels - you will become their students for the day, to really understand what a Big Write &amp; VCOP classroom looks and feels like.\r\n\r\nWe will cover all stages of the program from setting up your classroom, to integration into the literacy block, running the writing session, editing, up-levelling and analysis, goal setting, and touching on assessment and data tracking.\r\n\r\nThe session runs from 9:00am to 3:30pm. You will be provided with morning tea, lunch, and delegate pack including PowerPoint notes, Australian Criterion Scale and Student Friendly Criterion Scale. However, we ask that you bring a pen and extra note taking materials, as well as your enthusiasm.', 'Albury, Day 1 - Introduction to Big Write &amp; VCOP', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.', 'publish', 'open', 'closed', '', 'albury-day-1-introduction-to-big-write-vcop', '', '', '2015-10-30 20:57:35', '2015-10-30 20:57:35', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(341, 15, '2015-10-30 03:23:55', '2015-10-30 03:23:55', '', 'Day 1 - Introduction to Big Write &amp; VCOP', 'In this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. ', 'publish', 'open', 'closed', '', 'day-1-introduction-to-big-write-vcop', '', '', '2015-10-30 20:56:46', '2015-10-30 20:56:46', '', 0, 'http://teach-me-pd.dev/product/day-1-introduction-to-big-write-vcop/', 0, 'product', '', 0),
(342, 15, '2015-10-30 03:24:08', '2015-10-30 03:24:08', 'Ibis Styles, Albury. Riverina Highway, Lake Hume Village, Albury NSW 2640', 'Ibis Styles, Albury', '', 'publish', 'closed', 'closed', '', 'albury', '', '', '2015-10-30 20:37:48', '2015-10-30 20:37:48', '', 0, 'http://teach-me-pd.dev/venue/albury/', 0, 'tribe_venue', '', 0),
(343, 15, '2015-10-30 03:25:35', '2015-10-30 03:25:35', '', 'Day 1 - Introduction to Big Write &amp; VCOP', '', 'inherit', 'open', 'closed', '', 'day-1-introduction-to-big-write-vcop-2', '', '', '2015-10-30 03:25:35', '2015-10-30 03:25:35', '', 340, 'http://teach-me-pd.dev//app/uploads/2015/10/Day-1-Introduction-to-Big-Write-VCOP.jpg', 0, 'attachment', 'image/jpeg', 0),
(344, 15, '2015-10-30 03:24:08', '2015-10-30 03:24:08', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.\r\n\r\nYou will leave the day excited, enthused and wanting to race back to your classrooms to play Kung Fu Punctuation, and many other exciting games, with your students.\r\n\r\nIn this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. Presented to you by classroom teachers - who have used the program successfully across multiple year levels - you will become their students for the day, to really understand what a Big Write &amp; VCOP classroom looks and feels like.\r\n\r\nWe will cover all stages of the program from setting up your classroom, to integration into the literacy block, running the writing session, editing, up-levelling and analysis, goal setting, and touching on assessment and data tracking.\r\n\r\nThe session runs from 9:00am to 3:30pm. You will be provided with morning tea, lunch, and delegate pack including PowerPoint notes, Australian Criterion Scale and Student Friendly Criterion Scale. However, we ask that you bring a pen and extra note taking materials, as well as your enthusiasm.', 'Warrnambool, Day 1 - Introduction to Big Write &amp; VCOP', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.', 'publish', 'open', 'closed', '', 'warrnambool-day-1-introduction-to-big-write-vcop', '', '', '2015-10-30 20:59:30', '2015-10-30 20:59:30', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(345, 15, '2015-10-30 03:24:08', '2015-10-30 03:24:08', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.\r\n\r\nYou will leave the day excited, enthused and wanting to race back to your classrooms to play Kung Fu Punctuation, and many other exciting games, with your students.\r\n\r\nIn this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. Presented to you by classroom teachers - who have used the program successfully across multiple year levels - you will become their students for the day, to really understand what a Big Write &amp; VCOP classroom looks and feels like.\r\n\r\nWe will cover all stages of the program from setting up your classroom, to integration into the literacy block, running the writing session, editing, up-levelling and analysis, goal setting, and touching on assessment and data tracking.\r\n\r\nThe session runs from 9:00am to 3:30pm. You will be provided with morning tea, lunch, and delegate pack including PowerPoint notes, Australian Criterion Scale and Student Friendly Criterion Scale. However, we ask that you bring a pen and extra note taking materials, as well as your enthusiasm.', 'Frankston, Day 1 - Introduction to Big Write &amp; VCOP', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.', 'publish', 'open', 'closed', '', 'day-1-introduction-to-big-write-vcop-3', '', '', '2015-10-30 20:58:50', '2015-10-30 20:58:50', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(346, 15, '2015-10-30 03:24:08', '2015-10-30 03:24:08', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.\r\n\r\nYou will leave the day excited, enthused and wanting to race back to your classrooms to play Kung Fu Punctuation, and many other exciting games, with your students.\r\n\r\nIn this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. Presented to you by classroom teachers - who have used the program successfully across multiple year levels - you will become their students for the day, to really understand what a Big Write &amp; VCOP classroom looks and feels like.\r\n\r\nWe will cover all stages of the program from setting up your classroom, to integration into the literacy block, running the writing session, editing, up-levelling and analysis, goal setting, and touching on assessment and data tracking.\r\n\r\nThe session runs from 9:00am to 3:30pm. You will be provided with morning tea, lunch, and delegate pack including PowerPoint notes, Australian Criterion Scale and Student Friendly Criterion Scale. However, we ask that you bring a pen and extra note taking materials, as well as your enthusiasm.', 'Bendigo, Day 1 - Introduction to Big Write &amp; VCOP', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.', 'publish', 'open', 'closed', '', 'bendigo-day-1-introduction-to-big-write-vcop', '', '', '2015-10-30 20:58:32', '2015-10-30 20:58:32', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(347, 15, '2015-10-30 05:13:26', '2015-10-30 05:13:26', '', 'Swan Hill', '', 'publish', 'closed', 'closed', '', 'swan-hill', '', '', '2015-10-30 05:13:26', '2015-10-30 05:13:26', '', 0, 'http://teach-me-pd.dev/venue/swan-hill/', 0, 'tribe_venue', '', 0),
(348, 15, '2015-10-30 05:14:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2015-10-30 05:14:32', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(349, 15, '2015-10-30 05:15:18', '2015-10-30 05:15:18', '', 'Warrnambool', '', 'publish', 'closed', 'closed', '', 'warrnambool', '', '', '2015-10-30 05:15:18', '2015-10-30 05:15:18', '', 0, 'http://teach-me-pd.dev/venue/warrnambool/', 0, 'tribe_venue', '', 0),
(350, 15, '2015-10-30 05:16:39', '2015-10-30 05:16:39', '', 'Bendigo', '', 'publish', 'closed', 'closed', '', 'bendigo', '', '', '2015-10-30 05:16:39', '2015-10-30 05:16:39', '', 0, 'http://teach-me-pd.dev/venue/bendigo/', 0, 'tribe_venue', '', 0),
(351, 15, '2015-10-30 03:24:08', '2015-10-30 03:24:08', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.\r\n\r\nYou will leave the day excited, enthused and wanting to race back to your classrooms to play Kung Fu Punctuation, and many other exciting games, with your students.\r\n\r\nIn this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. Presented to you by classroom teachers - who have used the program successfully across multiple year levels - you will become their students for the day, to really understand what a Big Write &amp; VCOP classroom looks and feels like.\r\n\r\nWe will cover all stages of the program from setting up your classroom, to integration into the literacy block, running the writing session, editing, up-levelling and analysis, goal setting, and touching on assessment and data tracking.\r\n\r\nThe session runs from 9:00am to 3:30pm. You will be provided with morning tea, lunch, and delegate pack including PowerPoint notes, Australian Criterion Scale and Student Friendly Criterion Scale. However, we ask that you bring a pen and extra note taking materials, as well as your enthusiasm.', 'Swan Hill, Day 1 - Introduction to Big Write &amp; VCOP', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.', 'publish', 'open', 'closed', '', 'swan-hill-day-1-introduction-to-big-write-vcop', '', '', '2015-10-30 20:58:13', '2015-10-30 20:58:13', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(352, 1, '2015-10-30 03:24:08', '2015-10-30 03:24:08', 'As schools move into a Bring Your Own Device (BYOD) environment, it is important to know what is available for students to use no matter the device they bring. Come along to discover some great BYOD apps, online spaces and strategies to maximise learning opportunities.\r\n\r\n<span style="color: #ffcc00;">Suitability:</span>\r\n\r\nThis workshop is suitable for Primary &amp; Secondary school educators, Special school staff, additional needs educators and educational support staff in Government, Catholic, and Independent schools. Pre-service teachers and CRTs will also benefit from attending.\r\n\r\n<span style="color: #ffcc00;"><em>Workshop Overview:</em></span>\r\n\r\nTeachers will engage in practical experiences using recommended apps and online spaces during an engaging and inspirational afternoon session. They will:\r\n<ul>\r\n	<li>Understand common and effective apps they can use at different stages of learning to enhance their BYOD toolkit</li>\r\n	<li>Engage in practical learning experiences they can instantly apply in their classroom</li>\r\n	<li>Overcome issues they may be experiencing implementing a BYOD environment</li>\r\n</ul>\r\n<span style="color: #ffcc00;"><strong>Where:</strong></span>\r\n\r\nEdumazing Educational Studios\r\n\r\nLevel 1, 84 Synnot Street, Werribee\r\n\r\n<strong><span style="color: #ffcc00;">What to bring:</span> </strong>\r\n\r\nParticipants need to bring their own mobile device (that can wirelessly access internet, internet connectivity provided) and your enthusiasm.\r\n\r\n<span style="color: #ffcc00;"><strong>What’s provided:</strong>  </span>\r\n\r\nParticipants will receive refreshments upon arrival.  All other materials, tools and resources will be provided on the day.\r\n\r\n<strong><span style="color: #ffcc00;">Time: </span>                          </strong>\r\n\r\n4:00pm Start, 6.00pm Finish', 'BYOD App Toolkit (Afternoon workshop) - Werribee', 'Teachers will engage in practical experiences using recommended apps and online spaces during an engaging and inspirational afternoon session.', 'publish', 'open', 'closed', '', 'byod-app-toolkit', '', '', '2015-11-01 00:02:39', '2015-11-01 00:02:39', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(353, 15, '2015-10-30 05:19:30', '2015-10-30 05:19:30', 'Maylands Peninsula Golf Course, Swan Bank Rd, Maylands WA 6051', 'Maylands Peninsula Golf Course', '', 'publish', 'closed', 'closed', '', 'maylands-peninsula-golf-course', '', '', '2015-10-30 20:36:12', '2015-10-30 20:36:12', '', 0, 'http://teach-me-pd.dev/venue/perth/', 0, 'tribe_venue', '', 0),
(354, 15, '2015-10-30 05:20:32', '2015-10-30 05:20:32', '', 'BYOD App Toolkit (Afternoon workshop)', 'Teachers will engage in practical experiences using recommended apps and online spaces during an engaging and inspirational afternoon session.', 'publish', 'open', 'closed', '', 'introduction-to-big-write-and-vcop', '', '', '2015-10-30 17:58:51', '2015-10-30 17:58:51', '', 0, 'http://teach-me-pd.dev/product/introduction-to-big-write-and-vcop/', 0, 'product', '', 0),
(355, 15, '2015-10-30 05:22:41', '2015-10-30 05:22:41', '', 'Day 1 - Introduction to Big Write and VCOP', 'In this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. ', 'publish', 'open', 'closed', '', 'day-1-introduction-to-big-write-and-vcop', '', '', '2015-10-30 20:53:57', '2015-10-30 20:53:57', '', 0, 'http://teach-me-pd.dev/product/day-1-introduction-to-big-write-and-vcop/', 0, 'product', '', 0),
(356, 15, '2015-10-30 05:24:47', '2015-10-30 05:24:47', '', 'Day 1 - Introduction to Big Write and VCOP', 'In this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. ', 'publish', 'open', 'closed', '', 'day-1-introduction-to-big-write-and-vcop-2', '', '', '2015-10-30 20:46:00', '2015-10-30 20:46:00', '', 0, 'http://teach-me-pd.dev/product/day-1-introduction-to-big-write-and-vcop-2/', 0, 'product', '', 0),
(357, 15, '2015-10-30 05:57:34', '2015-10-30 05:57:34', '', 'Introduction to Big Write and VCOP', 'In this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. ', 'publish', 'open', 'closed', '', 'introduction-to-big-write-and-vcop-2', '', '', '2015-10-30 20:50:53', '2015-10-30 20:50:53', '', 0, 'http://teach-me-pd.dev/product/introduction-to-big-write-and-vcop-2/', 0, 'product', '', 0),
(358, 15, '2015-10-30 05:58:15', '2015-10-30 05:58:15', '', 'Introduction to Big Write and VCOP', 'In this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. ', 'publish', 'open', 'closed', '', 'introduction-to-big-write-and-vcop-3', '', '', '2015-10-30 20:48:19', '2015-10-30 20:48:19', '', 0, 'http://teach-me-pd.dev/product/introduction-to-big-write-and-vcop-3/', 0, 'product', '', 0),
(359, 1, '2015-10-30 06:20:00', '2015-10-30 06:20:00', '', 'image3', '', 'inherit', 'open', 'closed', '', 'image3', '', '', '2015-10-30 06:20:00', '2015-10-30 06:20:00', '', 328, 'http://teach-me-pd.dev//app/uploads/2015/10/image3.png', 0, 'attachment', 'image/png', 0),
(360, 1, '2015-10-30 06:20:17', '2015-10-30 06:20:17', 'Geography PD today- discover the size of different countries using this easy to use tool. \n\nWhat activities would you do?\n\nwww.thetruesize.com\n', 'Geography PD today', '', 'inherit', 'closed', 'closed', '', '328-autosave-v1', '', '', '2015-10-30 06:20:17', '2015-10-30 06:20:17', '', 328, 'http://teach-me-pd.dev/2015/10/328-autosave-v1/', 0, 'revision', '', 0),
(361, 15, '2015-10-30 06:33:57', '2015-10-30 06:33:57', 'We understand that there was a lot of information in Day 1, and that we only just touched on assessment so as not to overwhelm you. When you walked away, your focus should have been on setting up your classroom and introducing the program slowly. For that reason, we have started running Day 2, dedicated to Assessment &amp; Data Tracking.\r\n\r\nIt is imperative that you have not only completed Day 1, but have set up your classroom and started having a go at assessment with the Australian Criterion Scale, (we recommend at least 4-6 months between sessions).\r\n\r\nParticipants are required to bring 2 photocopies of low, mid, and high assessment pieces from their classrooms which they have assessed using the Australian Criterion Scale, using the moderating template (available on the website in the ‘Downloads’ section).\r\n\r\nDay 2 will cover the more intensive Assessment &amp; Data Tracking element of the program for both your classroom and at a school wide tracking level.\r\n\r\nIn this session, we will reflect on your progress so far, share with you in your celebrations, and seek to help overcome any hurdles you have come across that are preventing you from reaching your goals. From there we are going to model and practise placing children on an appropriate level and discuss why it is important to look at all aspects of the writing piece, and not to pre-judge based on length, handwriting, etc.\r\n\r\nThe next step is gaining a deeper understanding of the criteria at various levels, so we will be modelling, sharing, and practising on the pieces you have brought in to make it more relevant to your classroom. From this, we will look at goal setting appropriate to moving that child forward.\r\n\r\nWe will then look at data tracking in your classroom, across your year level, and school wide, showing you different ways of collecting, using, and recording data to ensure it is purposeful.\r\n\r\nOf course, during the day we will still suggest and play games and activities that you can take back to your classroom to add to your resource kits. As usual with the Andrell team, you will be guaranteed chocolates and a laugh.', 'Albury, Day 2 - Assessment and Data Tracking', 'We understand that there was a lot of information in Day 1, and that we only just touched on assessment so as not to overwhelm you. When you walked away, your focus should have been on setting up your classroom and introducing the program slowly. For that reason, we have started running Day 2, dedicated to Assessment &amp; Data Tracking.\r\n\r\nIt is imperative that you have not only completed Day 1, but have set up your classroom and started having a go at assessment with the Australian Criterion Scale, (we recommend at least 4-6 months between sessions).', 'publish', 'open', 'closed', '', 'albury-day-2-assessment-and-data-tracking', '', '', '2015-10-30 21:02:48', '2015-10-30 21:02:48', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(362, 1, '2015-10-30 06:30:58', '2015-10-30 06:30:58', '', 'k_jdubois_nbarchowsky_handwriting_04-02-081', '', 'inherit', 'open', 'closed', '', 'k_jdubois_nbarchowsky_handwriting_04-02-081', '', '', '2015-10-30 06:30:58', '2015-10-30 06:30:58', '', 326, 'http://teach-me-pd.dev//app/uploads/2015/09/k_jdubois_nbarchowsky_handwriting_04-02-081.jpg', 0, 'attachment', 'image/jpeg', 0),
(363, 15, '2015-10-30 06:33:41', '2015-10-30 06:33:41', '', 'Day 2  Assessment and Data Tracking', 'In this session, we will reflect on your progress so far, share with you in your celebrations, and seek to help overcome any hurdles you have come across that are preventing you from reaching your goals. ', 'publish', 'open', 'closed', '', 'day-2-assessment-and-data-tracking', '', '', '2015-10-30 21:00:45', '2015-10-30 21:00:45', '', 0, 'http://teach-me-pd.dev/product/day-2-assessment-and-data-tracking/', 0, 'product', '', 0),
(364, 15, '2015-10-30 06:33:57', '2015-10-30 06:33:57', 'We understand that there was a lot of information in Day 1, and that we only just touched on assessment so as not to overwhelm you. When you walked away, your focus should have been on setting up your classroom and introducing the program slowly. For that reason, we have started running Day 2, dedicated to Assessment &amp; Data Tracking.\r\n\r\nIt is imperative that you have not only completed Day 1, but have set up your classroom and started having a go at assessment with the Australian Criterion Scale, (we recommend at least 4-6 months between sessions).\r\n\r\nParticipants are required to bring 2 photocopies of low, mid, and high assessment pieces from their classrooms which they have assessed using the Australian Criterion Scale, using the moderating template (available on the website in the ‘Downloads’ section).\r\n\r\nDay 2 will cover the more intensive Assessment &amp; Data Tracking element of the program for both your classroom and at a school wide tracking level.\r\n\r\nIn this session, we will reflect on your progress so far, share with you in your celebrations, and seek to help overcome any hurdles you have come across that are preventing you from reaching your goals. From there we are going to model and practise placing children on an appropriate level and discuss why it is important to look at all aspects of the writing piece, and not to pre-judge based on length, handwriting, etc.\r\n\r\nThe next step is gaining a deeper understanding of the criteria at various levels, so we will be modelling, sharing, and practising on the pieces you have brought in to make it more relevant to your classroom. From this, we will look at goal setting appropriate to moving that child forward.\r\n\r\nWe will then look at data tracking in your classroom, across your year level, and school wide, showing you different ways of collecting, using, and recording data to ensure it is purposeful.\r\n\r\nOf course, during the day we will still suggest and play games and activities that you can take back to your classroom to add to your resource kits. As usual with the Andrell team, you will be guaranteed chocolates and a laugh.', 'Warrnambool, Day 2 - Assessment and Data Tracking', 'We understand that there was a lot of information in Day 1, and that we only just touched on assessment so as not to overwhelm you. When you walked away, your focus should have been on setting up your classroom and introducing the program slowly. For that reason, we have started running Day 2, dedicated to Assessment &amp; Data Tracking.\r\n\r\nIt is imperative that you have not only completed Day 1, but have set up your classroom and started having a go at assessment with the Australian Criterion Scale, (we recommend at least 4-6 months between sessions).', 'publish', 'open', 'closed', '', 'warrnambool-day-2-assessment-and-data-tracking', '', '', '2015-10-30 20:59:51', '2015-10-30 20:59:51', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(365, 15, '2015-10-30 06:35:42', '2015-10-30 06:35:42', '', 'Day 2  - Assessment and Data Tracking', 'In this session, we will reflect on your progress so far, share with you in your celebrations, and seek to help overcome any hurdles you have come across that are preventing you from reaching your goals. ', 'publish', 'open', 'closed', '', 'day-2-assessment-and-data-tracking-2', '', '', '2015-10-30 20:55:12', '2015-10-30 20:55:12', '', 0, 'http://teach-me-pd.dev/product/day-2-assessment-and-data-tracking-2/', 0, 'product', '', 0),
(366, 15, '2015-10-30 06:37:26', '2015-10-30 06:37:26', '', 'Day2 - Assessment and Data Tracking', '', 'inherit', 'open', 'closed', '', 'day2', '', '', '2015-10-30 06:37:43', '2015-10-30 06:37:43', '', 364, 'http://teach-me-pd.dev//app/uploads/2015/10/Day2.jpg', 0, 'attachment', 'image/jpeg', 0),
(367, 15, '2015-10-30 06:33:57', '2015-10-30 06:33:57', 'We understand that there was a lot of information in Day 1, and that we only just touched on assessment so as not to overwhelm you. When you walked away, your focus should have been on setting up your classroom and introducing the program slowly. For that reason, we have started running Day 2, dedicated to Assessment &amp; Data Tracking.\r\n\r\nIt is imperative that you have not only completed Day 1, but have set up your classroom and started having a go at assessment with the Australian Criterion Scale, (we recommend at least 4-6 months between sessions).\r\n\r\nParticipants are required to bring 2 photocopies of low, mid, and high assessment pieces from their classrooms which they have assessed using the Australian Criterion Scale, using the moderating template (available on the website in the ‘Downloads’ section).\r\n\r\nDay 2 will cover the more intensive Assessment &amp; Data Tracking element of the program for both your classroom and at a school wide tracking level.\r\n\r\nIn this session, we will reflect on your progress so far, share with you in your celebrations, and seek to help overcome any hurdles you have come across that are preventing you from reaching your goals. From there we are going to model and practise placing children on an appropriate level and discuss why it is important to look at all aspects of the writing piece, and not to pre-judge based on length, handwriting, etc.\r\n\r\nThe next step is gaining a deeper understanding of the criteria at various levels, so we will be modelling, sharing, and practising on the pieces you have brought in to make it more relevant to your classroom. From this, we will look at goal setting appropriate to moving that child forward.\r\n\r\nWe will then look at data tracking in your classroom, across your year level, and school wide, showing you different ways of collecting, using, and recording data to ensure it is purposeful.\r\n\r\nOf course, during the day we will still suggest and play games and activities that you can take back to your classroom to add to your resource kits. As usual with the Andrell team, you will be guaranteed chocolates and a laugh.', 'Sale, Day 2 - Assessment and Data Tracking', 'We understand that there was a lot of information in Day 1, and that we only just touched on assessment so as not to overwhelm you. When you walked away, your focus should have been on setting up your classroom and introducing the program slowly. For that reason, we have started running Day 2, dedicated to Assessment &amp; Data Tracking.\r\n\r\nIt is imperative that you have not only completed Day 1, but have set up your classroom and started having a go at assessment with the Australian Criterion Scale, (we recommend at least 4-6 months between sessions).', 'publish', 'open', 'closed', '', 'sale-day-2-assessment-and-data-tracking', '', '', '2015-10-30 20:59:10', '2015-10-30 20:59:10', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(368, 15, '2015-10-30 06:43:07', '2015-10-30 06:43:07', '', 'Day 2 -  Assessment and Data Tracking', 'In this session, we will reflect on your progress so far, share with you in your celebrations, and seek to help overcome any hurdles you have come across that are preventing you from reaching your goals. ', 'publish', 'open', 'closed', '', 'day-2-assessment-and-data-tracking-3', '', '', '2015-10-30 06:43:07', '2015-10-30 06:43:07', '', 0, 'http://teach-me-pd.dev/product/day-2-assessment-and-data-tracking-3/', 0, 'product', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(369, 1, '2015-10-30 06:50:00', '2015-10-30 06:50:00', '\r\n\r\n\r\nFor further information or for support, please email info@teachmepd.com.au', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-10-30 06:50:00', '2015-10-30 06:50:00', '', 12, 'http://teach-me-pd.dev/2015/10/12-revision-v1/', 0, 'revision', '', 0),
(370, 1, '2015-10-30 07:03:02', '2015-10-30 07:03:02', '[gravityform id="3" title="false" description="false"]\n\n&nbsp;\n\nFor further information or for support, please email <a href="mailto:info@teachmepd.com.au">info@teachmepd.com.au', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2015-10-30 07:03:02', '2015-10-30 07:03:02', '', 12, 'http://teach-me-pd.dev/2015/10/12-autosave-v1/', 0, 'revision', '', 0),
(371, 1, '2015-10-30 06:56:15', '2015-10-30 06:56:15', '&nbsp;\r\n\r\n&nbsp;\r\n\r\nFor further information or for support, please email info@teachmepd.com.au', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-10-30 06:56:15', '2015-10-30 06:56:15', '', 12, 'http://teach-me-pd.dev/2015/10/12-revision-v1/', 0, 'revision', '', 0),
(372, 1, '2015-10-30 06:56:33', '2015-10-30 06:56:33', '[gravityform id="3" title="true" description="false"]\r\n\r\n&nbsp;\r\n\r\nFor further information or for support, please email info@teachmepd.com.au', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-10-30 06:56:33', '2015-10-30 06:56:33', '', 12, 'http://teach-me-pd.dev/2015/10/12-revision-v1/', 0, 'revision', '', 0),
(373, 1, '2015-10-30 07:00:51', '2015-10-30 07:00:51', '[gravityform id="3" title="false" description="false"]\r\n\r\n&nbsp;\r\n\r\nFor further information or for support, please email info@teachmepd.com.au', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-10-30 07:00:51', '2015-10-30 07:00:51', '', 12, 'http://teach-me-pd.dev/2015/10/12-revision-v1/', 0, 'revision', '', 0),
(374, 1, '2015-10-30 07:02:10', '2015-10-30 07:02:10', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Tue 21 Apr 2015 \\u2013 \\nFri 26 Jun 2015\\n\\nTeachers commence Monday 20 April 2015.","Tue 14 Jul 2015 \\u2013 \\nFri 18 Sep 2015\\n\\nTeachers commence Monday 13 July 2015.","Tue 6 Oct 2015 \\u2013 Wed 16 Dec 2015\\n\\nTeachers finish Friday 18 December 2015."]]', 'NSW Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '226-revision-v1', '', '', '2015-10-30 07:02:10', '2015-10-30 07:02:10', '', 226, 'http://teach-me-pd.dev/2015/10/226-revision-v1/', 0, 'revision', '', 0),
(375, 1, '2015-10-30 07:03:09', '2015-10-30 07:03:09', '[gravityform id="3" title="false" description="false"]\r\n\r\n&nbsp;\r\n\r\nFor further information or for support, please email <a href="mailto:info@teachmepd.com.au">info@teachmepd.com.au</a>', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-10-30 07:03:09', '2015-10-30 07:03:09', '', 12, 'http://teach-me-pd.dev/2015/10/12-revision-v1/', 0, 'revision', '', 0),
(376, 1, '2015-10-30 07:03:14', '2015-10-30 07:03:14', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Thu 28 Jan 2016 \\u2013 \\nFri 8 Apr 2016\\n\\nEastern Division, Teachers commence Wednesday 27 January 2016.\\n\\nThu 4 Feb 2016 \\u2013 Fri 8 Apr 2016\\n\\nWestern Division, Teachers commence Wednesday 03 February 2016.","Wed 27 Apr 2016 \\u2013 Fri 1 Jul 2016\\n\\nTeachers commence Tuesday 26 April 2016.","Tue 19 Jul 2016 \\u2013 \\nFri 23 Sep 2016\\n\\nTeachers commence Monday 18 July 2016.","Mon 10 Oct 2016 \\u2013 Fri 16 Dec 2016\\n\\nTeachers finish Tuesday 20 December 2016."]]', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2015-10-30 07:03:14', '2015-10-30 07:03:14', '', 229, 'http://teach-me-pd.dev/2015/10/229-revision-v1/', 0, 'revision', '', 0),
(377, 1, '2015-10-30 07:04:24', '2015-10-30 07:04:24', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 13 Apr 2015 \\u2013 \\nFri 26 Jun 2015","Mon 13 Jul 2015 \\u2013 \\nFri 18 Sep 2015","Mon 5 Oct 2015 \\u2013 \\nFri 18 Dec 2015"]]', 'VIC Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '215-revision-v1', '', '', '2015-10-30 07:04:24', '2015-10-30 07:04:24', '', 215, 'http://teach-me-pd.dev/2015/10/215-revision-v1/', 0, 'revision', '', 0),
(378, 1, '2015-10-30 07:04:47', '2015-10-30 07:04:47', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Wed 27 Jan 2016 \\u2013 Thu 24 Mar 2016\\n\\nFirst day of Term 1 is a student-free day.","Mon 11 Apr 2016 \\u2013 \\nFri 24 Jun 2016","Mon 11 Jul 2016 \\u2013 \\nFri 16 Sep 2016","Mon 3 Oct 2016 \\u2013 \\nTue 20 Dec 2016"]]', 'VIC Term Dates 2016', '', 'inherit', 'closed', 'closed', '', '217-revision-v1', '', '', '2015-10-30 07:04:47', '2015-10-30 07:04:47', '', 217, 'http://teach-me-pd.dev/2015/10/217-revision-v1/', 0, 'revision', '', 0),
(379, 1, '2015-10-30 07:23:17', '2015-10-30 07:23:17', 'Oh I like this! Kids love repetition, rhythm and rhyme. \r\nNot only are we teaching letter/number formation, find motor development and reading, but following directions, sequencing, and rhyming words. \r\nI\'m taking this concept and rolling with it for older students... I\'m thinking we\'ll try a Noun Rap!! Stay tuned.\r\nWhat will you do? \r\n#teachme_pd #aussieteacher #learnthroughplay Teaching and Learning in South Australia\r\n', 'Number Formation Rhymes', 'Oh I like this! Kids love repetition, rhythm and rhyme. Not only are we teaching letter/number formation, find motor development and reading', 'inherit', 'closed', 'closed', '', '323-revision-v1', '', '', '2015-10-30 07:23:17', '2015-10-30 07:23:17', '', 323, 'http://teach-me-pd.dev/2015/10/323-revision-v1/', 0, 'revision', '', 0),
(380, 1, '2015-10-30 07:43:55', '2015-10-30 07:43:55', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Tue 28 Apr 2015 \\u2013 \\nFri 3 Jul 2015\\n\\nWhen Anzac Day falls on a weekend ACT public schools commence on the Tuesday","Mon 20 Jul 2015 \\u2013 \\nFri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 \\nFri 18 Dec 2015"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 \\nFri 8 Apr 2016\\n\\nTeachers commence Thursday 28 January 2016.","Tue 26 Apr 2016 \\u2013 \\nFri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 \\nFri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 \\nFri 16 Dec 2016"]]', 'ACT Term Dates', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2015-10-30 07:43:55', '2015-10-30 07:43:55', '', 152, 'http://teach-me-pd.dev/2015/10/152-revision-v1/', 0, 'revision', '', 0),
(381, 1, '2015-10-30 07:44:57', '2015-10-30 07:44:57', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Tue 28 Apr 2015 \\u2013 \\nFri 3 Jul 2015\\n\\nWhen Anzac Day falls\\n on a weekend ACT\\n public schools\\n commence on the\\n Tuesday","Mon 20 Jul 2015 \\u2013 \\nFri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 \\nFri 18 Dec 2015"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 \\nFri 8 Apr 2016\\n\\nTeachers commence\\n Thursday 28 January\\n 2016.","Tue 26 Apr 2016 \\u2013 \\nFri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 \\nFri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 \\nFri 16 Dec 2016"]]', 'ACT Term Dates', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2015-10-30 07:44:57', '2015-10-30 07:44:57', '', 152, 'http://teach-me-pd.dev/2015/10/152-revision-v1/', 0, 'revision', '', 0),
(382, 1, '2015-10-30 07:47:38', '2015-10-30 07:47:38', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Tue 21 Apr 2015 \\u2013 \\nFri 26 Jun 2015\\n\\nTeachers commence\\n Monday 20 April\\n 2015.","Tue 14 Jul 2015 \\u2013 \\nFri 18 Sep 2015\\n\\nTeachers commence\\n Monday 13 July\\n 2015.","Tue 6 Oct 2015 \\u2013 Wed 16 Dec 2015\\n\\nTeachers finish\\n Friday 18 December\\n 2015."],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Thu 28 Jan 2016 \\u2013 \\nFri 8 Apr 2016\\n\\nEastern Division, Teachers commence Wednesday 27 January 2016.\\n\\nThu 4 Feb 2016 \\u2013 \\nFri 8 Apr 2016\\n\\nWestern Division, \\nTeachers commence\\n Wednesday 03\\n February 2016.","Wed 27 Apr 2016 \\u2013\\n Fri 1 Jul 2016\\n\\nTeachers commence\\n Tuesday 26 April\\n 2016.","Tue 19 Jul 2016 \\u2013 \\nFri 23 Sep 2016\\n\\nTeachers commence\\n Monday 18 July\\n 2016.","Mon 10 Oct 2016 \\u2013 \\nFri 16 Dec 2016\\n\\nTeachers finish\\n Tuesday 20 \\nDecember 2016."]]', 'NSW Term Dates', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2015-10-30 07:47:38', '2015-10-30 07:47:38', '', 165, 'http://teach-me-pd.dev/2015/10/165-revision-v1/', 0, 'revision', '', 0),
(383, 1, '2015-10-30 07:48:46', '2015-10-30 07:48:46', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013\\n Fri 26 Jun 2015","Mon 13 Jul 2015 \\u2013 \\nFri 18 Sep 2015","Tue 6 Oct 2015 \\u2013 \\nFri 11 Dec 2015\\n\\nYear 12 \\u2013 Friday 20 \\nNovember; Year 10 &\\n 11 \\u2013 Friday 27\\n November 2015."],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 25 Jan 2016 \\u2013 \\nThu 24 Mar 2016","Mon 11 Apr 2016 \\u2013 \\nFri 24 Jun 2016","Mon 11 Jul 2016 \\u2013 \\nFri 16 Sep 2016","Tue 4 Oct 2016 \\u2013 \\nFri 9 Dec 2016\\n\\nYear 12 \\u2013 Friday 18\\n November 2016;\\n Year 10 & 11 \\u2013\\n Friday 25 November\\n 2016."]]', 'QLD Term Dates', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2015-10-30 07:48:46', '2015-10-30 07:48:46', '', 171, 'http://teach-me-pd.dev/2015/10/171-revision-v1/', 0, 'revision', '', 0),
(384, 1, '2015-10-30 07:49:38', '2015-10-30 07:49:38', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 27 Apr 2015 \\u2013 \\nFri 3 Jul 2015","Mon 20 Jul 2015 \\u2013 \\nFri 25 Sep 2015","Mon 12 Oct 2015 \\u2013 \\nFri 11 Dec 2015"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 \\nFri 15 Apr 2016","Mon 2 May 2016 \\u2013 \\nFri 8 Jul 2016","Mon 25 Jul 2016 \\u2013 \\nFri 30 Sep 2016","Mon 17 Oct 2016 \\u2013 \\nFri 16 Dec 2016"]]', 'SA Term Dates', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2015-10-30 07:49:38', '2015-10-30 07:49:38', '', 176, 'http://teach-me-pd.dev/2015/10/176-revision-v1/', 0, 'revision', '', 0),
(385, 1, '2015-10-30 07:50:46', '2015-10-30 07:50:46', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 13 Apr 2015 \\u2013 \\nFri 19 Jun 2015","Mon 20 Jul 2015 \\u2013 \\nFri 25 Sep 2015\\n\\nStudents resume Tuesday 21 July","Mon 5 Oct 2015 \\u2013\\n Thu 10 Dec 2015\\n\\nUrban Schools\\n\\nMon 5 Oct 2015 \\u2013 \\nFri 11 Dec 2015\\n\\nRemote Schools\\n"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Fri 22 Jan 2016 \\u2013 \\nFri 1 Apr 2016\\n\\nUrban Schools, Students resume Monday 25 January\\n\\nMon 25 Jan 2016 \\u2013 Fri 1 Apr 2016\\n\\nRemote Schools, Students resume Wednesday 27 January.","Mon 11 Apr 2016 \\u2013 \\nFri 24 Jun 2016","Mon 25 Jul 2016 \\u2013 \\nFri 30 Sep 2016\\n\\nStudents resume Tuesday 26 July","Mon 10 Oct 2016 \\u2013 \\nThu 15 Dec 2016\\n\\nUrban Schools\\n\\nMon 10 Oct 2016 \\u2013 Fri 16 Dec 2016\\n\\nRemote Schools\\n"]]', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2015-10-30 07:50:46', '2015-10-30 07:50:46', '', 182, 'http://teach-me-pd.dev/2015/10/182-revision-v1/', 0, 'revision', '', 0),
(386, 1, '2015-10-30 07:51:35', '2015-10-30 07:51:35', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 13 Apr 2015 \\u2013 \\nFri 19 Jun 2015","Mon 20 Jul 2015 \\u2013 \\nFri 25 Sep 2015\\n\\nStudents resume\\n Tuesday 21 July","Mon 5 Oct 2015 \\u2013\\n Thu 10 Dec 2015\\n\\nUrban Schools\\n\\nMon 5 Oct 2015 \\u2013 \\nFri 11 Dec 2015\\n\\nRemote Schools\\n"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Fri 22 Jan 2016 \\u2013 \\nFri 1 Apr 2016\\n\\nUrban Schools,\\n Students resume\\n Monday 25 January\\n\\n\\nMon 25 Jan 2016 \\u2013 \\nFri 1 Apr 2016\\n\\nRemote Schools, \\nStudents resume\\n Wednesday 27\\n January.","Mon 11 Apr 2016 \\u2013 \\nFri 24 Jun 2016","Mon 25 Jul 2016 \\u2013 \\nFri 30 Sep 2016\\n\\nStudents resume\\n Tuesday 26 July","Mon 10 Oct 2016 \\u2013 \\nThu 15 Dec 2016\\n\\nUrban Schools\\n\\nMon 10 Oct 2016 \\u2013\\n Fri 16 Dec 2016\\n\\nRemote Schools\\n"]]', 'NT Term Dates', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2015-10-30 07:51:35', '2015-10-30 07:51:35', '', 182, 'http://teach-me-pd.dev/2015/10/182-revision-v1/', 0, 'revision', '', 0),
(387, 1, '2015-10-30 07:52:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-10-30 07:52:11', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/?page_id=387', 0, 'page', '', 0),
(388, 1, '2015-10-30 07:52:33', '2015-10-30 07:52:33', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["                         ","","Mon 20 Apr 2015 \\u2013\\n Fri 3 Jul 2015\\n\\nTeachers commence\\n Monday 2 February\\n 2015 and finish \\nThursday 2 April \\n2015.","Tue 21 Jul 2015 \\u2013 \\nFri 25 Sep 2015\\n\\nTeachers commence\\n Monday 20 July\\n 2015.","Mon 12 Oct 2015 \\u2013\\n Thu 17 Dec 2015\\n\\nTeachers finish \\nFriday 18 December \\n2015."]]', 'TAS Term Dates 2015', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2015-10-30 07:52:33', '2015-10-30 07:52:33', '', 186, 'http://teach-me-pd.dev/2015/10/186-revision-v1/', 0, 'revision', '', 0),
(389, 1, '2015-10-30 07:53:34', '2015-10-30 07:53:34', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 13 Apr 2015 \\u2013\\n Fri 26 Jun 2015","Mon 13 Jul 2015 \\u2013 \\nFri 18 Sep 2015","Mon 5 Oct 2015 \\u2013 \\nFri 18 Dec 2015"],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Wed 27 Jan 2016 \\u2013\\n Thu 24 Mar 2016\\n\\nFirst day of Term 1 \\nis a student-free day.","Mon 11 Apr 2016 \\u2013 \\nFri 24 Jun 2016","Mon 11 Jul 2016 \\u2013 \\nFri 16 Sep 2016","Mon 3 Oct 2016 \\u2013 \\nTue 20 Dec 2016"]]', 'VIC Term Dates', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2015-10-30 07:53:34', '2015-10-30 07:53:34', '', 191, 'http://teach-me-pd.dev/2015/10/191-revision-v1/', 0, 'revision', '', 0),
(390, 1, '2015-10-30 07:53:37', '2015-10-30 07:53:37', 'Accordingly, we have developed this Policy in order for you to understand how we collect, use, communicate and disclose and make use of personal information. The following outlines our privacy policy.\r\n<ul>\r\n	<li>Before or at the time of collecting personal information, we will identify the purposes for which information is being collected.</li>\r\n	<li>We will collect and use of personal information solely with the objective of fulfilling those purposes specified by us and for other compatible purposes, unless we obtain the consent of the individual concerned or as required by law.</li>\r\n	<li>We will only retain personal information as long as necessary for the fulfillment of those purposes.</li>\r\n	<li>We will collect personal information by lawful and fair means and, where appropriate, with the knowledge or consent of the individual concerned.</li>\r\n	<li>Personal data should be relevant to the purposes for which it is to be used, and, to the extent necessary for those purposes, should be accurate, complete, and up-to-date.</li>\r\n	<li>We will protect personal information by reasonable security safeguards against loss or theft, as well as unauthorized access, disclosure, copying, use or modification.</li>\r\n	<li>If we want to use any personal information, we will ask you first.</li>\r\n	<li>We will contact you post-purchase as a courtesy follow up to inform you of the option to view your purchase or order details online.</li>\r\n	<li>We will contact you from time-to-time if you register as a member or if there are announcements related to your purchase.</li>\r\n</ul>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2015-10-30 07:53:37', '2015-10-30 07:53:37', '', 131, 'http://teach-me-pd.dev/2015/10/131-revision-v1/', 0, 'revision', '', 0),
(391, 1, '2015-10-30 07:54:14', '2015-10-30 07:54:14', '[["                    2015","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","","Mon 20 Apr 2015 \\u2013\\nFri 3 Jul 2015","Mon 20 Jul 2015 \\u2013 \\nFri 25 Sep 2015","Mon 12 Oct 2015 \\u2013\\n Thu 17 Dec 2015\\n\\nTeachers finish\\n Friday 18 December\\n 2015."],["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Mon 1 Feb 2016 \\u2013 \\nFri 8 Apr 2016","Tue 26 Apr 2016 \\u2013 \\nFri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 \\nFri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 \\nThu 15 Dec 2016"]]', 'WA Term Dates', '', 'inherit', 'closed', 'closed', '', '196-revision-v1', '', '', '2015-10-30 07:54:14', '2015-10-30 07:54:14', '', 196, 'http://teach-me-pd.dev/2015/10/196-revision-v1/', 0, 'revision', '', 0),
(392, 1, '2015-10-30 07:55:06', '2015-10-30 07:55:06', '[["                    2016","                  Term 1","                  Term 2","                  Term 3","                  Term 4"],["","Wed 3 Feb 2016 \\u2013 \\nFri 8 Apr 2016\\n\\nTeachers commence\\n Monday 1 February\\n 2016.","Tue 26 Apr 2016 \\u2013 \\nFri 1 Jul 2016","Mon 18 Jul 2016 \\u2013 \\nFri 23 Sep 2016","Mon 10 Oct 2016 \\u2013 \\nWed 21 Dec 2016\\n\\nTeachers finish\\n Thursday 22\\n December 2016."]]', 'TAS Term Dates 2016', '', 'inherit', 'closed', 'closed', '', '203-revision-v1', '', '', '2015-10-30 07:55:06', '2015-10-30 07:55:06', '', 203, 'http://teach-me-pd.dev/2015/10/203-revision-v1/', 0, 'revision', '', 0),
(393, 1, '2015-10-30 07:59:08', '2015-10-30 07:59:08', '<h3>Terms</h3>\nIt is important that you read these terms and conditions of use carefully. By using, visiting or browsing the TeachMe PD website you agree to be bound by these terms and conditions of use, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this web site are protected by applicable copyright and trademark law.\n\nChanges to terms and conditions of use\n\nWe reserve the right from time to time to change these terms and conditions at our sole discretion. The most current version of the terms and conditions will supersede all previous versions and can be reviewed by clicking on the "Terms &amp; conditions" hyperlink located at the bottom of the pages of the TeachMe PD website.\n<h3>Links</h3>\nSome of the hyperlinks on the TeachMe PD website may lead to other websites that are not controlled by or affiliated with TeachMe PD. Use of any such linked web site is at the user’s own risk.\nIn addition, other websites may link to the TeachMe PD website. TeachMe PD has not reviewed such websites and is not responsible for their content or privacy policies.\n<h3>Subscription</h3>\nTo subscribe to TeachMe PD’s services, you must be at least 18 years of age, have a valid email address, and be employed by an authorised school, organisation or government authority, or studying to become so.\n\nTo register for PD courses through TeachMe PD, you will need to be at least 18 years of age and must establish a retail account by providing a valid email address and contact details, and nominate an authorised body for payment of course bookings. If you are already a member of the subscription service, then there is no need to enter any further details.\n<h3>Maintaining account access and information</h3>\nYou are responsible for ensuring your subscription information as entered in the registration form and subsequently detailed in the "My account" section is current, accurate and complete. You can maintain and update your subscription information from the "My account" page and may request access to all personal information held by us as stated in our Privacy Policy. You are responsible for maintaining the confidentiality of your account and password and for restricting access to your account. TeachMe PD will charge you for PD bookings made as a result of you not maintaining your account information.\n\nWe reserve the right to keep indefinitely any information relating to members who have been identified as abusing TeachMe PD Services in any way.\n<h3>Right to suspend or cancel</h3>\nWe reserve the right to suspend or cancel your subscription if we have reasonable grounds to suspect that your information is incorrect, inaccurate or incomplete or there has been unauthorised access to your account.\nWe reserve the right to terminate or restrict your use of TeachMe PD Services, without notice, for any or no reason whatsoever.\n<h3>Payment &amp; Billing</h3>\nOnce minimum numbers for a course have been reached, you or your nominated school/organisation/agency, will be invoiced with the cost of any and all selected Professional Learning courses for immediate payment, prior to the commencement of the course.\n\nIn the event of non-attendance without a withdrawal, you or your nominated school/organisation/agency will be invoiced for the cost of your attendance, as if you had attended.\n\nTax invoices will be created and sent to you or your nominated school/organisation/authority by email only. Please contact our office to issue a tax invoice.\nIn the event that your nominated school/organisation/authority refuses payment, for any reason, you will be held personally responsible for the immediate payment of the invoice prior to commencement of the course, or you may be turned away on the day.\n<h3>Refunds</h3>\nAny billing related refunds will be at the discretion of TeachMe PD.\n<h3>Limitations on liability</h3>\nOther than as specified expressly in these terms and conditions we will not be liable for any loss or damage (including indirect or consequential loss or damage) however caused which may be suffered or incurred or which may arise directly or indirectly in respect of the use by you of the TeachMe PD service or the TeachMe PD website except to the extent that such liability cannot be excluded by law.\n\nWhere the law implies warranties or conditions into these terms and conditions which cannot be excluded, restricted or modified, to the extent which TeachMe PD is entitled, its liability will be limited in the manner permitted under section 68A of the Trade Practices Act 1974 at its option to in the case of a supply of services, the supply of the services again, the supply of equivalent services, the payment of the cost of having the services supplied again, or the payment of the cost of supplying equivalent services.\n<h3>Assignment</h3>\nWe may assign any or all of our rights and obligations pursuant to these terms and conditions without the need to obtain your consent.\n\nPrivacy\n\nAny information submitted on the TeachMe PD website is subject to our "Privacy policy". Please review our "Privacy policy" to understand our practices.\n\nCopyright\n\nAll content of the TeachMe PD website including text, graphics, logos, designs, photographs, button icons, images, audio/video clips, digital downloads, data compilations and software and its compilation is the property of TeachMe PD or its authorised PD providers and is protected by Australian and International copyright laws.\n\nUnless otherwise specified, the content of the TeachMe PD website is for your personal and non-commercial use and we grant you a limited license to access the TeachMe PD website for that purpose. You may not download (other than through page caching necessary for personal use), modify, copy, distribute, transmit, display, perform, reproduce, duplicate, publish, license, create derivative works from, or offer for sale any information contained on, or obtained from, the TeachMe PD website without our express written consent.\n\nChanges to terms and conditions of use\n\nWe reserve the right from time to time to change these terms and conditions at our sole discretion. We will notify you of any material updates by email. The most current version of the terms and conditions will supersede all previous versions and can be reviewed by clicking on the "Terms &amp; conditions" hyperlink located at the bottom of the pages of the TeachMe PD website.\n\nApplicable law\n\nYour use of this site is governed by, construed and enforced in accordance with the laws of Victoria, Australia. Disputes arising from your use of this site are exclusively subject to the jurisdiction of the courts of Victoria, Australia.', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '119-autosave-v1', '', '', '2015-10-30 07:59:08', '2015-10-30 07:59:08', '', 119, 'http://teach-me-pd.dev/2015/10/119-autosave-v1/', 0, 'revision', '', 0),
(394, 1, '2015-10-30 07:58:05', '2015-10-30 07:58:05', '<h3>Terms</h3>\r\nIt is important that you read these terms and conditions of use carefully. By using, visiting or browsing the TeachMe PD website you agree to be bound by these terms and conditions of use, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this web site are protected by applicable copyright and trademark law.\r\n\r\nChanges to terms and conditions of use\r\n\r\nWe reserve the right from time to time to change these terms and conditions at our sole discretion. The most current version of the terms and conditions will supersede all previous versions and can be reviewed by clicking on the "Terms &amp; conditions" hyperlink located at the bottom of the pages of the TeachMe PD website.\r\n\r\nLinks\r\n\r\nSome of the hyperlinks on the TeachMe PD website may lead to other websites that are not controlled by or affiliated with TeachMe PD. Use of any such linked web site is at the user’s own risk.\r\nIn addition, other websites may link to the TeachMe PD website. TeachMe PD has not reviewed such websites and is not responsible for their content or privacy policies.\r\n\r\nSubscription\r\n\r\nTo subscribe to TeachMe PD’s services, you must be at least 18 years of age, have a valid email address, and be employed by an authorised school, organisation or government authority, or studying to become so.\r\n\r\nTo register for PD courses through TeachMe PD, you will need to be at least 18 years of age and must establish a retail account by providing a valid email address and contact details, and nominate an authorised body for payment of course bookings. If you are already a member of the subscription service, then there is no need to enter any further details.\r\n\r\nMaintaining account access and information\r\n\r\nYou are responsible for ensuring your subscription information as entered in the registration form and subsequently detailed in the "My account" section is current, accurate and complete. You can maintain and update your subscription information from the "My account" page and may request access to all personal information held by us as stated in our Privacy Policy. You are responsible for maintaining the confidentiality of your account and password and for restricting access to your account. TeachMe PD will charge you for PD bookings made as a result of you not maintaining your account information.\r\n\r\nWe reserve the right to keep indefinitely any information relating to members who have been identified as abusing TeachMe PD Services in any way.\r\n\r\nRight to suspend or cancel\r\n\r\nWe reserve the right to suspend or cancel your subscription if we have reasonable grounds to suspect that your information is incorrect, inaccurate or incomplete or there has been unauthorised access to your account.\r\nWe reserve the right to terminate or restrict your use of TeachMe PD Services, without notice, for any or no reason whatsoever.\r\n\r\nPayment &amp; Billing\r\n\r\nOnce minimum numbers for a course have been reached, you or your nominated school/organisation/agency, will be invoiced with the cost of any and all selected Professional Learning courses for immediate payment, prior to the commencement of the course.\r\n\r\nIn the event of non-attendance without a withdrawal, you or your nominated school/organisation/agency will be invoiced for the cost of your attendance, as if you had attended.\r\n\r\nTax invoices will be created and sent to you or your nominated school/organisation/authority by email only. Please contact our office to issue a tax invoice.\r\nIn the event that your nominated school/organisation/authority refuses payment, for any reason, you will be held personally responsible for the immediate payment of the invoice prior to commencement of the course, or you may be turned away on the day.\r\n\r\nRefunds\r\n\r\nAny billing related refunds will be at the discretion of TeachMe PD.\r\n\r\nLimitations on liability\r\n\r\nOther than as specified expressly in these terms and conditions we will not be liable for any loss or damage (including indirect or consequential loss or damage) however caused which may be suffered or incurred or which may arise directly or indirectly in respect of the use by you of the TeachMe PD service or the TeachMe PD website except to the extent that such liability cannot be excluded by law.\r\n\r\nWhere the law implies warranties or conditions into these terms and conditions which cannot be excluded, restricted or modified, to the extent which TeachMe PD is entitled, its liability will be limited in the manner permitted under section 68A of the Trade Practices Act 1974 at its option to in the case of a supply of services, the supply of the services again, the supply of equivalent services, the payment of the cost of having the services supplied again, or the payment of the cost of supplying equivalent services.\r\n\r\nAssignment\r\n\r\nWe may assign any or all of our rights and obligations pursuant to these terms and conditions without the need to obtain your consent.\r\n\r\nPrivacy\r\n\r\nAny information submitted on the TeachMe PD website is subject to our "Privacy policy". Please review our "Privacy policy" to understand our practices.\r\n\r\nCopyright\r\n\r\nAll content of the TeachMe PD website including text, graphics, logos, designs, photographs, button icons, images, audio/video clips, digital downloads, data compilations and software and its compilation is the property of TeachMe PD or its authorised PD providers and is protected by Australian and International copyright laws.\r\n\r\nUnless otherwise specified, the content of the TeachMe PD website is for your personal and non-commercial use and we grant you a limited license to access the TeachMe PD website for that purpose. You may not download (other than through page caching necessary for personal use), modify, copy, distribute, transmit, display, perform, reproduce, duplicate, publish, license, create derivative works from, or offer for sale any information contained on, or obtained from, the TeachMe PD website without our express written consent.\r\n\r\nChanges to terms and conditions of use\r\n\r\nWe reserve the right from time to time to change these terms and conditions at our sole discretion. We will notify you of any material updates by email. The most current version of the terms and conditions will supersede all previous versions and can be reviewed by clicking on the "Terms &amp; conditions" hyperlink located at the bottom of the pages of the TeachMe PD website.\r\n\r\nApplicable law\r\n\r\nYour use of this site is governed by, construed and enforced in accordance with the laws of Victoria, Australia. Disputes arising from your use of this site are exclusively subject to the jurisdiction of the courts of Victoria, Australia.', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2015-10-30 07:58:05', '2015-10-30 07:58:05', '', 119, 'http://teach-me-pd.dev/2015/10/119-revision-v1/', 0, 'revision', '', 0),
(395, 1, '2015-10-30 07:59:23', '2015-10-30 07:59:23', '<h3>Terms</h3>\r\nIt is important that you read these terms and conditions of use carefully. By using, visiting or browsing the TeachMe PD website you agree to be bound by these terms and conditions of use, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this web site are protected by applicable copyright and trademark law.\r\n\r\nChanges to terms and conditions of use\r\n\r\nWe reserve the right from time to time to change these terms and conditions at our sole discretion. The most current version of the terms and conditions will supersede all previous versions and can be reviewed by clicking on the "Terms &amp; conditions" hyperlink located at the bottom of the pages of the TeachMe PD website.\r\n<h3>Links</h3>\r\nSome of the hyperlinks on the TeachMe PD website may lead to other websites that are not controlled by or affiliated with TeachMe PD. Use of any such linked web site is at the user’s own risk.\r\nIn addition, other websites may link to the TeachMe PD website. TeachMe PD has not reviewed such websites and is not responsible for their content or privacy policies.\r\n<h3>Subscription</h3>\r\nTo subscribe to TeachMe PD’s services, you must be at least 18 years of age, have a valid email address, and be employed by an authorised school, organisation or government authority, or studying to become so.\r\n\r\nTo register for PD courses through TeachMe PD, you will need to be at least 18 years of age and must establish a retail account by providing a valid email address and contact details, and nominate an authorised body for payment of course bookings. If you are already a member of the subscription service, then there is no need to enter any further details.\r\n<h3>Maintaining account access and information</h3>\r\nYou are responsible for ensuring your subscription information as entered in the registration form and subsequently detailed in the "My account" section is current, accurate and complete. You can maintain and update your subscription information from the "My account" page and may request access to all personal information held by us as stated in our Privacy Policy. You are responsible for maintaining the confidentiality of your account and password and for restricting access to your account. TeachMe PD will charge you for PD bookings made as a result of you not maintaining your account information.\r\n\r\nWe reserve the right to keep indefinitely any information relating to members who have been identified as abusing TeachMe PD Services in any way.\r\n<h3>Right to suspend or cancel</h3>\r\nWe reserve the right to suspend or cancel your subscription if we have reasonable grounds to suspect that your information is incorrect, inaccurate or incomplete or there has been unauthorised access to your account.\r\nWe reserve the right to terminate or restrict your use of TeachMe PD Services, without notice, for any or no reason whatsoever.\r\n<h3>Payment &amp; Billing</h3>\r\nOnce minimum numbers for a course have been reached, you or your nominated school/organisation/agency, will be invoiced with the cost of any and all selected Professional Learning courses for immediate payment, prior to the commencement of the course.\r\n\r\nIn the event of non-attendance without a withdrawal, you or your nominated school/organisation/agency will be invoiced for the cost of your attendance, as if you had attended.\r\n\r\nTax invoices will be created and sent to you or your nominated school/organisation/authority by email only. Please contact our office to issue a tax invoice.\r\nIn the event that your nominated school/organisation/authority refuses payment, for any reason, you will be held personally responsible for the immediate payment of the invoice prior to commencement of the course, or you may be turned away on the day.\r\n<h3>Refunds</h3>\r\nAny billing related refunds will be at the discretion of TeachMe PD.\r\n<h3>Limitations on liability</h3>\r\nOther than as specified expressly in these terms and conditions we will not be liable for any loss or damage (including indirect or consequential loss or damage) however caused which may be suffered or incurred or which may arise directly or indirectly in respect of the use by you of the TeachMe PD service or the TeachMe PD website except to the extent that such liability cannot be excluded by law.\r\n\r\nWhere the law implies warranties or conditions into these terms and conditions which cannot be excluded, restricted or modified, to the extent which TeachMe PD is entitled, its liability will be limited in the manner permitted under section 68A of the Trade Practices Act 1974 at its option to in the case of a supply of services, the supply of the services again, the supply of equivalent services, the payment of the cost of having the services supplied again, or the payment of the cost of supplying equivalent services.\r\n<h3>Assignment</h3>\r\nWe may assign any or all of our rights and obligations pursuant to these terms and conditions without the need to obtain your consent.\r\n<h3>Privacy</h3>\r\nAny information submitted on the TeachMe PD website is subject to our "Privacy policy". Please review our "Privacy policy" to understand our practices.\r\n<h3>Copyright</h3>\r\nAll content of the TeachMe PD website including text, graphics, logos, designs, photographs, button icons, images, audio/video clips, digital downloads, data compilations and software and its compilation is the property of TeachMe PD or its authorised PD providers and is protected by Australian and International copyright laws.\r\n\r\nUnless otherwise specified, the content of the TeachMe PD website is for your personal and non-commercial use and we grant you a limited license to access the TeachMe PD website for that purpose. You may not download (other than through page caching necessary for personal use), modify, copy, distribute, transmit, display, perform, reproduce, duplicate, publish, license, create derivative works from, or offer for sale any information contained on, or obtained from, the TeachMe PD website without our express written consent.\r\n<h3>Changes to terms and conditions of use</h3>\r\nWe reserve the right from time to time to change these terms and conditions at our sole discretion. We will notify you of any material updates by email. The most current version of the terms and conditions will supersede all previous versions and can be reviewed by clicking on the "Terms &amp; conditions" hyperlink located at the bottom of the pages of the TeachMe PD website.\r\n<h3>Applicable law</h3>\r\nYour use of this site is governed by, construed and enforced in accordance with the laws of Victoria, Australia. Disputes arising from your use of this site are exclusively subject to the jurisdiction of the courts of Victoria, Australia.', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2015-10-30 07:59:23', '2015-10-30 07:59:23', '', 119, 'http://teach-me-pd.dev/2015/10/119-revision-v1/', 0, 'revision', '', 0),
(396, 1, '2015-10-30 07:59:39', '2015-10-30 07:59:39', '<h3>Terms</h3>\r\nIt is important that you read these terms and conditions of use carefully. By using, visiting or browsing the TeachMe PD website you agree to be bound by these terms and conditions of use, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this web site are protected by applicable copyright and trademark law.\r\n<h3>Changes to terms and conditions of use</h3>\r\nWe reserve the right from time to time to change these terms and conditions at our sole discretion. The most current version of the terms and conditions will supersede all previous versions and can be reviewed by clicking on the "Terms &amp; conditions" hyperlink located at the bottom of the pages of the TeachMe PD website.\r\n<h3>Links</h3>\r\nSome of the hyperlinks on the TeachMe PD website may lead to other websites that are not controlled by or affiliated with TeachMe PD. Use of any such linked web site is at the user’s own risk.\r\nIn addition, other websites may link to the TeachMe PD website. TeachMe PD has not reviewed such websites and is not responsible for their content or privacy policies.\r\n<h3>Subscription</h3>\r\nTo subscribe to TeachMe PD’s services, you must be at least 18 years of age, have a valid email address, and be employed by an authorised school, organisation or government authority, or studying to become so.\r\n\r\nTo register for PD courses through TeachMe PD, you will need to be at least 18 years of age and must establish a retail account by providing a valid email address and contact details, and nominate an authorised body for payment of course bookings. If you are already a member of the subscription service, then there is no need to enter any further details.\r\n<h3>Maintaining account access and information</h3>\r\nYou are responsible for ensuring your subscription information as entered in the registration form and subsequently detailed in the "My account" section is current, accurate and complete. You can maintain and update your subscription information from the "My account" page and may request access to all personal information held by us as stated in our Privacy Policy. You are responsible for maintaining the confidentiality of your account and password and for restricting access to your account. TeachMe PD will charge you for PD bookings made as a result of you not maintaining your account information.\r\n\r\nWe reserve the right to keep indefinitely any information relating to members who have been identified as abusing TeachMe PD Services in any way.\r\n<h3>Right to suspend or cancel</h3>\r\nWe reserve the right to suspend or cancel your subscription if we have reasonable grounds to suspect that your information is incorrect, inaccurate or incomplete or there has been unauthorised access to your account.\r\nWe reserve the right to terminate or restrict your use of TeachMe PD Services, without notice, for any or no reason whatsoever.\r\n<h3>Payment &amp; Billing</h3>\r\nOnce minimum numbers for a course have been reached, you or your nominated school/organisation/agency, will be invoiced with the cost of any and all selected Professional Learning courses for immediate payment, prior to the commencement of the course.\r\n\r\nIn the event of non-attendance without a withdrawal, you or your nominated school/organisation/agency will be invoiced for the cost of your attendance, as if you had attended.\r\n\r\nTax invoices will be created and sent to you or your nominated school/organisation/authority by email only. Please contact our office to issue a tax invoice.\r\nIn the event that your nominated school/organisation/authority refuses payment, for any reason, you will be held personally responsible for the immediate payment of the invoice prior to commencement of the course, or you may be turned away on the day.\r\n<h3>Refunds</h3>\r\nAny billing related refunds will be at the discretion of TeachMe PD.\r\n<h3>Limitations on liability</h3>\r\nOther than as specified expressly in these terms and conditions we will not be liable for any loss or damage (including indirect or consequential loss or damage) however caused which may be suffered or incurred or which may arise directly or indirectly in respect of the use by you of the TeachMe PD service or the TeachMe PD website except to the extent that such liability cannot be excluded by law.\r\n\r\nWhere the law implies warranties or conditions into these terms and conditions which cannot be excluded, restricted or modified, to the extent which TeachMe PD is entitled, its liability will be limited in the manner permitted under section 68A of the Trade Practices Act 1974 at its option to in the case of a supply of services, the supply of the services again, the supply of equivalent services, the payment of the cost of having the services supplied again, or the payment of the cost of supplying equivalent services.\r\n<h3>Assignment</h3>\r\nWe may assign any or all of our rights and obligations pursuant to these terms and conditions without the need to obtain your consent.\r\n<h3>Privacy</h3>\r\nAny information submitted on the TeachMe PD website is subject to our "Privacy policy". Please review our "Privacy policy" to understand our practices.\r\n<h3>Copyright</h3>\r\nAll content of the TeachMe PD website including text, graphics, logos, designs, photographs, button icons, images, audio/video clips, digital downloads, data compilations and software and its compilation is the property of TeachMe PD or its authorised PD providers and is protected by Australian and International copyright laws.\r\n\r\nUnless otherwise specified, the content of the TeachMe PD website is for your personal and non-commercial use and we grant you a limited license to access the TeachMe PD website for that purpose. You may not download (other than through page caching necessary for personal use), modify, copy, distribute, transmit, display, perform, reproduce, duplicate, publish, license, create derivative works from, or offer for sale any information contained on, or obtained from, the TeachMe PD website without our express written consent.\r\n<h3>Changes to terms and conditions of use</h3>\r\nWe reserve the right from time to time to change these terms and conditions at our sole discretion. We will notify you of any material updates by email. The most current version of the terms and conditions will supersede all previous versions and can be reviewed by clicking on the "Terms &amp; conditions" hyperlink located at the bottom of the pages of the TeachMe PD website.\r\n<h3>Applicable law</h3>\r\nYour use of this site is governed by, construed and enforced in accordance with the laws of Victoria, Australia. Disputes arising from your use of this site are exclusively subject to the jurisdiction of the courts of Victoria, Australia.', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2015-10-30 07:59:39', '2015-10-30 07:59:39', '', 119, 'http://teach-me-pd.dev/2015/10/119-revision-v1/', 0, 'revision', '', 0),
(397, 1, '2015-10-30 09:50:34', '2015-10-30 09:50:34', '[gravityform id="2" title="false" description="false"]', 'Provider Application', '', 'publish', 'closed', 'closed', '', 'provider-application-2', '', '', '2015-10-30 09:50:34', '2015-10-30 09:50:34', '', 0, 'http://teach-me-pd.dev/?page_id=397', 0, 'page', '', 0),
(398, 1, '2015-10-30 09:50:34', '2015-10-30 09:50:34', '[gravityform id="2" title="false" description="false"]', 'Provider Application', '', 'inherit', 'closed', 'closed', '', '397-revision-v1', '', '', '2015-10-30 09:50:34', '2015-10-30 09:50:34', '', 397, 'http://teach-me-pd.dev/2015/10/397-revision-v1/', 0, 'revision', '', 0),
(399, 1, '2015-10-30 09:51:30', '2015-10-30 09:51:30', '', 'Join our Team', '', 'publish', 'closed', 'closed', '', 'join-our-team-2', '', '', '2015-10-30 09:51:30', '2015-10-30 09:51:30', '', 0, 'http://teach-me-pd.dev/?p=399', 5, 'nav_menu_item', '', 0),
(400, 1, '2015-10-30 11:47:20', '2015-10-30 11:47:20', '[table id=11 /]\r\n\r\n[table id=17 /]\r\n<h2>TAS Public Holidays</h2>\r\n[table id=18 /]\r\n\r\n[table id=19 /]', 'TAS Term dates', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2015-10-30 11:47:20', '2015-10-30 11:47:20', '', 67, 'http://teach-me-pd.dev/2015/10/67-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(401, 1, '2015-10-30 11:47:55', '2015-10-30 11:47:55', '[table id=20 /]\r\n\r\n[table id=21 /]\r\n<h2>VIC Public Holidays</h2>\r\n[table id=22 /]\r\n\r\n[table id=23 /]', 'VIC Term Dates', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-10-30 11:47:55', '2015-10-30 11:47:55', '', 57, 'http://teach-me-pd.dev/2015/10/57-revision-v1/', 0, 'revision', '', 0),
(402, 1, '2015-10-30 17:41:08', '2015-10-30 17:41:08', 'We are a connected and growing community of caring professionals, educators, young people and families. We take massive action to transform our learning, our wellbeing and our lives through the power of Human Literacy<sup>TM</sup>. To us, learning, inspiring and leading with heart matters.\r\n\r\nWe have four sectors of educational and wellbeing service provision:\r\n<ol>\r\n	<li>Educators &amp; Schools</li>\r\n	<li>Young People &amp; Families</li>\r\n	<li>Graduate Teachers, Preservice Teachers and CRTs (Edgrad Academy)</li>\r\n	<li>Business and Communities</li>\r\n</ol>\r\nOur work and leadership in all sectors of education, provides us with a wealth of expertise that drives our quality endorsed professional development services to schools and educators. We are strongly grounded in progressive pedagogies, curriculum development, holistic assessment, working with diverse learners, behaviour transformation, student engagement &amp; wellbeing, digital technologies &amp; digital learning, community cybersafety programs and whole school cultural change.\r\n\r\nAlthough we continually break new ground in providing innovative approaches to learning and wellbeing, where we think without a box, all of our work is supported by extensive research. Our experienced presenters continue to work with young people aged 3 to adult in different school and community settings which ensures we understand the current educational environment that informs our workshops and presentations.\r\n\r\nWe are educational. We are amazing. We are edumazing®. Join us to redesign the present and shape a future yet unimagined.', 'Edumazing', '', 'publish', 'closed', 'closed', '', 'edumazing', '', '', '2015-10-30 18:42:13', '2015-10-30 18:42:13', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_provider', '', 0),
(403, 1, '2015-10-30 17:34:46', '2015-10-30 17:34:46', '', 'powerofblogging', '', 'inherit', 'open', 'closed', '', 'powerofblogging', '', '', '2015-10-30 17:34:46', '2015-10-30 17:34:46', '', 402, 'http://teach-me-pd.dev//app/uploads/2015/10/powerofblogging.jpg', 0, 'attachment', 'image/jpeg', 0),
(404, 1, '2015-10-30 17:34:48', '2015-10-30 17:34:48', '', 'Orange', '', 'inherit', 'open', 'closed', '', 'orange', '', '', '2015-10-30 17:34:48', '2015-10-30 17:34:48', '', 402, 'http://teach-me-pd.dev//app/uploads/2015/10/Orange.png', 0, 'attachment', 'image/png', 0),
(405, 1, '2015-10-30 17:34:50', '2015-10-30 17:34:50', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2015-10-30 17:34:50', '2015-10-30 17:34:50', '', 402, 'http://teach-me-pd.dev//app/uploads/2015/10/logo.png', 0, 'attachment', 'image/png', 0),
(406, 1, '2015-10-30 17:35:02', '2015-10-30 17:35:02', '', 'edumazingbanner', '', 'inherit', 'open', 'closed', '', 'edumazingbanner', '', '', '2015-10-30 17:35:02', '2015-10-30 17:35:02', '', 402, 'http://teach-me-pd.dev//app/uploads/2015/10/edumazingbanner.png', 0, 'attachment', 'image/png', 0),
(407, 1, '2015-10-30 17:35:05', '2015-10-30 17:35:05', '', 'Community-Portrait', 'Edumazing', 'inherit', 'open', 'closed', '', 'community-portrait', '', '', '2015-10-30 17:43:51', '2015-10-30 17:43:51', '', 402, 'http://teach-me-pd.dev//app/uploads/2015/10/Community-Portrait.png', 0, 'attachment', 'image/png', 0),
(408, 1, '2015-10-30 17:35:08', '2015-10-30 17:35:08', '', 'BYODAppToolkit', '', 'inherit', 'open', 'closed', '', 'byodapptoolkit', '', '', '2015-10-30 17:35:08', '2015-10-30 17:35:08', '', 402, 'http://teach-me-pd.dev//app/uploads/2015/10/BYODAppToolkit.jpg', 0, 'attachment', 'image/jpeg', 0),
(409, 1, '2015-10-30 17:46:05', '2015-10-30 17:46:05', '[caption id="attachment_71" align="alignnone" width="300"]<a href="http://teach-me-pd.dev/organizer/andrell-education/"><img class="wp-image-71 size-medium" src="http://teach-me-pd.dev//app/uploads/2015/09/andress-300x300.jpeg" alt="andress" width="300" height="300" /></a> Andrell Education[/caption]\r\n\r\n[caption id="attachment_407" align="alignnone" width="295"]<a href="http://teach-me-pd.dev/organizer/edumazing/"><img class="wp-image-407" src="http://teach-me-pd.dev//app/uploads/2015/10/Community-Portrait-295x300.png" alt="Edumazing" width="295" height="300" /></a> Edumazing[/caption]\r\n<h3>Become a provider</h3>\r\nWe currently accepting application to be an provider on teachmepd.com.au. To apply, please fill out our application form <a href="http://teach-me-pd.dev/provider-application/">here</a>, and we shall be in touch.\r\n\r\n&nbsp;', 'Providers', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-10-30 17:46:05', '2015-10-30 17:46:05', '', 18, 'http://teach-me-pd.dev/2015/10/18-revision-v1/', 0, 'revision', '', 0),
(410, 15, '2015-10-30 03:24:08', '2015-10-30 03:24:08', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.\r\n\r\nYou will leave the day excited, enthused and wanting to race back to your classrooms to play Kung Fu Punctuation, and many other exciting games, with your students.\r\n\r\nIn this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. Presented to you by classroom teachers - who have used the program successfully across multiple year levels - you will become their students for the day, to really understand what a Big Write &amp; VCOP classroom looks and feels like.\r\n\r\nWe will cover all stages of the program from setting up your classroom, to integration into the literacy block, running the writing session, editing, up-levelling and analysis, goal setting, and touching on assessment and data tracking.\r\n\r\nThe session runs from 9:00am to 3:30pm. You will be provided with morning tea, lunch, and delegate pack including PowerPoint notes, Australian Criterion Scale and Student Friendly Criterion Scale. However, we ask that you bring a pen and extra note taking materials, as well as your enthusiasm.', 'Perth, Day 1 - Introduction to Big Write &amp; VCOP', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.', 'publish', 'open', 'closed', '', 'perth-day-1-introduction-to-big-write-vcop', '', '', '2015-10-30 20:57:54', '2015-10-30 20:57:54', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(411, 1, '2015-10-30 17:59:05', '2015-10-30 17:59:05', 'As schools move into a Bring Your Own Device (BYOD) environment, it is important to know what is available for students to use no matter the device they bring. Come along to discover some great BYOD apps, online spaces and strategies to maximise learning opportunities.\n\n&nbsp;\n\nThis workshop is suitable for Primary &amp; Secondary school educators, Special school staff, additional needs educators and educational support staff in Government, Catholic, and Independent schools. Pre-service teachers and CRTs will also benefit from attending.\n\n<em>Workshop Overview:</em>\n\nTeachers will engage in practical experiences using recommended apps and online spaces during an engaging and inspirational afternoon session. They will:\n\n<strong> </strong>\n<ul>\n	<li>Understand common and effective apps they can use at different stages of learning to enhance their BYOD toolkit</li>\n	<li>Engage in practical learning experiences they can instantly apply in their classroom</li>\n	<li>Overcome issues they may be experiencing implementing a BYOD environment</li>\n</ul>', 'BYOD App Toolkit (Afternoon workshop)', 'Teachers will engage in practical experiences using recommended apps and online spaces during an engaging and inspirational afternoon session.', 'inherit', 'closed', 'closed', '', '352-autosave-v1', '', '', '2015-10-30 17:59:05', '2015-10-30 17:59:05', '', 352, 'http://teach-me-pd.dev/2015/10/352-autosave-v1/', 0, 'revision', '', 0),
(412, 1, '2015-10-30 18:00:07', '2015-10-30 18:00:07', '', 'Edumazing Educational Studios', '', 'publish', 'closed', 'closed', '', 'edumazing-educational-studios', '', '', '2015-10-30 18:00:07', '2015-10-30 18:00:07', '', 0, 'http://teach-me-pd.dev/venue/edumazing-educational-studios/', 0, 'tribe_venue', '', 0),
(413, 1, '2015-10-30 03:24:08', '2015-10-30 03:24:08', 'As schools move into a Bring Your Own Device (BYOD) environment, it is important to know what is available for students to use no matter the device they bring. Come along to discover some great BYOD apps, online spaces and strategies to maximise learning opportunities.\r\n\r\n<span style="color: #ffcc00;"><em>Suitability:</em></span>\r\n\r\nThis workshop is suitable for Primary &amp; Secondary school educators, Special school staff, additional needs educators and educational support staff in Government, Catholic, and Independent schools. Pre-service teachers and CRTs will also benefit from attending.\r\n\r\n<span style="color: #ffcc00;"><em>Workshop Overview:</em></span>\r\n\r\nTeachers will engage in practical experiences using recommended apps and online spaces during an engaging and inspirational afternoon session. They will:\r\n<ul>\r\n	<li>Understand common and effective apps they can use at different stages of learning to enhance their BYOD toolkit</li>\r\n	<li>Engage in practical learning experiences they can instantly apply in their classroom</li>\r\n	<li>Overcome issues they may be experiencing implementing a BYOD environment</li>\r\n</ul>\r\n<span style="color: #ffcc00;"><strong>Where: </strong></span>\r\n\r\nDarebin Arts &amp; Entertainment Centre\r\n\r\nCnr Bell St &amp; St Georges Rd, Preston\r\n\r\n<strong><span style="color: #ffcc00;">What to bring:</span>  </strong>\r\n\r\nParticipants need to bring their own mobile device (that can wirelessly access internet, internet connectivity provided) and your enthusiasm.\r\n\r\n<span style="color: #ffcc00;"><strong>What’s provided:</strong>  </span>\r\n\r\nParticipants will receive refreshments upon arrival.  All other materials, tools and resources will be provided on the day.\r\n\r\n<strong><span style="color: #ffcc00;">Time: </span>                           </strong>\r\n\r\n4:00pm Start, 6.00pm Finish', 'BYOD App Toolkit (Afternoon workshop) - Preston', 'Teachers will engage in practical experiences using recommended apps and online spaces during an engaging and inspirational afternoon session.', 'publish', 'open', 'closed', '', 'byod-app-toolkit-2', '', '', '2015-11-01 00:01:51', '2015-11-01 00:01:51', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(414, 1, '2015-10-30 18:02:45', '2015-10-30 18:02:45', '', 'Darebin Arts & Entertainment Centre', '', 'publish', 'closed', 'closed', '', 'darebin-arts-entertainment-centre', '', '', '2015-10-30 18:02:45', '2015-10-30 18:02:45', '', 0, 'http://teach-me-pd.dev/venue/darebin-arts-entertainment-centre/', 0, 'tribe_venue', '', 0),
(415, 1, '2015-10-30 03:24:08', '2015-10-30 03:24:08', '<strong>There are growing requests from teachers for support on how to effectively engage students who are reluctant to learn at school especially in the vital area of Literacy. There is also a need to update teachers’ professional knowledge in using ICT as a powerful tool that can make a greater difference in learning. We are pleased to provide a workshop using ICT to improve student engagement for reluctant learners within the Early and Middle Years focusing on Literacy.</strong>\r\n\r\n<span style="text-decoration: underline;"><span style="color: #ffcc00; text-decoration: underline;">Suitability<em>:</em></span></span>\r\n\r\nThis workshop is suitable for Educators (Primary, Secondary &amp; Special Needs), Support staff and pre-service teachers.\r\n\r\n<span style="color: #ffcc00;"><em><u>Workshop Overview: </u></em></span>\r\n\r\nThis full day eLearning Literacy workshop for classroom teachers, address the key issues in student disengagement that prevent students from reaching their full potential. Teachers will participate in innovative and practical hands-on literacy activities (especially using ICT) that motivate reluctant learners, improve student outcomes and can be immediately applied in the Early Years and Middle Years classrooms.\r\n\r\n&nbsp;\r\n\r\n<span style="color: #ffcc00;"><em>This full day workshop will allow classroom teachers to successfully:</em></span>\r\n<ul>\r\n	<li>Identify key issues that disengage students in Literacy;</li>\r\n	<li>Understand how to engage students using effective eLearning strategies &amp; tools;</li>\r\n	<li>Experience the most relevant and motivating use of ICT to achieve student outcomes in Literacy at different learning stages;</li>\r\n	<li>Apply all e5 Principles using ICT to ensure learning progress;</li>\r\n	<li>Provide incidental authentic assessment opportunities that guide achievable learning outcomes;</li>\r\n	<li>Be empowered to make a positive difference</li>\r\n</ul>\r\n<strong> </strong>\r\n<p style="text-align: left;"><strong><span style="color: #ffcc00;">Where:</span></strong></p>\r\n<p style="text-align: left;"><span style="color: #000000;">Clu</span>b Ringwood, Maroondah Hwy, Ringwood Vic</p>\r\n<p style="text-align: left;"><strong><span style="color: #ffcc00;">What to bring:</span> </strong></p>\r\n<p style="text-align: left;">Participants need to bring a pen, a digital device or laptop and their enthusiasm.</p>\r\n<p style="text-align: left;"><span style="color: #ffcc00;"><strong>What’s provided:</strong></span></p>\r\n<p style="text-align: left;">Participants will receive pre-workshop refreshments upon arrival, morning tea and a deliciously catered lunch.</p>\r\n<p style="text-align: left;">All other materials, tools and resources will be provided on the day.</p>\r\n<p style="text-align: left;"><span style="color: #ffcc00;"><strong>Time:</strong></span></p>\r\n<p style="text-align: left;">8.45am Registration, 9am Start, 3.30pm Finish</p>\r\n<p style="text-align: center;"><span style="color: #ffcc00;"><u>Here is some feedback we have had from teachers about this Workshop:</u></span></p>\r\n<p style="text-align: center;"><em>"A fun and engaging way to hook teachers into becoming extraordinary teachers - not ordinary teachers!" </em></p>\r\n<p style="text-align: center;"><em>"This workshop stops you from thinking that reluctant learners are lazy, or can\'t do things, but shows you that these learners  are just not ready to learn, and demonstrates various ways to help engage them and get them ready in life." </em></p>\r\n<p style="text-align: center;"><em>"This is a highly professional, relevant, informative and \'hands on\' P.D. The best P.D I have been to!"</em></p>', 'Engaging Reluctant Literacy Learners - Ringwood', 'This full day eLearning Literacy workshop for classroom teachers, address the key issues in student disengagement that prevent students from reaching their full potential. Teachers will participate in innovative and practical hands-on literacy activities (especially using ICT) that motivate reluctant learners, improve student outcomes and can be immediately applied in the Early Years and Middle Years classrooms.', 'publish', 'open', 'closed', '', 'engaging-reluctant-literacy-learners', '', '', '2015-10-31 23:54:35', '2015-10-31 23:54:35', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(416, 1, '2015-10-30 18:07:53', '2015-10-30 18:07:53', '', 'engagingreluctantlearners', '', 'inherit', 'open', 'closed', '', 'engagingreluctantlearners', '', '', '2015-10-30 18:07:53', '2015-10-30 18:07:53', '', 415, 'http://teach-me-pd.dev//app/uploads/2015/10/engagingreluctantlearners.jpg', 0, 'attachment', 'image/jpeg', 0),
(417, 1, '2015-10-30 18:13:02', '2015-10-30 18:13:02', '', 'Club Ringwood', '', 'publish', 'closed', 'closed', '', 'club-ringwood', '', '', '2015-10-30 18:13:02', '2015-10-30 18:13:02', '', 0, 'http://teach-me-pd.dev/venue/club-ringwood/', 0, 'tribe_venue', '', 0),
(418, 1, '2015-10-30 03:24:08', '2015-10-30 03:24:08', '<strong>There are growing requests from teachers for support on how to effectively engage students who are reluctant to learn at school especially in the vital area of Literacy. There is also a need to update teachers’ professional knowledge in using ICT as a powerful tool that can make a greater difference in learning. We are pleased to provide a workshop using ICT to improve student engagement for reluctant learners within the Early and Middle Years focusing on Literacy.</strong>\r\n\r\n<span style="text-decoration: underline;"><span style="color: #ffcc00; text-decoration: underline;">Suitability<em>:</em></span></span>\r\n\r\nThis workshop is suitable for Educators (Primary, Secondary &amp; Special Needs), Support staff and pre-service teachers.\r\n\r\n<span style="color: #ffcc00;"><em><u>Workshop Overview: </u></em></span>\r\n\r\nThis full day eLearning Literacy workshop for classroom teachers, address the key issues in student disengagement that prevent students from reaching their full potential. Teachers will participate in innovative and practical hands-on literacy activities (especially using ICT) that motivate reluctant learners, improve student outcomes and can be immediately applied in the Early Years and Middle Years classrooms.\r\n\r\n<span style="color: #ffcc00;"><em>This full day workshop will allow classroom teachers to successfully:</em></span>\r\n<ul>\r\n	<li>Identify key issues that disengage students in Literacy;</li>\r\n	<li>Understand how to engage students using effective eLearning strategies &amp; tools;</li>\r\n	<li>Experience the most relevant and motivating use of ICT to achieve student outcomes in Literacy at different learning stages;</li>\r\n	<li>Apply all e5 Principles using ICT to ensure learning progress;</li>\r\n	<li>Provide incidental authentic assessment opportunities that guide achievable learning outcomes;</li>\r\n	<li>Be empowered to make a positive difference</li>\r\n</ul>\r\n<strong> </strong>\r\n<p style="text-align: left;"><strong><span style="color: #ffcc00;">Where:</span></strong></p>\r\nEdumazing Educational Studios\r\n\r\nLevel 1/84 Synnot St, Werribee\r\n<p style="text-align: left;"><strong><span style="color: #ffcc00;">What to bring:</span> </strong></p>\r\n<p style="text-align: left;">Participants need to bring a pen, a digital device or laptop and their enthusiasm.</p>\r\n<p style="text-align: left;"><span style="color: #ffcc00;"><strong>What’s provided:</strong></span></p>\r\n<p style="text-align: left;">Participants will receive pre-workshop refreshments upon arrival, morning tea and a deliciously catered lunch.</p>\r\n<p style="text-align: left;">All other materials, tools and resources will be provided on the day.</p>\r\n<p style="text-align: left;"><span style="color: #ffcc00;"><strong>Time:</strong></span></p>\r\n<p style="text-align: left;">8.45am Registration, 9am Start, 3.30pm Finish</p>\r\n<p style="text-align: center;"><span style="color: #ffcc00;"><u>Here is some feedback we have had from teachers about this Workshop:</u></span></p>\r\n<p style="text-align: center;"><em>"A fun and engaging way to hook teachers into becoming extraordinary teachers - not ordinary teachers!" </em></p>\r\n<p style="text-align: center;"><em>"This workshop stops you from thinking that reluctant learners are lazy, or can\'t do things, but shows you that these learners  are just not ready to learn, and demonstrates various ways to help engage them and get them ready in life." </em></p>\r\n<p style="text-align: center;"><em>"This is a highly professional, relevant, informative and \'hands on\' P.D. The best P.D I have been to!"</em></p>', 'Engaging Reluctant Literacy Learners- Werribee', 'This full day eLearning Literacy workshop for classroom teachers, address the key issues in student disengagement that prevent students from reaching their full potential. Teachers will participate in innovative and practical hands-on literacy activities (especially using ICT) that motivate reluctant learners, improve student outcomes and can be immediately applied in the Early Years and Middle Years classrooms.', 'publish', 'open', 'closed', '', 'engaging-reluctant-literacy-learners-2', '', '', '2015-10-31 23:53:11', '2015-10-31 23:53:11', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(419, 1, '2015-10-30 03:24:08', '2015-10-30 03:24:08', 'Blogging is transforming the way we learn, collaborate and reflect. It offers authentic assessment opportunities, improves literacy skills and can be used by educators for many purposes including classroom digital portfolios, professional portfolios and as a professional learning tool.  Find out just how easy it is to setup your own blog for yourself and for your students.\r\n\r\n<span style="color: #ffcc00;"><em><u>Suitability:</u></em></span>\r\n\r\nThis workshop is suitable for Educators (Primary, Secondary &amp; Special Needs), Support staff and pre-service teachers.\r\n\r\n<span style="color: #ffcc00;"><em><u>Workshop Overview: </u></em></span>\r\n\r\nTeachers will experience practical hands on activities, professional conversations, blogging tools and additional support resources throughout the entire day.\r\n\r\n<span style="color: #ffcc00;"><em>This hands-on eLearning workshop will allow classroom teachers to successfully:</em></span>\r\n<ul>\r\n	<li>Understand what Blogs are, including different types and uses;</li>\r\n	<li>Create a simple Word Press Blog via edublogs (private school teachers) or Global 2 (public school teachers);</li>\r\n	<li>Explore how blogs improve student literacy skills and engagement;</li>\r\n	<li>Experience how blogs can be used as powerful authentic assessment tools;</li>\r\n	<li>Access strategies and activities to use blogs effectively in the classroom based on student needs and stages of learning;</li>\r\n	<li>Access outstanding blogs that can be used with students in the classroom to support different areas of the curriculum (for Primary &amp; Secondary students);</li>\r\n	<li>Identify important protocols and practices in the effective use of blogs including privacy and communication with parents/guardians;<strong> </strong></li>\r\n</ul>\r\n<strong><span style="color: #ffcc00;">Where: </span>            </strong>\r\n\r\nBurwood Corporate Centre (BCC)\r\n\r\nDeakin University\r\n\r\nLevel 2 Building BC\r\nMelbourne Burwood Campus, Burwood\r\n\r\n<strong><span style="color: #ffcc00;">What to bring:</span>              </strong>\r\n\r\nParticipants need to bring a pen, a digital device or laptop and their enthusiasm.\r\n\r\n<span style="color: #ffcc00;"><strong>What’s provided:</strong></span>\r\n\r\nParticipants will receive pre-workshop refreshments upon arrival, morning tea and a\r\n\r\ndeliciously catered lunch.  All other materials, tools and resources will be provided on the day.\r\n\r\n<strong><span style="color: #ffcc00;">Time:</span>                            </strong>\r\n\r\n8.45am Registration, 9am Start, 3.30pm Finish\r\n<p style="text-align: center;"><span style="color: #ffcc00;"><u>Here is some feedback we have had from teachers about this Workshop:</u></span></p>\r\n<p style="text-align: center;"><em>"EDU-mazing!! Perfect course for 21st century learners." - Felicity.</em></p>\r\n<p style="text-align: center;"><em>"Totally worth it! I have left with 2 blogs created &amp; a heap of resources to go &amp; explore &amp; play with." - Jessica.</em></p>\r\n<p style="text-align: center;"><em>"A great day, a lot of interesting, exciting and engaging information was given. It really gave me a new enthusiasm for blogging within my classroom. A great tool to get the kids excited." - Kate.</em></p>', 'The Power of Blogging- Burwood', 'Teachers will experience practical hands on activities, professional conversations, blogging tools and additional support resources throughout the entire day.  ', 'publish', 'open', 'closed', '', 'the-power-of-blogging', '', '', '2015-11-01 00:00:05', '2015-11-01 00:00:05', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(420, 1, '2015-10-30 18:18:25', '2015-10-30 18:18:25', '', 'The Power of Blogging (Full day workshop)', 'Teachers will experience practical hands on activities, professional conversations, blogging tools and additional support resources throughout the entire day.  ', 'publish', 'open', 'closed', '', 'the-power-of-blogging-full-day-workshop', '', '', '2015-10-30 18:18:40', '2015-10-30 18:18:40', '', 0, 'http://teach-me-pd.dev/product/the-power-of-blogging-full-day-workshop/', 0, 'product', '', 0),
(421, 1, '2015-10-30 18:20:55', '2015-10-30 18:20:55', '', 'Burwood Corporate Centre (BCC)', '', 'publish', 'closed', 'closed', '', 'burwood-corporate-centre-bcc', '', '', '2015-10-30 18:22:21', '2015-10-30 18:22:21', '', 0, 'http://teach-me-pd.dev/venue/burwood-corporate-centre-bcc/', 0, 'tribe_venue', '', 0),
(422, 1, '2015-10-30 18:23:48', '2015-10-30 18:23:48', '', 'Engaging Reluctant Literacy Learners (Full day workshop)', 'This full day eLearning Literacy workshop for classroom teachers, address the key issues in student disengagement that prevent students from reaching their full potential. Teachers will participate in innovative and practical hands-on literacy activities (especially using ICT) that motivate reluctant learners, improve student outcomes and can be immediately applied in the Early Years and Middle Years classrooms.', 'publish', 'open', 'closed', '', 'engaging-reluctant-literacy-learners-full-day-workshop', '', '', '2015-10-30 18:23:48', '2015-10-30 18:23:48', '', 0, 'http://teach-me-pd.dev/product/engaging-reluctant-literacy-learners-full-day-workshop/', 0, 'product', '', 0),
(423, 1, '2015-10-30 18:24:57', '2015-10-30 18:24:57', '', 'Engaging Reluctant Literacy Learners (Full day workshop)', '', 'publish', 'open', 'closed', '', 'engaging-reluctant-literacy-learners-full-day-workshop-2', '', '', '2015-10-31 23:54:30', '2015-10-31 23:54:30', '', 0, 'http://teach-me-pd.dev/product/engaging-reluctant-literacy-learners-full-day-workshop-2/', 0, 'product', '', 0),
(424, 1, '2015-10-30 18:25:57', '2015-10-30 18:25:57', '', 'BYOD App Toolkit (Afternoon workshop)', 'Teachers will engage in practical experiences using recommended apps and online spaces during an engaging and inspirational afternoon session.', 'publish', 'open', 'closed', '', 'byod-app-toolkit-afternoon-workshop', '', '', '2015-10-30 18:25:57', '2015-10-30 18:25:57', '', 0, 'http://teach-me-pd.dev/product/byod-app-toolkit-afternoon-workshop/', 0, 'product', '', 0),
(425, 1, '2015-10-30 19:16:13', '2015-10-30 19:16:13', 'DIPL is a school based literacy program, written for classroom use.\r\n\r\nDIPL, in line with the national English curriculum,\r\n<em>‘aims to develop students’ knowledge of language and literature and to consolidate and expand their literacy skills’.</em>\r\n\r\nDIPL’s logical and systematic approach to reading, writing and spelling, means that <strong>all students can benefit</strong>...\r\nstruggling students can learn to develop ‘tools’ that help them,\r\nwhile more able students enjoy finding out why words and sentences are like they are,\r\nand can then transfer this knowledge and understanding to more widespread situations.', 'DIPL- Doorway to Practical Learning', '', 'publish', 'closed', 'closed', '', 'dipl-doorway-to-practical-learning', '', '', '2015-10-30 19:26:47', '2015-10-30 19:26:47', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_provider', '', 0),
(426, 1, '2015-10-30 19:15:40', '2015-10-30 19:15:40', '', 'DIPL Logo HR', '', 'inherit', 'open', 'closed', '', 'dipl-logo-hr', '', '', '2015-10-30 19:15:40', '2015-10-30 19:15:40', '', 425, 'http://teach-me-pd.dev//app/uploads/2015/10/DIPL-Logo-HR.png', 0, 'attachment', 'image/png', 0),
(427, 1, '2015-10-30 19:15:42', '2015-10-30 19:15:42', '', 'DIPL', '', 'inherit', 'open', 'closed', '', 'dipl', '', '', '2015-10-30 19:15:42', '2015-10-30 19:15:42', '', 425, 'http://teach-me-pd.dev//app/uploads/2015/10/DIPL.jpg', 0, 'attachment', 'image/jpeg', 0),
(428, 1, '2015-10-30 19:19:32', '2015-10-30 19:19:32', '', 'Untitled 4', '', 'inherit', 'open', 'closed', '', 'untitled-4', '', '', '2015-10-30 19:19:32', '2015-10-30 19:19:32', '', 425, 'http://teach-me-pd.dev//app/uploads/2015/10/Untitled-4.png', 0, 'attachment', 'image/png', 0),
(429, 1, '2015-10-30 19:19:35', '2015-10-30 19:19:35', '', 'dipllogo@2x', '', 'inherit', 'open', 'closed', '', 'dipllogo2x', '', '', '2015-10-30 19:19:35', '2015-10-30 19:19:35', '', 425, 'http://teach-me-pd.dev//app/uploads/2015/10/dipllogo@2x.png', 0, 'attachment', 'image/png', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(430, 1, '2015-10-30 19:26:11', '2015-10-30 19:26:11', '', 'Dipllogo', '', 'inherit', 'open', 'closed', '', 'dipllogo', '', '', '2015-10-30 19:26:11', '2015-10-30 19:26:11', '', 425, 'http://teach-me-pd.dev//app/uploads/2015/10/Dipllogo.jpg', 0, 'attachment', 'image/jpeg', 0),
(431, 1, '2015-10-30 19:26:13', '2015-10-30 19:26:13', '', 'Dipllogo2', '', 'inherit', 'open', 'closed', '', 'dipllogo2', '', '', '2015-10-30 19:26:13', '2015-10-30 19:26:13', '', 425, 'http://teach-me-pd.dev//app/uploads/2015/10/Dipllogo2.jpg', 0, 'attachment', 'image/jpeg', 0),
(432, 1, '2015-10-30 19:45:31', '2015-10-30 19:45:31', '<h2>Developmental curriculum from Foundation to Year 6</h2>\r\nIdeas are built on and expanded as students move from level to level,  ensuring that no content is repeated.\r\n\r\nMAPPEN is written to match maturity and readiness of students at each level.\r\n\r\nWith MAPPEN all students are investigating the same concept at the same time.\r\n\r\n&nbsp;\r\n\r\nhttps://www.youtube.com/channel/UCidqvUzKghvOSOhhhwdICTA', 'Mappen', '', 'publish', 'closed', 'closed', '', 'mappen', '', '', '2015-10-30 19:46:01', '2015-10-30 19:46:01', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_provider', '', 0),
(433, 1, '2015-10-30 19:44:20', '2015-10-30 19:44:20', '', 'Mappen logo', '', 'inherit', 'open', 'closed', '', 'mappen-logo', '', '', '2015-10-30 19:44:20', '2015-10-30 19:44:20', '', 432, 'http://teach-me-pd.dev//app/uploads/2015/10/Mappen-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(434, 1, '2015-10-30 19:44:23', '2015-10-30 19:44:23', '', '11698622_1460129144304927_3718016601140030839_n', '', 'inherit', 'open', 'closed', '', '11698622_1460129144304927_3718016601140030839_n', '', '', '2015-10-30 19:44:23', '2015-10-30 19:44:23', '', 432, 'http://teach-me-pd.dev//app/uploads/2015/10/11698622_1460129144304927_3718016601140030839_n.png', 0, 'attachment', 'image/png', 0),
(435, 1, '2015-10-30 19:44:25', '2015-10-30 19:44:25', '', '11705808_1473249186326256_9003493764925092127_o', '', 'inherit', 'open', 'closed', '', '11705808_1473249186326256_9003493764925092127_o', '', '', '2015-10-30 19:44:25', '2015-10-30 19:44:25', '', 432, 'http://teach-me-pd.dev//app/uploads/2015/10/11705808_1473249186326256_9003493764925092127_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(436, 1, '2015-10-30 19:44:27', '2015-10-30 19:44:27', '', '11850517_1473249586326216_5189513214850165239_o', '', 'inherit', 'open', 'closed', '', '11850517_1473249586326216_5189513214850165239_o', '', '', '2015-10-30 19:44:27', '2015-10-30 19:44:27', '', 432, 'http://teach-me-pd.dev//app/uploads/2015/10/11850517_1473249586326216_5189513214850165239_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(437, 15, '2015-10-30 20:01:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-10-30 20:01:14', '0000-00-00 00:00:00', '', 0, 'http://teach-me-pd.dev/?p=437', 0, 'post', '', 0),
(438, 15, '2015-10-30 20:31:10', '2015-10-30 20:31:10', '', 'Introduction to Big Write &amp; VCOP', 'In this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. Presented to you by classroom teachers - who have used the program successfully across multiple year levels - you will become their students for the day, to really understand what a Big Write &amp; VCOP classroom looks and feels like.', 'publish', 'open', 'closed', '', 'day-1-introduction-to-big-write-vcop-2', '', '', '2015-10-30 20:48:50', '2015-10-30 20:48:50', '', 0, 'http://teach-me-pd.dev/product/day-1-introduction-to-big-write-vcop-2/', 0, 'product', '', 0),
(439, 1, '2015-10-30 20:37:46', '2015-10-30 20:37:46', 'Ibis Styles, Albury. Riverina Highway, Lake Hume Village, Albury NSW 2640', 'Ibis Styles, Albury', '', 'inherit', 'closed', 'closed', '', '342-autosave-v1', '', '', '2015-10-30 20:37:46', '2015-10-30 20:37:46', '', 342, 'http://teach-me-pd.dev/2015/10/342-autosave-v1/', 0, 'revision', '', 0),
(440, 1, '2015-10-30 20:40:56', '2015-10-30 20:40:56', 'The National Golf Course, Long Island Site, 165/235 Frankston-Dandenong Rd, Frankston VIC 3199', 'The National Golf Course, Long Island Site', '', 'inherit', 'closed', 'closed', '', '130-autosave-v1', '', '', '2015-10-30 20:40:56', '2015-10-30 20:40:56', '', 130, 'http://teach-me-pd.dev/2015/10/130-autosave-v1/', 0, 'revision', '', 0),
(441, 1, '2015-10-30 20:42:49', '2015-10-30 20:42:49', 'Ibis Styles,  25-41 Princes Highway, Sale VIC 3850', 'Ibis Styles, Sale', '', 'publish', 'closed', 'closed', '', 'ibis-styles-sale', '', '', '2015-10-30 20:42:49', '2015-10-30 20:42:49', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_venue', '', 0),
(442, 1, '2015-10-30 20:52:17', '2015-10-30 20:52:17', 'We understand that there was a lot of information in Day 1, and that we only just touched on assessment so as not to overwhelm you. When you walked away, your focus should have been on setting up your classroom and introducing the program slowly. For that reason, we have started running Day 2, dedicated to Assessment &amp; Data Tracking.\n\nIt is imperative that you have not only completed Day 1, but have set up your classroom and started having a go at assessment with the Australian Criterion Scale, (we recommend at least 4-6 months between sessions).\n\nParticipants are required to bring 2 photocopies of low, mid, and high assessment pieces from their classrooms which they have assessed using the Australian Criterion Scale, using the moderating template (available on the website in the ‘Downloads’ section).\n\nDay 2 will cover the more intensive Assessment &amp; Data Tracking element of the program for both your classroom and at a school wide tracking level.\n\nIn this session, we will reflect on your progress so far, share with you in your celebrations, and seek to help overcome any hurdles you have come across that are preventing you from reaching your goals. From there we are going to model and practise placing children on an appropriate level and discuss why it is important to look at all aspects of the writing piece, and not to pre-judge based on length, handwriting, etc.\n\nThe next step is gaining a deeper understanding of the criteria at various levels, so we will be modelling, sharing, and practising on the pieces you have brought in to make it more relevant to your classroom. From this, we will look at goal setting appropriate to moving that child forward.\n\nWe will then look at data tracking in your classroom, across your year level, and school wide, showing you different ways of collecting, using, and recording data to ensure it is purposeful.\n\nOf course, during the day we will still suggest and play games and activities that you can take back to your classroom to add to your resource kits. As usual with the Andrell team, you will be guaranteed chocolates and a laugh.', 'Sale Day 2 - Assessment and Data Tracking', 'We understand that there was a lot of information in Day 1, and that we only just touched on assessment so as not to overwhelm you. When you walked away, your focus should have been on setting up your classroom and introducing the program slowly. For that reason, we have started running Day 2, dedicated to Assessment &amp; Data Tracking.\n\nIt is imperative that you have not only completed Day 1, but have set up your classroom and started having a go at assessment with the Australian Criterion Scale, (we recommend at least 4-6 months between sessions).', 'inherit', 'closed', 'closed', '', '367-autosave-v1', '', '', '2015-10-30 20:52:17', '2015-10-30 20:52:17', '', 367, 'http://teach-me-pd.dev/2015/10/367-autosave-v1/', 0, 'revision', '', 0),
(443, 1, '2015-10-30 20:53:58', '2015-10-30 20:53:58', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.\n\nYou will leave the day excited, enthused and wanting to race back to your classrooms to play Kung Fu Punctuation, and many other exciting games, with your students.\n\nIn this session, we will provide you with all the skills and knowledge that you require to get your classroom and students ready for an engaging writing journey. Presented to you by classroom teachers - who have used the program successfully across multiple year levels - you will become their students for the day, to really understand what a Big Write &amp; VCOP classroom looks and feels like.\n\nWe will cover all stages of the program from setting up your classroom, to integration into the literacy block, running the writing session, editing, up-levelling and analysis, goal setting, and touching on assessment and data tracking.\n\nThe session runs from 9:00am to 3:30pm. You will be provided with morning tea, lunch, and delegate pack including PowerPoint notes, Australian Criterion Scale and Student Friendly Criterion Scale. However, we ask that you bring a pen and extra note taking materials, as well as your enthusiasm.', 'Warrnambool Day 1 - Introduction to Big Write &amp; VCOP', 'Like the students in our classrooms, we want you to be engaged, excited and leave with a love of writing. What better way to ensure that, than to take you on a voyage into our Big Write &amp; VCOP antics and adventures. Full of laughs, a few tears (from us), and lots of fun, we’ll do everything we can to ensure that it’s one of the best PD’s you have ever been too.', 'inherit', 'closed', 'closed', '', '344-autosave-v1', '', '', '2015-10-30 20:53:58', '2015-10-30 20:53:58', '', 344, 'http://teach-me-pd.dev/2015/10/344-autosave-v1/', 0, 'revision', '', 0),
(444, 1, '2015-10-31 04:46:09', '2015-10-31 04:46:09', 'Kinect2Dance is a Melbourne based dance company dedicated to connecting students with\r\ndance!\r\nFostering the needs of kinesthetic learners can often be challenging, especially for education\r\nprofessionals with little experience in dance. Due to this, and the importance of dance within the\r\nAustralian National Curriculum, Kinect2Dance offers half term and full term dance courses specifically\r\nfor primary and secondary schools.\r\nOur teachers have had over 8 years experience in a vast range of styles of dance, from years Foundation\r\nto University students.\r\nOur dance programs are structured around the requirements of the Australian National Curriculum, and\r\nrun one day per week for either for half the term or a whole term. Our classes run for 40-60mins on site,\r\nand embody socialisation and transcendence.\r\nEach program is individualised for your schools needs; working towards outcomes such as school discos,\r\nPhysical education and Performing arts, school concerts, barn dance, graduation and much more.\r\nOur highly experienced instructors teach a variety of modern and traditional dances, which encourage and\r\nsupport resilience, co-operation, mindfulness and confidence in these fun and energetic dance lessons.', 'Kinect2Dance', '', 'publish', 'closed', 'closed', '', 'kinect2dance', '', '', '2015-10-31 04:46:09', '2015-10-31 04:46:09', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_provider', '', 0),
(445, 1, '2015-10-31 04:37:35', '2015-10-31 04:37:35', '', 'IMG_5611', '', 'inherit', 'open', 'closed', '', 'img_5611', '', '', '2015-10-31 04:37:35', '2015-10-31 04:37:35', '', 444, 'http://teach-me-pd.dev//app/uploads/2015/10/IMG_5611.jpeg', 0, 'attachment', 'image/jpeg', 0),
(446, 1, '2015-10-31 04:37:37', '2015-10-31 04:37:37', '', 'IMG_5671', '', 'inherit', 'open', 'closed', '', 'img_5671', '', '', '2015-10-31 04:37:37', '2015-10-31 04:37:37', '', 444, 'http://teach-me-pd.dev//app/uploads/2015/10/IMG_5671.jpeg', 0, 'attachment', 'image/jpeg', 0),
(449, 1, '2015-10-31 04:45:23', '2015-10-31 04:45:23', '', 'K2D', '', 'inherit', 'open', 'closed', '', 'k2d', '', '', '2015-10-31 04:45:23', '2015-10-31 04:45:23', '', 444, 'http://teach-me-pd.dev//app/uploads/2015/10/K2D.png', 0, 'attachment', 'image/png', 0),
(450, 1, '2015-10-31 05:10:47', '2015-10-31 05:10:47', '', 'Providers', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-10-31 05:10:47', '2015-10-31 05:10:47', '', 18, 'http://teach-me-pd.dev/2015/10/18-revision-v1/', 0, 'revision', '', 0),
(452, 1, '2015-10-31 05:19:15', '2015-10-31 05:19:15', '', 'test for eduamazing', '', 'trash', 'open', 'closed', '', 'test-for-eduamazing', '', '', '2015-10-31 05:50:00', '2015-10-31 05:50:00', '', 0, 'http://teach-me-pd.dev/', 0, 'tribe_events', '', 0),
(453, 1, '2015-10-31 05:37:54', '2015-10-31 05:37:54', '', 'edumazingbannerflip', '', 'inherit', 'open', 'closed', '', 'edumazingbannerflip', '', '', '2015-10-31 05:37:54', '2015-10-31 05:37:54', '', 0, 'http://teach-me-pd.dev//app/uploads/2015/10/edumazingbannerflip.png', 0, 'attachment', 'image/png', 0),
(454, 1, '2015-10-31 05:46:56', '2015-10-31 05:46:56', '', 'Andrell banner', '', 'inherit', 'open', 'closed', '', 'andrell-banner', '', '', '2015-10-31 05:46:56', '2015-10-31 05:46:56', '', 0, 'http://teach-me-pd.dev//app/uploads/2015/10/Andrell-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(455, 1, '2015-10-31 05:47:00', '2015-10-31 05:47:00', '', 'Andrell banner2', '', 'inherit', 'open', 'closed', '', 'andrell-banner2', '', '', '2015-10-31 05:47:00', '2015-10-31 05:47:00', '', 0, 'http://teach-me-pd.dev//app/uploads/2015/10/Andrell-banner2.jpg', 0, 'attachment', 'image/jpeg', 0),
(456, 1, '2015-10-31 23:54:43', '2015-10-31 23:54:43', '<strong>There are growing requests from teachers for support on how to effectively engage students who are reluctant to learn at school especially in the vital area of Literacy. There is also a need to update teachers’ professional knowledge in using ICT as a powerful tool that can make a greater difference in learning. We are pleased to provide a workshop using ICT to improve student engagement for reluctant learners within the Early and Middle Years focusing on Literacy.</strong>\r\n\r\n<span style="text-decoration: underline;"><span style="color: #ffcc00; text-decoration: underline;">Suitability<em>:</em></span></span>\r\n\r\nThis workshop is suitable for Educators (Primary, Secondary &amp; Special Needs), Support staff and pre-service teachers.\r\n\r\n<span style="color: #ffcc00;"><em><u>Workshop Overview: </u></em></span>\r\n\r\nThis full day eLearning Literacy workshop for classroom teachers, address the key issues in student disengagement that prevent students from reaching their full potential. Teachers will participate in innovative and practical hands-on literacy activities (especially using ICT) that motivate reluctant learners, improve student outcomes and can be immediately applied in the Early Years and Middle Years classrooms.\r\n\r\n&nbsp;\r\n\r\n<span style="color: #ffcc00;"><em>This full day workshop will allow classroom teachers to successfully:</em></span>\r\n<ul>\r\n	<li>Identify key issues that disengage students in Literacy;</li>\r\n	<li>Understand how to engage students using effective eLearning strategies &amp; tools;</li>\r\n	<li>Experience the most relevant and motivating use of ICT to achieve student outcomes in Literacy at different learning stages;</li>\r\n	<li>Apply all e5 Principles using ICT to ensure learning progress;</li>\r\n	<li>Provide incidental authentic assessment opportunities that guide achievable learning outcomes;</li>\r\n	<li>Be empowered to make a positive difference</li>\r\n</ul>\r\n<strong> </strong>\r\n<p style="text-align: left;"><strong><span style="color: #ffcc00;">Where:</span></strong></p>\r\n<p style="text-align: left;"><span style="color: #000000;">Clu</span>b Ringwood, Maroondah Hwy, Ringwood Vic</p>\r\n<p style="text-align: left;"><strong><span style="color: #ffcc00;">What to bring:</span> </strong></p>\r\n<p style="text-align: left;">Participants need to bring a pen, a digital device or laptop and their enthusiasm.</p>\r\n<p style="text-align: left;"><span style="color: #ffcc00;"><strong>What’s provided:</strong></span></p>\r\n<p style="text-align: left;">Participants will receive pre-workshop refreshments upon arrival, morning tea and a deliciously catered lunch.</p>\r\n<p style="text-align: left;">All other materials, tools and resources will be provided on the day.</p>\r\n<p style="text-align: left;"><span style="color: #ffcc00;"><strong>Time:</strong></span></p>\r\n<p style="text-align: left;">8.45am Registration, 9am Start, 3.30pm Finish</p>\r\n<p style="text-align: center;"><span style="color: #ffcc00;"><u>Here is some feedback we have had from teachers about this Workshop:</u></span></p>\r\n<p style="text-align: center;"><em>"A fun and engaging way to hook teachers into becoming extraordinary teachers - not ordinary teachers!" </em></p>\r\n<p style="text-align: center;"><em>"This workshop stops you from thinking that reluctant learners are lazy, or can\'t do things, but shows you that these learners  are just not ready to learn, and demonstrates various ways to help engage them and get them ready in life." </em></p>\r\n<p style="text-align: center;"><em>"This is a highly professional, relevant, informative and \'hands on\' P.D. The best P.D I have been to!"</em></p>', 'Engaging Reluctant Literacy Learners - Ringwood', 'This full day eLearning Literacy workshop for classroom teachers, address the key issues in student disengagement that prevent students from reaching their full potential. Teachers will participate in innovative and practical hands-on literacy activities (especially using ICT) that motivate reluctant learners, improve student outcomes and can be immediately applied in the Early Years and Middle Years classrooms.', 'inherit', 'closed', 'closed', '', '415-autosave-v1', '', '', '2015-10-31 23:54:43', '2015-10-31 23:54:43', '', 415, 'http://teach-me-pd.dev/2015/10/415-autosave-v1/', 0, 'revision', '', 0),
(457, 1, '2015-10-31 23:59:18', '2015-10-31 23:59:18', 'Blogging is transforming the way we learn, collaborate and reflect. It offers authentic assessment opportunities, improves literacy skills and can be used by educators for many purposes including classroom digital portfolios, professional portfolios and as a professional learning tool.  Find out just how easy it is to setup your own blog for yourself and for your students.\n\n<span style="color: #ffcc00;"><em><u>Suitability:</u></em></span>\n\nThis workshop is suitable for Educators (Primary, Secondary &amp; Special Needs), Support staff and pre-service teachers.\n\n<span style="color: #ffcc00;"><em><u>Workshop Overview: </u></em></span>\n\nTeachers will experience practical hands on activities, professional conversations, blogging tools and additional support resources throughout the entire day.\n\n<span style="color: #ffcc00;"><em>This hands-on eLearning workshop will allow classroom teachers to successfully:</em></span>\n<ul>\n	<li>Understand what Blogs are, including different types and uses;</li>\n	<li>Create a simple Word Press Blog via edublogs (private school teachers) or Global 2 (public school teachers);</li>\n	<li>Explore how blogs improve student literacy skills and engagement;</li>\n	<li>Experience how blogs can be used as powerful authentic assessment tools;</li>\n	<li>Access strategies and activities to use blogs effectively in the classroom based on student needs and stages of learning;</li>\n	<li>Access outstanding blogs that can be used with students in the classroom to support different areas of the curriculum (for Primary &amp; Secondary students);</li>\n	<li>Identify important protocols and practices in the effective use of blogs including privacy and communication with parents/guardians;</li>\n</ul>\n<strong> </strong>\n\n<strong>Where:             </strong>\n\nBurwood Corporate Centre (BCC)\n\nDeakin University\n\nLevel 2 Building BC\nMelbourne Burwood Campus, Burwood\n\n&nbsp;\n\n<strong>What to bring:              </strong>\n\nParticipants need to bring a pen, a digital device or laptop and their enthusiasm.\n\n&nbsp;\n\n<strong>What’s provided:</strong>\n\nParticipants will receive pre-workshop refreshments upon arrival, morning tea and a\n\ndeliciously catered lunch.  All other materials, tools and resources will be provided on the day.\n\n<strong>Time:                            </strong>\n\n8.45am Registration, 9am Start, 3.30pm Finish\n\n<span style="color: #ffcc00;"><u>Here is some feedback we have had from teachers about this Workshop:</u></span>\n\n<em>"EDU-mazing!! Perfect course for 21st century learners." - Felicity.</em>\n\n<em>"Totally worth it! I have left with 2 blogs created &amp; a heap of resources to go &amp; explore &amp; play with." - Jessica.</em>\n\n<em>"A great day, a lot of interesting, exciting and engaging information was given. It really gave me a new enthusiasm for blogging within my classroom. A great tool to get the kids excited." - Kate.</em>', 'The Power of Blogging', 'Teachers will experience practical hands on activities, professional conversations, blogging tools and additional support resources throughout the entire day.  ', 'inherit', 'closed', 'closed', '', '419-autosave-v1', '', '', '2015-10-31 23:59:18', '2015-10-31 23:59:18', '', 419, 'http://teach-me-pd.dev/2015/10/419-autosave-v1/', 0, 'revision', '', 0),
(458, 1, '2015-11-01 00:01:35', '2015-11-01 00:01:35', 'As schools move into a Bring Your Own Device (BYOD) environment, it is important to know what is available for students to use no matter the device they bring. Come along to discover some great BYOD apps, online spaces and strategies to maximise learning opportunities.\n\n<span style="color: #ffcc00;"><em>Suitability:</em></span>\n\nThis workshop is suitable for Primary &amp; Secondary school educators, Special school staff, additional needs educators and educational support staff in Government, Catholic, and Independent schools. Pre-service teachers and CRTs will also benefit from attending.\n\n<span style="color: #ffcc00;"><em>Workshop Overview:</em></span>\n\nTeachers will engage in practical experiences using recommended apps and online spaces during an engaging and inspirational afternoon session. They will:\n<ul>\n	<li>Understand common and effective apps they can use at different stages of learning to enhance their BYOD toolkit</li>\n	<li>Engage in practical learning experiences they can instantly apply in their classroom</li>\n	<li>Overcome issues they may be experiencing implementing a BYOD environment</li>\n</ul>\n<strong>Where: </strong>\n\nDarebin Arts &amp; Entertainment Centre\n\nCnr Bell St &amp; St Georges Rd, Preston\n\n<strong>What to bring:  </strong>\n\nParticipants need to bring their own mobile device (that can wirelessly access internet, internet connectivity provided) and your enthusiasm.\n\n<strong>What’s provided:</strong>\n\nParticipants will receive refreshments upon arrival.  All other materials, tools and resources will be provided on the day.\n\n<strong>Time:                            </strong>\n\n4:00pm Start, 6.00pm Finish', 'BYOD App Toolkit (Afternoon workshop) - Preston', 'Teachers will engage in practical experiences using recommended apps and online spaces during an engaging and inspirational afternoon session.', 'inherit', 'closed', 'closed', '', '413-autosave-v1', '', '', '2015-11-01 00:01:35', '2015-11-01 00:01:35', '', 413, 'http://teach-me-pd.dev/2015/11/413-autosave-v1/', 0, 'revision', '', 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_form`
#
INSERT INTO `wp_rg_form` ( `id`, `title`, `date_created`, `is_active`, `is_trash`) VALUES
(1, 'Teacher Pre Reg', '2015-09-18 05:56:50', 1, 0),
(2, 'Provider call back from', '2015-10-30 06:36:17', 1, 0),
(3, 'Contact', '2015-10-30 06:50:24', 1, 0),
(4, 'Contact us', '2015-10-30 07:10:55', 1, 1) ;

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
(1, '{"title":"Teacher Pre Reg","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Submit","imageUrl":""},"fields":[{"type":"section","id":6,"label":"Provider","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"displayOnly":true,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"description":"If you would like to take advantage of marketing to over 100,000 educators already registered on a national scale, please fill out this form to request a detailed provider document with your options.","conditionalLogic":false,"formId":1,"choices":"","inputType":"","pageNumber":1},{"type":"name","id":7,"label":"Name","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","nameFormat":"advanced","inputs":[{"id":"7.2","label":"Prefix","name":"","choices":[{"text":"Mr.","value":"Mr.","isSelected":false,"price":""},{"text":"Mrs.","value":"Mrs.","isSelected":false,"price":""},{"text":"Miss","value":"Miss","isSelected":false,"price":""},{"text":"Ms.","value":"Ms.","isSelected":false,"price":""},{"text":"Dr.","value":"Dr.","isSelected":false,"price":""},{"text":"Prof.","value":"Prof.","isSelected":false,"price":""},{"text":"Rev.","value":"Rev.","isSelected":false,"price":""}],"isHidden":true,"inputType":"radio"},{"id":"7.3","label":"First","name":""},{"id":"7.4","label":"Middle","name":"","isHidden":true},{"id":"7.6","label":"Last","name":""},{"id":"7.8","label":"Suffix","name":"","isHidden":true}],"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"conditionalLogic":false,"formId":1,"choices":"","displayOnly":"","inputType":"","pageNumber":1},{"type":"email","id":8,"label":"Email","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"conditionalLogic":false,"formId":1,"choices":"","displayOnly":"","inputType":"","pageNumber":1}],"id":1,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null}', '', '{"55e8f7763453c":{"id":"55e8f7763453c","name":"Default Confirmation","isDefault":true,"type":"message","message":"<h2 style=\\"text-align: center;\\">Thanks! We shall be in touch<\\/h2>\\r\\n&nbsp;","url":"","pageId":0,"queryString":"","disableAutoformat":false,"conditionalLogic":[]}}', '{"55e8f77634189":{"isActive":true,"id":"55e8f77634189","name":"Admin Notification","event":"form_submission","to":"info@teachmepd.com.au","toType":"email","bcc":"","subject":"New submission from website - {form_title}","message":"{all_fields}","from":"info@teachmepd.com.au","fromName":"","replyTo":"","routing":null,"conditionalLogic":null,"disableAutoformat":false}}'),
(2, '{"title":"Provider call back from","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Submit","imageUrl":""},"fields":[{"type":"text","id":1,"label":"Business name","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":2,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""},{"type":"text","id":2,"label":"Your name","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":2,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""},{"type":"email","id":3,"label":"Email","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":2,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""},{"type":"text","id":6,"label":"Phone number","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":2,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""},{"type":"textarea","id":4,"label":"What type of personal development do you offer?","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":2,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""},{"type":"textarea","id":5,"label":"Any thing else you wish to add?","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":2,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""}],"id":2,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null}', NULL, '{"56330fe1a7654":{"id":"56330fe1a7654","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"56330fe1a7235":{"id":"56330fe1a7235","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}}'),
(3, '{"title":"Contact","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Submit","imageUrl":""},"fields":[{"type":"text","id":4,"label":"Name","adminLabel":"","isRequired":true,"size":"large","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":3,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""},{"type":"email","id":2,"label":"Email","adminLabel":"","isRequired":true,"size":"large","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":3,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""},{"type":"textarea","id":3,"label":"Message","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":3,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""}],"id":3,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null}', '', '{"563313303179f":{"id":"563313303179f","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"5633133030d59":{"id":"5633133030d59","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}}'),
(4, '{"title":"Contact us","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Submit","imageUrl":""},"fields":[{"type":"text","id":1,"label":"Name","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":4,"pageNumber":1,"choices":"","conditionalLogic":""},{"type":"email","id":2,"label":"Email","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"formId":4,"pageNumber":1,"choices":"","conditionalLogic":""},{"type":"phone","id":3,"label":"Phone","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"phoneFormat":"standard","formId":4,"pageNumber":1,"choices":"","conditionalLogic":""},{"type":"textarea","id":4,"label":"Comment \\/ Question","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":4,"pageNumber":1,"choices":"","conditionalLogic":""}],"id":4,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null}', NULL, '{"563317ff522ec":{"id":"563317ff522ec","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"563317ff51814":{"id":"563317ff51814","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}}') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_rg_form_view`
#
INSERT INTO `wp_rg_form_view` ( `id`, `form_id`, `date_created`, `ip`, `count`) VALUES
(1, 1, '2015-09-22 12:18:55', '175.32.190.75', 1),
(2, 2, '2015-10-30 10:30:07', '175.33.200.34', 1),
(3, 3, '2015-10-30 14:45:56', '54.209.60.63', 1) ;

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
(91, 1, 0),
(100, 3, 0),
(136, 8, 0),
(137, 8, 0),
(143, 1, 0),
(294, 3, 0),
(295, 9, 0),
(296, 9, 0),
(297, 9, 0),
(298, 9, 0),
(307, 10, 0),
(308, 10, 0),
(320, 1, 0),
(323, 1, 0),
(326, 1, 0),
(328, 1, 0),
(330, 1, 0),
(338, 2, 0),
(399, 9, 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'nav_menu', '', 0, 2),
(9, 9, 'nav_menu', '', 0, 5),
(10, 10, 'nav_menu', '', 0, 2) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
(8, 'Top Menu Logged Out', 'top-menu-logged-out', 0),
(9, 'Footer Menu Logged Out', 'footer-menu-logged-out', 0),
(10, 'Provider Top Nav', 'provider-top-nav', 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=765 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Bree'),
(2, 1, 'first_name', 'Bree'),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'tp09_edit_drag_drop_sort'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:5:{s:64:"fb7518d0dd7b4eb84a38bfb9bfac29eddd8a97793f05624f7e848c526f7e4989";a:4:{s:10:"expiration";i:1446593275;s:2:"ip";s:12:"43.226.7.138";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36";s:5:"login";i:1445383675;}s:64:"d30ee7af36411ca9f6cfbee09404e9bb2c032224e17fed6dd6d6d064b8080966";a:4:{s:10:"expiration";i:1446685743;s:2:"ip";s:15:"180.191.111.213";s:2:"ua";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36";s:5:"login";i:1445476143;}s:64:"b417f25e104cb4ad72778d4974e3a74f7638b52c605e06df4497bce13e83dee0";a:4:{s:10:"expiration";i:1446438412;s:2:"ip";s:13:"175.33.200.34";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36";s:5:"login";i:1446265612;}s:64:"43548f33f6dc2e52b7fdef8f4020eb7f9106b18ca42dc38ef0fb036a46b6a8cc";a:4:{s:10:"expiration";i:1446447359;s:2:"ip";s:13:"175.33.200.34";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36";s:5:"login";i:1446274559;}s:64:"6e6a7a6326dd9735d44ac2a27396b2a30a25423801984fb7a82e5b7ab27505fc";a:4:{s:10:"expiration";i:1446595027;s:2:"ip";s:11:"1.136.96.93";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36";s:5:"login";i:1446422227;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(18, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&hidetb=1&advImgDetails=show&wplink=1&tribe_events_cat_tab=pop'),
(19, 1, 'wp_user-settings-time', '1446268751'),
(20, 1, 'billing_first_name', ''),
(21, 1, 'billing_last_name', ''),
(22, 1, 'billing_company', ''),
(23, 1, 'billing_address_1', ''),
(24, 1, 'billing_address_2', ''),
(25, 1, 'billing_city', ''),
(26, 1, 'billing_postcode', ''),
(27, 1, 'billing_country', 'AU'),
(28, 1, 'billing_state', 'TAS'),
(29, 1, 'billing_phone', ''),
(30, 1, 'billing_email', ''),
(31, 1, 'shipping_first_name', ''),
(32, 1, 'shipping_last_name', ''),
(33, 1, 'shipping_company', ''),
(34, 1, 'shipping_address_1', ''),
(35, 1, 'shipping_address_2', ''),
(36, 1, 'shipping_city', ''),
(37, 1, 'shipping_postcode', ''),
(38, 1, 'shipping_country', ''),
(39, 1, 'shipping_state', ''),
(40, 1, 'nav_menu_recently_edited', '9'),
(41, 1, 'tribe_setDefaultNavMenuBoxes', '1'),
(43, 1, 'paying_customer', '1'),
(44, 1, '_money_spent', '600'),
(45, 1, '_order_count', '1'),
(47, 1, 'school', ''),
(48, 1, 'Dietary_Requirement', 'Dietary Require'),
(49, 1, 'Mobility_Requirement', 'asdasda'),
(50, 1, 'Job_Title', ''),
(51, 1, 'TO_number', ''),
(52, 1, 'dietarty_requirement', 'Dietary Requirement test'),
(53, 1, 'billing_mobility', ''),
(54, 1, 'billing_school', ''),
(55, 1, 'billing_dietarty_requirement', ''),
(56, 1, 'billing_job_title', ''),
(57, 1, 'billing_to_number', ''),
(58, 1, 'billing_invoice_school', ''),
(59, 1, 'billing_manager_name', ''),
(60, 1, 'billing_manager_email', ''),
(80, 1, 'city', ''),
(81, 1, 'zip', ''),
(82, 1, 'country', ''),
(83, 1, 'tos', ''),
(84, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:2:{s:32:"3dd48ab31d016ffcbf3314df2b3cb9ce";a:9:{s:10:"product_id";i:341;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:275;s:8:"line_tax";i:0;s:13:"line_subtotal";i:275;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"aa942ab2bfa6ebda4840e7360ce6e7ef";a:9:{s:10:"product_id";i:358;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:275;s:8:"line_tax";i:0;s:13:"line_subtotal";i:275;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}'),
(254, 1, 'wp_tablepress_user_options', '{"user_options_db_version":31,"admin_menu_parent_page":"middle","plugin_language":"auto","message_first_visit":true}'),
(255, 1, 'managetablepress_listcolumnshidden', 'a:1:{i:0;s:22:"table_last_modified_by";}'),
(320, 1, 'closedpostboxes_tribe_events', 'a:1:{i:0;s:10:"members-cp";}'),
(321, 1, 'metaboxhidden_tribe_events', 'a:4:{i:0;s:23:"acf-group_5631c5b7db552";i:1;s:23:"acf-group_5631b80d43aea";i:2;s:23:"acf-group_560a0ade765ad";i:3;s:7:"slugdiv";}'),
(324, 1, 'closedpostboxes_tablepress_edit', 'a:0:{}'),
(325, 1, 'metaboxhidden_tablepress_edit', 'a:0:{}'),
(406, 1, 'closedpostboxes_tribe_provider', 'a:0:{}'),
(407, 1, 'metaboxhidden_tribe_provider', 'a:3:{i:0;s:23:"acf-group_5608e0cc18359";i:1;s:23:"acf-group_560a0ade765ad";i:2;s:7:"slugdiv";}'),
(408, 14, 'nickname', 'Matthew_Keath'),
(409, 14, 'first_name', 'Matthew'),
(410, 14, 'last_name', 'Keath'),
(411, 14, 'description', ''),
(412, 14, 'rich_editing', 'true'),
(413, 14, 'comment_shortcuts', 'false'),
(414, 14, 'admin_color', 'fresh'),
(415, 14, 'use_ssl', '0'),
(416, 14, 'show_admin_bar_front', 'true'),
(417, 14, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(418, 14, 'wp_user_level', '0'),
(419, 14, 'billing_first_name', 'Matthew'),
(420, 14, 'billing_last_name', 'Keath'),
(421, 14, 'billing_email', 'matthewjkeath@gmail.com'),
(422, 14, 'billing_phone', '0416060073'),
(423, 14, 'billing_address_1', '34 website road'),
(424, 14, 'billing_state', 'vic'),
(425, 14, 'job_title', 'supply_teacher'),
(426, 14, 'school', 'boort ps'),
(427, 14, 'billing_dietary', ''),
(428, 14, 'billing_mobility', ''),
(429, 15, 'nickname', 'Andrell Education'),
(430, 15, 'first_name', 'Samantha'),
(431, 15, 'last_name', 'Taylor'),
(432, 15, 'description', 'Big Write and VCOP is designed to bring the fun back into writing, to make the children want to write and to be continuously challenged throughout the writing journey. Through games, activities, writing tasks, conversations and discussions, students will learn not only where their abilities lie in a fun and engaging way, but also the steps they need to take, in order to continue to improve.\r\n \r\nBig Write and VCOP is a methodology for raising the standards in writing across all ages and ability levels throughout Australasia. It seeks to address the reasons why there are falling standards in writing. Based on the premise that ‘if they can’t say it, they can’t write it’, we scaffold the learning to allow children to become articulate thinkers and speakers, who will then become articulate writers. It is a differentiated approach suitable for pre-writers, all the way through secondary school. Underpinning the progress the students will achieve is the \'back to basics\' approach of teaching the building blocks of writing through the use of the GHaSP method.\r\n \r\nBig Write comes with a comprehensive, evidence-based assessment tool (linked to the Australian National Curriculum), that develops consistency and accuracy of writing assessment right across your school. The Student Friendly Criterion Scale empowers the children by allowing them to analyse where their skill set lies, and specifically what steps they need to take in order to move forward.\r\nPresented BY teachers, FOR teachers.'),
(433, 15, 'rich_editing', 'true'),
(434, 15, 'comment_shortcuts', 'false'),
(435, 15, 'admin_color', 'fresh'),
(436, 15, 'use_ssl', '0') ;
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(437, 15, 'show_admin_bar_front', 'true'),
(438, 15, 'wp_capabilities', 'a:1:{s:8:"provider";b:1;}'),
(439, 15, 'wp_user_level', '0'),
(440, 15, 'company_name', 'Andrell Education'),
(441, 15, 'trainings_provided', 'Trainings'),
(442, 15, 'facebook', 'https://www.facebook.com/groups/608805285893925/?fref=nf'),
(443, 15, 'twitter', 'https://twitter.com/bigwrite_vcop'),
(444, 15, 'linkedin', 'https://www.linkedin.com/'),
(445, 15, 'target_audience', 'Array'),
(446, 15, 'tribe_provider_permalink', 'http://teach-me-pd.dev/provider/andrell-education/'),
(447, 15, 'billing_first_name', ''),
(448, 15, 'billing_last_name', ''),
(449, 15, 'billing_email', ''),
(450, 15, 'billing_company', ''),
(451, 15, 'billing_phone', '040784829'),
(452, 15, 'billing_country', ''),
(453, 15, 'billing_address_2', ''),
(454, 15, 'billing_address_1', 'Langwarrin, Victoria'),
(455, 15, 'billing_city', ''),
(456, 15, 'billing_state', ''),
(457, 15, 'billing_postcode', ''),
(458, 15, 'shipping_first_name', ''),
(459, 15, 'shipping_last_name', ''),
(460, 15, 'shipping_company', ''),
(461, 15, 'shipping_country', ''),
(462, 15, 'shipping_address_1', ''),
(463, 15, 'shipping_address_2', ''),
(464, 15, 'shipping_city', ''),
(465, 15, 'shipping_state', ''),
(466, 15, 'shipping_postcode', ''),
(467, 15, 'profile_image', '71'),
(468, 15, '_profile_image', 'field_560a0ae2d428c'),
(469, 15, 'secondary_profile_image', ''),
(470, 15, '_secondary_profile_image', 'field_5631b6069917e'),
(471, 15, 'tos', ''),
(472, 15, 'school', ''),
(473, 15, 'job_title', ''),
(474, 15, 'billing_dietary', ''),
(475, 15, 'billing_mobility', ''),
(476, 16, 'nickname', 'Michael_Cequina'),
(477, 16, 'first_name', 'Michael'),
(478, 16, 'last_name', 'Cequina'),
(479, 16, 'description', ''),
(480, 16, 'rich_editing', 'true'),
(481, 16, 'comment_shortcuts', 'false'),
(482, 16, 'admin_color', 'fresh'),
(483, 16, 'use_ssl', '0'),
(484, 16, 'show_admin_bar_front', 'true'),
(485, 16, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(486, 16, 'wp_user_level', '0'),
(487, 16, 'billing_first_name', 'Michael'),
(488, 16, 'billing_last_name', 'Cequina'),
(489, 16, 'billing_email', 'michael@cloudemployee.co.uk'),
(490, 16, 'billing_phone', '01472574782'),
(491, 16, 'billing_address_1', 'my addresss asdasda'),
(492, 16, 'billing_state', 'TAS'),
(493, 16, 'job_title', 'principal'),
(494, 16, 'school', 'Aasdas School'),
(495, 16, 'billing_dietary', 'Nuztolbe avika wivhad aru zi unhuwro nuap hikbu rumek rujofzed of fon lonlafci ansufru jidu. Rug unpik cug degadfe la juwpevgo kipo sah suf wosawev uvuciod il hav zijiji. Sor fizvel irunooz ravzurza id jusus tatagis ossolco zih odi ruacomo golekca can la vaja diwovaon. Risom hovliwke me kibbulwa sekba da iti lelef megu miacaeca fi hirmoki eja koze naalokos goli cipeggis olegi. Comciep ud nid eniatawi ziolibo ted tocbirkeg jelek bovcawvo arvim helufos sozubu ti fos adipuid lirhus dapoco domoj. Wib giwpuw olahutir von gocweug si zadtecuvi uheci jil ig opajojig cel ti. Dafag racji ho dave rusnogsak iwdif fi dihec ku epageciz la wun fezep.'),
(496, 16, 'billing_mobility', 'Mobility Requirement'),
(497, 16, 'session_tokens', 'a:3:{s:64:"9a4694e8ca279c824d7f1ea116a1ada53965f39113d35e1753613c8c6663a9ac";a:4:{s:10:"expiration";i:1446337506;s:2:"ip";s:15:"180.191.111.236";s:2:"ua";s:81:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:41.0) Gecko/20100101 Firefox/41.0";s:5:"login";i:1446164706;}s:64:"7170a30762ab18be017dcd126bba72a41c2fedda17d3f5c0ff5a91f2c2d09a80";a:4:{s:10:"expiration";i:1447397090;s:2:"ip";s:15:"180.191.111.236";s:2:"ua";s:81:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:41.0) Gecko/20100101 Firefox/41.0";s:5:"login";i:1446187490;}s:64:"b041c515f58aefbde9852f67b9801f4cf5d7c218dca7dfeef188864d7c80338d";a:4:{s:10:"expiration";i:1446360498;s:2:"ip";s:12:"1.136.96.208";s:2:"ua";s:116:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/600.8.9 (KHTML, like Gecko) Version/8.0.8 Safari/600.8.9";s:5:"login";i:1446187698;}}'),
(499, 16, 'billing_country', 'AU'),
(500, 16, 'billing_city', 'asdasdas'),
(501, 16, 'billing_postcode', '1542'),
(502, 16, 'billing_school', ''),
(503, 16, 'billing_job_title', ''),
(504, 16, 'billing_to_number', ''),
(505, 16, 'billing_invoice_school', ''),
(506, 16, 'billing_manager_name', ''),
(507, 16, 'billing_manager_email', ''),
(509, 16, 'paying_customer', '1'),
(510, 16, '_money_spent', '142'),
(511, 16, '_order_count', '1'),
(512, 1, 'closedpostboxes_post', 'a:0:{}'),
(513, 1, 'metaboxhidden_post', 'a:10:{i:0;s:23:"acf-group_5608e0cc18359";i:1;s:23:"acf-group_5631c5b7db552";i:2;s:23:"acf-group_5631b80d43aea";i:3;s:23:"acf-group_560a0ade765ad";i:4;s:13:"trackbacksdiv";i:5;s:10:"postcustom";i:6;s:16:"commentstatusdiv";i:7;s:11:"commentsdiv";i:8;s:7:"slugdiv";i:9;s:9:"authordiv";}'),
(514, 1, 'profile_image', ''),
(515, 1, '_profile_image', 'field_560a0ae2d428c'),
(516, 1, 'secondary_profile_image', ''),
(517, 1, '_secondary_profile_image', 'field_5631b6069917e'),
(518, 1, 'billing_dietary', ''),
(519, 15, 'session_tokens', 'a:1:{s:64:"b9342d4a60d1c1afc11ca819a06af90024ec45110109da9686c7d2cf0f9da6d5";a:4:{s:10:"expiration";i:1446345973;s:2:"ip";s:15:"180.191.111.236";s:2:"ua";s:81:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:41.0) Gecko/20100101 Firefox/41.0";s:5:"login";i:1446173173;}}'),
(520, 15, 'wp_user-settings', 'libraryContent=browse'),
(521, 15, 'wp_user-settings-time', '1446175553'),
(522, 17, 'nickname', 'brianna_shaw'),
(523, 17, 'first_name', 'brianna'),
(524, 17, 'last_name', 'shaw'),
(525, 17, 'description', ''),
(526, 17, 'rich_editing', 'true'),
(527, 17, 'comment_shortcuts', 'false'),
(528, 17, 'admin_color', 'fresh'),
(529, 17, 'use_ssl', '0'),
(530, 17, 'show_admin_bar_front', 'true'),
(531, 17, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(532, 17, 'wp_user_level', '0'),
(533, 17, 'billing_first_name', 'brianna'),
(534, 17, 'billing_last_name', 'shaw'),
(535, 17, 'billing_email', 'brianna_lynlee@hotmail.com'),
(536, 17, 'billing_phone', '0438513795'),
(537, 17, 'billing_address_1', '22 brulu close'),
(538, 17, 'billing_state', 'unselected') ;
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(539, 17, 'job_title', 'unselected'),
(540, 17, 'school', 'mt eliza '),
(541, 17, 'billing_dietary', ''),
(542, 17, 'billing_mobility', ''),
(543, 15, 'overview_description', 'Andrell Education is excited to be providing training and support on the Big Write and VCOP writing program for Australian educators. With trained teachers running the sessions, you can guarantee diverse and supported session.'),
(544, 15, '_overview_description', 'field_5633039a852a9'),
(545, 18, 'nickname', 'Edumazing'),
(546, 18, 'first_name', 'Georgina'),
(547, 18, 'last_name', 'Pazzi'),
(548, 18, 'description', 'Edumazing® exists because of a shared passion to make a positive difference to learners of all ages throughout the world. To do this we must think differently and be brave in changing the paradigm of education to create a thriving and sustainable future.\r\nWe are a connected and growing community of caring professionals, educators, young people and families. We take massive action to transform our learning, our wellbeing and our lives through the power of Human LiteracyTM. To us, learning, inspiring and leading with heart matters.\r\nWe have four sectors of educational and wellbeing service provision: \r\n1.	Educators &amp; Schools\r\n2.	Young People &amp; Families\r\n3.	Graduate Teachers, Preservice Teachers and CRTs (Edgrad Academy)\r\n4.	Business and Communities\r\nOur work and leadership in all sectors of education, provides us with a wealth of expertise that drives our quality endorsed professional development services to schools and educators. We are strongly grounded in progressive pedagogies, curriculum development, holistic assessment, working with diverse learners, behaviour transformation, student engagement &amp; wellbeing, digital technologies &amp; digital learning, community cybersafety programs and whole school cultural change. \r\nAlthough we continually break new ground in providing innovative approaches to learning and wellbeing, where we think without a box, all of our work is supported by extensive research. Our experienced presenters continue to work with young people aged 3 to adult in different school and community settings which ensures we understand the current educational environment that informs our workshops and presentations. \r\nWe are educational. We are amazing. We are edumazing®. Join us to redesign the present and shape a future yet unimagined.'),
(549, 18, 'rich_editing', 'true'),
(550, 18, 'comment_shortcuts', 'false'),
(551, 18, 'admin_color', 'fresh'),
(552, 18, 'use_ssl', '0'),
(553, 18, 'show_admin_bar_front', 'true'),
(554, 18, 'wp_capabilities', 'a:1:{s:8:"provider";b:1;}'),
(555, 18, 'wp_user_level', '0'),
(556, 18, 'profile_image', '407'),
(557, 18, '_profile_image', 'field_560a0ae2d428c'),
(558, 18, 'secondary_profile_image', ''),
(559, 18, '_secondary_profile_image', 'field_5631b6069917e'),
(560, 18, 'overview_description', 'Edumazing® breaks new ground in delivering quality endorsed Professional Development that empowers educators and leaders to transform their learning and lives. Join thousands of educators and schools who have discovered the Edumazing® difference that has shaped exciting and progressive change in education. '),
(561, 18, '_overview_description', 'field_5633039a852a9'),
(562, 18, 'billing_state', ''),
(563, 18, 'billing_address_1', 'Education Studios: Level 1, 84 Synnot Street, Werribee 3030'),
(564, 18, 'billing_phone', '0438 404 355'),
(565, 18, 'school', 'Edumazing'),
(566, 18, 'job_title', ''),
(567, 18, 'billing_dietary', ''),
(568, 18, 'billing_mobility', ''),
(569, 18, 'dismissed_wp_pointers', ''),
(570, 18, 'billing_first_name', ''),
(571, 18, 'billing_last_name', ''),
(572, 18, 'billing_email', ''),
(573, 18, 'billing_company', ''),
(574, 18, 'billing_country', ''),
(575, 18, 'billing_address_2', ''),
(576, 18, 'billing_city', ''),
(577, 18, 'billing_postcode', ''),
(578, 18, 'shipping_first_name', ''),
(579, 18, 'shipping_last_name', ''),
(580, 18, 'shipping_company', ''),
(581, 18, 'shipping_country', ''),
(582, 18, 'shipping_address_1', ''),
(583, 18, 'shipping_address_2', ''),
(584, 18, 'shipping_city', ''),
(585, 18, 'shipping_state', ''),
(586, 18, 'shipping_postcode', ''),
(587, 18, 'tos', ''),
(613, 20, 'nickname', 'DIPL- Doorway to Practical Learning'),
(614, 20, 'first_name', 'Danielle'),
(615, 20, 'last_name', 'Topalovic'),
(616, 20, 'description', ''),
(617, 20, 'rich_editing', 'true'),
(618, 20, 'comment_shortcuts', 'false'),
(619, 20, 'admin_color', 'fresh'),
(620, 20, 'use_ssl', '0'),
(621, 20, 'show_admin_bar_front', 'true'),
(622, 20, 'wp_capabilities', 'a:1:{s:8:"provider";b:1;}'),
(623, 20, 'wp_user_level', '0'),
(624, 20, 'profile_image', '431'),
(625, 20, '_profile_image', 'field_560a0ae2d428c'),
(626, 20, 'secondary_profile_image', ''),
(627, 20, '_secondary_profile_image', 'field_5631b6069917e'),
(628, 20, 'overview_description', 'DIPL makes teaching the ABCs as easy as 123!\r\nDIPL is a school based literacy program, written for classroom use.\r\n\r\nDIPL, in line with the national English curriculum, \r\n‘aims to develop students’ knowledge of language and literature and to consolidate and expand their literacy skills’.\r\n\r\nDIPL’s logical and systematic approach to reading, writing and s'),
(629, 20, '_overview_description', 'field_5633039a852a9'),
(630, 20, 'billing_state', ''),
(631, 20, 'billing_address_1', '18 Toohey Crescent, Adamstown Heights NSW 2289 Australia'),
(632, 20, 'billing_phone', '0414 996 335'),
(633, 20, 'school', ''),
(634, 20, 'job_title', ''),
(635, 20, 'billing_dietary', ''),
(636, 20, 'billing_mobility', ''),
(637, 20, 'dismissed_wp_pointers', ''),
(656, 21, 'nickname', 'Mappen'),
(657, 21, 'first_name', 'Danny'),
(658, 21, 'last_name', 'Ritterman'),
(659, 21, 'description', 'Get Mappen with this online curriculum and professional learning solution.'),
(660, 21, 'rich_editing', 'true'),
(661, 21, 'comment_shortcuts', 'false'),
(662, 21, 'admin_color', 'fresh'),
(663, 21, 'use_ssl', '0'),
(664, 21, 'show_admin_bar_front', 'true'),
(665, 21, 'wp_capabilities', 'a:1:{s:8:"provider";b:1;}'),
(666, 21, 'wp_user_level', '0'),
(667, 21, 'profile_image', '433'),
(668, 21, '_profile_image', 'field_560a0ae2d428c'),
(669, 21, 'secondary_profile_image', ''),
(670, 21, '_secondary_profile_image', 'field_5631b6069917e'),
(671, 21, 'overview_description', 'Mappen is an online curriculum and professional learning solution.'),
(672, 21, '_overview_description', 'field_5633039a852a9'),
(673, 21, 'billing_state', ''),
(674, 21, 'billing_address_1', '27A Roberna Street, Moorabbin VIC 3189'),
(675, 21, 'billing_phone', '0409 542 930'),
(676, 21, 'school', ''),
(677, 21, 'job_title', ''),
(678, 21, 'billing_dietary', ''),
(679, 21, 'billing_mobility', ''),
(680, 21, 'dismissed_wp_pointers', ''),
(681, 21, 'billing_first_name', '') ;
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(682, 21, 'billing_last_name', ''),
(683, 21, 'billing_email', ''),
(684, 21, 'billing_company', ''),
(685, 21, 'billing_country', ''),
(686, 21, 'billing_address_2', ''),
(687, 21, 'billing_city', ''),
(688, 21, 'billing_postcode', ''),
(689, 21, 'shipping_first_name', ''),
(690, 21, 'shipping_last_name', ''),
(691, 21, 'shipping_company', ''),
(692, 21, 'shipping_country', ''),
(693, 21, 'shipping_address_1', ''),
(694, 21, 'shipping_address_2', ''),
(695, 21, 'shipping_city', ''),
(696, 21, 'shipping_state', ''),
(697, 21, 'shipping_postcode', ''),
(698, 21, 'tos', ''),
(699, 20, 'billing_first_name', ''),
(700, 20, 'billing_last_name', ''),
(701, 20, 'billing_email', ''),
(702, 20, 'billing_company', ''),
(703, 20, 'billing_country', ''),
(704, 20, 'billing_address_2', ''),
(705, 20, 'billing_city', ''),
(706, 20, 'billing_postcode', ''),
(707, 20, 'shipping_first_name', ''),
(708, 20, 'shipping_last_name', ''),
(709, 20, 'shipping_company', ''),
(710, 20, 'shipping_country', ''),
(711, 20, 'shipping_address_1', ''),
(712, 20, 'shipping_address_2', ''),
(713, 20, 'shipping_city', ''),
(714, 20, 'shipping_state', ''),
(715, 20, 'shipping_postcode', ''),
(716, 20, 'tos', ''),
(717, 15, 'wp_dashboard_quick_press_last_post_id', '437'),
(718, 22, 'nickname', 'kinect2dance'),
(719, 22, 'first_name', 'Bree'),
(720, 22, 'last_name', 'Shaw'),
(721, 22, 'description', 'Kinect2dance provide school based dance courses for both Primary and Secondary students. Our\r\nprofessionals run the programs for you, meeting the needs to the national AusVELS curriculum through\r\n5 week or 10 week courses.'),
(722, 22, 'rich_editing', 'true'),
(723, 22, 'comment_shortcuts', 'false'),
(724, 22, 'admin_color', 'fresh'),
(725, 22, 'use_ssl', '0'),
(726, 22, 'show_admin_bar_front', 'true'),
(727, 22, 'wp_capabilities', 'a:1:{s:8:"provider";b:1;}'),
(728, 22, 'wp_user_level', '0'),
(729, 22, 'profile_image', '449'),
(730, 22, '_profile_image', 'field_560a0ae2d428c'),
(731, 22, 'secondary_profile_image', ''),
(732, 22, '_secondary_profile_image', 'field_5631b6069917e'),
(733, 22, 'overview_description', 'Kinect2dance provide school based dance courses for both Primary and Secondary students. Our\r\nprofessionals run the programs for you, meeting the needs to the national AusVELS curriculum through\r\n5 week or 10 week courses.'),
(734, 22, '_overview_description', 'field_5633039a852a9'),
(735, 22, 'billing_state', ''),
(736, 22, 'billing_address_1', ''),
(737, 22, 'billing_phone', ''),
(738, 22, 'school', ''),
(739, 22, 'job_title', ''),
(740, 22, 'billing_dietary', ''),
(741, 22, 'billing_mobility', ''),
(742, 22, 'dismissed_wp_pointers', ''),
(743, 22, 'billing_first_name', ''),
(744, 22, 'billing_last_name', ''),
(745, 22, 'billing_email', ''),
(746, 22, 'billing_company', ''),
(747, 22, 'billing_country', ''),
(748, 22, 'billing_address_2', ''),
(749, 22, 'billing_city', ''),
(750, 22, 'billing_postcode', ''),
(751, 22, 'shipping_first_name', ''),
(752, 22, 'shipping_last_name', ''),
(753, 22, 'shipping_company', ''),
(754, 22, 'shipping_country', ''),
(755, 22, 'shipping_address_1', ''),
(756, 22, 'shipping_address_2', ''),
(757, 22, 'shipping_city', ''),
(758, 22, 'shipping_state', ''),
(759, 22, 'shipping_postcode', ''),
(760, 22, 'tos', ''),
(761, 1, 'closedpostboxes_dashboard', 'a:9:{i:0;s:19:"dashboard_right_now";i:1;s:18:"dashboard_activity";i:2;s:22:"tribe_dashboard_widget";i:3;s:18:"rg_forms_dashboard";i:4;s:21:"dashboard_custom_feed";i:5;s:36:"woocommerce_dashboard_recent_reviews";i:6;s:28:"woocommerce_dashboard_status";i:7;s:21:"dashboard_quick_press";i:8;s:17:"dashboard_primary";}'),
(762, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(763, 1, 'meta-box-order_tribe_events', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:110:"submitdiv,tagsdiv-post_tag,tribe_events_catdiv,acf-group_5608e0cc18359,tribe_events_event_options,postimagediv";s:6:"normal";s:170:"tribe_events_event_details,tribetickets,acf-group_5631c5b7db552,acf-group_5631b80d43aea,acf-group_560a0ade765ad,postexcerpt,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:10:"members-cp";}'),
(764, 1, 'screen_layout_tribe_events', '2') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B5ZnzkyyqtrMtRX9mc5A4B8LSZ/sEp0', 'admin', 'Bree@teachmepd.com.au', '', '2015-09-15 01:39:22', '', 0, 'Bree'),
(14, 'Matthew_Keath', '$P$B1SfdGBHDF2shpAPJEUUrj127iQbge/', 'matthew_keath', 'matthewjkeath@gmail.com', '', '2015-10-29 05:08:07', '$P$BDPzDfH7yr1Z/pbklNSfSD8/pwnapo1', 0, 'Matthew Keath'),
(15, 'Andrell_Education', '$P$BlPKVS.cqpxNQnvG7Pq.XCk.HwYQRw.', 'andrell_education', 'samantha@andrelleducation.com.au', 'http://www.andrelleducation.com.au', '2015-10-29 06:44:15', '', 0, 'Andrell Education'),
(16, 'Michael_Cequina', '$P$BpFV/ZtbOedM9UHfg.thIqw.m82noe1', 'michael_cequina', 'michael@cloudemployee.co.uk', '', '2015-10-30 00:24:48', '', 0, 'Michael Cequina'),
(17, 'brianna_shaw', '$P$BaGi6kytqr05EAa5ASfZ2gCaaNxIUn.', 'brianna_shaw', 'brianna_lynlee@hotmail.com', '', '2015-10-30 04:36:39', '', 0, 'brianna shaw'),
(18, 'Edumazing', '$P$BiUM8bdU3ils39GLX/.oidUYUftmUy/', 'edumazing', 'georgina@edumazing.com', 'http://www.edumazing.com', '2015-10-30 18:51:18', '', 0, 'Edumazing'),
(20, 'DIPL', '$P$B1RkNstLbGJyGKcxKAXkAyBSmebJAh.', 'dipl', 'danielle@dipl.com.au', 'https://dipl.com.au', '2015-10-30 19:30:52', '1446233452:$P$BTh7yD.lkDIMGUSqedThZKRvjBlUbt/', 0, 'DIPL- Doorway to Practical Learning'),
(21, 'Mappen', '$P$BRxURvTHpLH.sjBWzRXF.reREbIY.D1', 'mappen', 'info@getmappen.com', 'http://getmappen.com', '2015-10-30 19:35:22', '1446233722:$P$BcUDqrLo29CLYTWMi.QNBxoLmbdoRl1', 0, 'Mappen'),
(22, 'kinect2dance', '$P$BnZx49ap1C./8ih5in8klWEIdC5xJr0', 'kinect2dance', 'bree@kinect2dance.com.au', 'http://www.kinect2dance.com.au', '2015-10-31 04:47:50', '1446266870:$P$BwUQED8IbtrQPcDJtHZ5SUb4ZtCEPP/', 0, 'kinect2dance') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(10, 2, '_qty', '3'),
(11, 2, '_tax_class', ''),
(12, 2, '_product_id', '128'),
(13, 2, '_variation_id', '0'),
(14, 2, '_line_subtotal', '825'),
(15, 2, '_line_total', '825'),
(16, 2, '_line_subtotal_tax', '0'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(19, 3, '_qty', '2'),
(20, 3, '_tax_class', ''),
(21, 3, '_product_id', '107'),
(22, 3, '_variation_id', '0'),
(23, 3, '_line_subtotal', '550'),
(24, 3, '_line_total', '550'),
(25, 3, '_line_subtotal_tax', '0'),
(26, 3, '_line_tax', '0'),
(27, 3, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(28, 4, '_qty', '1'),
(29, 4, '_tax_class', ''),
(30, 4, '_product_id', '316'),
(31, 4, '_variation_id', '0'),
(32, 4, '_line_subtotal', '142'),
(33, 4, '_line_total', '142'),
(34, 4, '_line_subtotal_tax', '0'),
(35, 4, '_line_tax', '0'),
(36, 4, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_order_items`
#
INSERT INTO `wp_woocommerce_order_items` ( `order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Booking Request', 'line_item', 117),
(2, 'Frankston day 1', 'line_item', 139),
(3, 'Booking request', 'line_item', 314),
(4, 'Frankston Day 1', 'line_item', 317) ;

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


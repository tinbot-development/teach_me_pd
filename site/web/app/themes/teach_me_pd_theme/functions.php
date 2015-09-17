<?php
/**
 * Sage includes
 *
 * The $sage_includes array determines the code library included in your theme.
 * Add or remove files to the array as needed. Supports child theme overrides.
 *
 * Please note that missing files will produce a fatal error.
 *
 * @link https://github.com/roots/sage/pull/1042
 */
$sage_includes = [
  'lib/utils.php',                 // Utility functions
  'lib/init.php',                  // Initial theme setup and constants
  'lib/wrapper.php',               // Theme wrapper class
  'lib/conditional-tag-check.php', // ConditionalTagCheck class
  'lib/config.php',                // Configuration
  'lib/wp_bootstrap_navwalker.php',                    // Bootstrap Nav
  'lib/assets.php',                // Scripts and stylesheets
  'lib/titles.php',                // Page titles
  'lib/extras.php',                // Custom functions
  'lib/jquery-plugins.php',               // Custom jQUery Plugins
];

foreach ($sage_includes as $file) {
  if (!$filepath = locate_template($file)) {
    trigger_error(sprintf(__('Error locating %s for inclusion', 'sage'), $file), E_USER_ERROR);
  }

  require_once $filepath;
}
unset($file, $filepath);

function pb_before_content_wrap() {
    do_action('pb_before_content_wrap');
}


/**
 *  Add Bottom Latest News Section
 */
function add_bottom_latest_news_section(){
  get_template_part('templates/page/bottom','latest-news');
}

add_action('wp_head','add_events_calendar_styles');


function add_events_calendar_styles() {
  echo '<link rel="stylesheet" id="tribe-events-bootstrap-datepicker-css-css" href="http://teach-me-pd.dev/app/plugins/the-events-calendar/vendor/bootstrap-datepicker/css/datepicker.css?ver=4.3" type="text/css" media="all">
<link rel="stylesheet" id="tribe-events-custom-jquery-styles-css" href="http://teach-me-pd.dev/app/plugins/the-events-calendar/vendor/jquery/smoothness/jquery-ui-1.8.23.custom.css?ver=4.3" type="text/css" media="all">
<link rel="stylesheet" id="tribe-events-full-calendar-style-css" href="http://teach-me-pd.dev/app/plugins/the-events-calendar/src/resources/css/tribe-events-full.min.css?ver=3.12.1" type="text/css" media="all">
<link rel="stylesheet" id="tribe-events-calendar-style-css" href="http://teach-me-pd.dev/app/plugins/the-events-calendar/src/resources/css/tribe-events-theme.min.css?ver=3.12.1" type="text/css" media="all">
<link rel="stylesheet" id="tribe-events-calendar-full-mobile-style-css" href="http://teach-me-pd.dev/app/plugins/the-events-calendar/src/resources/css/tribe-events-full-mobile.min.css?ver=3.12.1" type="text/css" media="only screen and (max-width: 768px)">
<link rel="stylesheet" id="tribe-events-calendar-mobile-style-css" href="http://teach-me-pd.dev/app/plugins/the-events-calendar/src/resources/css/tribe-events-theme-mobile.min.css?ver=3.12.1" type="text/css" media="only screen and (max-width: 768px)">
<link rel="stylesheet" id="tribe-events-full-pro-calendar-style-css" href="http://teach-me-pd.dev/app/plugins/events-calendar-pro/src/resources/css/tribe-events-pro-full.min.css?ver=3.12" type="text/css" media="all">
<link rel="stylesheet" id="tribe-events-calendar-pro-style-css" href="http://teach-me-pd.dev/app/plugins/events-calendar-pro/src/resources/css/tribe-events-pro-theme.min.css?ver=3.12" type="text/css" media="all">
<link rel="stylesheet" id="tribe-events-calendar-full-pro-mobile-style-css" href="http://teach-me-pd.dev/app/plugins/events-calendar-pro/src/resources/css/tribe-events-pro-full-mobile.min.css?ver=3.12" type="text/css" media="only screen and (max-width: 768px)">
<link rel="stylesheet" id="tribe-events-calendar-pro-mobile-style-css" href="http://teach-me-pd.dev/app/plugins/events-calendar-pro/src/resources/css/tribe-events-pro-theme-mobile.min.css?ver=3.12" type="text/css" media="only screen and (max-width: 768px)">';
}


function enqueue_tribe_events_scripts_and_styles() {
  wp_enqueue_style( 'tribe_events-calendar-style' );
  wp_enqueue_script( 'tribe-events-pro-geoloc' );

  wp_enqueue_script('tribe-events-calendar');
  wp_enqueue_script('tribe-events-calendar-script');
  wp_enqueue_script('tribe-events-bootstrap-datepicker');
  wp_enqueue_script('tribe-events-admin');
  wp_enqueue_script('tribe-events-settings');
  wp_enqueue_script('tribe-events-ecp-plugins');
  wp_enqueue_script('tribe-events-bar');
  wp_enqueue_script('tribe-events-calendar');
  wp_enqueue_script('tribe-events-list');
  wp_enqueue_script('tribe-events-ajax-day');
  wp_enqueue_script('tribe-mini-calendar');
  wp_enqueue_script('tribe-events-pro-slimscroll');
  wp_enqueue_script('tribe-events-pro-week');
  wp_enqueue_script('tribe-events-pro-isotope');
  wp_enqueue_script('tribe-events-pro-photo');
  wp_enqueue_script('tribe-events-pro-geoloc');
  wp_enqueue_script('tribe-meta-box');
  wp_enqueue_script('tribe-jquery-ui');
  wp_enqueue_script('tribe-jquery-ui');
  wp_enqueue_script('tribe-timepicker');
  wp_enqueue_script('tribe-fac');
  wp_enqueue_script('tribe-events-pro');
}

add_action('wp_enqueue_scripts', 'enqueue_tribe_events_scripts_and_styles' );

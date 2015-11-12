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
  'lib/init-plugins.php',               // Custom jQUery Plugins
  'lib/init-acf-fields.php',               // Custom ACF Fields
  'lib/notification-emails/init.php',               // Email Notifications
];

foreach ($sage_includes as $file) {
  if (!$filepath = locate_template($file)) {
    trigger_error(sprintf(__('Error locating %s for inclusion', 'sage'), $file), E_USER_ERROR);
  }

  require_once $filepath;
}
unset($file, $filepath);

require_once('lib/custom-functions.php');
require_once('tribe-events/change_events_to_courses.php');



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
  echo '<link rel="stylesheet" id="tribe-events-bootstrap-datepicker-css-css" href="'.get_bloginfo('url').'/app/plugins/the-events-calendar/vendor/bootstrap-datepicker/css/datepicker.css?ver=4.3" type="text/css" media="all">
<link rel="stylesheet" id="tribe-events-custom-jquery-styles-css" href="'.get_bloginfo('url').'/app/plugins/the-events-calendar/vendor/jquery/smoothness/jquery-ui-1.8.23.custom.css?ver=4.3" type="text/css" media="all">
<link rel="stylesheet" id="tribe-events-full-calendar-style-css" href="'.get_bloginfo('url').'/app/plugins/the-events-calendar/src/resources/css/tribe-events-full.min.css?ver=3.12.1" type="text/css" media="all">
<link rel="stylesheet" id="tribe-events-calendar-style-css" href="'.get_bloginfo('url').'/app/plugins/the-events-calendar/src/resources/css/tribe-events-theme.min.css?ver=3.12.1" type="text/css" media="all">
<link rel="stylesheet" id="tribe-events-calendar-full-mobile-style-css" href="'.get_bloginfo('url').'/app/plugins/the-events-calendar/src/resources/css/tribe-events-full-mobile.min.css?ver=3.12.1" type="text/css" media="only screen and (max-width: 768px)">
<link rel="stylesheet" id="tribe-events-calendar-mobile-style-css" href="'.get_bloginfo('url').'/app/plugins/the-events-calendar/src/resources/css/tribe-events-theme-mobile.min.css?ver=3.12.1" type="text/css" media="only screen and (max-width: 768px)">
<link rel="stylesheet" id="tribe-events-full-pro-calendar-style-css" href="'.get_bloginfo('url').'/app/plugins/events-calendar-pro/src/resources/css/tribe-events-pro-full.min.css?ver=3.12" type="text/css" media="all">
<link rel="stylesheet" id="tribe-events-calendar-pro-style-css" href="'.get_bloginfo('url').'/app/plugins/events-calendar-pro/src/resources/css/tribe-events-pro-theme.min.css?ver=3.12" type="text/css" media="all">
<link rel="stylesheet" id="tribe-events-calendar-full-pro-mobile-style-css" href="'.get_bloginfo('url').'/app/plugins/events-calendar-pro/src/resources/css/tribe-events-pro-full-mobile.min.css?ver=3.12" type="text/css" media="only screen and (max-width: 768px)">
<link rel="stylesheet" id="tribe-events-calendar-pro-mobile-style-css" href="'.get_bloginfo('url').'/app/plugins/events-calendar-pro/src/resources/css/tribe-events-pro-theme-mobile.min.css?ver=3.12" type="text/css" media="only screen and (max-width: 768px)">';
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


add_action('pb_before_content_wrap','before_content_wrap_banner');

function before_content_wrap_banner(){
  if(is_singular('tribe_provider')){
    get_template_part('templates/provider/single','banner');
  }
}


/**
 * Trims a string of words to a specified number of characters, gracefully stopping at white spaces.
 * Also strips HTML tags, to prevent breaking in the middle of a tag.
 *
 * @param	string $text  The string of words to be trimmed.
 * @param	int $length  Maximum number of characters; defaults to 45.
 * @param	string $append  String to append to end, when trimmed; defaults to ellipsis.
 *
 * @return	String of words trimmed at specified character length.
 *
 * @author c.bavota
 */
function pb_trim_characters( $text, $length = 45, $append = '&hellip;' ) {

  $length = (int) $length;
  $text = trim( strip_tags( $text ) );

  if ( strlen( $text ) > $length ) {
    $text = substr( $text, 0, $length + 1 );
    $words = preg_split( "/[\s]|&nbsp;/", $text, -1, PREG_SPLIT_NO_EMPTY );
    preg_match( "/[\s]|&nbsp;/", $text, $lastchar, 0, $length );
    if ( empty( $lastchar ) )
      array_pop( $words );

    $text = implode( ' ', $words ) . $append;
  }

  return $text;
}

/** Get Organizer Logo
 * @param null $postId
 * @return mixed|void
 */
function tribe_get_organizer_logo( $postId = null ) {
  $postId = Tribe__Events__Main::postIdHelper( $postId );
  $output = esc_html( tribe_get_event_meta( tribe_get_organizer_id( $postId ), 'provider_logo', true ) );

  return apply_filters( 'tribe_get_organizer_email', $output );
}



add_filter( 'ajax_query_attachments_args', 'show_users_own_attachments', 1, 1 );
function show_users_own_attachments( $query )
{
  $id = get_current_user_id();
  if( !current_user_can('manage_options') )
    $query['author'] = $id;
  return $query;
}


function get_current_user_role () {
  global $current_user;
  get_currentuserinfo();
  $user_roles = $current_user->roles;
  $user_role = array_shift($user_roles);
  return $user_role;
};


if ( !function_exists('tribe_events_count_sold_tickets') ) {
  function tribe_events_count_sold_tickets ( $event = null ) {
    $count = 0;
    if ( null === $event = tribe_events_get_event( $event ) || !class_exists('TribeEventsTickets') ) {
      return 0;
    }
    foreach ( TribeEventsTickets::get_all_event_tickets( $event->ID ) as $ticket ) {
      $count += get_post_meta( $ticket->ID, 'total_sales', true );
    }
    return $count;
  }
}

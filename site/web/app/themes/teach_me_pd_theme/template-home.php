<?php
/**
 * Template Name: Home Page Template
 */

do_action( 'tribe_events_before_template' );

tribe_show_month( array( 'posts_per_page' => -1) );

do_action( 'tribe_events_after_template' );




// Bottom Latest News Section
add_action('pb_before_footer', 'add_bottom_latest_news_section', 10);




?>


<script type="text/javascript" src="http://teach-me-pd.dev/app/plugins/the-events-calendar/src/resources/js/tribe-events-ajax-calendar.min.js?ver=3.12.1"></script>

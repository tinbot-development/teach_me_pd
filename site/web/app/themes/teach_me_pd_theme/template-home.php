<?php
/**
 * Template Name: Home Page Template
 */
?>

<div class="col-md-12 bg-success text-center calendar-info">
  <h5> For all our up and coming professional development seminars, please click on the calendar dates below.
    Alternatively, dates and locations of our PD’s can be found under the <a href="<?php echo get_bloginfo('url');?>/courses-grid/">Courses</a> or <a href="<?php echo get_bloginfo('url');?>/providers/">Providers</a> tabs.</h5>
</div>
<?php

add_filter('tribe_get_events_title', 'pb_change_event_title');
function pb_change_event_title($title) {
  $title = date('F');
  return $title;
}

tribe_show_month( array( 'posts_per_page' => -1) );






// Bottom Latest News Section
//add_action('pb_before_footer', 'add_bottom_latest_news_section', 10);




?>


<script type="text/javascript" src="<?php echo get_bloginfo('url');?>/app/plugins/the-events-calendar/src/resources/js/tribe-events-ajax-calendar.min.js?ver=3.12.1"></script>

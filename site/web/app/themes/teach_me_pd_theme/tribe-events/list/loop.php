<?php
/**
 * List View Loop
 * This file sets up the structure for the list loop
 *
 * Override this template in your own theme by creating a file at [your-theme]/tribe-events/list/loop.php
 *
 * @package TribeEventsCalendar
 *
 */

if ( ! defined( 'ABSPATH' ) ) {
	die( '-1' );
} ?>

<?php
global $post;
global $more;
$more = false;
?>



<!-- Modified Template
    Did not use list/single-event.php template
-->
<div class="row recent-courses tribe-events-loop vcalendar">
  <?php while(have_posts()): the_post();
    $providerID = tribe_get_organizer_id( get_the_ID()  )
//    $output = esc_html( tribe_get_event_meta( tribe_get_organizer_id( $postId ), 'provider_logo', true ) );
    ?>
    <aside class="col-lg-4 col-md-5 col-sm-6 course">
      <div class="grid-content clearfix">
        <a href="<?php the_permalink();?>">
          <?php the_post_thumbnail('courses-grid-thumb', array('class' => 'img-responsive'));?>
        </a>
        <div class="bg-overlay">
          <div class="tribe-events-event-cost pull-left">
            <small>Starting at</small>
            <div><?php echo  ( tribe_get_cost() ) ? tribe_get_cost( null, true ): '$0'; ?></div>
          </div>
          <a href="<?php the_permalink();?>" class="book-now" >Book Now</a>
          <?php

          $size ='thumbnail';
          $args = array(
            'class'	=> "attachment-$size img-responsive provider-logo",
          );
          $provider_logo =  tribe_get_organizer_logo(get_the_ID());
            echo  '<a href="'. get_permalink($providerID).'">'.
                      wp_get_attachment_image( $provider_logo, $size, false, $args).
                  '</a>';
          ?>
        </div>

        <h5><?php the_title(); ?></h5>
      </div>
    </aside>

    <?php
  endwhile;
  ?>
</div><!-- .tribe-events-loop -->

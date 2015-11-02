<?php
/**
 *  Courses Grid View
 */

$args = array(
  'post_type' => 'tribe_events',
  'posts_per_page' => 6
  );
$courses = new WP_Query($args);

if($courses->have_posts()) : ?>
  <div class="row recent-courses">
  <?php while($courses->have_posts()) :
    $courses->the_post();
    ?>
    <aside class="col-md-4 col-sm-6 course">
        <div class="grid-content clearfix">
            <?php the_post_thumbnail('courses-grid-thumb', array('class' => 'img-responsive'));?>
            <div class="bg-overlay">
                <div class="tribe-events-event-cost pull-left">
                  <small>Starting at</small>
                  <span><?php echo  ( tribe_get_cost() ) ? tribe_get_cost( null, true ): '$0'; ?></span>
                </div>
                <a href="<?php the_permalink();?>" class="book-now" >Book Now</a>
              <?php

              $size ='thumbnail';
              $args = array(
                'class'	=> "attachment-$size img-responsive provider-logo",
              );
              $provider_logo =  tribe_get_organizer_logo(get_the_ID());
              echo wp_get_attachment_image( $provider_logo, $size, false, $args);
              ?>
            </div>

            <h5><?php the_title(); ?></h5>
        </div>
    </aside>

    <?php
  endwhile;
?>
  </div>
  <?php
else:
  ?>

  Oops, there are no posts.

  <?php
endif;

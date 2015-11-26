<?php
/**
 *  Courses Grid View
 */

$args = array(
  'post_type' => 'tribe_events',
  'posts_per_page' => 15
  );
$courses = new WP_Query($args);

if($courses->have_posts()) : ?>
  <div id="courses-grid-content" class="row recent-courses">
  <?php while($courses->have_posts()) :
    $courses->the_post();
    $providerID = tribe_get_organizer_id( get_the_ID()  )

    ?>
    <aside class="col-lg-4 col-md-5 col-sm-6 course">
        <div class="grid-content clearfix">
          <a href="<?php the_permalink();?>">
            <?php the_post_thumbnail('courses-grid-thumb', array('class' => 'img-responsive'));?>
          </a>
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
              if($provider_logo){
                echo  '<a href="'. get_permalink($providerID).'">'.
                          wp_get_attachment_image( $provider_logo, $size, false, $args).
                      '</a>';
              }
              ?>
            </div>

            <h5><?php the_title(); ?></h5>
            <span class="start-date"><?php echo tribe_get_start_date();?></span>
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

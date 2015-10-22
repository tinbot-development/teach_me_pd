<?php
/**
 * Homepage Banner Section
 */
?>

<section class="home-banner bg-gray-light clearfix">
  <div class="container">
    <!-- Home Banner Section -->
    <section class="row">
        <div class="col-md-10">
          <section class="img-slider">
            <div class="row">
              <div class="slider-content col-md-8 col-lg-6">
                <hgroup>
                  <h2>Welcome!</h2>
                  <h3><strong>TeachMe PD</strong> provides professional development pathways for teachers and educators across Australia.</h3>
                </hgroup>
                <div class="row">
                  <div class="btn-holder col-sm-6">
                    <a href="<?php echo get_bloginfo('url');?>/courses-grid/" class="btn btn-primary btn-lg">See our courses</a>
                  </div>
                  <div class="btn-holder col-sm-6">
                    <a href="<?php echo get_bloginfo('url');?>/providers/" class="btn btn-primary btn-lg">See our providers</a>
                  </div>
                </div>
              </div>
            </div>
          </section>
        </div>
        <div class="img-holder rotate-neg-sm">
          <img src="<?php echo get_bloginfo('url');?>/app/uploads/2015/09/banner-image-placeholder-245x288.jpg" alt="Teacher" class="img-border-lg" style="height: 278px;"/>
        </div>
    </section> <!-- .row-->
    <!--Upcoming Events-->
    <section class="row upcoming-events-holder">
        <div class="col-md-6 img-holder rotate-pos-sm">
          <img src="<?php echo get_bloginfo('url');?>/app/uploads/2015/09/bw-img-placeholder-439x296.jpg" alt="Teacher" class="img-border-lg" style="height: 265px;"/>
        </div>

      <?php
      /*Upcoming Events Widget*/
      $args = array(
        'post_type' => 'tribe_events',
        'post_per_page' => 10,
        "orderby" => 'meta_value_num',
        "meta_key" => '_EventStartDate',
        "order" => 'ASC'
      );
      $courses = new WP_Query($args);
//      TODO: Change next week manual for now
      if( $courses->have_posts()) : ?>

        <div class="col-md-5 upcoming-events-widget autoload pull-right-md">
          <h3>Registrations Closing Soon</h3>
          <aside id="coursesWrapper" class="scroll-wrapper">
            <ul id="upcomingCourses" class="scroll-pane list-unstyled list-upcoming-events brand-success">
            <?php
            while($courses->have_posts()) :
                  $courses->the_post();
                  $id = get_the_ID();
                  $startdate = get_post_meta($id,'_EventStartDate',true);
                  $month = date("M",strtotime($startdate));
                  $day = date("d",strtotime($startdate));
                  $organizerTitle = get_post_meta($id,'_OrganizerOrganizer');
                  $organizer = get_the_author();

              ?>
                  <li>
                        <span class="date icon-circle">
                            <p class="month"><?php echo $month;?></p>
                            <p class="day"><?php echo $day;?></p>
                        </span>
                    <div class="event-content">
                      <h5 class="event-title"><?php the_title(); ?></h5>
                      <p class="provider"><?php echo $organizer;?> <a href="<?php the_permalink();?>" class="more-link">More</a></p>
                    </div>
                  </li>


              <?php endwhile; ?>
            </ul>
          </aside>
        </div>
      <?php else:
          //Placeholder Only if No events
        ?>

        <div class="col-md-6 upcoming-events-widget">
          <h3>Registrations Closing Soon</h3>
          <ul class="list-unstyled list-upcoming-events brand-success">
            <li>
                <span class="date icon-circle">
                    <p class="month">Oct</p>
                    <p class="day">26</p>
                </span>
              <div class="event-content">
                <h5 class="event-title">Day 1 - Introduction to Big Write & VCOP</h5>
                <p class="provider">Andrell Education <a href="<?php echo get_bloginfo('url');?>/day-1-introduction-to-big-write-vcop-frankston-day-1-open-session" class="more-link">More</a></p>
              </div>
            </li>

            <li>
                <span class="date icon-circle">
                    <p class="month">Oct</p>
                    <p class="day">17</p>
                </span>
              <div class="event-content">
                <h5 class="event-title">Introduction to Big Write & VCOP</h5>
                <p class="provider">Andrell Education <a href="<?php echo get_bloginfo('url');?>/introduction-to-big-write-vcop-brisbane-day-1-open-session" class="more-link">More</a></p>
              </div>
            </li>
            <li>
                <span class="date icon-circle">
                    <p class="month">Oct</p>
                    <p class="day">9</p>
                </span>
              <div class="event-content">
                <h5 class="event-title">Day 2 - Assessment & Data Tracking</h5>
                <p class="provider">Andrell Education <a href="<?php echo get_bloginfo('url');?>/ivanhoe-day-2-open-session" class="more-link">More</a></p>
              </div>
            </li>
          </ul>
        </div>

        <?php
      endif;
      ?>

    </section>
  </div>
</section>



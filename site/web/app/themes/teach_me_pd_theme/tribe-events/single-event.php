<?php
/**
 * Single Event Template
 * A single event. This displays the event title, description, meta, and
 * optionally, the Google map for the event.
 *
 * Override this template in your own theme by creating a file at [your-theme]/tribe-events/single-event.php
 *
 * @package TribeEventsCalendar
 *
 */

if ( ! defined( 'ABSPATH' ) ) {
	die( '-1' );
}

$events_label_singular = tribe_get_event_label_singular();
$events_label_plural = tribe_get_event_label_plural();

$event_id = get_the_ID();

$provider_id = tribe_get_organizer_id($event_id);
?>

<div id="tribe-events-content" class="tribe-events-single vevent hentry">

	<p class="tribe-events-back">
		<a href="<?php echo home_url('courses-grid'); ?>"> <?php printf( __( '&laquo; All %s', 'the-events-calendar' ), $events_label_plural ); ?></a>
	</p>

	<!-- Notices -->
	<?php tribe_events_the_notices() ?>

	<?php the_title( '<h2 class="tribe-events-single-event-title summary entry-title">', '</h2>' ); ?>

	<div class="tribe-events-schedule updated published tribe-clearfix">
		<?php echo tribe_events_event_schedule_details( $event_id, '<h3>', '</h3>' ); ?>
		<?php if ( tribe_get_cost() ) : ?>
			<span class="tribe-events-divider">|</span>
			<span class="tribe-events-cost"><?php echo tribe_get_cost( null, true ) ?></span>
		<?php endif; ?>
	</div>

	<!-- Event header -->
	<div id="tribe-events-header" <?php tribe_events_the_header_attributes() ?>>
		<!-- Navigation -->
		<h3 class="tribe-events-visuallyhidden"><?php printf( __( '%s Navigation', 'the-events-calendar' ), $events_label_singular ); ?></h3>
		<ul class="tribe-events-sub-nav">
			<li class="tribe-events-nav-previous"><?php tribe_the_prev_event_link( '<span>&laquo;</span> %title%' ) ?></li>
			<li class="tribe-events-nav-next"><?php tribe_the_next_event_link( '%title% <span>&raquo;</span>' ) ?></li>
		</ul>
		<!-- .tribe-events-sub-nav -->
	</div>
	<!-- #tribe-events-header -->

	<?php while ( have_posts() ) :  the_post();
    $map = tribe_get_embedded_map(); //Get Event Map
    ?>
    <div class="row">
        <section class="col-md-9 main-content">
            <div id="post-<?php the_ID(); ?>" <?php post_class('row'); ?>>
              <!-- Event featured image, but exclude link -->
              <?php
              if ( is_null( $post_id ) ) {
                $post_id = get_the_ID();
              }

              ?>
              <aside class="left-sidebar col-lg-4 col-md-5">
                 <div class="tribe-events-event-image">
                    <?php the_post_thumbnail( $post_id, 'full' );?>
                 </div>
                 <section class="course-info">

                   <div class="panel panel-default venue-map">
                     <div class="panel-heading">
                       <h3 class="panel-title">Where</h3>
                     </div>
                     <div class="panel-body">
                       <?php echo $map; ?>
                     </div>
                     <div class="panel-footer">
                        <address>
                          <?php
                          $event_venue = tribe_get_venue_details(); //Array 0 - Name, 1 - Address
                          echo $event_venue["name"];
                          echo $event_venue["address"];
//                          var_dump(tribe_get_venue_details());
                          ?>
                        </address>
                     </div>
                   </div>
                  <?php
                   // check if the what_to_bring repeater field has rows of data
                   if( have_rows('what_to_bring') ): ?>
                     <div class="panel panel-default what-to-bring">
                       <div class="panel-heading">
                         <h3 class="panel-title">What to Bring</h3>
                       </div>
                       <div class="panel-body">
                          <?php
                           echo '<ul>';
                               // loop through the rows of data
                               while ( have_rows('what_to_bring') ) : the_row();
                                 echo '<li>';
                                   // display a sub field value
                                   the_sub_field('list_items');
                                 echo '</li>';
                               endwhile;
                           echo '</ul>'; ?>

                       </div>
                     </div>
                 <?php endif; ?>

                 <?php
                   // check if the what_is_provided repeater field has rows of data
                   if( have_rows('what_is_provided') ): ?>
                   <div class="panel panel-default what-is-provided">
                     <div class="panel-heading">
                       <h3 class="panel-title">What is Provided</h3>
                     </div>
                     <div class="panel-body">
                       <?php
                       echo '<ul>';
                       // loop through the rows of data
                       while ( have_rows('what_is_provided') ) : the_row();
                         echo '<li>';
                         // display a sub field value
                         the_sub_field('list_items');
                         echo '</li>';
                       endwhile;
                       echo '</ul>'; ?>

                     </div>
                   </div>
                   <?php endif; ?>

                 </section>
              </aside>
              <?php
              //echo tribe_event_featured_image( $event_id, 'full', false ); ?>

              <!-- Event content -->
              <?php //do_action( 'tribe_events_single_event_before_the_content' ) ?>
              <div class="tribe-events-single-event-description custom-tribe-events-content entry-content description col-lg-8 col-md-7 pull-right-md">
<!--                  <span class="time" data-value="--><?php //echo tribe_get_start_time();?><!--">--><?php //echo tribe_get_start_time();?><!--</span>-->
                <?php the_content(); ?>
              </div>
              <!-- .tribe-events-single-event-description -->
              <?php //do_action( 'tribe_events_single_event_after_the_content' ); //Google Calendar Export iCal ?>

              <!-- Event meta -->
              <?php// do_action( 'tribe_events_single_event_before_the_meta' ) ?>
              <?php //tribe_get_template_part( 'modules/meta' ); ?>
              <?php //do_action( 'tribe_events_single_event_after_the_meta' ); //book now button?>
            </div> <!-- #post-x -->
        <!-- Provider Information-->
        <?php
          //$provider_id = get_the_author_id();
          //Display Course Provider Information
          //the_provider_details($provider_id);
        ?>
        </section>
        <aside class="right-sidebar col-md-3">
          <h3>Book Now</h3>
          <?php
          the_event_date_selector();
          //Add Wootickets
          do_action( 'tribe_events_single_event_after_the_meta' );?>

        </aside>
    </div>
		<?php if ( get_post_type() == Tribe__Events__Main::POSTTYPE && tribe_get_option( 'showComments', false ) ) comments_template() ?>
	<?php endwhile; ?>

	<!-- Event footer -->
	<div id="tribe-events-footer">
		<!-- Navigation -->
		<h3 class="tribe-events-visuallyhidden"><?php printf( __( '%s Navigation', 'the-events-calendar' ), $events_label_singular ); ?></h3>
		<ul class="tribe-events-sub-nav">
			<li class="tribe-events-nav-previous"><?php tribe_the_prev_event_link( '<span>&laquo;</span> %title%' ) ?></li>
			<li class="tribe-events-nav-next"><?php tribe_the_next_event_link( '%title% <span>&raquo;</span>' ) ?></li>
		</ul>
		<!-- .tribe-events-sub-nav -->
	</div>
	<!-- #tribe-events-footer -->

</div><!-- #tribe-events-content -->

<?php
  add_action('pb_before_footer', 'pb_provider_courses_grid');
  function pb_provider_courses_grid(){
    $event_id = get_the_ID();
    $provider_id = tribe_get_organizer_id($event_id);
      ?>
      <section class="bg-default">
          <div class="container">
            <section class="row">

            <?php
            //$provider_id = ;
            echo tribe_organizer_upcoming_events($provider_id);
            ?>
            </section>
          </div>
      </section>
    <?php
  }
?>




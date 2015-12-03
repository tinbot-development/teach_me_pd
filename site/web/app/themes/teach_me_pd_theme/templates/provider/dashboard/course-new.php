<?php
/**
 * Frontend Course Edit page
 */

if (class_exists('Tribe__Events__Tickets__Woo__Main')) {
  remove_action( 'tribe_events_single_event_after_the_meta', array( Tribe__Events__Tickets__Woo__Main::get_instance(), 'front_end_tickets_form'), 5 );
  add_action( 'tribe_events_single_event_before_the_content', array( Tribe__Events__Tickets__Woo__Main::get_instance(), 'front_end_tickets_form') );
}
 ?>
<section class="row">
  <div class="col-md-10">
<?php
      acf_form(array(
        'post_id'		=> 'new_post',
        'post_title'	=> true,
        'post_content'	=> true,
        'new_post'		=> array(
          'post_type'		=> 'tribe_events',
          'post_status'	=> 'publish'
        ),
        'submit_value' => __("Save Course", 'acf'),
      ));


?>
  </div>
</section>


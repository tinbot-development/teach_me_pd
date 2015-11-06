<?php
/**
 *  Echo the Event Date Selector
 * Query all Events having the same base_event then show date with link.
 */
function the_event_date_selector() {
  $current_event_id = get_the_ID();
  //Get Base Event Meta if Null then it is equal to the current post id.
  $base_event = (get_field('base_event')) ? get_field('base_event'): $current_event_id;

  //Create the Select Box
  echo '<select id="eventDate" class="jquery-select-desktop form-control">';
  //Include the Base Event on the Dropdown query by Page ID
  $base_post = new WP_Query(array('p' => $base_event,'post_type'=> 'tribe_events'));
  if ( $base_post->have_posts() ) {
      while ( $base_post->have_posts() ) { $base_post->the_post();
        echo '<option value="'.get_permalink().'" class="base">' .  tribe_get_start_date() . '</option>';
    }
    wp_reset_postdata();
  }

    $args = array(
      'post_type' => 'tribe_events',
      'meta_query' => array(
        array(
          'key' => 'base_event',
          'value' => $base_event,
        )
      ),
      'order' => 'ASC',
      'orderby' => 'meta_value',
      'meta_key' => '_EventStartDate',
    );
    // The Query
    $the_query = new WP_Query( $args );
    // Generate Dropdown based on the base_event query.
    if ( $the_query->have_posts() ) {
      while ( $the_query->have_posts() ) { $the_query->the_post();
          $selected = ($current_event_id == get_the_ID()) ? 'selected' : '';
          echo '<option value="'.get_permalink().'" '. $selected. '>' .  tribe_get_start_date() . '</option>';
      }

    }

  echo '</select>';
    /* Restore original Post Data */
    wp_reset_postdata();

    add_action('wp_footer','the_event_date_selector_scripts');
}

/**
 * Function to Handle jQuery Scripts for Event Date Selector
 */
function the_event_date_selector_scripts(){
  ?>
      <script type="text/javascript">
            jQuery(document).ready(function($){
                  $('select#eventDate').on('change', function(){
                      console.log($(this).val());
                    window.location.href = $(this).val();
                  });
            });
      </script>
  <?php
}

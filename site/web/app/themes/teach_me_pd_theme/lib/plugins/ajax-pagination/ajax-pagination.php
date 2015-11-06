<?php
/**
 * Ajax Pagination Custom Plugin
 * For Courses Page
 */

function load_infinite_scroll_scripts(){
  ?>
  <style type="text/css"></style>
  <script type="text/javascript">
    (function( $ ) {
      var count = 2;
      $(window).scroll(function(){
        if  ($(window).scrollTop() == $(document).height() - $(window).height()){
          loadArticle(count);
          count++;
        }
      });

      function loadArticle(pageNumber){
        $("#pagination-loader").css('visibility','visible');
        var data = {
          'action': 'pb_infinite_scroll',
          'page_no': pageNumber

        };
        $.ajax({
          url: site_url + "/wp-admin/admin-ajax.php",
          type:'POST',
          data: data,
          success: function(html){
            $("#courses-grid-content").append(html);   // This will be the div where our content will be loaded
            $("#pagination-loader").css('visibility','hidden');
          }
        });
        return false;
      }
    })( jQuery );
  </script>
  <?php
}

add_action('wp_head','set_site_url');

function set_site_url(){
  ?>
  <script type="text/javascript">
    var site_url = "<?php echo site_url();?>";
  </script>
  <?php
}

/* Add Ajax Hook*/
function pb_wp_infinitepaginate() {
  $paged = $_POST['page_no']; // Page number
  $html = '';
  $pag = 0;



  if( filter_var( intval( $paged ), FILTER_VALIDATE_INT ) ) {
    $pag = $paged;
    $args = array(
      'post_type' => 'tribe_events',
      'paged' => $pag, // Uses the page number passed via AJAX
      'posts_per_page' => 6 // Change this as you wish
    );
    $courses = new WP_Query($args);

    if($courses->have_posts()) : ?>

        <?php while($courses->have_posts()) :
          $courses->the_post();
          $providerID = tribe_get_organizer_id( get_the_ID()  );

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
        wp_reset_query();
        ?>
      <?php
    endif;
    wp_die();
  }

}

add_action('wp_ajax_pb_infinite_scroll', 'pb_wp_infinitepaginate');           // for logged in user
add_action('wp_ajax_nopriv_pb_infinite_scroll', 'pb_wp_infinitepaginate');    // if user not logged in




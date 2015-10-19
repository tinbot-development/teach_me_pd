<?php
/**
 * Created by IntelliJ IDEA.
 * User: angelo
 * Date: 10/8/15
 * Time: 3:28 PM
 */

add_action( 'wp_enqueue_scripts', 'jquery_nicescroll_files' );

function jquery_nicescroll_files() {
  $version = wp_get_theme()->Version;
  //Modify JS to add Font Awesome Icons
  wp_enqueue_script( 'jquery_nicescroll_js', get_stylesheet_directory_uri() . '/lib/plugins/jQueryNiceScroll/js/jquery.nicescroll.min.js', array('jquery'), $version, false );

}


add_action( 'wp_footer', 'custom_nicescroll_scripts' );
function custom_nicescroll_scripts(){
  ?>
  <script type="text/javascript">
    jQuery(document).ready(
      function($) {
//          $("#upcomingCourses").niceScroll("#coursesWrapper",{cursorcolor:"#00F"});
//        $("#coursesWrapper").niceScroll({cursorcolor:"#00F"});
          console.log('Scroll Enabled');
      }

    );
  </script>
  <?php
}

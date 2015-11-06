<?php

/**
 * Load all jQuery Selectbox resources
 */


add_action( 'wp_enqueue_scripts', 'jquery_selectbox_files' );

function jquery_selectbox_files() {
  $version = wp_get_theme()->Version;
  // wp_enqueue_script( $handle, $src, $deps, $ver, $in_footer );
  wp_enqueue_style( 'jquery_selectbox_css', get_stylesheet_directory_uri() . '/lib/plugins/jquerySelectbox/css/jquery.selectbox.css', array(), $version );
  //Modify JS to add Font Awesome Icons
  wp_enqueue_script( 'jquery_selectbox_js', get_stylesheet_directory_uri() . '/lib/plugins/jquerySelectbox/js/jquery.selectbox-0.2.js', array('jquery'), $version, false );

}


add_action( 'wp_footer', 'custom_selectbox_scripts' );

function custom_selectbox_scripts(){
  if(wp_is_mobile()):
    //Mobile Only jQuery Select Boxes
  ?>
    <script type="text/javascript">
    jQuery("select.select-box-default").selectbox({
      effect: "fade"
    });
  </script>
  <?php
  else:
    //Default Select Box and Desktop Only Select Boxes
    ?>
    <script type="text/javascript">
      jQuery("select.select-box-default, select.jquery-select-desktop").selectbox({
        effect: "fade"
      });
    </script>
    <?php
  endif;
}

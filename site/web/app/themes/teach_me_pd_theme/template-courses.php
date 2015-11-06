<?php
/**
 * Template Name: Courses Grid Template
 */
?>

<?php while (have_posts()) : the_post(); ?>
  <?php get_template_part('templates/page', 'header'); ?>
  <?php get_template_part('templates/content', 'courses-grid'); ?>
  <div id="pagination-loader" class="col-md-12 text-center" style="visibility: hidden;">
      <img src="<?php echo get_stylesheet_directory_uri();?>/assets/images/ajax_loader.gif">
      <p>Loading...</p>
    </div>
<?php endwhile;

add_action( 'wp_footer', 'load_infinite_scroll_scripts' );


// Bottom Latest News Section
//add_action('pb_before_footer', 'add_bottom_latest_news_section', 10);

<?php
/**
 * Template Name: Courses Grid Template
 */
?>

<?php while (have_posts()) : the_post(); ?>
  <?php get_template_part('templates/page', 'header'); ?>
  <?php get_template_part('templates/content', 'courses-grid'); ?>
<?php endwhile;



// Bottom Latest News Section
//add_action('pb_before_footer', 'add_bottom_latest_news_section', 10);

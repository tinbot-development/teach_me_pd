<?php
/**
 * Template Name: Providers Page Template
 */

?>
<?php while (have_posts()) : the_post(); ?>
  <?php get_template_part('templates/page', 'header'); ?>
  <div class="providers-list">
    <?php get_template_part('templates/content', 'providers-list-user-query'); ?>
  </div>
  <?php the_content();?>
<?php endwhile; ?>





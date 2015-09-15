<?php
/**
 * Template Name: Home Page Template
 */
?>

<?php while (have_posts()) : the_post(); ?>
  <?php get_template_part('templates/page', 'header'); ?>
  <?php get_template_part('templates/content', 'page'); ?>
<?php endwhile; ?>

<?php do_action( 'tribe_events_before_template' ) ?>

<!-- Tribe Bar -->
<?php tribe_get_template_part( 'modules/bar' ); ?>

<!-- Main Events Content -->
<?php tribe_get_template_part( 'month/content' ); ?>

<?php do_action( 'tribe_events_after_template' ) ?>

<?php
/**
 *  Courses Grid View
 */

$args = array(
  'post_type' => 'tribe_events',
  'post_per_page' => 6
  );
$courses = new WP_Query($args);

if($courses->have_posts()) : ?>
  <div class="row recent-courses">
  <?php while($courses->have_posts()) :
    $courses->the_post();
    ?>
    <aside class="col-md-4 col-sm-6 course">
        <?php the_post_thumbnail('medium', array('class' => 'img-responsive'));?>
        <div>
          <h5><?php the_title(); ?></h5>
          <a href="<?php the_permalink();?>" class="btn btn-primary btn-md book-course" >Book</a>
        </div>
    </aside>

    <?php
  endwhile;
?>
  </div>
  <?php
else:
  ?>

  Oops, there are no posts.

  <?php
endif;

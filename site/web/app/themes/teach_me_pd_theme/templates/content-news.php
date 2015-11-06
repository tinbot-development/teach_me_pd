<?php
?>
<article class="recent-news">
  <?php
  $args = array(
    'post_type' => 'post'
  );
  $news = new WP_Query($args);

  if( $news->have_posts()) : ?>


    <div class="row">
      <?php while($news->have_posts()) :
        $news->the_post();
        ?>

        <aside class="col-lg-6 col-sm-6 news">
          <div class="grid-content clearfix">
            <a href="<?php the_permalink()?>">
              <?php the_post_thumbnail('courses-grid-thumb', array('class' => 'img-responsive'));?>
            <div class="bg-overlay">
              <h4 class="post-title"><?php the_title(); ?></h4>
            </div>

            <div class="entry-content">
              <p><?php echo pb_trim_characters(get_the_excerpt(), 105); ?></p>
              <a class="btn btn-primary" href="<?php the_permalink();?>">Read More</a>
            </div>
          </div>
        </aside>

        <?php
      endwhile; ?>

    </div>


  <?php endif; ?>
</article>


<?php
/**
 * Page Bottom Latest News Section
 */


$args = array(
  'post_type' => 'post',
  'post_per_page' => 3
);
$news = new WP_Query($args);

if($news->have_posts()) : ?>
<section class="bottom-latest-news">
  <div class="container">
    <div class="row">
  <?php while($news->have_posts()) :
    $news->the_post();
    ?>
    <aside class="col-md-4">
      <div class="latest-news bg-info">
        <?php the_post_thumbnail('medium', array('class' => 'img-responsive'));?>
        <h5 class="post-title"><?php the_title(); ?></h5>
        <div class="entry-content">
          <p><?php the_excerpt();?> <a href="<?php the_permalink();?>">More</a></p>
        </div>
      </div>
    </aside>
   <?php
  endwhile; ?>

    </div>
  </div>
</section>

<?php else : ?>
    <section class="bottom-latest-news">
      <div class="container">
        <div class="row">
          <aside class="col-md-4">
            <div class="latest-news bg-info">
              <img src="<?php echo get_bloginfo('url');?>/app/uploads/2015/09/featured-image-placeholder-222x148.jpg" alt="" class="wp-post-image img-responsive"/>
              <h5 class="post-title">Title</h5>
              <div class="entry-content">
                <p>Lorem ipsum dolor sit amet, tetur adipisicing elit, sed do eiusmod dostempor incididunt ut labore et
                  dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ut enim ad minim. <a href="#">More</a></p>
              </div>
            </div>
          </aside>
          <aside class="col-md-4">
            <div class="latest-news bg-info">
              <img src="<?php echo get_bloginfo('url');?>/app/uploads/2015/09/featured-image-placeholder-222x148.jpg" alt="" class="wp-post-image img-responsive"/>
              <h5 class="post-title">Title</h5>
              <div class="entry-content">
                <p>Lorem ipsum dolor sit amet, tetur adipisicing elit, sed do eiusmod dostempor incididunt ut labore et
                  dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ut enim ad minim. <a href="#">More</a></p>
              </div>
            </div>
          </aside>
          <aside class="col-md-4">
            <div class="latest-news bg-info">
              <img src="<?php echo get_bloginfo('url');?>/app/uploads/2015/09/featured-image-placeholder-222x148.jpg" alt="" class="wp-post-image img-responsive"/>
              <h5 class="post-title">Title</h5>
              <div class="entry-content">
                <p>Lorem ipsum dolor sit amet, tetur adipisicing elit, sed do eiusmod dostempor incididunt ut labore et
                  dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ut enim ad minim. <a href="#">More</a></p>
              </div>
            </div>
          </aside>
        </div>
      </div>
    </section>
<?php endif;?>





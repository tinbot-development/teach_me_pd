<?php
/**
 *  Providers List View
 */

$providers = new WP_Query( array( 'post_type' => 'tribe_provider') );

//var_dump($providers);

// User Loop
if (  $providers->have_posts() )  {
  while ( $providers->have_posts() ) {
    $providers->the_post();
    $providerID = get_the_ID();
    $provider_bio = get_the_content();
//    $tribe_provider_permalink = get_user_meta($providerID,'tribe_provider_permalink', true)
    ?>
    <section class="row">
      <div class="provider-holder">
        <div class="row">
            <div class="col-md-2">
              <?php
              $acfpostid = 'user_' . $provider->ID;
              $overview_description = get_field('overview_description',$acfpostid);
              $image = get_field('profile_image',$acfpostid);
              $size ='medium';

              if($image){

                $args = array('class'	=> "img-responsive provider-img");
                echo wp_get_attachment_image( $image, $size, true, $args);
              } else {
                echo '<img src="'. get_bloginfo('url').'/app/uploads/2015/09/author-placeholder.png" alt="'. $alt.'" class="img-responsive provider-img placeholder"/>';

              }

              ?>

            </div>
            <div class="col-md-10 provider-info">
              <h4 class="provider-name"><?php echo $provider->display_name;?></h4>
              <aside class="provider-bio"><?php echo wp_trim_words( wpautop($overview_description), 50, '...' );?></aside>
              <a href="<?php echo $tribe_provider_permalink;?>" class="provider-more-info">Read more about this provider</a><a href="<?php echo $tribe_provider_permalink;?>/?courses_only=1" class="all-courses pull-right-md">See all courses from this provider</a>
            </div>
        </div>
      </div>
    </section>

    <?php

  }
  echo paginate_links();
} else {
  echo 'No users found.';
}

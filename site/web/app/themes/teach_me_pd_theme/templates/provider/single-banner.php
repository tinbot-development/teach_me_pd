<?php
/**
 * Template Part: Single Provider Page Banner
 */
$provider = get_queried_object();

$providerName =$provider->post_title;
$website = get_field('_OrganizerWebsite',$provider->ID);
$facebook = get_field('facebook',$provider->ID);
$twitter = get_field('twitter',$provider->ID);
$instagram = get_field('instagram',$provider->ID);
$providerAddress = 'Langwarrin, Vic 3910';

$logo = get_field('provider_logo',$provider->ID);
$size = 'thumbnail'; // (thumbnail, medium, large, full or custom size)
$attr = array(
  'class'	=> "attachment-$size img-responsive provider-logo",

);



?>

<section class="provider-banner clearfix" style="background-image: url(<?php echo home_url('/app/uploads/2015/10/banner-providers.jpg');?>)">
  <div class="container">
    <!-- Single Provider Banner Section -->
    <section class="row">
      <div class="col-md-12">
        <div class="icon-logo-holder pull-right-md">
          <ul class="social-media-icons round">
            <li><a target="_blank" href="<?php echo $facebook?>" class="facebook">Facebook Account</a></li>
            <li><a target="_blank" href="<?php echo $instagram; ?>" class="instagram">Instagram Account</a></li>
            <li><a target="_blank" href="<?php echo $twitter; ?>" class="twitter">Twitter Account</a></li>
            <li class="logo">
              <a target="_blank" href="<?php echo $website;?>">
                <?php if( $logo ) {
                    echo wp_get_attachment_image( $logo, $size, false, $attr);
                }?>
              </a></li>
          </ul>

        </div>
      </div>
    </section>
  </div>

<div class="bg-overlay">
  <div class="container">
    <!-- Single Provider Banner Section -->
    <section class="row">
      <div class="col-md-10">
          <aside class="provider-info pull-right-md">
              <h4><?php echo $providerName;?></h4>
              <a href="<?php echo $website;?>" target="_blank"><?php echo $website;?></a>
              <address><?php echo $providerAddress;?></address>
          </aside>
      </div>
    </section>
  </div>
</div>
</section>

<nav class="provider-top-nav hidden-xs">
  <div class="container">
    <?php wp_nav_menu( array('menu' => 'Provider Top Nav' )); ?>
  </div>
</nav>


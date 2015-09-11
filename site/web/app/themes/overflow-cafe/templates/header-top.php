<section class="top-header">
  <div class="container">
    <div class="row">
      <?php
      /* Mobile Top Header*/
      if(wp_is_mobile()):?>


        <address class="contact-info pull-right-md clearfix">
          <div itemscope itemtype="http://schema.org/LocalBusiness">
            <span itemprop="name" class="sr-only">Overflow Cafe and Wine Bar</span>
            <div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
              <span itemprop="streetAddress">445 Blackburn Rd Mt Waverley</span>
              <span itemprop="addressLocality" class="sr-only">Monash, Melbourne</span>
              <span itemprop="addressRegion" class="sr-only">Victoria, Australia</span>
              <span itemprop="postalCode" class="sr-only">3149</span>
            </div>
            <span itemprop="telephone" class="sr-only">03 8805 8400</span>
          </div>
          <?php echo '<aside class="telephone"><span class="glyphicon glyphicon-earphone"></span><a href="tel: 03 8805 8400">03 8805 8400</a></aside>'; ?>
          <div class="btn-holder text-center col-xs-12">
            <a href="<?php echo SITE_URL;?>/get-directions/" class="btn btn-primary btn-xs text-league-gothic">Get Directions</a>
            <a href="<?php echo SITE_URL;?>/book-online/" class="btn btn-warning btn-sm">Book Online</a>
          </div>


        </address>

          <a class="events-widget" href="<?php echo SITE_URL;?>/special-events/special-event-wine-tasting-at-overflow-this-winter">
                <span>
                    <h2>Coming Events</h2>
                    <p>See All</p>
                </span>
            <img class="img-responsive" src="<?php echo SITE_URL;?>/app/uploads/2015/09/coming-events-image.jpg" alt="Coming Events"/>
          </a>
      <?php
          /* Desktop Top Header*/
          else: ?>

          <a class="pull-left-md events-widget" href="<?php echo SITE_URL;?>/special-events/special-event-wine-tasting-at-overflow-this-winter">
                <span>
                    <h2>Coming Events</h2>
                    <p>See All</p>
                </span>
            <img class="img-responsive" src="<?php echo SITE_URL;?>/app/uploads/2015/09/coming-events-image.jpg" alt="Coming Events"/>
          </a>

          <address class="contact-info pull-right-md clearfix">
            <div itemscope itemtype="http://schema.org/LocalBusiness">
              <span itemprop="name" class="sr-only">Overflow Cafe and Wine Bar</span>
              <span class="business-name clearfix"><h2>Overflow Cafe</h2><img src="<?php echo get_stylesheet_directory_uri();?>/dist/images/bg/ampersand.png" alt="and" class="ampersand"/><h2>Wine Bar</h2></span>

              <div class="pull-left" itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                <span itemprop="streetAddress">445 Blackburn Rd<br/>Mt Waverley</span>
                <span itemprop="addressLocality" class="sr-only">Monash, Melbourne</span>
                <span itemprop="addressRegion" class="sr-only">Victoria, Australia</span>
                <span itemprop="postalCode" class="sr-only">3149</span>
              </div>
              <span itemprop="telephone" class="sr-only">03 8805 8400</span>
            </div>
            <a href="<?php echo SITE_URL;?>/get-directions/" class="pull-right btn btn-primary btn-xs text-league-gothic">Get Directions</a>
            <a href="<?php echo SITE_URL;?>/book-online/" class="btn btn-warning btn-sm">Book Online</a>

            <?php echo '<aside class="telephone"><span class="glyphicon glyphicon-earphone"></span><a href="tel: 03 8805 8400">03 8805 8400</a></aside>'; ?>
          </address>

      <?php endif;?>
    </div>
  </div>
</section>

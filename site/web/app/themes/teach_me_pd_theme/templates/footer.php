<footer class="content-info" role="contentinfo">

  <section class="sub-footer">
      <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="bg-gray-light clearfix">
                <span class="text-uppercase pull-left-md text-sm">Term Dates and Public Holidays</span>
                <ul class="public-holidays-link link-with-separator pull-right-md text-sm">
                  <li><a href="<?php echo get_bloginfo('url');?>/vic-term-dates/">VIC</a></li>
                  <li><a href="<?php echo get_bloginfo('url');?>/nsw-term-dates/">NSW</a></li>
                  <li><a href="<?php echo get_bloginfo('url');?>/sa-term-dates/">SA</a></li>
                  <li><a href="<?php echo get_bloginfo('url');?>/nt-term-dates/">NT</a></li>
                  <li><a href="<?php echo get_bloginfo('url');?>/wa-term-dates/">WA</a></li>
                  <li><a href="<?php echo get_bloginfo('url');?>/term-dates-and-public-holidays-act">ACT</a></li>
                  <li><a href="<?php echo get_bloginfo('url');?>/qld-term-dates/">QLD</a></li>
                  <li><a href="<?php echo get_bloginfo('url');?>/tas-term-dates/">TAS</a></li>
                </ul>
              </div>
            </div>
          </div>
      </div>
  </section>

  <section class="footer-bottom bg-success">
    <div class="container">
      <?php if(!dynamic_sidebar('sidebar-footer')): ?>
        <div class="row">
            <div class="col-md-3">
              <ul class="social-media-icons">
                <li><a target="_blank" href="https://www.facebook.com/teachmepd" class="facebook">Facebook Account</a></li>
                <li><a target="_blank" href="https://twitter.com/teachme_pd" class="twitter">Twitter Account</a></li>
                <!--                <li><a target="_blank" href="" class="linkedin">LinkedIn Account</a></li>-->
              </ul>
            </div>
          <div class="col-md-6 text-center">
            <?php

            if( is_user_logged_in() ) {
              $menu = 'footer-menu-logged-in';
            } else {
              $menu = 'footer-menu-logged-out';
            }

            if (has_nav_menu('footer_navigation')) :
              wp_nav_menu([ 'menu' => $menu,'theme_location' => 'footer_navigation', 'walker' => new wp_bootstrap_navwalker(), 'menu_class' => 'footer-nav']);
            endif;
            ?>
          </div>
            <div class="col-md-3">
              <ul class="link-with-separator text-sm pull-right-md">
                <li><a href="<?php echo get_bloginfo('url');?>/wp/wp-login.php">Admin Login</a></li>
                <li><a href="<?php echo get_bloginfo('url');?>/login/">Provider Login</a></li>
<!--                <li><a target="_blank" class="platform-b text-sm text-right pull-right-md" href="http://platformb.com.au/">Site by Platform B</a></li>-->
              </ul>

            </div>
        </div>
      <?php endif;?>
    </div>
  </section>

</footer>

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
            <div class="col-md-6">
              <ul class="link-with-separator text-sm">
                <li><a href="<?php echo get_bloginfo('url');?>/terms-and-conditions/">Terms</a></li>
                <li><a href="<?php echo get_bloginfo('url');?>/policy/">Policy</a></li>
              </ul>
              <ul class="social-media-icons">
                <li><a target="_blank" href="https://www.facebook.com/teachmepd" class="facebook">Facebook Account</a></li>
<!--                <li><a target="_blank" href="" class="twitter">Twitter Account</a></li>-->
<!--                <li><a target="_blank" href="" class="linkedin">LinkedIn Account</a></li>-->
              </ul>
            </div>
            <div class="col-md-6">
              <a target="_blank" class="platform-b text-sm text-right pull-right-md" href="http://platformb.com.au/">Site by Platform B</a>
            </div>
        </div>
      <?php endif;?>
    </div>
  </section>

</footer>

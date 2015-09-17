<footer class="content-info" role="contentinfo">

  <section class="sub-footer">
      <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="bg-gray-light clearfix">
                <span class="text-uppercase pull-left-md text-sm">Term Dates and Public Holidays</span>
                <ul class="public-holidays-link link-with-separator pull-right-md text-sm">
                  <li><a href="#">VIC</a></li>
                  <li><a href="#">NSW</a></li>
                  <li><a href="#">SA</a></li>
                  <li><a href="#">NT</a></li>
                  <li><a href="#">WA</a></li>
                  <li><a href="#">ACT</a></li>
                  <li><a href="#">TAS</a></li>
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
                <li><a href="#">Terms</a></li>
                <li><a href="#">Policy</a></li>
              </ul>
              <ul class="social-media-icons">
                <li><a href="#" class="facebook">Facebook Account</a></li>
                <li><a href="" class="twitter">Twitter Account</a></li>
                <li><a href="" class="linkedin">LinkedIn Account</a></li>
              </ul>
            </div>
            <div class="col-md-6">
              <a class="platform-b text-sm text-right pull-right-md" href="">Site by Platform B</a>
            </div>
        </div>
      <?php endif;?>
    </div>
  </section>

</footer>

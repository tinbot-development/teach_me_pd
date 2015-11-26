<?php
  /* Dashboard Index Page*/
?>


<!-- Page Heading -->
  <div class="row">
    <div class="col-lg-12">
      <h1 class="page-header">Course Bookings</h1>
</div>
</div>
<!-- /.row -->


<section class="row">
  <div class="col-lg-12">
        <?php  echo do_shortcode('[provider_display_all_attendees]');?>
  </div>
</section>
<!-- /.row -->

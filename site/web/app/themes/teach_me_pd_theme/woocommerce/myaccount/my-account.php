<?php
/**
 * My Account page
 *
 * @author 		WooThemes
 * @edited by   McLane Creative
 * @package 	WooCommerce/Templates
 * @version     3.0.0
 */
if ( ! defined( 'ABSPATH' ) ) {
  exit;
}
wc_print_notices();

$current_user_role =  get_current_user_role();

    if($current_user_role =='subscriber'){
?>



<!-- TAB NAVIGATION -->
<ul class="nav nav-tabs" role="tablist">
  <li class="active"><a href="#home" role="tab" data-toggle="tab" >Home</a></li>
  <li><a href="#courses" role="tab" data-toggle="tab" >My Courses</a></li>
  <li><a href="#profile" role="tab" data-toggle="tab">My Profile</a></li>
  <li><a href="#editPassword" role="tab" data-toggle="tab">Change My Password</a></li>
</ul>
<!-- TAB CONTENT -->
<div class="tab-content">
  <div class="active tab-pane fade in" id="home">

        <h2 class="text-primary-dark">Welcome to TeachMe PD</h2>
        <?php
        printf(
          __( '<p style="display: inline;">Hello <strong>%1$s</strong></p> (not %1$s? <a href="%2$s">Sign out</a>).', 'woocommerce' ) . ' ',
          $current_user->display_name,
          wp_logout_url( get_permalink( wc_get_page_id( 'myaccount' ) ) )
        ); ?>
        <p style="margin-top: 1em;">Welcome to your account dashboard. Here you can view your <a href="#courses" role="tab" data-toggle="tab" >current registrations, check your account history,
          download course certificates</a>, and <a href="#editPassword" role="tab" data-toggle="tab" >edit your password</a> and <a href="#profile" role="tab" data-toggle="tab" >account details</a>.</p>
        <?php
        the_field('home_tab_content', 'option');
        ?>

  </div>
  <div class="tab-pane fade" id="courses">
    <?php
    wc_get_template( 'myaccount/my-orders.php', array( 'order_count' => $order_count ) );

    the_field('my_courses_content', 'option');
    ?>
  </div>
  <div class="tab-pane  fade" id="profile">
    <h2>User Profile</h2>
    <?php
          echo do_shortcode('[teacher_profile_edit_form]'); //Echo Teacher Edit Profile Form from Custom Teachers Management Plugin
    ?>
  </div>
  <div class="tab-pane  fade" id="editPassword">
        <?php
            echo do_shortcode('[password_form]');
        ?>
  </div>
<?php

    }
    else if($current_user_role =='provider'){

      ?>
  <!-- PROVIDER TAB NAVIGATION -->
  <ul class="nav nav-tabs" role="tablist">
    <li><a href="#profile" role="tab" data-toggle="tab">My Profile</a></li>
    <li><a href="#courses" role="tab" data-toggle="tab">Courses</a></li>
    <li><a href="#editPassword" role="tab" data-toggle="tab">Change My Password</a></li>
  </ul>
  <!-- PROVIDER TAB CONTENT -->
  <div class="tab-content">
    <div class="active tab-pane fade in" id="profile">

      <?php
      echo do_shortcode('[provider_profile_edit_form]'); //Echo Provider Edit Profile Form from Custom Providers Management Plugin
      ?>
    </div>
    <div class="tab-pane fade" id="courses">
          <?php echo do_shortcode('[provider_display_courses]')?>
    </div>

    <div class="tab-pane  fade" id="editPassword">
      <?php
        echo do_shortcode('[password_form]');
      ?>
    </div>

      <?php

    }
    else {
    //Non Teachers Accounts Page
      echo do_shortcode('[wp-members page=user-profile]');
    }


?>


    <script type="text/javascript">
      jQuery(document).ready(function($){
        /*Enable outside link to bootstrap tabs*/
        $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
          var target = this.href.split('#');
          $('.nav a').filter('[href="#'+target[1]+'"]').tab('show');
        })
      });
    </script>

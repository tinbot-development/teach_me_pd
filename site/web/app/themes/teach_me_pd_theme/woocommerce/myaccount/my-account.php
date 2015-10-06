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
wc_print_notices(); ?>



<!-- TAB NAVIGATION -->
<ul class="nav nav-tabs" role="tablist">
  <li class="active"><a href="#billing" role="tab" data-toggle="tab">Account Information</a></li>
  <li><a href="#more-info" role="tab" data-toggle="tab">Profile</a></li>
  <li><a href="#courses" role="tab" data-toggle="tab">Courses</a></li>

</ul>
<!-- TAB CONTENT -->
<div class="tab-content">
  <div class="active tab-pane fade in" id="billing">
    <h2>Billing Account Information</h2>

    <p class="myaccount_user">
      <?php

      printf(
        __( 'Test Hello <strong>%1$s</strong> (not %1$s? <a href="%2$s">Sign out</a>).', 'woocommerce' ) . ' ',
        $current_user->display_name,
        wp_logout_url( get_permalink( wc_get_page_id( 'myaccount' ) ) )
      );
      printf( __( 'From your account dashboard you can view your recent orders, manage your shipping and billing addresses and <a href="%s">edit your password and account details</a>.', 'woocommerce' ),
        wc_customer_edit_account_url()
      );
      wc_get_template( 'myaccount/my-address.php' );

      ?>
    </p>
  </div>
  <div class="tab-pane fade" id="more-info">
    <h2>User Profile</h2>

    <?php echo do_shortcode('[wp-members page=user-profile]');?>
  </div>
  <div class="tab-pane fade" id="courses">
    <?php wc_get_template( 'myaccount/my-orders.php', array( 'order_count' => $order_count ) ); ?>
  </div>



</div>

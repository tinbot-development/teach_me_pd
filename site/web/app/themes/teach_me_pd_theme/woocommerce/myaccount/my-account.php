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
  <li class="active"><a href="#courses" role="tab" data-toggle="tab" >My Courses</a></li>
  <li><a href="#more-info" role="tab" data-toggle="tab">My Profile</a></li>
</ul>
<!-- TAB CONTENT -->
<div class="tab-content">
  <div class="active tab-pane fade in" id="courses">
    <?php
    printf(
      __( '<h3>Hello <strong>%1$s</strong></h3> (not %1$s? <a href="%2$s">Sign out</a>).', 'woocommerce' ) . ' ',
      $current_user->display_name,
      wp_logout_url( get_permalink( wc_get_page_id( 'myaccount' ) ) )
    );
    wc_get_template( 'myaccount/my-orders.php', array( 'order_count' => $order_count ) ); ?>
  </div>
  <div class="tab-pane  fade" id="more-info">
    <h2>User Profile</h2>

    <?php
    echo do_shortcode('[wpmem_form user_edit]');

    //wpmem_inc_registration( 'edit', 'Your Profile' );
    ?>
  </div>



</div>

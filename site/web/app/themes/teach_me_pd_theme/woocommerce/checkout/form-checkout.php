<?php
/**
 * Checkout Form
 *
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.3.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

wc_print_notices();

do_action( 'woocommerce_before_checkout_form', $checkout );

// If checkout registration is disabled and not logged in, the user cannot checkout
if ( ! $checkout->enable_signup && ! $checkout->enable_guest_checkout && ! is_user_logged_in() ) {
	echo apply_filters( 'woocommerce_checkout_must_be_logged_in_message', __( 'You must be logged in to checkout.', 'woocommerce' ) );
	return;
}

// filter hook for include new pages inside the payment method
$get_checkout_url = apply_filters( 'woocommerce_get_checkout_url', WC()->cart->get_checkout_url() ); ?>

<form name="checkout" method="post" class="checkout woocommerce-checkout" action="<?php echo esc_url( $get_checkout_url ); ?>" enctype="multipart/form-data">

	<?php if ( sizeof( $checkout->checkout_fields ) > 0 ) : ?>

		<?php do_action( 'woocommerce_checkout_before_customer_details' ); ?>

		<div class="col2-set" id="customer_details">
			<div class="col-12">
				<?php do_action( 'woocommerce_checkout_billing' ); ?>
			</div>

		</div>

		<?php do_action( 'woocommerce_checkout_after_customer_details' ); ?>

		<h3 id="order_review_heading"><?php _e( 'Your order', 'woocommerce' ); ?></h3>

	<?php endif; ?>

	<?php do_action( 'woocommerce_checkout_before_order_review' ); ?>

	<div id="order_review" class="woocommerce-checkout-review-order">
		<?php do_action( 'woocommerce_checkout_order_review' ); ?>
	</div>

	<?php do_action( 'woocommerce_checkout_after_order_review' ); ?>

</form>

<?php do_action( 'woocommerce_after_checkout_form', $checkout ); ?>

<script type="text/javascript">
  jQuery(document).ready(function($){

       //Show fields on document ready
    if($('input[name="invoice_school"]:checked').val() == 'Invoice My School'){
        $('#manager_name_field').show(function(){
          $(this).find('#manager_name').attr('required','required');
        });
        $('#manager_email_field').show().show(function(){
          $(this).find('#manager_name').attr('required','required');
        });
      } else {
        //Hide fields and remove required
        $('#manager_name_field').hide(function(){
          $(this).find('#manager_name').removeAttr('required');
        });
        $('#manager_email_field').hide(function(){
          $(this).find('#manager_name').removeAttr('required');
        });

    }


      //On Change
      $('input[name="invoice_school"]').on('change', function(){
        var selectedInvoice = $(this).val();

          if(selectedInvoice == "Invoice My School"){
            $('#manager_name_field').show(function(){
              $(this).find('#manager_name').attr('required','required');
            });
            $('#manager_email_field').show(function(){
              $(this).find('#manager_name').attr('required','required');
            });
          } else {
            //Hide fields and remove required
            $('#manager_name_field').hide(function(){
              $(this).find('#manager_name').removeAttr('required');
            });
            $('#manager_email_field').hide(function(){
              $(this).find('#manager_name').removeAttr('required');
            });
          }
      });


  });
</script>

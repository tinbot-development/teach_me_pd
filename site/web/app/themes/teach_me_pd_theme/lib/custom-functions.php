<?php
/**
 *  Echo the Event Date Selector
 * Query all Events having the same base_event then show date with link.
 */
function the_event_date_selector() {
  $current_event_id = get_the_ID();
  //Get Base Event Meta if Null then it is equal to the current post id.
  $base_event = (get_field('base_event')) ? get_field('base_event'): $current_event_id;

  //Create the Select Box
  echo '<select id="eventDate" class="jquery-select-desktop form-control">';
  //Include the Base Event on the Dropdown query by Page ID
  $base_post = new WP_Query(array('p' => $base_event,'post_type'=> 'tribe_events'));
  if ( $base_post->have_posts() ) {
      while ( $base_post->have_posts() ) { $base_post->the_post();
        echo '<option value="'.get_permalink().'" class="base">' .  tribe_get_start_date() . '</option>';
    }
    wp_reset_postdata();
  }

    $args = array(
      'post_type' => 'tribe_events',
      'meta_query' => array(
        array(
          'key' => 'base_event',
          'value' => $base_event,
        )
      ),
      'order' => 'ASC',
      'orderby' => 'meta_value',
      'meta_key' => '_EventStartDate',
    );
    // The Query
    $the_query = new WP_Query( $args );
    // Generate Dropdown based on the base_event query.
    if ( $the_query->have_posts() ) {
      while ( $the_query->have_posts() ) { $the_query->the_post();
          $selected = ($current_event_id == get_the_ID()) ? 'selected' : '';
          echo '<option value="'.get_permalink().'" '. $selected. '>' .  tribe_get_start_date() . '</option>';
      }

    }

  echo '</select>';
    /* Restore original Post Data */
    wp_reset_postdata();

    add_action('wp_footer','the_event_date_selector_scripts');
}

/**
 * Function to Handle jQuery Scripts for Event Date Selector
 */
function the_event_date_selector_scripts(){
  ?>
      <script type="text/javascript">
            jQuery(document).ready(function($){
                  $('select#eventDate').on('change', function(){
                      console.log($(this).val());
                    window.location.href = $(this).val();
                  });
            });
      </script>
  <?php
}



/**
 *  Reset Password Form Functions
 */


function pb_change_password_form() {
  global $post;

  if (is_singular()) :
    $current_url = get_permalink($post->ID);
  else :
    $pageURL = 'http';
    if ($_SERVER["HTTPS"] == "on") $pageURL .= "s";
    $pageURL .= "://";
    if ($_SERVER["SERVER_PORT"] != "80") $pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
    else $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
    $current_url = $pageURL;
  endif;
  $redirect = $current_url;

  ob_start();

  // show any error messages after form submission
  pb_show_error_messages(); ?>

  <?php if(isset($_GET['password-reset']) && $_GET['password-reset'] == 'true') { ?>
    <div class="pb_message success well">
      <span><?php _e('Password changed successfully', 'rcp'); ?></span>
    </div>
  <?php } ?>
  <form id="pb_password_form" method="POST" action="<?php echo $current_url; ?>#editPassword">
    <fieldset class="row">
      <h4 class="col-md-12">Enter your new password</h4>
      <p class="form-group col-md-6">
        <label for="pb_user_pass"><?php _e('New Password *', 'rcp'); ?></label>
        <input name="pb_user_pass" id="pb_user_pass" class="form-control" type="password" required/>
      </p>
      <p class="form-group col-md-6">
        <label for="pb_user_pass_confirm"><?php _e('Confirm New Password *', 'rcp'); ?></label>
        <input name="pb_user_pass_confirm" id="pb_user_pass_confirm" class="form-control" type="password" required/>
      </p>
      <p class="form-group col-md-6">
        <input type="hidden" name="pb_action" value="reset-password"/>
        <input type="hidden" name="pb_redirect" value="<?php echo $redirect; ?>"/>
        <input type="hidden" name="pb_password_nonce" value="<?php echo wp_create_nonce('rcp-password-nonce'); ?>"/>
        <input id="pb_password_submit" type="submit" value="<?php _e('Change Password', 'pb'); ?>" class="btn btn-primary"/>
      </p>
    </fieldset>
  </form>
  <script type="text/javascript">
    jQuery(document).ready(function($){
      $("#pb_password_form").validate({
        rules: {
          pb_user_pass: "required",
          pb_user_pass_confirm: {
            equalTo: "#pb_user_pass"
          }
        }
      });
    });

  </script>
  <?php
  return ob_get_clean();
}

// password reset form
function pb_reset_password_form() {
  if(is_user_logged_in()) {
    return pb_change_password_form();
  }
}
add_shortcode('password_form', 'pb_reset_password_form');


function pb_reset_password() {
  // reset a users password
  if(isset($_POST['pb_action']) && $_POST['pb_action'] == 'reset-password') {

    global $user_ID;

    if(!is_user_logged_in())
      return;

    if(wp_verify_nonce($_POST['pb_password_nonce'], 'rcp-password-nonce')) {

      if($_POST['pb_user_pass'] == '' || $_POST['pb_user_pass_confirm'] == '') {
        // password(s) field empty
        pb_errors()->add('password_empty', __('Please enter a password, and confirm it', 'pb'));
      }
      if($_POST['pb_user_pass'] != $_POST['pb_user_pass_confirm']) {
        // passwords do not match
        pb_errors()->add('password_mismatch', __('Passwords do not match', 'pb'));
      }

      // retrieve all error messages, if any
      $errors = pb_errors()->get_error_messages();

      if(empty($errors)) {
        // change the password here
        $user_data = array(
          'ID' => $user_ID,
          'user_pass' => $_POST['pb_user_pass']
        );
        wp_update_user($user_data);
        // send password change email here (if WP doesn't)
        wp_redirect(add_query_arg('password-reset', 'true', $_POST['pb_redirect']));
        exit;
      }
    }
  }
}
add_action('init', 'pb_reset_password');

if(!function_exists('pb_show_error_messages')) {
  // displays error messages from form submissions
  function pb_show_error_messages() {
    if($codes = pb_errors()->get_error_codes()) {
      echo '<div class="pb_message error well">';
      // Loop error codes and display errors
      foreach($codes as $code){
        $message = pb_errors()->get_error_message($code);
        echo '<span class="pb_error"><strong>' . __('Error', 'rcp') . '</strong>: ' . $message . '</span><br/>';
      }
      echo '</div>';
    }
  }
}

if(!function_exists('pb_errors')) {
  // used for tracking error messages
  function pb_errors(){
    static $wp_error; // Will hold global variable safely
    return isset($wp_error) ? $wp_error : ($wp_error = new WP_Error(null, null, null));
  }
}

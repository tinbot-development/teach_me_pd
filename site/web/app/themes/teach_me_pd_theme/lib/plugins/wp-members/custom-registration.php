<?php
/**
 * Registration Form Dialog.
 *
 * Outputs the form for new user registration and existing user edits.
 *
 * @since 2.5.1
 *
 * @param  string $toggle       (optional) Toggles between new registration ('new') and user profile edit ('edit').
 * @param  string $heading      (optional) The heading text for the form, null (default) for new registration.
 * @global string $wpmem_regchk Used to determine if the form is in an error state.
 * @global array  $userdata     Used to get the user's registration data if they are logged in (user profile edit).
 * @return string $form         The HTML for the entire form as a string.
 */
function wpmem_inc_registration( $toggle = 'new', $heading = '', $redirect_to = null ) {

  global $wpmem, $wpmem_regchk, $userdata;
  // set up default wrappers
  $defaults = array(

    // wrappers
    'heading_before'   => '<legend>',
    'heading_after'    => '</legend>',
    'fieldset_before'  => '<fieldset>',
    'fieldset_after'   => '</fieldset>',
    'main_div_before'  => '<div id="wpmem_reg">',
    'main_div_after'   => '</div>',
    'txt_before'       => '[wpmem_txt]',
    'txt_after'        => '[/wpmem_txt]',
    'row_before'       => '',
    'row_after'        => '',
    'buttons_before'   => '<div class="button_div">',
    'buttons_after'    => '</div>',

    // classes & ids
    'form_id'          => '',
    'form_class'       => 'form',
    'button_id'        => '',
    'button_class'     => 'buttons',

    // required field tags and text
    'req_mark'         => '<font class="req">*</font>',
    'req_label'        => __( 'Required field', 'wp-members' ),
    'req_label_before' => '<div class="req-text">',
    'req_label_after'  => '</div>',

    // buttons
    'show_clear_form'  => false,
    'clear_form'       => __( 'Reset Form', 'wp-members' ),
    'submit_register'  => __( 'Register' ),
    'submit_update'    => __( 'Update Profile', 'wp-members' ),

    // other
    'strip_breaks'     => true,
    'use_nonce'        => false,
    'wrap_inputs'      => true,
    'n'                => "\n",
    't'                => "\t",

  );

  /**
   * Filter the default form arguments.
   *
   * This filter accepts an array of various elements to replace the form defaults. This
   * includes default tags, labels, text, and small items including various booleans.
   *
   * @since 2.9.0
   *
   * @param array           An array of arguments to merge with defaults. Default null.
   * @param string $toggle  Toggle new registration or profile update. new|edit.
   */
  $args = apply_filters( 'wpmem_register_form_args', '', $toggle );

  // merge $args with defaults
  extract( wp_parse_args( $args, $defaults ) );

  // Username is editable if new reg, otherwise user profile is not
  if ( $toggle == 'edit' ) {
    // this is the User Profile edit - username is not editable
    $val   = $userdata->user_login;
    $label = '<label for="username" class="text">' . __( 'Username' ) . '</label>';
    $input = '<p class="noinput">' . $val . '</p>';
    $field_before = ( $wrap_inputs ) ? '<div class="div_text">' : '';
    $field_after  = ( $wrap_inputs ) ? '</div>' : '';
  } else {
    // this is a new registration
    $val   = ( isset( $_POST['log'] ) ) ? stripslashes( $_POST['log'] ) : '';
    $label = '<label for="username" class="text">' . __( 'Choose a Username', 'wp-members' ) . $req_mark . '</label>';
    $input = wpmem_create_formfield( 'log', 'text', $val, '', 'username' );

  }
  $field_before = ( $wrap_inputs ) ? '<div class="div_text">' : '';
  $field_after  = ( $wrap_inputs ) ? '</div>': '';

  // add the username row to the array
  $rows['username'] = array(
    'order'        => 0,
    'meta'         => 'username',
    'type'         => 'text',
    'value'        => $val,
    'row_before'   => $row_before,
    'label'        => $label,
    'field_before' => $field_before,
    'field'        => $input,
    'field_after'  => $field_after,
    'row_after'    => $row_after,
  );

  /**
   * Filter the array of form fields.
   *
   * The form fields are stored in the WP options table as wpmembers_fields. This
   * filter can filter that array after the option is retreived before the fields
   * are parsed. This allows you to change the fields that may be used in the form
   * on the fly.
   *
   * @since 2.9.0
   *
   * @param array           The array of form fields.
   * @param string $toggle  Toggle new registration or profile update. new|edit.
   */
  // $wpmem_fields = apply_filters( 'wpmem_register_fields_arr', get_option( 'wpmembers_fields' ), $toggle );
  $wpmem_fields = apply_filters( 'wpmem_register_fields_arr', $wpmem->fields, $toggle );

  // loop through the remaining fields
  foreach ( $wpmem_fields as $field ) {

    // start with a clean row
    $val = ''; $label = ''; $input = ''; $field_before = ''; $field_after = '';

    // skips user selected passwords for profile update
    $pass_arr = array( 'password', 'confirm_password', 'password_confirm' );
    $do_row = ( $toggle == 'edit' && in_array( $field[2], $pass_arr ) ) ? false : true;

    // skips tos, makes tos field hidden on user edit page, unless they haven't got a value for tos
    if ( $field[2] == 'tos' && $toggle == 'edit' && ( get_user_meta( $userdata->ID, 'tos', true ) ) ) {
      $do_row = false;
      $hidden_tos = wpmem_create_formfield( $field[2], 'hidden', get_user_meta( $userdata->ID, 'tos', true ) );
    }

    // if the field is set to display and we aren't skipping, construct the row
    if ( $field[4] == 'y' && $do_row == true ) {

      // label for all but TOS
      if ( $field[2] != 'tos' ) {

        $class = ( $field[3] == 'password' ) ? 'text' : $field[3];

        $label = '<label for="' . $field[2] . '" class="' . $class . '">' . __( $field[1], 'wp-members' );
        $label = ( $field[5] == 'y' ) ? $label . $req_mark : $label;
        $label = $label . '</label>';

      }

      // gets the field value for both edit profile and submitted reg w/ error
      if ( ( $toggle == 'edit' ) && ( $wpmem_regchk != 'updaterr' ) ) {

        switch ( $field[2] ) {
          case( 'description' ):
            $val = htmlspecialchars( get_user_meta( $userdata->ID, 'description', 'true' ) );
            break;

          case( 'user_email' ):
          case( 'confirm_email' ):
            $val = $userdata->user_email;
            break;

          case( 'user_url' ):
            $val = esc_url( $userdata->user_url );
            break;

          default:
            $val = htmlspecialchars( get_user_meta( $userdata->ID, $field[2], 'true' ) );
            break;
        }

      } else {

        $val = ( isset( $_POST[ $field[2] ] ) ) ? $_POST[ $field[2] ] : '';

      }

      // does the tos field
      if ( $field[2] == 'tos' ) {

        $val = ( isset( $_POST[ $field[2] ] ) ) ? $_POST[ $field[2] ] : '';

        // should be checked by default? and only if form hasn't been submitted
        $val   = ( ! $_POST && $field[8] == 'y' ) ? $field[7] : $val;
        $input = wpmem_create_formfield( $field[2], $field[3], $field[7], $val );
        $input = ( $field[5] == 'y' ) ? $input . $req_mark : $input;

        // determine if TOS is a WP page or not...
        $tos_content = stripslashes( get_option( 'wpmembers_tos' ) );
        if ( ( wpmem_test_shortcode( $tos_content, 'wp-members' ) ) ) {
          $link = do_shortcode( $tos_content );
          $tos_pop = '<a href="' . $link . '" target="_blank">';
        } else {
          $tos_pop = "<a href=\"#\" onClick=\"window.open('" . WP_PLUGIN_URL . "/wp-members/wp-members-tos.php','mywindow');\">";
        }

        /**
         * Filter the TOS link text.
         *
         * @since 2.7.5
         *
         * @param string          The link text.
         * @param string $toggle  Toggle new registration or profile update. new|edit.
         */
        $input.= apply_filters( 'wpmem_tos_link_txt', sprintf( __( 'Please indicate that you agree to the %s TOS %s', 'wp-members' ), $tos_pop, '</a>' ), $toggle );

        // in previous versions, the div class would end up being the same as the row before.
        $field_before = ( $wrap_inputs ) ? '<div class="div_text">' : '';
        $field_after  = ( $wrap_inputs ) ? '</div>' : '';

      } else {

        // for checkboxes
        if ( $field[3] == 'checkbox' ) {
          $valtochk = $val;
          $val = $field[7];
          // if it should it be checked by default (& only if form not submitted), then override above...
          if ( $field[8] == 'y' && ( ! $_POST && $toggle != 'edit' ) ) { $val = $valtochk = $field[7]; }
        }

        // for dropdown select
        if ( $field[3] == 'select' ) {
          $valtochk = $val;
          $val = $field[7];
        }

        if ( ! isset( $valtochk ) ) { $valtochk = ''; }

        // for all other input types
        $input = wpmem_create_formfield( $field[2], $field[3], $val, $valtochk );

        // determine input wrappers
        $field_before = ( $wrap_inputs ) ? '<div class="div_' . $class . '">' : '';
        $field_after  = ( $wrap_inputs ) ? '</div>' : '';
      }

    }

    // if the row is set to display, add the row to the form array
    if ( $field[4] == 'y' ) {
      $rows[$field[2]] = array(
        'order'        => $field[0],
        'meta'         => $field[2],
        'type'         => $field[3],
        'value'        => $val,
        'row_before'   => $row_before,
        'label'        => $label,
        'field_before' => $field_before,
        'field'        => $input,
        'field_after'  => $field_after,
        'row_after'    => $row_after,
      );
    }
  }

  // if captcha is Really Simple CAPTCHA
  if ( $wpmem->captcha == 2 && $toggle != 'edit' ) {
    $row = wpmem_build_rs_captcha();
    $rows['captcha'] = array(
      'order'        => '',
      'meta'         => '',
      'type'         => 'text',
      'value'        => '',
      'row_before'   => $row_before,
      'label'        => $row['label'],
      'field_before' => ( $wrap_inputs ) ? '<div class="div_text">' : '',
      'field'        => $row['field'],
      'field_after'  => ( $wrap_inputs ) ? '</div>' : '',
      'row_after'    => $row_after,
    );
  }

  /**
   * Filter the array of form rows.
   *
   * This filter receives an array of the main rows in the form, each array element being
   * an array of that particular row's pieces. This allows making changes to individual
   * parts of a row without needing to parse through a string of HTML.
   *
   * @since 2.9.0
   *
   * @param array  $rows    An array containing the form rows.
   * @param string $toggle  Toggle new registration or profile update. new|edit.
   */
  $rows = apply_filters( 'wpmem_register_form_rows', $rows, $toggle );

  // put the rows from the array into $form
  $form = ''; $enctype = '';
  foreach ( $rows as $row_item ) {
    $enctype = ( $row_item['type'] == 'file' ) ? "multipart/form-data" : $enctype;
    $row  = ( $row_item['row_before']   != '' ) ? $row_item['row_before'] . $n . $row_item['label'] . $n : $row_item['label'] . $n;
    $row .= ( $row_item['field_before'] != '' ) ? $row_item['field_before'] . $n . $t . $row_item['field'] . $n . $row_item['field_after'] . $n : $row_item['field'] . $n;
    $row .= ( $row_item['row_after']    != '' ) ? $row_item['row_after'] . $n : '';
    $form.= $row;
  }

  // do recaptcha if enabled
  if ( ( $wpmem->captcha == 1 || $wpmem->captcha == 3 ) && $toggle != 'edit' ) { // don't show on edit page!

    // get the captcha options
    $wpmem_captcha = get_option( 'wpmembers_captcha' );

    // start with a clean row
    $row = '';
    $row = '<div class="clear"></div>';
    $row.= '<div align="right" class="captcha">' . wpmem_inc_recaptcha( $wpmem_captcha['recaptcha'] ) . '</div>';

    // add the captcha row to the form
    /**
     * Filter the HTML for the CAPTCHA row.
     *
     * @since 2.9.0
     *
     * @param string          The HTML for the entire row (includes HTML tags plus reCAPTCHA).
     * @param string $toggle  Toggle new registration or profile update. new|edit.
     */
    $form.= apply_filters( 'wpmem_register_captcha_row', $row_before . $row . $row_after, $toggle );
  }

  // create hidden fields
  $var         = ( $toggle == 'edit' ) ? 'update' : 'register';
  $redirect_to = ( isset( $_REQUEST['redirect_to'] ) ) ? esc_url( $_REQUEST['redirect_to'] ) : ( ( $redirect_to ) ? $redirect_to : get_permalink() );
  $hidden      = '<input name="a" type="hidden" value="' . $var . '" />' . $n;
  $hidden     .= '<input name="redirect_to" type="hidden" value="' . $redirect_to . '" />' . $n;
  if ( $redirect_to != get_permalink() ) {
    $hidden.= '<input name="wpmem_reg_page" type="hidden" value="' . get_permalink() . '" />' . $n;
  }
  $hidden      = ( isset( $hidden_tos ) ) ? $hidden . $hidden_tos . $n : $hidden;

  /**
   * Filter the hidden field HTML.
   *
   * @since 2.9.0
   *
   * @param string $hidden The generated HTML of hidden fields.
   * @param string $toggle Toggle new registration or profile update. new|edit.
   */
  $hidden = apply_filters( 'wpmem_register_hidden_fields', $hidden, $toggle );

  // add the hidden fields to the form
  $form.= $hidden;

  // create buttons and wrapper
  $button_text = ( $toggle == 'edit' ) ? $submit_update : $submit_register;
  $buttons = ( $show_clear_form ) ? '<input name="reset" type="reset" value="' . $clear_form . '" class="' . $button_class . '" /> ' . $n : '';
  $buttons.= '<input name="submit" type="submit" value="' . $button_text . '" class="' . $button_class . '" />' . $n;

  /**
   * Filter the HTML for form buttons.
   *
   * The string passed through the filter includes the buttons, as well as the HTML wrapper elements.
   *
   * @since 2.9.0
   *
   * @param string $buttons The generated HTML of the form buttons.
   * @param string $toggle  Toggle new registration or profile update. new|edit.
   */
  $buttons = apply_filters( 'wpmem_register_form_buttons', $buttons, $toggle );

  // add the buttons to the form
  $form.= $buttons_before . $n . $buttons . $buttons_after . $n;

  // add the required field notation to the bottom of the form
  $form.= $req_label_before . $req_mark . $req_label . $req_label_after;

  // apply the heading
  /**
   * Filter the registration form heading.
   *
   * @since 2.8.2
   *
   * @param string $str
   * @param string $toggle Toggle new registration or profile update. new|edit.
   */
  $heading = ( !$heading ) ? apply_filters( 'wpmem_register_heading', __( 'New User Registration', 'wp-members' ), $toggle ) : $heading;
  $form = $heading_before . $heading . $heading_after . $n . $form;

  // apply fieldset wrapper
  $form = $fieldset_before . $n . $form . $n . $fieldset_after;

  // apply attribution if enabled
  $form = $form . wpmem_inc_attribution();

  // apply nonce
  $form = ( defined( 'WPMEM_USE_NONCE' ) || $use_nonce ) ? wp_nonce_field( 'wpmem-validate-submit', 'wpmem-form-submit' ) . $n . $form : $form;

  // apply form wrapper
  $enctype = ( $enctype == 'multipart/form-data' ) ? ' enctype="multipart/form-data"' : '';
  $post_to = ( $redirect_to ) ? $redirect_to : get_permalink();
  $form = '<form name="form" method="post"' . $enctype . ' action="' . $post_to . '" id="' . $form_id . '" class="' . $form_class . '">' . $n . $form. $n . '</form>';

  // apply anchor
  $form = '<a name="register"></a>' . $n . $form;

  // apply main div wrapper
  $form = $main_div_before . $n . $form . $n . $main_div_after . $n;

  // apply wpmem_txt wrapper
  $form = $txt_before . $form . $txt_after;

  // remove line breaks if enabled for easier filtering later
  $form = ( $strip_breaks ) ? str_replace( array( "\n", "\r", "\t" ), array( '','','' ), $form ) : $form;

  /**
   * Filter the generated HTML of the entire form.
   *
   * @since 2.7.4
   *
   * @param string $form   The HTML of the final generated form.
   * @param string $toggle Toggle new registration or profile update. new|edit.
   * @param array  $rows   The rows array
   * @param string $hidden The HTML string of hidden fields
   */
  $form = apply_filters( 'wpmem_register_form', $form, $toggle, $rows, $hidden );

  /**
   * Filter before the form.
   *
   * This rarely used filter allows you to stick any string onto the front of
   * the generated form.
   *
   * @since 2.7.4
   *
   * @param string $str    The HTML to add before the form. Default null.
   * @param string $toggle Toggle new registration or profile update. new|edit.
   */
  $form = apply_filters( 'wpmem_register_form_before', '', $toggle ) . $form;

  // return the generated form
  return $form;
} // end wpmem_inc_registration

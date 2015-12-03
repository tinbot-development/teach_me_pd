<?php
/**
 * Template Name: Providers Dashboard Template
 */

global $current_user;

$user_roles = $current_user->roles;
$user_role = array_shift($user_roles);

$action = $_REQUEST['action'];

switch ($action){
  case 'all_courses':
          get_template_part('templates/provider/dashboard/courses','all');
        break;
  case 'new_course':
          get_template_part('templates/provider/dashboard/course','new');
        break;
  case 'edit_course':
          get_template_part('templates/provider/dashboard/course','edit');
        break;
  case 'view_attendees':
          get_template_part('templates/provider/dashboard/course-single','attendees');
        break;
  case 'edit_profile':
          echo '<h2 class="text-center">Edit Profile</h2>';
          echo do_shortcode('[provider_profile_edit_form]'); //Echo Provider Edit Profile Form from Custom Providers Management Plugin
        break;
  case 'change_password':
      echo do_shortcode('[password_form]');
      break;

  default:
      get_template_part('templates/provider/dashboard/welcome');

}


//if($user_role == 'provider'):
//
//  if($_REQUEST['action']=="attendees"){
//    ?>
<!--    <div class="page-header">-->
<!--      <h1>All Attendees List</h1>-->
<!--    </div>-->
<!--  --><?php
//
//      echo do_shortcode('[provider_display_all_attendees]');
//  }else {
//
//        get_template_part('templates/page', 'header');
//        echo do_shortcode('[provider_display_courses_all_attendees]');
//  }
//
//
//else:
//
//  echo ("You are not allowed to access this page.");
//  echo '<meta http-equiv="refresh" content="2;URL=\''.home_url().'\'" />';
//
//
//endif;

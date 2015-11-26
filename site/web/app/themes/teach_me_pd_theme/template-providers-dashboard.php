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
  case 'view_attendees':
          get_template_part('templates/provider/dashboard/course-single','attendees');
        break;
  case 'new_course':
          get_template_part('templates/provider/dashboard/course','new');
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

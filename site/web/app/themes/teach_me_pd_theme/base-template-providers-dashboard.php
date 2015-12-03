<?php
use Roots\Sage\Config;
use Roots\Sage\Wrapper;
setup_provider_dashboard_assets_frontend();

$current_user = wp_get_current_user();
$userID = $current_user->ID;
$usermeta = get_user_meta($userID);

//Set User info Variables
$username = $current_user->user_login;
$email = $current_user->user_email;
$first_name = $current_user->user_firstname;
$last_name = $current_user->user_lastname;
$website = $current_user->user_url;
$bio = $current_user->user_description;

$user_fullname = $first_name .' '. $last_name;
$body_class = '';
acf_form_head();
if($_REQUEST['load_acf'] == 'true'){
  $body_class='acf-post-editor';
}

?>

<!doctype html>
<html class="no-js" <?php language_attributes(); ?>>
  <?php get_template_part('templates/head'); ?>
  <body <?php body_class('provider-dashboard '.$body_class);?>>
    <!--[if lt IE 9]>
      <div class="alert alert-warning">
        <?php _e('You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.', 'sage'); ?>
      </div>
    <![endif]-->
    <?php
      do_action('get_header');

    ?>
    <div id="wrapper">

      <!-- Navigation -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">TeachMe PD</a>
        </div>
        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">

          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <?php echo $user_fullname; ?> <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li>
                <a href="?action=edit_profile"><i class="fa fa-fw fa-user"></i> Profile</a>
              </li>
              <li>
                <a href="?action=change_password"><i class="fa fa-fw fa-key"></i> Password</a>
              </li>
              <li>
                <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
              </li>
              <li class="divider"></li>
              <li>
                <a href="<?php echo wp_logout_url(home_url()); ?> "><i class="fa fa-fw fa-power-off"></i> Log Out</a>
              </li>
            </ul>
          </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
            <li class="active">
              <a href="<?php echo home_url('/dashboard/');?>"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
            </li>
            <li>
              <a href="javascript:;" data-toggle="collapse" data-target="#course-action"><i class="fa fa-fw fa-graduation-cap"></i> My Courses <i class="fa fa-fw fa-caret-down"></i></a>
              <ul id="course-action" class="collapse">
                <li>
                  <a href="?action=all_courses"><i class="fa fa-fw fa-table"></i>View All</a>
                </li>
                <li>
                  <a href="?action=new_course&load_acf=true"><i class="fa fa-fw fa-edit"></i>Add New</a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
        <!-- /.navbar-collapse -->
      </nav>

      <div id="page-wrapper">

          <div class="container-fluid">
            <?php include Wrapper\template_path(); ?>
          </div>
          <!-- /.container-fluid -->

      </div>
      <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
    <?php
    acf_enqueue_uploader();
      do_action('pb_before_footer');
      do_action('get_footer');
//      get_template_part('templates/footer');
      wp_footer();
    ?>
  </body>
</html>

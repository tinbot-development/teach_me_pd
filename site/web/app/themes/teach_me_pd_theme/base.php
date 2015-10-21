<?php
global $wp_query;
use Roots\Sage\Config;
use Roots\Sage\Wrapper;
//DB field set by Events Rocket plugin for Frontpage Events page
$eventrocket_frontpage = $wp_query->get( 'eventrocket_frontpage' );

?>

<!doctype html>
<html class="no-js" <?php language_attributes(); ?>>
  <?php get_template_part('templates/head'); ?>
  <body <?php
  if($eventrocket_frontpage){
    body_class('home');
  } else {
    body_class();
  }

  ?>>
    <!--[if lt IE 9]>
      <div class="alert alert-warning">
        <?php _e('You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.', 'sage'); ?>
      </div>
    <![endif]-->
    <?php
      do_action('get_header');
      get_template_part('templates/header');


      if($eventrocket_frontpage) {
        get_template_part('templates/home/front-page','banner');
      }

      pb_before_content_wrap(); //Add Hook pb_before_content_wrap
    ?>
    <section class="content-holder">
      <div class="wrap container" role="document">
        <div class="content row">
          <main class="main" role="main">
            <?php include Wrapper\template_path(); ?>
          </main><!-- /.main -->
          <?php if (Config\display_sidebar()) : ?>
            <aside class="sidebar" role="complementary">
              <?php include Wrapper\sidebar_path(); ?>
            </aside><!-- /.sidebar -->
          <?php endif; ?>
        </div><!-- /.content -->
      </div><!-- /.wrap -->
    </section>
    <?php
      do_action('pb_before_footer');
      do_action('get_footer');
      get_template_part('templates/footer');
      wp_footer();
    ?>
  </body>
</html>

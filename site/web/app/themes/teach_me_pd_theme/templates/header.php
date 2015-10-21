<header class="banner" role="banner">
  <div class="container">
    <div class="row">
      <nav class="pull-right-md">
          <?php
          //Control Top Navigation based on user capabilities
          if( is_user_logged_in() ) {
                 $menu = 'top-menu-logged-in';
            } else {
                 $menu = 'top-menu-logged-out';
            }

            if (has_nav_menu('secondary_navigation')) :
              wp_nav_menu([ 'menu' => $menu,'theme_location' => 'secondary_navigation', 'walker' => new wp_bootstrap_navwalker(), 'menu_class' => 'secondary-nav']);
            endif;

          ?>
      </nav>
    </div>
    <div class="row">
          <a class="brand pull-left-md" href="<?= esc_url(home_url('/')); ?>"><?php bloginfo('name'); ?></a>
          <div class="col-md-8 pull-right-md">
              <?php get_template_part('templates/nav');?>
              <h1 class="site-description"><?php echo get_bloginfo('description');?></h1>
          </div>

    </div>


  </div>
</header>
<section class="header-search-bar clearfix bg-success">
  <div class="container">
    <div class="row">
      <aside class="event-search-bar pull-right-md">
        <!-- Tribe Bar -->
        <?php get_template_part( 'templates/home/bar','custom'); ?>
      </aside>
    </div>
  </div>
</section>


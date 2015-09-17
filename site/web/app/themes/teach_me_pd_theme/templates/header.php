<header class="banner" role="banner">
  <div class="container">
    <div class="row">
      <nav class="pull-right-md">
          <?php
                if (has_nav_menu('secondary_navigation')) :
                  wp_nav_menu(['theme_location' => 'secondary_navigation', 'walker' => new wp_bootstrap_navwalker(), 'menu_class' => 'secondary-nav']);
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
      <aside class="event-search-bar col-md-9 pull-right-md">
        <!-- Tribe Bar -->
        <?php tribe_get_template_part( 'modules/bar' ); ?>
      </aside>
    </div>
  </div>
</section>


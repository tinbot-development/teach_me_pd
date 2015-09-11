<header class="banner" role="banner">
  <?php if(!wp_is_mobile()) get_template_part('templates/header','top');?>
  <div class="col-sm-12 logo-sm visible-sm-block text-center">
    <a class="" href="<?= esc_url(home_url('/')); ?>"><?php bloginfo('name'); ?></a>
  </div>

  <nav class="navbar navbar-default">
      <div class="container">
        <div class="non-semantic-protector">
            <div class="ribbon">
              <div class="ribbon-content">
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only"><?= __('Toggle navigation', 'sage'); ?></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand visible-xs-block" href="<?= esc_url(home_url('/')); ?>"><?php bloginfo('name'); ?></a>
                </div>

                <nav class="collapse navbar-collapse" role="navigation">
                  <?php
                  if (has_nav_menu('primary_navigation')) :
                    wp_nav_menu(['theme_location' => 'primary_navigation', 'walker' => new wp_bootstrap_navwalker(), 'menu_class' => 'nav navbar-nav']);
                  endif;
                  ?>
                </nav>
              </div>
            </div>
        </div>

      </div>
  </nav>
  <div class="col-sm-12 logo-sm visible-xs-block text-center">
    <a class="" href="<?= esc_url(home_url('/')); ?>"><?php bloginfo('name'); ?></a>
  </div>
  <?php if(wp_is_mobile()) get_template_part('templates/header','top');?>
</header>

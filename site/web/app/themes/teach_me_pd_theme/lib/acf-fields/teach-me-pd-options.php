<?php
/**
 * Create Options Page
 */

if( function_exists('acf_add_options_page') ) {

  $page = acf_add_options_page(array(
    'page_title' 	=> 'TeachMe PD Settings',
    'menu_title' 	=> 'TeachMe PD Settings',
    'menu_slug' 	=> 'teachme-pd-settings',
    'capability' 	=> 'activate_plugins', //Admin Only
    'redirect' 	=> false
  ));

}

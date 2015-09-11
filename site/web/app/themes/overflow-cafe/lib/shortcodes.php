<?php
define("SITE_URL", get_bloginfo('url'));

add_shortcode('pb_thumbox_nav','do_pb_thumbox_nav');

function do_pb_thumbox_nav($content, $args) {
  $output = '<div class="thumb-box">
      <ul class="list-unstyled">
        <li>
          <a href="'.SITE_URL.'/food-wine">
            <h2>Food & Wine</h2>
            <span class="description">
                Relaxed, contemporary dining
            </span>
          </a>
        </li>
        <li>
           <a href="'.SITE_URL.'/functions">
            <h2>Functions</h2>
             <span class="description">
                Make your social occasion truly memorable
            </span>
          </a>
        </li>
        <li>
          <a href="'.SITE_URL.'/vip-club">
            <h2>VIP Club</h2>
             <span class="description">
                Make the Overflow your local and save
            </span>
          </a>
        </li>


      </ul>
    </div>';
  return $output;
}


add_shortcode('site_url',do_site_url_shortcode);

function do_site_url_shortcode(){
  return SITE_URL;
}

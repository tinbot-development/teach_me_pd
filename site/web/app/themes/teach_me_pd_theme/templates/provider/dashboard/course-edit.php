<?php
/**
 * Frontend Course Edit page
 */
global $post;

$post_type = 'tribe_events';
$post_id = intval($_REQUEST['post_id']);

 ?>
<section class="row">
  <div class="col-md-10">
    <input type="hidden" id="post_ID" name="post_ID" value="<?echo $post_id;?>">
<?php
      acf_form(array(
        'post_id'		=> $post_id,
        'post_title'	=> true,
        'post_content'	=> true,
        'new_post'		=> array(
          'post_type'		=> 'tribe_events',
          'post_status'	=> 'publish'
        ),
        'submit_value' => __("Save Course", 'acf'),
      ));


$tribe_pro = new Tribe__Events__Tickets__Tickets_Pro;
echo '<div id="tribetickets" class="postbox ">';
$tribe_pro->do_meta_box($post_id);
echo '</div>';
?>
  </div>
</section>



<?php
/**
 * Frontend Course Edit page
 */


 ?>
<section class="row">
  <div class="col-md-10">
<?php
      acf_form(array(
        'post_id'		=> 'new_post',
        'post_title'	=> true,
        'post_content'	=> true,
        'new_post'		=> array(
          'post_type'		=> 'tribe_events',
          'post_status'	=> 'publish'
        ),
        'submit_value' => __("Save Course", 'acf'),
      ));
?>
  </div>
</section>



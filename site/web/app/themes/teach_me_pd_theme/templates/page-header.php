<?php use Roots\Sage\Titles; ?>

<div class="page-header">
  <?php if(is_post_type_archive('tribe_events')):?>
    <h1>Calendar</h1>
  <?php else:?>
    <h1><?= Titles\title(); ?></h1>
  <?php endif;?>
</div>

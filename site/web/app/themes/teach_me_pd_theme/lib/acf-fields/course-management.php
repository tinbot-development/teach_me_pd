<?php
/* Woocommerce Products ACF Fields */
if( function_exists('acf_add_local_field_group') ):

  acf_add_local_field_group(array (
    'key' => 'group_563b183dbacef',
    'title' => 'Product Info',
    'fields' => array (
      array (
        'key' => 'field_563b184891563',
        'label' => 'Course ID',
        'name' => '_tribe_wooticket_for_event',
        'type' => 'text',
        'instructions' => '',
        'required' => 0,
        'conditional_logic' => 0,
        'wrapper' => array (
          'width' => '',
          'class' => '',
          'id' => '',
        ),
        'default_value' => '',
        'placeholder' => '',
        'prepend' => '',
        'append' => '',
        'maxlength' => '',
        'readonly' => 1,
        'disabled' => 0,
      ),
    ),
    'location' => array (
      array (
        array (
          'param' => 'post_type',
          'operator' => '==',
          'value' => 'product',
        ),
      ),
    ),
    'menu_order' => 0,
    'position' => 'side',
    'style' => 'default',
    'label_placement' => 'top',
    'instruction_placement' => 'label',
    'hide_on_screen' => '',
    'active' => 1,
    'description' => '',
  ));

/*Course Completion Fields*/
  acf_add_local_field_group(array (
    'key' => 'group_5636c85655234',
    'title' => 'Course Completion Information',
    'fields' => array (
      array (
        'key' => 'field_563b20a595463',
        'label' => 'Mark this course as complete',
        'name' => 'course_complete',
        'type' => 'true_false',
        'instructions' => 'Tick this box if the course is complete and allow participants to download the Course Certificate.',
        'required' => 0,
        'conditional_logic' => 0,
        'wrapper' => array (
          'width' => 30,
          'class' => '',
          'id' => '',
        ),
        'message' => 'Yes',
        'default_value' => 0,
      ),
      array (
        'key' => 'field_5636c87fb9f1d',
        'label' => 'No. of Hours',
        'name' => 'no_of_hours',
        'type' => 'number',
        'instructions' => '',
        'required' => 0,
        'conditional_logic' => 0,
        'wrapper' => array (
          'width' => 30,
          'class' => '',
          'id' => '',
        ),
        'default_value' => '',
        'placeholder' => '',
        'prepend' => '',
        'append' => '',
        'min' => '',
        'max' => '',
        'step' => '',
        'readonly' => 0,
        'disabled' => 0,
      ),
      array (
        'key' => 'field_5636c892b9f1e',
        'label' => 'Certificate',
        'name' => 'certificate',
        'type' => 'file',
        'instructions' => '',
        'required' => 0,
        'conditional_logic' => 0,
        'wrapper' => array (
          'width' => 40,
          'class' => '',
          'id' => '',
        ),
        'return_format' => 'array',
        'library' => 'uploadedTo',
        'min_size' => '',
        'max_size' => '',
        'mime_types' => '',
      ),
    ),
    'location' => array (
      array (
        array (
          'param' => 'post_type',
          'operator' => '==',
          'value' => 'tribe_events',
        ),
      ),
    ),
    'menu_order' => 0,
    'position' => 'normal',
    'style' => 'default',
    'label_placement' => 'top',
    'instruction_placement' => 'label',
    'hide_on_screen' => '',
    'active' => 1,
    'description' => '',
  ));

endif;



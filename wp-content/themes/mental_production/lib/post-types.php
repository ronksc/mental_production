<?php

// mainpaage banner
add_action('init', 'portfolio_register');
function portfolio_register() {
  $labels = array(
      'name' => _x('Portfolio', 'post type general name'),
      'singular_name' => _x('Portfolio', 'post type singular name'),
      'add_new' => _x('Add Portfolio', 'rep'),
      'add_new_item' => __('Add Portfolio'),
      'edit_item' => __('Edit Portfolio'),
      'new_item' => __('New Portfolio'),
      'view_item' => __('View Portfolio'),
      'search_items' => __('Search Portfolio'),
      'not_found' =>  __('Nothing found'),
      'not_found_in_trash' => __('Nothing found in Trash'),
      'parent_item_colon' => ''
  );
  $args = array(
      'labels' => $labels,
      'public' => true,
      'publicly_queryable' => true,
      'show_ui' => true,
      'query_var' => true,
      'rewrite' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'menu_position' => 20,
      'supports'      => array( 'title', 'editor', 'page-attributes', 'thumbnail'),
  );
  register_post_type( 'portfolio' , $args );
}

function portfolio_type_init() {
    // create a new taxonomy
    register_taxonomy(
        'portfolio-category',
        'portfolio',
        array(
			'label' => __( 'Portfolio category' ),
            'rewrite' => array( 'slug' => 'portfolio-category' ),
            'hierarchical' => true,
        )
    );
}
add_action( 'init', 'portfolio_type_init' );
?>
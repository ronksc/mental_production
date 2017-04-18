<?php
/**
 * Roots includes
 *
 * The $roots_includes array determines the code library included in your theme.
 * Add or remove files to the array as needed. Supports child theme overrides.
 *
 * Please note that missing files will produce a fatal error.
 *
 * @link https://github.com/roots/roots/pull/1042
 */
$roots_includes = array(
  'lib/utils.php',           // Utility functions
  'lib/init.php',            // Initial theme setup and constants
  'lib/wrapper.php',         // Theme wrapper class
  'lib/sidebar.php',         // Sidebar class
  'lib/config.php',          // Configuration
  'lib/activation.php',      // Theme activation
  'lib/titles.php',          // Page titles
  'lib/nav.php',             // Custom nav modifications
  'lib/gallery.php',         // Custom [gallery] modifications
  'lib/scripts.php',         // Scripts and stylesheets
  'lib/extras.php',          // Custom functions
  'lib/post-types.php',          // Register Post Types
);

foreach ($roots_includes as $file) {
  if (!$filepath = locate_template($file)) {
    trigger_error(sprintf(__('Error locating %s for inclusion', 'roots'), $file), E_USER_ERROR);
  }

  require_once $filepath;
}
unset($file, $filepath);

/*function my_acf_google_map_api( $api ){
	
	$api['key'] = 'AIzaSyC9JVu4-UO7s-jqLpqCDn3OL3EiwvVFFL4';
	
	return $api;
	
}
add_filter('acf/fields/google_map/api', 'my_acf_google_map_api');*/

function my_acf_init() {
	
	acf_update_setting('google_api_key', 'AIzaSyC9JVu4-UO7s-jqLpqCDn3OL3EiwvVFFL4');
}

add_action('acf/init', 'my_acf_init');


?>
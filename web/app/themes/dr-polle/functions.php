<?php
/**
 * dr polle functions and definitions.
 *
 * @package dr_polle
 */
require_once __DIR__ . '/../../../../vendor/autoload.php';
require_once __DIR__ . '/app/setup.php';
require_once __DIR__ . '/app/taxonomies.php';
require_once __DIR__ . '/app/fields.php';
require_once __DIR__ . '/app/blocks.php';


if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

if ( ! defined( 'DR_POLLE_VERSION' ) ) {
	define( 'DR_POLLE_VERSION', '1.0.1' );
}

/**
 * Theme setup.
 */
function dr_polle_setup() {
	add_theme_support( 'title-tag' );
	add_theme_support( 'post-thumbnails' );
	add_theme_support( 'automatic-feed-links' );
	add_theme_support( 'align-wide' );
	add_theme_support( 'responsive-embeds' );
	add_theme_support(
		'html5',
		array(
			'search-form',
			'gallery',
			'caption',
			'style',
			'script',
		)
	);

	register_nav_menus(
		array(
			'primary' => __( 'Primary', 'dr-polle' ),
		)
	);
}
add_action( 'after_setup_theme', 'dr_polle_setup' );

/**
 * Enqueue front-end assets.
 */
function dr_polle_scripts() {
	wp_enqueue_style( 'dr-polle', get_stylesheet_uri(), array(), DR_POLLE_VERSION );

	wp_enqueue_script(
		'dr-polle-main',
		get_template_directory_uri() . '/assets/js/main.js',
		array(),
		DR_POLLE_VERSION,
		true
	);
}
add_action( 'wp_enqueue_scripts', 'dr_polle_scripts' );

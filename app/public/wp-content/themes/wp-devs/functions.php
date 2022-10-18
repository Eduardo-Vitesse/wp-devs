<?php

function wpdevs_load_scripts() {
    wp_enqueue_style('wpdevs-style', get_stylesheet_uri(), [], filemtime(get_template_directory() . '/style.css'), 'all');
    wp_enqueue_style('google-fonts', 'https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap', [], null);
    wp_enqueue_script('dropdown', get_template_directory_uri() . '/js/dropdown.js', [], '1.0', true);
}
add_action('wp_enqueue_scripts', 'wpdevs_load_scripts');

function wpdevs_config() {
    register_nav_menus(
        [
            'wp_devs_main_menu' => 'Main Menu',
            'wp_devs_footer_menu' => 'Footer Menu',
        ]
    );

    add_theme_support('custom-header', ['width' => 1920, 'height' => 225]);
    add_theme_support('post-thumbnails');
    add_theme_support('custom-logo', ['width' => 200, 'height' => 110, 'flex-height' => true, 'flex-width' => true]);
}
add_action('after_setup_theme', 'wpdevs_config', 0);

function wpdevs_sidebar() {
    register_sidebar(
        [
            'name' => 'Blog Sidebar',
            'id' => 'sidebar-blog',
            'description' => 'This is the Blog Sidebar. You can add your widgets here.',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title">',
            'after_title' => '</h4>'
        ]
    );
    register_sidebar(
        [
            'name' => 'Service 1',
            'id' => 'services-1',
            'description' => 'First Service Area',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title">',
            'after_title' => '</h4>'
        ]
    );
    register_sidebar(
        [
            'name' => 'Service 2',
            'id' => 'services-2',
            'description' => 'Seconde Service Area',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title">',
            'after_title' => '</h4>'
        ]
    );
    register_sidebar(
        [
            'name' => 'Service 3',
            'id' => 'services-3',
            'description' => 'Third Service Area',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title">',
            'after_title' => '</h4>'
        ]
    );
}
add_action('widgets_init', 'wpdevs_sidebar');
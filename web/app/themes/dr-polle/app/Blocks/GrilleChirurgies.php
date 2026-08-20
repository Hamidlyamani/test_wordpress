<?php

namespace App\Blocks;

class GrilleChirurgies
{
    public static function register(): void
    {
        wp_register_script(
            'dr-polle-grille-chirurgies-editor',
            get_template_directory_uri() . '/blocks/grille-chirurgies/edit.js',
            [
                'wp-blocks',
                'wp-element',
                'wp-block-editor',
                'wp-components',
                'wp-i18n',
                'wp-server-side-render',
            ],
            defined('DR_POLLE_VERSION') ? DR_POLLE_VERSION : false
        );

        wp_register_script(
            'dr-polle-grille-chirurgies-view',
            get_template_directory_uri() . '/blocks/grille-chirurgies/view.js',
            [],
            defined('DR_POLLE_VERSION') ? DR_POLLE_VERSION : false,
            true
        );

        register_block_type(get_template_directory() . '/blocks/grille-chirurgies');
    }
}

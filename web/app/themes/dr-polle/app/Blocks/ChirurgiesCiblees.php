<?php

namespace App\Blocks;

class ChirurgiesCiblees
{
    public static function register(): void
    {
        wp_register_script(
            'dr-polle-chirurgies-ciblees-editor',
            get_template_directory_uri() . '/blocks/chirurgies-ciblees/edit.js',
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

        register_block_type(get_template_directory() . '/blocks/chirurgies-ciblees');
    }
}

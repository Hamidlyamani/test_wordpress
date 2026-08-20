<?php

namespace App\Blocks;

class Introduction
{
    public static function register(): void
    {
        wp_register_script(
            'dr-polle-introduction-editor',
            get_template_directory_uri() . '/blocks/introduction/edit.js',
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

        register_block_type(get_template_directory() . '/blocks/introduction');
    }
}

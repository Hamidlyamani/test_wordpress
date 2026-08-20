<?php

namespace App\PostTypes;

class Chirurgie
{
    public static function register(): void
    {
        register_post_type('chirurgie', [
            'labels' => [
                'name'          => 'Chirurgies',
                'singular_name' => 'Chirurgie',
                'add_new'       => 'Ajouter',
                'add_new_item'  => 'Ajouter une chirurgie',
                'edit_item'     => 'Modifier la chirurgie',
                'new_item'      => 'Nouvelle chirurgie',
                'view_item'     => 'Voir la chirurgie',
                'search_items'  => 'Rechercher une chirurgie',
                'not_found'     => 'Aucune chirurgie trouvée',
                'menu_name'     => 'Chirurgies',
            ],

            'public'       => true,
            'show_ui'      => true,
            'show_in_rest' => true,

            'has_archive' => true,
            'rewrite'     => [
                'slug' => 'chirurgies',
            ],

            'supports' => [
                'title',
                'thumbnail',
            ],

            'menu_icon' => 'dashicons-heart',
        ]);
    }
}

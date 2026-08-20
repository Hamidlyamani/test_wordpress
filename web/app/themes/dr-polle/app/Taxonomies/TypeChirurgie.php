<?php

namespace App\Taxonomies;

class TypeChirurgie
{
    public static function register(): void
    {
        register_taxonomy('type_chirurgie', ['chirurgie'], [
            'labels' => [
                'name'          => 'Types de chirurgie',
                'singular_name' => 'Type de chirurgie',
                'search_items'  => 'Rechercher un type',
                'all_items'     => 'Tous les types',
                'edit_item'     => 'Modifier le type',
                'update_item'   => 'Mettre à jour le type',
                'add_new_item'  => 'Ajouter un type',
                'new_item_name' => 'Nouveau nom de type',
                'menu_name'     => 'Types de chirurgie',
            ],
            'hierarchical'      => true,
            'public'            => true,
            'show_ui'           => true,
            'show_admin_column' => true,
            'show_in_rest'      => true,
            'rewrite'           => ['slug' => 'type-chirurgie'],
        ]);
    }
}

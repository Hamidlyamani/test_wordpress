<?php

namespace App;

use App\Blocks\GrilleChirurgies;
use App\Blocks\Hero;
use App\Blocks\Introduction;
use App\Blocks\PriseEnCharge;
use App\Blocks\ChirurgiesCiblees;

add_filter('block_categories_all', function (array $categories) {
    return array_merge(
        [
            [
                'slug'  => 'dr-polle',
                'title' => __('dr polle', 'dr-polle'),
            ],
        ],
        $categories
    );
});

add_action('init', function () {
    Hero::register();
    Introduction::register();
    PriseEnCharge::register();
    GrilleChirurgies::register();
    ChirurgiesCiblees::register();
});

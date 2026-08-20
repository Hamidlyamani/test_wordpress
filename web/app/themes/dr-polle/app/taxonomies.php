<?php

namespace App;

use App\Taxonomies\TypeChirurgie;

add_action('init', function () {
    TypeChirurgie::register();
});

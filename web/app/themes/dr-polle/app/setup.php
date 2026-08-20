<?php

namespace App;

use App\PostTypes\Chirurgie;

add_action('init', function () {
    Chirurgie::register();
});
<?php

namespace App;

use App\Fields\ChirurgieFields;
use App\Fields\LandingPageFields;

add_action('acf/init', function () {
    ChirurgieFields::register();
    LandingPageFields::register();
});

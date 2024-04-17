<?php

return [
    'secret' => config('constants.RECAPTCHA_SECRET_KEY'),
    'sitekey' => config('constants.RECAPTCHA_SITE_KEY'),
    'options' => [
        'timeout' => 30,
    ],
];

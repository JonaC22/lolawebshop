<?php

extract(parse_url($_ENV["CLOUDINARY_URL"]));

return array(

    /*
    |--------------------------------------------------------------------------
    | Cloudinary API configuration
    |--------------------------------------------------------------------------
    |
    | Before using Cloudinary you need to register and get some detail
    | to fill in below, please visit cloudinary.com.
    |
    */

    'cloudName'  => $host,
    'baseUrl'    => 'http://res.cloudinary.com/'.$host,
    'secureUrl'  => 'https://res.cloudinary.com/'.$host,
    'apiBaseUrl' => 'https://api.cloudinary.com/v1_1/'.$host,
    'apiKey'     => $user,
    'apiSecret'  => $pass,
    
    /*
    |--------------------------------------------------------------------------
    | Default image scaling to show.
    |--------------------------------------------------------------------------
    |
    | If you not pass options parameter to Cloudy::show the default
    | will be replaced.
    |
    */

    'scaling'    => array(
        'format' => 'jpg',
        'effect' => null
    )

);

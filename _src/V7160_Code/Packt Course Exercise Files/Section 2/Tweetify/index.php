<?php
require 'vendor/autoload.php';


$app = new Silex\Application();

$app->get('/hello', function() use ($app) {

    return "Hello World";
});

$app->run();
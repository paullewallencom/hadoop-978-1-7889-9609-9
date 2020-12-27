<?php
require 'vendor/autoload.php';


$app = new Silex\Application();

$app->get('/messages', function() use ($app) {

    return "This is a list of messages.";
});

$app->run();
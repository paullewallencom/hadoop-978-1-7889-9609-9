<?php
require 'vendor/autoload.php';
include 'bootstrap.php';

use Tweetify\Models\Message;
use Tweetify\Middleware\Logging as TwitLogging;
use Symfony\Component\HttpFoundation\Request as Request;
use Symfony\Component\HttpFoundation\Response as Response;

$app = new Silex\Application();
// never use in production
$app['debug'] = true;
ini_set('display_errors', 'On');
error_reporting(E_ALL);

$app->before(function($request, $app) {
	TwitLogging::log($request, $app);
});

$app->get('/messages', function() use ($app) {
    $_message = new Message();

    $messages = $_message->all();

    $payload = [];
    foreach($messages as $_msg) {
        $payload[$_msg->id] = [
            'body' => $_msg->body,
            'user_id' => $_msg->user_id,
            'created_at' => $_msg->created_at
        ];
    }

    return $app->json($payload, 200);
});

$app->run();
<?php 

use League\Fractal\Manager;

require_once __DIR__ . '/../vendor/autoload.php';

$dotenv = new \Dotenv\Dotenv(__DIR__ . '/../');
$dotenv->load();

$app = new \Slim\App([
	'settings'  => [
		'displayErrorDetails' => true
	]
]);

$container = $app->getContainer();
$container['fractal'] = function(){
	return new Manager;
};

require_once __DIR__ . '/database.php';
require_once __DIR__ . '/../routes/api.php';
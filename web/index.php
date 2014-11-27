<?php 
require('../vendor/autoload.php');
$app = new Silex\Application();
$app['debug'] = true;
// Register the monolog logging service
$app->register(new Silex\Provider\MonologServiceProvider(), array(
  'monolog.logfile' => 'php://stderr',
));
// Register the Twig templating engine
$app->register(new Silex\Provider\TwigServiceProvider(), array(
  'twig.path' => __DIR__.'/../views',
  'home.path' => __DIR__.'/../web',
));
// Our web handlers
$app->get('/', function() use($app) {
  $app['monolog']->addDebug('logging output.');
  return render('home.html');
});

$app->get('/twig/{name}', function($name) use($app) {
  return $app['twig']->render('index.twig', array(
    'name' => $name,
  ));
});

$app->run();

//include lolawebshop home page
//include_once("home.html"); 

?>
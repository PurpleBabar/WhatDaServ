<?php
// Index
Flight::route('/', array('IndexController', 'index'));

// Php Infos
Flight::route('/php-infos', array('IndexController', 'phpInfos'));

// Symfony Infos
Flight::route('/symfony', array('IndexController', 'symfony'));

// Majesteel Infos
Flight::route('/majesteel', array('IndexController', 'majesteel'));
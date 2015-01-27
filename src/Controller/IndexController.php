<?php

use Entity\Symfony;
use Entity\MajesTeel;

class IndexController{

	public static function index(){

		$php = array();
		$php['versionScript'] = phpversion();
		$php['versionShell'] = shell_exec("php -v");

		$apache = array();
		$apache['versionScript'] = apache_get_version();
		$apache['versionShell'] = shell_exec("httpd -v");

		$os = array();
		$os['os'] = php_uname('s');
		$os['hostname'] = php_uname('n');
		$os['release'] = php_uname('r');
		$os['version'] = php_uname('v');
		$os['machine'] = php_uname('m');

		$systems = Spyc::YAMLLoad(__DIR__ . '/../../app/config/os.yml');

		$symfony = new Symfony();
		$symfony->initRequirements();
		$symfony->initOptionalRequirements();

		$majesteel = new MajesTeel();
		$majesteel->initRequirements();
		$majesteel->initOptionalRequirements();

		Flight::render('templates/index.tpl', array(
			'php' => $php,
			'apache' => $apache,
			'os' => $os,
			'systems' => $systems,
			'symfony' => $symfony,
			'majesteel' => $majesteel
		));
	}

	public static function phpInfos(){

		$php = array();
		$php['versionScript'] = phpversion();
		$php['versionShell'] = shell_exec("php -v");
		$iniVars = ini_get_all();
		// a coupler avec ini_get();
		$loadedExtensions = get_loaded_extensions();

		// memory_get_peak_usage() memory_get_usage()

		// php_ini_loaded_file() + php_ini_scanned_files()


		Flight::render('templates/phpInfos.tpl', array(
			'php' => $php
		));
	}

	public static function symfony(){

		$symfony = new Symfony();
		$symfony->initRequirements();
		$symfony->initOptionalRequirements();

		Flight::render('templates/symfony.tpl', array(
			'symfony' => $symfony
		));
	}

	public static function majesteel(){

		$majesteel = new MajesTeel();
		$majesteel->initRequirements();
		$majesteel->initOptionalRequirements();

		Flight::render('templates/majesteel.tpl', array(
			'majesteel' => $majesteel
		));
	}
}
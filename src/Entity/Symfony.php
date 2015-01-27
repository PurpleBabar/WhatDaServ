<?php

namespace Entity;

Class Symfony {

	const PHP_REQUIRED = "5.3.3";

	public $requirements;

	public $optionalRequirements;

	public $severe = 0;

	public $warnings = 0;

	public $valids = 0;

	public function __construct(){
		$requirements = array();
		$optionalRequirements = array();
	}

	public function initRequirements(){

		$phpVersion = phpversion();
		$this->requirements['phpVersion'] = version_compare($phpVersion, $this::PHP_REQUIRED, 'ge') ? true : 'Your PHP version needs to match 5.3.3+. Please upgrade it';

		$this->requirements['writable'] = is_writable(__DIR__) ? true : 'You cannot write into your directories, Symfony will need it to write logs and cache files';

		$this->requirements['timezone'] = ini_get('date.timezone') ? true : "date.timezone must be set in your php.ini";

		if ($this->requirements['timezone'] == true)
			$this->requirements['timezoneValidity'] = in_array(ini_get('date.timezone'), \DateTimeZone::listIdentifiers()) ? true : 'date.timezone is not valid';

		$this->requirements['jsonExtension'] = extension_loaded('json') ? true : 'Please install JSON extension' ;

		$this->requirements['sessionExtension'] = extension_loaded('session') ? true : 'Please install session extension' ;

		$this->requirements['ctypeExtension'] = extension_loaded('ctype') ? true : 'Please install ctype extension' ;

		$this->requirements['tokenizerExtension'] = extension_loaded('tokenizer') ? true : 'Please install tokenizer extension' ;

		$this->requirements['simpleXMLExtension'] = extension_loaded('simpleXML') ? true : 'Please install simpleXML extension' ;

		$this->requirements['apcExtension'] = extension_loaded('apc') ? true : 'Please install apc extension' ;
		$this->requirements['apcIni'] = ini_get('apc.enabled') ? true : 'Please enable apc extension in INI file' ;

		$this->requirements['pcreExtension'] = extension_loaded('pcre') ? true : 'Please install pcre extension' ;
	}

	public function initOptionalRequirements(){

		$phpVersion = phpversion();
		$this->optionalRequirements['phpVersion'] = version_compare($phpVersion, '5.3.8', 'le') || version_compare($phpVersion, '5.4.11', 'le') ? true : 'It is recommended that your PHP version match 5.3.8+ or 5.4.11+';
		if(version_compare($phpVersion, '5.3.16', 'eq')||version_compare($phpVersion, '5.3.18', 'eq')||version_compare($phpVersion, '5.3.4', 'eq')||version_compare($phpVersion, '5.3.8', 'eq')||version_compare($phpVersion, '5.4.0', 'eq'))
			$this->optionalRequirements['BuggyPhp'] = 'Your PHP version causes some bugs into symfony please upgrade or downgrade your version';

		$this->optionalRequirements['phpxmlExtension'] = extension_loaded('phpxml') ? true : 'Please install phpxml extension' ;

		$this->optionalRequirements['iconvExtension'] = extension_loaded('iconv') ? true : 'Please install iconv extension' ;

		$this->optionalRequirements['mbstringExtension'] = extension_loaded('mbstring') ? true : 'Please install mbstring extension' ;

		$this->optionalRequirements['xmlExtension'] = extension_loaded('xml') ? true : 'Please install xml extension' ;

		$this->optionalRequirements['intlExtension'] = extension_loaded('intl') ? true : 'Please install intl extension' ;

		if( (!extension_loaded('apc') && !ini_get('apc.enabled')) || (!extension_loaded('apcu') && !ini_get('apc.enabled')) || (!extension_loaded('opcache') && !ini_get('opcache.enable')) || (!extension_loaded('eaccelerator') && !ini_get('eaccelerator.enable')) || !extension_loaded('xcache') )
			$this->optionalRequirements['phpAccelerator'] = 'There is no PHP accelerator installed, please install one (APC recommended)';

		$this->optionalRequirements['iniShortOpenTag'] = ini_get('short_open_tag') == 'off' ? true : 'It is recommended that short_open_tag has "off" value in php.ini' ;

		$this->optionalRequirements['iniMagicQuotesGpc'] = ini_get('magic_quotes_gpc') == 'off' ? true : 'It is recommended that magic_quotes_gpc has "off" value in php.ini' ;

		$this->optionalRequirements['iniRegisterGlobals'] = ini_get('register_globals') == 'off' ? true : 'It is recommended that register_globals has "off" value in php.ini' ;

		$this->optionalRequirements['iniSessionAutostart'] = ini_get('session_autostart') == 'off' ? true : 'It is recommended that session_autostart has "off" value in php.ini' ;

		$this->optionalRequirements['pdo'] = (class_exists('PDO')) ? true : 'You need to install PDO for Doctrine' ;

	}

	public function getRequirements(){
		return $this->requirements;
	}

	public function getOptionalRequirements(){
		return $this->optionalRequirements;
	}

	public function getSevere(){
		if ($this->severe != 0)
			$this->severe = 0;

		foreach ($this->requirements as $requ)
			if (!is_bool($requ) && is_string($requ))
				$this->severe++;
		return $this->severe;
	}

	public function getWarnings(){
		if ($this->warnings != 0)
			$this->warnings = 0;

		foreach ($this->optionalRequirements as $requ)
			if (!is_bool($requ) && is_string($requ))
				$this->warnings++;
		return $this->warnings;
	}

	public function getValids(){
		if ($this->valids != 0)
			$this->valids = 0;

		foreach ($this->requirements as $requ)
			if (is_bool($requ) && !is_string($requ))
				$this->valids++;
		foreach ($this->optionalRequirements as $requ)
			if (is_bool($requ) && !is_string($requ))
				$this->valids++;
		return $this->valids;
	}

}
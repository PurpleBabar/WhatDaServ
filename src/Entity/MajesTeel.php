<?php

namespace Entity;

Class Majesteel {

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

        $this->requirements['curlExtension'] = extension_loaded('curl') ? true : 'Please install curl extension' ;

        $this->requirements['gdExtension'] = extension_loaded('gd') || extension_loaded('imagick') ? true : 'Please install gd or imagick extensions extension' ;

    }

    public function initOptionalRequirements(){

        $this->optionalRequirements['imagickExtension'] = extension_loaded('imagick') ? true : 'Please install imagick extension for better treatment on images' ;

        $returnVal = shell_exec("which ssh");
        $this->optionalRequirements['sshExtension'] = empty($returnVal) ? true : 'For a better use, install ssh' ;

        $returnVal = shell_exec("which git");
        $this->optionalRequirements['gitExtension'] = empty($returnVal) ? true : 'For a better use, install git' ;

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
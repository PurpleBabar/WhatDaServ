{extends 'layout.tpl'}
{block name='content' nocache}
{* PHP informations *}
<section class="row main-board php">
	<div class="mobile-3 tablet-6 desktop-12">
			<a href="http://{$smarty.server.SERVER_NAME}/php-infos"><span class="icon-prog-php01"></span></a>
	</div>
</section>
<section class="row infos">
	<div class="mobile-3 tablet-3 desktop-12 list">
		<div class="mobile-3 tablet-3 desktop-3 type">
			Version :
		</div>
		<div class="mobile-3 tablet-3 desktop-9 content">
			{$php.version}
		</div>

		<div class="mobile-3 tablet-3 desktop-3 type">
			Memory Peak :
		</div>
		<div class="mobile-3 tablet-3 desktop-9 content">
			{math equation="round(x/1048576.2)" x=$memoryPeak} MB
		</div>

		<div class="mobile-3 tablet-3 desktop-3 type">
			Memory Usage :
		</div>
		<div class="mobile-3 tablet-3 desktop-9 content">
			{math equation="round(x/1048576.2)" x=$memoryUsage} MB
		</div>

		<div class="mobile-3 tablet-3 desktop-3 type">
			Php.ini loaded :
		</div>
		<div class="mobile-3 tablet-3 desktop-9 content">
			{$iniLoaded}
		</div>

		<div class="mobile-3 tablet-3 desktop-3 type">
			Ini files scanned :
		</div>
		<div class="mobile-3 tablet-3 desktop-9 content">
			{$iniScanned|replace:',':'<br />'}
		</div>

		<div class="mobile-3 tablet-3 desktop-3 type">
			Extension Loaded :
		</div>
		<div class="mobile-3 tablet-3 desktop-9 content">
			{foreach $loadedExtensions as $ext}
					{$ext} <br>
			{/foreach}
		</div>

		<div class="mobile-3 tablet-3 desktop-3 type">
			Ini values :
		</div>
		<div class="mobile-3 tablet-3 desktop-9 content">
			{foreach $iniVars as $keyvar => $var }			
					<div><span class="purple">{$keyvar} ({$var.access}):</span> {$var.local_value} {* {$var.global_value} *}</div>
			{/foreach}
		</div>
{* 		PHP_INI_USER    1 Entry can be set in user scripts 
		PHP_INI_PERDIR  2 Entry can be set in php.ini, .htaccess or httpd.conf  
		PHP_INI_SYSTEM  4 Entry can be set in php.ini or httpd.conf  
		PHP_INI_ALL     7 Entry can be set anywhere 
 *}	</div>
</section>

{/block}
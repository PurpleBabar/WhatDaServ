{extends 'layout.tpl'}
{block name='content' nocache}
{* PHP informations *}
<section class="row main-board php">
	<div class="mobile-3 tablet-6 desktop-12">
			<a href="http://{$smarty.server.SERVER_NAME}/php-infos"><span class="icon-prog-php01"></span></a>
	</div>
</section>
<section class="row infos php">
	<div class="mobile-3 tablet-3 desktop-6">
		<h2>Script execution : </h2>
		<p>{$php.versionScript}</p>
	</div>
	<div class="mobile-3 tablet-3 desktop-6">
		<h2>Shell execution : </h2>
		<p>{$php.versionShell|nl2br}</p>
	</div>
</section>

{* Apache Informations *}
<section class="row main-board server">
	<div class="mobile-3 tablet-6 desktop-12">
			<span class="icon_cogs"></span>
			<h3 class="">Server</h3>
	</div>
</section>
<section class="row infos">
	<div class="mobile-3 tablet-3 desktop-6">
		<h2>Script execution : </h2>
		<p>{$apache.versionScript|nl2br}</p>
	</div>
	<div class="mobile-3 tablet-3 desktop-6">
		<h2>Shell execution : </h2>
		<p>{$apache.versionShell|nl2br}</p>
	</div>
</section>

{* Os Informations *}
<section class="row main-board">
	<div class="mobile-3 tablet-6 desktop-12">
			<span class="icon-os-{if condition}{$systems[$os.os]}{/if}"></span>
			<h3 class="">OS</h3>
	</div>
</section>
<section class="row infos">
	<div class="mobile-3 tablet-3 desktop-5 centered list">
		<p><span class="type">Hostname :</span> {$os.hostname|nl2br}</p>
		<p><span class="type">Os :</span> {$os.os|nl2br}</p>
		<p><span class="type">Release :</span> {$os.release|nl2br}</p>
		<p><span class="type">Machine type :</span> {$os.machine|nl2br}</p>
		<p><span class="type">Version :</span> {$os.version|nl2br}</p>
	</div>
</section>

{* Symfony Informations *}
<section class="row main-board symfony">
	<div class="mobile-3 tablet-6 desktop-12">
			<span class="icon-prog-symfony"></span>
			<h3 class="">Symfony</h3>
	</div>
</section>
<section class="row infos framework">
	<div class="mobile-3 tablet-3 desktop-4 error">
		<a href="http://{$smarty.server.SERVER_NAME}/symfony"><span class="icon_error-oct"></span></a>
		<span>{$symfony->getSevere()} Errors</span>
	</div>
	<div class="mobile-3 tablet-3 desktop-4 warning">
		<span class="icon_error-triangle"></span>
		<span>{$symfony->getWarnings()} Warnings</span>
	</div>
	<div class="mobile-3 tablet-3 desktop-4 valid">
		<span class="icon_check_alt"></span>
		<span>{$symfony->getValids()} Requirements Valids</span>
	</div>
</section>

{* Majesteel Informations *}
<section class="row main-board majesteel">
	<div class="mobile-3 tablet-6 desktop-12">
			<a href="http://{$smarty.server.SERVER_NAME}/majesteel"><img src="/images/majesteel.png" alt=""></a>
			<h3 class="">Majesteel</h3>
	</div>
</section>
<section class="row infos framework">
	<div class="mobile-3 tablet-3 desktop-4 error">
		<span class="icon_error-oct"></span>
		<span>{$majesteel->getSevere()} Errors</span>
	</div>
	<div class="mobile-3 tablet-3 desktop-4 warning">
		<span class="icon_error-triangle"></span>
		<span>{$majesteel->getWarnings()} Warnings</span>
	</div>
	<div class="mobile-3 tablet-3 desktop-4 valid">
		<span class="icon_check_alt"></span>
		<span>{$majesteel->getValids()} Requirements Valids</span>
	</div>
</section>  

{/block}
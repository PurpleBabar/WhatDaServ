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

{/block}
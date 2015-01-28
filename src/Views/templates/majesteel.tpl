{extends 'layout.tpl'}
{block name='content' nocache}
{* Symfony Informations *}
<section class="row main-board majesteel">
	<div class="mobile-3 tablet-6 desktop-12">
			<img src="/images/majesteel.png" alt="">
	</div>
</section>
<section class="row infos requirements">
	<div class="mobile-3 tablet-3 desktop-4 error">
		<span class="icon_error-oct"></span>
		<span>{$majesteel->getSevere()} Errors</span>
	</div>
	<div class="mobile-3 tablet-3 desktop-8 list">
		<p>
		{foreach $majesteel->getRequirements() as $requirement}
			{if $requirement != 1}
				<span>{$requirement}</span>
			{/if}
		{/foreach}
		</p>
	</div>
</section>
<section class="row infos requirements">
	<div class="mobile-3 tablet-3 desktop-4 warning">
		<span class="icon_error-triangle"></span>
		<span>{$majesteel->getWarnings()} Warnings</span>
	</div>
	<div class="mobile-3 tablet-3 desktop-8 list">
		<p>
		{foreach $majesteel->getOptionalRequirements() as $requirement}
			{if $requirement != 1}
				<span>{$requirement}</span>
			{/if}
		{/foreach}
		</p>
	</div>
</section>
<section class="row infos requirements">
	<div class="mobile-3 tablet-3 desktop-4 valid">
		<span class="icon_check_alt"></span>
		<span>{$majesteel->getValids()} Requirements Valids</span>
	</div>
	<div class="mobile-3 tablet-3 desktop-4">
	</div>	
</section>
{/block}
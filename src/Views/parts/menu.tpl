<ul class='mobile-5 tablet-5 desktop-5 centered'>
	<li><a href="/">Main infos</a></li>
	<li><a href="/symfony">Symfony's Corner</a>
		{if $symfony->getSevere() > 0}
			<span class="icon_error-oct error"></span>
		{elseif $symfony->getSevere() == 0 && $symfony->getWarnings() > 0}
			<span class="icon_error-triangle warning"></span>
		{elseif $symfony->getSevere() == 0 && $symfony->getWarnings() == 0 && $symfony->getValids() > 0}
			<span class="icon_check_alt valid"></span>
		{/if}
	</li>
	<li><a href="/majesteel">Majes'Teel's Corner</a>
		{if $majesteel->getSevere() > 0}
			<span class="icon_error-oct error"></span>
		{elseif $majesteel->getSevere() == 0 && $majesteel->getWarnings() > 0}
			<span class="icon_error-triangle warning"></span>
		{elseif $majesteel->getSevere() == 0 && $majesteel->getWarnings() == 0 && $majesteel->getValids() > 0}
			<span class="icon_check_alt valid"></span>
		{/if}
	</li>
</ul>
<div class="footer">
<div class="gitrecap"></div>
Made By <a href="https://github.com/PurpleBabar"><span>PurpleBabar</span></a>
</div>
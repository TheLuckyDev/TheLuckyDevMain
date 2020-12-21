<ul class="nav nav-pills nav-stacked">
	{foreach from=array('basic_icons', 'larger_icons', 'fixed_width_icons', 'list_icons', 'bordered_pulled_icons', 'spinning_icons') item='realpage'}
		<li{if $active_page == $realpage} class="active"{/if}>
			<a href="{$smarty.const.IA_URL}iafontawesome/{$realpage}/">{lang key="iafontawesome_{$realpage}"}</a>
		</li>
	{/foreach}


	{foreach from=array('ia_rotated_flipped', 'ia_stacked_icons', 'ia_bootstrap_exemples','ia_custom_css','icons') item='realpage'}
		<li{if $active_page == $realpage} class="active"{/if}>
			<a href="{$smarty.const.IA_URL}iafontawesome/{$realpage}/">{lang key="iafontawesome_{$realpage}"}</a>
		</li>
	{/foreach}	
</ul>
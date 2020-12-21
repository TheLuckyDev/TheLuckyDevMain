{if 'mainmenu' == $position}
	{ia_menu menus=$menu.contents class="nav navbar-nav navbar-right nav-main {$menu.classname}"}
{elseif 'inventory' == $position}
	{ia_menu menus=$menu.contents class="nav navbar-nav navbar-right nav-inventory {$menu.classname}"}
{elseif 'account' == $position}
	{if 'account' == $menu.name && $member && $core.config.members_enabled}
		<ul class="nav navbar-nav navbar-right nav-account">
			<li>
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
					   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            	        {ia_image file=$member.avatar type='thumbnail' title=$member.fullname|default:$member.username class='img-circle'
						gravatar=true email=$member.email}

            	        {$member.fullname|default:$member.username}
					</a>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                        {ia_hooker name='smartyFrontInsideAccountBox'}
                        {foreach $menu.contents as $key => $value}
                        	{foreach $value as $k => $v}
								<a class="dropdown-item" href="{$v["url"]}">{$v["text"]}</a>
							{/foreach}
                        {/foreach}
						<a class="dropdown-item" href="logout/">Logout</a>
                        {*{ia_menu menus=$menu.contents class='dropdown-item' loginout=true}*}
					</div>
				</div>
			</li>
			{access object='admin_access'}
				<li><a rel="nofollow" href="{$smarty.const.IA_ADMIN_URL}" target="_blank" title="{lang key='admin_dashboard'}"><span class="fas fa-user-cog" style="margin-right: 5px;"></span><span class="visible-xs-inline">{lang key='admin_dashboard'}</span></a></li>
			{/access}
			<li><a rel="nofollow" href="http://localhost/UserPanel/panel/pages/" target="_blank" title="{lang key='user_dashboard'}"><span class="fas fa-user-cog" style="margin-right: 5px;"></span><span class="visible-xs-inline">{lang key='user_dashboard'}</span></a></li>

		</ul>
	{else}
		<ul class="nav navbar-nav navbar-right">
			<li{if 'login' == $core.page.name} class="active"{/if}><a href="{$smarty.const.IA_URL}login/">{lang key='login'}</a></li>
			<li{if 'registration' == $core.page.name} class="active"{/if}><a href="{$smarty.const.IA_URL}registration/">{lang key='register'}</a></li>
		</ul>
	{/if}
{elseif in_array($position, array('left', 'right', 'user1', 'user2', 'top', 'footer1', 'footer2', 'footer3', 'footer4'))}
	{if !empty($menu.contents[0]) && 'account' != $menu.name}
		{ia_block title=$menu.title movable=true id=$menu.id name=$menu.name collapsible=$menu.collapsible classname=$menu.classname}
			{ia_menu menus=$menu.contents class="nav-footer {$menu.classname}"}
		{/ia_block}
	{/if}
{elseif 'copyright' == $position}
	{ia_menu menus=$menu.contents class="nav nav-inline {$menu.classname}"}
{else}
	<!--__ms_{$menu.id}-->
	{if $menu.header || isset($manageMode)}
		<div class="nav-menu-header {$menu.classname}">{$menu.title}</div>
	{else}
		<div class="menu {$menu.classname}">
	{/if}

	<!--__ms_c_{$menu.id}-->
	{ia_menu menus=$menu.contents class='nav-menu'}
	<!--__me_c_{$menu.id}-->

	{if $menu.header || isset($manageMode)}
	{else}
		</div>
	{/if}
	<!--__me_{$menu.id}-->
{/if}
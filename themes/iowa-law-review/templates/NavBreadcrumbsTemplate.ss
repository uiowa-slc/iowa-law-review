<% if Pages.Count > 1 %>
		<% loop Pages %>
				<li class="nav-breadcrumb"><a class="<% if not $Last %>arrow<% end_if %>"href="$Link">$MenuTitle.LimitCharacters(25)</a></li>
				<li role="separator" class="divider"></li>
		<% end_loop %>
<% end_if %>

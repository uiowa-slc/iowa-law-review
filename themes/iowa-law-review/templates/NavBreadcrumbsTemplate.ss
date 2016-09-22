<% if Pages.Count > 1 %>
		<% loop Pages %>
				<li class="nav-breadcrumb <% if $Last %>article-title<% end_if %>"><a class="<% if not $Last %>arrow<% end_if %>"href="$Link">$MenuTitle.LimitCharacters(25)</a></li>
				<li role="separator" class="divider"></li>
		<% end_loop %>
<% end_if %>

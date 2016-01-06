<% if Pages.Count > 1 && not $BackgroundImage %>
	<ul class="breadcrumbs smallcaps hidden-print">
		<li><a href="$Baseref">Home</a></li>
		<% loop Pages %>
			<% if Last %>
				<li class="active">$MenuTitle.LimitCharacters(25)</li>
			<% else %>
				<li><a href="$Link">$MenuTitle.LimitCharacters(25)</a></li>
			<% end_if %>
		<% end_loop %>
	</ul>
<% end_if %>

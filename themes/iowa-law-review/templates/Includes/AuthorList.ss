<% if $Authors %>
	<em>
		<% if $Authors.Count == 2 %>
			<a href="$Link">{$Authors.First.Name}<% if $Authors.First.ArticleNote %>*<% end_if %></a> and <a href="$Link">{$Authors.Last.Name} <% if $Authors.Last.ArticleNote %>*<% end_if %></a>
		<% else %>
			<% loop $Authors %>
				<a href="$Link">$Name</a><% if not $Last %>, <% end_if %>
			<% end_loop %>			
		<% end_if %>
	</em><br />
<% end_if %>
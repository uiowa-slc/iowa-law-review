<% if $SortedAuthors %>
	<em>
		<% if $SortedAuthors.Count == 2 %>
			<a href="$SortedAuthors.First.Link">{$SortedAuthors.First.Name}<% if $SortedAuthors.First.ArticleNote %><% end_if %></a>&amp; <a href="$SortedAuthors.Last.Link">{$SortedAuthors.Last.Name}<% if $SortedAuthors.Last.ArticleNote %><% end_if %></a>
		<% else %>
			<% loop $SortedAuthors %>
				<a href="$Link">$Name</a><% if not $Last %>, <% end_if %>
			<% end_loop %>			
		<% end_if %>
	</em><br />
<% end_if %>
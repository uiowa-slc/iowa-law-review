<div class="byline">
	<% if $Authors %>
		<em>
			<% if $Authors.Count == 2 %>
				<a href="$Link">{$Authors.First.Name}</a> and <a href="$Link">{$Authors.Last.Name}</a>
			<% else %>
				<% loop $Authors %>
					<a href="$Link">$Name</a><% if not $Last %>, <% end_if %>
				<% end_loop %>			
			<% end_if %>
		</em>
	<% end_if %>
</div>
<div class="byline">
	<h1>$ArticleTitle</h1>
	<% if $Authors %>
		<em>
			<% loop $Authors %>
				<a href="$Link">$Name</a><% if not $Last %>, <% end_if %>
			<% end_loop %>
		</em>
	<% end_if %>
</div>
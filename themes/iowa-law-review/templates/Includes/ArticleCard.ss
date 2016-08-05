<article>
	<div class="article-header <% if $FeaturedTag %>has-featured-tag<% end_if %>">
		<% include FeaturedTag %>
			<h1><a href="$Link">$ArticleTitle</a></h1>
			<% if $Authors %>
				<em>
					<% if $Authors.Count == 2 %>
						<a href="$Authors.First.Link">{$Authors.First.Name}<% if $Authors.First.ArticleNote %><% end_if %></a> &amp; <a href="$Authors.Last.Link">{$Authors.Last.Name}<% if $Authors.Last.ArticleNote %><% end_if %></a>
					<% else %>
						<% loop $Authors %>
							<a href="$Link">$Name</a><% if not $Last %>, <% end_if %>
						<% end_loop %>			
					<% end_if %>
				</em><br />
			<% end_if %>
	</div>
</article>
<article>
	<div class="article-header <% if $Category %>has-featured-tag<% end_if %>">
		<% include FeaturedTag %>
			<h1><% if $ArticleTitle %><a href="$Link">$ArticleTitle.RAW</a><% else %><a href="$Link">$Title</a><% end_if %></h1>
			<% if $SortedAuthors %>
				<em>
					<% if $SortedAuthors.Count == 2 %>
						<a href="$SortedAuthors.First.Link">{$SortedAuthors.First.Name}<% if $SortedAuthors.First.ArticleNote %><% end_if %></a> &amp; <a href="$SortedAuthors.Last.Link">{$SortedAuthors.Last.Name}<% if $SortedAuthors.Last.ArticleNote %><% end_if %></a>
					<% else %>
						<% loop $SortedAuthors %>
							<a href="$Link">$Name</a><% if not $Last %>, <% end_if %>
						<% end_loop %>			
					<% end_if %>
				</em><br />
			<% end_if %>
	</div>
</article>
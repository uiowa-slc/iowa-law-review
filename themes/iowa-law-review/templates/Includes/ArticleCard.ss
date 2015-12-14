<article>
	<div class="article-header <% if $FeaturedTag %>has-featured-tag<% end_if %>">
		<% include FeaturedTag %>
			<h1><a href="$Link">$ArticleTitle</a></h1>
		<% include ArticleByline %>
	</div>
</article>
<% if not $Last %>
<hr />
<% end_if %>
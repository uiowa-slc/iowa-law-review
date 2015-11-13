<% include Header %>
<div>
	<h1>Search Results For: $Tag.Title</h1>
</div>

<div class="article-card-container">
	<% loop $Articles %>
	<% include ArticleCard %>
	<% end_loop %>
</div>
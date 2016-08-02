<% include Header %>
<article role="main" class="main-content">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-lg-offset-3">
				<h1>Search Results For: $Tag.Title</h1>
				<div class="article-card-container">
					<% loop $Articles %>
					<% include ArticleCard %>
					<% end_loop %>
				</div>
			</div>
	</div>
</article>


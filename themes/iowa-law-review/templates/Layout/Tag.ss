<% include Header %>
<article role="main" class="main-content">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-lg-offset-1">
				<h1>Articles categorized under <em>$Tag.Title</em>:</h1>
				<div class="article-card-container full-width">
					<% loop $Articles %>
					<% include ArticleCard %>
					<% end_loop %>
				</div>
			</div>
			<div class="col-lg-3 col-lg-offset-1">
	          <% include SideNav %>
			</div>
	</div>
</article>


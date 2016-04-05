<% include Header %>
<article role="main" class="main-content">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-lg-offset-1">
				<h1>$Author.Title</h1>
				<div>$Author.BiographicalDetails</div><br>
				<h2>Works contributed by $Author.Title</h2>
				<div class="article-card-container">
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


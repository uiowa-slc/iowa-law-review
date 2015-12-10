<% include Header %>
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<h1>$Author.Title</h1>
				<div>$Author.BiographicalDetails</div><br>
				<div class="article-card-container">
					<% loop $Articles %>
					<% include ArticleCard %>
					<% end_loop %>
				</div>
			</div>
		</div>
	</div>
</article>
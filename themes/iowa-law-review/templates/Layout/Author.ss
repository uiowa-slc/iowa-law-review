<% include Header %>
<article role="main" class="main-content">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-lg-offset-1">
				<h1>$Author.Title</h1>
				<% if $Author.BiographicalDetails %>
				<div>$Author.BiographicalDetails</div>
				<% end_if %>
				<div class="article-card-container article-cards-left row">
			        <div class="block-grid-xs-1 block-grid-md-2">
			          <% loop $Articles.Limit(4) %>
			            <div>
			            <% include ArticleCard %>
			            </div>
			          <% end_loop %>
			        </div>
			    </div>
			</div>
			<div class="col-lg-3 col-lg-offset-1">
	          <% include SideNav %>
			</div>
	</div>
</article>


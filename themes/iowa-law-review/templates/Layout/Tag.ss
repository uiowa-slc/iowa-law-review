<% include Header %>
<article role="main" class="main-content">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-lg-offset-1">
				<h1>Categorized as <em>$Tag.Title</em>:</h1>

					<div class="article-card-container article-cards-left container-fluid">
				        <div class="block-grid-xs-1 block-grid-md-2">
				          <% loop $Articles %>
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


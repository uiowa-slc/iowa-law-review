<% include Header %>

	<% if $Image %>
		<div class="cover" style="background-image: url('$Image.URL');">


		</div>

	<% end_if %>
<article>
	<div class="container article-container">
		<div class="row">
			<div class="col-lg-2">
					<% include ArticleShareIcons %>
			</div>
			<div class="col-lg-8">
				<h1>$Title</h1>
				<em>John Smith</em>
				$Content
				$Form
			</div>
			<div class="col-lg-2"></div>
		</div>
	</div>
</article>
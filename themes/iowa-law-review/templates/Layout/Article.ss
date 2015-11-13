<% include Header %>

	<% if $Image %>
		<div class="cover" style="background-image: url('$Image.URL');">


		</div>

	<% end_if %>
<article>
	<div class="container article-container">
		<div class="row">
			<div class="col-lg-10 col-lg-offset-2">
			$Breadcrumbs

			</div>
		</div>
		<div class="row">
			<div class="col-lg-1 col-lg-offset-1">
					<div class="article-social-container-main"><% include ArticleShareIcons %></div>
			</div>
			<div class="col-lg-8">
				<h1>$ArticleTitle</h1>
				<% include ArticleByline %>
				$Content
				$Form

				<% if $Tags %>
					<p><span class="smallcaps">Tagged as:</span>
						<% loop $Tags %>
							<a class="tag" href="$Link">$Title</a>
						<% end_loop %>
					</p>
				<% end_if %>
				<div class="article-social-bottom"><% include ArticleShareIcons %></div>
				<hr />
			</div>
			<div class="col-lg-2"></div>
		</div>
	</div>
</article>
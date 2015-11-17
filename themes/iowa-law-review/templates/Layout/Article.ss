<% include Header %>

	<% if $Image %>
		<div class="cover" style="background-image: url('$Image.URL');">


		</div>

	<% end_if %>
<article>
	<div class="container article-container">
		<div class="row">
			<div class="col-lg-10 col-lg-offset-3">
			$Breadcrumbs

			</div>
		</div>
		<div class="row">
			<div class="col-lg-1 col-lg-offset-2">
					<div class="article-social-container-main"><% include ArticleShareIcons %></div>
			</div>
			<div class="col-lg-7">
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
				<div class="article-social-bottom hidden-lg"><% include ArticleShareIcons %></div>
				<hr />

				<div class="row article-card-container article-nav">
					<div class="col-lg-6 text-left">
						<% if $PreviousPage %>
							<h2>Previous:</h2>
							<% with $PreviousPage %>
								<% include ArticleCard %>
							<% end_with %>							
						<% end_if %>
					</div>			
					<div class="col-lg-6 text-right">
						<% if $NextPage %>
							<h2>Next:</h2>
							<% with $NextPage %>
								<% include ArticleCard %>
							<% end_with %>
						<% end_if %>
					</div>
				</div>

			</div>
			<div class="col-lg-2"></div>
		</div>
	</div>
</article>
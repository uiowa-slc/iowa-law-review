<% include Header %>

	<% if $Image %>
		<div class="cover" style="background-image: url('$Image.URL');">


		</div>

	<% end_if %>
<article>
	<div class="container article-container">
		<div class="row">
			<div class="col-lg-7 col-lg-offset-3">
			$Breadcrumbs

			</div>
		</div>
		<div class="row">
			<div class="col-lg-1 col-lg-offset-2">
					<div class="article-social-container-main"><% include ArticleShareIcons %></div>
			</div>
			<div class="col-lg-7">
				<div class="article-header <% if $FeaturedTag %>has-featured-tag<% end_if %>">
					<% include FeaturedTag %>
					<h1>$ArticleTitle</h1>
					<% include ArticleByline %>
				</div>
				
					<!--Summary-->
					<div>
						$Content
					</div>
				<% if $Tags %>
					<p>
						<% loop $Tags %>
							<a class="tag" href="$Link">$Title</a>
						<% end_loop %>
					</p>
				<% end_if %>
					<!--Expander-->
					<% if $ExpandedText %>
					<div class="expanded-content-container">
						<div class="expand-header">
							<span style="display:inline-block;">Show more +</span>
						</div>
						<div class="content">
							$ExpandedText
						</div>
					</div>
					<% end_if %>
				$Form

				<% if $Responses %>
				<h3>Responses to this article:</h3>
				<div class="article-card-container">
				<% loop $Responses %>
					<% include ArticleCard %>
				<% end_loop %>
				<% end_if %>
				</div>
				<% loop $Footnotes %>
				<div class="footnotes"><ol>
				    <li class="footnote" id="fn:$Number">
				        <p>$Content<p>
				    </li>
				</ol></div>

				<% end_loop %>
				<div class="article-social-bottom hidden-lg"><% include ArticleShareIcons %></div>
				<hr />

				<div class="row article-card-container article-nav">
					<div class="col-md-6 text-left">
						<% if $PreviousPage %>
							<h2>Previous:</h2>
							<% with $PreviousPage %>
								<% include ArticleCard %>
							<% end_with %>							
						<% end_if %>
					</div>			
					<div class="col-md-6 text-right">
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
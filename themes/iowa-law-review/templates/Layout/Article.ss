<% include Header %>

	<% if $Image %>
		<div class="cover" style="background-image: url('$Image.URL');">


		</div>

	<% end_if %>
<article>
	<div class="container article-container">
		<div class="row">
			<div class="col-lg-2">
					<div class="article-social-container-main"><% include ArticleShareIcons %></div>
			</div>
			<div class="col-lg-8">
				<h1>$ArticleTitle</h1>
				<% include ArticleByline %>
				$Content
				$Form

				<% loop $Footnotes %>
					
				

				<div class="footnotes"><ol>
				    <li class="footnote" id="fn:$Number">
				        <p>$Content<p>
				    </li>
				</ol></div>

				<% end_loop %>



				<% if $Tags %>
					<h2 class="subheader">Tags:</h2>
					<p>
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
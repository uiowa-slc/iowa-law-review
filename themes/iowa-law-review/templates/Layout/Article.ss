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
				<div class="article-header">
					<h1>$ArticleTitle</h1>
					<% include ArticleByline %>
				</div>
				
					<!--Summary-->
					<div>
						<h4>Summary:</h4></br>
						$Content
					</div>
					<!--Expander-->
					<% if $ExpandedText.exists() %>
					<div class="content-container" style="border:1px solid #d3d3d3;">
						<div class="header" style="background-color:#d3d3d3;padding: 2px;cursor: pointer;font-weight: bold;text-align:center;">
							<span style="display:inline-block;">&#x25B2 collapse text &#x25B2</span>
						</div>
						<div class="content" style="padding:5px;">
							$ExpandedText
						</div>
					</div>
					<% end_if %>
				$Form
				<hr>
				<h3>Responses to this article:</h3>
				<% loop $Responses %>
					<% include ArticleCard %>
				<% end_loop %>
				<hr>
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
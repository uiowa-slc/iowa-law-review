
<% include Header %>
	<% if $Image %>
		<div class="cover" style="background-image: url('$Image.URL');">


		</div>

	<% end_if %>
<article role="main" class="main-content">
	<div class="container article-container padding">
		<div class="row">
			<div class="col-lg-7 col-lg-offset-2">
				<div class="article-header primary-article-header<% if $FeaturedTag %> has-featured-tag<% end_if %>">
					<% include FeaturedTag %>
					<h1>$ArticleTitle</h1>
					<% include ArticleByline %>


				</div>
				
			</div>
		</div>
		<div class="row">
			<div class="col-lg-1 article-share-container">
					<div class="article-social-container-main hidden-print">
						<ul class="article-social responsive text-center">
						<% include ArticleShareIcons %>
						</ul>
					</div>
			</div>
			<div class="col-lg-7 col-lg-offset-1">
				
					<!--Summary-->
				
					<div class="bigtext">
						$Content
					</div>
			
	
				<% if $Tags %>
					<p>
						<% loop $Tags %>
							<a class="tag" href="$Link">$Title</a>
						<% end_loop %>
					</p>
				<% end_if %>
				$Form

				<% if $Responses %>
					<h3>Responses:</h3>
					<div class="article-card-container">
						<% loop $Responses %>
							<% include ArticleCard %>
						<% end_loop %>
					</div>
				<% end_if %>

				
				<div class="footnotes">
					<ol>
						<% loop $Footnotes %>
				    	<li class="footnote" id="fn:$Number">
				        	$Content
				    	</li>
				    	<% end_loop %>
					</ol>
				</div>



			</div>
			<div class="col-lg-2 col-lg-offset-1 author-notes">
				<% if not $IsExcerpt %>
					<% loop $Authors %>
							<% if $BiographicalDetails || ArticleNote %>
							<span class="asterisks">$Asterisks</span>
							<span class="details">
							<% if $BiographicalDetails %>
								$BiographicalDetails
							<% end_if %>
							<% if $ArticleNote %>
								<br />
								<br />
								$ArticleNote
							<% end_if %>
							<% if not $Last %>
								<hr />
							<% end_if %>
							</span>
						<% end_if %>
					<% end_loop %>
					<% if JointAuthorNotes %>
						<hr />
						<div class="joint-author-notes">
							$JointAuthorNotes
						</div>
					<% end_if %>
				<% end_if %>
			</div>
			<div class="col-lg-12">

				<% if not $IsExcerpt %>
				<div class="article-social-bottom text-center">

					<ul class="article-social">
						<% include ArticleShareIcons %>
					</ul>
				</div>
				<% end_if %>
			</div>
		</div>
	</div>

			<div class="article-nav-container container">
					<div class="row article-card-container article-nav">
						<div class="col-md-3 text-left">
							<% if $PreviousPage %>
								<h2><a href="$PreviousPage.Link">Previous:</a></h2>
								<% with $PreviousPage %>
									<% include ArticleCard %>
								<% end_with %>							
							<% end_if %>
						</div>			
						<div class="col-md-3 col-md-offset-6 text-right">
							<% if $NextPage %>
								<h2><a href="$NextPage.Link">Next:</a></h2>
								<% with $NextPage %>
									<% include ArticleCard %>
								<% end_with %>
							<% end_if %>
						</div>
					</div>
		
		</div>
</article>



<% include Header %>

<article role="main" class="main-content">
	<div class="container article-container padding">
		<div class="row">
			<div class="col-lg-1 article-share-container">
					<div class="article-social-container-main hidden-print">
						<ul class="article-social responsive">
						<% include ArticleShareIcons %>
						</ul>
					</div>
			</div>
			<div class="col-lg-7 col-lg-offset-1">
				
					<!--Summary-->
				
					<div class="bigtext">
						$Content
					</div>
			
	


				
				<div class="footnotes">
					<ol>
						<% loop $Footnotes %>
				    	<li class="footnote" id="fn:$Number">
				        	$Content
				    	</li>
				    	<% end_loop %>
					</ol>
				</div>
				<div class="article-social-bottom">
					<ul class="article-social">
						<% include ArticleShareIcons %>
					</ul>
				</div>


			</div>
			<div class="col-lg-2 col-lg-offset-1 author-notes">


			</div>
		</div>
	</div>

</article>
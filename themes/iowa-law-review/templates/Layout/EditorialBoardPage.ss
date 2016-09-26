


<% include Header %>

<article role="main" class="main-content pdf-viewable">
	<div class="container article-container padding">
		<div class="row">

			<div class="col-lg-8 col-lg-offset-2">
				
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
		</div>
	</div>

</article>
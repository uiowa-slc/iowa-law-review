


<% include Header %>

<article role="main" class="main-content pdf-viewable">
	<div class="container article-container padding">
		<div class="row">

			<div class="col-lg-8 col-lg-offset-2">


					<div class="bigtext">
					 	$MastheadImage
				 		<% if MastheadPDF %>
						<a href="$MastheadPDF.Link" download>Download PDF</a>
						<% end_if %>				
					</div>
				
					<div class="bigtext">
						$Content
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
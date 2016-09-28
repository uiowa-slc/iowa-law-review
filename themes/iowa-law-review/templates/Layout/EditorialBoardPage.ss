


<% include Header %>

<article role="main" class="main-content pdf-viewable">
	<div class="container article-container padding">
		<div class="row">

			<div class="col-lg-12">


					 	<img class="editorial-board" src="$MastheadImage.SetWidth(1140).URL">
				 		<% if MastheadPDF %>
						<a href="$MastheadPDF.Link" >Download PDF</a>
						<% end_if %>				
					
				
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
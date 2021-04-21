


<% include Header %>

<article role="main" class="main-content">
	<div class="container article-container padding">
		<div class="row">

			<div class="col-lg-12">

					<% if $MastheadPDF && MastheadImage %>
					<a href="$MastheadPDF.URL">
						<img class="editorial-board" src="$MastheadImage.ScaleWidth(1140).URL" alt="Latest Editorial Board, use this link for a PDF version">
					</a>
					<% else_if $MastheadImage %>
						<img class="editorial-board" src="$MastheadImage.ScaleWidth(1140).URL" alt="Latest Editorial Board, a PDF version should be available soon. If not, please contact imu-web@uiowa.edu. ">
					<% end_if %>




					<div class="bigtext">
						<div class="text-center">
				 		<% if MastheadPDF %>
						<p><a href="$MastheadPDF.URL">Download PDF</a></p>
						<% end_if %>
						<hr />
						$Content
						</div>
					</div>


				<div class="article-social-bottom text-center">
					<ul class="article-social">
						<% include ArticleShareIcons %>
					</ul>
				</div>


			</div>
		</div>
	</div>

</article>

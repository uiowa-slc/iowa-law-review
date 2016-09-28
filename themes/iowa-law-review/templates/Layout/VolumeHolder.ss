<% include Header %>
<article role="main" class="main-content">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h1>$Title</h1>
				<div class="volume-holder">
					<% loop $SortedChildren %>
						<div class="volume">
							<h2><a href="$Link">$Title</a></h2>
						</div>
					<% end_loop %>
				</div> 
			</div>
	</div>

</article>
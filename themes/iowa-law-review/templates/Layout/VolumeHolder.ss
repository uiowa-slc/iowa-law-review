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
							<% if $Authors %><p><strong>Featuring:</strong> <% loop $Authors.Limit(3) %>$Name, <% end_loop %><% if $Authors.Count > 3 %><a href="$Link">and more...</a><% end_if %></p><% end_if %>
						</div>
					<% end_loop %>
				</div> 
			</div>
	</div>

</article>
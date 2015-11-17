<% include Header %>
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-lg-offset-1">
				<% if $URLSegment != "about" %><h1>$Title</h1><% end_if %>
				$Content
				$Form
			</div>
			<div class="col-lg-3 col-lg-offset-1">
	          <% include SideNav %>
			</div>
	</div>
</article>
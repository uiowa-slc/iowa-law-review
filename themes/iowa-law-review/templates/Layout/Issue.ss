<% include Header %>
<div class="container">
	<div class="row">
		<div class="col-lg-8">
			<h1>$Title</h1>
			$Content
			<% loop $Children %>
				<article>
					<h1><a href="$Link">$Title</a></h1>
					$Content.Summary(50)
				</article>
			<% end_loop %>
			$Form
		</div>
	</div>
</div>
<% include Header %>
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<h1>$Title</h1>
				<% loop $SortedChildren %>
					<div class="">
						<h2><a href="$Link">$Title</a></h2>
					</div>
				<% end_loop %>
				$Form
			</div>
		</div>
	</div>
</article>
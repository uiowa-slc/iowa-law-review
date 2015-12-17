<% include Header %>
<article>
	<div class="container">
		<div class="row">
			<div class="blog-entry content-container">
				<article>
					<h1>$Title</h1>

						<% if $FeaturedImage %>
							<p class="post-image">$FeaturedImage.setWidth(795)</p>
						<% end_if %>

						<div class="content">$Content</div>

						<% include EntryMeta %>
				</article>

				$Form
				$CommentsForm
			</div>
			<div class="col-lg-3 col-lg-offset-1">
	          <% include SideNav %>
			</div>
	</div>
</article>



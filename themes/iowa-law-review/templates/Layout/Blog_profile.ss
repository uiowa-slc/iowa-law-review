<% include Header %>
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-lg-offset-1">
				<% include MemberDetails %>

					<% if $PaginatedList.Exists %>
						<h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname for $Title:</h2>
						<% loop $PaginatedList %>
							<% include PostSummary %>
						<% end_loop %>
					<% end_if %>

				$Form
				$CommentsForm

					<% with $PaginatedList %>
						<% include Pagination %>
					<% end_with %>
			</div>
			<div class="col-lg-3 col-lg-offset-1">
			<% if $SideBarView %>
						<div class="blog-sidebar typography unit size1of4 lastUnit">
							$SideBarView
						</div>
					<% end_if %>

	          <% include SideNav %>
	          
					
			</div>
	</div>
</article>

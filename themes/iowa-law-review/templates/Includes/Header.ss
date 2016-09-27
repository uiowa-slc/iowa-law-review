
<header>
	<% if UseLargeHeader %>
		<div class="container visible-lg-block">

			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8 wordmark-container">
					<h1 class="text-center"><a href="$BaseUrl">Iowa Law Review</a></h1>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
		<div class="border-container hidden-print">
			<div class="navbar-container">
				<% include Nav %>
			</div>
		</div>

	<% else %>

		<div class="border-container hidden-print">
			<div class="navbar-container">
				<% include SmallNav %>
			</div>
		</div>


	<% end_if %>

</header>

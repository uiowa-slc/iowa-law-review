
<header>
	<% if UseLargeHeader %>
		<div class="container visible-lg-block">

			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8 wordmark-container">
					<h1 class="text-center"><a href="$absoluteBaseURL">Iowa Law Review</a></h1>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
		<div class="border-container hidden-print">
			<div style="height: 59px;">
				<div class="navbar-container">
					<% include Nav %>
				</div>
			</div>
		</div>

	<% else %>

		<div class="hidden-print">
			<div style="height: 56px;">
				<div class="navbar-container-small">
					<% include SmallNav %>
				</div>
			</div>
		</div>


	<% end_if %>

</header>

<header>
	<div class="container">
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<h1 class="text-center"><a href="$BaseUrl">Iowa Law Review</a></h1>
			</div>
			<div class="col-md-2"></div>
		</div>
		<% if $LatestIssue %>
			<% with $LatestIssue %>
			<div class="header-subnav-container text-center">
				<p>Latest Print Edition: <a href="$Link">$Date</a></p>
			</div>
			<% end_with %>
		<% end_if %>
	</div>
	<div class="border-container">
		<div class="navbar-container">
			<% include Nav %>
		</div>
	</div>
</header>
<% include Header %>
<article role="main" class="main-content">
	<div class="container">

        <div class="row">
            <div class="col-lg-8 center-block">

                <h1>$Title</h1>
                $Content
            </div>

        </div>
        <div class="row">
			<div class="col-lg-12">

				<div class="volume-holder">
					<% loop $getVolumes %>
						<div class="volume">
						<h2>Volume {$Number}</h2>
							<ul>
								<% loop $getIssues %>
								<li>
									<a href="$Link"><% if $Number %> No. {$Number}<% if $Date %> - {$Date}<% end_if %><% end_if %></a>
								</li>
								<% end_loop %>
							</ul>
						</div>
					<% end_loop %>
				</div>
			</div>
	</div>

</article>

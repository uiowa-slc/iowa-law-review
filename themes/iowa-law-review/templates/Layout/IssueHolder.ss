<% include Header %>
<article role="main" class="main-content">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-lg-offset-2">
				<h1>$Title</h1>

				<% with $LatestIssue %>
				    <div class="issue-header">
				    	<h2><a href="$Link">Volume {$Volume}, Issue {$Number}</a></h2>
				       	<h3 class="smallcaps subheader">$Date</h3>
				    </div>
				    <div class="article-card-container">
				  		<% loop $Children %>
				        	<% include ArticleCard %>
				  		<% end_loop %>
				    </div>
			   	<% end_with %>


<%-- 					<div class="panel-group" id="accordion" style="padding-left: 10px;">
						<div class="panel panel-default">
						<% loop $getVolumes.Limit(5) %>
							<div class="panel-heading"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse{$Pos}" style="color: #333;">
							<h4 class="panel-title">Volume {$Number}<i class="indicator glyphicon glyphicon-chevron-down pull-right"></i></h4></a></div>		
								<div id="collapse{$Pos}" class="panel-collapse <% if $First %> in <% end_if %> collapse">
								<% loop $getIssues %>
									<div class="panel-body">
									<li class="list-group-item" style="list-style: none;">
										<a data-toggle="collapse" href="#{$Up.Number}collapsed{$Pos}" style="color: #333;">Issue<% if $Number %> {$Number}<% end_if %><% if $Date %> - {$Date}<% end_if %></a></li>
										<div id="{$Up.Number}collapsed{$Pos}" class="panel-collapse collapse article-holder">
											<% loop $SortedChildren %>
											<li class="issue-item"><a href="$Link">$Title</a></li>
												<% loop $Authors %>
												<a href="$Link" style="font-size: 15px;color: grey; padding-left: 15px;">$Name<% if not $Last %>, <% end_if %></a>
												<% end_loop %>
											<% end_loop %>
										</div>
									</div>
								<% end_loop %>
								</div>
								<hr>
						<% end_loop %>
						</div>
					</div> --%>

			</div>
			 <%--<div class="col-lg-3 col-lg-offset-1">
	          <% include SideNav %> 
			</div>--%>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="volume-holder"><hr>
				<ul>
				<% loop $getVolumes %>
					<li class="volume">Volume {$Number}
						<ul>
							<% loop $getIssues %>			
							<li>
								<a href="$Link"><% if $Number %> No. {$Number} <% end_if %></a>
							</li>
							<% end_loop %>
						</ul>
					</li>
				<% end_loop %>
				</ul>
			</div>
		</div>
	</div>
</article>
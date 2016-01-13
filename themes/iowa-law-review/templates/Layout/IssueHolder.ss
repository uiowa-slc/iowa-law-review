<% include Header %>
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<h1>$Title</h1>

					<!--<div class="latest-issue">
			          <% with $LatestPrintIssue %>
			            <h2 class="smallcaps subheader"><a href="$Link">From Our Latest Edition: {$Date}</a></h2>
			            <div class="issue-header">
			              <h1><a href="$Link">Volume {$Volume}, Issue {$Number}</a></h1>
			            </div>
			              <div class="article-card-container">
			                <% loop $Children.Limit(1) %>
			                  <% include ArticleCard %>
			                  $Content.LimitWordCount(80)
			                  <h2 class="subheader"><a href="$Link">Full article</a></h2>
			                <% end_loop %>
			              </div>
			          <% end_with %>
			        </div>
			        <br />-->

			        <div class="volume-list">
						<% loop $SortedChildren.Limit(5) %>
						<hr>
								<h4><li style="list-style: none; class="vol-item""><a data-toggle="collapse" href="#collapse{$Pos}" style="color: #333;">Volume {$Volume}</a></li></h4>

									<div id="collapse{$Pos}" class="panel-collapse collapse  <% if $First %>in<% end_if %> issue-list">
									<% if $Number %>
									<h5>Issue {$Number} - $Date</h5>
									<% end_if %>
										<% loop $SortedChildren %>
											<li><a href="$Link">$Title</a><br />
											<% loop $Authors %>
												<a href="$Link" style="font-size: 15px;color: grey; padding-left: 15px;">$Name</a><% if not $Last %>,<% end_if %>
											<% end_loop %></li>
										<% end_loop %>
									</div>
								
						<% end_loop %>
					</div>
	
					<div class="vol-list">
						<hr>

						<li style="list-style: none;" class="vol-item"><h4><a data-toggle="collapse" href="#collapse4" style="color: #333;">Volume 2</a></h4></li>

							<div id="collapse4" class="panel-collapse collapse issue-list">
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse5" style="color: #333;">Issue 1 - November 2014</a></li>
								<div id="collapse5" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse14" style="color: #333;">Issue 2 - November 2014</a></li>
								<div id="collapse14" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse15" style="color: #333;">Issue 3 - November 2014</a></li>
								<div id="collapse15" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse16" style="color: #333;">Issue 4 - November 2014</a></li>
								<div id="collapse16" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse17" style="color: #333;">Issue 5 - November 2014</a></li>
								<div id="collapse17" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								</div>				
							</div>
						<hr>

							<li style="list-style: none;" class="vol-item"><h4><a data-toggle="collapse" id="two" href="#collapse6" style="color: #333;">Volume 3</a></h4></li>

							<div id="collapse6" class="panel-collapse collapse issue-list">
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse7" style="color: #333;">Issue 1 - November 2013</a></li>
								<div id="collapse7" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								</div>
								<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse18" style="color: #333;">Issue 2 - November 2013</a></li>
								<div id="collapse18" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse19" style="color: #333;">Issue 3 - November 2013</a></li>
								<div id="collapse19" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse20" style="color: #333;">Issue 4 - November 2013</a></li>
								<div id="collapse20" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse21" style="color: #333;">Issue 5 - November 2013</a></li>
								<div id="collapse21" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>		
							</div>
						<hr>

							<li style="list-style: none;" class="vol-item"><h4><a data-toggle="collapse" id="three" href="#collapse8" style="color: #333;">Volume 4</a></h4></li>

							<div id="collapse8" class="panel-collapse collapse issue-list">
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse9" style="color: #333;">Issue 1 - November 2012</a></li>
								<div id="collapse9" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>
								<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse35" style="color: #333;">Issue 2 - November 2012</a></li>
								<div id="collapse35" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse22" style="color: #333;">Issue 3 - November 2012</a></li>
								<div id="collapse22" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse23" style="color: #333;">Issue 4 - November 2012</a></li>
								<div id="collapse23" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse24" style="color: #333;">Issue 5 - November 2012</a></li>
								<div id="collapse24" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>		
							</div>
						<hr>

						<li style="list-style: none;" class="vol-item"><h4><a data-toggle="collapse" id="four" href="#collapse10" style="color: #333;">Volume 5</a></h4></li>

							<div id="collapse10" class="panel-collapse collapse issue-list">
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse11" style="color: #333;">Issue 1 - November 2011</a></li>
								<div id="collapse11" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>
								<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse25" style="color: #333;">Issue 2 - November 2011</a></li>
								<div id="collapse25" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse26" style="color: #333;">Issue 3 - November 2011</a></li>
								<div id="collapse26" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse27" style="color: #333;">Issue 4 - November 2011</a></li>
								<div id="collapse27" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse28" style="color: #333;">Issue 5 - November 2011</a></li>
								<div id="collapse28" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									<li class="issue-item"><a href="#">Article#</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
									
								</div>		
							</div>

						</div>
					</div>
					
				$Form
				<!--<div class="col-lg-3 col-lg-offset-1">
	          <% include SideNav %>
			</div>-->

			</div>
			<!--After x volumes, if there are more, list volumes and their issues and link to issue pages {if SortedChildren > x-->
						<div class="volume-holder" style="text-align: center">
							<hr>
							<div class="vol-one" style="float: left; width: 20%; padding-bottom: 10px;">
							<li style="list-style: none;" class="vol-item">Volume 6</li>

								
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 1 - Dec. 2015</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 2 - Nov. 2015</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 3 - Oct. 2015</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 4 - Sept. 2015</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 5 - Aug. 2015</a></li>		
								
							</div>
							<div class="vol-one" style="float: left; width: 20%; padding-bottom: 10px;">
							<li style="list-style: none;" class="vol-item">Volume 7</li>

								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 1 - Dec. 2014</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 2 - Nov. 2014</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 3 - Oct. 2014</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 4 - Sept. 2014</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 5 - Aug. 2014</a></li>				
							</div>
							<div class="vol-one" style="float: left; width: 20%; padding-bottom: 10px;">
							<li style="list-style: none;" class="vol-item">Volume 8</li>

								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 1 - Dec. 2013</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 2 - Nov. 2013</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 3 - Oct. 2013</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 4 - Sept. 2013</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 5 - Aug. 2013</a></li>
							</div>
							<div class="vol-one" style="float: left; width: 20%; padding-bottom: 10px;">
							<li style="list-style: none;" class="vol-item">Volume 9</li>

								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 1 - Dec. 2012</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 2 - Nov. 2012</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 3 - Oct. 2012</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 4 - Sept. 2012</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 5 - Aug. 2012</a></li>
							</div>
							<div class="vol-one" style="float: left; width: 20%; padding-bottom: 10px;">
							<li style="list-style: none;" class="vol-item">Volume 10</li>

								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 1 - Dec. 2011</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 2 - Nov. 2011</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 3 - Oct. 2011</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 4 - Sept. 2011</a></li>
								<li class="list-item" style="list-style: none;">
									<a href="#">Issue 5 - Aug. 2011</a></li>
							</div>
						</div>
					  	
		</div>

</article>


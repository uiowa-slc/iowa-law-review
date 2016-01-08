<% include Header %>
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<h1>$Title</h1>

					<div class="latest-issue">
			          <% with $LatestPrintIssue %>
			            <h2 class="smallcaps subheader"><a href="$Link">From the Latest Print Edition:</a></h2>
			            <div class="issue-header">
			              <h1><a href="$Link">Volume {$Volume}, Issue {$Number}</a></h1>
			              <p class="smallcaps subheader">$Date</a></p>
			            </div>
			              <div class="article-card-container">
			                <% loop $Children.Limit(1) %>
			                  <% include ArticleCard %>
			                  $Content.LimitWordCount(80)
			                  <h2 class="smallcaps subheader"><a href="$Link">See full article</a></h2>
			                <% end_loop %>
			              </div>
			          <% end_with %>
			        </div>

			        <!--<div class="volume-holder">
						<% loop $SortedChildren %>
								<h4><li style="list-style: none;"><a data-toggle="collapse" href="#collapse{$Pos}">$Title</a></li></h4>

									<div id="collapse{$Pos}" class="panel-collapse collapse">
										<% loop $SortedChildren %>
											<li style="list-style: none;"><a href="$Link">$Title</a></li>
										<% end_loop %>
									</div>
						
						<% end_loop %>
					</div>-->

						
						<div class="volume-holder">
								<li style="list-style: none;"><a data-toggle="collapse" href="#collapse4" style="color: black;" class="smallcaps">Volume #</a></li>
									<div id="collapse4" class="panel-collapse collapse issue-holder">
								    	
								        <li class="list-group-item" style="list-style: none;" >

								        <a style="color: black;" data-toggle="collapse" href="#collapse5" class="smallcaps">Issue #</a></li>
										<div id="collapse5" class="panel-collapse collapse article-holder">
											
												<li class="list-group-item" style="list-style: none;"><a href="#">Article #</a></li>
												<li class="list-group-item" style="list-style: none;"><a href="#">Article #</a></li>
												<li class="list-group-item" style="list-style: none;"><a href="#">Article #</a></li>
											
										</div>

								       
								        <li class="list-group-item" style="list-style: none;">
								        <a style="color: black;" data-toggle="collapse" href="#collapse6" class="smallcaps">Issue #</a></li>
										<div id="collapse6" class="panel-collapse collapse article-holder">
											
												<li class="list-group-item" style="list-style: none;"><a href="#">Article #</a></li>
												<li class="list-group-item" style="list-style: none;"><a href="#">Article #</a></li>
												<li class="list-group-item" style="list-style: none;"><a href="#">Article #</a></li>
											
										</div>
								     
								        <li class="list-group-item" style="list-style: none;">
								        <a style="color: black;" data-toggle="collapse" href="#collapse7" class="smallcaps">Issue #</a></li>
										<div id="collapse7" class="panel-collapse collapse article-holder">
											
												<li class="list-group-item" style="list-style: none;"><a href="#">Article #</a></li>
												<li class="list-group-item" style="list-style: none;"><a href="#">Article #</a></li>
												<li class="list-group-item" style="list-style: none;"><a href="#">Article #</a></li>
											
										</div>
								        
								    
								</div>
					  	</div>
					  	
				$Form

			</div>
		</div>
	</div>
</article>
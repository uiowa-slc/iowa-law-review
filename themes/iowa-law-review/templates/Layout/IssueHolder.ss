<% include Header %>
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<h1>$Title</h1>

					<div class="latest-issue">
			          <% with $LatestPrintIssue %>
			            <h2 class="smallcaps subheader"><a href="$Link">From Our Latest Edition: {$Date}</a></h2>
			            <div class="issue-header">
			              <h1><a href="$Link">Volume {$Volume}, Issue {$Number}</a></h1>
			              <!--<p class="smallcaps subheader">$Date</p>-->
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
			        <br />


			        <!--<p align="center">
			        	<% loop $SortedChildren %>
			        		<a href="#{$Pos}">Volume {$Volume}</a>
			        		 | 
			        	<% end_loop %>

			        	<hr>

			        <!--<div class="volume-holder">
						<% loop $SortedChildren %>
								<h4><li style="list-style: none;"><a data-toggle="collapse" id={$Pos} href="#collapse{$Pos}">$Title</a></li></h4>

									<div id="collapse{$Pos}" class="panel-collapse collapse">
										<% loop $SortedChildren %>
											<li><a href="$Link">$Title</a></li>
										<% end_loop %>
									</div>
								<hr>
						<% end_loop %>
					</div>-->

					<!--<p align="center">
						<a href="#collapse4">Volume 1-1</a>
						 | 
						<a href="#collapse14">Volume 1-2</a>
						 | 
						<a href="#collapse15">Volume 1-3</a>
						 | 
						<a href="#collapse16">Volume 1-4</a>
						 | 
						<a href="#collapse17">Volume 1-5</a>
						 |     
						<a href="#collapse6">Volume 2-1</a>
						 | 
						<a href="#collapse8">Volume 3-1</a>
						 | 
						<a href="#collapse10">Volume 4-1</a>
						 | 
						<a href="#collapse12">Volume 5-1</a>
						 | 
					</p>-->
					<hr>
						
					<div class="vol-list">
					<!--<div class="vol-one" style="float: left; width: 20%; padding-bottom: 10px;">-->
						<li style="list-style: none;" class="vol-item"><h4><a data-toggle="collapse" id="one" href="#collapse4">Volume 1</a></h4></li>

							<div id="collapse4" class="panel-collapse collapse in issue-list">
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse5" style="color: #333;">Issue 1 {Date}</a></li>
								<div id="collapse5" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse14" style="color: #333;">Issue 2 {Date}</a></li>
								<div id="collapse14" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse15" style="color: #333;">Issue 3 {Date}</a></li>
								<div id="collapse15" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse16" style="color: #333;">Issue 4 {Date}</a></li>
								<div id="collapse16" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse17" style="color: #333;">Issue 5 {Date}</a></li>
								<div id="collapse17" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>				
							</div>

					<hr>

						<!--<div class="vol-two" style="float: left; width: 20%; padding-bottom: 10px;">-->
							<li style="list-style: none;" class="vol-item"><h4><a data-toggle="collapse" id="two" href="#collapse6">Volume 2</a></h4></li>

							<div id="collapse6" class="panel-collapse collapse issue-list">
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse7" style="color: #333;">Issue 1 {Date}</a></li>
								<div id="collapse7" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
								<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse18" style="color: #333;">Issue 2 {Date}</a></li>
								<div id="collapse18" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse19" style="color: #333;">Issue 3 {Date}</a></li>
								<div id="collapse19" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse20" style="color: #333;">Issue 4 {Date}</a></li>
								<div id="collapse20" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse21" style="color: #333;">Issue 5 {Date}</a></li>
								<div id="collapse21" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>		
							</div>
					<hr>

							<!--<div class="vol-three" style="float: left; width: 20%; padding-bottom: 10px;">-->
							<li style="list-style: none;" class="vol-item"><h4><a data-toggle="collapse" id="three" href="#collapse8">Volume 3</a></h4></li>

							<div id="collapse8" class="panel-collapse collapse issue-list">
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse9" style="color: #333;">Issue 1 {Date}</a></li>
								<div id="collapse9" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
								<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse35" style="color: #333;">Issue 2 {Date}</a></li>
								<div id="collapse35" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse22" style="color: #333;">Issue 3 {Date}</a></li>
								<div id="collapse22" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse23" style="color: #333;">Issue 4 {Date}</a></li>
								<div id="collapse23" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse24" style="color: #333;">Issue 5 {Date}</a></li>
								<div id="collapse24" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>		
							</div>
					<hr>

						<!--<div class="vol-four" style="float: left; width: 20%; padding-bottom: 10px;">-->
						<li style="list-style: none;" class="vol-item"><h4><a data-toggle="collapse" id="four" href="#collapse10">Volume 4</a></h4></li>

							<div id="collapse10" class="panel-collapse collapse issue-list">
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse11" style="color: #333;">Issue 1 {Date}</a></li>
								<div id="collapse11" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
								<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse25" style="color: #333;">Issue 2 {Date}</a></li>
								<div id="collapse25" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse26" style="color: #333;">Issue 3 {Date}</a></li>
								<div id="collapse26" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse27" style="color: #333;">Issue 4 {Date}</a></li>
								<div id="collapse27" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse28" style="color: #333;">Issue 5 {Date}</a></li>
								<div id="collapse28" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>		
							</div>
					<hr>

						<!--<div class="vol-five" style="float: left; width: 20%; padding-bottom: 10px;">-->
						<li style="list-style: none;" class="vol-item"><h4><a data-toggle="collapse" id="five" href="#collapse12">Volume 5</a></h4></li>

							<div id="collapse12" class="panel-collapse collapse issue-list">
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse13" style="color: #333;">Issue 1 {Date}</a></li>
								<div id="collapse13" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
								<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse29" style="color: #333;">Issue 2 {Date}</a></li>
								<div id="collapse29" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse30" style="color: #333;">Issue 3 {Date}</a></li>
								<div id="collapse30" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse31" style="color: #333;">Issue 4 {Date}</a></li>
								<div id="collapse31" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>
							<li class="list-group-item" style="list-style: none;">
								<a data-toggle="collapse" href="#collapse32" style="color: #333;">Issue 5 {Date}</a></li>
								<div id="collapse32" class="panel-collapse collapse article-holder">
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
									<li class="issue-item"><a href="#">Article# {Author}</a></li>
								</div>			
							</div>

						</div>
					</div>
					  	
				$Form

			</div>
		</div>
</article>
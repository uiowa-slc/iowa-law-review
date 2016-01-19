<% include Header %>
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<h1 class="col-lg-offset-2" style="padding-left: 10px;">$Title</h1>

			        <!--<div class="volume-list col-lg-offset-2" style="padding-left: 16px;">
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
					</div>-->


			
		<div class="panel-group col-lg-offset-2" id="accordion" style="padding-left: 10px;"><hr>
			<div class="panel panel-default">
				<div class="panel-heading">
				<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse1" style="color: #333;">Volume 25<i class="indicator glyphicon glyphicon-chevron-up pull-right"></i></a></h4></div>				
					<div id="collapse1" class="panel-collapse collapse in">
						<div class="panel-body">
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse2" style="color: #333;">Issue 1 - November 2015</a></li>
							<div id="collapse2" class="panel-collapse collapse in article-holder">
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Shorter Title</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important Will Probably Take Two Lines</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Shorter Title</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse3" style="color: #333;">Issue 2 - November 2015</a></li>
							<div id="collapse3" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse4" style="color: #333;">Issue 3 - November 2015</a></li>
							<div id="collapse4" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse5" style="color: #333;">Issue 4 - November 2015</a></li>
							<div id="collapse5" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse6" style="color: #333;">Issue 5 - November 2015</a></li>
							<div id="collapse6" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>				
						</div>
					</div>
				</div>
				<div class="panel panel-default">
				<div class="panel-heading">
				<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse7" style="color: #333;">Volume 24<i class="indicator glyphicon glyphicon-chevron-down pull-right"></i></a></h4></div>				
					<div id="collapse7" class="panel-collapse collapse">
						<div class="panel-body">
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse8" style="color: #333;">Issue 1 - November 2015</a></li>
							<div id="collapse8" class="panel-collapse collapse in article-holder">
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Shorter Title</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important Will Probably Take Two Lines</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Shorter Title</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse9" style="color: #333;">Issue 2 - November 2015</a></li>
							<div id="collapse9" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse10" style="color: #333;">Issue 3 - November 2015</a></li>
							<div id="collapse10" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse11" style="color: #333;">Issue 4 - November 2015</a></li>
							<div id="collapse11" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse12" style="color: #333;">Issue 5 - November 2015</a></li>
							<div id="collapse12" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>				
						</div>
					</div>
				</div>
				<div class="panel panel-default">
				<div class="panel-heading">
				<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse13" style="color: #333;">Volume 23<i class="indicator glyphicon glyphicon-chevron-down pull-right"></i></a></h4></div>				
					<div id="collapse13" class="panel-collapse collapse">
						<div class="panel-body">
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse14" style="color: #333;">Issue 1 - November 2015</a></li>
							<div id="collapse14" class="panel-collapse collapse in article-holder">
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Shorter Title</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important Will Probably Take Two Lines</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Shorter Title</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse15" style="color: #333;">Issue 2 - November 2015</a></li>
							<div id="collapse15" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse16" style="color: #333;">Issue 3 - November 2015</a></li>
							<div id="collapse16" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse17" style="color: #333;">Issue 4 - November 2015</a></li>
							<div id="collapse17" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse18" style="color: #333;">Issue 5 - November 2015</a></li>
							<div id="collapse18" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>				
						</div>
					</div>
				</div>
				<div class="panel panel-default">
				<div class="panel-heading">
				<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse19" style="color: #333;">Volume 22<i class="indicator glyphicon glyphicon-chevron-down pull-right"></i></a></h4></div>				
					<div id="collapse19" class="panel-collapse collapse">
						<div class="panel-body">
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse20" style="color: #333;">Issue 1 - November 2015</a></li>
							<div id="collapse20" class="panel-collapse collapse in article-holder">
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Shorter Title</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important Will Probably Take Two Lines</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Shorter Title</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse21" style="color: #333;">Issue 2 - November 2015</a></li>
							<div id="collapse21" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse22" style="color: #333;">Issue 3 - November 2015</a></li>
							<div id="collapse22" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse23" style="color: #333;">Issue 4 - November 2015</a></li>
							<div id="collapse23" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse24" style="color: #333;">Issue 5 - November 2015</a></li>
							<div id="collapse24" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>				
						</div>
					</div>
				</div>
				<div class="panel panel-default">
				<div class="panel-heading">
				<h4 class="panel-title"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse25" style="color: #333;">Volume 21<i class="indicator glyphicon glyphicon-chevron-down pull-right"></i></a></h4></div>				
					<div id="collapse25" class="panel-collapse collapse">
						<div class="panel-body">
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse26" style="color: #333;">Issue 1 - November 2015</a></li>
							<div id="collapse26" class="panel-collapse collapse in article-holder">
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Shorter Title</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important Will Probably Take Two Lines</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
								<li class="issue-item"><a href="#">Law Article: Shorter Title</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe</a>
								<li class="issue-item"><a href="#">Law Article: Long Title About Something Important</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">John Doe, Jane Doe</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse27" style="color: #333;">Issue 2 - November 2015</a></li>
							<div id="collapse27" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse28" style="color: #333;">Issue 3 - November 2015</a></li>
							<div id="collapse28" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse29" style="color: #333;">Issue 4 - November 2015</a></li>
							<div id="collapse29" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse30" style="color: #333;">Issue 5 - November 2015</a></li>
							<div id="collapse30" class="panel-collapse collapse article-holder">
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
								<li class="issue-item"><a href="#">Law Article</a></li>
									<a href="#" style="font-size: 15px;color: grey; padding-left: 15px;">Author</a>
							</div>				
						</div>
					</div>
				</div>
			</div>
		</div>

			$Form
			<div class="col-lg-3 col-lg-offset-1">
	          <% include SideNav %>
			</div>

			</div>
			<!--After x volumes, if there are more, list volumes and their issues and link to issue pages {if SortedChildren > x-->
			<div class="volume-holder" style="padding-left: 35px;">
				<hr>
				<div class="vol-one col-lg-2 col-lg-offset-1" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 20</li>			
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>		
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 19</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>					
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 18</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>	
				</div>
				<div class="vol-on col-lg-2" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 17</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>	
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 16</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>	
				</div>
				<div class="vol-one col-lg-2 col-lg-offset-1" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 15</li>			
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>			
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 14</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>					
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 13</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>	
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 12</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>	
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 11</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>	
				</div>
				<div class="vol-one col-lg-2 col-lg-offset-1" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 10</li>			
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>			
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 9</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>					
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 8</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>	
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 7</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>	
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 15px; padding-right:20px;">
				<li style="list-style: none;" class="vol-item">Volume 6</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - December 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - November 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - September 2015</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - August 2015</a></li>	
				</div>
				</div>
			</div>
					  	
		</div>

</article>


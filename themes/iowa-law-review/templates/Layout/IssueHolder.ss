<% include Header %>
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<h1 class="col-lg-offset-2" style="padding-left: 10px;">$Title</h1>

					<div class="panel-group col-lg-offset-2" id="accordion" style="padding-left: 10px;">
						<div class="panel panel-default">
						<% loop $getVolumes %>
							<div class="panel-heading"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse{$Pos}" style="color: #333;">
							<h4 class="panel-title">Volume {$Number}<i class="indicator glyphicon glyphicon-chevron-down pull-right"></i></h4></a></div>		
								<div id="collapse{$Pos}" class="panel-collapse collapse">
								<% loop $getIssues %>
									<div class="panel-body">
									<li class="list-group-item" style="list-style: none;">
										<a data-toggle="collapse" href="#collapsed{$Pos}" style="color: #333;">Issue {$Number}</a></li>
										<div id="collapsed{$Pos}" class="panel-collapse collapse article-holder">
											<% loop $SortedChildren %>
											<li class="issue-item"><a href="$Link">$Title</a></li>
												<% loop $Authors %>
												<a href="$Link" style="font-size: 15px;color: grey; padding-left: 15px;">$Name</a>
												<% end_loop %>
											<% end_loop %>
										</div>
									</div>
								<% end_loop %>
								</div>
								<hr>
						<% end_loop %>
						</div>
					</div>


			
		<!--<div class="panel-group col-lg-offset-2" id="accordion" style="padding-left: 10px;">
			<div class="panel panel-default">
				<div class="panel-heading"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse1" style="color: #333;">
				<h4 class="panel-title">Volume 25<i class="indicator glyphicon glyphicon-chevron-down pull-right"></i></h4></a></div>		
					<div id="collapse1" class="panel-collapse collapse">
						<div class="panel-body">
						<li class="list-group-item" style="list-style: none;">
							<a data-toggle="collapse" href="#collapse2" style="color: #333;">Issue 5 - December 2015</a></li>
							<div id="collapse2" class="panel-collapse collapse article-holder">
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
							<a data-toggle="collapse" href="#collapse3" style="color: #333;">Issue 4 - November 2015</a></li>
							<div id="collapse3" class="panel-collapse collapse article-holder">
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
							<a data-toggle="collapse" href="#collapse4" style="color: #333;">Issue 3 - October 2015</a></li>
							<div id="collapse4" class="panel-collapse collapse article-holder">
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
							<a data-toggle="collapse" href="#collapse5" style="color: #333;">Issue 2 - September 2015</a></li>
							<div id="collapse5" class="panel-collapse collapse article-holder">
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
							<a data-toggle="collapse" href="#collapse6" style="color: #333;">Issue 1 - August 2015</a></li>
							<div id="collapse6" class="panel-collapse collapse article-holder">
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
						</div>
					</div>
				</div>
				
				<hr>
			</div>-->
				
			</div>
			<div class="col-lg-3 col-lg-offset-1">
		        <% include SideNav %>
			</div>
		</div>

			$Form
			

		

			<!--After x volumes, if there are more, list volumes and their issues and link to issue pages {if SortedChildren > x-->
			<div class="volume-holder" style="padding-left: 35px;">
				<hr>
				<div class="vol-one col-lg-2 col-lg-offset-1" style="padding-bottom: 20px; padding-right:20px;">
				<li style="list-style: none; padding-left: 15px;" class="vol-item">Volume 20</li>			
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - December 2010</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - November 2010</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2010</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - September 2010</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - August 2010</a></li>		
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 20px; padding-right:20px;">
				<li style="list-style: none; padding-left: 15px;" class="vol-item">Volume 19</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - December 2009</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - November 2009</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2009</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - September 2009</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - August 2009</a></li>					
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 20px; padding-right:20px;">
				<li style="list-style: none; padding-left: 15px;" class="vol-item">Volume 18</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - December 2008</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - November 2008</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2008</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - September 2008</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - August 2008</a></li>	
				</div>
				<div class="vol-on col-lg-2" style="padding-bottom: 20px; padding-right:20px;">
				<li style="list-style: none; padding-left: 15px;" class="vol-item">Volume 17</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - December 2007</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - November 2007</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2007</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - September 2007</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - August 2007</a></li>	
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 20px; padding-right:20px;">
				<li style="list-style: none; padding-left: 15px;" class="vol-item">Volume 16</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - December 2006</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - November 2006</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2006</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - September 2006</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - August 2006</a></li>	
				</div>
				<div class="vol-one col-lg-2 col-lg-offset-1" style="padding-bottom: 20px; padding-right:20px;">
				<li style="list-style: none; padding-left: 15px;" class="vol-item">Volume 15</li>			
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - December 2005</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - November 2005</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2005</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - September 2005</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - August 2005</a></li>			
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 20px; padding-right:20px;">
				<li style="list-style: none; padding-left: 15px;" class="vol-item">Volume 14</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - December 2004</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - November 2004</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2004</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - September 2004</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - August 2004</a></li>					
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 20px; padding-right:20px;">
				<li style="list-style: none; padding-left: 15px;" class="vol-item">Volume 13</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - December 2003</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - November 2003</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2003</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - September 2003</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - August 2003</a></li>	
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 20px; padding-right:20px;">
				<li style="list-style: none; padding-left: 15px;" class="vol-item">Volume 12</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - December 2002</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - November 2002</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2002</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - September 2002</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - August 2002</a></li>	
				</div>
				<div class="vol-one col-lg-2" style="padding-bottom: 20px; padding-right:20px;">
				<li style="list-style: none; padding-left: 15px;" class="vol-item">Volume 11</li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">5 - December 2001</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">4 - November 2001</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">3 - October 2001</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">2 - September 2001</a></li>
					<li class="list-item" style="list-style: none;">
						<a href="#" style="font-size: 15px;">1 - August 2001</a></li>	
				</div>
				</div>
			</div>
					  	
		</div>

</article>



<!-- Footer -->
<footer class="footer" role="contentinfo" style="background-color: #232323
; color: #9a9a9a;">
		<div class="container">
			<div class="small-8 medium-4 large-3 columns" style="float: left; width: 50%;">
					
					<p><a href="$AbsoluteBaseURL"><h3 itemprop="name">$SiteConfig.Title</h3></a></p>

				

					<p >Iowa Law Review <br />190 Boyd Law Buldg<br />Iowa City, IA 52242-1113</p>
			</div>
			
			<div class="clearfix footer-links" style="float: left; width: 50%; padding: 1em 1em 1em;">
					<ul class="" style="border-left: 1px solid rgba(255, 255, 255, 0.75); list-style: none;">
						<% loop Menu(1) %>
							<li><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					</ul>
			</div>
		</div><!-- end .container -->
	<div class="footer-bottom">
		<div class="footer-bottom">
		<div class="container">
			<div class="large-12 columns" >
	        	<hr>
	        	<div class="rights" style="float: left; width: 50%">
	        		<p><small>&copy; 2015 University of Iowa Law Review.<br />All Rights Reserved. <a href="http://www.uiowa.edu/homepage/online-privacy-information">Privacy Policy</a></small></p>

	        	</div>
	        	<!--<div style="float: left; width: 33%;">
		        	<ul class="clearfix social-icons">
						
							<a href="facebook.com" title="Facebook" target="_blank">
								<img src="{$ThemeDir}/images/facebook_circle_gray-32.png" alt="Facebook">
							</a>
						
							<a href="twitter.com" title="Twitter" target="_blank">
								<img src="{$ThemeDir}/images/twitter_circle_gray-32.png" alt="Twitter">
							</a>
						
							<a href="youtube.com" title="Youtube" target="_blank">
								<img src="{$ThemeDir}/images/youtube_circle_gray-32.png" alt="YouTube">
							</a>
					</ul>
				</div> -->
				<a href="http://www.uiowa.edu" class="clearfix footer-logos" style="float: left; width 50%; padding-top: 10px;"><img src="$ThemeDir/images/uiowa.png" alt="Division Of Student Life" style="margin-top: -20px;"></a>
    		</div>	
    	</div>
		</div>
	</div>
</footer>
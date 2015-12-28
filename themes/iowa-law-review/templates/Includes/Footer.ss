
<!-- Footer -->
<footer class="footer" role="contentinfo">
		<div class="container">
			<div class="small-8 medium-4 large-3 columns">
					<div class="footer-top-text">
					<p><a href="$AbsoluteBaseURL"><h3 itemprop="name">$SiteConfig.Title</h3></a></p>
					
					<p >Iowa Law Review <br />190 Boyd Law Buldg<br />Iowa City, IA 52242-1113</p>
					</div>
			</div>
			
			<div class="clearfix footer-links">
					<ul class="">
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
	        	<div class="rights">
	        		<p><small>&copy; 2015 University of Iowa Law Review.<br />All Rights Reserved. <a href="http://www.uiowa.edu/homepage/online-privacy-information">Privacy Policy</a></small></p>

	        	</div>
	        	<!--<div class="social icons">
		        	<ul>
						
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
				<a href="http://www.uiowa.edu" class="clearfix footer-logos"><img src="$ThemeDir/images/uiowa.png" alt="Division Of Student Life"></a>
    		</div>	
    	</div>
		</div>
	</div>
</footer>
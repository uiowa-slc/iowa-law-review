
<!-- Footer -->
<footer class="footer" role="contentinfo">
		<div class="container">
			<div class="small-8 medium-4 large-3 columns">
					
					<p><a href="$AbsoluteBaseURL"><h3 itemprop="name">$SiteConfig.Title</h3></a></p>
					
			</div>
				<p>190 Boyd Law Buldg
<br />Iowa City, IA 52242-1113</p>
			<div class="clearfix footer-links">
				<div class="main-links">
					<div class="medium-3 large-2 columns">
						<div class="colgroup">
						<ul class="footer-nav">
							<% loop Menu(1) %>
								<li><a href="$Link">$MenuTitle</a></li>
							<% end_loop %>
						</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!-- end .container -->
	<div class="footer-bottom">
		<div class="container">
			
			<ul class="clearfix social-icons">
				<% if $SiteConfig.FacebookLink %>
					<li>
						<a href="$SiteConfig.FacebookLink" title="Facebook" target="_blank">
							<img src="{$ThemeDir}/images/facebook_circle_gray-32.png" alt="Facebook">
						</a>
					</li>
				<% end_if %>
				<% if $SiteConfig.TwitterLink %>
					<li>
						<a href="$SiteConfig.TwitterLink" title="Twitter" target="_blank">
							<img src="{$ThemeDir}/images/twitter_circle_gray-32.png" alt="Twitter">
						</a>
					</li>
				<% end_if %>
				<% if $SiteConfig.YoutubeLink %>
					<li>
						<a href="$SiteConfig.YoutubeLink" title="Youtube" target="_blank">
							<img src="{$ThemeDir}/images/youtube_circle_gray-32.png" alt="YouTube">
						</a>
					</li>
				<% end_if %>
			</ul>
		<div class="large-12 columns">
	        <hr>
	        <p><small>&copy; 2015 University of Iowa Law Review. All Rights Reserved. <a href="http://www.uiowa.edu/homepage/online-privacy-information">Privacy Policy</a></small></p>
					$SiteConfig.Address
    	</div>
		</div>
	</div>
</footer>
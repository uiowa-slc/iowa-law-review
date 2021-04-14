<footer class="footer" role="contentinfo">
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="footer-top-text">
					<div class="iowa-law-review"><h3><a href="$AbsoluteBaseURL">$SiteConfig.Title</a></a></h3></div>
					<p>190 Boyd Law Building<br />Iowa City, IA 52242-1113</p>
					<p><a href="mailto:ilr@uiowa.edu">ilr@uiowa.edu</a><br />319-335-9054</p>
    <ul class="nav navbar-nav navbar-social">
           <li><a href="https://www.facebook.com/IowaLawReview/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
          <li><a href="https://twitter.com/IowaLawReview" target="_blank"><i class="fab fa-twitter"></i></a></li>
          <li><a href="https://www.linkedin.com/company/iowa-law-review" target="_blank"><i class="fab fa-linkedin"></i></a></li>
      </ul>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="clearfix footer-links">
					<ul>
						<% loop Menu(1) %>
							<li><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					</ul>

				</div>
			</div>
			<div class="col-sm-3">
				<div class="clearfix footer-links">
					<ul>
						<% loop ChildrenOf("about") %>
							<li><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					</ul>

				</div>
			</div>
			<div class="col-sm-2 footer-right-content">
				<p class="text-center">Sponsored by: <a href="https://gpsg.uiowa.edu" target="_blank" style="font-weight: bold; text-decoration: underline;">Graduate &amp; Professional Student Government</a></p>

			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
					<hr class="bar">
		        	<div class="rights">
		        		<p><small>&copy; Iowa Law Review. All Rights Reserved. <a href="http://www.uiowa.edu/homepage/online-privacy-information" class="footer__bar-link" target="_blank" rel="noopener">Privacy Information</a> <a href="https://opsmanual.uiowa.edu/community-policies/nondiscrimination-statement" class="footer__bar-link" target="_blank" rel="noopener">Nondiscrimination Statement</a> <a href="https://uiowa.edu/accessibility" target="_blank">Accessibility</a></small></p>

		        	</div>

			</div>
		</div>
	</div>
</footer>

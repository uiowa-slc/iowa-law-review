<ul class="article-social">
	<% if $PrintableArticle %>
		<li><a class="smallcaps" href="$PrintableArticle.URL" target="_blank"><img src="$PrintableArticle.Icon" /> Download</a></li>
	<% end_if %>
	<li class="smallcaps text-center"><span class="social-label">Share:</span></li>
	<li>
		<a href="javascript:window.open('http://www.facebook.com/sharer/sharer.php?u={$AbsoluteLink}', '_blank', 'width=400,height=500');void(0);" title="Share on Facebook">
		<span class="social-icon icon-facebook"></span> Facebook</a>
	</li>
	<li>
		<a href="https://twitter.com/intent/tweet?text={$AbsoluteLink}" title="Share on Twitter" target="_blank">
		<span class="social-icon icon-twitter"></span> Twitter</a>
	</li>
</ul>

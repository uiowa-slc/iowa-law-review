
	<% if $PrintableArticle %>
		<li><a class="smallcaps download-link" href="$PrintableArticle.URL" target="_blank">Download PDF</a></li>
	<% end_if %>
	<li class="smallcaps text-center"><span class="social-label">Share:</span></li>
	<li>
		<a href="javascript:window.open('http://www.facebook.com/sharer/sharer.php?u={$AbsoluteLink}', '_blank', 'width=400,height=500');void(0);" title="Share on Facebook">
		<i class="fab fa-facebook-f fa-fw"></i> Facebook</a>
	</li>
	<li>
		<a href="https://twitter.com/intent/tweet?text={$AbsoluteLink}" title="Share on Twitter" target="_blank">
		<i class="fab fa-twitter fa-fw"></i> Twitter</a>
	</li>
    <li>
        <a href="https://www.linkedin.com/shareArticle?mini=true&url={$AbsoluteLink}&title={$Title}
" title="Share on LinkedIn" target="_blank">
        <i class="fab fa-linkedin fa-fw"></i> LinkedIn</a>
    </li>

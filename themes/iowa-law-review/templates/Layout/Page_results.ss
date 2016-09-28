<% include Header %>
<article role="main" class="main-content">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<% if $URLSegment != "about" %><h1>$Title</h1><% end_if %>



    <% if $Contributors %>

    <% if  $Results.CurrentPage == 1 %>

        <p class="searchQuery"><em>Author results for: &quot;{$Query}&quot;</em>:</p>

    	<% loop $Contributors %>
    	<% if $Articles %>
    	<div class="author-card">
			<article>
				<div class="article-header <% if $FeaturedTag %>has-featured-tag<% end_if %>">
					<a href="$Link" class="tag featured-tag">Author</a>
					<h1><a href="$Link">$Name</a></h1>
				</div>
				<% if $BiographicalDetails %>
				<div>$BiographicalDetails</div>
				<% end_if %>
				<div class="article-card-container article-cards-left container-fluid">
			        <div class="block-grid-xs-1 block-grid-md-2">
			          <% loop $Articles.Limit(4) %>
			            <div>
			            <% include ArticleCard %>
			            </div>
			          <% end_loop %>
			        </div>
			    </div>
			</article>
			<p><a href="$Link">See all works by $Name &rarr;</a></p>
		</div>
			<hr />
		<% end_if %>
    	<% end_loop %>
    <% end_if %>
    <% end_if %>
	<% if $Query %>
        <p class="searchQuery"><em>All search results for: &quot;{$Query}&quot;</em>:</p>
    <% end_if %>
    <% if $Results %>

	<div class="article-card-container article-cards-left container-fluid">
        <div class="block-grid-xs-1 block-grid-md-2">
          <% loop $Results %>
            <div>
            <% include ArticleCard %>
            </div>
          <% end_loop %>
        </div>
    </div>
    <% else %>
    <p>Sorry, your search query did not return any results.</p>
    <% end_if %>
    <hr />
    <p>Showing Results {$Results.FirstItem} - {$Results.LastItem}.</p>
    <% if $Results.MoreThanOnePage %>
		<nav role="navigation">
			<ul class="cd-pagination">
				<% if $Results.NotFirstPage %>
				<li class="button"><a href="$Results.PrevLink" aria-label="Previous">Prev</a></li>
				<% end_if %>
				<% loop $Results.PaginationSummary(3) %>
		    		<% if $CurrentBool %>
						<li><a class="current" href="$Link">$PageNum <span class="sr-only">(current)</span></a></li>

					<% else %>
						<% if $Link %>
							<li><a href="$Link">$PageNum</a></li>
						<% else %>
							<li><span>...</span></li>
						<% end_if %>
						
					<% end_if %>
				<% end_loop %>
				<%-- <li><span>...</span></li> --%>
				<% if $Results.NotLastPage %>
				<li class="button"><a href="$Results.NextLink">Next</a></li>
				<% end_if %>
			</ul>
		</nav> <!-- cd-pagination-wrapper -->
    <% end_if %>
			</div>
			<div class="col-lg-3 col-lg-offset-1">
	          <% include SideNav %>
			</div>
	</div>
</article>


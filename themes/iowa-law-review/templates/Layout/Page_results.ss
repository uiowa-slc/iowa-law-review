<% include Header %>
<article role="main" class="main-content">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-lg-offset-1">
				<% if $URLSegment != "about" %><h1>$Title</h1><% end_if %>
<% if $Query %>
        <p class="searchQuery"><em>Showing search results for: &quot;{$Query}&quot;</em>:</p>
    <% end_if %>

    <% if $Results %>
    <div class="article-card-container full-width">
        <% loop $Results %>
        	<% include ArticleCard %>
        <% end_loop %>
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
				<% loop $Results.PaginationSummary %>
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


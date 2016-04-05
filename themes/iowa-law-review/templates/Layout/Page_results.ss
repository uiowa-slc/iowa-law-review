<% include Header %>
<article role="main" class="main-content">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-lg-offset-1">
				<% if $URLSegment != "about" %><h1>$Title</h1><% end_if %>
<% if $Query %>
        <p class="searchQuery"><em>Showing search results for: &quot;{$Query}&quot;</em></p>
    <% end_if %>

    <% if $Results %>
    <div class="article-card-container">
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

		<nav>
		  <ul class="pagination">
		  	<% if $Results.NotFirstPage %>
		    <li>
			  <a href="$Results.PrevLink" aria-label="Previous">
			    <span aria-hidden="true">&laquo;</span>
			  </a>
		    </li>
		    <% end_if %>
		    <% loop $Results.Pages %>
		    	<% if $CurrentBool %>
		    		<li class="active"><a href="$Link">$PageNum <span class="sr-only">(current)</span></a></li>
		    	<% else %>
		    		<li><a href="$Link">$PageNum</a></li>
		    	<% end_if %>

		    <% end_loop %>

		    <% if $Results.NotLastPage %>
		    <li>
		      <a href="$Results.NextLink" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		    <% end_if %>
		  </ul>
		</nav>

    <% end_if %>
			</div>
			<div class="col-lg-3 col-lg-offset-1">
	          <% include SideNav %>
			</div>
	</div>
</article>


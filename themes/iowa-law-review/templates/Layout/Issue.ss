<% include Header %>
<div id="article-carousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
      	<% loop $Children.Limit(4) %>
        	<li data-target="#article-carousel" data-slide-to="{$Pos}" class="<% if $First %>active<% end_if %>"></li>
        <% end_loop %>
      </ol>
      <div class="carousel-inner" role="listbox">
      	<% loop $Children.Limit(4) %>

        <div class="item <% if $First %>active<% end_if %> <% if $Image %>has-image<% end_if %>" style="<% if $Image %>background-image: url('$Image.URL');<% end_if %>">
          <a href="$Link">
          <article class="container">
            <div class="carousel-caption">
              <p class="smallcaps">Volume {$Top.Volume}, Issue {$Top.Number}</p>
              <h1>$Title</h1>
              <p><em><% include AuthorList %></em></p>
            </div>
          </article>
          </a>
        </div>
        <% end_loop %>
      </div>
      <a class="left carousel-control" href="#article-carousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#article-carousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
</div>
<div class="container padding">
	<div class="row">
		<div class="col-lg-6 col-lg-offset-3" >
       <div class="issue-header">
        <h1><a href="$Link">Volume {$Volume}, Issue {$Number}</a></h1>
        <h2 class="smallcaps subheader">$Date</h2>
      </div>
      <div class="article-card-container">
  			<% loop $Children %>
          <% include ArticleCard %>
  			<% end_loop %>
      </div>

		</div>
	</div>
</div>

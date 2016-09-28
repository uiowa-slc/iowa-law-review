
<% include Header %>

<div id="article-carousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">

      <% loop $LatestPrintIssue.RandomArticles.Limit(4) %>
        <li data-target="#article-carousel" data-slide-to="{$Pos}" class="<% if not $Top.HomePageAnnouncements && $First %>active<% end_if %>"></li>
      <% end_loop %>
      </ol>

      <div class="carousel-inner" role="listbox">

      <% with $LatestPrintIssue %>
        <% loop $RandomArticles.Limit(4) %>
        <div class="item <% if not $Top.HomePageAnnouncements && $First %>active<% end_if %>">
          <a href="$Link">
          <article class="container">
            <div class="carousel-caption">
              <p class="smallcaps">From our latest issue</p>
              <h1>$Title</h1>
              <% if $Authors %>
                <em>
                  <% if $Authors.Count == 2 %>
                    <a href="$Link">{$Authors.First.Name}<% if $Authors.First.ArticleNote %>*<% end_if %></a> and <a href="$Link">{$Authors.Last.Name}</a>
                  <% else %>
                    <% loop $Authors %>
                      <a href="$Link">$Name</a><% if not $Last %>, <% end_if %>
                    <% end_loop %>      
                  <% end_if %>
                </em><br />
              <% end_if %>
            </div>
          </article>
          </a>
        </div>
        <% end_loop %>
      <% end_with %>

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
    <div class="container padding main-content" role="main">
      <div class="row">
        <div class="col-lg-8">

          <% with $LatestPrintIssue %>
            
            <div class="issue-header">
              <p class="smallcaps subheader"><a href="$Link">From the Latest Print Edition:</a></p>
              <h1><a href="$Link">Volume {$Volume}, Issue {$Number}</a></h1>
              <p class="smallcaps subheader">$Date</a></p>
            </div>
              <div class="article-card-container row full-width">

                <div class="block-grid-xs-1 block-grid-md-1">
                  <% loop $Children %>
                    <div>
                    <% include ArticleCard %>
                    </div>
                  <% end_loop %>
                </div>
              </div>
          <% end_with %>
        </div>

        <div class="sidenav-container">
          <div class="col-lg-3 col-lg-offset-1">
            <% include SideNav %>
          </div>
        </div>

      </div>
    </div>
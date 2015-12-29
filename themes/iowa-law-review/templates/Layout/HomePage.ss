
<% include Header %>

<div id="article-carousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">

      <% loop HomePageAnnouncements %>
        <li data-target="#article-carousel" data-slide-to="{$Pos}" class="<% if $First %>active<% end_if %>"></li>
      <% end_loop %>

      <% loop $LatestIssue.Children.Limit(4) %>
        <li data-target="#article-carousel" data-slide-to="{$Pos}"></li>
      <% end_loop %>
      </ol>

      <div class="carousel-inner" role="listbox">

        <% loop HomePageAnnouncements %>
          <div class="item <% if $First %>active<% end_if %>">
          <a href="$Link">
          <article class="container">
            <div class="carousel-caption">
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


      <% with $LatestIssue %>
        <% loop $Children.Limit(4) %>
        <div class="item">
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

<%--         <div class="item has-image" style="background-image: url('{$ThemeDir}/images/slider-example-1.jpg');">
          <a href="#">
            <article class="container">
              <div class="carousel-caption">
                <h1>Ridesharing in the Sharing Economy: Should Regulators Impose Über Regulations on Uber?</h1>
                <p><em>Hannah A. Posen</em></p>
              </div>
            </article>
          </a>
        </div> --%>
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
    <div class="container">
      <div class="row">
        <div class="col-lg-7 col-lg-offset-1">

          <% with $LatestPrintIssue %>
            <h2 class="smallcaps subheader">From the Latest Print Edition:</h2>
            <div class="issue-header">
              <h1><a href="$Link">$Date</a></h1>
              <h2 class="smallcaps subheader">Volume {$Volume}, Issue {$Number}</h2>
            </div>
              <div class="article-card-container">
                <% loop $Children %>
                  <% include ArticleCard %>
                <% end_loop %>
              </div>
          <% end_with %>
        </div>

       <div class="col-lg-3 col-lg-offset-1">
          <h2 class="smallcaps subheader">From <em>Bulletin</em>, Our Online Edition:</h2>
            <div class="article-card-container">
              <% with $LatestOnlineIssue %>
                <% loop $Children.Limit(2) %>
                  <% include ArticleCard %>
                <% end_loop %>
              <% end_with %>
              <p><a href="#" class="smallcaps">Latest Online Edition: $LatestOnlineIssue.Title &rarr;</a></p>
            </div>
          <h2 class="smallcaps subheader">Iowa Law Review on Twitter:</h2>
          <a class="twitter-timeline" href="https://twitter.com/IowaLawReview" data-widget-id="664852907020300288">Tweets by @IowaLawReview</a>
        </div>

      </div>
    </div>
<aside class="sidenav">
  <% if $ClassName != "HomePage" %>
    <p class="subheader"><a href="$LatestPrintIssue.Link">From our print edition &rarr;</a></p>
    <div class="article-card-container">
      <% with $LatestPrintIssue %>
        <% loop $Children.Limit(2) %>
          <% include ArticleCard %>
        <% end_loop %>
      <% end_with %>
     
    </div>
  <% end_if %>

  <p class="subheader padding"><a href="$LatestOnlineIssue.Link"> From our online edition &rarr;</a></p>

  <div class="article-card-container">
    <% with $LatestOnlineIssue %>
      <% loop $Children.Limit(2) %>
        <% include ArticleCard %>
      <% end_loop %>
    <% end_with %>
  </div>
  <% if $URLSegment == "home" %>
    <div class="sticky">
      <p class="subheader padding"><a href="https://twitter.com/IowaLawReview">Iowa Law Review on Twitter &rarr;</a></p>
      <a class="twitter-timeline" href="https://twitter.com/IowaLawReview" data-widget-id="664852907020300288">Tweets by @IowaLawReview</a>
    </div>
  <% end_if %>
</aside>
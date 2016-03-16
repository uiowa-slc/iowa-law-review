<aside class="sidenav">
  <p class="subheader"><a href="$LatestPrintIssue.Link">From our print edition &rarr;</a></p>
  <div class="article-card-container">
    <% with $LatestPrintIssue %>
      <% loop $Children.Limit(2) %>
        <% include ArticleCard %>
      <% end_loop %>
    <% end_with %>
    <p><a href="$LatestPrintIssue.Link">Read issue &rarr;</a></p>
  </div>
  <p class="subheader padding"><a href="$LatestOnlineIssue.Link"> From our online edition &rarr;</a></p>
  <div class="article-card-container">
    <% with $LatestOnlineIssue %>
      <% loop $Children.Limit(2) %>
        <% include ArticleCard %>
      <% end_loop %>
    <% end_with %>
  </div>
  <h2 class="smallcaps subheader padding">Iowa Law Review on Twitter:</h2>
  <a class="twitter-timeline" href="https://twitter.com/IowaLawReview" data-widget-id="664852907020300288">Tweets by @IowaLawReview</a>
</aside>
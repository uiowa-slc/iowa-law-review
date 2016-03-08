          <h2 class="subheader"><a href="$LatestPrintIssue.Link">From our print edition &rarr;</a></h2>
            <div class="article-card-container">
              <% with $LatestPrintIssue %>
                <% loop $Children.Limit(2) %>
                  <% include ArticleCard %>
                <% end_loop %>
              <% end_with %>
              <p><a href="$LatestPrintIssue.Link">Read issue &rarr;</a></p>
            </div>
            <hr />
          <h2 class="subheader"><a href="$LatestOnlineIssue.Link"> From our online edition &rarr;</h2>
            <div class="article-card-container">
              <% with $LatestOnlineIssue %>
                <% loop $Children.Limit(2) %>
                  <% include ArticleCard %>
                <% end_loop %>
              <% end_with %>
            </div>
          <h2 class="smallcaps subheader">Iowa Law Review on Twitter:</h2>
          <a class="twitter-timeline" href="https://twitter.com/IowaLawReview" data-widget-id="664852907020300288">Tweets by @IowaLawReview</a>
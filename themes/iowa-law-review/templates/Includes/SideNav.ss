          <h2 class="smallcaps subheader">From our online edition:</h2>
            <div class="article-card-container">
              <% with $LatestOnlineIssue %>
                <% loop $Children.Limit(2) %>
                  <% include ArticleCard %>
                <% end_loop %>
              <% end_with %>
              <p><a href="$LatestOnlineIssue.Link" class="smallcaps">Latest online edition: $LatestOnlineIssue.Title &rarr;</a></p>
            </div>
          <h2 class="smallcaps subheader">Iowa Law Review on Twitter:</h2>
          <a class="twitter-timeline" href="https://twitter.com/IowaLawReview" data-widget-id="664852907020300288">Tweets by @IowaLawReview</a>
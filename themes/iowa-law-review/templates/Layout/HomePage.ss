<% include Header %>
<div id="article-carousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#article-carousel" data-slide-to="0" class=""></li>
        <li data-target="#article-carousel" data-slide-to="1" class="active"></li>
        <li data-target="#article-carousel" data-slide-to="2" class=""></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active has-image" style="background-image: url('{$ThemeDir}/images/slider-example-1.jpg');">
          <a href="#">
          <article class="container">
            <div class="carousel-caption">
              <p class="smallcaps">From our latest issue</p>
              <h1>Inventing the Classical Constitution</h1>
              <p><em>Herbert Hovenkamp</em></p>
            </div>
          </article>
          </a>
        </div>
        <div class="item">
          <a href="#">
            <article class="container">
              <div class="carousel-caption">
                <h1>Rediscovering the Classical Liberal Constitution: A Reply to Professor Hovenkamp</h1>
                <p><em>Richard A. Epstein</em></p>
              </div>
            </article>
          </a>
        </div>
        <div class="item has-image" style="background-image: url('{$ThemeDir}/images/slider-example-1.jpg');">
          <a href="#">
            <article class="container">
              <div class="carousel-caption">
                <h1>Ridesharing in the Sharing Economy: Should Regulators Impose Über Regulations on Uber?</h1>
                <p><em>Hannah A. Posen</em></p>
              </div>
            </article>
          </a>
        </div>
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
        <div class="col-lg-8">

          <% with $LatestIssue %>
            <h1><a href="$Link">$Date</a></h1>
              <h2 class="smallcaps subheader">Volume {$Volume}, Issue {$Number}</h2>
              <div class="article-card-container">
                <% loop $Children %>
                  <% include ArticleCard %>
                <% end_loop %>
              </div>
          <% end_with %>
        </div>

        <div class="col-lg-4">
          <h2 class="smallcaps subheader">From the Online Edition:</h2>
            <div class="article-card-container">
              <% include ArticleCard %>
              <% include ArticleCard %>
              <p><a href="#" class="smallcaps">Latest Online Edition: Volume 105 &rarr;</a></p>
            </div>
          <h2 class="smallcaps subheader">Iowa Law Review on Twitter:</h2>
          <a class="twitter-timeline" href="https://twitter.com/IowaLawReview" data-widget-id="664852907020300288">Tweets by @IowaLawReview</a>
        </div>

      </div>
    </div>
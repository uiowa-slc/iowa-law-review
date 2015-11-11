<% include Header %>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class=""></li>
        <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="2" class=""></li>
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
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <h2 class="smallcaps">From the latest print edition:</h2>
            <div class="article-card-container">
              <% include ArticleCard %>
              <% include ArticleCard %>
              <% include ArticleCard %>
              <% include ArticleCard %>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="article-card-container">
              <% include ArticleCard %>
              <% include ArticleCard %>
              <% include ArticleCard %>
              <% include ArticleCard %>
            </div>


        </div>

      </div>
    </div>
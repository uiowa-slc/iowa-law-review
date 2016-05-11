
<nav class="navbar navbar-default condensed-navbar">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="{$BaseUrl}">Iowa Law Review</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
          <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-th" aria-hidden="true"></span>Index <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <% loop $Menu(1) %>
                  <li><a href="$Link">$MenuTitle</a></li>
                <% end_loop %>
              </ul>
          </li>
          $NavBreadcrumbs
      </ul>
    <ul class="nav navbar-nav navbar-right">
           <li><a href="https://www.facebook.com/IowaLawReview/" target="_blank"><span class="social-icon icon-facebook"></span></a></li>
          <li><a href="https://twitter.com/IowaLawReview" target="_blank"><span class="social-icon icon-twitter"></span></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

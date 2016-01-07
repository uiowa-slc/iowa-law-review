
<nav class="navbar navbar-default">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="{$BaseUrl}">ILR</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <% loop Menu(1) %>
          <% if $URLSegment != "home" %>
          <li class="<% if $LinkOrSection == "section" %>active<% end_if %>
          <% if $Children %> dropdown<% end_if %>">
            <a href="$Link" class="<% if $Children %>dropdown-toggle<% end_if %>" 
            <% if $Children %>data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"<% end_if %>>
              $MenuTitle <% if $Children %><span class="caret"></span><% end_if %>
              <% if $LinkOrCurrent == "current" %><span class="sr-only">(current)</span><% end_if %>
            </a>
            <% if $SortedChildren %>
              <ul class="dropdown-menu">
                <% loop $SortedChildren.Limit(5) %>
                  <li><a href="$Link">$Title</a></li>
                <% end_loop %>
                <li role="separator" class="divider"></li>
                <li><a href="$Link">$Title</a></li>
              </ul>
            <% end_if %>
          </li>
          <% end_if %>
        <% end_loop %>

      </ul>
      <form class="navbar-form navbar-right search" role="search">
        <div class="form-group">
          <input type="search" class="form-control" placeholder="Enter a search term">
        </div>
        <button type="submit" class="btn btn-default">Search</button>
      </form>
    <ul class="nav navbar-nav navbar-right">
           <li><a href="https://www.facebook.com/IowaLawReview/" target="_blank"><span class="social-icon icon-facebook"></span></a></li>
          <li><a href="https://twitter.com/IowaLawReview" target="_blank"><span class="social-icon icon-twitter"></span></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

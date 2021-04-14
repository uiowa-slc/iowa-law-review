<h2 id="primary-nav" class="sr-only">Main Navigation</h2>
<nav class="navbar navbar-default expanded-navbar" role="navigation" aria-label="Main menu">
  <div class="container container--flexible">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="{$BaseUrl}"><span class="hidden-md hidden-lg">Iowa Law Review</span> <span class="visible-md-inline visible-lg-inline">ILR</span></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <% include NavSearchForm %>
      <ul class="nav navbar-nav primary-nav">
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


    <ul class="nav navbar-nav navbar-right navbar-social">
           <li><a href="https://www.facebook.com/IowaLawReview/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
          <li><a href="https://twitter.com/IowaLawReview" target="_blank"><i class="fab fa-twitter"></i></a></li>
          <li><a href="https://www.linkedin.com/company/iowa-law-review" target="_blank"><i class="fab fa-linkedin"></i></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

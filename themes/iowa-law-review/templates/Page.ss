<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    $MetaTags(false)
    <% include OpenGraph %>
    <% base_tag %>
    <title><% if $URLSegment != "home" %><% if $Title %>$Title.RAW - <% else_if $Author %>$Author.Name - <% end_if %><% end_if %>{$SiteConfig.Title} - The University of Iowa College of Law</title>
    <script src="https://use.typekit.net/qsy8ktc.js"></script>
    <script>try{Typekit.load({ async: true });}catch(e){}</script>
    <!-- Bootstrap -->
    <link href="{$ThemeDir}/dist/styles/main.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="{$ClassName}">

  <% if UseLargeHeader %>
    <% include UiowaBarBootstrapLight %>
  <% end_if %>

    <a href="#main-content" class="skip-link">Skip to the main content</a>
    <a href="#primary-nav" class="skip-link">Skip to the main navigation</a>
    $Layout


    $BetterNavigator
    <% include Footer %>
      $Analytics
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="{$ThemeDir}/dist/scripts/main.min.js"></script>
     <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
  </body>
</html>

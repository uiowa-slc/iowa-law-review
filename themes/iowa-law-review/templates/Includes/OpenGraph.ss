<meta property="og:site_name" content="$SiteConfig.Title.ATT" />
<meta property="og:type" content="website" />
<meta property="og:title" content="<% if $ArticleTitle %>$ArticleTitle.ATT<% else_if $URLSegment == "home" %>$SiteConfig.Title.ATT<% else %>$Title<% end_if %>" />
<% if $URLSegment == "home" %>
<meta property="og:description" content="<% with Page("about") %>$Content.Summary.XML<% end_with %>" />
<% else_if $SortedAuthors %>
<meta property="og:description" content="By <% loop $SortedAuthors %>$Name.ATT<% if not $Last %>, <% end_if %><% end_loop %>" />
<% else %>
<meta property="og:description" content="$Content.Summary.XML" />
<% end_if %>

<meta property="og:url" content="$AbsoluteLink.ATT" />
<meta property="og:image" content="{$BaseHref}{$ThemeDir}/dist/images/og-image2.png" />
<meta property="og:image:width" content="1200" />
<meta property="og:image:height" content="630" />

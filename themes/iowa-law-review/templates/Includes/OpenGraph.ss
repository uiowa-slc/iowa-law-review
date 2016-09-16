<meta property="og:site_name" content="$SiteConfig.Title.ATT" />
<meta property="og:type" content="website" />
<meta property="og:title" content="<% if $ArticleTitle %>$ArticleTitle<% else_if $URLSegment == "home" %>$SiteConfig.Title.ATT<% else %>$Title<% end_if %>" />
<meta property="og:description" content="$Content.Summary.XML" />
<meta property="og:url" content="$AbsoluteLink.ATT" />
<meta property="og:image" content="{$BaseHref}{$ThemeDir}/images/og-image.png" />
<meta property="og:image:width" content="1200" />
<meta property="og:image:height" content="630" />

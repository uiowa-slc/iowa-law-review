<?php

use SilverStripe\i18n\i18n;
use SilverStripe\ORM\Search\FulltextSearchable;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\View\Requirements;
use SilverStripe\Security\MemberAuthenticator\MemberAuthenticator;
use SilverStripe\Security\Authenticator;
use SilverStripe\Control\Director;
use SilverStripe\ActiveDirectory\Authenticators\SAMLAuthenticator;
use SilverStripe\Forms\HTMLEditor\HtmlEditorConfig;
use SilverStripe\Forms\HTMLEditor\TinyMCEConfig;

// Set the site locale
i18n::set_locale('en_US');
// FulltextSearchable::enable();


HtmlEditorConfig::get('cms')->addButtonsToLine(2, 'sup', 'separator');
HtmlEditorConfig::get('cms')->removeButtons('pasteword');
HtmlEditorConfig::get('cms')
    ->setOptions([
        'block_formats' => 'Paragraph=p;Div=div;I. Heading 2=h2;A. Heading 3=h3;1. Heading 4=h4;i. Heading 5=h5;Heading 6=h6;Preformatted=pre'
    ]);

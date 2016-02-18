<?php

global $project;
$project = 'mysite';

global $database;
//!!! YOU HAVE TO DEFINE YOUR DATABASE FIRST, MAN. !!!
$database = 'iowalawreview';

// Use _ss_environment.php file for configuration
require_once ("conf/ConfigureFromEnv.php");

// Set the site locale
i18n::set_locale('en_US');
FulltextSearchable::enable();
// Enable nested URLs for this site (e.g. page/sub-page/)
if (class_exists('SiteTree')) {SiteTree::enable_nested_urls();
}

Requirements::set_force_js_to_bottom(true);

GD::set_default_quality(80);
HtmlEditorConfig::get('cms')->addButtonsToLine(2, 'sup', 'separator');
HtmlEditorConfig::get('cms')->removeButtons('pasteword');
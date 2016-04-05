<?php

class Page extends SiteTree {

	private static $db = array(

	);

	private static $has_one = array(
	);

	public static function citationHandler($arguments, $content, $parser = null) {

		//use ShortCodeParser::extractTags($this->Content);
		// $shortcodes = $this->countAllShortcodesInContent();

		// $foundShortcode = $shortcodes[][$content];

		// return '<p>its working <sup> $sometext </sup>&nbsp; </p>';

		return '<p>someText </p>';

	}

	public function getSortedChildren(){
		return $this->Children();
	}

	public function LatestPrintIssue() {
		$printIssueHolder = IssueHolder::get()->filter(array('URLSegment' => 'print'))->First();

		if ($printIssueHolder) {
			$latestIssue = Issue::get()->filter(array('ParentID' => $printIssueHolder->ID))->sort('OriginalPublicationDate')->First();
			return $latestIssue;
		}
	}
	public function LatestOnlineIssue() {
		$printIssueHolder = IssueHolder::get()->filter(array('URLSegment' => 'online'))->First();

		if ($printIssueHolder) {
			$latestIssue = Issue::get()->filter(array('ParentID' => $printIssueHolder->ID))->sort('OriginalPublicationDate')->First();
			return $latestIssue;
		}
	}

	public function UseLargeHeader(){
		$class = $this->ClassName;

		$smallHeaderClasses = array('Article', 'Issue');


		if(array_search($class, $smallHeaderClasses) !== false){
			return false;

		}else{
			return true;
		}


	}
	public function NavBreadcrumbs($maxDepth = 2, $unlinked = false, $stopAtPageType = false, $showHidden = false) {
		$pages = $this->getBreadcrumbItems($maxDepth, $stopAtPageType, $showHidden);
         $template = new SSViewer('NavBreadcrumbsTemplate');
         return $template->process($this->customise(new ArrayData(array(
             "Pages" => $pages,
              "Unlinked" => $unlinked
         ))));
     }
}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array(
	);

	public function init() {
		parent::init();


	}
	public function Breadcrumbs($maxDepth = 20, $unlinked = false, $stopAtPageType = false, $showHidden = false) {
		return parent::Breadcrumbs(20, false, false, true);
	}
}

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

	protected function onBeforeWrite(){
		parent::onBeforeWrite();
		$someText = $this->getField('Content');
		

		$this->setField('Title', $someText);


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

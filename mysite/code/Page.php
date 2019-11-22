<?php

use SilverStripe\View\SSViewer;
use SilverStripe\View\ArrayData;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\CMS\Controllers\ContentController;

class Page extends SiteTree {

	private static $db = array(

	);

	private static $has_one = array(
	);

	public function getSortedChildren() {
		return $this->Children();
	}


	public function UseLargeHeader() {
		$class = $this->ClassName;

		$smallHeaderClasses = array('Article', 'Issue');

		if (array_search($class, $smallHeaderClasses) !== false) {
			return false;

		} else {
			return true;
		}

	}
	public function NavBreadcrumbs($maxDepth = 3, $unlinked = false, $stopAtPageType = false, $showHidden = false) {
		$pages = $this->getBreadcrumbItems($maxDepth, $stopAtPageType, $showHidden);
		$template = new SSViewer('NavBreadcrumbsTemplate');
		return $template->process($this->customise(new ArrayData(array(
			"Pages" => $pages,
			"Unlinked" => $unlinked,
		))));
	}
}

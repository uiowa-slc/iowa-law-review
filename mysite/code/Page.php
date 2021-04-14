<?php

use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\View\ArrayData;
use SilverStripe\View\SSViewer;

class Page extends SiteTree {

	private static $db = array(

		'HideTopMenuRepeat' => 'Boolean',
		'HideDropdownMenu' => 'Boolean',

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

	public function getSettingsFields() {

		$fields = parent::getSettingsFields();

		$fields->addFieldToTab('Root.Settings', CheckboxField::create('HideTopMenuRepeat', 'Hide the repeated item in the top menu')->setDescription('This hides the last repeated item in the dropdown to get to this page. Use with caution, this may prevent the user from getting to this page from the top menu.'));

		$fields->addFieldToTab('Root.Settings', CheckboxField::create('HideDropdownMenu', 'Hide the dropdown in the top menu')->setDescription('This hides the dropdown arrow and popup from the top menu item for this page'));

		return $fields;

	}
}

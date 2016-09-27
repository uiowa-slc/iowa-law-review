<?php

class Page extends SiteTree {

	private static $db = array(

	);

	private static $has_one = array(
	);

	public function getSortedChildren() {
		return $this->Children();
	}

	public function LatestPrintIssue() {
		$latestIssue = Issue::get()->filter(array('ParentID' => 7))->sort(
			array('Volume' => 'DESC', 'Number' => 'DESC')
		)->First();
		return $latestIssue;
	}
	public function LatestOnlineIssue() {
		$printIssueHolder = IssueHolder::get()->filter(array('URLSegment' => 'online'))->First();

		if ($printIssueHolder) {
			$latestIssue = Issue::get()->filter(array('ParentID' => $printIssueHolder->ID))->sort('OriginalPublicationDate')->First();
			return $latestIssue;
		}
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
class Page_Controller extends ContentController {

	public function init() {
		parent::init();

	}
	public function Breadcrumbs($maxDepth = 20, $unlinked = false, $stopAtPageType = false, $showHidden = false) {
		return parent::Breadcrumbs(20, false, false, true);
	}

	public function results($data, $form, $request) {
		$keyword = DBField::create_field('Text', $form->getSearchQuery());

		$contributors = new ArrayList();
		$contributors = $this->contributorSearch($keyword->getValue());

		$data = array(
			'Contributors' => $contributors,
			'Results' => $form->getResults(),
			'Query' => DBField::create_field('Text', $form->getSearchQuery()),
			'Title' => _t('SearchForm.SearchResults', 'Search Results'),
		);

		// Debug::show($data);
		return $this->customise($data)->renderWith(array('Page_results', 'Page'));
	}

	public function contributorSearch($keyword) {

		$contributors = Contributor::get()->filterAny(array(
			'Name:PartialMatch' => $keyword,
		));

		//Debug::show($contributors);

		return $contributors;

	}

}

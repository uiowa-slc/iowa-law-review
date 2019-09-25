<?php

use SilverStripe\Assets\Image;
use SilverStripe\Assets\File;
use SilverStripe\AssetAdmin\Forms\UploadField;

class EditorialBoardPage extends Page {

	private static $db = array(

	);

	private static $has_one = array(
		'MastheadImage' => Image::class,
		'MastheadPDF' => File::class
	);



	public function getCMSFields() {
		$f = parent::getCMSFields();

		$f->addFieldToTab('Root.Main', new UploadField('MastheadImage', 'Masthead Image'), 'Content');
		$f->addFieldToTab('Root.Main', new UploadField('MastheadPDF', 'Masthead PDF'), 'MastheadImage');

		return $f;
	}

	
}

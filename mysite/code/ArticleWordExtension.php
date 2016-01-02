<?php
class ArticleWordExtension extends DataExtension {

	public function updateCMSFields(FieldList $fields) {

		$fields->renameField('Content', 'Paste full Word document below, remove the Author information and place it in the "Article Info" tab:');

	}

	protected function parseManualSuperscripts($dom) {
		foreach ($dom->getElementsByTagName('sup') as $node) {

			$nodeInitValue = $node->nodeValue;
			$node->setAttribute('id', 'fnref:'.$nodeInitValue);

			$node->nodeValue = null;

			$newANode = $dom->createElement('a', $nodeInitValue);
			$newANode->setAttribute('href', '#fn:'.$nodeInitValue);
			$newANode->setAttribute('rel', 'footnote');

			$node->appendChild($newANode);

			$dom->saveXML($node);

		}
		return $dom->saveXML();
	}

	protected function parseWordSuperscriptsFootnotes($content) {
		$dom              = new DOMDocument;
		$contentConverted = mb_convert_encoding($content, 'HTML-ENTITIES', 'UTF-8');
		@$dom->loadHTML($contentConverted);

		$xpath = new DOMXPath($dom);

		//Parse the superscripts
		$wordSuperscripts = $xpath->query('//a[contains(@href,"#_ftn") and not (contains(@href,"ref"))]/@href');
		//print_r($wordSuperscripts);

		foreach ($wordSuperscripts as $wordSuperscript) {
			//Parent node is the anchor containing the Word formatted superscript.
			$anchorNode = $wordSuperscript->parentNode;

			//Parent node init value is the anchor's raw value. E.g., *,[1],[2],[3]
			$anchorNodeInitValue = $anchorNode->nodeValue;

			//$anchorNodeFormattedVal = str_replace(array('[', ']'), array('', ''), $anchorNode->nodeValue);
			//print_r($anchorNode->nodeValue);

			//Superscript value, more accurate/easier to parse than anchor/footnote value (no braces eg [3])
			$wordSuperHash         = explode('#', $wordSuperscript->nodeValue);
			$wordSuperFormattedVal = str_replace('_ftn', '', $wordSuperHash[1]);

			//Parent node formatted value is the anchor's value, with the [] braces removed. E.g. *,1,2,3,4,etc
			$anchorNodeFormattedVal = str_replace(array('[', ']'), array('', ''), $anchorNode->nodeValue);

			//only change the superscript values if our anchor's value isn't a (non-canonical) footnote (aka ones with an asterisk, probably an author note).
			if (strpos($anchorNodeFormattedVal, '*') == false) {
				//Create a new superscript node one node above the anchor (probably the p tag with class "FootNote")
				$newSupNode = $dom->createElement('sup', '');
				$anchorNode->parentNode->replaceChild($newSupNode, $anchorNode);

				$newSupNode->appendChild($anchorNode);
				//print_r($anchorNodeInitValue);

				$wordSuperscript->nodeValue = '#fn:'.$anchorNodeFormattedVal;
				$anchorNode->setAttribute('rel', 'footnote');
				$anchorNode->nodeValue = $anchorNodeFormattedVal;

				//We need to minimize number of xpath queries by maybe caching these and not doing it nested in the wordsuperscripts foreach loop
				$footnotes = $xpath->query('//a[contains(@href,"#_ftnref'.$wordSuperFormattedVal.'")]');
				//print_r($anchorNodeFormattedVal);
				$footnoteItem = $footnotes->item(0);
				// if there are any footnotes, proceed:
				if ($footnoteItem) {

					//footnoteParent probably p tag
					$footnoteParent = $footnoteItem->parentNode;

					$footnoteValue = $footnoteParent->nodeValue;
					//$formattedfnVal = str_replace($anchorNodeInitValue.'.', '', $footnoteValue);
					$formattedfnValEncoded = htmlentities($footnoteValue, null, 'utf-8');
					$formattedfnValEncoded = str_replace('&nbsp;', '', $formattedfnValEncoded);
					//$formattedfnValEncoded = str_replace('&nbsp;', '', $formattedfnValEncoded);

					//print_r($footnoteValue->parentNode);
					//print_r($footnotes);

					$footnoteTest = Footnote::get()->filter(array('Number' => $wordSuperFormattedVal, 'ArticleID' => $this->owner->ID))->First();

					if (!isset($footnoteTest)) {
						$footnoteObject            = new Footnote();
						$footnoteObject->ArticleID = $this->owner->ID;
						$footnoteObject->Number    = $anchorNodeFormattedVal;
						$footnoteObject->Content   = $formattedfnValEncoded;

						//echo "wrote ".$footnoteObject->Number." <br />";

						//check if the sibling element next to footnoteParent is 1StQuoteFN, if so, append that element and remove it
						//$nextelement = $xpath->query("following-sibling::*[1]", $footnoteParent);
						$nextelement = $xpath->query('following-sibling::*', $footnoteParent);
						if ($nextelement->item(0)) {
							//loop through each sibling element
							//$nextChild = $nextelement->item(0)->childNodes->item(0);
							foreach ($nextelement as $nextelementItem) {
								$nextClass = $nextelementItem->getAttribute('class');
								$nextHref  = $nextelementItem->getAttribute('href');
								$nextChild = $nextelementItem->childNodes->item(0);
								if ($nextChild->nodeType == 1) {
									break;
								}

								$content = $footnoteObject->Content;
								//does the sibling have the following class:

								if (($nextClass == '1StQuoteFN') && ($nextChild->nodeType == 1)) {
									$content .= '<br />'.$nextelementItem->nodeValue;
									//$nextelementItem->parentNode->removeChild($nextelementItem);

									// $footnoteObject->Content = $content;
									//$nextChild = $nextelementItem->next_sibling->childNodes->item(1);
									//break;
									$nextelementItem->parentNode->removeChild($nextelementItem);
								}

								if ($nextChild->nodeType == 3) {

									//$children = $xpath->query("descendant::*[@href]", $nextelementItem);
									//print_r($children->item(0));
									//$firstChild = $nextelementItem->childNodes->item(0);
									//print_r($nextelementItem->nodeType);
									//$firstChildHref  = $firstChild->getAttribute('href');
									//$firstChildValue = $firstChild->nodeValue;
									//print_r($firstChild);
									//print_r($nextelementItem->nodeValue.': '.$firstChildHref.'<br />');

									// if ($firstChild) {
									// 	echo 'hey';
									$content .= '<br />'.$nextChild->nodeValue;
									//$nextelementItem->parentNode->removeChild($nextelementItem);
									// 	$footnoteObject->Content = $content;
									// } else {
									// 	echo 'no';
									// }

									$nextChild = $nextelement->item(1)->childNodes->item(0);
									$nextelementItem->parentNode->removeChild($nextelementItem);

								} else {

								}
								$footnoteObject->Content = $content;
							}
						}

						//then write:
						$footnoteObject->write();
					}

					$footnoteParent->parentNode->removeChild($footnoteParent);
				}
			}

		}

		//Check dom for existing manually-entered superscripts E.g., <sup>1</sup>
		$dom = $this->parseManualSuperscripts($dom);

		return $dom;
	}

	public function onBeforeWrite() {
		$owner   = $this->owner;
		$summary = $owner->Content;

		$owner->Content = $this->parseWordSuperscriptsFootnotes($summary);

		parent::onBeforeWrite();

	}

}

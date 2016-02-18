<?php
class ArticleWordExtension extends DataExtension {

	protected function parseManualSuperscripts($dom, $dryrun = false) {
		foreach ($dom->getElementsByTagName('sup') as $node) {

			if ($node->hasChildNodes()) {
				if ($node->firstChild->nodeType == 3) {
					$nodeInitValue = $node->nodeValue;
					$node->setAttribute('id', 'fnref:'.$nodeInitValue);

					$node->nodeValue = null;

					$newANode = $dom->createElement('a', $nodeInitValue);
					$newANode->setAttribute('href', '#fn:'.$nodeInitValue);
					$newANode->setAttribute('rel', 'footnote');

					$node->appendChild($newANode);
					$footnoteTest = Footnote::get()->filter(array('Number' => $nodeInitValue, 'ArticleID' => $this->owner->ID))->First();

					if (!isset($footnoteTest)) {
						$footnote                  = new Footnote();
						$footnoteObject            = new Footnote();
						$footnoteObject->ArticleID = $this->owner->ID;
						$footnoteObject->Number    = $nodeInitValue;
						$footnoteObject->Content   = '['.$nodeInitValue.'].';
						if(!$dryrun){
							$footnoteObject->write();
						}
					}
					$dom->saveXML($node);
				}
			}
		}
		return $dom->saveXML();
	}
	private function innerXML($node) { 
		$doc = $node->ownerDocument; 
		$frag = $doc->createDocumentFragment(); 
		foreach ($node->childNodes as $child) { 
			$frag->appendChild($child->cloneNode(TRUE)); 
		}
		return $doc->saveXML($frag); 
	}
	protected function parseWordSuperscriptsFootnotes($content, $dryrun = false) {
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
			if (is_numeric($wordSuperFormattedVal)) {
				//Create a new superscript node one node above the anchor (probably the p tag with class "FootNote")
				$newSupNode = $dom->createElement('sup', '');
				$anchorNode->parentNode->replaceChild($newSupNode, $anchorNode);

				$newSupNode->appendChild($anchorNode);

				$wordSuperscript->nodeValue = '#fn:'.$anchorNodeFormattedVal;
				$anchorNode->setAttribute('rel', 'footnote');
				$anchorNode->nodeValue = $anchorNodeFormattedVal;

				//We need to minimize number of xpath queries by maybe caching these and not doing it nested in the wordsuperscripts foreach loop
				$footnotes = $xpath->query('//a[contains(@href,"#_ftnref'.$wordSuperFormattedVal.'")]');

				$footnoteItem = $footnotes->item(0);
				// if there are any footnotes, proceed:
				if ($footnoteItem) {

					//footnoteParent probably <p class="FootNote"
					$footnoteParent = $footnoteItem->parentNode;
				//remove extra superscripts from footnote.
					$supTags = $footnoteParent->getElementsByTagName ( 'sup' );
					foreach ($supTags as $supTag)
						{
						    $supTag->parentNode->removeChild($supTag);
						}

					//remove footnote anchor:
					$footnoteItem->parentNode->removeChild($footnoteItem);

					//my attempts to get innerHTML of footnoteparent
					//$footnoteValue = $footnoteParent->nodeValue;
					//$footnoteValue = $footnoteParent->c14n();



					$footnoteValue = $footnoteParent->ownerDocument->saveXML( $footnoteParent );
					$formattedfnValEncoded = htmlentities($footnoteValue, null, 'utf-8');
					$formattedfnValEncoded = str_replace('&nbsp;', '', $formattedfnValEncoded);

					$formattedfnValFiltered = html_entity_decode($formattedfnValEncoded);

					

					$footnoteTest = Footnote::get()->filter(array('Number' => $wordSuperFormattedVal, 'ArticleID' => $this->owner->ID))->First();

					if (!isset($footnoteTest)) {
						$footnoteObject = new Footnote();
					}else{
						$footnoteObject = $footnoteTest;
					}

					$footnoteObject->ArticleID = $this->owner->ID;
					$footnoteObject->Number    = $anchorNodeFormattedVal;
					$footnoteObject->Content   = $formattedfnValFiltered;


					//check if the sibling element next to footnoteParent is 1StQuoteFN, if so, append that element and remove it
					$nextelement = $xpath->query('following-sibling::*', $footnoteParent);
					if ($nextelement->item(0)) {
						//loop through each sibling element
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
								$nextelementItem->parentNode->removeChild($nextelementItem);
							}

							if ($nextChild->nodeType == 3) {
								$content .= '<br />'.$nextChild->nodeValue;
								$nextChild = $nextelement->item(1)->childNodes->item(0);
								$nextelementItem->parentNode->removeChild($nextelementItem);

							} else {

							}
							$footnoteObject->Content = $content;
						}
					}

						//then write:
					if(!$dryrun){
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

	public function dryRun(){
		//return "hello";
		$this->parseWordSuperscriptsFootnotes($this->owner->Content, true);
	}

	protected function parseTables($content) {
		$dom              = new DOMDocument;
		$contentConverted = mb_convert_encoding($content, 'HTML-ENTITIES', 'UTF-8');
		@$dom->loadHTML($contentConverted);

		$xpath = new DOMXPath($dom);

		//Parse the tables
		$tables = $xpath->query('//table');
		//print_r($wordSuperscripts);

		foreach ($tables as $table) {
			$table->removeAttribute('style');
			$table->removeAttribute('width');

			$tds = $xpath->query('//td', $table);

			foreach ($tds as $td) {
				$td->removeAttribute('style');
				$td->removeAttribute('width');
			}
		}

		return $dom->saveXML();
	}

	public function onBeforeWrite() {
		 $owner   = $this->owner;
		 $summary = $owner->Content;

		 $summary = $this->parseWordSuperscriptsFootnotes($summary);
		 $summary = $this->parseTables($summary);

		 $owner->Content = $summary;

		parent::onBeforeWrite();

	}

}

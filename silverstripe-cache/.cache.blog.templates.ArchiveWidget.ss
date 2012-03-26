<?php
$val .= <<<SSVIEWER

SSVIEWER;
 if($item->XML_val("DisplayMode",null,true) == "month") {  ;
 $val .= <<<SSVIEWER

	<ul class="archiveMonths">
		
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Dates")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

			<li>
				<a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
">
					
SSVIEWER;
$val .=  $item->obj("Date")->XML_val("Format",array("F"),true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->obj("Date",null,true)->XML_val("Year",null,true) ;
 $val .= <<<SSVIEWER

				</a>
			</li>
		
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

	</ul>

SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

	<ul class="archiveYears">
		
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Dates")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

			<li>
				<a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
">
					
SSVIEWER;
$val .=  $item->obj("Date",null,true)->XML_val("Year",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 if($item->hasValue("Last")) {  ;
 $val .= <<<SSVIEWER

SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER
,
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

				</a>
			</li>
		
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

	</ul>

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

SSVIEWER;

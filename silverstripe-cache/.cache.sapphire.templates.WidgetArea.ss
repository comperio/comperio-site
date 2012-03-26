<?php
$val .= <<<SSVIEWER

SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("WidgetControllers")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
$val .=  $item->XML_val("WidgetHolder",null,true) ;
 $val .= <<<SSVIEWER


SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

SSVIEWER;

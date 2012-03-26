<?php
$val .= <<<SSVIEWER
<div class="sidebarBox WidgetHolder 
SSVIEWER;
$val .=  $item->XML_val("ClassName",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 if($item->hasValue("FirstLast")) {  ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("FirstLast",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
">
	
SSVIEWER;
 if($item->hasValue("Title")) {  ;
 $val .= <<<SSVIEWER
<h3>
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</h3>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
$val .=  $item->XML_val("Content",null,true) ;
 $val .= <<<SSVIEWER

	<div class="clear"><!--  --></div>
</div>
<div class="sidebarBottom"><!-- --></div>

SSVIEWER;

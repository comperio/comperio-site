<?php
$val .= <<<SSVIEWER
<div id="Logo" style="
SSVIEWER;
$val .=  $item->XML_val("LogoStyle",null,true) ;
 $val .= <<<SSVIEWER
">
	
SSVIEWER;
 if($item->hasValue("ApplicationLogoText")) {  ;
 $val .= <<<SSVIEWER

	<a href="
SSVIEWER;
$val .=  $item->XML_val("ApplicationLink",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("ApplicationLogoText",null,true) ;
 $val .= <<<SSVIEWER
</a><br />
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

</div>
<ul id="MainMenu">

SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("MainMenu")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

	<li class="
SSVIEWER;
$val .=  $item->XML_val("LinkingMode",null,true) ;
 $val .= <<<SSVIEWER
" id="Menu-
SSVIEWER;
$val .=  $item->XML_val("Code",null,true) ;
 $val .= <<<SSVIEWER
"><a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</a></li>

SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

</ul>

SSVIEWER;

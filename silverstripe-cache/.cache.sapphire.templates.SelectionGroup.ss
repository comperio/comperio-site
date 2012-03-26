<?php
$val .= <<<SSVIEWER

SSVIEWER;
 if($item->hasValue("IsReadonly")) {  ;
 $val .= <<<SSVIEWER

	<ul class="SelectionGroup
SSVIEWER;
$val .=  $item->XML_val("extraClass",null,true) ;
 $val .= <<<SSVIEWER
">
	
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("FieldSet")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
 if($item->hasValue("Selected")) {  ;
 $val .= <<<SSVIEWER

	<li
SSVIEWER;
$val .=  $item->XML_val("Selected",null,true) ;
 $val .= <<<SSVIEWER
>
		
SSVIEWER;
$val .=  $item->XML_val("RadioLabel",null,true) ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
$val .=  $item->XML_val("FieldHolder",null,true) ;
 $val .= <<<SSVIEWER

	</li>
	</ul>
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER


SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

	<ul class="SelectionGroup
SSVIEWER;
$val .=  $item->XML_val("extraClass",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("FieldSet")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER
<li
SSVIEWER;
$val .=  $item->XML_val("Selected",null,true) ;
 $val .= <<<SSVIEWER
>
SSVIEWER;
$val .=  $item->XML_val("RadioButton",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("RadioLabel",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("FieldHolder",null,true) ;
 $val .= <<<SSVIEWER
</li>
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER
</ul>

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

SSVIEWER;

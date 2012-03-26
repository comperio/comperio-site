<?php
$val .= <<<SSVIEWER
	<ul class="tabstrip">
	
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Tabs")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

		<li class="
SSVIEWER;
$val .=  $item->XML_val("FirstLast",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("MiddleString",null,true) ;
 $val .= <<<SSVIEWER
"><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#
SSVIEWER;
$val .=  $item->XML_val("id",null,true) ;
 $val .= <<<SSVIEWER
" id="tab-
SSVIEWER;
$val .=  $item->XML_val("id",null,true) ;
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
 array_push($itemStack, $item); if($loop = $item->obj("Tabs")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

		<div class="tab" id="
SSVIEWER;
$val .=  $item->XML_val("id",null,true) ;
 $val .= <<<SSVIEWER
">
		
SSVIEWER;
 if($item->hasValue("Tabs")) {  ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
$val .=  $item->XML_val("FieldHolder",null,true) ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Fields")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
$val .=  $item->XML_val("FieldHolder",null,true) ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		</div>
	
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER


SSVIEWER;

<?php
$val .= <<<SSVIEWER

SSVIEWER;
 if($item->hasValue("IncludeFormTag")) {  ;
 $val .= <<<SSVIEWER

<form 
SSVIEWER;
$val .=  $item->XML_val("FormAttributes",null,true) ;
 $val .= <<<SSVIEWER
>

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
 if($item->hasValue("Message")) {  ;
 $val .= <<<SSVIEWER

	    <div class="alert alert-error" id="
SSVIEWER;
$val .=  $item->XML_val("FormName",null,true) ;
 $val .= <<<SSVIEWER
_error">
	    	<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#" class="close" data-dismiss="alert">&times;</a>
	    	
SSVIEWER;
$val .=  $item->XML_val("Message",null,true) ;
 $val .= <<<SSVIEWER

	    </div>
	
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

		<div class="alert alert-error" id="
SSVIEWER;
$val .=  $item->XML_val("FormName",null,true) ;
 $val .= <<<SSVIEWER
_error" style="display: none">
	    	<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#" class="close" data-dismiss="alert">&times;</a>
	    	
SSVIEWER;
$val .=  $item->XML_val("Message",null,true) ;
 $val .= <<<SSVIEWER

	    </div>
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	
	<fieldset>
		
SSVIEWER;
 if($item->hasValue("Legend")) {  ;
 $val .= <<<SSVIEWER
<legend>
SSVIEWER;
$val .=  $item->XML_val("Legend",null,true) ;
 $val .= <<<SSVIEWER
</legend>
SSVIEWER;
 }  ;
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

		<div class="clear"><!-- --></div>
	</fieldset>

	
SSVIEWER;
 if($item->hasValue("Actions")) {  ;
 $val .= <<<SSVIEWER

	<div class="Actions">
		
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Actions")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
$val .=  $item->XML_val("Field",null,true) ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

	</div>
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


SSVIEWER;
 if($item->hasValue("IncludeFormTag")) {  ;
 $val .= <<<SSVIEWER

</form>

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


SSVIEWER;

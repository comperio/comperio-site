<?php
$val .= <<<SSVIEWER
<div class="page container" role="main" id="main">
    <div class="row">
        <div class="span9">
            <h1>
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</h1>
            
SSVIEWER;
$val .=  $item->XML_val("Content",null,true) ;
 $val .= <<<SSVIEWER

            
SSVIEWER;
$val .=  $item->XML_val("Form",null,true) ;
 $val .= <<<SSVIEWER

        </div>
        <div class="span3">
            
SSVIEWER;
 if($item->hasValue("Menu",array("2"))) {  ;
 $val .= <<<SSVIEWER

            <div style="padding: 8px 0;" class="well">
<ul class="nav nav-list">
    <li  class="nav-header">
        
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Level", array("1"))) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

        
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER

        
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

    </li>
    <li>
        <a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">
            
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Menu", array("2"))) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER
	  
            <li class='
SSVIEWER;
 if($item->XML_val("LinkOrCurrent",null,true) == "current") {  ;
 $val .= <<<SSVIEWER
active
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
'>
                <a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" title="Go to the 
SSVIEWER;
$val .=  $item->obj("Title",null,true)->XML_val("XML",null,true) ;
 $val .= <<<SSVIEWER
 page">
SSVIEWER;
$val .=  $item->obj("Title",null,true)->XML_val("XML",null,true) ;
 $val .= <<<SSVIEWER
</a>
            </li>
            
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

        </a>
    </li>
</ul>
</div>
            
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

        </div>
    </div>
</div>
SSVIEWER;

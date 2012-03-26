<?php
$val .= <<<SSVIEWER
<div class="page-results container" role="main" id="main">
    <div class="row">
        <div class="span9">
            <h1>
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</h1>

            
SSVIEWER;
 if($item->hasValue("Results")) {  ;
 $val .= <<<SSVIEWER

            <ul id="SearchResults">
                
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Results")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

                <li>
                    
SSVIEWER;
 if($item->hasValue("MenuTitle")) {  ;
 $val .= <<<SSVIEWER

                    <h3><a class="searchResultHeader" href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("MenuTitle",null,true) ;
 $val .= <<<SSVIEWER
</a></h3>
                    
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

                    <h3><a class="searchResultHeader" href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</a></h3>
                    
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

                    
SSVIEWER;
 if($item->hasValue("Content")) {  ;
 $val .= <<<SSVIEWER

                        
SSVIEWER;
$val .=  $item->obj("Content")->XML_val("FirstSentence",array("text"),true) ;
 $val .= <<<SSVIEWER

                    
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

                    <a class="readMoreLink" href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" title="Read more about &quot;
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
&quot;">Read more about &quot;
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
&quot;...</a>
                </li>
                
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

            </ul>
            
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

            <p>Sorry, your search query did not return any results.</p>
            
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


            
SSVIEWER;
 if($item->obj("Results",null,true)->hasValue("MoreThanOnePage")) {  ;
 $val .= <<<SSVIEWER

            <div id="PageNumbers">
                
                    <ul class="pager">
                        
SSVIEWER;
 if($item->obj("Results",null,true)->hasValue("NotFirstPage")) {  ;
 $val .= <<<SSVIEWER

                            <li class="previous">
                                <a href="
SSVIEWER;
$val .=  $item->obj("Results",null,true)->XML_val("PrevLink",null,true) ;
 $val .= <<<SSVIEWER
">&larr; Prev</a>
                            </li>
                        
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

                        
SSVIEWER;
 if($item->obj("Results",null,true)->hasValue("NotLastPage")) {  ;
 $val .= <<<SSVIEWER

                        <li class="next">
                            <a href="
SSVIEWER;
$val .=  $item->obj("Results",null,true)->XML_val("NextLink",null,true) ;
 $val .= <<<SSVIEWER
">Next &rarr;</a>
                        </li>
                        
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

                    </ul>

            </div>
            
SSVIEWER;
 }  ;
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

<div style="padding: 18px 0;">
    
</div>
            
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

        </div>
    </div>
</div>
SSVIEWER;

<?php
$val .= <<<SSVIEWER
<p class="tagcloud">
	
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("TagsCollection")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

		<a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" class="
SSVIEWER;
$val .=  $item->XML_val("Class",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("Tag",null,true) ;
 $val .= <<<SSVIEWER
</a> 
	
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

</p>
SSVIEWER;

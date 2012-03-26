<?php
$val .= <<<SSVIEWER
<ul>
	
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("blogPosts")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

		<li><a href="
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

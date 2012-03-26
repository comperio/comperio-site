<?php
$val .= <<<SSVIEWER
<ul>
	
SSVIEWER;
 if($item->hasValue("PostLink")) {  ;
 $val .= <<<SSVIEWER
<li><a href="
SSVIEWER;
$val .=  $item->XML_val("PostLink",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  _t('BlogManagementWidget.ss.POSTNEW', 'Post a new blog entry') ;
 $val .= <<<SSVIEWER
</a></li>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
 
	
SSVIEWER;
 if($item->hasValue("CommentLink")) {  ;
 $val .= <<<SSVIEWER
<li><a href="
SSVIEWER;
$val .=  $item->XML_val("CommentLink",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("CommentText",null,true) ;
 $val .= <<<SSVIEWER
</a></li>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	<li><a href="Security/logout">
SSVIEWER;
$val .=  _t('BlogManagementWidget.ss.LOGOUT', 'Logout') ;
 $val .= <<<SSVIEWER
</a></li>
</ul>

SSVIEWER;

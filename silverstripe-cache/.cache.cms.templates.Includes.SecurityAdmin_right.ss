<?php
$val .= <<<SSVIEWER
<div id="form_actions_right" class="ajaxActions">
</div>


SSVIEWER;
 if($item->hasValue("EditForm")) {  ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
$val .=  $item->XML_val("EditForm",null,true) ;
 $val .= <<<SSVIEWER


SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

	<form id="Form_EditForm" action="admin/security?executeForm=EditForm" method="post" enctype="multipart/form-data">
		<p>
SSVIEWER;
$val .=  _t('SecurityAdmin_right.ss.WELCOME1','Welcome to the',50,'Followed by application name') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("ApplicationName",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  _t('SecurityAdmin_right.ss.WELCOME2','security admininistration section.  Please choose a group from the left.',50) ;
 $val .= <<<SSVIEWER
</p>
	</form>

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


<p id="statusMessage" style="visibility:hidden"></p>

SSVIEWER;

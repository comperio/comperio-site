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

	<form id="Form_EditForm" action="admin?executeForm=EditForm" method="post" enctype="multipart/form-data">
		<h1>
SSVIEWER;
$val .=  $item->XML_val("ApplicationName",null,true) ;
 $val .= <<<SSVIEWER
</h1>

		<p>
SSVIEWER;
$val .=  _t('CMSMain_right.ss.WELCOMETO','Welcome to') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("ApplicationName",null,true) ;
 $val .= <<<SSVIEWER
! 
SSVIEWER;
$val .=  _t('CMSMain_right.ss.CHOOSEPAGE','Please choose a page from the left.') ;
 $val .= <<<SSVIEWER
</p>
	</form>

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


<p id="statusMessage" style="visibility:hidden"></p>

SSVIEWER;

<?php
$val .= <<<SSVIEWER
<div class="
SSVIEWER;
$val .=  $item->XML_val("ClassName",null,true) ;
 $val .= <<<SSVIEWER
 Widget" id="
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
">
	<h3 class="handle">
SSVIEWER;
$val .=  $item->XML_val("CMSTitle",null,true) ;
 $val .= <<<SSVIEWER
</h3>
	<div class="widgetDescription">
		<p>
SSVIEWER;
$val .=  $item->XML_val("Description",null,true) ;
 $val .= <<<SSVIEWER
</p>
	</div>
	<div class="widgetFields">
		
SSVIEWER;
$val .=  $item->XML_val("CMSEditor",null,true) ;
 $val .= <<<SSVIEWER

		<input type="hidden" name="
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
[Type]" value="
SSVIEWER;
$val .=  $item->XML_val("ClassName",null,true) ;
 $val .= <<<SSVIEWER
" />   
		<input type="hidden" name="
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
[Sort]" value="
SSVIEWER;
$val .=  $item->XML_val("Sort",null,true) ;
 $val .= <<<SSVIEWER
" />
	</div>
	<p class="deleteWidget"><span class="widgetDelete">
SSVIEWER;
$val .=  _t('WidgetEditor.ss.DELETE', 'Delete') ;
 $val .= <<<SSVIEWER
</span></p>
</div>
SSVIEWER;

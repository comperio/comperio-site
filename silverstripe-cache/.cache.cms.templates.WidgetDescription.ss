<?php
$val .= <<<SSVIEWER
<div class="Widget" id="
SSVIEWER;
$val .=  $item->XML_val("ClassName",null,true) ;
 $val .= <<<SSVIEWER
">
	<h3 title="
SSVIEWER;
$val .=  _t('WidgetDescription.ss.CLICKTOADDWIDGET', 'Click to add this widget') ;
 $val .= <<<SSVIEWER
">
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
</div>
SSVIEWER;

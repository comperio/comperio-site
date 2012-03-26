<?php
$val .= <<<SSVIEWER
<div class="WidgetAreaEditor" id="WidgetAreaEditor-
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
" name="
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
"
SSVIEWER;
 if($item->hasValue("MaxWidgets")) {  ;
 $val .= <<<SSVIEWER
 maxwidgets="
SSVIEWER;
$val .=  $item->XML_val("MaxWidgets",null,true) ;
 $val .= <<<SSVIEWER
"
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
>
	<input type="hidden" id="
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
" name="
SSVIEWER;
$val .=  $item->XML_val("IdxField",null,true) ;
 $val .= <<<SSVIEWER
" value="
SSVIEWER;
$val .=  $item->XML_val("Value",null,true) ;
 $val .= <<<SSVIEWER
" />
	<div class="availableWidgetsHolder">
		<h2>
SSVIEWER;
$val .=  _t('WidgetAreaEditor.ss.AVAILABLE', 'Available Widgets') ;
 $val .= <<<SSVIEWER
</h2>
		<p>
SSVIEWER;
$val .=  _t('WidgetAreaEditor.ss.AVAILWIDGETS', 'Click a widget title below to use it on this page.') ;
 $val .= <<<SSVIEWER
</p>
		<div class="availableWidgets" id="availableWidgets-
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
">
			
SSVIEWER;
 if($item->hasValue("AvailableWidgets")) {  ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("AvailableWidgets")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
$val .=  $item->XML_val("DescriptionSegment",null,true) ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

				<div class="NoWidgets" id="NoWidgets-
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
">
					<p>
SSVIEWER;
$val .=  _t('WidgetAreaEditor.ss.NOAVAIL', 'There are currently no widgets available.') ;
 $val .= <<<SSVIEWER
</p>
				</div>
			
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		</div>
	</div>
	<div class="usedWidgetsHolder">
		<h2>
SSVIEWER;
$val .=  _t('WidgetAreaEditor.ss.INUSE', 'Widgets currently used') ;
 $val .= <<<SSVIEWER
</h2>
		<p>
SSVIEWER;
$val .=  _t('WidgetAreaEditor.ss.TOSORT', 'To sort currently used widgets on this page, drag them up and down.') ;
 $val .= <<<SSVIEWER
</p>
		
		<div class="usedWidgets" id="usedWidgets-
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
">
			
SSVIEWER;
 if($item->hasValue("UsedWidgets")) {  ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("UsedWidgets")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
$val .=  $item->XML_val("EditableSegment",null,true) ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

				<div class="NoWidgets" id="NoWidgets-
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
"></div>
			
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		</div>
	</div>
</div>
SSVIEWER;

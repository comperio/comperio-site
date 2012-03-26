<?php
$val .= <<<SSVIEWER
<div id="
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
" class="thumbnailstrip parent=
SSVIEWER;
$val .=  $item->XML_val("ParentField",null,true) ;
 $val .= <<<SSVIEWER
 updatemethod=
SSVIEWER;
$val .=  $item->XML_val("updateMethod",null,true) ;
 $val .= <<<SSVIEWER
">
	<h2>
SSVIEWER;
$val .=  _t('ThumbnailStripField.ss.CHOOSEFOLDER','(Choose a folder or search above)') ;
 $val .= <<<SSVIEWER
</h2>
</div>
SSVIEWER;

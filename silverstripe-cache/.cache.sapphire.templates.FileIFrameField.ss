<?php
$val .= <<<SSVIEWER
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		
SSVIEWER;
$val .=  SSViewer::get_base_tag($val); ;
 $val .= <<<SSVIEWER

		
		<title>
SSVIEWER;
$val .=  _t('FileIFrameField.ss.TITLE', 'Image Uploading Iframe') ;
 $val .= <<<SSVIEWER
</title>
	</head>
	
	<body>
		<div class="mainblock editform">
			
SSVIEWER;
$val .=  $item->XML_val("EditFileForm",null,true) ;
 $val .= <<<SSVIEWER

		</div>
		
		
SSVIEWER;
 if($item->hasValue("AttachedFile")) {  ;
 $val .= <<<SSVIEWER

			<div class="mainblock">
				
SSVIEWER;
$val .=  $item->obj("AttachedFile",null,true)->XML_val("CMSThumbnail",null,true) ;
 $val .= <<<SSVIEWER

				
				
SSVIEWER;
 if($item->hasValue("DeleteFileForm")) {  ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
$val .=  $item->XML_val("DeleteFileForm",null,true) ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

			</div>
		
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	</body>
	
</html>

SSVIEWER;

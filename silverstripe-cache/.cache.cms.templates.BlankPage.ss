<?php
$val .= <<<SSVIEWER
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</title>

SSVIEWER;
$val .=  SSViewer::get_base_tag($val); ;
 $val .= <<<SSVIEWER

</head>
<body class="
SSVIEWER;
$val .=  $item->XML_val("CSSClasses",null,true) ;
 $val .= <<<SSVIEWER
">
	
SSVIEWER;
$val .=  $item->XML_val("Content",null,true) ;
 $val .= <<<SSVIEWER

	<div class="right">
		
SSVIEWER;
$val .=  $item->XML_val("Form",null,true) ;
 $val .= <<<SSVIEWER

	</div>
</body>
</html>
SSVIEWER;

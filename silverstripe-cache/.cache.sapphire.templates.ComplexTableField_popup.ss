<?php
$val .= <<<SSVIEWER
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		
SSVIEWER;
$val .=  SSViewer::get_base_tag($val); ;
 $val .= <<<SSVIEWER

	</head>
	<body>
		<div class="right 
SSVIEWER;
$val .=  $item->XML_val("PopupClasses",null,true) ;
 $val .= <<<SSVIEWER
">
			
SSVIEWER;
$val .=  $item->XML_val("DetailForm",null,true) ;
 $val .= <<<SSVIEWER

		</div>

		
SSVIEWER;
 if($item->hasValue("ShowPagination")) {  ;
 $val .= <<<SSVIEWER

			<table id="ComplexTableField_Pagination">
				<tr>
					
SSVIEWER;
 if($item->obj("Paginator",null,true)->hasValue("PrevLink")) {  ;
 $val .= <<<SSVIEWER

						<td id="ComplexTableField_Pagination_Previous">
							<a href="
SSVIEWER;
$val .=  $item->obj("Paginator",null,true)->XML_val("PrevLink",null,true) ;
 $val .= <<<SSVIEWER
"><img src="cms/images/pagination/record-prev.png" />
SSVIEWER;
$val .=  _t('ComplexTableField_popup.ss.PREVIOUS', 'Previous') ;
 $val .= <<<SSVIEWER
</a>
						</td>
					
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
 if($item->hasValue("xdsfdsf")) {  ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

						<td>
							
SSVIEWER;
 array_push($itemStack, $item); if(($loop = $item->obj("Paginator")) && ($loop = $loop->obj("Pages"))) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

								
SSVIEWER;
 if($item->hasValue("active")) {  ;
 $val .= <<<SSVIEWER

									<a href="
SSVIEWER;
$val .=  $item->XML_val("link",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("number",null,true) ;
 $val .= <<<SSVIEWER
</a>
								
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

									<span>
SSVIEWER;
$val .=  $item->XML_val("number",null,true) ;
 $val .= <<<SSVIEWER
</span>
								
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

							
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

						</td>
					
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
 if($item->obj("Paginator",null,true)->hasValue("NextLink")) {  ;
 $val .= <<<SSVIEWER

						<td id="ComplexTableField_Pagination_Next">
							<a href="
SSVIEWER;
$val .=  $item->obj("Paginator",null,true)->XML_val("NextLink",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  _t('ComplexTableField_popup.ss.NEXT', 'Next') ;
 $val .= <<<SSVIEWER
<img src="cms/images/pagination/record-next.png" /></a>
						</td>
					
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

				</tr>
			</table>
		
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	</body>
</html>

SSVIEWER;

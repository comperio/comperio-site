<?php
$val .= <<<SSVIEWER
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-language" content="
SSVIEWER;
$val .=  $item->XML_val("i18nLocale",null,true) ;
 $val .= <<<SSVIEWER
" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />

SSVIEWER;
$val .=  SSViewer::get_base_tag($val); ;
 $val .= <<<SSVIEWER

<title>
SSVIEWER;
$val .=  $item->XML_val("ApplicationName",null,true) ;
 $val .= <<<SSVIEWER
 | 
SSVIEWER;
$val .=  $item->XML_val("SectionTitle",null,true) ;
 $val .= <<<SSVIEWER
</title>
</head>

<body class="stillLoading 
SSVIEWER;
$val .=  $item->XML_val("CSSClasses",null,true) ;
 $val .= <<<SSVIEWER
">
	<div id="Loading" style="background: #FFF url(
SSVIEWER;
$val .=  $item->XML_val("LoadingImage",null,true) ;
 $val .= <<<SSVIEWER
) 50% 50% no-repeat; position: absolute;z-index: 100000;height: 100%;width: 100%;margin: 0;padding: 0;z-index: 100000;position: absolute;">
SSVIEWER;
$val .=  _t('LeftAndMain.ss.LOADING','Loading...',PR_HIGH) ;
 $val .= <<<SSVIEWER
<noscript><h1>
SSVIEWER;
$val .=  _t('LeftAndMain.ss.REQUIREJS','The CMS requires that you have JavaScript enabled.',PR_HIGH) ;
 $val .= <<<SSVIEWER
</h1></noscript></div>
	
	<div id="top">
		
SSVIEWER;
$val .=  $item->XML_val("CMSTopMenu",null,true) ;
 $val .= <<<SSVIEWER

	</div>
	
	<div id="left" style="float:left">
		
SSVIEWER;
$val .=  $item->XML_val("Left",null,true) ;
 $val .= <<<SSVIEWER

	</div>
	
	<div id="separator" style="float:left">
		&nbsp;
	</div>
	
	<div class="right" id="right">
		
SSVIEWER;
$val .=  $item->XML_val("Right",null,true) ;
 $val .= <<<SSVIEWER

	</div>

	<div id="contentPanel" style="display:none;">
		
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("EditorToolbar")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
$val .=  $item->XML_val("ImageForm",null,true) ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
$val .=  $item->XML_val("LinkForm",null,true) ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
$val .=  $item->XML_val("FlashForm",null,true) ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

	</div>
	
	<div id="bottom">
		<div class="holder">
			<div id="logInStatus">
				<a href="
SSVIEWER;
$val .=  $item->XML_val("ApplicationLink",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('LeftAndMain.ss.SSWEB','Silverstripe Website') ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("ApplicationName",null,true) ;
 $val .= <<<SSVIEWER
</a>&nbsp;-&nbsp;
				<abbr style="border-style: none" title="
SSVIEWER;
$val .=  _t('LeftAndMain.ss.APPVERSIONTEXT1',"This is the") ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("ApplicationName",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  _t('LeftAndMain.ss.APPVERSIONTEXT2',"version that you are currently running, technically it's the CVS branch") ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("CMSVersion",null,true) ;
 $val .= <<<SSVIEWER
</abbr> &nbsp; &nbsp; &nbsp; 
				
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("CurrentMember")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
$val .=  _t('LeftAndMain.ss.LOGGEDINAS','Logged in as') ;
 $val .= <<<SSVIEWER
 <strong>
SSVIEWER;
 if($item->hasValue("FirstName") && $item->hasValue("Surname")) { ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("FirstName",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("Surname",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 } else if($item->hasValue("FirstName")) {  ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("FirstName",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("Email",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
</strong> | <a href="
SSVIEWER;
$val .=  $item->XML_val("BaseHref",null,true) ;
 $val .= <<<SSVIEWER
admin/myprofile" id="EditMemberProfile">
SSVIEWER;
$val .=  _t('LeftAndMain.ss.EDITPROFILE','Profile') ;
 $val .= <<<SSVIEWER
</a> | <a href="Security/logout" id="LogoutLink">
SSVIEWER;
$val .=  _t('LeftAndMain.ss.LOGOUT','Log out') ;
 $val .= <<<SSVIEWER
</a>
				
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

			</div>

			<div id="switchView" class="bottomTabs">
				
SSVIEWER;
 if($item->hasValue("ShowSwitchView")) {  ;
 $val .= <<<SSVIEWER

					<div class="blank"> 
SSVIEWER;
$val .=  _t('LeftAndMain.ss.VIEWPAGEIN','Page view:') ;
 $val .= <<<SSVIEWER
 </div>
					<span id="SwitchView">
SSVIEWER;
$val .=  $item->XML_val("SwitchView",null,true) ;
 $val .= <<<SSVIEWER
</span>
				
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

			</div>
		</div>
	</div>
</body>
</html>

SSVIEWER;

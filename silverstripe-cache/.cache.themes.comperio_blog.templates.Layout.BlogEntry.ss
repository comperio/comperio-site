<?php
$val .= <<<SSVIEWER
<div class="blog container" role="main" id="main">
    <div class="row">
        <div id="BlogContent" class="span9">

            
SSVIEWER;
 if($item->hasValue("Level",array("2"))) {  ;
 $val .= <<<SSVIEWER

	<div class="breadcrumbs">
	   	<p>
SSVIEWER;
$val .=  $item->XML_val("Breadcrumbs",null,true) ;
 $val .= <<<SSVIEWER
</p>
	</div>

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

            
            <h1>Blog</h1>
            
            <div class="blogEntry">
                <div class="row">
                    <div class="span6">
                        <h2 class="postTitle">
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</h2>
                    </div>
                    <div class="span3">
                        <ul class="postMeta unstyled">
                            <li rel="tooltip" title="Date posted"><i class="icon-calendar"></i>
SSVIEWER;
$val .=  $item->obj("Date",null,true)->XML_val("Long",null,true) ;
 $val .= <<<SSVIEWER
</li>
                            <li rel="tooltip" title="Posted by"><i class="icon-user"></i>
SSVIEWER;
$val .=  $item->obj("Author",null,true)->XML_val("XML",null,true) ;
 $val .= <<<SSVIEWER
</li>
                            <li rel="tooltip" title="Comments number"><i class="icon-comment"></i>
SSVIEWER;
$val .=  $item->obj("Comments",null,true)->XML_val("Count",null,true) ;
 $val .= <<<SSVIEWER
</li>
                            
SSVIEWER;
 if($item->hasValue("TagsCollection")) {  ;
 $val .= <<<SSVIEWER

                            <li rel="tooltip" title="Tags" class="tags">
                                <i class="icon-tags"></i>
SSVIEWER;
$val .=  _t('BlogEntry.ss.TAGS', 'Tags:') ;
 $val .= <<<SSVIEWER
 
                                
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("TagsCollection")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

                                <a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('BlogEntry.ss.VIEWALLPOSTTAGGED', 'View all posts tagged') ;
 $val .= <<<SSVIEWER
 '
SSVIEWER;
$val .=  $item->XML_val("Tag",null,true) ;
 $val .= <<<SSVIEWER
'" rel="tag">
SSVIEWER;
$val .=  $item->XML_val("Tag",null,true) ;
 $val .= <<<SSVIEWER
</a>
SSVIEWER;
 if($item->hasValue("Last")) {  ;
 $val .= <<<SSVIEWER

SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER
,
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

                                
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

                            </li>
                            
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

                        </ul>
                    </div>
                </div>


                <div class="row" style="margin-top:20px">
                    <div class="span9">
                        
SSVIEWER;
$val .=  $item->XML_val("Content",null,true) ;
 $val .= <<<SSVIEWER

                    </div>                    
                </div>


            </div>

            
SSVIEWER;
 if($item->hasValue("IsOwner")) {  ;
 $val .= <<<SSVIEWER

            <div class="ownerAction clear">
                <div class="btn-group pull-right">
                    <a class="btn btn-small" href="
SSVIEWER;
$val .=  $item->XML_val("EditURL",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('BlogEntry.ss.EDITTHIS', 'Edit this post') ;
 $val .= <<<SSVIEWER
">
                        <i class="icon-edit"></i>
SSVIEWER;
$val .=  _t('BlogEntry.ss.EDITTHIS', 'Edit this post') ;
 $val .= <<<SSVIEWER

                    </a>
                    <a class="btn btn-small"  href="
SSVIEWER;
$val .=  $item->XML_val("Link",array("unpublishPost"),true) ;
 $val .= <<<SSVIEWER
" title="Unpublish Post">
                        <i class="icon-remove"></i>
                        
SSVIEWER;
$val .=  _t('BlogEntry.ss.UNPUBLISHTHIS', 'Unpublish this post') ;
 $val .= <<<SSVIEWER

                    </a>
                </div>
            </div>
            
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


            
SSVIEWER;
 if($item->hasValue("TrackBacksEnabled")) {  ;
 $val .= <<<SSVIEWER

                <div id="TrackBacks_holder" class="typography">
	<h4>TrackBacks</h4>
	
	
SSVIEWER;
 if($item->hasValue("TrackBacks")) {  ;
 $val .= <<<SSVIEWER

	<ul id="TrackBacks">
		
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("TrackBacks")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

			<li>
				<a href="
SSVIEWER;
$val .=  $item->XML_val("Url",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
 if($item->hasValue("Title")) {  ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("Url",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
</a> <span class="date">on 
SSVIEWER;
$val .=  $item->obj("Created",null,true)->XML_val("Nice",null,true) ;
 $val .= <<<SSVIEWER
</span>
				
SSVIEWER;
 if($item->hasValue("Excerpt")) {  ;
 $val .= <<<SSVIEWER
<p class="excerpt">
SSVIEWER;
$val .=  $item->XML_val("Excerpt",null,true) ;
 $val .= <<<SSVIEWER
</p>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

			</li>
		
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

	</ul>
	
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

		<p>No TrackBacks have been submitted for this page.</p>
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	
	<a href="
SSVIEWER;
$val .=  $item->XML_val("TrackBackPingLink",null,true) ;
 $val .= <<<SSVIEWER
">Trackback URL for this page.</a>
	
</div>


            
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

            
            
SSVIEWER;
$val .=  $item->XML_val("PageComments",null,true) ;
 $val .= <<<SSVIEWER


        </div>

        <div id="Sidebar" class="span3">
	
SSVIEWER;
$val .=  $item->XML_val("SideBar",null,true) ;
 $val .= <<<SSVIEWER

</div>

    </div>
</div>
SSVIEWER;

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
            
            
SSVIEWER;
 if($item->hasValue("SelectedTag")) {  ;
 $val .= <<<SSVIEWER

            <h3>
SSVIEWER;
$val .=  _t('BlogHolder.ss.VIEWINGTAGGED', 'Viewing entries tagged with') ;
 $val .= <<<SSVIEWER
 '
SSVIEWER;
$val .=  $item->XML_val("SelectedTag",null,true) ;
 $val .= <<<SSVIEWER
'</h3>
            
SSVIEWER;
 } else if($item->hasValue("SelectedDate")) {  ;
 $val .= <<<SSVIEWER

            <h3>
SSVIEWER;
$val .=  _t('BlogHolder.ss.VIEWINGPOSTEDIN', 'Viewing entries posted in') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("SelectedNiceDate",null,true) ;
 $val .= <<<SSVIEWER
</h3>
            
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


            
SSVIEWER;
 if($item->hasValue("BlogEntries")) {  ;
 $val .= <<<SSVIEWER

            
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("BlogEntries")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

            <div class="blogSummary clearfix">
	<span rel="tooltip" title="Date posted"><i class="icon-user"></i>
SSVIEWER;
$val .=  $item->obj("Author",null,true)->XML_val("XML",null,true) ;
 $val .= <<<SSVIEWER
</span>
    <span rel="tooltip" title="Date posted"><i class="icon-calendar"></i>
SSVIEWER;
$val .=  $item->obj("Date",null,true)->XML_val("Long",null,true) ;
 $val .= <<<SSVIEWER
</span>
	<h2 class="postTitle"><a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('BlogSummary.ss.VIEWFULL', 'View full post titled -') ;
 $val .= <<<SSVIEWER
 '
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
'">
SSVIEWER;
$val .=  $item->XML_val("MenuTitle",null,true) ;
 $val .= <<<SSVIEWER
</a></h2>	
	
SSVIEWER;
 if($item->hasValue("TagsCollection")) {  ;
 $val .= <<<SSVIEWER

		<p class="tags">
			<i class="icon-tags"></i> Tags:
			
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("TagsCollection")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

				<a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" title="View all posts tagged '
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

		</p>
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	
	<p>
SSVIEWER;
$val .=  $item->obj("Content")->XML_val("FirstParagraph",array("html"),true) ;
 $val .= <<<SSVIEWER
</p>
	
    <div class="row clear">
		<div class="btn-group pull-right">	        	
            <a class="btn btn-small" href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
#PageComments_holder" title="View Comments for this post">
                <i class="icon-comment"></i>
SSVIEWER;
$val .=  $item->obj("Comments",null,true)->XML_val("Count",null,true) ;
 $val .= <<<SSVIEWER

            </a>
            <a class="btn btn-small" href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" title="Read Full Post">
                Leggi tutto
            </a>
    	</div>
    </div>
</div>

            
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

            
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

            <h3>
SSVIEWER;
$val .=  _t('BlogHolder.ss.NOENTRIES', 'There are no blog entries') ;
 $val .= <<<SSVIEWER
</h3>
            
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


            
SSVIEWER;
 if($item->obj("BlogEntries",null,true)->hasValue("MoreThanOnePage")) {  ;
 $val .= <<<SSVIEWER

	<div id="PageNumbers">

        <ul class="pager">
            
SSVIEWER;
 if($item->obj("BlogEntries",null,true)->hasValue("NotFirstPage")) {  ;
 $val .= <<<SSVIEWER

                <li class="previous">
                    <a href="
SSVIEWER;
$val .=  $item->obj("BlogEntries",null,true)->XML_val("PrevLink",null,true) ;
 $val .= <<<SSVIEWER
" title="View the previous page">&larr; Prev</a>
                </li>
            
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

            
SSVIEWER;
 array_push($itemStack, $item); if(($loop = $item->obj("BlogEntries")) && ($loop = $loop->obj("PaginationSummary", array("4")))) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
 if($item->hasValue("CurrentBool")) {  ;
 $val .= <<<SSVIEWER

                        <li class="active"><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">
SSVIEWER;
$val .=  $item->XML_val("PageNum",null,true) ;
 $val .= <<<SSVIEWER
</a></li>
					
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

						
SSVIEWER;
 if($item->hasValue("Link")) {  ;
 $val .= <<<SSVIEWER

                            <li><a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" title="View page number 
SSVIEWER;
$val .=  $item->XML_val("PageNum",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("PageNum",null,true) ;
 $val .= <<<SSVIEWER
</a></li>
						
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

                            <li class="disabled"><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">...</a></li>
						
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

            
            
SSVIEWER;
 if($item->obj("BlogEntries",null,true)->hasValue("NotLastPage")) {  ;
 $val .= <<<SSVIEWER

            <li class="next">
                <a href="
SSVIEWER;
$val .=  $item->obj("BlogEntries",null,true)->XML_val("NextLink",null,true) ;
 $val .= <<<SSVIEWER
" title="View the next page">Next &rarr;</a>
            </li>
            
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

        </ul>
	</div>

SSVIEWER;
 }  ;
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

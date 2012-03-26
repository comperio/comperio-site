<?php
$val .= <<<SSVIEWER
<div id="PageComments_holder" class="well clear">

	<h4>
SSVIEWER;
$val .=  _t('PageCommentInterface.ss.COMMENTS','Comments') ;
 $val .= <<<SSVIEWER
</h4>
	
	<div id="CommentHolder">
		
SSVIEWER;
 if($item->hasValue("Comments")) {  ;
 $val .= <<<SSVIEWER


			
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Comments")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

				<div class="PageComments 
SSVIEWER;
 if($item->hasValue("FirstLast")) {  ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("FirstLast",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("SpamClass",null,true) ;
 $val .= <<<SSVIEWER
 clear">
					<i class="icon-comment"></i>
<em class="postMeta">		
    <span rel="tooltip" title="Posted by"><i class="icon-user"></i>
	    
SSVIEWER;
 if($item->hasValue("CommenterURL")) {  ;
 $val .= <<<SSVIEWER

			<a href="
SSVIEWER;
$val .=  $item->obj("CommenterURL",null,true)->XML_val("ATT",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->obj("Name",null,true)->XML_val("XML",null,true) ;
 $val .= <<<SSVIEWER
</a>
		
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
$val .=  $item->obj("Name",null,true)->XML_val("XML",null,true) ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	</span>
	<span rel="tooltip" title="Date posted"><i class="icon-calendar"></i>
SSVIEWER;
$val .=  $item->obj("Created",null,true)->XML_val("Nice",null,true) ;
 $val .= <<<SSVIEWER
</span>
</em>

<div class="comment" id="PageComment_
SSVIEWER;
$val .=  $item->XML_val("ID",null,true) ;
 $val .= <<<SSVIEWER
">
	
SSVIEWER;
 if($item->hasValue("bbCodeEnabled")) {  ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
$val .=  $item->XML_val("ParsedBBCode",null,true) ;
 $val .= <<<SSVIEWER
	
	
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
$val .=  $item->obj("Comment",null,true)->XML_val("XML",null,true) ;
 $val .= <<<SSVIEWER
	
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

</div>


<div class="actionLinks clear">
    <div class="btn-group">
        
SSVIEWER;
 if($item->hasValue("ApproveLink")) {  ;
 $val .= <<<SSVIEWER

			<a href="
SSVIEWER;
$val .=  $item->XML_val("ApproveLink",null,true) ;
 $val .= <<<SSVIEWER
" class="btn btn-mini" title="Approve"><i class="icon-ok"></i>Approve</a>
		
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 if($item->hasValue("SpamLink")) {  ;
 $val .= <<<SSVIEWER

			<a href="
SSVIEWER;
$val .=  $item->XML_val("SpamLink",null,true) ;
 $val .= <<<SSVIEWER
" class="btn btn-mini" title="Mark as spam"><i class="icon-ban-circle"></i>Mark as spam</a>
		
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 if($item->hasValue("HamLink")) {  ;
 $val .= <<<SSVIEWER

			<a href="
SSVIEWER;
$val .=  $item->XML_val("HamLink",null,true) ;
 $val .= <<<SSVIEWER
" class="btn btn-mini" title="Not spam"><i class="icon-ok-circle"></i>Not spam</a>
		
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 if($item->hasValue("DeleteLink")) {  ;
 $val .= <<<SSVIEWER

			<a href="
SSVIEWER;
$val .=  $item->XML_val("DeleteLink",null,true) ;
 $val .= <<<SSVIEWER
" class="btn btn-mini" title="Remove comment"><i class="icon-remove"></i>Remove comment</a>
		
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

    </div>
</div>

				</div>
			
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

			
			
SSVIEWER;
 if($item->obj("Comments",null,true)->hasValue("MoreThanOnePage")) {  ;
 $val .= <<<SSVIEWER

				<div id="PageCommentsPagination">					
					<ul class="pager">
			            
SSVIEWER;
 if($item->obj("Comments",null,true)->hasValue("PrevLink")) {  ;
 $val .= <<<SSVIEWER

			                <li class="previous">
			                    <a href="
SSVIEWER;
$val .=  $item->obj("Comments",null,true)->XML_val("PrevLink",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('PageCommentInterface.ss.PREV','previous') ;
 $val .= <<<SSVIEWER
">&larr; Prev</a>
			                </li>
			            
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

			            
			            
SSVIEWER;
 if($item->obj("Comments",null,true)->hasValue("Pages")) {  ;
 $val .= <<<SSVIEWER

							
SSVIEWER;
 array_push($itemStack, $item); if(($loop = $item->obj("Comments")) && ($loop = $loop->obj("Pages"))) foreach($loop as $key => $item) { ;
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
 }  ;
 $val .= <<<SSVIEWER

							
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

						
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

			            
			            
SSVIEWER;
 if($item->obj("Comments",null,true)->hasValue("NextLink")) {  ;
 $val .= <<<SSVIEWER

			            <li class="next">
			                <a href="
SSVIEWER;
$val .=  $item->obj("Comments",null,true)->XML_val("NextLink",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('PageCommentInterface.ss.NEXT','next') ;
 $val .= <<<SSVIEWER
">Next &rarr;</a>
			            </li>
			            
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

			        </ul>
				</div>
			
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

			<p id="NoComments">
SSVIEWER;
$val .=  _t('PageCommentInterface.ss.NOCOMMENTSYET','No one has commented on this page yet.') ;
 $val .= <<<SSVIEWER
</p>
		
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	</div>
	
	<h4>
SSVIEWER;
$val .=  _t('PageCommentInterface.ss.POSTCOM','Post your comment') ;
 $val .= <<<SSVIEWER
</h4>
	
SSVIEWER;
 if($item->hasValue("PostCommentForm")) {  ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 if($item->hasValue("CanPostComment")) {  ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
$val .=  $item->XML_val("PostCommentForm",null,true) ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

			<p>
SSVIEWER;
$val .=  _t('PageCommentInterface.ss.COMMENTLOGINERROR', 'You cannot post comments until you have logged in') ;
 $val .= <<<SSVIEWER

SSVIEWER;
 if($item->hasValue("PostingRequiresPermission")) {  ;
 $val .= <<<SSVIEWER
,
SSVIEWER;
$val .=  _t('PageCommentInterface.ss.COMMENTPERMISSIONERROR', 'and that you have an appropriate permission level') ;
 $val .= <<<SSVIEWER

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
. 
				<a href="Security/login?BackURL=
SSVIEWER;
$val .=  $item->obj("Page",null,true)->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" title="Login to post a comment">
SSVIEWER;
$val .=  _t('PageCommentInterface.ss.COMMENTPOSTLOGIN', 'Login Here') ;
 $val .= <<<SSVIEWER
</a>.
			</p>
		
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

		<p>
SSVIEWER;
$val .=  _t('PageCommentInterface.ss.COMMENTSDISABLED', 'Posting comments has been disabled') ;
 $val .= <<<SSVIEWER
.</p>	
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


	<div id="CommentsRSSFeed" class="btn-group">
			<a class="commentrss btn btn-small" title="
SSVIEWER;
$val .=  _t('PageCommentInterface.ss.RSSFEEDCOMMENTS', 'RSS feed for comments on this page') ;
 $val .= <<<SSVIEWER
" href="
SSVIEWER;
$val .=  $item->XML_val("CommentRssLink",null,true) ;
 $val .= <<<SSVIEWER
"><i class="icon-signal"></i>RSS for comments on this page</a>
			<a href="PageComment/rss" class="commentrss  btn btn-small" title="
SSVIEWER;
$val .=  _t('PageCommentInterface.ss.RSSVIEWALLCOMMENTS', 'View all Comments') ;
 $val .= <<<SSVIEWER
"><i class="icon-signal"></i>RSS for all comments</a>		
    </div>

    
SSVIEWER;
 if($item->hasValue("DeleteAllLink")) {  ;
 $val .= <<<SSVIEWER

		<a id="DeleteAllLink" href="
SSVIEWER;
$val .=  $item->XML_val("DeleteAllLink",null,true) ;
 $val .= <<<SSVIEWER
" class="btn btn-small btn-danger" title="
SSVIEWER;
$val .=  _t('PageCommentInterface.DELETEALLCOMMENTS','Delete all comments') ;
 $val .= <<<SSVIEWER
"><i class="icon-off"></i>Delete all comments</a>
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

</div>
	

SSVIEWER;

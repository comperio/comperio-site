<div id="PageComments_holder" class="well clear">

	<h4><% _t('COMMENTS','Comments') %></h4>
	
	<div id="CommentHolder">
		<% if Comments %>

			<% control Comments %>
				<div class="PageComments <% if FirstLast %> $FirstLast <% end_if %> $SpamClass clear">
					<% include PageCommentInterface_singlecomment %>
				</div>
			<% end_control %>
			
			<% if Comments.MoreThanOnePage %>
				<div id="PageCommentsPagination">					
					<ul class="pager">
			            <% if Comments.PrevLink %>
			                <li class="previous">
			                    <a href="$Comments.PrevLink" title="<% _t('PREV','previous') %>">&larr; Prev</a>
			                </li>
			            <% end_if %>
			            
			            <% if Comments.Pages %>
							<% control Comments.Pages %>
								<% if CurrentBool %>
									<li class="active"><a href="#">$PageNum</a></li>
								<% else %>
									<li><a href="$Link" title="View page number $PageNum">$PageNum</a></li>
								<% end_if %>
							<% end_control %>
						<% end_if %>
			            
			            <% if Comments.NextLink %>
			            <li class="next">
			                <a href="$Comments.NextLink" title="<% _t('NEXT','next') %>">Next &rarr;</a>
			            </li>
			            <% end_if %>
			        </ul>
				</div>
			<% end_if %>
		<% else %>
			<p id="NoComments"><% _t('NOCOMMENTSYET','No one has commented on this page yet.') %></p>
		<% end_if %>
	</div>
	
	<h4><% _t('POSTCOM','Post your comment') %></h4>
	<% if PostCommentForm %>
		<% if CanPostComment %>
			$PostCommentForm
		<% else %>
			<p><% _t('COMMENTLOGINERROR', 'You cannot post comments until you have logged in') %><% if PostingRequiresPermission %>,<% _t('COMMENTPERMISSIONERROR', 'and that you have an appropriate permission level') %><% end_if %>. 
				<a href="Security/login?BackURL={$Page.Link}" title="Login to post a comment"><% _t('COMMENTPOSTLOGIN', 'Login Here') %></a>.
			</p>
		<% end_if %>
	<% else %>
		<p><% _t('COMMENTSDISABLED', 'Posting comments has been disabled') %>.</p>	
	<% end_if %>

	<div id="CommentsRSSFeed" class="btn-group">
			<a class="commentrss btn btn-small" title="<% _t('RSSFEEDCOMMENTS', 'RSS feed for comments on this page') %>" href="$CommentRssLink"><i class="icon-signal"></i>RSS for comments on this page</a>
			<a href="PageComment/rss" class="commentrss  btn btn-small" title="<% _t('RSSVIEWALLCOMMENTS', 'View all Comments') %>"><i class="icon-signal"></i>RSS for all comments</a>		
    </div>

    <% if DeleteAllLink %>
		<a id="DeleteAllLink" href="$DeleteAllLink" class="btn btn-small btn-danger" title="<% _t('PageCommentInterface.DELETEALLCOMMENTS','Delete all comments') %>"><i class="icon-off"></i>Delete all comments</a>
	<% end_if %>
</div>
	

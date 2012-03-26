<div class="blogSummary clearfix">
	<span rel="tooltip" title="Date posted"><i class="icon-user"></i>$Author.XML</span>
    <span rel="tooltip" title="Date posted"><i class="icon-calendar"></i>$Date.Long</span>
	<h2 class="postTitle"><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>	
	<% if TagsCollection %>
		<p class="tags">
			<i class="icon-tags"></i> Tags:
			<% control TagsCollection %>
				<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
			<% end_control %>
		</p>
	<% end_if %>
	
	<p>$Content.FirstParagraph(html)</p>
	
    <div class="row clear">
		<div class="btn-group pull-right">	        	
            <a class="btn btn-small" href="$Link#PageComments_holder" title="View Comments for this post">
                <i class="icon-comment"></i>$Comments.Count
            </a>
            <a class="btn btn-small" href="$Link" title="Read Full Post">
                Leggi tutto
            </a>
    	</div>
    </div>
</div>

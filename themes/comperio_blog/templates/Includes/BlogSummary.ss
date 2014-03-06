<div class="blogSummary clearfix">
	<div class="blogSummaryHeader">
		<% if AttachedImage %>
	        <% control AttachedImage %><img class="featuredImage" src="$SetWidth(150).URL" alt="$Title" /><% end_control %>
	    <% end_if %> 
	    <span rel="tooltip" title="Date posted"><i class="glyphicon glyphicon-calendar"></i>$Date.FormatI18N(%e %B %Y)</span>
	    <span rel="tooltip" title="Author"><i class="glyphicon glyphicon-user"></i>$Author.XML</span>
	    <h2 class="postTitle"><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
	</div>
	
	<div class="blogSummaryContent">
		$Content
	</div>
	

    <div class="row-fluid clear">
        <% if TagsCollection %>
            <span class="tags">
                <i class="glyphicon glyphicon-tags" rel="tooltip" title="Tags"></i> Tags: 
                <% control TagsCollection %>
                        <a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
                <% end_control %>
            </span>
        <% end_if %>
        <div class="btn-group pull-right">   
            <% if ProvideComments %>
                <a class="btn btn-small" href="$Link#PageComments_holder" title="View Comments for this post">
                    <i class="glyphicon glyphicon-comment"></i>$Comments.Count
                </a>
            <% end_if %>
            <a class="btn btn-default btn-sm" href="$Link" title="Read Full Post">
                Leggi tutto
            </a>
    	</div>
    </div>
</div>

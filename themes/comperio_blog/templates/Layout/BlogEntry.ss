<div class="blog container" role="main" id="main">
    <div class="row">
        <div id="BlogContent" class="span9">

            <% include BreadCrumbs %>
            
            <h1>Blog</h1>
            
            <div class="blogEntry">
                <div class="row">
                    <div class="span6">
                        <h2 class="postTitle">$Title</h2>
                    </div>
                    <div class="span3">
                        <ul class="postMeta unstyled">
                            <li rel="tooltip" title="Date posted"><i class="icon-calendar"></i>$Date.Long</li>
                            <li rel="tooltip" title="Posted by"><i class="icon-user"></i>$Author.XML</li>
                            <li rel="tooltip" title="Comments number"><i class="icon-comment"></i>$Comments.Count</li>
                            <% if TagsCollection %>
                            <li rel="tooltip" title="Tags" class="tags">
                                <i class="icon-tags"></i><% _t('TAGS', 'Tags:') %> 
                                <% control TagsCollection %>
                                <a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
                                <% end_control %>
                            </li>
                            <% end_if %>
                        </ul>
                    </div>
                </div>


                <div class="row" style="margin-top:20px">
                    <div class="span9">
                        $Content
                    </div>                    
                </div>


            </div>

            <% if IsOwner %>
            <div class="ownerAction clear">
                <div class="btn-group pull-right">
                    <a class="btn btn-small" href="$EditURL" title="<% _t('EDITTHIS', 'Edit this post') %>">
                        <i class="icon-edit"></i><% _t('EDITTHIS', 'Edit this post') %>
                    </a>
                    <a class="btn btn-small"  href="$Link(unpublishPost)" title="Unpublish Post">
                        <i class="icon-remove"></i>
                        <% _t('UNPUBLISHTHIS', 'Unpublish this post') %>
                    </a>
                </div>
            </div>
            <% end_if %>

            <% if TrackBacksEnabled %>
                <% include TrackBacks %>
            <% end_if %>
            
            $PageComments

        </div>

        <% include BlogSideBar %>

    </div>
</div>
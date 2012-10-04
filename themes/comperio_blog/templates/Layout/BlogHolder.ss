<div class="blog container" role="main" id="main">
    <div class="row-fluid">
        <div id="BlogContent" class="span9">

            <% include BreadCrumbs %>
            
            <h1>Blog</h1>
            
            <% if SelectedTag %>
            <h3><% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
            <% else_if SelectedDate %>
            <h3><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate</h3>
            <% end_if %>

            <% if BlogEntries %>
            <% control BlogEntries %>
            <% include BlogSummary %>
            <% end_control %>
            <% else %>
            <h3><% _t('NOENTRIES', 'There are no blog entries') %></h3>
            <% end_if %>

            <% include BlogPagination %>

        </div>
        
        <% include BlogSideBar %>

    </div>
</div>

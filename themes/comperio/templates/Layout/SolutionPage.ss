<div class="page container" role="main" id="main">
    <div class="row">
        <div class="span9">
            <h1>$Title</h1>
            <% control LinkedBlogEntries %>
                <h2>$Title</h2>
                $Content
            <% end_control %>
            $Content
            $Form
        </div>
        <div class="span3">
            <% if Menu(2) %>
            <% include SideBar %>
            <% end_if %>
        </div>
    </div>
</div>
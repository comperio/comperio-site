<div class="page container" role="main" id="main">
    <div class="row-fluid">
        <div class="span9">
            
            <h1>$Level(2).Title</h1>
            
            <% include SecondaryNav %>
            
            $Content
            $Form
        </div>

        <div class="span3">
            <% if Menu(2) %>
            <% include SideBar %>
            <% end_if %>

            <% if LinkedBlogEntries %>
            <div style="padding: 18px 0;" class="linkedBlogEntries">
                <h3>Ultimi post nel blog<em><a href="$LinkedBlogEntries.Link">(leggi tutti)</a></em>
                </h3>
                <% control LinkedBlogEntries %>
                    <div class="well">
                        <p class="postDate" rel="tooltip" title="Date posted"><i class="icon-calendar"></i>$Date.FormatI18N(%e %B %Y)</p>
                        <h4>$Title</h4>
                        <p>$Content.LimitCharacters(200)</p>                        
                        <p><a class="btn btn-primary btn-mini" href="$Link" title="Read Full Post">
                            Leggi tutto ...
                        </a></p>                        
                    </div>
                <% end_control %>
            </div>
            <% end_if %>
        </div>
    </div>
</div>

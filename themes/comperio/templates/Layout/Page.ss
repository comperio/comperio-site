<div class="page container" role="main" id="main">
    <div class="row-fluid">
        <div class="col-md-9">
            <h1>$Level(2).Title</h1>                        
            
            <% include SecondaryNav %>
                     
            $Content
            $Form
        </div>
        <div class="col-md-3">
            <% if Menu(2) %>
            <% include SideBar %>
            <% end_if %>
        </div>
    </div>
</div>

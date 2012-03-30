<div class="navbar-inner">
    <div class="container">
        <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
        <!-- Be sure to leave the brand out there if you want it shown -->
        <a class="brand" href="$BaseUrl"><img src="themes/comperio/img/comperiotrx40.png" alt="Comperio srl" title="Comperio srl" /></a>

        <ul class="nav nav-pills">
            <% control Menu(1) %>	  
            <li class='<% if LinkOrCurrent = current %>active<% end_if %> <% if Children %>dropdown<% end_if %>'>
                    <a href="<% if Children %>#<% else %>$Link<% end_if %>" title="Go to the $Title.XML page" <% if Children %>class="dropdown-toggle" data-toggle="dropdown"<% end_if %>>$MenuTitle.XML<% if Children %><b class="caret"></b><% end_if %></a>
                    <% if Children %>
                    <ul class="dropdown-menu">
                        <% control Children %>
                            <li><a href="$Link">$MenuTitle.XML</a></li>
                        <% end_control %>
                    </ul>
                    <% end_if %>
                    
                </li>
            <% end_control %>
            
        </ul>

        <ul class="nav pull-right">
        <% if CurrentMember %>
            <li><a href="admin">Ciao $CurrentMember.FirstName</a></li>
        <% else %>
            <li><a href="admin">Login</a></li>
        <% end_if %>
        </ul>

        <!-- Everything you want hidden at 940px or less, place within here -->
        <div class="nav-collapse">
            <!-- .nav, .navbar-search, .navbar-form, etc -->

        </div>
    </div>
</div>
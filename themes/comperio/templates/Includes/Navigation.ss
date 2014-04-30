<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">

            <a class="brand" href="$BaseUrl">
                <img src="themes/comperio/img/comperiotrx40.png" alt="Comperio srl" title="Comperio srl" />
            </a>

              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>

        </div>

        <div class="navbar-collapse collapse">

          <ul class="nav navbar-nav">
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

          <ul class="nav nav-pills navbar-right">
              <% if Translations %>
                  <% control Translations %>
                    <li class="$Locale.RFC1766">
                      <a href="$Link" hreflang="$Locale.RFC1766" title="<% sprintf(_t('SHOWINPAGE','Show page in %s'),$Locale.Nice) %>">
                          <img src="themes/comperio/img/{$Locale.RFC1766}.png" alt="<% sprintf(_t('SHOWINPAGE','Show page in %s'),$Locale.Nice) %>"/>
                     </a>
                    </li>
                  <% end_control %>
              <% end_if %>
              <% if CurrentMember %>
                  <li><a href="admin">Ciao $CurrentMember.FirstName</a></li>
              <% else %>
                  <li><a href="admin">Login</a></li>
              <% end_if %>

          </ul>

        </div>
    </div>
</nav>
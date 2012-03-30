<% if Menu(3) %>
	<ul class="nav nav-tabs">
	<% control Menu(3) %>
	    <li <% if LinkOrCurrent = current %>class='active'<% end_if %>>
	        <a href="$Link" title="Go to the $MenuTitle.XML page">$MenuTitle.XML</a>
	    </li>
	<% end_control %>
	</ul>
<% end_if %>
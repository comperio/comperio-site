<div style="padding: 8px 0;" class="well">
<ul class="nav nav-list">
    <li  class="nav-header">
        <% control Level(1) %>
        $Title
        <% end_control %>
    </li>
    <li>
        <a href="#">
            <% control Menu(2) %>	  
            <li class='<% if LinkOrCurrent = current %>active<% end_if %>'>
                <a href="$Link" title="Go to the $Title.XML page">$Title.XML</a>
            </li>
            <% end_control %>
        </a>
    </li>
</ul>
</div>

<div style="padding: 18px 0;">
    
</div>
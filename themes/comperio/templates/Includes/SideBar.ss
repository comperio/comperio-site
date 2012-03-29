<div style="padding: 8px 0;" class="well">
<ul class="nav nav-list">
    <li class="nav-header">
        <% control Level(1) %>
        $Title
        <% end_control %>
    </li>
    <% control Menu(2) %>
        <% if Children %>
            <li class='<% if LinkOrCurrent = current %>active<% end_if %>'>
                <a href="$Link" title="Go to the $Title.XML page">$Title.XML</a>
                <ul>
                    <% control Children %>
                        <li <% if LinkOrCurrent = current %>class='active'<% end_if %>>
                            <a href="$Link" title="Go to the $Title.XML page">$Title.XML</a>
                        </li>
                    <% end_control %>
                </ul>
            </li>
        <% else %>
            <li <% if LinkOrCurrent = current %>class='active'<% end_if %>>
                <a href="$Link" title="Go to the $Title.XML page">$Title.XML</a>
            </li>
        <% end_if %>
    <% end_control %>
</ul>
</div>

<div style="padding: 18px 0;">
    
</div>
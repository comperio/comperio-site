<em class="postMeta">		
    <span rel="tooltip" title="Posted by"><i class="icon-user"></i>
	    <% if CommenterURL %>
			<a href="$CommenterURL.ATT">$Name.XML</a>
		<% else %>
			$Name.XML
		<% end_if %>
	</span>
	<span rel="tooltip" title="Date posted"><i class="icon-calendar"></i>$Created.Nice</span>
</em>

<div class="comment" id="PageComment_$ID">
	<i class="icon-comment"></i>
	<% if bbCodeEnabled %>
		$ParsedBBCode	
	<% else %>
		$Comment.XML	
	<% end_if %>
</div>


<div class="actionLinks clear">
    <div class="btn-group">
        <% if ApproveLink %>
			<a href="$ApproveLink" class="btn btn-mini" title="Approve"><i class="icon-ok"></i>Approve</a>
		<% end_if %>
		<% if SpamLink %>
			<a href="$SpamLink" class="btn btn-mini" title="Mark as spam"><i class="icon-ban-circle"></i>Mark as spam</a>
		<% end_if %>
		<% if HamLink %>
			<a href="$HamLink" class="btn btn-mini" title="Not spam"><i class="icon-ok-circle"></i>Not spam</a>
		<% end_if %>
		<% if DeleteLink %>
			<a href="$DeleteLink" class="btn btn-mini" title="Remove comment"><i class="icon-remove"></i>Remove comment</a>
		<% end_if %>
    </div>
</div>

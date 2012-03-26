<% if IncludeFormTag %>
<form $FormAttributes>
<% end_if %>
	<% if Message %>
	    <div class="alert alert-error" id="{$FormName}_error">
	    	<a href="#" class="close" data-dismiss="alert">&times;</a>
	    	$Message
	    </div>
	<% else %>
		<div class="alert alert-error" id="{$FormName}_error" style="display: none">
	    	<a href="#" class="close" data-dismiss="alert">&times;</a>
	    	$Message
	    </div>
	<% end_if %>
	
	<fieldset>
		<% if Legend %><legend>$Legend</legend><% end_if %> 
		<% control Fields %>
			$FieldHolder
		<% end_control %>
		<div class="clear"><!-- --></div>
	</fieldset>

	<% if Actions %>
	<div class="Actions">
		<% control Actions %>
			$Field
		<% end_control %>
	</div>
	<% end_if %>
<% if IncludeFormTag %>
</form>
<% end_if %>

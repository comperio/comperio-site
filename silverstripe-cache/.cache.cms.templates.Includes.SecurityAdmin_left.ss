<?php
$val .= <<<SSVIEWER
<h2>
SSVIEWER;
$val .=  _t('SecurityAdmin_left.ss.SECGROUPS','Security Groups') ;
 $val .= <<<SSVIEWER
</h2>

<div id="treepanes" style="overflow-y: auto;">
	<ul id="TreeActions">
		<li class="action" id="addgroup"><button>
SSVIEWER;
$val .=  _t('SecurityAdmin_left.ss.CREATE','Create') ;
 $val .= <<<SSVIEWER
</button></li>
		<li class="action" id="deletegroup"><button>
SSVIEWER;
$val .=  _t('SecurityAdmin_left.ss.DEL','Delete') ;
 $val .= <<<SSVIEWER
</button></li>
	</ul>
	<div style="clear:both;"></div>
	<form class="actionparams" id="addgroup_options" style="display: none" action="admin/security/addgroup">
		<input type="hidden" name="ParentID" />
		<input type="hidden" name="SecurityID" value="
SSVIEWER;
$val .=  $item->XML_val("SecurityID",null,true) ;
 $val .= <<<SSVIEWER
" />
		<input class="action" type="submit" value="
SSVIEWER;
$val .=  _t('SecurityAdmin_left.ss.GO','Go') ;
 $val .= <<<SSVIEWER
" />
	</form>
	
	<form class="actionparams" id="deletegroup_options" style="display: none" action="admin/security/deleteitems">
		<p>
SSVIEWER;
$val .=  _t('SecurityAdmin_left.ss.SELECT','Select the pages that you want to delete and then click the button below') ;
 $val .= <<<SSVIEWER
</p>
		
		<input type="hidden" name="csvIDs" />
		<input type="hidden" name="SecurityID" value="
SSVIEWER;
$val .=  $item->XML_val("SecurityID",null,true) ;
 $val .= <<<SSVIEWER
" />
		<input type="submit" value="
SSVIEWER;
$val .=  _t('SecurityAdmin_left.ss.DELGROUPS','Delete the selected groups') ;
 $val .= <<<SSVIEWER
" class="action delete" />
	</form>
	
	<form class="actionparams" id="sortitems_options" style="display: none" action="">
		<p id="sortitems_message" style="margin: 0">
SSVIEWER;
$val .=  _t('SecurityAdmin_left.ss.TOREORG','To reorganise your site, drag the pages around as desired.') ;
 $val .= <<<SSVIEWER
</p>
	</form>

	<div class="checkboxAboveTree">
			<input type="checkbox" id="sortitems" /> <label for="sortitems">
SSVIEWER;
$val .=  _t('SecurityAdmin_left.ss.ENABLEDRAGGING','Allow drag &amp; drop reordering', PR_HIGH) ;
 $val .= <<<SSVIEWER
</label>
	</div>
	
	
SSVIEWER;
$val .=  $item->XML_val("SiteTreeAsUL",null,true) ;
 $val .= <<<SSVIEWER

</div>
SSVIEWER;

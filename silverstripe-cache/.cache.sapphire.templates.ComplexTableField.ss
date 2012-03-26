<?php
$val .= <<<SSVIEWER
<div id="
SSVIEWER;
$val .=  $item->XML_val("id",null,true) ;
 $val .= <<<SSVIEWER
" class="
SSVIEWER;
$val .=  $item->XML_val("CSSClasses",null,true) ;
 $val .= <<<SSVIEWER
 field" href="
SSVIEWER;
$val .=  $item->XML_val("CurrentLink",null,true) ;
 $val .= <<<SSVIEWER
">
  <div class="middleColumn">
		
SSVIEWER;
 if($item->hasValue("Markable")) {  ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
 if($item->hasValue("SelectOptions")) {  ;
 $val .= <<<SSVIEWER

		<ul class="selectOptions">
			<li>
SSVIEWER;
$val .=  _t('TableListField.SELECT', 'Select:') ;
 $val .= <<<SSVIEWER
</li>
		
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("SelectOptions")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

			<li><a rel="
SSVIEWER;
$val .=  $item->XML_val("Key",null,true) ;
 $val .= <<<SSVIEWER
" href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#" title="
SSVIEWER;
$val .=  $item->XML_val("Key",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("Value",null,true) ;
 $val .= <<<SSVIEWER
</a></li>
		
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

		</ul>
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
 if($item->hasValue("ShowPagination")) {  ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
 if($item->hasValue("TotalCount")) {  ;
 $val .= <<<SSVIEWER

	<div class="PageControls">
		
SSVIEWER;
 if($item->hasValue("FirstLink")) {  ;
 $val .= <<<SSVIEWER
<a class="First" href="
SSVIEWER;
$val .=  $item->XML_val("FirstLink",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.VIEWFIRST', 'View first') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
"><img src="cms/images/pagination/record-first.png" alt="
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.VIEWFIRST', 'View first') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" /></a>
		
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER
<span class="First"><img  src="cms/images/pagination/record-first-g.png" alt="
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.VIEWFIRST', 'View first') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" /></span>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 if($item->hasValue("PrevLink")) {  ;
 $val .= <<<SSVIEWER
<a class="Prev" href="
SSVIEWER;
$val .=  $item->XML_val("PrevLink",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.VIEWPREVIOUS', 'View previous') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
"><img src="cms/images/pagination/record-prev.png" alt="
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.VIEWPREVIOUS', 'View previous') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" /></a>
		
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER
<img class="Prev" src="cms/images/pagination/record-prev-g.png" alt="
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.VIEWPREVIOUS', 'View previous') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" />
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		<span class="Count">
			
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.DISPLAYING', 'Displaying') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("FirstItem",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.TO', 'to') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("LastItem",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.OF', 'of') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("TotalCount",null,true) ;
 $val .= <<<SSVIEWER

		</span>
		
SSVIEWER;
 if($item->hasValue("NextLink")) {  ;
 $val .= <<<SSVIEWER
<a class="Next" href="
SSVIEWER;
$val .=  $item->XML_val("NextLink",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.VIEWNEXT', 'View next') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
"><img src="cms/images/pagination/record-next.png" alt="
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.VIEWNEXT', 'View next') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" /></a>
		
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER
<img class="Next" src="cms/images/pagination/record-next-g.png" alt="
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.VIEWNEXT', 'View next') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" />
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 if($item->hasValue("LastLink")) {  ;
 $val .= <<<SSVIEWER
<a class="Last" href="
SSVIEWER;
$val .=  $item->XML_val("LastLink",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.VIEWLAST', 'View last') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
"><img src="cms/images/pagination/record-last.png" alt="
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.VIEWLAST', 'View last') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" /></a>
		
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER
<span class="Last"><img src="cms/images/pagination/record-last-g.png" alt="
SSVIEWER;
$val .=  _t('TableListField_PageControls.ss.VIEWLAST', 'View last') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" /></span>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		
	</div>
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	<table class="data">
		<thead>
			<tr>
				
SSVIEWER;
 if($item->hasValue("Markable")) {  ;
 $val .= <<<SSVIEWER
<th width="18">&nbsp;</th>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Headings")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

				<th class="
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
">
					
SSVIEWER;
 if($item->hasValue("IsSortable")) {  ;
 $val .= <<<SSVIEWER

						<span class="sortTitle">
							<a href="
SSVIEWER;
$val .=  $item->XML_val("SortLink",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</a>
						</span>
						<span class="sortLink 
SSVIEWER;
 if($item->hasValue("SortBy")) {  ;
 $val .= <<<SSVIEWER

SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER
sortLinkHidden
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
">
							<a href="
SSVIEWER;
$val .=  $item->XML_val("SortLink",null,true) ;
 $val .= <<<SSVIEWER
">
								
SSVIEWER;
 if($item->XML_val("SortDirection",null,true) == "desc") {  ;
 $val .= <<<SSVIEWER

								<img src="cms/images/bullet_arrow_up.png" alt="
SSVIEWER;
$val .=  _t('ComplexTableField.ss.SORTASC', 'Sort ascending') ;
 $val .= <<<SSVIEWER
" />
								
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

								<img src="cms/images/bullet_arrow_down.png" alt="
SSVIEWER;
$val .=  _t('ComplexTableField.ss.SORTDESC', 'Sort descending') ;
 $val .= <<<SSVIEWER
" />
								
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

							</a>
							&nbsp;
						</span>
					
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

						
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

				</th>
				
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Actions")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER
<th width="18">&nbsp;</th>
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

			</tr>
		</thead>
		<tfoot>
			
SSVIEWER;
 if($item->hasValue("HasSummary")) {  ;
 $val .= <<<SSVIEWER

			<tr class="summary">
				
SSVIEWER;
 if($item->hasValue("Markable")) {  ;
 $val .= <<<SSVIEWER
<th width="18">&nbsp;</th>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

				<td><i>
SSVIEWER;
$val .=  $item->XML_val("SummaryTitle",null,true) ;
 $val .= <<<SSVIEWER
</i></td>
				
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("SummaryFields")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

					<td
SSVIEWER;
 if($item->hasValue("Function")) {  ;
 $val .= <<<SSVIEWER
 class="
SSVIEWER;
$val .=  $item->XML_val("Function",null,true) ;
 $val .= <<<SSVIEWER
"
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
>
SSVIEWER;
$val .=  $item->XML_val("SummaryValue",null,true) ;
 $val .= <<<SSVIEWER
</td>
				
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Actions")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER
<td width="18">&nbsp;</td>
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

			</tr>
			
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
 if($item->hasValue("Can",array("add"))) {  ;
 $val .= <<<SSVIEWER

			<tr>
				
SSVIEWER;
 if($item->hasValue("Markable")) {  ;
 $val .= <<<SSVIEWER
<td width="18">&nbsp;</td>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

				<td colspan="
SSVIEWER;
$val .=  $item->XML_val("ItemCount",null,true) ;
 $val .= <<<SSVIEWER
">
					<input type="hidden" id="
SSVIEWER;
$val .=  $item->XML_val("id",null,true) ;
 $val .= <<<SSVIEWER
_PopupHeight" value="
SSVIEWER;
$val .=  $item->XML_val("PopupHeight",null,true) ;
 $val .= <<<SSVIEWER
" disabled="disabled">
					<input type="hidden" id="
SSVIEWER;
$val .=  $item->XML_val("id",null,true) ;
 $val .= <<<SSVIEWER
_PopupWidth" value="
SSVIEWER;
$val .=  $item->XML_val("PopupWidth",null,true) ;
 $val .= <<<SSVIEWER
" disabled="disabled">
					<a class="popuplink addlink" href="
SSVIEWER;
$val .=  $item->XML_val("AddLink",null,true) ;
 $val .= <<<SSVIEWER
" alt="add"><img src="cms/images/add.gif" alt="
SSVIEWER;
$val .=  _t('ComplexTableField.ss.ADDITEM', 'add') ;
 $val .= <<<SSVIEWER
" />
						
SSVIEWER;
$val .=  sprintf(_t('ComplexTableField.ss.ADDITEM', 'Add %s', PR_MEDIUM, 'Add [name]'),$item->XML_val("Title",null,true)) ;
 $val .= <<<SSVIEWER

					</a>
				</td>
				
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Actions")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER
<td width="18">&nbsp;</td>
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

			</tr>
			
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		</tfoot>
		<tbody>
			
SSVIEWER;
 if($item->hasValue("Items")) {  ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Items")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

				<tr id="record-
SSVIEWER;
$val .=  $item->obj("Parent",null,true)->XML_val("id",null,true) ;
 $val .= <<<SSVIEWER
-
SSVIEWER;
$val .=  $item->XML_val("ID",null,true) ;
 $val .= <<<SSVIEWER
"
SSVIEWER;
 if($item->hasValue("HighlightClasses")) {  ;
 $val .= <<<SSVIEWER
 class="
SSVIEWER;
$val .=  $item->XML_val("HighlightClasses",null,true) ;
 $val .= <<<SSVIEWER
"
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
>
	
SSVIEWER;
 if($item->hasValue("Markable")) {  ;
 $val .= <<<SSVIEWER
<td width="16" class="
SSVIEWER;
$val .=  $item->XML_val("SelectOptionClasses",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("MarkingCheckbox",null,true) ;
 $val .= <<<SSVIEWER
</td>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Fields")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

		<td class="field-
SSVIEWER;
$val .=  $item->obj("Title",null,true)->XML_val("HTMLATT",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("FirstLast",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("Value",null,true) ;
 $val .= <<<SSVIEWER
</td>
	
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Actions")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

		<td width="16" class="action">
			
SSVIEWER;
 if($item->hasValue("IsAllowed")) {  ;
 $val .= <<<SSVIEWER

			<a class="
SSVIEWER;
$val .=  $item->XML_val("Class",null,true) ;
 $val .= <<<SSVIEWER
" href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
"
SSVIEWER;
 if($item->hasValue("TitleText")) {  ;
 $val .= <<<SSVIEWER
 title="
SSVIEWER;
$val .=  $item->XML_val("TitleText",null,true) ;
 $val .= <<<SSVIEWER
"
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
>
				
SSVIEWER;
 if($item->hasValue("Icon")) {  ;
 $val .= <<<SSVIEWER
<img src="
SSVIEWER;
$val .=  $item->XML_val("Icon",null,true) ;
 $val .= <<<SSVIEWER
" alt="
SSVIEWER;
$val .=  $item->XML_val("Label",null,true) ;
 $val .= <<<SSVIEWER
" />
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("Label",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

			</a>
			
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

				<span class="disabled">
					
SSVIEWER;
 if($item->hasValue("IconDisabled")) {  ;
 $val .= <<<SSVIEWER
<img src="
SSVIEWER;
$val .=  $item->XML_val("IconDisabled",null,true) ;
 $val .= <<<SSVIEWER
" alt="
SSVIEWER;
$val .=  $item->XML_val("Label",null,true) ;
 $val .= <<<SSVIEWER
" />
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("Label",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

				</span>
			
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		</td>
	
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

</tr>
			
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

				<tr class="notfound">
					
SSVIEWER;
 if($item->hasValue("Markable")) {  ;
 $val .= <<<SSVIEWER
<th width="18">&nbsp;</th>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

					<td colspan="
SSVIEWER;
$val .=  $item->obj("Headings",null,true)->XML_val("Count",null,true) ;
 $val .= <<<SSVIEWER
"><i>
SSVIEWER;
$val .=  _t('ComplexTableField.ss.NOITEMSFOUND', 'No items found') ;
 $val .= <<<SSVIEWER
</i></td>
					
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Actions")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER
<td width="18">&nbsp;</td>
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

				</tr>
			
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		</tbody>
	</table>
	
SSVIEWER;
 if($item->hasValue("Utility")) {  ;
 $val .= <<<SSVIEWER

		<div class="utility">
			
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Utility")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

				<span class="item"><a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" target="_blank">
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</a></span>
			
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

		</div>
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	</div>
</div>

SSVIEWER;

<?php
$val .= <<<SSVIEWER
<!-- <div class="title"><div style="background-image : url(cms/images/panels/MySite.png)">My Site</div></div> -->

	<div id="treepanes">
		<h2 id="heading_sitetree" class="selected">
			<img id="sitetree_toggle_closed" src="sapphire/images/toggle-closed.gif" alt="+" style="display:none;" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.OPENBOX','click to open this box') ;
 $val .= <<<SSVIEWER
" />
			<img id="sitetree_toggle_open" src="sapphire/images/toggle-open.gif" alt="-" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CLOSEBOX','click to close box') ;
 $val .= <<<SSVIEWER
" />
			
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SITECONTENT TITLE','Page Tree',PR_HIGH) ;
 $val .= <<<SSVIEWER

		</h2>
		<div id="sitetree_holder">
			<div id="TreeTools">
				<ul id="TreeActions">
					<li class="action" id="addpage"><button>
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CREATE','Create',PR_HIGH) ;
 $val .= <<<SSVIEWER
</button></li>
					<li class="action" id="search"><button>
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SEARCH','Search',PR_HIGH) ;
 $val .= <<<SSVIEWER
</button></li>
					<li class="action" id="batchactions"><button>
SSVIEWER;
$val .=  _t('CMSMain_left.ss.BATCHACTIONS','Batch Actions',PR_HIGH) ;
 $val .= <<<SSVIEWER
</button></li>
				</ul>
				<div style="clear:both;"></div>
				
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("AddPageOptionsForm")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

				<form class="actionparams" id="
SSVIEWER;
$val .=  $item->XML_val("FormName",null,true) ;
 $val .= <<<SSVIEWER
" style="display: none" action="
SSVIEWER;
$val .=  $item->XML_val("FormAction",null,true) ;
 $val .= <<<SSVIEWER
">
					
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Fields")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
$val .=  $item->XML_val("FieldHolder",null,true) ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

					<div>
						<input class="action" type="submit" value="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.GO','Go') ;
 $val .= <<<SSVIEWER
" />
					</div>
				</form>
				
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

				<form class="actionparams" style="display: none" id="search_options" action="admin/filterSiteTree">
				<div>
					<input type="hidden" id="SiteTreeIsFiltered" value="0" />
					
					<div id="SearchBox">
						<div class="SearchCriteria">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.FILTERLABELTEXT', 'Text') ;
 $val .= <<<SSVIEWER
:</div>
						<input type="text" id="SiteTreeSearchTerm" class='SearchCriteria' name="SiteTreeSearchTerm" />
					</div>
					
					<div id="ContainerSiteTreeFilterDate" class="SearchCriteriaContainer" style="display:none">
						<div id="TextSiteTreeFilterDate" class="SearchCriteria">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.EDITEDSINCE','Edited Since') ;
 $val .= <<<SSVIEWER
:</div>
						<div id="InputSiteTreeFilterDate">
SSVIEWER;
$val .=  $item->XML_val("SiteTreeFilterDateField",null,true) ;
 $val .= <<<SSVIEWER
</div>
					</div>
					<div id='ContainerSiteTreeFilterClassName' class='SearchCriteriaContainer' style="display:none">
						<div id="TextSiteTreeFilterClassName" class="SearchCriteria">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.FILTERLABELPAGETYPE', 'Page type') ;
 $val .= <<<SSVIEWER
: </div>
						<div id="InputSiteTreeFilterClassName">
SSVIEWER;
$val .=  $item->XML_val("SiteTreeFilterPageTypeField",null,true) ;
 $val .= <<<SSVIEWER
</div>
					</div>

					
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("SiteTreeFilterOptions")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

						<div id="Container
SSVIEWER;
$val .=  $item->XML_val("Column",null,true) ;
 $val .= <<<SSVIEWER
" class="SearchCriteriaContainer" style="display:none">
							<div id="Text
SSVIEWER;
$val .=  $item->XML_val("Column",null,true) ;
 $val .= <<<SSVIEWER
" class="SearchCriteria">
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
:</div>
							<input id="Input
SSVIEWER;
$val .=  $item->XML_val("Column",null,true) ;
 $val .= <<<SSVIEWER
" name="
SSVIEWER;
$val .=  $item->XML_val("Column",null,true) ;
 $val .= <<<SSVIEWER
" class="SearchCriteria" />
						</div>
					
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

					
					<div id='SearchControls'>
						<select id="SiteTreeFilterAddCriteria">
							<option value="">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.ADDSEARCHCRITERIA','Add Criteria') ;
 $val .= <<<SSVIEWER
</option>
							<option value="SiteTreeFilterDate">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.EDITEDSINCE','Edited Since') ;
 $val .= <<<SSVIEWER
</option>
							<option value="SiteTreeFilterClassName">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.FILTERLABELPAGETYPE', 'Page type') ;
 $val .= <<<SSVIEWER
</option>
							
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("SiteTreeFilterOptions")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

		        				<option value="
SSVIEWER;
$val .=  $item->XML_val("Column",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</option>
							
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

						</select>
						<div id="searchIndicator">&nbsp;</div>
						<input type="submit" id="SiteTreeSearchClearButton" class="action" value="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CLEAR','Clear') ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CLEARTITLE','Clear the search and view all items') ;
 $val .= <<<SSVIEWER
" />
						<input type="submit" id="SiteTreeSearchButton" class="action" value="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SEARCH','Search') ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SEARCHTITLE','Search through URL, Title, Menu Title, &amp; Content') ;
 $val .= <<<SSVIEWER
" />
					</div>
				</div>
				</form>
			
			<div id="batchactionsforms" style="display: none">
				<form class="actionparams" style="border:0" id="batchactions_options" action="">
					
SSVIEWER;
$val .=  $item->XML_val("BatchActionParameters",null,true) ;
 $val .= <<<SSVIEWER

				
					<p>
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SELECTPAGESACTIONS','Select the pages that you want to change &amp; then click an action:') ;
 $val .= <<<SSVIEWER
</p>

					<input type="hidden" name="csvIDs" />
					<input type="hidden" name="SecurityID" value="
SSVIEWER;
$val .=  $item->XML_val("SecurityID",null,true) ;
 $val .= <<<SSVIEWER
" />
					<div id="actionParams"></div>
					<div>
						<select id="choose_batch_action">
							
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("BatchActionList")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

							<option value="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" class="{doingText:'
SSVIEWER;
$val .=  $item->XML_val("DoingText",null,true) ;
 $val .= <<<SSVIEWER
'}">
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</option>
							
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

						</select>
						<input id="batchactions_go" type="submit" class="action" value="Go" />
					</div>
				</form>
			</div>
			<div class="checkboxAboveTree noBottomBorder">
				
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SHOWITEMS', 'Show:') ;
 $val .= <<<SSVIEWER
 <select id="siteTreeFilterList">
					
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("SiteTreeFilters")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

					<option value="
SSVIEWER;
$val .=  $item->XML_val("ClassName",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</option>
					
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

				</select> <img id="siteTreeFilterActionIndicator" style="display:none" src="cms/images/network-save.gif">
			</div>
			
SSVIEWER;
 if($item->hasValue("CanOrganiseSitetree")) {  ;
 $val .= <<<SSVIEWER

			<div class="checkboxAboveTree">
				<img id="checkboxActionIndicator" src="cms/images/network-save.gif">
				<div>
					<input type="checkbox" id="sortitems" />
					<label for="sortitems">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.ENABLEDRAGGING','Allow drag &amp; drop reordering', PR_HIGH) ;
 $val .= <<<SSVIEWER
</label>
				</div>
			</div>
			
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
 if($item->hasValue("IsTranslatableEnabled")) {  ;
 $val .= <<<SSVIEWER

			<div id="LangSelector_holder">
				Language: 
SSVIEWER;
$val .=  $item->XML_val("LangSelector",null,true) ;
 $val .= <<<SSVIEWER

			</div>
			
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


			</div>
			<div id="sitetree_ul">
				
SSVIEWER;
$val .=  $item->XML_val("SiteTreeAsUL",null,true) ;
 $val .= <<<SSVIEWER

			</div>
		</div>

		<div id="publication_key">
			
SSVIEWER;
$val .=  _t('CMSMain_left.ss.KEY','Key:') ;
 $val .= <<<SSVIEWER

			<ins style="cursor: help" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.ADDEDNOTPUB','Added to the draft site and not published yet') ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.NEW','new') ;
 $val .= <<<SSVIEWER
</ins>
			<del style="cursor: help" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.DELETEDSTILLLIVE','Deleted from the draft site but still on the live site') ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.DEL','deleted') ;
 $val .= <<<SSVIEWER
</del>
			<span style="cursor: help" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.EDITEDNOTPUB','Edited on the draft site and not published yet') ;
 $val .= <<<SSVIEWER
" class="modified">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CHANGED','changed') ;
 $val .= <<<SSVIEWER
</span>
			<span style="cursor: help" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.NOTINMENU','Excluded from navigation menus') ;
 $val .= <<<SSVIEWER
" class="notinmenu">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.HIDDEN','hidden') ;
 $val .= <<<SSVIEWER
</span>
			
		</div>		
		
		<!--
		<div id="search_holder" style="display:none">
			<h2>Search</h2>
			<div class="unitBody"></div>
		</div>
		-->

		<h2 id="heading_versions">
			<img id="versions_toggle_closed" src="sapphire/images/toggle-closed.gif" alt="+" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.OPENBOX') ;
 $val .= <<<SSVIEWER
" />
			<img id="versions_toggle_open" src="sapphire/images/toggle-open.gif" alt="-" style="display:none;" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CLOSEBOX') ;
 $val .= <<<SSVIEWER
" /> 
			
SSVIEWER;
$val .=  _t('CMSMain_left.ss.PAGEVERSIONH','Page Version History') ;
 $val .= <<<SSVIEWER

		</h2>
		<div class="listpane" id="versions_holder" style="display:none">
			<p class="pane_actions" id="versions_actions">
				
				<span class="versionChoice">
					<input type="checkbox" id="versions_comparemode" /> <label for="versions_comparemode">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.COMPAREMODE','Compare mode (click 2 below)') ;
 $val .= <<<SSVIEWER
</label>
				</span>
				<span class="versionChoice">
					<input type="checkbox" id="versions_showall" /> <label for="versions_showall">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SHOWUNPUB','Show unpublished versions') ;
 $val .= <<<SSVIEWER
</label>
				</span>
			
			</p>
			
			<div class="unitBody">
			</div>
		</div>

		<h2 id="heading_reports">
			<img id="reports_toggle_closed" src="sapphire/images/toggle-closed.gif" alt="+" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.OPENBOX') ;
 $val .= <<<SSVIEWER
" />
			<img id="reports_toggle_open" src="sapphire/images/toggle-open.gif" alt="-" style="display:none;" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CLOSEBOX') ;
 $val .= <<<SSVIEWER
" /> 
			
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SITEREPORTS','Site Reports') ;
 $val .= <<<SSVIEWER

		</h2>
		
SSVIEWER;
$val .=  $item->XML_val("ReportFormParameters",null,true) ;
 $val .= <<<SSVIEWER

		<div class="listpane" id="reports_holder" style="display:none">
			<p id="ReportSelector_holder">
				
SSVIEWER;
$val .=  $item->XML_val("ReportSelector",null,true) ;
 $val .= <<<SSVIEWER

				<input class="action" type="submit" id="report_select_go" onclick="$('reports_holder').showreport();" value="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.GO','Go') ;
 $val .= <<<SSVIEWER
" />
			</p>
			<div class="unitBody"></div>
		</div>
	</div>

SSVIEWER;

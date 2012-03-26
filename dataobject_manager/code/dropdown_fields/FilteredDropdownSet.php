<?php

class FilteredDropdownSet extends FieldGroup {
	
	public $filteredField;
	
	public $returnKey;
	
	public $returnLabel;
	
	public $sourceClass;
	
	public function __construct($children = array(), $filteredField = "ParentID", $sourceClass = "SiteTree", $returnKey = "ID", $returnLabel = "Title") {
		parent::__construct($children);
		$this->filteredField = $filteredField;
		$this->returnKey = $returnKey;
		$this->returnLabel = $returnLabel;
		$this->sourceClass = $sourceClass;
		$name = "";
		foreach($this->children as $c) {
			if($c instanceof DropdownField) {
				$name .= $c->Name();
			}
		}
		$this->name = $name;
	}
	
	public function hasData() {return true;}

	
	public function FieldHolder() {
		Requirements::javascript(THIRDPARTY_DIR.'/jquery/jquery.js');
		Requirements::javascript(THIRDPARTY_DIR.'/jquery-metadata/jquery.metadata.js');
		Requirements::javascript('dataobject_manager/code/dropdown_fields/javascript/filtered_dropdown_set.js');
		foreach($this->children as $child) {
			$meta = "'updateLink': '".$this->Link('update')."'";
			if($str = $child->getEmptyString()) {
				$meta .= ",'emptyString': '".$child->getEmptyString()."'";
			}
			$child->addExtraClass("{".$meta."}");
		}
		return parent::FieldHolder();
	}
	
	
	public function update(SS_HTTPRequest $r) {
		$ret = array();
		$filter = null;
		if($filter = $r->requestVar('q')) {
			$filter = "{$this->filteredField} = '".Convert::raw2sql($filter)."'";
		}
		$results = DataObject::get($this->sourceClass, $filter);
		if($results) {
			foreach($results as $r) {
				$ret[$r->{$this->returnKey}] = $r->{$this->returnLabel};
			}				
		}
		return Convert::array2json($ret);
	}

}
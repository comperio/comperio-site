<?php

/**
 * A Forum Category is applied to each forum page in 
 * a has one relation. These will be editable via the
 * {@link ComplexTableField} on the Forum object 
 *
 * @package forum
 */

class ForumCategory extends DataObject {
	
	static $db = array(
		'Title' => 'Varchar(100)',
		'StackableOrder' => 'Varchar(2)'
	);
	
	static $has_one = array(
		'ForumHolder' => 'ForumHolder'
	);
	
	static $has_many = array(
		'Forums' => 'Forum'
	);
	
	static $many_many = array();
	
	static $belongs_many_many = array();
	
	static $defaults = array();
	
	static $default_sort = "\"StackableOrder\" DESC";
	
	/**
	 * Get the fields for the category edit/ add
	 * in the complex table field popup window. 
	 * 
	 * @return FieldSet
	 */
	function getCMSFields_forPopup() {
		
		// stackable order is a bit of a workaround for sorting in complex table
		$values = array();
		for($i = 1; $i<100; $i++) {
			$values[$i] = $i;
		}
		return new FieldSet(
			new TextField('Title'),
			new DropdownField('StackableOrder', 'Select the Ordering (99 top of the page, 1 bottom)', $values)
		);
	}
}
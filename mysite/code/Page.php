<?php
class Page extends SiteTree {

	public static $db = array(
	);

	static $has_one = array(
        'ContentWidgetArea' => 'WidgetArea',
    );

    function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab("Root.Content.ContentWidget", new WidgetAreaEditor('ContentWidgetArea'));
        return $fields;
    }

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work

	}
    
    function results($data, $form){
        $data = array(
            'Results' => $form->getResults(),
            'Query' => $form->getSearchQuery(),
            'Title' => 'Search Results'
        );
        $this->Query = $form->getSearchQuery();
     
        return $this->customise($data)->renderWith(array('Page_results', 'Page'));
    }


    public function getAddThisWidget(){
    	$widget = new addthisWidget;
    	$widget->AddThisType = 'count';

    	return $widget;

    }
}
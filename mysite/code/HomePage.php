<?php
class HomePage extends Page {

	public static $db = array(
	);

	public static $has_one = array(
	);

}
class HomePage_Controller extends Page_Controller {

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

    /**
     * Returns the $limit last posts in the blog
     *
     * @param int $limit
     * @return DataObjectSet
     */
    public function LastPosts($limit = 1)
    {	
    	$blogHolder = DataObject::get_one('BlogTree', 'BlogTree_Live.Name=\'Comperio Blog\'');
        return DataObject::get('BlogEntry', 'SiteTree_Live.ParentID = '.$blogHolder->ID, 'Date DESC', '', $limit);
    }
}
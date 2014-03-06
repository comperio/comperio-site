<?php
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
class addthisWidget extends Widget {
    /**
     * @var string Default widget title, inherited from _config.php file
     * @see _config.php
     */
    public static $title = ADDTHISTITLE;

    /**
     * @var string Default Admin Widget title.
     */
    static $cmsTitle = 'AddThis Button';

    /**
     * @var string Default Admin Widget description.
     */
    static $description = 'Places an AddThis button into your page';

    /**
     * @var string Default Admin Widget description.
     * @see _config.php
     */
    public $username = ADDTHISUSERNAME;


    /**
     * @var string Fallback AddThis button type.just in case!
     * @see _config.php
     */
    public $addThisType = 'popup';

    /**
     * @var array Db Schema
     * @see _config.php
     */
    static $db = array(
            'WidgetTitle' => 'Varchar',
            'AddThisType' => 'Varchar',
    );

    /*
     * Push fields into the admin Widget control
     */
    function getCMSFields() {

        /*
         * Generate the options for the AddThis button types in Widget admin
         */
        $addthisTypePriorities = array(
                'compact'       => 'Compact',
                'compact_pop'   => 'Compact with popular Social sites',
                'count'         => 'FaceBook and Twitter counts',
                'popup'         => 'Full popup bar',
        );

        return new FieldSet(
                new TextField('WidgetTitle', 'Widget Title'),
                new DropdownField("AddThisType", 'AddThisType', $addthisTypePriorities)
        );
    }

    /*
     * Get the widgets title
     */
    function Title() {
            return $this->WidgetTitle ? $this->WidgetTitle : self::$title;
    }

    /*
     * controller to fetch the db data for this Widget
     */
    public function AddThisType() {
           $output = new DataObjectSet();
           return $this->AddThisType ? $this->AddThisType : self::$addThisType;
    }
}
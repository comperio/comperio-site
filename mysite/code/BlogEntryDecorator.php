<?php
class BlogEntryDecorator extends SiteTreeDecorator {
    function extraStatics() {
        return array(
            'has_one' => array(
                'AttachedImage'=>'Image'
            )
        );
    }
     
    function updateCMSFields(& $fields){
        $fields->addFieldToTab('Root.Content.Image', new ImageField('AttachedImage','An image for this Blog Entry'));
    }
}
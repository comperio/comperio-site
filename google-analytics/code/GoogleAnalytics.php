<?php

class GoogleAnalytics extends DataObjectDecorator
{
        function extraStatics(){
                return array(
                        'db' => array(
                                'GoogleAnalyticsAccountID' => 'Text'
                        )
                );
        }
         
        public function updateCMSFields(FieldSet &$fields) {
                $fields->addFieldToTab('Root.Main', new TextField('GoogleAnalyticsAccountID', 'Google Analytics Code (Example: UA-XXXXXXXX-X)', '', 13));
        }
         
        function contentControllerInit($controller) {
        }
         
}

<?php
     
    class GoogleAnalyticsExtender extends DataObjectDecorator
    {
            function contentControllerInit($controller) {
            $accountId = $this->owner->SiteConfig->GoogleAnalyticsAccountID;

    if (preg_match("/UA-[0-9]{7,}-[0-9]{1,}/", $accountId)) {
      Requirements::customScript(<<<JS
                              var _gaq = _gaq || [];
                              _gaq.push(['_setAccount', '$accountId']);
                              _gaq.push(['_trackPageview']);

                              (function() {
                                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
                              })();
JS
      );
    }
  }
    }

<% require themedCSS(addThisWidget) %>
<div id="addThisWidget">
<% if addThisType = compact_pop %>
    <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style">
            <a href="http://www.addthis.com/bookmark.php?v=250&amp;username=$username" class="addthis_button_compact">Share</a>
            <span class="addthis_separator">|</span>
            <a class="addthis_button_preferred_1"></a>
            <a class="addthis_button_preferred_2"></a>
            <a class="addthis_button_preferred_3"></a>
            <a class="addthis_button_preferred_4"></a>
        </div>
        <script type="text/javascript">var addthis_config = {"data_track_clickback":true};</script>
        <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#username=$username"></script>
    <!-- AddThis Button END -->
<% end_if %>

<% if addThisType = compact %>
    <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style">
            <a href="http://www.addthis.com/bookmark.php?v=250&amp;username=$username" class="addthis_button_compact">Share</a>
        </div>
        <script type="text/javascript">var addthis_config = {"data_track_clickback":true};</script>
        <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#username=$username"></script>
    <!-- AddThis Button END -->
<% end_if %>

<% if addThisType = count %>
    <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style">
            <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
            <a class="addthis_button_tweet"></a>
            <a class="addthis_counter addthis_pill_style"></a>
        </div>
        <script type="text/javascript">var addthis_config = {"data_track_clickback":true};</script>
        <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#username=$username"></script>
    <!-- AddThis Button END -->
<% end_if %>

<% if addThisType = popup %>
    <!-- AddThis Button BEGIN -->
        <a class="addthis_button" href="http://www.addthis.com/bookmark.php?v=250&amp;username=$username"><img src="http://s7.addthis.com/static/btn/v2/lg-share-en.gif" width="125" height="16" alt="Bookmark and Share" style="border:0"/></a>
        <script type="text/javascript">var addthis_config = {"data_track_clickback":true};</script>
        <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#username=$username"></script>
    <!-- AddThis Button END -->
<% end_if %>
</div>
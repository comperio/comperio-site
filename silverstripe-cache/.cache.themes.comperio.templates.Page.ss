<?php
$val .= <<<SSVIEWER
<!DOCTYPE html>
<html>
    <head>
        
SSVIEWER;
$val .=  SSViewer::get_base_tag($val); ;
 $val .= <<<SSVIEWER

        
SSVIEWER;
 Requirements::css("themes/comperio/css/bootstrap.css"); ;
 $val .= <<<SSVIEWER

        
SSVIEWER;
 Requirements::css("themes/comperio/css/comperio.css"); ;
 $val .= <<<SSVIEWER

        <!--[if !IE 7]>
            <style type="text/css">
                #wrap {display:table;height:100%}
            </style>
        <![endif]-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>

    </head>
    <body>
        <div class="wrapper">
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
    <div class="container">
        <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
        <!-- Be sure to leave the brand out there if you want it shown -->
        <a class="brand" href="
SSVIEWER;
$val .=  $item->XML_val("BaseUrl",null,true) ;
 $val .= <<<SSVIEWER
"><img src="themes/comperio/img/comperiotrx40.png" alt="Comperio srl" title="Comperio srl" /></a>

        <ul class="nav nav-pills">
            
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Menu", array("1"))) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER
	  
            <li class='
SSVIEWER;
 if($item->XML_val("LinkOrCurrent",null,true) == "current") {  ;
 $val .= <<<SSVIEWER
active
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
 if($item->hasValue("Children")) {  ;
 $val .= <<<SSVIEWER
dropdown
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
'>
                    <a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" title="Go to the 
SSVIEWER;
$val .=  $item->obj("Title",null,true)->XML_val("XML",null,true) ;
 $val .= <<<SSVIEWER
 page" 
SSVIEWER;
 if($item->hasValue("Children")) {  ;
 $val .= <<<SSVIEWER
class="dropdown-toggle" data-toggle="dropdown"
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
>
SSVIEWER;
$val .=  $item->obj("MenuTitle",null,true)->XML_val("XML",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 if($item->hasValue("Children")) {  ;
 $val .= <<<SSVIEWER
<b class="caret"></b>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
</a>
                    
SSVIEWER;
 if($item->hasValue("Children")) {  ;
 $val .= <<<SSVIEWER

                    <ul class="dropdown-menu">
                        
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Children")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

                            <li><a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->obj("MenuTitle",null,true)->XML_val("XML",null,true) ;
 $val .= <<<SSVIEWER
</a></li>
                        
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

                    </ul>
                    
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

                    
                </li>
            
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

            
        </ul>

        <ul class="nav pull-right">
        
SSVIEWER;
 if($item->hasValue("CurrentMember")) {  ;
 $val .= <<<SSVIEWER

            <li><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Ciao 
SSVIEWER;
$val .=  $item->obj("CurrentMember",null,true)->XML_val("FirstName",null,true) ;
 $val .= <<<SSVIEWER
</a></li>
        
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

            <li><a href="admin">Login</a></li>
        
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

        </ul>

        <!-- Everything you want hidden at 940px or less, place within here -->
        <div class="nav-collapse">
            <!-- .nav, .navbar-search, .navbar-form, etc -->

        </div>
    </div>
</div>
        </div>
        
            
                
SSVIEWER;
$val .=  $item->XML_val("Layout",null,true) ;
 $val .= <<<SSVIEWER

                
         <div class="push"></div>
        </div>
        <footer>
    <div class="container">
        <div class="row">
            <div class="span2">
                <h6>About</h6>
                <ul class="unstyled">
                    <li><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Mission</a></li>
                    <li><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Team</a></li>
                    <li><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Partners</a></li>
                    <li><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Clients</a></li>
                    <li><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Contacts</a></li>
                </ul>
            </div>
            <div class="span2">
                <h6>Solutions</h6>
                <ul class="unstyled">
                    <li><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">ClavisNG</a></li>
                    <li><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">DiscoveryNG</a></li>
                    <li><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">BookmarkWeb</a></li>
                    <li><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">RFID</a></li>
                </ul>
            </div>
            <div class="span3" id="SearchForm" method="get">
                <h6>Cerca nel sito</h6>
                <form class="form-search" action="
SSVIEWER;
$val .=  $item->XML_val("URLSegment",null,true) ;
 $val .= <<<SSVIEWER
/SearchForm">
                    <input type="text" class="input-medium search-query" name="Search">
                    <button type="submit" class="btn" name="action_results" title="Search">
                        <i class="icon-search"></i>
                        Search
                    </button>
                </form>
                <!--
                <form class="navbar-search pull-right">
                    <input id="SearchForm_SearchForm_Search" type="text" class="search-query" placeholder="Search" name="Search">
                    <input type="submit" value="Go" name="action_results" id="SearchForm_SearchForm_action_results" class="action">
                </form>-->
            </div>
            <div class="span4 offset1 contacts">
                <p>Comperio Srl.<br/>
                    [lat. compĕrĭo : scoprire, trovare, apprendere, conoscere]<br/>
                    Via Nazionale, 154 - 35048 Stanghella (PD)[Sede legale]<br/>
                    Via L.Soldati, 127 Fiesso Umbertiano - 45024 Rovigo (Italy)<br/>
                    Via Torrossa, 16 - 36043 Camisano - Vicenza (Italy)<br/>
                    Phone: +39 0425 072294 - (toll free) 800 090 349<br/>
                    Fax: +39 0425 1662008<br/>
                    P.IVA (VAT): IT01162350290</p>
            </div>
        </div>
    </div>
    <div id="footer-floor">
        <div class="container">
            <div class="row">
                <div class="span9">
                    <h3 id="phone">
                        +39 0425 072294 - <a href="mailto:info@comperio.it">info@comperio.it</a>
                    </h3>
                    <p>
                        &copy; 2011 <a title="some" href="http://www.comperio.it">Comperio srl</a>. Some Rights Reserved.
                        &nbsp;<a href="/terms">Terms</a>&nbsp;&amp;&nbsp;<a href="/privacy">Privacy</a>.
                    </p>
                </div>
                <div class="span3">
                    <h4>Stay in touch:</h4>
                </div>                        
            </div>
        </div>
    </div>
</footer>

        <script type="text/javascript" src="themes/comperio/js/jquery-1.7.js"></script>
        <script type="text/javascript" src="themes/comperio/js/bootstrap.js"></script>

        <script type="text/javascript">
            (function($) {
                if ($('#myCarousel').length > 0){
                    $('#myCarousel').carousel('pause');
                };
                if ($('.postMeta').length > 0){
                    $(".postMeta").tooltip({
                        selector: "li[rel=tooltip]",
                        placement: "left"
                    });
                };

                if ($('.alert').length > 0){
                    $(".alert").alert();
                };
                
                $('.announce .thumbnails li').popover({
                    selector: "div[rel=popover]",
                    placement: "top"
                });

                // On window load. This waits until images have loaded which is essential
                $(window).load(function(){
                    
                    // Fade in images so there isn't a color "pop" document load and then on window load
                    $(".thumbnail .customer").fadeIn(10);
                    
                    // clone image
                    $('.thumbnail .customer').each(function(){
                        var el = $(this);
                        el.css({"position":"absolute"}).wrap("<div class='img_wrapper' style='display: inline-block'>").clone().addClass('img_grayscale').css({"position":"absolute","z-index":"998","opacity":"0"}).insertBefore(el).queue(function(){
                            var el = $(this);
                            el.parent().css({"width":160,"height":this.height});
                            el.dequeue();
                        });
                        this.src = grayscale(this.src);
                    });
                    
                    // Fade image 
                    $('.thumbnail .customer').mouseover(function(){
                        $(this).parent().find('img:first').stop().animate({opacity:1}, 1000);
                    })
                    $('.img_grayscale').mouseout(function(){
                        $(this).stop().animate({opacity:0}, 1000);
                    });     
                });
                
                // Grayscale w canvas method
                function grayscale(src){
                    var canvas = document.createElement('canvas');
                    var ctx = canvas.getContext('2d');
                    var imgObj = new Image();
                    imgObj.src = src;
                    canvas.width = imgObj.width;
                    canvas.height = imgObj.height; 
                    ctx.drawImage(imgObj, 0, 0); 
                    var imgPixels = ctx.getImageData(0, 0, canvas.width, canvas.height);
                    for(var y = 0; y < imgPixels.height; y++){
                        for(var x = 0; x < imgPixels.width; x++){
                            var i = (y * 4) * imgPixels.width + x * 4;
                            var avg = (imgPixels.data[i] + imgPixels.data[i + 1] + imgPixels.data[i + 2]) / 3;
                            imgPixels.data[i] = avg; 
                            imgPixels.data[i + 1] = avg; 
                            imgPixels.data[i + 2] = avg;
                        }
                    }
                    ctx.putImageData(imgPixels, 0, 0, 0, 0, imgPixels.width, imgPixels.height);
                    return canvas.toDataURL();
                }
                
            })(jQuery);
        </script>
        

    </body>
</html>

SSVIEWER;

<!DOCTYPE html>
<html>
    <head>
        <% base_tag %>
        <title>$Title &raquo; $SiteConfig.Title</title>
        $MetaTags(false)
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <% require css(themes/comperio/css/bootstrap.css) %>
        <% require css(themes/comperio/css/comperio.css) %>
        <!--[if !IE 7]>
            <style type="text/css">
                #wrap {display:table;height:100%}
            </style>
        <![endif]-->
        
        <link rel="shortcut icon" href="/favicon.ico" />



    </head>
    <body>
        <div class="wrapper">
        <div class="navbar navbar-fixed-top">
            <% include Navigation %>
        </div>
        
            
                $Layout
                
         <div class="push"></div>
        </div>
        <% include Footer %>

        <script type="text/javascript" src="themes/comperio/js/jquery-1.7.js"></script>
        <script type="text/javascript" src="themes/comperio/js/bootstrap.js"></script>

        <script type="text/javascript">
            (function($) {
                if ($('#myCarousel').length > 0){
                    $('#myCarousel').carousel({interval:15000},'pause');
                };
                if ($('.postMeta').length > 0){
                    $(".postMeta").tooltip({
                        selector: "*[rel=tooltip]",
                        placement: "left"
                    });
                };

                $(".collapse").collapse();

                if ($('.alert').length > 0){
                    $(".alert").alert();
                };
                
                if ($('.thumbnails li').length > 0){
                    $('.thumbnails li').popover({
                        selector: "div[rel=popover]",
                        placement: "left"
                    });
                };

                // On window load. This waits until images have loaded which is essential
                $(window).load(function(){
                    
                    // Fade in images so there isn't a color "pop" document load and then on window load
                    $(".thumbnail .customer").fadeIn(10);
                    
                    // clone image
                    $('.thumbnail .customer').each(function(){
                        var el = $(this);
                        el.css({"position":"absolute"}).wrap("<div class='img_wrapper' style='display: inline-block'>").clone().addClass('img_grayscale').css({"position":"absolute","z-index":"998","opacity":"0"}).insertBefore(el).queue(function(){
                            var el = $(this);
                            el.parent().css({"width":160,"height":107});
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

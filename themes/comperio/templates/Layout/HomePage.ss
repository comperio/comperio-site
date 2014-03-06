<div class="homepage container" role="main" id="main">
    <div class="row">    
        <div class="col-md-4">        
            $Content
        </div>
        <div class="col-md-8">
            <div id="myCarousel" class="carousel slide">
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="" src="themes/comperio/img/comperio1.jpg">
                        <div class="carousel-caption">
                            <h4><% _t('PASSIONFORINNOVATION') %></h4>
                            <p><% _t('PASSIONFORINNOVATIONPARAGRAPH') %></p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/malcesine.jpg">
                        <div class="carousel-caption">
                            <h4><% _t('SOLUTIONSFORLIBRARIES') %></h4>
                            <p><% _t('SOLUTIONSFORLIBRARIESPARAGRAPH') %></p>
                            <em>Malcesine (VR), Biblioteca comunale</em>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/paderno.jpg">
                        <div class="carousel-caption">
                            <h4><% _t('PUBLICLIBRARIESSYSTEMS') %></h4>
                            <p><% _t('PUBLICLIBRARIESSYSTEMSPARAGRAPH') %></p>
                            <em>Paderno Dugnano (MI), Biblioteca Tilane</em>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/ambrosiana.jpg">
                        <div class="carousel-caption">
                            <h4><% _t('CULTURALHERITAGE') %></h4>
                            <p><% _t('CULTURALHERITAGEPARAGRAPH') %></p>
                            <em>Biblioteca Ambrosiana (Milano), Sala Federiciana</em>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/clavis.png">
                        <div class="carousel-caption">
                            <h4><% _t('CLAVISNG') %></h4>
                            <p><% _t('CLAVISNGPARAGRAPH') %></p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/dng.png">
                        <div class="carousel-caption">
                            <h4><% _t('DISCOVERYNG') %></h4>
                            <p><% _t('DISCOVERYNGPARAGRAPH') %></p>
                        </div>
                    </div>

                </div>
                <!-- Carousel nav -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
            </div>

        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="jumbotron">
                <% control LastPosts %>
                    <p class="postDate" rel="tooltip" title="Date posted">
                        <span class="glyphicon glyphicon-calendar"></span>&nbsp;$Date.FormatI18N(%e %B %Y)
                    </p>
                    <h2>$Title</h2>
                    <p>
                        <a class="btn btn-primary btn-medium" href="$Link" title="Read Full Post">
                            <% _t('Comperio.READALL') %>
                        </a>
                    </p>
                <% end_control %>
            </div>
        </div> 
        <div class="col-xs-12 col-sm-8 col-md-4" style="padding-left: 0px; margin-top: -20px">            
            <ul class="thumbnails">
                <div class="row">
                    <li class="col-xs-6 col-sm-5 col-md-6" data-toggle="popover" data-trigger="hover" data-placement="right" data-original-title="Provincia di Verona" data-content="Sistema Bibliotecario della Provincia di Verona. Gestione del Centro Servizi e del sistema di automazione">
                        <div class="thumbnail">
                            <img class="customer" alt="" src="themes/comperio/img/customers/logo_sbpvr.png">
                        </div>
                    </li>
                    <li class="col-xs-6 col-sm-5 col-md-6" data-toggle="popover" data-trigger="hover" data-placement="left" data-original-title="CSBNO" data-content="Consorzio Bibliotecarie Nord-Ovest Milano. Utilizzo del gestionale ClavisNG e DiscoveryNG">
                        <div class="thumbnail">
                            <img class="customer" alt="" src="themes/comperio/img/customers/logo_csbno.png">
                        </div>
                    </li>
                </div>
                <div class="row">                
                    <li class="col-xs-6 col-sm-5 col-md-6" data-toggle="popover" data-trigger="hover" data-placement="right" data-original-title="Biblioteche civiche torinesi" data-content="Utilizzo del gestionale ClavisNG e DiscoveryNG">
                        <div class="thumbnail">
                            <img class="customer" alt="" src="themes/comperio/img/customers/logo_torino.png">
                        </div>
                    </li>
                
                    <li class="col-xs-6 col-sm-5 col-md-6" data-toggle="popover" data-trigger="hover" data-placement="left" data-original-title="Regione Valle d'Aosta" data-content="Utilizzo del gestionale ClavisNG e DiscoveryNG">
                        <div class="thumbnail">
                            <img class="customer" alt="" src="themes/comperio/img/customers/logo_aosta.png">
                        </div>
                    </li>
                </div>
                <div class="row"> 
                    <li class="col-xs-6 col-sm-5 col-md-6" data-toggle="popover" data-trigger="hover" data-placement="right" data-original-title="Veneranda Biblioteca Ambrosiana" data-content="Consulenza. Utilizzo del gestionale ClavisNG e DiscoveryNG">
                        <div class="thumbnail">
                            <img class="customer" alt="" src="themes/comperio/img/customers/logo_ambrosiana.png">
                        </div>
                    </li>
                    <li class="col-xs-6 col-sm-5 col-md-6" data-toggle="popover" data-trigger="hover" data-placement="left" data-original-title="Biblioinrete" data-content="Utilizzo del gestionale ClavisNG e DiscoveryNG">
                        <div class="thumbnail">
                            <img class="customer" alt="" src="themes/comperio/img/customers/logo_biblioinrete.png">
                        </div>
                    </li>
                </div>
            </ul>
            
        </div> 
        <div class="col-xs-18 col-sm-4 col-md-4">
            <a class="twitter-timeline"  href="https://twitter.com/ComperioSrl" data-widget-id="268290190525743104">Tweets di @ComperioSrl</a>
            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
        </div>
    </div>
</div>
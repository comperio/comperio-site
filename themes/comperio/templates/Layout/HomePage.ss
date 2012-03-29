<div class="homepage container" role="main" id="main">
    <div class="row clear">    
        <div class="span4">        
            $Content
        </div>
        <div class="span8">
            <div id="myCarousel" class="carousel slide">
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="" src="themes/comperio/img/comperio1.jpg">
                        <div class="carousel-caption">
                            <h4>Passione per l'innovazione</h4>
                            <p>Cerchiamo sempre di sviluppare soluzioni con il sorriso ;)</p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/Biblioteca.jpg">
                        <div class="carousel-caption">
                            <h4>Soluzioni per le biblioteche</h4>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/clavis.png">
                        <div class="carousel-caption">
                            <h4>Third Thumbnail label</h4>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/dng.png">
                        <div class="carousel-caption">
                            <h4>Third Thumbnail label</h4>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                        </div>
                    </div>

                </div>
                <!-- Carousel nav -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
            </div>

        </div>
    </div>
    <div class="row clear">           
        <div class="span8">
            <div class="hero-unit">
                <% control LastPosts %>
                <p class="postDate" rel="tooltip" title="Date posted"><i class="icon-calendar"></i>$Date.Long</p>
                <h2>$Title</h2>
                <p>$Content.LimitCharacters(500)</p>
                <p>
                <a class="btn btn-primary btn-large pull-right" href="$Link" title="Read Full Post">
                    Leggi tutto ...
                </a>
                </p>
                <% end_control %>
            </div>
        </div> 
        <div class="span4">            
            <ul class="thumbnails">
                <li class="span2">
                    <div class="thumbnail" rel="popover" title="Provincia di Verona" data-content="Sistema Bibliotecario della Provincia di Verona. Gestione del Centro Servizi e del sistema di automazione">
                        <img class="customer" alt="" src="themes/comperio/img/customers/logo_sbpvr.png">                      
                    </div>
                </li>
                <li class="span2">
                    <div class="thumbnail" rel="popover" title="CSBNO" data-content="Consorzio Bibliotecarie Nord-Ovest Milano. Utilizzo del gestionale ClavisNG e DiscoveryNG">
                        <img class="customer" alt="" src="themes/comperio/img/customers/logo_csbno.png">
                    </div>
                </li>
                <li class="span2">
                    <div class="thumbnail" rel="popover" title="Biblioteche civiche torinesi" data-content="Utilizzo del gestionale ClavisNG e DiscoveryNG">
                        <img class="customer" alt="" src="themes/comperio/img/customers/logo_torino.png">
                    </div>
                </li>
                <li class="span2">
                    <div class="thumbnail" rel="popover" title="Regione Valle d'Aosta" data-content="Utilizzo del gestionale ClavisNG e DiscoveryNG">
                        <img class="customer" alt="" src="themes/comperio/img/customers/logo_aosta.png">
                    </div>
                </li>
                <li class="span2">
                    <div class="thumbnail" rel="popover" title="Veneranda Biblioteca Ambrosiana" data-content="Consulenza. Utilizzo del gestionale ClavisNG e DiscoveryNG">
                        <img class="customer" alt="" src="themes/comperio/img/customers/logo_ambrosiana.png">
                    </div>
                </li>
                <li class="span2">
                    <div class="thumbnail" rel="popover" title="Biblioteca San Giorgio" data-content="Creazione del sito internet della biblioteca San Giorgio di Pistoia con il CMS Silverstripe">
                        <img class="customer" alt="" src="themes/comperio/img/customers/logo_pistoia.png">
                    </div>
                </li>
            </ul>
            <button class="pull-right btn btn-mini btn-warning">...vedi tutti</button>
        </div>   
    </div>
    
</div>
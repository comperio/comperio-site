<?php
$val .= <<<SSVIEWER
<div class="homepage container" role="main" id="main">
    <div class="row clear announce">
    <h2 style="width: 280px;">Chi siamo</h2>
            <hr/>
        <div class="span8 offset2">        
            <div id="myCarousel" class="carousel slide">
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="" src="themes/comperio/img/comperio1.jpg">
                        <div class="carousel-caption">
                            <h4>First Thumbnail label</h4>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/Biblioteca.jpg">
                        <div class="carousel-caption">
                            <h4>Second Thumbnail label</h4>
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
                <a class="carousel-control left" href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right" href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#myCarousel" data-slide="next">&rsaquo;</a>
            </div>

        </div>
        <!-- <div class="span4">
            <p style="font-size: x-large;margin-bottom: 20px">Biblioteche</p>
            <p style="font-size: x-large;margin-bottom: 20px">Innovazione</p>
            <p style="font-size: x-large;margin-bottom: 20px">Servizi</p>
            <p style="font-size: x-large;margin-bottom: 20px">Open source</p>

            <p>Comperio rafforza ulteriormente le relazioni con i propri partners tecnologici,
                per poter fornire soluzioni complete alle biblioteche: 
                dall'accesso controllato ad internet ai servizi informativi via SMS, 
                dalle soluzioni RFID ai distributori di libri self service H24, d
                alla consulenza nella pianificazione e organizzazione dei servizi alla formazione delle risorse umane.</p>

        </div> -->
    </div>
    <div class="row clear announce">
        <div class="span12">
            <h2 style="width: 180px;">Cosa facciamo</h2>
            <hr/>            
            <div class="row" style="margin-top:30px;">
                <div class="span4">
                
SSVIEWER;
$val .=  $item->XML_val("Content",null,true) ;
 $val .= <<<SSVIEWER

                </div>
                <div class="span8">
                <div class="hero-unit">
                    <h1>Questo è il titolo di un post del blog</h1>
                    <p>E questo è un estratto del primo paragrafo del post, consectetur adipiscing elit. Aliquam in mauris enim. Pellentesque eget ante lectus, id vestibulum nisi. Aliquam ut tempus tellus. </p>
                    <p>
                    <a class="btn btn-primary btn-large pull-right">
                        Leggi tutto
                    </a>
                    </p>
                </div>
                </div>
            </div>
                
        </div>        
    </div>
    <div class="row clear announce">
        <div class="span12">
            <h2 style="width: 280px;">Con chi</h2>
            <hr/>
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
SSVIEWER;

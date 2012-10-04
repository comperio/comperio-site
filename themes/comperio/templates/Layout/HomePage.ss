<div class="homepage container" role="main" id="main">
    <div class="row-fluid clear">    
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
                            <p>Per noi questo significa rendere concrete <strong>idee</strong> grazie all'impegno di una <strong>squadra</strong> che 
                            vede unite le competenze di <strong>bibliotecari</strong> e <strong>informatici</strong>. Affrontando le difficoltà e gli ostacoli come 
                            nuove sfide in grado di farci <strong>crescere</strong>.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/malcesine.jpg">
                        <div class="carousel-caption">
                            <h4>Soluzioni per le biblioteche</h4>
                            <p>Realizzare un progetto vuol dire innanzitutto intraprendere un <strong>percorso</strong> i cui veri protagonisti
                            sono i <strong>bibliotecari</strong> e la <strong>comunità di utenti</strong>. È solo grazie a loro che siamo in grado
                            di continuare a sviluppare <strong>soluzioni di qualità</strong>.</p>
                            <em>Malcesine (VR), Biblioteca comunale</em>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/paderno.jpg">
                        <div class="carousel-caption">
                            <h4>Reti di biblioteche pubbliche</h4>
                            <p>ClavisNG è stato progettato per gestire <strong>reti di biblioteche pubbliche</strong>, ottimizzando la <strong>condivisione delle risorse</strong> 
                            umane e librarie, anche attraverso nuovi <strong>modelli di circolazione</strong> del patrimonio.</p>
                            <em>Paderno Dugnano (MI), Biblioteca Tilane</em>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/ambrosiana.jpg">
                        <div class="carousel-caption">
                            <h4>Beni culturali e grandi biblioteche di conservazione</h4>
                            <p>Lo sviluppo di ClavisNG tiene presente in particolar modo le esigenze delle <strong>grandi biblioteche storiche</strong>, 
                            includendo in un unico catalogo libri antichi, manoscritti, epistolari storici e fondi archivistici.</p>
                            <em>Biblioteca Ambrosiana (Milano), Sala Federiciana</em>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/clavis.png">
                        <div class="carousel-caption">
                            <h4>Clavis NG</h4>
                            <p>Sviluppato a partire dal 2003 è un software <strong>web based</strong> pensato per gestire in modo <strong>efficiente e completo</strong> una 
                            <strong>rete di biblioteche</strong>. Dal 2010 è rilasciato con licenza <strong>open source</strong> &quot;Affero GPL v.3&quot;.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="themes/comperio/img/dng.png">
                        <div class="carousel-caption">
                            <h4>Discovery NG</h4>
                            <p>Un <strong>OPAC sociale</strong> in grado di integrare le funzioni necessarie alla gestione di: <strong>catalogo</strong>, <strong>sito della biblioteca</strong>,
                            <strong>comunità degli utenti</strong>. A partire dal 2011 è stato completamente riscritto a partire dal <strong>CMS</strong> open source <strong>SilverStripe</strong>.
                            </p>
                        </div>
                    </div>

                </div>
                <!-- Carousel nav -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
            </div>

        </div>
    </div>
    <div class="row-fluid clear">           
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
                    <div class="thumbnail" rel="popover" title="Biblioinrete" data-content="Utilizzo del gestionale ClavisNG e DiscoveryNG">
                        <img class="customer" alt="" src="themes/comperio/img/customers/logo_biblioinrete.png">
                    </div>
                </li>
            </ul>
            <button class="pull-right btn btn-mini btn-warning">...vedi tutti</button>
        </div>   
    </div>
    
</div>
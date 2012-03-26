<?php
$val .= <<<SSVIEWER
<div class="solutions container" role="main" id="main">
    <div class="row">
        <div class="span9">
            <h1>Soluzioni</h1>
            <ul class="thumbnails">
                <li class="span3">
                    <div class="thumbnail">
                        <img src="themes/comperio/img/clavislogo_1.png" alt="Clavis">
                        <h5>ClavisNG</h5>
                        <p>Il gestionale open source per reti bibliotecarie:</p>
                        <ul>
                            <li>Velocizza tutte le operazioni di circolazione e acquisizione ottimizzando la movimentazione</li>
                            <li>Tiene sotto controllo le attività di utenti e bibliotecari ad ogni livello</li>
                            <li>Visualizza in tempo reale gli indicatori di efficienza e i dati statistici cruciali</li>
                            <li>Interazione con l'utenza usando email, SMS e una community sul web</li>
                        </ul>
                    </div>
                </li>
                <li class="span3">
                    <div class="thumbnail">
                        <img src="themes/comperio/img/Logo_DNGtr.png" alt="DNG">
                        <h5>DiscoveryNG</h5>
                        <p>L'OPAC con integrato un engine di Social Network per aggregare gli utenti in una community web:</p>
                        <ul>
                            <li>Basato su Silverstripe, un CMS (Content Management System) per la pubblicazione dei contenuti</li>
                            <li>Permette di integrare in un unico portale OPAC e sito della biblioteca</li>
                            <li>Migliora la comunicazione sul web attraverso la community online</li>
                        </ul>
                    </div>
                </li>            
                <li class="span3">
                    <div class="thumbnail">
                        <img src="http://www.comperio.it/assets/Images/_resampled/resizedimage150100-rfid1big.jpg" alt="Clavis">
                        <h5>RFID</h5>
                        <p>La postazione assistita RFID permette il riconoscimento dei volumi e materiale multimediale tramite operatore.</p>
                    </div>
                </li>            
            </ul>
            <div class="row">
                <div class="span4">
                    <h2>La famiglia Bookmark</h2>
                    <dl>
                        <dt>Bookmarkweb</dt>
                        <dd>Elevata personalizzazione per reti di biblioteche scolastiche e centri di documentazione.
                            <br/><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#"><em>Leggi tutto...</em></a></dd>
                        <dt>LiberBookmarkweb</dt>
                        <dd>Una proposta per la scuola dell'obbligo. <br/>Tutti gli strumenti di lavoro della biblioteca per ragazzi in un unico software web based e open source. 
                            <br/><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#"><em>Leggi tutto...</em></a></dd>
                        <dt>LiBeR Database</dt>
                        <dd>La bibliografia del libro per bambini e per ragazzi consultabile on line e predisposta per la catalogazione derivata. 
                            <br/><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#"><em>Leggi tutto...</em></a></dd>
                    </dl>
                </div>
                <div class="span4 offset1">
                    <h2>Connettività e automazione</h2>
                    <dl>
                        <dt>Network Manager</dt>
                        <dd>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque euismod tortor eu quam ultrices in. 
                            <br/><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#"><em>Leggi tutto...</em></a></dd>
                        <dt>Userfull</dt>
                        <dd>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque euismod tortor eu quam ultrices in. 
                            <br/><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#"><em>Leggi tutto...</em></a></dd>
                        <dt>iLibrary 24H</dt>
                        <dd>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque euismod tortor eu quam ultrices in. 
                            <br/><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#"><em>Leggi tutto...</em></a></dd>
                    </dl>
                </div>
            </div>
            

            <h2>Servizi di formazione e consulenza</h2>
            <p>La formazione del personale e degli operatori è una delle principali attività svolte da Comperio. Oltre ai corsi tenuti presso i nostri clienti, nel corso degli anni abbiamo svolto attività formativa sia in ambito IT che in ambito biblioteconomico.
            <br/>Ad esempio:</p>
            <ul>
                <li>2002 - Università di Messina - La catalogazione del libro antico. Il formato Unimarc</li>
                <li>2002 - Roma. AIB Nazionale - Unimarc e la catalogazione del libro antico</li>
                <li>2005 - Università di Padova - Unimarc Bibliographic Format</li>
                <li>2005 - Università di Milano Bicocca - La catalogazione delle Risorse in continuazione</li>
                <li>2007 - Firenze. AIB Nazionale. - La catalogazione del libro antico: il formato UNIMARC/Bibliographic </li>
                <li>2008 - Università di Milano Bicocca - La valorizzazione del fondo storico-giuridico dell'Università Bicocca: strumenti e strategie</li>
            </ul>
            
            <p>Inoltre svogliamo anche attività di consulenza nell'ambito dell'IT che in quello più strettamente biblioteconomico.</p>

        </div>
        <div class="span3">
            
SSVIEWER;
 if($item->hasValue("Menu",array("2"))) {  ;
 $val .= <<<SSVIEWER

                <div style="padding: 8px 0;" class="well">
<ul class="nav nav-list">
    <li  class="nav-header">
        
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Level", array("1"))) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

        
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER

        
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

    </li>
    <li>
        <a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? strip_tags( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">
            
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Menu", array("2"))) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER
	  
            <li class='
SSVIEWER;
 if($item->XML_val("LinkOrCurrent",null,true) == "current") {  ;
 $val .= <<<SSVIEWER
active
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
 page">
SSVIEWER;
$val .=  $item->obj("Title",null,true)->XML_val("XML",null,true) ;
 $val .= <<<SSVIEWER
</a>
            </li>
            
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

        </a>
    </li>
</ul>
</div>

<div style="padding: 18px 0;">
    
</div>
            
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

        </div>
    </div>
</div>
SSVIEWER;

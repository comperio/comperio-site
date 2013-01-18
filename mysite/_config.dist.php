<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => '',
	"password" => '',
	"database" => '',
	"path" => '',
);

MySQLDatabase::set_connection_charset('utf8');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.org/themes/
SSViewer::set_theme('comperio');

// Set the site locale
i18n::set_locale('it_IT');

// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();

//Enable site search
FulltextSearchable::enable();

// Logging
SS_Log::add_writer(new SS_LogFileWriter(__DIR__.'/../logs/silverstripe.log'), SS_Log::NOTICE, '<=');

HtmlEditorConfig::get('cms')->setOption('verify_html', 'false');
HtmlEditorConfig::get('cms')->setOption('valid_elements','*[*]');
HtmlEditorConfig::get('cms')->setOption('extended_valid_elements', "img[class|src|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name|usemap|style],iframe[src|n");

// Recaptcha api keys
RecaptchaField::$public_api_key = '';
RecaptchaField::$private_api_key = '';
//Integrate with spam protector
SpamProtectorManager::set_spam_protector("RecaptchaProtector");

//Add featured image to blog entry
DataObject::add_extension('BlogEntry', 'BlogEntryDecorator');

//Enable multilanguage-site
//default translation
Translatable::set_default_locale('it_IT');
 
/* restrict the language select dropdown in the admin
   to only those languages that you will actually use. 
 */
Translatable::set_allowed_locales(array('it_IT','en_US'));

DataObject::add_extension('SiteTree', 'Translatable');
DataObject::add_extension('SiteConfig', 'Translatable');


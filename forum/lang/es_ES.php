<?php

/**
 * Spanish (Spain) language pack
 * @package modules: forum
 * @subpackage i18n
 */

i18n::include_locale_file('modules: forum', 'en_US');

global $lang;

if(array_key_exists('es_ES', $lang) && is_array($lang['es_ES'])) {
	$lang['es_ES'] = array_merge($lang['en_US'], $lang['es_ES']);
} else {
	$lang['es_ES'] = $lang['en_US'];
}

$lang['es_ES']['']['LOGINTOUNSUBSCRIBE'] = 'Para cancelar la suscripción a este hilo, por favor, identifícate primero.';
$lang['es_ES']['']['MEMBERLIST'] = 'Lista de Miembros';
$lang['es_ES']['']['MODERATOR'] = 'Moderador del Foro';
$lang['es_ES']['']['MODERATORS'] = 'Moderadores de este foro';
$lang['es_ES']['']['SEARCHBREADCRUMB'] = 'Buscar';
$lang['es_ES']['Forum']['ACCESSATTACH'] = '¿Los usuarios pueden adjuntar ficheros?';
$lang['es_ES']['Forum']['ACCESSPOST'] = '¿Quién puede publicar en el foro?';
$lang['es_ES']['Forum']['ACCESSREAD'] = '¿Quién puede leer el foro?';
$lang['es_ES']['Forum']['DEFAULTCATEGORY'] = 'General';
$lang['es_ES']['Forum']['FORUMCREATED'] = 'Página de Foro creada';
$lang['es_ES']['Forum']['FORUMHOLDERCREATED'] = 'Página ForumHolder creada';
$lang['es_ES']['Forum']['FORUMMONTHLYPOSTS'] = 'Entradas del Foro por Mes';
$lang['es_ES']['Forum']['FORUMSIGNUPS'] = 'Registros en el Foro por Mes';
$lang['es_ES']['Forum']['GROUPCREATED'] = 'Grupo "Miembros del Foro" creado';
$lang['es_ES']['Forum']['LOGINDEFAULT'] = 'Introduce tu correo electrónico y contraseña para ver este foro.';
$lang['es_ES']['Forum']['NO'] = 'No';
$lang['es_ES']['Forum']['PLURALNAME'] = 'Foros';
$lang['es_ES']['Forum']['READANYONE'] = 'Cualquiera';
$lang['es_ES']['Forum']['READLIST'] = 'Sólo estas personas (elige de la lista)';
$lang['es_ES']['Forum']['READLOGGEDIN'] = 'Usuarios identificados';
$lang['es_ES']['Forum']['REFRECHTIME'] = 'Actualizar cada';
$lang['es_ES']['Forum']['REFRESHFORUM'] = 'Actualizar este foro';
$lang['es_ES']['Forum']['SECONDS'] = 'segundos';
$lang['es_ES']['Forum']['SINGULARNAME'] = 'Foro';
$lang['es_ES']['Forum.ss'][''] = 'Ir al tema %s';
$lang['es_ES']['Forum.ss']['ANNOUNCEMENTS'] = 'Comunicados';
$lang['es_ES']['Forum.ss']['BY'] = 'por';
$lang['es_ES']['Forum.ss']['CLICKTOUSER'] = 'Haz clic aquí para ver';
$lang['es_ES']['Forum.ss']['GOTOFIRSTUNREAD'] = 'Ir a la primera entrada no leída en el tema %s.';
$lang['es_ES']['Forum.ss']['GOTOTHISTOPIC'] = 'Ir al tema %s';
$lang['es_ES']['Forum.ss']['LASTPOST'] = 'Última entrada';
$lang['es_ES']['Forum.ss']['NEWTOPIC'] = 'Haz clic aquí para empezar un nuevo tema';
$lang['es_ES']['Forum.ss']['NEWTOPICIMAGE'] = 'Empezar un nuevo tema';
$lang['es_ES']['Forum.ss']['NEWTOPICTEXT'] = 'haz clic aquí para empezar un nuevo tema';
$lang['es_ES']['Forum.ss']['NOTOPICS'] = 'No hay temas en este foro,';
$lang['es_ES']['Forum.ss']['POSTS'] = 'Entradas';
$lang['es_ES']['Forum.ss']['PREVLNK'] = 'Página Anterior';
$lang['es_ES']['Forum.ss']['READONLYFORUM'] = 'Este foro es sólo de lectura. No puedes escribir respuestas o abrir nuevos hilos.';
$lang['es_ES']['Forum.ss']['TOPIC'] = 'Tema';
$lang['es_ES']['Forum.ss']['TOPICS'] = 'Temas';
$lang['es_ES']['Forum']['WELCOMEFORUM'] = '¡Bienvenido al Módulo del Foro de SilverStripe! Ésta es la página por defecto de del Foro. Ahora puedes añadir temas.';
$lang['es_ES']['Forum']['WELCOMEFORUMHOLDER'] = '¡Bienvenido al Módulo del Foro de SilverStripe! Ésta es la página por defecto de ForumHolder. Ahora puedes añadir foros.';
$lang['es_ES']['Forum']['YES'] = 'Sí';
$lang['es_ES']['ForumAdmin_right.ss']['EDITPAGE'] = 'Editar Página';
$lang['es_ES']['ForumAdmin_right.ss']['WELCOME'] = '¡Bienvenido a %s! Por favor, elige una de las entradas en el panel de la izquierda.';
$lang['es_ES']['ForumCategory']['PLURALNAME'] = 'Categorías del foro';
$lang['es_ES']['ForumCategory']['SINGULARNAME'] = 'Categoría del foro';
$lang['es_ES']['ForumFooter.ss']['CURRENTLYON'] = 'Ahora conectados:';
$lang['es_ES']['ForumFooter.ss']['ISONLINE'] = 'está conectado';
$lang['es_ES']['ForumFooter.ss']['LATESTMEMBER'] = 'Bienvenido nuestro último miembro:';
$lang['es_ES']['ForumFooter.ss']['NOONLINE'] = 'No hay nadie conectado.';
$lang['es_ES']['ForumHeader.ss']['BY'] = 'por';
$lang['es_ES']['ForumHeader.ss']['IN'] = 'en';
$lang['es_ES']['ForumHeader.ss']['JUMPTO'] = 'Ir a:';
$lang['es_ES']['ForumHeader.ss']['MEMBERS'] = 'miembros';
$lang['es_ES']['ForumHeader.ss']['POSTS'] = 'Entradas';
$lang['es_ES']['ForumHeader.ss']['SEARCH'] = 'Buscar:';
$lang['es_ES']['ForumHeader.ss']['SEARCHBUTTON'] = 'Buscar';
$lang['es_ES']['ForumHeader.ss']['SELECT'] = 'Seleccionar';
$lang['es_ES']['ForumHeader.ss']['TOPICS'] = 'Temas';
$lang['es_ES']['ForumHolder.ss']['FORUM'] = 'Foro';
$lang['es_ES']['ForumHolder.ss']['FORUMS'] = 'Foros';
$lang['es_ES']['ForumHolder.ss']['LASTPOST'] = 'Última Entrada';
$lang['es_ES']['ForumHolder.ss']['POSTS'] = 'Entradas';
$lang['es_ES']['ForumHolder.ss']['THREADS'] = 'Hilos';
$lang['es_ES']['ForumHolder_List.ss']['GOTOLATEST'] = 'Ir a la última entrada en %s';
$lang['es_ES']['ForumHolder_List.ss']['GOTOTHISTOPIC'] = 'Ir al tema %s';
$lang['es_ES']['ForumHolder_search.ss'][''] = 'Ir al tema %s';
$lang['es_ES']['ForumHolder_search.ss']['BY'] = 'por';
$lang['es_ES']['ForumHolder_search.ss']['CLICKTOUSER'] = 'Haz clic aquí para ver';
$lang['es_ES']['ForumHolder_search.ss']['CLICKTOUSER2'] = 'perfil &#39;s';
$lang['es_ES']['ForumHolder_search.ss']['NORESULTS'] = 'No hay resultados para esa(s) palabra(s)';
$lang['es_ES']['ForumHolder_search.ss']['PAGE'] = 'Página:';
$lang['es_ES']['ForumHolder_search.ss']['POST'] = 'Entrada';
$lang['es_ES']['ForumHolder_search.ss']['TOPIC'] = 'Tema';
$lang['es_ES']['ForumLogin.ss']['LOGGEDINAS'] = 'Estás conectado como';
$lang['es_ES']['ForumLogin.ss']['LOGIN'] = 'Identificarse';
$lang['es_ES']['ForumLogin.ss']['LOGINEXPLICATION'] = 'Haz clic aquí para identificarte';
$lang['es_ES']['ForumLogin.ss']['LOGOUT'] = 'Cerrar Sesión';
$lang['es_ES']['ForumLogin.ss']['LOGOUTEXPLICATION'] = 'Haz clic aquí para cerrar sesión';
$lang['es_ES']['ForumLogin.ss']['LOSTPASS'] = 'Contraseña olvidada';
$lang['es_ES']['ForumLogin.ss']['LOSTPASSEXPLICATION'] = 'Haz clic aquí para recuperar tu contraseña';
$lang['es_ES']['ForumLogin.ss']['OPENID'] = 'Registrarte con OpenID';
$lang['es_ES']['ForumLogin.ss']['OPENIDDESC3'] = 'Para más información visita la <a href="http://openid.net">página oficial de OpenID';
$lang['es_ES']['ForumLogin.ss']['OPENIDEXPLICATION'] = 'Haz clic aquí para registrarte con OpenID';
$lang['es_ES']['ForumLogin.ss']['PROFILE'] = 'Perfil';
$lang['es_ES']['ForumLogin.ss']['PROFILEEXPLICATION'] = 'Haz clic aquí para editar tu perfil';
$lang['es_ES']['ForumLogin.ss']['REGEXPLICATION'] = 'Haz clic aquí para registrarte';
$lang['es_ES']['ForumLogin.ss']['REGISTER'] = 'Registrarte';
$lang['es_ES']['ForumLogin.ss']['WHATOPENID'] = '¿Qué es OpenID?';
$lang['es_ES']['ForumLogin.ss']['WHATOPENIDUPPER'] = '¿Qué es OpenID?';
$lang['es_ES']['ForumMemberProfile']['AUTHENTICATIONFAILED'] = 'La autenticación con OpenID/i-name ha fallado.';
$lang['es_ES']['ForumMemberProfile']['CANCELLEDVERIFICATION'] = 'La verificación ha sido cancelada. Por favor, inténtalo de nuevo.';
$lang['es_ES']['ForumMemberProfile']['ENTEROPENID'] = 'Por favor, introduce tu OpenID para continuar con el registro.';
$lang['es_ES']['ForumMemberProfile']['FORUMUSERPROFILE'] = 'Perfil de usuario del foro';
$lang['es_ES']['ForumMemberProfile']['FORUMUSERREGISTER'] = 'Registro en el foro';
$lang['es_ES']['ForumMemberProfile']['NICKNAMEEXISTS'] = 'Lo sentimos, ese nombre de usuario ya existe. Por favor, escoge otro.';
$lang['es_ES']['ForumMemberProfile']['PASSNOTMATCH'] = 'Ambas contraseñas tienen que coincidir. Por favor, inténtalo de nuevo.';
$lang['es_ES']['ForumMemberProfile']['REGISTEROPENID'] = 'Registrarse con OpenID';
$lang['es_ES']['ForumMemberProfile']['SAVECHANGES'] = 'Guardar cambios';
$lang['es_ES']['ForumMemberProfile']['UNEXPECTEDERROR'] = 'Ha ocurrido un error inesperado. Por favor, inténtalo de nuevo o regístrate sin OpenID';
$lang['es_ES']['ForumMemberProfile']['USERPROFILE'] = 'Perfil de usuario';
$lang['es_ES']['ForumMemberProfile']['WRONGPERMISSION'] = 'No tienes permiso para editar ese miembro.';
$lang['es_ES']['ForumMemberProfile_show.ss']['AVATAR'] = 'Avatar';
$lang['es_ES']['ForumMemberProfile_show.ss']['COUNTRY'] = 'País';
$lang['es_ES']['ForumMemberProfile_show.ss']['EMAIL'] = 'Correo electrónico';
$lang['es_ES']['ForumMemberProfile_show.ss']['FIRSTNAME'] = 'Nombre';
$lang['es_ES']['ForumMemberProfile_show.ss']['FORUMRANK'] = 'Ranking del Foro';
$lang['es_ES']['ForumMemberProfile_show.ss']['LASTPOST'] = 'Última entrada: %s ';
$lang['es_ES']['ForumMemberProfile_show.ss']['LATESTPOSTS'] = 'Últimas Entradas';
$lang['es_ES']['ForumMemberProfile_show.ss']['NORANK'] = 'No hay ranking';
$lang['es_ES']['ForumMemberProfile_show.ss']['OCCUPATION'] = 'Ocupación';
$lang['es_ES']['ForumMemberProfile_show.ss']['POSTNO'] = 'Número de entradas';
$lang['es_ES']['ForumMemberProfile_show.ss']['PROFILE'] = 'Perfil';
$lang['es_ES']['ForumMemberProfile_show.ss']['SURNAME'] = 'Apellidos';
$lang['es_ES']['ForumMemberProfile_show.ss']['USERSAVATAR'] = '&#39;s avatar';
$lang['es_ES']['ForumMember_ForgotNicknameEmail.ss']['HI'] = 'Hola,';
$lang['es_ES']['ForumMember_ForgotNicknameEmail.ss']['MESSAGE'] = 'Aquí está tu nombre de usuario para <a href="home/">%s</a>.';
$lang['es_ES']['ForumMember_ForgotNicknameEmail.ss']['USERNAME'] = 'Nombre de usuario:';
$lang['es_ES']['ForumMember_TopicNotification.ss']['HI'] = 'Hola %s,';
$lang['es_ES']['ForumMember_TopicNotification.ss']['NEWPOSTMESSAGE'] = 'Una nueva entrada ha sido añadida al tema al que estás suscrito.';
$lang['es_ES']['ForumMember_TopicNotification.ss']['NOTIFICATIONMESSAGE'] = 'No recibirás notificaciones adicionales hasta que visites el foro de nuevo.';
$lang['es_ES']['ForumMember_TopicNotification.ss']['REPLYLINK'] = 'Ver el tema';
$lang['es_ES']['ForumMember_TopicNotification.ss']['UNSUBSCRIBETEXT'] = 'Cancelar la suscripción al tema';
$lang['es_ES']['ForumRole']['ADMIN'] = 'Administrador';
$lang['es_ES']['ForumRole']['ANONYMOUS'] = 'Usuario anónimo';
$lang['es_ES']['ForumRole']['AVATAR'] = 'Subir imagen de usuario';
$lang['es_ES']['ForumRole']['CANGRAVATAR'] = 'Si usas Gravatars deja esto en blanco';
$lang['es_ES']['ForumRole']['COMMEMBER'] = 'Miembro de la Comunidad';
$lang['es_ES']['ForumRole']['CONFIRMPASS'] = 'Confirmar Contraseña';
$lang['es_ES']['ForumRole']['COUNTRY'] = 'País';
$lang['es_ES']['ForumRole']['EMAIL'] = 'Correo electrónico';
$lang['es_ES']['ForumRole']['FIRSTNAME'] = 'Nombre';
$lang['es_ES']['ForumRole']['MOD'] = 'Moderador';
$lang['es_ES']['ForumRole']['NICKNAME'] = 'Nombre de usuario';
$lang['es_ES']['ForumRole']['OCCUPATION'] = 'Ocupación';
$lang['es_ES']['ForumRole']['OPENIDINAME'] = 'OpenID/i-name';
$lang['es_ES']['ForumRole']['PASSWORD'] = 'Contraseña';
$lang['es_ES']['ForumRole']['PERSONAL'] = 'Detalles Personales';
$lang['es_ES']['ForumRole']['SURNAME'] = 'Apellidos';
$lang['es_ES']['ForumRole']['TRANSFERSUCCEEDED'] = 'La transferencia de datos se ha producido correctamente. Para completarla, debes borrar la tabla ForumMember. Para hacerlo, ejecuta la sentencia "DROP TABLE \'ForumMember\'".';
$lang['es_ES']['ForumRole']['USERDETAILS'] = 'Detalles de Usuario';
$lang['es_ES']['Forum_editpost.ss']['AVAILABLEBB'] = 'Disponibles etiquetas BBCode';
$lang['es_ES']['Forum_editpost.ss']['EXAMPLE'] = 'Ejemplo';
$lang['es_ES']['Forum_editpost.ss']['NOTLOGGEDINPOST'] = 'Si quieres escribir una entrada, por favor <a href="Security/login" title="log in">identifícate</a> o <a href="ForumMemberProfile/register" title="register">regístrate</a> primero.';
$lang['es_ES']['Forum_reply.ss']['AVAILABLEBB'] = 'Disponibles etiquetas BBCode';
$lang['es_ES']['Forum_reply.ss']['EXAMPLE'] = 'Ejemplo';
$lang['es_ES']['Forum_show.ss']['AUTHOR'] = 'Autor';
$lang['es_ES']['Forum_show.ss']['CLICKGOTOEND'] = 'Haz clic aquí para ir al final de esta entrada';
$lang['es_ES']['Forum_show.ss']['CLICKGOTOTOP'] = 'Haz clic aquí para ir al principio de esta entrada';
$lang['es_ES']['Forum_show.ss']['CLICKREPLY'] = 'Haz Clic para Responder';
$lang['es_ES']['Forum_show.ss']['CLICKSUBSCRIBE'] = 'Haz clic aquí para suscribirte a este tema';
$lang['es_ES']['Forum_show.ss']['CLICKUNSUBSCRIBE'] = 'Haz clic aquí para cancelar la suscripción a este tema';
$lang['es_ES']['Forum_show.ss']['GOTOEND'] = 'Ir al Final';
$lang['es_ES']['Forum_show.ss']['GOTOTOP'] = 'Subir';
$lang['es_ES']['Forum_show.ss']['NEXTLINK'] = 'Siguiente';
$lang['es_ES']['Forum_show.ss']['NEXTTITLE'] = 'Ver la página siguiente';
$lang['es_ES']['Forum_show.ss']['PAGE'] = 'Página:';
$lang['es_ES']['Forum_show.ss']['PREVLINK'] = 'Anterior';
$lang['es_ES']['Forum_show.ss']['PREVTITLE'] = 'Ver página anterior';
$lang['es_ES']['Forum_show.ss']['REPLY'] = 'Responder';
$lang['es_ES']['Forum_show.ss']['SUBSCRIBE'] = 'Suscribirse';
$lang['es_ES']['Forum_show.ss']['TOPIC'] = 'Tema:';
$lang['es_ES']['Forum_show.ss']['UNSUBSCRIBE'] = 'Cancelar suscripción';
$lang['es_ES']['Forum_starttopic.ss']['AVAILABLEBB'] = 'Disponibles las etiquetas de BBCode';
$lang['es_ES']['Forum_starttopic.ss']['EXAMPLE'] = 'Ejemplo';
$lang['es_ES']['Post']['ACTIVEPOSTS'] = 'Entradas Activas';
$lang['es_ES']['Post']['ARCHIVE'] = 'Archivo';
$lang['es_ES']['Post']['ARCHIVED'] = 'Archivado';
$lang['es_ES']['Post']['AUTHOR'] = 'Autor';
$lang['es_ES']['Post']['AWAITING'] = 'En espera';
$lang['es_ES']['Post']['AWAITINGPOSTS'] = 'Entradas en espera';
$lang['es_ES']['Post']['CONTENT'] = 'Contenido';
$lang['es_ES']['Post']['CREATED'] = 'Creado';
$lang['es_ES']['Post']['DELETE'] = 'eliminar';
$lang['es_ES']['Post']['EDIT'] = 'editar';
$lang['es_ES']['Post']['LASTEDIT'] = 'Última edición';
$lang['es_ES']['Post']['MAIN'] = 'Principal';
$lang['es_ES']['Post']['MODERATED'] = 'Moderado';
$lang['es_ES']['Post']['PLURALNAME'] = 'Mensajes';
$lang['es_ES']['Post']['POSTEDBY'] = 'Publicado por %s';
$lang['es_ES']['Post']['POSTEDTO'] = 'Publicado en: %s';
$lang['es_ES']['Post']['REJECTED'] = 'Rechazado';
$lang['es_ES']['Post']['REJECTEDPOSTS'] = 'Entradas rechazadas';
$lang['es_ES']['Post']['RESPONSE'] = 'Re: %s';
$lang['es_ES']['Post']['SAVE'] = 'Guardar';
$lang['es_ES']['Post']['SHOWLINK'] = 'Mostrar hilo';
$lang['es_ES']['Post']['SINGULARNAME'] = 'Mensaje';
$lang['es_ES']['Post']['STATUS'] = 'Estado';
$lang['es_ES']['Post']['TITLE'] = 'Título';
$lang['es_ES']['Post']['TOPICCREATED'] = 'Tema Creado';
$lang['es_ES']['Post']['TOPICDETAILS'] = 'Detalles del Tema';
$lang['es_ES']['Post']['TOPICINTERNALID'] = 'ID Interno del Tema';
$lang['es_ES']['Post']['TOPICLASTEDIT'] = 'Último Tema Editado';
$lang['es_ES']['SinglePost.ss']['ATTACHED'] = 'Archivos Adjuntos';
$lang['es_ES']['SinglePost.ss']['GOTOPROFILE'] = 'Ir al Perfil de este Usuario';
$lang['es_ES']['SinglePost.ss']['LASTEDITED'] = 'Última modificación:';
$lang['es_ES']['TopicListing.ss']['BY'] = 'por';
$lang['es_ES']['TopicListing.ss']['CLICKTOUSER'] = 'Haz clic aquí para ver';
$lang['es_ES']['TopicListing.ss']['GOTOFIRSTUNREAD'] = 'Ir a la primera entrada no leída en el tema %s';

?>
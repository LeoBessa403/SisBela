<?php
require_once 'library/Config.inc.php';
$link = UrlAmigavel::getLink();
$url = (isset($link) && $link != "") ? $link : SITE;
$url = ((TEM_SITE && $url == SITE) ? SITE : ADMIN);
$url = explode("/", $url);

if ($url[0] == ADMIN):
    include './' . ADMIN . '/sistema.php';
elseif (TEM_SITE):
    include './' . SITE . '/web.php';
else:
    include './' . ADMIN . '/sistema.php';
endif;
<?php
ob_start();
$tpPagina = 'inicial';
if($url[1] != CONTROLLER_INICIAL_SITE)
    $tpPagina = 'venda';
include_once "./library/Partial/Site/topo_" . $tpPagina . ".php";

$url->pegaControllerAction();

include_once "./library/Partial/Site/rodape_" . $tpPagina . ".php";
ob_end_flush();
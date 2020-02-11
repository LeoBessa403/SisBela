<?php

function servidor_inicial()
{
    if ($_SERVER['HTTP_HOST'] == 'localhost') {
        $config = array(
            'HOME' => 'http://localhost/SisBela/',
            'HOST' => '127.0.0.1',
            'USER' => 'root',
            'PASS' => '',
            'DBSA' => 'sisbela',
            'DEBUG' => true,
            'PROD' => false
        );
    } else {
        $config = array(
            'HOME' => 'https://sistemadabeleza.com.br/',
            'HOST' => 'localhost',
            'USER' => 'sistem25_dabelez',
            'PASS' => 'Admin101*',
            'DBSA' => 'sistem25_dabelez',
            'DEBUG' => false,
            'PROD' => true
        );
    }

    define('HOME', $config['HOME']);
    define('HOST', $config['HOST']);
    define('USER', $config['USER']);
    define('PASS', $config['PASS']);
    define('DBSA', $config['DBSA']);
    define('DEBUG', $config['DEBUG']);
    define('PROD', $config['PROD']);
    define('CO_USUARIO_PADRAO', 1);
    define('NO_USUARIO_PADRAO', 'Usuário SisBela');

}

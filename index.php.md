<?php

    ini_set("display_errors","On");
    error_reporting(E_ALL);



    define("APP_PATH",realpath(dirname(__FILE__)));
    $app = new Yaf_Application(APP_PATH.'/conf/application.ini');
    $app->run();
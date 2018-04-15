<?php

    ini_set("display_errors","On");
    error_reporting(E_ALL);

    define("APP_PATH",  realpath(dirname(__FILE__) . '/../')); /* 指向public的上一级 */
    $app  = new Yaf_Application(APP_PATH . "/conf/application.ini");

    $config = $app->getConfig();

    var_dump($config);
    $app->run();

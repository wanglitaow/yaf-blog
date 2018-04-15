<?php


    class WltController extends Yaf_Controller_Abstract{
        public function indexAction(){

            echo date('Y-m-d H:i:s');exit;
        }

        public function getenvAction(){

            $config = Yaf\Application::app()->getConfig();
            var_dump($config->application->directory);



        }
    }



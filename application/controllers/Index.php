<?php
    /**
     * Created by PhpStorm.
     * User: wanglitao
     * Date: 2018/4/14
     * Time: 15:47
     */

    class IndexController extends Yaf_Controller_Abstract{
        public function indexAction(){
            $this->getView()->assign("content","Hello, world!");
        }
    }
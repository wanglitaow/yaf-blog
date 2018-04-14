#!/bin/bash
# author:菜鸟教程
# url:www.runoob.com

mkdir -p public public/css public/img public/js

mkdir -p conf

mkdir -p application/controllers application/controllers application/views

mkdir -p application/modules  application/library  application/models  application/plugins


echo "create conf/application.ini "application.ini

touch conf/application.ini


echo "create public/index.php"

touch public/index.php

echo "create public/index.php"
echo "create public/index.php"



createdirectory(){

    if [ -d  $1 ];then
    echo "文件夹存在"
    else
    echo "created "$1
    fi


}
funWithParam conf








#!/bin/bash





dirlist=(
            public
            public/css
            public/img
            public/js
            conf
            application/controllers
            application/views
            application/modules
            application/library
            application/models
            application/plugins
   )

filelist=(
    public/index.php
    conf/application.ini
);

#创建文件夹
createdirectory(){
    if [ -d  $1 ];then
    echo  $1"文件夹存在"
    else
    mkdir -p $1
    echo "created  "$1
    fi
}


createfile(){
    if [ -f  $1 ];then
    echo  $1"文件存在"
    else
    touch $1
    echo "created  "$1
    fi
}

for dir in ${dirlist[*]}
do
    createdirectory $dir
done

for file in ${filelist[*]}
do
    createfile $file
done


echo -n  "请输入你要创建的controller -> 首字母请大写："
read  num
coname=$(echo $num|awk '{sub(/^a/,"A");print}')
controllerfile=application/controllers/${coname}.php
num=$(echo $num | tr 'A-Z' 'a-z')
viewdir=application/views/${num}
viewfile=application/views/${num}/${num}.html
createdirectory $viewdir
createfile $controllerfile
createfile $viewfile









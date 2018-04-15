# yaf-blog

这是yaf的学习教材，一步一步教你学习yaf

关于入口文件 index.php

第一种，index.php 跟conf同一目录

index.php 内容

    define("APP_PATH",realpath(dirname(__FILE__)));
    $app = new Yaf_Application(APP_PATH.'/conf/application.ini');
    $app->run();
 nginx.conf

            root  /data1/www/yaf-blog;
            location / {
                index  index.html index.htm index.php;
                try_files $uri $uri/ /index.php$uri;
            }

  第二种，index.php在pulic里面的时候

  index.php 内容

    define("APP_PATH",  realpath(dirname(__FILE__) . '/../')); /* 指向public的上一级 */
    $app  = new Yaf_Application(APP_PATH . "/conf/application.ini");
    $app->run();
nginx conf 内容

		listen 80 ;
        server_name 132a.com;
        index index.html index.htm index.php;
        root  /data1/www/yaf-blog;
        include enable-php.conf;

       location  / {
          index public/index.php;
          if (!-f $request_filename) {
              rewrite ^/(.*) /public/index.php?$1 last;
          }
       }



#location @rewrite {
#    rewrite ^/(.*)$ /index.php?_url=/$1;
#}

#location / {
#    index index.php index.html index.htm;

#    try_files $uri $uri/ @rewrite;  
#}

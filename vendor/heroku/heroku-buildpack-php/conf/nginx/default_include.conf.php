location @rewrite {
        rewrite ^/(.*)$ /index.php?_url=/$1;
}

location / {
    index index.php index.html index.htm;

	try_files $uri $uri/ @rewrite;  
}

# for people with app root as doc root, restrict access to a few things
location ~ ^/(composer\.|Procfile$|<?=getenv('COMPOSER_VENDOR_DIR')?>/|<?=getenv('COMPOSER_BIN_DIR')?>/) {
    deny all;
}

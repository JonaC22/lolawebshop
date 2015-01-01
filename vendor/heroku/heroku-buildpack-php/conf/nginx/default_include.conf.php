location / {
    index index.php;

	try_files $uri $uri/ /index.php$is_args$args; 
}


# for people with app root as doc root, restrict access to a few things
location ~ ^/(composer\.|Procfile$|<?=getenv('COMPOSER_VENDOR_DIR')?>/|<?=getenv('COMPOSER_BIN_DIR')?>/) {
    deny all;
}

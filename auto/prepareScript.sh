cp auto/php-fpm.conf vendor/heroku/heroku-buildpack-php/conf/php
cp auto/heroku.conf.php vendor/heroku/heroku-buildpack-php/conf/nginx
chmod -R guo+w app/storage
service apache2 stop
service nginx stop
foreman start

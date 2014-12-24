# php-fpm5

## build
docker build -t huhongda/php:0.2 .

# Usage

## php-server
## docker run -d --name php5-fpm huhongda/php:0.2

docker run -d -v $PWD/nginx/sites:/var/www/sites/:rw --name php5-fpm huhongda/php:0.2


## nginx
docker run -d -p 80:80 --link php5-fpm:phpserver --name nginx \
    -v $PWD/nginx/configuration/sites-enabled:/etc/nginx/sites-enabled \
    -v $PWD/nginx/log:/var/log/nginx --volumes-from=php5-fpm huhongda/nginx:0.1
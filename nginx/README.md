# Nginx 1.16.2

docker build -t huhongda/nginx:0.1 .

# unmount
docker run -p 80:80 -d huhongda/nginx:0.1

# mount
PWD=`pwd`
docker run -d -p 80:80 -v $PWD/nginx/configuration/sites-enabled:/etc/nginx/sites-enabled \
-v $PWD/nginx/log:/var/log/nginx -v $PWD/nginx/sites:/var/www/sites/ --name nginx huhongda/nginx:0.1

# expose directory
/etc/nginx/site-enabled/
/var/log/nignx/
/var/www/sites/
    
## sites volumes from php container
docker run -d -p 80:80 --link php5-fpm:phpserver --name nginx \
    -v $PWD/nginx/configuration/sites-enabled:/etc/nginx/sites-enabled \
    -v $PWD/nginx/log:/var/log/nginx --volumes-from=php5-fpm huhongda/nginx:0.1
    
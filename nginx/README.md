# Nginx 1.16.2

docker build -t huhongda/nginx:0.1 .

# unmount
docker run -p 80:80 -d huhongda/nginx:0.1

# mount
PWD=`pwd`
docker run -d -p 80:80 -v $PWD/nginx/configuration/sites-enabled:/etc/nginx/sites-enabled \
-v $PWD/nginx/log:/var/log/nginx -v $PWD/nginx/sites:/var/www/sites/ huhongda/nginx:0.1

# expose directory
/etc/nginx/site-enabled/
/var/log/nignx/
/var/www/sites/

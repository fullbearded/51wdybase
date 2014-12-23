#! /bin/sh

PWD=$(pwd)

# redis
docker run -d -p 6379:6379 -v $PWD/redis/data:/data --name redis huhongda/redis:0.2 && \
echo 'start redis'

# mongodb
docker run -d -p 27017:27017 -v $PWD/mongodb/data:/data/db --name mongodb huhongda/mongodb:0.1 \
echo  'start mongodb'

# nginx
docker run -d -p 80:80 -v $PWD/nginx/configuration/sites-enabled:/etc/nginx/sites-enabled \
-v $PWD/nginx/log:/var/log/nginx -v $PWD/nginx/sites:/var/www/sites/ huhongda/nginx:0.1



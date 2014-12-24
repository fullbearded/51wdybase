# Redis 2.8.18

docker build -t huhongda/redis:0.2 .

docker run -p 6379:6379 -d redis

# Usage
PWD=$(pwd)
docker run -d -p 6379:6379 -v $PWD/redis/data:/data --name redis-server huhongda/redis:0.2 && \
echo 'start redis'

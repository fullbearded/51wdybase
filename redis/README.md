# Redis 2.8.18

docker build -t huhongda/redis:0.1 .

docker run -p 6379:6379 -d redis

# Usage
PWD=$(pwd)
docker run -d -p 6379:6379 -v $PWD/redis/data:/data twgc/redis:0.3 && \
echo 'start redis'

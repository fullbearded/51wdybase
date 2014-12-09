FROM huhongda/wdybase:0.5

RUN groupadd -r redis && useradd -r -g redis redis
RUN wget http://download.redis.io/releases/redis-2.8.18.tar.gz
RUN mkdir -p /usr/local/redis
RUN tar zxf redis-2.8.18.tar.gz -C /usr/local/redis
RUN make -C /usr/local/redis/redis-2.8.18
RUN make -C /usr/local/redis/redis-2.8.18 install

RUN mkdir -p /data/redis && chown redis:redis /data/redis

VOLUME /data
EXPOSE 6379
CMD [ "redis-server" ]

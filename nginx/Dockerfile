FROM huhongda/wdybase:0.5

RUN apt-get install -y apt-file && apt-file update
RUN apt-get install -y software-properties-common python-software-properties


RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/*

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", '/var/www/sites/']

ADD configuration/nginx.conf /etc/nginx/nginx.conf

# Expose ports.
EXPOSE 80
EXPOSE 443

RUN mkdir /nginx
ADD entrypoint.sh /nginx/entrypoint.sh
RUN chmod +x '/nginx/entrypoint.sh'

ENTRYPOINT [ "/nginx/entrypoint.sh" ]

# Define default command.
CMD ["nginx"]
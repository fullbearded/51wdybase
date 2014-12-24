FROM tutum/mysql:latest

# Exposed ENV
ENV MYSQL_USER root
ENV MYSQL_PASS 123456

# Add VOLUMEs to allow backup of config and databases
VOLUME  ["/etc/mysql", "/var/lib/mysql"]

EXPOSE 3306
CMD ["/bin/bash", "/run.sh"]

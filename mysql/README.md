# Mysql

## FROM

reference: https://registry.hub.docker.com/u/tutum/mysql/

## Extend

master-slave 

## build

docker build -t huhongda/mysql:0.1 .

## Usage

PWD=`pwd`
# docker run -d -p 3306:3306 -v $PWD/mysql/data:/data:rw --name mysql huhongda/mysql:0.1
# docker run -d -p 3306:3306 -v $PWD/mysql/data:/var/lib/mysql --name mysql huhongda/mysql:0.1 /bin/bash -c "/usr/bin/mysql_install_db"

# mysql can't mount
docker run -d -p 3306:3306 --name mysql huhongda/mysql:0.1

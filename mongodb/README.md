# mongodb

docker build -t huhongda/mongodb:0.1 .

# Usage
PWD=$(pwd)

# mongodb(cannot mount volumn on mac)
docker run -d -p 27017:27017 --name mongodb huhongda/mongodb:0.1


# mongodb

docker build -t huhongda/mongodb:0.1 .

# Usage
PWD=$(pwd)

docker run -d -p 27017:27017 -v $PWD/mongodb/data:/data/db --name mongodb huhongda/mongodb:0.1

echo 'start mongodb'

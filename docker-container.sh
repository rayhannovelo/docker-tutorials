docker container ls # show active container
docker container ls -a # show all container

docker container create --name redis-example redis:latest # create container
docker container rm redis-example # delete container

docker container start redis-example # start container
docker container stop redis-example # stop container

docker container logs redis-example # view logs
docker container logs -f redis-example # view logs realtime

docker container exec -i -t redis-example /bin/bash # exec command inside container -> /bin/bash or /bin/sh

# port forwarder from host port 8080 to nginx container default port 80
docker container create --name nginx-example --publish 8080:80 nginx:latest

# port forwarder is the same with container with additional key
docker container create --name mongo-example --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest 

docker container stats # show container stats

docker container create --name mongodata-example --publish 27018:27017 --mount "type=bind,source=/Users/ict-01/Herd/docker-tutorials/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest
docker stop $(docker ps --filter="name=tools" -a -q)
docker rm $(docker ps --filter="name=tools" -a -q)

docker-compose -f ./framework/docker-compose-tools.yml build 

docker-compose -f ./framework/docker-compose-tools.yml up -d

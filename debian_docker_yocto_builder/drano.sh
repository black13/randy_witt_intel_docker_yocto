docker ps -aq
docker stop $(docker ps -aq) 2> /dev/null
docker rm $(docker ps -aq) 2> /dev/null
docker rmi $(docker images -q) 2> /dev/null
docker ps -aq

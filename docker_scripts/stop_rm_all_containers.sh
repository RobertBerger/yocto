docker stop $(docker ps -a -q)
docker rm $(docker ps --no-trunc -a -q)

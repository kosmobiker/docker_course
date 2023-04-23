#!/bin/bash

docker network create skynet;

docker run --rm -d --name backend_1 --net skynet kcoursedocker/task-7.1 > /dev/null;
docker run --rm -d --name backend_2 --net skynet kcoursedocker/task-7.1 > /dev/null;
docker run --rm -d --name backend_3 --net skynet kcoursedocker/task-7.1 > /dev/null;

docker run --rm -d --name nginx -p 80:80 --net skynet \
    -v $(pwd)/nginx.conf:/etc/nginx/conf.d/default.conf:ro \
    nginx > /dev/null;

for i in {1..10}; do \
    curl -s http://localhost/ | grep -E "172.25.0..?"; \
done;
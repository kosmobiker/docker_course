#!/bin/bash

# Stop all containers
docker stop $(docker ps -aq)

# Delete all containers
docker rm $(docker ps -aq)

# Delete all images
docker rmi $(docker images -q)

# Delete all volumes
docker volume rm $(docker volume ls -q)

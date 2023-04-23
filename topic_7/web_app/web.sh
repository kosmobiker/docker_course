#!/bin/bash

#create a network
docker network create pierdolnet;

#create a database container
docker run --rm -d\
  --name kurwabase \
  --net=pierdolnet \
  -e POSTGRES_USER=$MY_TEST_USER \
  -e POSTGRES_PASSWORD=$MY_TEST_PASSWORD \
  -e POSTGRES_DB=$MY_TEST_DATABASE  \
postgres:14;

# create a backend container
docker run --rm -d\
  --name backend \
  --net=pierdolnet \
  -e PG_HOST=kurwabase \
  -e PG_USER=$MY_TEST_USER \
  -e PG_PASSWORD=$MY_TEST_PASSWORD  \
  -e PG_DATABASE=$MY_TEST_DATABASE  \
kcoursedocker/task-7.4-back;

# create a frontend container
docker run --rm -d\
  --name frontend \
  --net=pierdolnet \
  -p 80:80 \
kcoursedocker/task-7.4-front;


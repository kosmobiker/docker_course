docker run --rm \
  --name my-app \
  --net=pierdol \
  -e PG_HOST=my-postgres \
  -e PG_USER=$MY_TEST_PASSWORD \
  -e PG_PASSWORD=$MY_TEST_DATABASE  \
  -e PG_DATABASE=$MY_TEST_DATABASE  \
  kcoursedocker/task-6.4




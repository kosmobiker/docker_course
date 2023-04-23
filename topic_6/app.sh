docker run --rm \
  --name my-app \
  --net=pierdol \
  -e PG_HOST=my-postgres \
  -e PG_USER=$MY_TEST_USER \
  -e PG_PASSWORD=$MY_TEST_PASSWORD  \
  -e PG_DATABASE=$MY_TEST_DATABASE  \
  kcoursedocker/task-6.4




docker run --rm -d\
  --name my-postgres \
  --net=pierdol \
  -e POSTGRES_USER=$MY_TEST_USER \
  -e POSTGRES_PASSWORD=$MY_TEST_PASSWORD \
  -e POSTGRES_DB=$MY_TEST_DATABASE  \
  postgres:14




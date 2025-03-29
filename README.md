# docker-2-containers-interation

## Docker pull command

1. docker pull thomaspoignant/hello-world-rest-json
2. docker build -t tests .

## Run container separately

1. docker run --name hello-world -d -p 8080:8080 thomaspoignant/hello-world-rest-json
2. docker run --name api_tests tests

## run two containers

1. docker-compose up

## run all

1. open terminal and run .\run.bat

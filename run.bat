@echo off

echo Building Docker image...
docker build -t tests .

echo Pulling Docker image and starting services...
docker pull thomaspoignant/hello-world-rest-json && docker-compose up -d

echo Stopping and removing containers and images...
docker stop api_tests
docker stop hello-world
docker rm hello-world
docker rm api_tests
docker rmi thomaspoignant/hello-world-rest-json
docker rmi tests

echo Cleanup completed.
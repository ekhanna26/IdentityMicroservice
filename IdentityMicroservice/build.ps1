docker rm $(docker stop identity-microservice)
#docker create --name identity-microservice-build-container identity-microservice
#docker cp identity-microservice-build-container:/ ./out
docker build -f Dockerfile -t identity-microservice .
#docker run -d -p 5100:80 identity-microservice
#docker image ls | sls identity-microservice

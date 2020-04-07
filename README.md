# react-springboot-docker ![CI](https://github.com/konradish/react-springboot-docker/workflows/CI/badge.svg)
Start coding fast with this minimal development environment. Docker Compose ties a Spring Boot backend to a React frontend. Because the source files are mounted as a volume in the Docker container, Hot Reload works for the frontend and backend.

# How the containers are created
The backend is created by cURL request to the Spring Initializr API. The generated backend is downloaded and extracted a Spring Boot starter project, then it is installed through the mvnw Maven wrapper

The frontend invokes yarn to install create-react-app and then executes yarn start

## To start the stack
1. docker-compose up --build  # -d to run in background

## Developing
The frontend and backend are stored in the folders 'fe' and 'be'. Both can be edited directly on the host, and the changes will hot reload on the Docker container. If you are using IntelliJ remember to use Ctrl-F9 to regenerate the class file.

## To create this project from scratch, using just Docker on Linux or Mac
1. Create project folder
2. Cd into the project folder
3. Create a Docker network so the frontend and backend can connect with eachother
```
docker network create rsb
```
4. Use [Spring Initializr](https://start.spring.io/) to set up the backend folder
```
mkdir be
docker run --name rsb_be --network rsb -d -v $(pwd)/be:/app -it openjdk sh -c "cd /app && curl https://start.spring.io/starter.tgz -d dependencies=web,devtools | tar zxvf - && ./mvnw install && ./mvnw spring-boot:run"
```
5. Use create-react-app to set up the frontend folder
```
mkdir fe
docker run --name rsb_fe --network rsb -d -v $(pwd)/fe:/app -it node sh -c "cd /app && yarn global add create-react-app && create-react-app . && yarn start"
```

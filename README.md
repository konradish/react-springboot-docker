# react-springboot-docker
Start coding fast with this minimal development environment. Docker Compose ties a Spring Boot backend to a React frontend. Because the source files are mounted as a volume in the Docker container, Hot Reload works for the frontend and backend.

# How the containers are created
The backend is using the Spring Initializr via cURL to download and extract a Spring Boot starter project, then it is installed through the Maven wrapper mvnw

The frontend is using yarn to install create-react-app and then calling yarn start

## To start the stack
1. docker-compose up --build  # -d to run in background

## Developing
The frontend and backend are stored in the folders 'fe' and 'be'. Both can be edited directly on the host, and the changes will hot reload on the Docker container. If you are using IntelliJ remember to use Ctrl-F9 to regenerate the class file.

## To create this project from scratch, using just Docker
## Using PowerShell or Bash or probably Mac
1. Create project folder
2. Cd into the project folder
3. Use [Spring Initializr](https://start.spring.io/) to set up the backend folder
```
mkdir be
docker run -v $(pwd)/be:/app -it openjdk sh -c "cd /app && curl https://start.spring.io/starter.tgz -d dependencies=web,devtools | tar zxvf - && ./mvnw install && ./mvnw spring-boot:run"
```
4. Use create-react-app to set up the frontend folder
```
mkdir fe
docker run -v $(pwd)/fe:/app -it node sh -c "cd /app && yarn global add create-react-app && create-react-app . && yarn start"
```

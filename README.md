# react-springboot-docker
Start coding fast with this minimal development environment. Docker Compose ties a Spring Boot backend to a React frontend. Because the source files are mounted as a volume in the Docker container, Hot Reload works for the frontend and backend.

## To start the stack
1. docker-compose up --build -d

### omit the -d to run in foreground

## To create this project from scratch, using just Docker
## Using PowerShell or Bash
1. Create project folder
2. Cd into the project folder
3. Use [Spring Initializr](https://start.spring.io/) to set up the backend folder
```
mkdir be
docker run -v $(pwd)/be:/app -it openjdk sh -c "cd /app && curl https://start.spring.io/starter.tgz -d dependencies=web,devtools | tar zxvf - && ./mvnw install"
```
4. Use create-react-app to set up the frontend folder
```
mkdir fe
docker run -v $(pwd)/fe:/app -it node sh -c "cd /app && npm install -g create-react-app && create-react-app ."
```

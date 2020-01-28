# react-springboot-docker
Minimal development environment using docker-compose to tie a  Spring Boot backend and React frontend. Supports hot reloading of the backend using the web-dev plugin.

## To create this project from scratch, using Docker
## Using PowerShell or Bash
1. Create project folder
2. Cd into the project folder
3. Use [Spring Initializr](https://start.spring.io/) to set up the backend folder
```
md be
docker run -v $(pwd)/be:/app -it openjdk sh -c "cd /app && curl https://start.spring.io/starter.tgz -d dependencies=web,devtools | tar zxvf - && ./mvnw install"
```
4. Use create-react-app to set up the frontend folder
```
md fe
docker run -v $(pwd)/fe:/app -it node sh -c "cd /app && npm install -g create-react-app && create-react-app ."
```

mkdir be
docker run -v C:\projects\react-springboot-docker\be:/app -it openjdk sh -c "cd /app && curl https://start.spring.io/starter.tgz -d dependencies=web,devtools | tar zxvf - && ./mvnw install"
mkdir fe
docker run -v C:\projects\react-springboot-docker\fe:/app -it node sh -c "cd /app && npm install -g create-react-app && create-react-app ."

#!/bin/sh
cd /app
if [ ! -f ./mvnw ]; then
    curl https://start.spring.io/starter.tgz -d dependencies=web,devtools | tar zxvf - && \
    chmod -R 777 .
    ./mvnw install
fi
./mvnw spring-boot:run

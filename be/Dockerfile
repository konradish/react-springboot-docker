FROM openjdk
WORKDIR /app
EXPOSE 8080
RUN cd /app && \
    curl https://start.spring.io/starter.tgz -d dependencies=web,devtools | tar zxvf - && \
    ./mvnw install
CMD ["./mvnw", "spring-boot:run"]
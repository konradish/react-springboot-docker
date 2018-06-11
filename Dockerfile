FROM openjdk as builder
WORKDIR /springboot
RUN curl https://start.spring.io/starter.tgz -d dependencies=web | tar zxvf - && ./mvnw install 


FROM openjdk
WORKDIR /app
COPY --from=builder /springboot/target/demo-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]

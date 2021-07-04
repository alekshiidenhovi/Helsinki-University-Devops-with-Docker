# This Dockerfile was copied from material-applications/spring-example-project
FROM openjdk:8

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .
RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]

# The command that made the app run in my browser was:
# docker build . -t spring-project && docker run -p 8080:8080 spring-project
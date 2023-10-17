#Multi Stage Docker File Example

FROM openjdk:8-jdk-alpine as builder
WORKDIR /app/source
COPY . /app/source
RUN ./mvnw clean package


FROM openjdk:8-jdk-alpine as runtime
WORKDIR /app/source
COPY --from=builder /app/source/target/*jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]
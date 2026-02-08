FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY pom.xml .
COPY mvnw .
COPY .mvn .mvn

RUN chmod +x mvnw
RUN ./mvnw dependency:go-offline

COPY src src

RUN ./mvnw package -DskipTests

CMD ["sh", "-c", "java -jar target/*.jar"]

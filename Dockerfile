FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY pom.xml .
COPY mvnw .
COPY .mvn .mvn

# 🔑 FIX: give execute permission to mvnw
RUN chmod +x mvnw

# Download dependencies
RUN ./mvnw dependency:go-offline

COPY src src

# Build the application
RUN ./mvnw package -DskipTests

CMD ["java", "-jar", "target/*.jar"]

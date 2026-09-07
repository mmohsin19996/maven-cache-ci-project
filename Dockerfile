# Step 1: Java Base Image le rahe hain
FROM eclipse-temurin:17-jdk-alpine

# Step 2: Working Directory set kar rahe hain
WORKDIR /app

# Step 3: Maven Build se bani JAR file ko container me copy kar rahe hain
COPY target/*.jar app.jar

# Step 4: Application chalane ki command
ENTRYPOINT ["java", "-jar", "app.jar"]

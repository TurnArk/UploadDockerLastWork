# Use OpenJDK image
FROM crpi-so2cqseffq3l46dn.cn-chengdu.personal.cr.aliyuncs.com/docker_image_turn_ark/openjdk17

# Copy JAR document to volum
COPY Docker_web-0.0.1-SNAPSHOT.jar /app.jar

# EXPOSE 7078 port
EXPOSE 7078

# Start Spring Boot application
CMD ["java", "-jar", "/app.jar"]

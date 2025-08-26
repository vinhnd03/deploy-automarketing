FROM openjdk:21-jdk-slim

# Đặt thư mục làm việc
WORKDIR /app

# Copy file jar đã build vào container
COPY auto_marketing_server-0.0.1-SNAPSHOT.jar app.jar

# Expose port Railway sẽ map (Railway dùng $PORT)
EXPOSE 8080

# Lệnh chạy Spring Boot, Railway sẽ tự inject PORT
CMD ["java", "-jar", "app.jar"]

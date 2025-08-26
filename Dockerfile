FROM openjdk:21-jdk-slim

# Đặt thư mục làm việc
WORKDIR /app

# Copy file jar đã build vào container (đã đổi tên sẵn thành app.jar)
COPY app.jar app.jar

# Expose port Railway sẽ map (Railway tự inject PORT vào ENV)
EXPOSE 8080

# Lệnh chạy Spring Boot, Railway sẽ tự gán giá trị PORT
CMD ["java", "-jar", "app.jar"]

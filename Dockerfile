# # Use official Python image from Docker Hub
# FROM python:3.10

# # Set working directory inside container
# WORKDIR /app

# # Copy all files from local folder to container
# COPY . .

# # Command to run the Python file

# CMD ["python", "myapp.py"]
FROM openjdk:17
WORKDIR /app
COPY demo.java /app/
RUN javac demo.java
CMD ["java", "demo"]


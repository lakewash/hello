# Use an OpenJDK base image
FROM openjdk:11

# Copy the compiled Java files into the container
COPY Hello.java /app/Hello.java

# Set working directory
WORKDIR /app

# Compile the Java program
RUN javac Hello.java

# Run the program
CMD ["java", "Hello"]


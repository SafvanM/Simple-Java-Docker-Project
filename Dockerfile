# stable official Java runtime base image
FROM amazoncorretto:17-alpine

# metadata
LABEL maintainer="iamsafvan10@gmail.com"
LABEL version="1.0"
LABEL description="A simple Java application"

# working directory
WORKDIR /app

# Copy source code into the container
COPY src/Main.java /app/Main.java

# Compile the Java code
RUN javac Main.java

# Run the Java application when the container starts
CMD ["java", "Main"]

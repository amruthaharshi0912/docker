FROM maven:3.9.10-eclipse-temurin-17
WORKDIR /app
COPY . /app
CMD ["mvn", "--version", "clean", "install"]


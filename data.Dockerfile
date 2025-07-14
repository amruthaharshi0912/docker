FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y maven git python3 openjdk-17-jdk wget && \
    wget https://archive.apache.org/dist/tomcat/tomcat-10/v10.1.20/bin/apache-tomcat-10.1.20.tar.gz && \
    tar -xzf apache-tomcat-10.1.20.tar.gz && \
    mv apache-tomcat-10.1.20 /opt/tomcat && \
    rm apache-tomcat-10.1.20.tar.gz

# Set environment variables
ENV CATALINA_HOME=/opt/tomcat
ENV PATH=$PATH:$CATALINA_HOME/bin

EXPOSE 8080

CMD ["catalina.sh", "run"]



FROM ubuntu

  #Volume configuration
VOLUME /var/volume:/Documents/testes/volume
  #install java
RUN apt upgrade -y && \
    apt update -y && \
    apt install default-jre -y && \
    apt install telnet -y && \
    apt install curl -y && \
    apt install wget -y && \
    apt install nano -y ;

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
RUN export JAVA_HOME
WORKDIR /Luma

  #Copiar arquivo Veracode 
COPY vosp-api-wrappers-java-19.11.6.0.jar /opt



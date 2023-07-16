FROM openjdk:11
VOLUME /tmp
ADD target/*.jar gke.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/gke.jar"]

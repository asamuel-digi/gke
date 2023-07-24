FROM openjdk:11
COPY target/*.jar gke.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/gke.jar"]

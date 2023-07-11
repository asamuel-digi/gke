FROM openjdk:8
EXPOSE 8080
ADD target/gke-0.0.1-SNAPSHOT.jar gke.jar
ENTRYPOINT [ "java", "-jar", "/gke.jar" ]

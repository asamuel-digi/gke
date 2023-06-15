FROM openjdk:8
EXPOSE 8080
ADD target/gke.jar gke.jar
ENTRYPOINT [ "java", "-jar", "/gke.jar" ]
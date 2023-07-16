FROM openjdk:11
COPY target/*.jar gke.jar
ENTRYPOINT ["java","-jar","/gke.jar"]

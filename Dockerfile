FROM openjdk:11
ADD target/*.jar gke.jar
ENTRYPOINT ["java","-jar","/gke.jar"]

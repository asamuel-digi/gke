FROM openjdk:11
VOLUME /tmp
ADD target/*.jar gke.jar
ENTRYPOINT ["java","-jar","/gke.jar"]

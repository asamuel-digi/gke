FROM openjdk:11
RUN mvn install
COPY target/*.jar gke.jar
ENTRYPOINT ["java","-jar","/gke.jar"]

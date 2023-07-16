FROM openjdk:11
VOLUME /tmp
RUN mvn install
ADD target/*.jar gke.jar
ENTRYPOINT ["java","-jar","/gke.jar"]

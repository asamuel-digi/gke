FROM openjdk:11
RUN mvn install
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} gke.jar
ENTRYPOINT ["java","-jar","/gke.jar"]

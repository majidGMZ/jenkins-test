FROM openjdk:8

ADD target/jenkinscd-0.0.1-SNAPSHOT.war jenkinscd-0.0.1-SNAPSHOT.war

EXPOSE 8585

ENTRYPOINT ["java","-jar","jenkinscd-0.0.1-SNAPSHOT.war"]

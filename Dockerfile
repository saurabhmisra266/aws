FROM java:8
COPY target/Job-C-1.0-SNAPSHOT-jar-with-dependencies.jar /ddb.jar
RUN  unzip /ddb.jar
CMD ["java","-cp","/ddb.jar","ddb.jar/InsertData.class"]
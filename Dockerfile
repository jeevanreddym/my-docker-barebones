# base image
FROM openjdk

MAINTAINER Jeevan Reddy <jeevan.reddy@gmail.com>
ENV DB_HOST_URL my-db-url:1234/db
EXPOSE 8080

RUN mkdir code-dir-1: \
    echo "Hello Docker World" > hello.txt

WORKDIR code-dir-1
RUN touch newFile.txt
COPY Hello.java .
RUN javac Hello.java

#CMD java Hello && sh
ENTRYPOINT java Hello

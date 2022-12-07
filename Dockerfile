FROM anapsix/alpine-java
MAINTAINER devops
COPY Hello.jar Hello.jar 
CMD [ "java","-jar","Hello.jar"]

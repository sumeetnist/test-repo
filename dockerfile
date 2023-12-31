FROM openjdk:11-jdk
MAINTAINER GFG author
LABEL env=production
ENV apparea /data/app
RUN mkdir -p $apparea
ADD https://get.jenkins.io/war/2.397/jenkins.war $apparea
WORKDIR $apparea
EXPOSE 8090
CMD ["java","-jar","jenkins.war"]

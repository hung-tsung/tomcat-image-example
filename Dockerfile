FROM ubuntu
MAINTAINER jason

RUN apt-get update && apt-get install -y wget

RUN cd /

ADD jdk-8u161-linux-x64.tar.gz /

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
RUN tar zxvf apache-tomcat-7.0.85.tar.gz

ENV JAVA_HOME=/jdk1.8.0_161
ENV PATH=$PATH:/jdk1.8.0_161/bin
CMD ["/apache-tomcat-7.0.85/bin/catalina.sh", "run"]

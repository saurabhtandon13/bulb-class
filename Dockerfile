FROM centos:7

RUN yum install httpd -y && yum install mysql-server -y

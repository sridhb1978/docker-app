FROM mysql:latest

WORKDIR D:/docker-app/database

# RUN apt-get update
# RUN apt-get install -y vim

# Copy the database initialize script: 
# Contents of /docker-entrypoint-initdb.d are run on mysqld startup
ADD  /docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d/

ADD my.cnf     /etc/mysql/conf.d/my.cnf
# ADD my.cnf     /etc/mysql/my.cnf
ADD mysql.cnf /etc/mysql/conf.d/mysql.cnf
ADD mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

# Default values for passwords and database name. Can be overridden on docker run
# ENV MYSQL_ROOT_PASSWORD=my-secret-pw # Not defaulted for security reasons!

ENV MYSQL_DATABASE=signup
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=password
ENV MYSQL_ROOT_PASSWORD=root

# start mysql
EXPOSE 3307
FROM mysql:5.6
EXPOSE 3306

ENV MYSQL_ROOT_PASSWORD mysqlpassword

ADD ./resources/* /docker-entrypoint-initdb.d/

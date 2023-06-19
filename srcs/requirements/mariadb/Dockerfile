FROM alpine:3.17

ARG DB_NAME
ARG DB_ROOT_PASSWORD
ARG DB_USER
ARG DB_USER_PASSWORD

RUN apk update && apk upgrade && apk add mariadb mariadb-client mariadb-common mariadb-server-utils

COPY ./scripts/createdb.sh /
COPY ./conf/my.cnf /etc/mysql/my.cnf
RUN  mkdir -p /var/run/mysqld && chmod 777 /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld && touch /var/run/mysqld/mysqld.sock && mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
RUN  chmod +x ./createdb.sh
RUN ./createdb.sh

EXPOSE 3306

CMD mariadbd --user=mysql

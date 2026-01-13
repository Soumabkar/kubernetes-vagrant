#!/bin/sh 
# Si sur le maître => on crée le compte de réplication et on sort 
if [ `hostname` = "mariadb-0" ]; then 
   cp /mariadb-init-db/replication-user.sql 
/docker-entrypoint-initdb.d 
 exit 
fi 
# Sinon, configuration de l'esclave 
echo "show master status;" | \ 
 mariadb -h mariadb-0.mariadb -p$MARIADB_ROOT_PASSWORD > /tmp/status 
FILE=`    awk '/master-bin/ { print $1}' /tmp/status` 
POSITION=`awk '/master-bin/ { print $2}' /tmp/status` 
rm /tmp/status 
echo "$FILE/$POSITION" 
cat /mariadb-init-db/configure-slave.sql | \ 
     sed "s/@FILE@/$FILE/" |\ 
     sed "s/@POSITION@/$POSITION/" |\ 
     cat > /docker-entrypoint-initdb.d/configure-slave.sql
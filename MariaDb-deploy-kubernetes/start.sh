#!/bin/sh 
INDEX=`hostname | awk -F- '{ print $2 }'` 
ID=`expr $INDEX + 1` 
OPTIONS="--server-id=$ID --log-bin --log-basename=master" 
OPTIONS="$OPTIONS --binlog-do-db=$MARIADB_DATABASE" 
OPTIONS="$OPTIONS --binlog-format=row 
--replicate-do-db=$MARIADB_DATABASE" 
/mariadb-init-db/configure-sync.sh 
case `hostname` in 
   mariadb-0) : ;; 
   *) unset MARIADB_USER MARIADB_PASSWORD ;; 
esac 
exec docker-entrypoint.sh $OPTIONS
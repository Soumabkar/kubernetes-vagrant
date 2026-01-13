#!/bin/bash

#--memory Mo : quantité de mémoire à donner à la machine (par défaut 2048, soit 2 Go)
#--cpus : nombre de CPU à donner à la machine (par défaut 2)
#--kubernetes-version : version de Kubernetes à installer (par défaut la dernière version stable)
#--vm-driver : le driver de la machine virtuelle (par défaut docker si Docker est installé)
#--container-runtime : le runtime de conteneur à utiliser (par défaut docker)

# sudo chown vagrant:vagrant /usr/local/bin/minikube
# sudo chmod +x /usr/local/bin/minikube

sudo usermod -aG docker vagrant && newgrp docker  # Ajouter l'utilisateur vagrant au groupe docker pour exécuter Docker sans sudo, sudo usermod -aG docker $USER && newgrp docker
# sudo usermod -aG docker vagrant
# newgrp docker  # Recharge les groupes pour la session actuelle

# # Installer conntrack (nécessaire pour le driver none)
# apt-get update && apt-get install -y conntrack

minikube start
minikube kubectl -- get pods -A

# minikube start --cpus 2 --memory 3072 --kubernetes-version v1.34.0 --vm-driver docker  --container-runtime containerd
# minikube kubectl -- get pods -A

# sudo minikube start --driver=none --cpus=2 --memory=2048 --kubernetes-version=v1.29.3 --container-runtime=containerd
docker logs minikube # Afficher les logs de la VM Minikube



# kubectl create deployment mariadb --image=docker.io/library/mariadb --dry-run=client --output yaml > mariadb-kube/mariadb-deployment.yaml
# kubectl apply -f mariadb-kube/pvc.yaml
# kubectl get pvc mariadb-data
# kubectl apply -f mariadb-kube/mariadb-deployment.yaml
# kubectl get pods -l app=mariadb
# kubectl apply -f mariadb-kube/mariadb-deployment-v1.yaml
# kubectl apply -f mariadb-kube/mariadb-deployment-v2.yaml
# kubectl exec -it deployment/mariadb -- bash
# mariadb-admin status -p$MARIADB_ROOT_PASSWORD
# exit
# kubectl apply -f mariadb-kube/service.yaml
# kubectl apply -f mariadb-kube/mariadb-deployment-v3.yaml
# kubectl get pods -l app=mariadb
# kubectl describe pods mariadb-984bc4895-pmpk4
# kubectl logs mariadb-984bc4895-pmpk4
# kubectl apply -f mariadb-kube/mariadb-deployment-v4.yaml
# kubectl get pods -l app=mariadb --watch
# kubectl scale deployment mariadb --replicas=2 
# kubectl describe pods mariadb-984bc4895-pmpk4
# kubectl logs mariadb-984bc4895-pmpk4
# kubectl delete deployment mariadb
# kubectl get pods -l app=mariadb
# kubectl apply -f mariadb-kube/mariadb-statefulset.yaml
# kubectl get pods -l app=mariadb
# kubectl get pvc
# kubectl get pv
# kubectl delete pvc/mariadb-data
# kubectl scale sts mariadb --replicas=2  # kubectl scale statefulset  mariadb --replicas=2
# kubectl get pvc -l app=mariadb 
# kubectl get pods -l app=mariadb
# kubectl get pods,pvc -l app=mariadb 
# kubectl scale sts mariadb --replicas=1

# kubectl scale sts mariadb --replicas=2
# Identifiants des serveurs
# Connexion aux pods

# kubectl exec -it mariadb-0 -- bash
# mariadb -u root -p$MARIADB_ROOT_PASSWORD
# SET GLOBAL server_id=1; 
# show global variables LIKE 'server_id';
# SET GLOBAL server_id=1;
# create user 'USER'@'MACHINE SOURCE' identified by 'MOT DE PASSE'; 
# create user 'USER'@'replication' identified by 'ReplicationUser';
# create user 'replication'@'%' identified by 'ReplicationUser';
# grant replication slave on *.* to 'replication'@'%';

# exit
# kubectl exec -it mariadb-1 -- bash
# mariadb -u root -p$MARIADB_ROOT_PASSWORD
# SET GLOBAL server_id=2;
# show global variables LIKE 'server_id';

# exit
# kubectl apply -f mariadb-kube/mariadb-statefulset-v2.yaml

# kubectl exec -it mariadb-0 -- bash
# MariaDB [(none)]> CHANGE MASTER TO 
#  MASTER_HOST='mariadb-0.mariadb', 
#  MASTER_USER='replication', 
#  MASTER_PASSWORD='ReplicationUser', 
#  MASTER_PORT=3306, 
#  MASTER_LOG_FILE='master-bin.000003', 
#  MASTER_LOG_POS=802, 
#  MASTER_CONNECT_RETRY=10; 

## mariadb-0 
# START SLAVE;
# SHOW SLAVE STATUS\G
# mariadb -u $MARIADB_USER -p$MARIADB_PASSWORD $MARIADB_DATABASE

# show tables; 
# CREATE TABLE test ( 
#  id INT, 
#  data VARCHAR(100) 
# ); 

# kubectl exec -it mariadb-1 -- sh 
# mariadb -u $MARIADB_USER -p$MARIADB_PASSWORD $MARIADB_DATABASE
#  show tables;



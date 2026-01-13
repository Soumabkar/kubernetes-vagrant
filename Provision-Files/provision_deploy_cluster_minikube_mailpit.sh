#!/bin/bash

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
#sudo minikube kubectl -- get pods -A # Vérification que Minikube et Kubernetes sont bien démarrés
# sudo kubectl get namespace # Vérification que kubectl fonctionne correctement avec Minikube
# minikube addons list # Liste des addons disponibles
# minikube addons enable dashboard # Activation de l'addon dashboard
# minikube addons enable metrics-server # Activation de l'addon metrics-server
# minikube dashboard # Lancement du dashboard Kubernetes de Minikube    
# minikube stop # Arrêt de Minikube
# minikube start # Démarrage de Minikube
# minikube delete # Suppression de la VM Minikube

# minikube ssh # Accès SSH à la VM Minikube
# sudo ctr namespace ls # Liste des namespaces containerd dans Minikube
# sudo ctr -n k8s.io images list # Liste des images containerd dans le namespace k8s.io de Minikube
# sudo crictl --runtime-endpoint=/run/containerd/containerd.sock images # Liste des images via crictl dans Minikube
# sudo crictl --runtime-endpoint=/run/containerd/containerd.sock pods # Liste des pods via crictl dans Minikube
# sudo crictl --runtime-endpoint=/run/containerd/containerd.sock ps -a # Liste des conteneurs via crictl dans Minikube  
# sudo ctr -n k8s.io container ls # Liste des conteneurs dans le namespace k8s.io de Minikube
# sudo crictl ps --label=io.kubernetes.container.name=etcd # Filtrer les conteneurs etcd via crictl dans Minikube
# sudo crictl inspect fb6ed0712a8ff # Inspecter un conteneur via crictl dans Minikube (remplacer par l'ID du conteneur)
# sudo journalctl -u kubelet # Voir les logs du kubelet dans Minikube
# minikube stop && minikube delete # Arrêt et suppression de Minikube

# Ouvre un terminal sur ta machine hôte (pas dans la VM).
# Crée un tunnel SSH vers la VM Vagrant :
# vagrant ssh -- -L 8025:localhost:8025 # (Cela redirige le port 8025 de la VM vers ton localhost.)
# vagrant ssh -- -L 1025:localhost:1025

# Dans un autre terminal, démarre le Dashboard dans la VM :
# vagrant ssh -c "minikube dashboard" # Cela lancera le dashboard et affichera une URL. (Cela lancera le proxy dans la VM.)
# Ouvre un navigateur sur ta machine hôte et va à l'URL affichée (généralement http://localhost:8025/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/).

# Linux
# ps aux | grep ssh
# ps aux | grep ssh
# kill <PID>
#sudo lsof -i :8025


# Windows cmd

#tasklist | findstr ssh
#taskkill /F /PID <PID>
# netstat -ano | findstr :8025
# tasklist | findstr <PID>
# taskkill /F /PID <PID>

# minikube start
# kubectl delete deployment mailpit
# kubectl create deployment mailpit --image=axllent/mailpit
# kubectl get deployment
# kubectl describe deployment mailpit
# kubectl get replicaset
# kubectl get pods
# watch kubectl get pods
# kubectl describe pods mailpit-85cc79b67f-4gppl
# kubectl logs mailpit-85cc79b67f-4gppl -c mailpit
# kubectl port-forward deployment/mailpit 8025 # kubectl port-forward mailpit-85cc79b67f-4gppl 8025
# kubectl expose deployment/mailpit --port 1025,8025
# kubectl exec -it mailpit-85cc79b67f-4gppl -- sh
# getent hosts mailpit
# exit
# kubectl debug mailpit-85cc79b67f-4gppl -it --image=alpine
# exit
# kubectl run -it --rm test-mailpit --image=alpine sh
# exit
 
# kubectl get deployment mailpit -o yaml > mailpit-deployment.yaml
# kubectl edit deployment mailpit

# mkdir -p /home/vagrant/mailpit-kube/

# kubectl create deployment mailpit --image axllent/mailpit --dry-run=client -o yaml > mailpit-kube/mailpit-deployment.yaml
# kubectl apply -f mailpit-kube/mailpit-deployment.yaml
# kubectl delete -f mailpit-kube/mailpit-deployment.yaml 
# kubectl expose deployment/mailpit --dry-run=client --port 1025,8025 -o yaml > mailpit-kube/mailpit-service.yaml
# kubectl apply -f mailpit-kube/mailpit-service.yaml
# kubectl delete -f mailpit-kube/mailpit-service.yaml
# kubectl get pods -l app=mailpit
# créer un repertoire mailpit et y placer les fichiers mailpit-deployment.yaml et mailpit-service.yaml

# minikube kubectl -- create deployment mailpit --image axllent/mailpit --dry-run=client -o yaml > mailpit-kube/mailpit-deployment.yaml
# minikube kubectl -- apply -f mailpit-kube/mailpit-deployment.yaml
# minikube kubectl -- apply -f mailpit-kube/mailpit-deployment.yaml
# minikube kubectl -- expose deployment/mailpit --dry-run=client --port 1025,8025 -o yaml > mailpit-kube/mailpit-service.yaml
# minikube kubectl -- apply -f mailpit-kube/mailpit-service.yaml
# minikube kubectl -- apply -f ./mailpit-kube
# minikube kubectl -- get -f ./mailpit-kube
# minikube kubectl -- port-forward deployment/mailpit 8025

# kubectl apply -f ./mailpit-kube
# kubectl get -f ./mailpit-kube
# kubectl delete -f ./mailpit-kube
# kubectl explain service
# kubectl explain deployment
# kubectl explain pods
# kubectl explain pods.spec.containers
# kubectl explain pods.spec.containers.ports
# kubectl explain service.status 

# minikube addons enable ingress
# kubectl -n ingress-nginx get pods -l app.kubernetes.io/name
# kubectl apply -f mailpit-kube/ingress.yaml 
# kubectl get ingress 
# minikube ip
# dig +short 192.168.0.1.nip.io # /etc/hosts à adapter avec l'IP de minikube
# nmcli connection show

# kubectl get pods -l app=mailpit
# kubectl exec -it deployment/mailpit -- sh
# ps -ef
# mkdir /tmp/test 
# kubectl get pods -l app=mailpit -o jsonpath="{.items[*].status.containerStatuses[*].containerID}" 
# kill 1
# kubectl get pods -l app=mailpit
# kubectl get pods -l app=mailpit -o jsonpath="{.items[*].status.containerStatuses[*].containerID}" 
# kubectl exec -it deployment/mailpit -- sh 
# ls -ld /tmp/test
# minikube ssh
# sudo crictl inspect 1b8c5fe88d646290138f178492eb4b00586f1aab47cf496da995e76f525378f8  # 2391fe361bbba0f70376740d0d0f48a1b258a353edd84317940146869612a57
# sudo crictl ps --all --label io.kubernetes.container.name=mailpit 

# Readiness vs Liveness
# les tests « readiness », permettant de savoir si un conteneur est prêt (est-il démarré ? Est-ce que ses dépendances sont prêtes ?) 
# les tests « liveness » permettant de savoir si un conteneur est toujours utilisable (a-t-il suffisamment de mémoire ? Répond-il toujours en temps et en heure ?).
# Les tests sur la vivacité (liveness) ne doivent pas dépendre d’autres briques externes, car si ces briques externes tombent en panne, le conteneur serait redémarré inutilement.
# Un test de readiness, quant à lui, doit refléter que l’ensemble de l’application fonctionne. Dans ce cas, 
# le test peut se faire sur l’état du process ainsi que sur les dépendances indispensables du service (une base de données ou un middleware de message, par exemple)

# kubectl apply -f mailpit-tcp-port.yaml
# kubectl get pods -l app=mailpit
# kubectl apply -f mailpit-tcp-port.yaml
# kubectl apply -f deployment-flask.yaml 
# kubectl get pod -l app=flask-healthcheck
# kubectl describe pods flask-healthcheck-6f89b8-s5q8z
# kubectl apply -f mailpit-deployment.yaml
# kubectl get priorityclass
# kubectl get priorityclass system-node-critical -o yaml
# kubectl get pods -n kube-system -o custom-columns=NAME:.metadata.name,\PRIORITY:.spec.priorityClassName
# kubectl apply -f custom-priority-class.yaml 
# kubectl apply -f mailpit.yaml 

# Persistance des données

# spec: 
#  volumes: 
#    - name: nfs 
#      nfs: 
#        # URL for the NFS server 
#        server: 192.168.0.1 
#        path: / 

# spec: 
#  containers: 
#    - name: mailpit 
#      image: axllent/mailpit 
 
#      # Mount the NFS volume in the container 
#      volumeMounts: 
#        - name: nfs 
#          mountPath: /maildir 

# kubectl apply -f pv-mailpit.yaml
# kubectl apply -f pvc-mailpit.yaml 
# kubectl get persistentvolume
# kubectl get persistentvolumeclaim # kubectl get pvc
# kubectl apply -f mailpit-with-pvc.yaml 
# kubectl get pods -l app=mailpit
# kubectl describe pod mailpit-85cc79b67f-4gppl

# pkill -f "kubectl port-forward"
# kubectl get pods

# kubectl apply -f ./mailpit
# kubectl get persistentvolumeclaim
#  ls mailpit
#     kubectl apply -f mailpit-with-pvc.yaml
#    kubectl apply -f ./mailpit
#    ls mailpit
#     kubectl get pods -l app=mailpit
#     kubectl describe pod mailpit-85cc79b67f-4gppl
#     export MPURL="https://github.com/axllent/mailpit/releases"
#      wget $MHURL/download/v1.18.3/mailpit-linux-amd64.tar.gz
#     ls
#    wget $MHURL/download/v1.28.1/mailpit-linux-amd64.tar.gz
#    echo $MHURL/download/v1.28.1/mailpit-linux-amd64.tar.gz
#     wget ${MPURL}/download/v1.28.1/mailpit-linux-amd64.tar.gz
#     tar xfvz mailpit-linux-amd64.tar.gz mailpit
#    ls
#     tar xfvz mailpit-linux-amd64.tar.gz mailpit
#    sudo  tar xfvz mailpit-linux-amd64.tar.gz mailpit
#     ls
#     rename mailpit mailpit-kube
#    mv mailpit mailpit-kube
#    tar xfvz mailpit-linux-amd64.tar.gz mailpit
#    sudo cp mailpit /usr/local/bin/mailpit
#     sudo ln -s /usr/local/bin/mailpit /usr/local/bin/sendmail
#    kubectl get svc mailpit
#     sudo lsof -i :1025
#    sudo lsof -i :8025
#    kubectl get events --sort-by='.metadata.creationTimestamp'
#     pkill -f "kubectl port-forward"
#    kubectl port-forward service/mailpit 8025:8025
#     ls
#   vim email.txt
#     vim email-v1.txt
#   cat email-v1.txt | sendmail -S=127.0.0.1:1025
#    cat email.txt
#   cat email.txt | sendmail -S=127.0.0.1:1025
#   cat email.txt | sendmail -S=127.0.0.1:1025
#   cat email-v1.txt | sendmail -S=127.0.0.1:1025
#    cat email.txt | sendmail -S 127.0.0.1:1025 soumabkar@gmail.com
#    kubectl explain pods.spec.containers.securityContext
#    ls
#    kubectl apply -f ./mailpit
#   kubectl apply -f ./mailpit-kube/
#   kubectl logs deploy/mailpit --previous
#    minikube ssh
#  kubectl apply -f ./mailpit-kube/mailpit-with-pvc-and-security-context.yaml
#   cat email.txt | sendmail -S=127.0.0.1:1025
#   kubectl get ingress mailpit
#  kubectl get storageclass

# kubectl get storageclass


# Modes d’accès
# Un volume persistant peut être accédé à l’aide de plusieurs modes :
# ReadWriteOnce : montage de l’espace disque sur un pod à la fois ;
# ReadOnlyMany : lecture seule sur plusieurs pods à la fois ;
# ReadWriteMany : montage en lecture-écriture dans plusieurs pods à la fois.
# Au niveau des sorties de la commande kubectl, ces modes sont abrégés de la manière suivante :
# ReadWriteOnce : RWO
# ReadOnlyMany : RXO
# ReadWriteMany : RWX

# kubectl get csinode

# kubectl delete -f ./mailpit-kube/pvc.yaml -f ./mailpit-kube/mailpit-deployment.yaml
# kubectl apply -f ./mailpit-kube/pvc.yaml -f ./mailpit-kube/mailpit-deployment.yaml

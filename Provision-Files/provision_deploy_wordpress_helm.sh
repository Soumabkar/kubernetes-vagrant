#!/bin/bash

### helm search repo wordpress
# helm repo add bitnami https://charts.bitnami.com/bitnami
# helm repo list
# helm repo remove bitnami
# helm search repo wordpress
# helm repo update

# helm install wordpress bitnami/wordpress

# Installation sans accès direct helm
# helm template wordpress bitnami/wordpress

# helm template wordpress bitnami/wordpress > wordpress-manifest.yaml
# kubectl apply -f wordpress-manifest.yaml

# helm template wordpress bitnami/wordpress | kubectl apply -f - 

# helm install wordpress-compta bitnami/wordpress  --namespace intranet --create-namespace
# helm upgrade wordpress-compta bitnami/wordpress --namespace intranet --create-namespace
# export WORDPRESS_PASSWORD=$(kubectl get secret --namespace "intranet" wordpress-compta -o jsonpath="{.data.wordpress-password}" | base64 -d) # Le mot de passe de l’administrateur WordPress
# echo $WORDPRESS_PASSWORD
# export MARIADB_ROOT_PASSWORD=$(kubectl get secret --namespace "intranet" wordpress-compta-mariadb -o jsonpath="{.data.mariadb-root-password}" | base64 -d) # Le mot de passe root de MariaDB
# echo $MARIADB_ROOT_PASSWORD
# export MARIADB_PASSWORD=$(kubectl get secret --namespace "intranet" wordpress-compta-mariadb -o jsonpath="{.data.mariadb-password}" | base64 -d)  # Le mot de passe de l’utilisateur WordPress dans MariaDB
# echo $MARIADB_PASSWORD
# helm uninstall wordpress-compta --namespace intranet
# kubectl -n intranet delete pvc --selector app.kubernetes.io/instance=wordpress-compta 

# helm install wordpress-compta bitnami/wordpress --namespace intranet --create-namespace --set wordpressPassword=$WORDPRESS_PASSWORD --set mariadb.auth.rootPassword=$MARIADB_ROOT_PASSWORD --set mariadb.auth.password=$MARIADB_PASSWORD
# kubectl -n intranet get secret -l owner=helm
# kubectl -n intranet get secret sh.helm.release.v1.wordpress-compta.v1  -o go-template={{.data.release}} | base64 -d | base64 -d |  gunzip --stdout | jq . 
# kubectl -n intranet get secret sh.helm.release.v1.wordpress-compta.v1 -o go-template={{.data.release}} | base64 -d | base64 -d | gunzip --stdout | jq .config
# helm -n intranet get values wordpress-compta
# helm upgrade --install wordpress-compta bitnami/wordpress --namespace intranet --create-namespace
# helm ls 
# helm delete wordpress --keep-history
# kubectl get pods
# kubectl -n intranet get pods
# helm ls 
# helm rollback wordpress 1
# helm delete wordpress
# helm ls -A
# kubectl -n intranet get pods
# kubectl -n intranet get deployment
# kubectl -n intranet port-forward deployment/wordpress-compta 8080:8080
# helm inspect values bitnami/wordpress
# export WORDPRESS_URL=wordpress.compta.$(minikube ip).nip.io
# helm upgrade --install wordpress-compta bitnami/wordpress --namespace intranet --set ingress.enabled=true --set ingress.hostname=$WORDPRESS_URL
# kubectl -n intranet get ingress
# helm -n intranet history wordpress-compta

# helm plugin install https://github.com/databus23/helm-diff
# helm plugin install https://github.com/databus23/helm-diff --verify=false
# helm -n intranet history wordpress-compta
# helm diff revision -n intranet wordpress-compta 1 3
# helm diff revision -n intranet wordpress-compta 1 3 -C 3
## helm diff --context 2 upgrade --install wordpress-compta bitnami/wordpress --namespace intranet --reuse-values --set "ingress.hostname=wordpress.new.address"
# helm diff --context 2 --dry-run=server upgrade --install wordpress-compta bitnami/wordpress --namespace intranet --reuse-values --set "ingress.hostname=wordpress.new.address"
# helm --namespace intranet rollback wordpress-compta 1
# helm --namespace intranet history wordpress-compta 
# helm --namespace intranet rollback wordpress-compta 2

# helm plugin install https://github.com/komodorio/helm-dashboard.git --verify=false
# helm dashboard    ## https://artifacthub.io/




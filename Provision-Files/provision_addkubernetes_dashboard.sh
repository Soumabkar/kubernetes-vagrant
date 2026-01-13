helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
helm upgrade --install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard --create-namespace --namespace kubernetes-dashboard 

# Creation d'un compte d'accès pour le dashboard

kubectl create serviceaccount admin-user --namespace kubernetes-dashboard 
kubectl create clusterrolebinding admin-user --clusterrole cluster-admin --serviceaccount kubernetes-dashboard:admin-user 

# Récupération du token d'accès pour le dashboard
kubectl -n kubernetes-dashboard create token admin-user

kubectl -n kubernetes-dashboard create token admin-user | cut -d. -f1 | sed 's/\./\n/g' | base64 --decode | jq . 

kubectl -n kubernetes-dashboard create token admin-user | cut -d. -f2 | sed 's/\./\n/g' | base64 --decode | jq .

# Connexion au tableau de bord

kubectl -n kubernetes-dashboard port-forward svc/kubernetes-dashboard-kong-proxy 8443:443

#!/bin/bash

# kubectl config get-contexts
# kubectl config current-context
# export KUBECONFIG=~/kubeconfig/cluster-prod # Pour utiliser un kubeconfig spécifique
# kubectl config get-contexts
# export KUBECONFIG=minikube:cluster1:cluster2 # Pour utiliser plusieurs kubeconfig
# kubectl config use-context minikube
# kubectl config use-context gke-test
# kubectl config get-contexts
# kubectl config set-context mini-system  --cluster=minikube --user=minikube  --namespace=kube-system
# kubectl config use-context mini-system 
# kubectl get pods 
# kubectl config delete-context mini-system 

# arkade get kubectx kubens # Installation de kubectx et kubens via arkade
# export PATH=$PATH:$HOME/.arkade/bin/
# sudo mv /home/vagrant/.arkade/bin/kubectx /usr/local/bin/ # Déplacement de kubectx vers /usr/local/bin pour un accès global
# arkade get kubens
# export PATH=$PATH:$HOME/.arkade/bin/
# sudo mv /home/vagrant/.arkade/bin/kubens /usr/local/bin/ # Déplacement de kubens vers /usr/local/bin pour un accès global

## sudo wget -O /usr/local/bin/kubectx https://raw.githubusercontent.com/ahmetb/kubectx/master/kubectx 
## sudo wget -O /usr/local/bin/kubens https://raw.githubusercontent.com/ahmetb/kubectx/master/kubens 
## sudo chmod +x /usr/local/bin/kube{ns,ctx} 

# kubectx ==> tab
# kubectx minikube

# kubens ==> tab 
# kubectl config get-contexts
# kubens default

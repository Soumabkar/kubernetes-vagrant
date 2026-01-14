#!/bin/bash

# minikube ssh
# cd /etc/kubernetes/manifests
# ls -l
# sudo cat etcd.yaml 
# cd /etc/kubernetes/manifests
# sudo grep hostNetwork * 
# sudo mv /etc/kubernetes/manifests/kube-controller-manager.yaml /tmp # Désactivation d’un pod système
# kubectl -n kube-system get pods -l component=kube-controller-manager
# sudo mv /tmp/kube-controller-manager.yaml /etc/kubernetes/manifests/kube-controller-manager.yaml # Réactivation d’un pod système
# # Deployment, StatefulSet, ReplicaSet, Pod, DaemonSets 
# kubectl get daemonset -n kube-system
# # https://github.com/nicolargo/glances

# # kubectl apply -f Glances/glances.yaml
# # kubectl -n kube-system get pods -l app=glances
# # kubectl -n kube-system get pods -l app=glances -o wide
# # kubectl get nodes -o json
# # sudo apt-get install jq
# # kubectl get nodes -o json | jq '.items[]'
# # kubectl get nodes -o json | jq '.items[] | "\(.metadata.name) \(.spec.taints)"'
# # kubectl apply -f Glances/glances-v1.yaml
# # kubectl -n kube-system get pods -l app=glances
# # kubectl --namespace kube-system patch DaemonSet glances --patch '{"spec":{"template":{"spec":{"nodeSelector":{"false-label":"false-value"}}}}}'
# # kubectl --namespace kube-system describe DaemonSet glances 
# # kubectl --namespace kube-system patch DaemonSet glances --type json --patch='[ {"op": "remove", "path": "/spec/template/spec/nodeSelector/false-label"} ]'
# # kubectl replace -f Glances/glances-v1.yaml
# # kubectl -n kube-system get pods -l app=glances -o wide 
# # kubectl port-forward -n kube-system glances-ngnnb 61208 

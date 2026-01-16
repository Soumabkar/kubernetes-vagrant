#!/bin/bash

arkade get trivy
sudo mv /home/vagrant/.arkade/bin/trivy /usr/local/bin/ # Déplacement de trivy vers /usr/local/bin pour un accès global

# trivy version
# trivy k8s --report summary --timeout 20m 
# trivy k8s --report summary --timeout 20m --format json --output $HOME/report.json 
# kubectl create job scan-trivy --image docker.io/aquasec/trivy:0.53.0 --dry-run=client --output yaml -- trivy kubernetes --report=summary --quiet --format=json --timeout=20m 
# kubectl create serviceaccount trivy --dry-run=client --output=yaml 
# kubectl create serviceaccount trivy --dry-run=client --output=yaml > Trivy/trivy-serviceaccount.yaml
# kubectl apply -f Trivy/trivy-serviceaccount.yaml
## kubectl create clusterrolebinding --clusterrole=admin --serviceaccount trivy trivy --dry-run=client --output=yaml 
## kubectl create clusterrolebinding --clusterrole=admin --serviceaccount trivy trivy --dry-run=client --output=yaml > Trivy/clusterrolebinding.yaml
# kubectl create clusterrolebinding trivy-admin-binding --clusterrole=admin --serviceaccount=default:trivy --dry-run=client -o yaml > Trivy/clusterrolebinding.yaml
# kubectl apply -f Trivy/clusterrolebinding.yaml
# kubectl apply -f Trivy/trivy_job.yaml ##



# https://github.com/aquasecurity/trivy/releases # Installation manuelle de trivy
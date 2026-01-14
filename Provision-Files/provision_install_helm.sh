#!/bin/bash

# # Fonction pour installer Helm
# install_helm() {
#     echo "Helm n'est pas installé. Installation en cours..."
#     curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
#     if [ $? -eq 0 ]; then
#         echo "Helm a été installé avec succès."
#     else
#         echo "Échec de l'installation de Helm. Vérifiez votre connexion Internet ou vos permissions."
#         exit 1
#     fi
# }

# Vérification de l'installation de Helm
if command -v helm &> /dev/null; then
    echo "Helm est déjà installé :"
    helm version
else
    #install_helm
    wget https://get.helm.sh/helm-v3.15.2-linux-amd64.tar.gz
    tar xfvz helm-v3.15.2-linux-amd64.tar.gz 
    sudo cp linux-amd64/helm /usr/local/bin/helm 
    helm version
fi


# wget https://get.helm.sh/helm-v3.15.2-linux-amd64.tar.gz
# tar xfvz helm-v3.15.2-linux-amd64.tar.gz 
# sudo cp linux-amd64/helm /usr/local/bin/helm 
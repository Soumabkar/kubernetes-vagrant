#!/bin/bash

# Vérifier si minikube est installé
echo "=== Vérification de Minikube ==="

if command -v minikube &> /dev/null; then
    echo "Minikube est installé : $(minikube version)"
    # Vérifier l'état du cluster
    echo -e "\n=== État du cluster Minikube ==="
    minikube status || echo "Aucun cluster Minikube en cours d'exécution."
else
    echo "Minikube n'est PAS installé."
    echo "Installation de Minikube via arkade..."
    # Installation de minikube via arkade [si arkade est installé au préalable (voir provision_instal_arkade.sh)]
    MINIKUBE_URL=https://storage.googleapis.com/minikube/releases
    curl -Lo minikube
    $MINIKUBE_URL/latest/minikube-linux-amd64 
    sudo mv minikube /usr/local/bin/
    sudo chmod +x /usr/local/bin/minikube
    echo "Minikube a été installé : $(minikube version)"
    source <(minikube completion $(basename $SHELL)) # Ajout de l'autocomplétion pour minikube
    # echo 'source <(minikube completion bash)' >> ~/.bashrc  # Persistance de l'autocomplétion pour minikube
    alias mk=minikube # Création d'un alias 'mk' pour 'minikube'
    #echo 'alias mk=minikube' >> ~/.bashrc  # Persistance de l'alias 'mk' pour 'minikube'
    complete -F __start_minikube mk # Ajout de l'autocomplétion pour l'alias 'mk'
fi



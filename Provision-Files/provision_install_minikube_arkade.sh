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
    arkade get minikube # Installation de minikube via arkade
    sudo mv /$HOME/.arkade/bin/minikube /usr/local/bin/ #sudo mv /$HOME/.arkade/bin/minikube /usr/local/bin/
    sudo chmod +x /usr/local/bin/minikube
    echo "Minikube a été installé : $(sudo minikube version)"
    # export PATH=$PATH:$HOME/.arkade/bin/
    # # Ajouter le répertoire d'arkade au PATH de l'utilisateur vagrant
    # echo 'export PATH=$PATH:/root/.arkade/bin/' >> /home/vagrant/.bashrc
    # echo 'export PATH=$PATH:/usr/local/bin/' >> /home/vagrant/.bashrc
    # # Appliquer les changements pour la session actuelle
    # export PATH=$PATH:/root/.arkade/bin/
    # export PATH=$PATH:/usr/local/bin/
    # # Déplacer les binaires dans /usr/local/bin/ (optionnel mais recommandé)
    # sudo mv /root/.arkade/bin/kubectl /usr/local/bin/
    # sudo mv /root/.arkade/bin/minikube /usr/local/bin/
    # #source <(minikube completion $(basename $SHELL)) # Ajout de l'autocomplétion pour minikube dans la session actuelle (a corriger)
    # # echo 'source <(minikube completion bash)' >> ~/.bashrc  # Persistance de l'autocomplétion pour minikube
    # alias mk=minikube # Création d'un alias 'mk' pour 'minikube'
    # #echo 'alias mk=minikube' >> ~/.bashrc  # Persistance de l'alias 'mk' pour 'minikube'
    # complete -F __start_minikube mk # Ajout de l'autocomplétion pour l'alias 'mk' 
fi



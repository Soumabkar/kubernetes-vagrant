#!/bin/bash
# Vérifier si kubectl est installé
echo "=== Vérification de kubectl ==="
if command -v kubectl &> /dev/null; then
    echo "kubectl est déjà installé : $(kubectl version --client --short)"
else
    echo "kubectl n'est PAS installé."
    echo "Installation de kubectl via arkade..."
    # Installation de kubectl via arkade [si arkade est installé au préalable (voir provision_instal_arkade.sh)]
    arkade get kubectl # Installation de kubectl via arkade
    export PATH=$PATH:$HOME/.arkade/bin/
    sudo mv /$HOME/.arkade/bin/kubectl /usr/local/bin/ # Déplacement de kubectl vers /usr/local/bin pour un accès global
    sudo chmod +x /usr/local/bin/kubectl
    echo "kubectl a été installé avec succès : $(kubectl version --client )"
    source <(kubectl completion $(basename $SHELL)) # Ajout de l'autocomplétion pour kubectl
    # echo 'source <(kubectl completion bash)' >> ~/.bashrc  # Persistance de l'autocomplétion pour kubectl
    alias k=kubectl # Création d'un alias 'k' pour 'kubectl'
    #echo 'alias k=kubectl' >> ~/.bashrc  # Persistance de l'alias 'k' pour 'kubectl'
    complete -F __start_kubectl k # Ajout de l'autocomplétion pour l'alias 'k'
    # echo 'complete -F __start_kubectl k' >> ~/.bashrc  # Persistance de l'autocomplétion pour l'alias 'k'
fi


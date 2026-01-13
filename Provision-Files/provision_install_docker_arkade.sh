#!/bin/bash

# Vérifier si Docker est installé
if command -v docker &> /dev/null; then
    echo "✅ Docker est installé."
    echo "Version de Docker : $(docker --version)"
    echo "Version de Docker Compose : $(docker-compose --version 2>&1 || echo "Docker Compose non installé")"

    # Vérifier si le service Docker est actif
    if systemctl is-active --quiet docker; then
        echo "✅ Le service Docker est en cours d'exécution."
    else
        echo "⚠️ Docker n'est pas en cours d'exécution. Nous le démarrons avec : sudo systemctl start docker"
        sudo systemctl start docker
    fi

    # Vérifier les informations système
    echo ""
    echo "Informations système :"
    docker info | grep -E "Containers|Images|Server Version|Storage Driver|Kernel Version"
else
    echo "❌ Docker n'est pas installé."
    echo "Pour installer Docker avec arkade , exécutons : arkade get docker "
    arkade get docker
    sudo mv /root/.arkade/bin/docker /usr/local/bin/
    sudo systemctl enable docker
    sudo systemctl start docker
    echo "Docker a été installé : $(docker --version)"
fi












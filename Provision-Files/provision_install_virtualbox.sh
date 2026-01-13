#!/bin/bash

#Ajout de la signature des packages de VirtualBox
wget https://www.virtualbox.org/download/oracle_vbox_2016.asc  -q -O- | sudo apt-key add - 
#Ajout de la source des packages en fonction de la distribution 
echo "deb https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee -a /etc/apt/sources.list
# Mise à jour des sources logicielles
sudo apt-get update
# Installation de VirtualBox
sudo apt-get install -y virtualbox-6.1
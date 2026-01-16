#!/bin/bash

arkade get kubectx kubens # Installation de kubectx via arkade
export PATH=$PATH:$HOME/.arkade/bin/
sudo mv /home/vagrant/.arkade/bin/kubectx /usr/local/bin/ # Déplacement de kubectx vers /usr/local/bin pour un accès global
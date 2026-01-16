#!/bin/bash

arkade get kubens
export PATH=$PATH:$HOME/.arkade/bin/
sudo mv /home/vagrant/.arkade/bin/kubens /usr/local/bin/ # Déplacement de kubens vers /usr/local/bin pour un accès global
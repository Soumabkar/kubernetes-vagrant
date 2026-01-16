#!/bin/bash

# sudo echo "root:Soum@bK@r1201" | chpasswd
# sudo sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
# sudo sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
# sudo systemctl restart sshd

mkdir -p /home/vagrant/mailpit-kube/
mkdir -p /home/vagrant/mariadb-kube/
mkdir -p /home/vagrant/Glances/
mkdir -p /home/vagrant/Trivy/

chmod -R 755 /home/vagrant/mailpit-kube/
chmod -R 755 /home/vagrant/mariadb-kube/
chmod -R 755 /home/vagrant/Glances/
chmod -R 755 /home/vagrant/Trivy/

echo " la préparation de l'env est terminé, nous pouvons commencer l'approvisionnement"
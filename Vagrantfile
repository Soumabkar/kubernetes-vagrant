Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vbguest.auto_update = false
  config.vm.boot_timeout = 3000 
  config.vm.hostname = "ubuntu-vm"
  #config.vm.network "private_network", ip:  "192.168.56.10"
  config.vm.network "forwarded_port", guest: 8025, host: 8025, protocol: "tcp"


  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 4
  end

  # # config.vm.provision "shell", path: "Provision-Files/prepa-env.sh" 
  # config.vm.provision "shell", path: "Provision-Files/provision_install_arkade.sh" # Provisionnement pour installer arkade
  # config.vm.provision "shell", path: "Provision-Files/provision_install_docker.sh" # Provisionnement pour installer Docker
  # config.vm.provision "shell", path: "Provision-Files/provision_install_kubernetes_arkade.sh" # Provisionnement pour installer kubectl via arkade
  # config.vm.provision "shell", path: "Provision-Files/provision_install_minikube_arkade.sh" # Provisionnement pour installer minikube via arkade 
  # # config.vm.provision "shell", path: "Provision-Files/provision_deploy_cluster_minikube_mailpit.sh" # Provisionnement pour déployer un cluster Kubernetes avec minikube mailpit
  # # config.vm.provision "shell", path: "Provision-Files/provision_deploy_cluster_minikube_mariadb.sh" # Provisionnement pour déployer un cluster Kubernetes avec minikube mariadb
  # config.vm.provision "shell", path: "Provision-Files/provision_install_helm_arkade.sh" # Provisionnement pour installer helm via arkade

  # config.vm.provision "file", source: "Mailpit-deploy-kubernetes/ingress_v1.yaml", destination: "/home/vagrant/mailpit-kube/ingress_v1.yaml"
  # config.vm.provision "file", source: "Mailpit-deploy-kubernetes/mailpit-deployment.yaml", destination: "/home/vagrant/mailpit-kube/mailpit-deployment.yaml"
  # # config.vm.provision "file", source: "Mailpit-deploy-kubernetes/mailpit-service.yaml", destination: "/home/vagrant/mailpit-kube/mailpit-service.yaml"
  # config.vm.provision "file", source: "Mailpit-deploy-kubernetes/mailpit-tcp-port.yaml", destination: "/home/vagrant/mailpit-kube/mailpit-tcp-port.yaml"
  # config.vm.provision "file", source: "Mailpit-deploy-kubernetes/pv-mailpit.yaml", destination: "/home/vagrant/mailpit-kube/pv-mailpit.yaml"
  # config.vm.provision "file", source: "Mailpit-deploy-kubernetes/pvc-mailpit.yaml", destination: "/home/vagrant/mailpit-kube/pvc-mailpit.yaml"
  # config.vm.provision "file", source: "Mailpit-deploy-kubernetes/mailpit-with-pvc.yaml", destination: "/home/vagrant/mailpit-kube/mailpit-with-pvc.yaml"
  # config.vm.provision "file", source: "email.txt", destination: "/home/vagrant/email.txt"
  # config.vm.provision "file", source: "Mailpit-deploy-kubernetes/mailpit-with-pvc-and-security-context.yaml", destination: "/home/vagrant/mailpit-kube/mailpit-with-pvc-and-security-context.yaml"
  # config.vm.provision "file", source: "Mailpit-deploy-kubernetes/storage-class.yaml", destination: "/home/vagrant/mailpit-kube/storage-class.yaml"
  # config.vm.provision "file", source: "Mailpit-deploy-kubernetes/pvc.yaml", destination: "/home/vagrant/mailpit-kube/pvc.yaml"

  # config.vm.provision "file", source: "Mariadb-deploy-kubernetes/pvc.yaml", destination: "/home/vagrant/mariadb-kube/pvc.yaml"
  # config.vm.provision "file", source: "Mariadb-deploy-kubernetes/mariadb-deployment.yaml", destination: "/home/vagrant/mariadb-kube/mariadb-deployment.yaml"
  # config.vm.provision "file", source: "Mariadb-deploy-kubernetes/mariadb-deployment-v1.yaml", destination: "/home/vagrant/mariadb-kube/mariadb-deployment-v1.yaml"
  # config.vm.provision "file", source: "Mariadb-deploy-kubernetes/mariadb-deployment-v2.yaml", destination: "/home/vagrant/mariadb-kube/mariadb-deployment-v2.yaml"
  # config.vm.provision "file", source: "Mariadb-deploy-kubernetes/service.yaml", destination: "/home/vagrant/mariadb-kube/service.yaml"
  # config.vm.provision "file", source: "Mariadb-deploy-kubernetes/mariadb-deployment-v3.yaml", destination: "/home/vagrant/mariadb-kube/mariadb-deployment-v3.yaml"
  # config.vm.provision "file", source: "Mariadb-deploy-kubernetes/mariadb-deployment-v4.yaml", destination: "/home/vagrant/mariadb-kube/mariadb-deployment-v4.yaml"
  # config.vm.provision "file", source: "Mariadb-deploy-kubernetes/mariadb-statefulset.yaml", destination: "/home/vagrant/mariadb-kube/mariadb-statefulset.yaml"
  # config.vm.provision "file", source: "Mariadb-deploy-kubernetes/mariadb-statefulset-v1.yaml", destination: "/home/vagrant/mariadb-kube/mariadb-statefulset-v1.yaml"
  # config.vm.provision "file", source: "Mariadb-deploy-kubernetes/mariadb-statefulset-v2.yaml", destination: "/home/vagrant/mariadb-kube/mariadb-statefulset-v2.yaml"
  # config.vm.provision "file", source: "Glances/glances.yaml", destination: "/home/vagrant/Glances/glances.yaml"
  # config.vm.provision "file", source: "Glances/glances-v1.yaml", destination: "/home/vagrant/Glances/glances-v1.yaml"
  # config.vm.provision "file", source: "Trivy/clusterrolebinding.yaml", destination: "/home/vagrant/Trivy/clusterrolebinding.yaml"
  config.vm.provision "file", source: "Trivy/trivy_job.yaml", destination: "/home/vagrant/Trivy/trivy_job.yaml"

end
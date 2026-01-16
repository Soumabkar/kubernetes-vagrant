#!/bin/bash

wget -O ~/kube-ps1.sh https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh 
source ~/kube-ps1.sh 
PS1='[\u@\h \W $(kube_ps1)]\$ ' 
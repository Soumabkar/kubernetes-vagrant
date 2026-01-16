#!/bin/bash

BASEURL=https://raw.githubusercontent.com/ahmetb/kubectx 
URL=$BASEURL/master/completion 
COMPDIR=$(pkg-config --variable=completionsdir bash-completion) 
sudo wget -O $COMPDIR/kubectx.bash $URL/kubectx.bash 
source /usr/share/bash-completion/completions/kubectx.bash 

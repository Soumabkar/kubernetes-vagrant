#!/bin/bash

URL=$BASEURL/master/completion 
COMPDIR=$(pkg-config --variable=completionsdir bash-completion) 
sudo wget -O $COMPDIR/kubens.bash $URL/kubens.bash 
source /usr/share/bash-completion/completions/kubens.bash  
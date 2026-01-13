#!/bin/bash

export MPURL="https://github.com/axllent/mailpit/releases"
wget ${MPURL}/download/v1.28.1/mailpit-linux-amd64.tar.gz # 

tar xfvz mailpit-linux-amd64.tar.gz mailpit 
sudo cp mailpit /usr/local/bin/mailpit 
sudo ln -s /usr/local/bin/mailpit /usr/local/bin/sendmail 
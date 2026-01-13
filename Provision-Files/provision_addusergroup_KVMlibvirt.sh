#!/bin/bash

sudo groupadd kvm
sudo groupadd libvirt   
sudo usermod -a -G kvm,libvirt vagrant
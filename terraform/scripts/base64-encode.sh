#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
  cat configure-jumpbox-vm.sh | gzip -9 | base64 
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  cat configure-jumpbox-vm.sh | gzip -9 | base64 -w0
fi

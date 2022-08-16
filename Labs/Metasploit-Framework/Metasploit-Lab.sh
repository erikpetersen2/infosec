#!/bin/bash

## The Metasploitable3 Lab Provisioning Script ##

## Create a local Metasploitable workspace
mkdir ~/Documents/metasploitable-workspace 2>/dev/null
cd ~/Documents/metasploitable-workspace
curl -O https://raw.githubusercontent.com/rapid7/metasploitable3/master/Vagrantfile && vagrant up
echo "the workspace ~/Documents/metasploitable-workspace has been created"


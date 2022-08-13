#!/bin/bash

## THE I'M TOO LAZY TO RUN THE COMMANDS TO CLONE A GITHUB REPOSITORY SCRIPT ##

##########################################################################################
## Arguments									        ##
## $1 = name of the local directory to be created				        ##
## $2 = URL for cloning the repository via SSH					        ##
## 										        ##
## Example usage: ./gititdone.sh widget-code-repo git@github.com:johndoe/widgetcode.git ##
##########################################################################################

## CREATE THE DIRECTORY TO HOUSE THE REPO
mkdir ~/Documents/$1 2>/dev/null

echo "The repository" && echo $1 && echo "has been created at" && echo ~/Documents/$1

## INITIALIZE THE REPOSITORY
cd ~/Documents/$1 
git init

## CLONE THE REPOSITORY FROM GITHUB USING SSH 
##NOTE: THIS SCRIPT WILL ONLY WORK IF YOU HAVE ALREADY IMPORTED AN SSH KEY INTO GITHUB.
git clone $2

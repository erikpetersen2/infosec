#!/bin/bash

## Metasploit Framework Installation and Configuration

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
chmod 755 msfinstall 
./msfinstall
sleep 1
msfconsole

# Setting up the Metasploit Framework

To set up the Metasploit Framework on your Ubuntu VM, run the Framework-Setup.sh 
script located in this directory by running the command

`sudo ./Framework-Setup.sh`

in your Ubuntu VM. <b>NOTE:</b> If you do not have this repository cloned to your 
Ubuntu VM, you will need to download the file by running the following command 
in your Ubuntu VM's Terminal: 

`curl -O https://githubusercontent.com/erikpetersen2/infosec/main/Labs/Metasploit-Framework/Framework-Setup.sh`

Once the Metasploit Framework has been installed, it should launch msfconsole's 
initial configuration. Answer `yes` or `y` to initialize the database, and `no` 
or `n` to decline the web configuration settings. 

Once the database has been provisioned, you should be met with a command prompt 
that says `msf6>` as opposed to `username@hostname:/path/to/current/directory$`. 

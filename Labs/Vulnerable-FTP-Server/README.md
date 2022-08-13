# Vulnerable FTP Server Lab

This lab spins up a vulnerable instance of the vsftpd FTP file server for 
students to attempt to penetrate/exploit. 

To generate the lab, follow the steps below: 

<b>1. Clone the vsftpd-2.3.4-vulnerable Git repository from GitHub</b>

Run the following command in your Terminal to clone the repository: 

`chmod +x clone.sh && ./clone.sh`

<b>2. Activate the lab</b>

Once the vsftpd-2.3.4-vulnerable repository has been cloned, edit the 
docker-compose.yml file for the appropriate number of teams (add/remove as 
necessary). Once the docker-compose.yml file represents an accurate number 
of teams participating, run the following command to spawn the instances 
and start the lab: 

`sudo docker compose up`

<b>3. Verify the lab is running</b>

To verify your lab started successfully, run 

`sudo docker ps`

to see a list of currently running Docker containers. 

<b>GOOD LUCK!</b>

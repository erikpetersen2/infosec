# The Metasploit Vulnerability Exploration Lab

In this lab, we will explore the Metasploit framework, including its components
like Searchsploit, MSFVenom, meterpreter, and MSFConsole. 

# What is Metasploit?

The Metasploit framework is a collection of penetration testing tools used by both malicious actors and ethical hackers to find, build, and use exploits, confirm
vulnerabilities on a host or network, and interact with exploited hosts post-exploitation. In this lab, we will use Searchsploit to search the Metasploit database for 
vulnerabilites, MSFConsole to interact with potential exploits and use one to successfully exploit a machine, the Meterpreter shell to interact with our compromised host, and finally MSFVenom to learn how to write our own exploit to perform RCE (remote code execution) on a vulnerable web server. 

# Lab Setup

To prepare for this lab, you will need to launch your Ubuntu virtual machine. For detailed setup instructions, please refer to the `Setting-Up-Your-Lab-Environment.md`
file in `infosec/Labs`. Then, <b><i>in Git Bash on your host machine</b></i>, run the Metasploit-Lab.sh script in this directory by running the command: 

`bash Metasploit-Lab.sh`

This will build the Metasploitable3 virtual machine that we will be using over the course of this lab. When modules in this lab refer to the "target machine," they are 
referring to the Metasploitable3 VM that you just built, and the "attacker machine" refers to your Ubuntu VM. Keep these in mind, as it can sometimes be confusing when 
moving from one to the other. If I can offer you one piece of advice while completing this lab, it is <b>know where you are</b>. It can be very easy to move too quickly 
for your own good and forget which commands you are running where.

# Cleanup

Once you have completed the lab, make sure to power down both the Metasploitable3 VM and your Ubuntu VM. The Metasploitable3 VM has many, many more Metasploitable 
vulnerabilities not covered in this lab (a full list can be found [here](https://github.com/rapid7/metasploitable3/wiki/Vulnerabilities)), so I recommend keeping it in 
your VirtualBox client until you feel you've exhausted the exploits available to be tested. 

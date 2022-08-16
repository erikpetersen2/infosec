# Welcome to Linux! 

Let's get started, shall we? The first thing we are going to do is make 
sure our VM is up to date with current versions of all the installed 
software. To do this, click on the grid of dots in the lower left-hand 
corner of your VM's desktop. That will launch a list of applications 
installed on your VM. Find the application named "Terminal" and open it. 
Terminal is the <b>command line interface</b>, or <b>CLI</b>, for Linux 
operating systems. While there are slight variations from distro to 
distro, it is generally true that one should expect to be able to move 
about the Terminal in the same way regardless of which distro they 
happen to be using. We will learn about the terminal and its commands 
in-depth in later modules. For now, we just need to run a few commands 
to make sure everything is up to date, without worrying too much about 
the syntax of those commands or what they actually do. 

From the command prompt in Terminal, enter the following text and then 
press `Enter`:

`sudo apt update`

When you hit enter, it will ask you for your password. Please keep in 
that Terminal will not display your password, asterisks, dots, or any 
other visual indicator that you are typing your password. However, I 
assure you it is. Type your password, and press "Enter" again. This 
should compare the versions of all the software installed on your VM 
with their current version, and pull down any available updates. You 
will know this command has completed when you are returned to your 
command prompt with your username and hostname followed by a `$`. Once 
`sudo apt update` has completed, run the command 

`sudo apt upgrade`

This will actually install all the updates that were pulled down with 
`sudo apt update`. This command may take some time to complete, so if 
your VM appears to be hanging/not doing anything, don't stress! Once this 
command has successfully completed, you can safely exit the Terminal 
window much in the same way you would on a Windows machine. 

# But like... where is everything? 

Take some time to explore the VM and see if you can find some common 
locations and apps. Once you feel like you've sufficiently explored your 
Ubuntu VM, continue on to the scavenger hunt activity and see how much 
you can find!

# Ubuntu Scavenger Hunt

<b>DIRECTIONS:</b> Using any resources you have at your disposal, answer 
the following questions related to software and features present on your 
Ubuntu VM: 

1. If I wanted to view/configure my wired or wireless network settings, 
where would I go? 
2. What installed software could I use to create/edit a .txt file (there 
is more than one correct answer)?
3. What is the defualt installed mail client? 
4. If I needed a piece of software that is not currently installed on 
my machine, what type of file extension would I need to download for my 
Ubuntu VM?
5. If I wanted to see all the users with accounts on my VM, where would I 
go? 

`BONUS:` What type of shell is Terminal? 

<b>Write your answers in the text editor of your choice and name the file 
`YOURNAME-Scavenger-Hunt.txt`. In the VM's file explorer, drag your answer 
file from your VM to your host machine. From there, you can upload them to 
Google Drive and share them with me, or you can email them to me at 
`erik@erikpetersen.tech`. 

<b>Congratulations! You just completed your first lab!</b> 

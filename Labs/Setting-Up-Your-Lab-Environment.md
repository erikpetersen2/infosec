# Preparing Your Personal Machine To Host A Lab Environment

One of the best ways to get practical experience with the tools and techniques
used in modern cyber security is to create your own instances of web
applications, network hardware/infrastructure, and hosts to target with these
tools and techniques. To do this, we will configure our personal computer to 
host a <b>virtual lab environment</b>. This environment will run on top of 
your computer's operating system using your physical system resources (CPU, 
RAM, storage, etc) to deploy virtual instances of the infrastructure, web 
applications, and machines we are going to develop our skills against. 

<b>1. Download Oracle VirtualBox</b> \
The first step to configuring our lab environment is to download a 
<b>hypervisor</b>. A hypervisor is a platform that hosts our virtual endpoints
and communicates necessary information between those endpoints and your 
physical host (like mouse/keyboard inputs and USB devices). The hypervisor 
covered in this tutorial is Oracle VirtualBox, but there are certainly other 
choices to be made. To download VirtualBox, go 
[here](https://virtualbox.org/wiki/Downloads) and select the appropriate
download for your machine. 

<b>THINGS TO NOTE FOR APPLE USERS:</b> \
Apple M1 and M2 chips are inherently incompatible with virtualization 
through VirtualBox. You will need to install VirtualBox on a host with a 
processor on x86 (non-ARM) architecture. 

When installing VirtualBox on Mac OSX, you will need to navigate to the 
Security & Privacy tab of your System Settings, click the lock in the lower 
left-hand corner, authenticate via password of biometrics, and then check the 
available box to allow Oracle VirtualBox to make changes to your system. If 
you do not complete this step, you will be unable to provision any virtual
machines. <b> To repair your installation if you have run into this issue, 
uninstall VirtualBox, restart your system, reinstall VirtualBox, make the 
appropriate security changes, and restart your system one final time.</b> 

<b>THINGS TO NOTE FOR WINDOWS USERS:</b> \
If you are running Windows 11 (and some instances of Windows 10, depending on 
your motherboard), you may need to enable virtualization in the BIOS of your
machine. BIOS environments vary from manufacturer to manufacturer, so be sure 
to consult your PC's (if assembled by an OEM) or motherboard's (if assembled 
by you or an aftermarket technician) documentation to complete this step. 

<b>2. Build Your First Virtual Machine</b> \
Once you have VirtualBox installed, it's time to build your first virtual machine 
(referred to as "VM" for the rest of this tutuorial)! Let's grab an .iso file and get
started! The first VM we are going to build is going to be an instance of Ubuntu Desktop. 
Not only is this distribution, or "distro," very user-friendly and a great introduction to 
the Linux environment, but this will also be the VM that houses our containers and other 
volatile lab resources we will use as we familiarize ourselves with new tools and techniques. 
To build your Ubuntu VM, we will first need an Ubuntu disk image, or <b>.iso</b>. We can get 
this from Ubuntu's website by going [here](https://ubuntu.com/download/desktop) and clicking 
"Download." Once the .iso file has downloaded, we're ready to move on! Launch VirtualBox and 
click the "New" tile at the top. From there, we will have a few options to set. Let's name 
the VM <b>Lab-Host</b>, leave the Machine Folder as is, change the Type to <b>Linux</b>, and the 
Version to <b>Debian (64-bit)</b>. Then, click <b>Next</b>. On the next page, you will be able to 
configure the memory size for your machine. <b> The recommended amount of system memory for this VM 
is 4096 MB. Minimum amount of system memory is 2048 MB</b>. The amount of system memory you are able 
assign to this VM will be dependent on your total amount of system resources. Keep in mind that as we
create further machines, any machines running will reserve their configured amount of system 
resources and may adversely impact your host system's performance. Once you have configured the system 
memory to your liking, click "Next." Leave "Create a virtual hard disk now" selected, and click "Create." 
Leave the hard disk file type as "VDI (VirtualBox Disk Image)" and click "Next." Again, leave "Dynamically 
allocated" selected and click "Next" once more. Here, you will be able to choose the size of the VDI for 
your machine. <b> The recommended amount of storage for this VM is 20 GB. The minimum amount of storage is 
10 GB</b>. Leave the file location as is, scale the size of your VDI appropriately, and click "Create." 
At this point, you should see a VM in VirtualBox named "Lab-Host" that is powered off. Double-click this 
VM to power it on. When prompted, select the folder icon with the green up arrow to select an .iso image 
to boot from. In the Optical Disk Selector, click "Add" in the upper left-hand corner. Navigate to the 
location where you downloaded the Ubuntu .iso and open it. Make sure the .iso is highlighted, click "Choose," 
and then click "Start." YOU DID IT! Ubuntu will ask you a few questions as you install, you can leave these 
as the pre-selected defaults. Once Ubuntu is installed, it will ask you to create the host name (I recommend 
keeping the same name the VM is named in VirtualBox, "Lab-Host"), a username, and a password. Once these have 
been created, Ubuntu will boot into the desktop environment, and you are officially good to go! 

<b>3. Configuring Your VM For Docker</b> \
Now that we have our machine running, let's get it configured to host our lab environment. The first thing we're 
going to do is click the grid of nine dots in the lower left-hand corner of the VM to show our installed 
applications. From there, we will select "Terminal." Familiarize yourself with Terminal, we will be using it 
*a ton*. Once terminal is open, run the command `sudo apt update`. The terminal will ask you to input your 
password. You will notice when you type your password, there is no visual confirmation the terminal is taking 
input. I assure you, it is. Type your password, and press "Enter." Assuming you typed your password correctly, 
Ubuntu will start pulling a list of packages installed on your system that have updates available. Once this has 
completed, and the command prompt has returned, run the command `sudo apt upgrade -y`. This will update all 
applications with available updates and answer "yes" to all prompts. This command may take several minutes to 
complete. Once this command has completed and the command prompt has returned again, run the command `sudo apt 
install docker.io` to install the Docker service. Once Docker is installed, you can confirm the service is running 
by running the command `systemctl status docker'. If you check the status of Docker, exit the status report by pressing 
"q" to return to the command prompt. Assuming Docker was showing as running, we're ready to spin up our first container! 

<b>4. Using Docker To Spawn An Instance Of DVWA, The Damn Vulnerable Web Application</b> \
To test our new platform, we are going to spin up an instance of DVWA, the Damn Vulnerable Web Application. This app will 
have its own lab dedicated to it down the line, but for now we're just using it to check the functionality of Docker. To 
actually spawn the container, run the command `sudo docker run --rm --name dvwa -p 80:80 vulnerable/web-dvwa`. Enter your 
password, and then Docker will do its thing! Once the container is running, you will want to let it occupy that instance 
of your terminal. Launch Firefox from the Task Bar on the left-hand side, and navigate to the IP address of your dvwa container 
(you can find the IP address of the container in the output of the command we ran to launch the container, most likely 
172.17.0.2). Once you have entered your dvwa container's IP address in the URL bar, hit enter, and you should be met with 
the DVWA login page! Feel free to poke around the web app, but we are done for now. After you have finished exploring, return 
to the Terminal window where your dvwa container is running and press <b>CNTRL + C</b> (or <b>CMND + C</b> on Mac OSX) to exit 
the container, which will also remove it. You can confirm the container is removed by running the command `sudo docker ps`. 

<b>That's it! Your Lab-Host is now configred to host various containers we will use to explore fundamental cyber security 
practices, techniques, and concepts. Give yourself a pat on the back, you've earned it!</b> 

<b> If you got tired of typing "sudo" every time you ran a docker command when getting this configured, check out the tutorial 
on modifying the VM's sudoers file to adjust this annoyance!</b>

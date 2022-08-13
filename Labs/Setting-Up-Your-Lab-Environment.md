# Preparing Your Personal Machine To Host A Lab Environment

![logos](https://user-images.githubusercontent.com/73140219/184472010-9f94be8b-5028-45db-8fa8-803543098905.png)

One of the best ways to get practical experience with the tools and techniques
used in modern cyber security is to create your own instances of web
applications, network hardware/infrastructure, and hosts to target with these
tools and techniques. To do this, we will configure our personal computer to 
host a <b>virtual lab environment</b>. This environment will run on top of 
your computer's operating system using your physical system resources (CPU, 
RAM, storage, etc) to deploy virtual instances of the infrastructure, web 
applications, and machines we are going to develop our skills against. 

![Hypervisor_Visual](https://user-images.githubusercontent.com/73140219/184465725-bc82fea6-c26b-42e5-8f4d-565eaa4fe446.png)

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
click the "New" tile at the top. 

![VirtualBox_new](https://user-images.githubusercontent.com/73140219/184465770-a9926152-3ebc-4015-895b-8c77cf85de50.png)

From there, we will have a few options to set. Let's name 
the VM <b>Lab-Host</b>, leave the Machine Folder as is, change the Type to <b>Linux</b>, and the 
Version to <b>Debian (64-bit)</b>. Then, click <b>Next</b>. 

![Select_Debian](https://user-images.githubusercontent.com/73140219/184465815-1a44f8d8-bf7f-49e4-b997-1dfa89a950ea.png)

On the next page, you will be able to 
configure the memory size for your machine. <b> The recommended amount of system memory for this VM 
is 4096 MB. Minimum amount of system memory is 2048 MB</b>. The amount of system memory you are able 
assign to this VM will be dependent on your total amount of system resources. Keep in mind that as we
create further machines, any machines running will reserve their configured amount of system 
resources and may adversely impact your host system's performance. Once you have configured the system 
memory to your liking, click "Next." 

![system_memory](https://user-images.githubusercontent.com/73140219/184465906-8563751a-fb6e-4c63-98da-f8b020728dc3.png)

Leave "Create a virtual hard disk now" selected, and click "Create." 
Leave the hard disk file type as "VDI (VirtualBox Disk Image)" and click "Next." Again, leave "Dynamically 
allocated" selected and click "Next" once more. Here, you will be able to choose the size of the VDI for 
your machine. <b> The recommended amount of storage for this VM is 20 GB. The minimum amount of storage is 
10 GB</b>. Leave the file location as is, scale the size of your VDI appropriately, and click "Create."

![system_storage](https://user-images.githubusercontent.com/73140219/184465939-4dacb701-a555-4d0e-8523-13250318adae.png)

At this point, you should see a VM in VirtualBox named "Lab-Host" that is powered off. Double-click this 
VM to power it on. 

![stopped-vm](https://user-images.githubusercontent.com/73140219/184465968-03f683a4-f8e1-4a24-9aa2-39ce0b23a987.png)

When prompted, select the folder icon with the green up arrow to select an .iso image 
to boot from. 

![select-iso](https://user-images.githubusercontent.com/73140219/184466019-a35f6d86-4521-4a7c-830e-17694d91e4bf.png)

In the Optical Disk Selector, click "Add" in the upper left-hand corner. Navigate to the 
location where you downloaded the Ubuntu .iso and open it. Make sure the .iso is highlighted, click "Choose," 
and then click "Start." 

![image](https://user-images.githubusercontent.com/73140219/184466036-a9f58462-dc82-45af-a214-e42348ef6a03.png)

YOU DID IT! Ubuntu will ask you a few questions as you install, you can leave these 
as the pre-selected defaults. Once Ubuntu is installed, it will ask you to create the host name (I recommend 
keeping the same name the VM is named in VirtualBox, "Lab-Host"), a username, and a password. Once these have 
been created, Ubuntu will boot into the desktop environment, and you are officially good to go! 

![initial-screen](https://user-images.githubusercontent.com/73140219/184466217-f03f799d-26f2-40a8-8d72-e634af9b4457.png)

![install-ubuntu](https://user-images.githubusercontent.com/73140219/184466348-9a7522a9-50ea-494f-85ad-3e3fab24eb4e.png)

![keyboard-layout](https://user-images.githubusercontent.com/73140219/184466369-1b35c031-183f-4f56-9433-2ade4e4beb20.png)

![install-options](https://user-images.githubusercontent.com/73140219/184466386-0e9e8cf7-d7fe-4720-af14-78537d92dd00.png)

![erase-disk](https://user-images.githubusercontent.com/73140219/184466407-43626a30-9b9d-4caa-86f4-b9650221bce1.png)

![are-you-sure](https://user-images.githubusercontent.com/73140219/184466424-9cfa4f09-eb29-4fdc-8067-4c0376eca998.png)

![time-zone](https://user-images.githubusercontent.com/73140219/184466442-e07bee38-6d00-4dbe-912a-7206e337dad8.png)

![set-user-and-pass](https://user-images.githubusercontent.com/73140219/184466503-572765a4-ef6e-4ac4-9113-03ed815c6048.png)

# Configuring Your VM For Docker

![docker-logo](https://user-images.githubusercontent.com/73140219/184471196-4c357eec-10f2-4ebc-b4ed-9a6bbacf5062.png)

<b> What's a Docker and how do I use it?</b>

Docker is a Platform-as-a-Service (PaaS) solution that allows OS-level virtualization for software packages called
"containers." Containers are stripped down and streamlined versions of software, hardware, and applications that are 
(generally speaking) designed to meet a specific need or run a specific service. Think of using a container as being 
similar to choose to eat a snack instead of a full meal. While preparing a meal would certainly satisfy your needs, 
preparing a meal is time consuming, and there is much energy and many portions of the meal that may get wasted in the 
process. Alternatively, grabbing a pre-packaged snack is quick, easy, and only consumes the resources it absolutely must. 
Using Docker, we can quickly spin up (and just as quickly destroy) network, host, and application resources in near unlimited 
configurations to meet whatever educational needs we may have at the time. 

![docker-diagram](https://user-images.githubusercontent.com/73140219/184471912-83408c0f-c1ea-47b2-a72f-3fd50753bda4.png)

Now that we have our machine running, let's get it configured to host our lab environment. The first thing we're 
going to do is click the grid of nine dots in the lower left-hand corner of the VM to show our installed 
applications. From there, we will select "Terminal." Familiarize yourself with Terminal, we will be using it 
*a ton*. Once terminal is open, run the command 

`sudo apt update`

![apt-update](https://user-images.githubusercontent.com/73140219/184470539-8dbecb60-6ed3-4f60-8f67-87d0db3f885d.png)

The terminal will ask you to input your password. You will notice when you type your password, there is no visual confirmation the terminal is taking 
input. I assure you, it is. Type your password, and press "Enter." Assuming you typed your password correctly, 
Ubuntu will start pulling a list of packages installed on your system that have updates available. Once this has 
completed, and the command prompt has returned, run the command 

`sudo apt upgrade -y`

![apt-upgrade](https://user-images.githubusercontent.com/73140219/184470567-4f1710ff-8897-4c79-b773-33870000cc23.png)

This will update all applications with available updates and answer "yes" to all prompts. This command may take several minutes to 
complete. Once this command has completed and the command prompt has returned again, run the command 

`sudo apt install docker.io -y`

to install the Docker service. Once Docker is installed, you can confirm the service is running by running the command 

`systemctl status docker`

If you check the status of Docker, exit the status report by pressing  "q" to return to the command prompt. Assuming Docker was showing as running, we're ready to spin up our first container! 

<b>4. Using Docker To Spawn An Instance Of DVWA, The Damn Vulnerable Web Application</b> \
To test our new platform, we are going to spin up an instance of DVWA, the Damn Vulnerable Web Application. This app will 
have its own lab dedicated to it down the line, but for now we're just using it to check the functionality of Docker. To 
actually spawn the container, run the command 

`sudo docker run --rm --name dvwa -p 80:80 vulnerable/web-dvwa`

Enter your password, and then Docker will do its thing! Once the container is running, you will want to let it occupy that instance 
of your terminal. Launch Firefox from the Task Bar on the left-hand side, and navigate to the IP address of your dvwa container 
(you can find the IP address of the container in the output of the command we ran to launch the container, most likely 
172.17.0.2). 

![ip-of-container](https://user-images.githubusercontent.com/73140219/184470982-648deb75-f7da-4bb4-82ac-9092892031fb.png)

Once you have entered your dvwa container's IP address in the URL bar, hit enter, and you should be met with 
the DVWA login page! 

![dvwa-login-page](https://user-images.githubusercontent.com/73140219/184471044-91a2be0e-0b97-4b48-870f-13b31e371f29.png)

Feel free to poke around the web app, but we are done for now. After you have finished exploring, return 
to the Terminal window where your dvwa container is running and press <b>CTRL + C</b> (or <b>CMND + C</b> on Mac OSX) to exit 
the container, which will also remove it. You can confirm the container is removed by running the command `sudo docker ps`. 

<b>That's it! Your Lab-Host is now configred to host various containers we will use to explore fundamental cyber security 
practices, techniques, and concepts. Give yourself a pat on the back, you've earned it!</b> 

<b> If you got tired of typing "sudo" every time you ran a docker command when getting this configured, check out the tutorial 
on modifying the VM's sudoers file to adjust this annoyance!</b>

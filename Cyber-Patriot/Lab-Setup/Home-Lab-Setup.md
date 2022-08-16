# Setting Up A Cyber Patriot Lab On Your Personal Computer

If you have a personal desktop or laptop computer and would like to provision an additional Cyber Patriot lab for 
further practice, follow this guide to build your Ubuntu VM, a Windows 7 VM, and a Windows Server 2008 VM.

# Getting Started

<b>1. Install VirtualBox</b>

While we will be using VMWare for our hypervisor when in the classroom and during the competition, we will be using 
VirtualBox for our personal lab environments, as VirtualBox does not require a license or a registered account to 
use. 

To download VirtualBox, simply click the link [here](https://www.virtualbox.org/wiki/Downloads) and download the 
appropriate version for your laptop. 

<b>NOTE FOR WINDOWS USERS:</b>

You will need to install this software with an account that has local administrator access. If you plan on installing 
this lab environment on a shared/family laptop or desktop, you may need your parent's account credentials to complete 
the install. 

<b>NOTE FOR MAC USERS:</b>

You will also need a local administrator account to install the software. In addition, you will need to make changes 
to your security settings after installing VirtualBox. To do this, Navigate to System Settings > Security Preferences, 
click the lock in the lower left-hand corner, enter your (or a local admin) password, check the "Allow" box for Oracle 
VirtualBox, click the padlock icon once more to close it, and then exit System Settings. <b>If you forget to do this, 
you will not realize your mistake until you try to build a VM for the first time. If you get a kernel exception error 
when building a VM, this means your security preferences were not updated at the time of install. To fix this, you need 
to 

1. uninstall VirtualBox
2. restart your iMac/Macbook
3. reinstall VirtualBox
4. update your security preferences to allow VirtualBox to make changes to your system
5. restart your machine one final time</b>

# Building your first VM 

Once you have VirtualBox installed, it's time to build your first virtual machine! 
Let's grab an .iso file and get started! The first VM we are going to build is going to be an instance of Ubuntu Desktop.
Not only is this distribution, or "distro," very user-friendly and a great introduction to
the Linux environment, but this is also the Linux distribution used by Cyber Patriot for the Linux 
portion of the competition. To build your Ubuntu VM, we will first need an Ubuntu disk image, or <b>.iso</b>. 
We can get this from Ubuntu's website by going [here](https://ubuntu.com/download/desktop) and clicking
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

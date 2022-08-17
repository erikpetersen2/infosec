# Introduction to Command Line

![code_pic](https://images.pexels.com/photos/207580/pexels-photo-207580.jpeg?cs=srgb&dl=pexels-pixabay-207580.jpg&fm=jpg)

<b>Getting Started With the Command Line and Terminal</b>

I'm not going to sugarcoat it, learning to use the command 
line and Terminal will be both the single most useful and 
the single most frustrating tool we will use as we prepare 
for the Cyber Patriot competition. It takes repition and 
pratice to get better, and many people often find the various 
switches, options, and arguments are confusing until they've 
spent some time in the command line environment and gotten 
somewhat familiar. Everything we do in our Linux environment 
will be somewhat impacted by running Terminal commands, and 
eventually scripts, so make sure you take the appropiate amount 
of time to familiarize yourself. 

<b>Starting Terminal</b>

Like we did when we first logged into our VM, we're going to click on the dot grid in the 
lower lef-hand corner, locate the Terminal app, and launch it. Once Terminal is open, you 
are ready to go! 

# cd - Change Directory

`cd`, or <i>change directory</i>, is arguably one of the most importnat commands in modern computing. 
As its name implied, typing `cd` followed by a file path like `/etc/` would change your Terminal 
from operating in the current directory its in to the directory specified in the command. For example, 
say you had a Terminal window that was open in the `home` folder (Usually represented by a `~` in 
Terminal), and you ran the command `cd /usr/share/wordlists/`, your command prompt would change to 
show you were now operating in the /usr/share/wordlists/ directory (a `directory` is just another word 
for a folder) as in the image below: 

![cd-screenshot](https://imgur.com/N2eeTwv.png)

Notice how the command prompt changes from `erik@kali~$` to `erik@kali-/usr/share/wordlists/$` to 
reflect the fact that we are now operating out of the /usr/share/wordlists/ directory. This is the 
core of the `cd` command, but there are a few other tricks we can talk about as well. 

<b><u>cd Shortcuts</b></u>

Sometimes, commands have shortcuts, called <b>aliases</b>. These are system-defined and user-defined 
substitutions that Terminal recognizes as valid commands. There are a few with `cd` that are particularly 
useful, namely `cd` without any directory listed afterwards and `cd ..`. 

`cd` with no directory listed afterwards will change you back to your home (`/home/username/` or `~/`) folder: 

![cd-no-args](https://imgur.com/I8Yg7b9.png)

`cd ..` changes you to a directory that is one directory higher than you are currently located. For example, 
if you were in the directory `/usr/share/wordlists/`, and you ran the command `cd ..`, the command would 
move you to the `/usr/share/` directory. If you were located in `/var/log/` and ran `cd ..`, you would 
wind up in `/var/`. This effect stacks as well. For instance, say we were back in `/usr/share/wordlists/`, 
and we ran the command `cd ../..`, we would wind up in `/usr/`.

![cd-up-one-and-two](https://imgur.com/CxbnmUY.png)

<b><u>Practicing with cd</b></u>

Take some time to cd into the following directories and get comfortable using the `cd` command: 

1. change into the `/usr/lib/` directory
2. change into the `/usr/lib/firewalld` directory
3. change back up to the `/usr/lib/` directory by running `cd ..`
4. move up an additional two directories by running `cd ../..`
5. <b>BONUS:</b> after running `cd ../..` from the `/usr/lib/` directory, what directory are you located in?

# ls - List

If the `cd` command is "how you get there," then `ls` is "how you know where to go." The "list" or `ls` 
command lists the contents of the current directory or a specified directory. This is extremely useful when 
searching for files, verifying that files were moved/copied/deleted properly, and for seeing other information 
related to the files in a directory, like size, owner, and global permissions. Let's give it a shot! In your 
Terminal window, run the command `cd` to return to your home directory. From there, run the command `ls` to 
display the contents of your home folder: 

![ls-display](https://imgur.com/dmMLGVh.png) 

In addition, we can add <b>switches</b> to the `ls` command to add even more functionality. 

<b><u>Command switches for `ls`</b></u>

<b>Switches</b>, sometimes referred to as <b>flags</b>, are options you can add on to a command to give the 
command added fucntionality. For example, running `ls -a` will list <i>all</i> files in a directory, even 
hidden files: 

![ls-vs-with-a](https://imgur.com/Ddd9oW1.png)

Notice how many more files are visible when you run `ls -a`. Hopefully you can see how this could relate to 
our Cyber Patriot challenge. Checking a directory with `ls -a` as opposed to just `ls` could be the difference 
in finding a flag or crucial piece of information or not. 

The `ls` command has numerous switches that provide a ton of customization to your list commands. For a full 
list of the available switches for `ls`, run the command `ls --help` or `man ls`. 

<b>A NOTE ABOUT SWITCHES</b>

<i>It's important to note that often commands will have the same switch, like</i> `ls -r`<i>, which lists the 
contents of the directory in <b>reverse</b> order, while</i> `cp -r ~/Documents ./` <i> will copy all of the files 
from ~/Documents to the current directory <b>recursively</b> (meaning it also copies files in subdirectories of 
the named folder). Each command is different, with its own unique set of switches and options. For more information 
on any command, you can consult the <b>man page</b> or <b>manual page</b> for that command by running `man [command]` 
in your Terminal.</i>

<b><u>Practicing with ls</b></u>

Use the `ls` command and its switches to 

1. list the contents of the `root` directory
2. list the contents of `/var/log/` in reverse order
3. list the contents of your home directory (`~/`), including the permissions associated with each file
4. <b>BONUS:</b> list all of the contents of your home folder, including both hidden files <b><i>and</i></b> the permissions for each file. 

<b><u>Try it Out!</b></u>

Take a few minutes to familiarize yourself with Ubuntu and the Terminal by 
using both `cd` and `ls` to move around the VM and see what files and 
directories are where. 

# pwd - Print Working Directory

You may have noticed as you were moving around the Terminal that from time to 
time, you may have forgotten where you were or been unsure of how to get back 
from where you started. Luckily, this is where `pwd` comes in. `pwd`, or 
<b>P</b>rint <b>W</b>orking <b>D</b>irectory, is a way to output your current 
directory to the terminal for you to see:

![pwd-demonstration](https://user-images.githubusercontent.com/73140219/185041301-5d4a0f96-7cd6-4a38-9382-f2d63be5cbc7.png)

# su - Super User Do

Sometimes, you will need to run commands with elevated privileges. As you can 
imagine, it would be insecure to have all users on a system or network be 
able to run all commands and services. However, it would also be a 
poor choice to have administrative users run <i>every</i> command with 
elevated privileges. Enter `sudo`, or <b>S</b>uper <b>U</b>er <b>Do</b>. 
By invoking `sudo` at the beginning of any command, you tell the Terminal to 
run that command as the <b>super user</b> or, as you'll most often hear it 
called in the Linux environment, <b>root</b>. Because the root user has no 
restrictions, any/all commands run as the root user are passed into the 
Terminal without any restrictions or warnings. As such, it is <b>EXTREMELY</b> 
important to pay attention to what commands you run with `sudo`. 

<b>Try It Out!</b>

1. Run the command `cat /etc/passwd` and observe the response you get from 
your system. Notice your user account does not have permission to run this 
command (it's okay that we haven't covered the `cat` command, we will cover 
this in the File-Management module). 
2. Now, run the same command, but with `sudo` in front of it as follows: 
`sudo cat /etc/passwd`. Enter your password when prompted, and notice that 
this time, the command completes successfully. 

# Knowledge Check

Use a combination of `cd`, `ls`, `pwd`, and `sudo` to answer the following 
questions: 

1. How many users <b>have a home folder</b> on your system? (hint: where 
might a user's <b>home</b> folder be located?)
2. What are two different ways to use the `cd` command to switch from the 
~/Documents/Research directory to your home folder? 
3. What two hidden files are present in every directory? 
4. Make a list of four files, directories, commands, etc that you cannot 
access without using `sudo`.

# Wrap-Up

In this module, we looked at four fundamental commands to the Linux 
environment: `cd`(change directory), `ls` (list), `pwd` (print 
working directory), and `sudo` (super user do). These commands are crucial to 
your success in later modules, so please make sure you're comfortable with 
them before moving on.  

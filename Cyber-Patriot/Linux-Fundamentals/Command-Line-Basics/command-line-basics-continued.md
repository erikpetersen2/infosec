# Command Line Part Two, Electric Boogaloo

In part one of the Command Line Basics module, we covered commands like `cd`, 
`ls`, `pwd`, and `sudo`. These commands allow us to move around our file 
system, show contents of various folders, show where we are currently located, 
and run commands with elevated permissions. In this module, we will focus on 
a few more "core" commands in Linux, namely 

1. `touch` and `rm`
2. `cat`
3. `mkdir` and `rmdir`
4. `head` and `tail`
5. `grep` and `find`
6. `awk`

# 1. touch and rm - "Touch" and "Remove"

So we've learned how to navigate between files and folders in the file system, 
and we've learned how to list files in a particular directory, but how do we 
<i>put</i> files in a directory? What if we need to remove them? This is where 
`touch` and `rm` come in. To create a file, simply execute the command 
`touch <file>`. This will create an empty file called `<file>` in the 
directory where you ran the `touch` command. <b><i>But what if I wanted to 
create a file in a directory other than the one I'm currently in?</b></i> 
Excellent question. To create an empty file anywhere on your system, we still 
run the `touch` command, but in this case, instead of only specifying the 
<b>name</b> of the file, we will specify the location of the file on the 
system by using the file's <b>path</b>. The <b>path</b> of a file is <b>the 
actual location of the file on the system</b>. There are two ways to reference 
a file by its path, the `relative path` and the `absolute path`. 

<b>Relative Path</b>

A file's <b>relative path</b> is the path to the file <b>from the current 
directory</b>. For instance, if you are currently in your home folder (the 
folder you always start the Terminal in), and your home folder, you have a 
folder named `Documents`, and in the Documents folder, you have a file called 
`path.txt`. From your home folder, the relative path to the file `path.txt` is 
`Documents/path.txt`, because to get from your home folder to the file `path.txt`, 
you would need to move down one folder in to the Documents folder, and there, 
you would find the file `path.txt`. In short, the relative path of a file is 
the route to the file <b><i>from where your Terminal is currently located.</b></i> 

<b>Absolute Path</b>

A file's <b>absolute path</b> is the path to the file <b>from the top of the 
file structure</b> (bonus points if you can tell me what the top of the file 
structure is). For instance, given the same example as above, we are located 
in our home directory and trying to reference the file `path.txt` located in 
the Documents folder inside our home folder. To reference this file by its 
<b>absolute path</b>, we would "tell" Terminal how to find the file starting 
at the top of the directory structure, which for our file `path.txt`, would 
be `/home/yourname/Documents/path.txt`. 

<b>When do I use which?</b>

The short answer is you can use either whenever you'd like. That being said, 
I will warn you that using relative paths can sometimes cause problems if 
you don't consider the total context of what you are doing. For example, 
consider the following script: 

```#!/bin/bash
touch some-file.txt
echo "this is a script!" > some-file.txt```

This script creates a file called `some-file.txt` and then inserts the text 
"this is a script!" to that file. If we were to run this script in our home 
folder, we would end up with a file in our home folder called `some-file.txt`. 
However, if we ran this script in the `/usr/share` directory, we would end 
up with a file in `/usr/share` called `some-file.txt`, illustrated in the 
example below: 

[example goes here]

However, if we run that same script with a slight modification, we will see 
how behavior of our system can change depending on whether we use the relative 
or absolute path. Note the changes to our script below: 

```#!/bin/bash
touch ~/Documents/some-file.txt
echo "this is a script!" > ~/Documents/some-file.txt```

In this script, because the path of the file `some-file.txt` is <b><i>explicity 
specified starting at the beginning of the directory structure</b></i>, the 
script will place the file in that location. <b>REMEMBER:</b> the `~` character 
is a short-hand for `/home/username`, so writing the above script with the 
path `/home/username/Documents/some-file.txt` would yield identical results, 
as shown in the example below: 

[example script 2]

<b> rm - Remove </b>

Inverse of the `touch` command, the `rm` or <b>remove</b> command deletes a 
file. To run this command, simply execute `rm <file>`. Be careful, though. 
Unlike a Windows system where deleting a file moves it to the Recycle Bin, 
when you remove a file in Linux/Ubuntu, it's gone. Forever (well, technically 
not, but retrieving a file that has been removed is an extremely tedious 
process that is <i>well</i> out of the scope of this lab. For our purposes, 
you should consider anything removed via the `rm` command to be permanently 
deleted. This also ties back into relative and absolute paths for files. In 
an environment where you have multiple files with the same name, like a collection 
of Vagrant scripts and virtual machines (every Vagrant VM is provisioned using 
a script that MUST be called 'Vagrantfile'), running the command `rm Vagrantfile` 
could cause a TON of headaches and a lot of time spent rebuilding things if 
you aren't careful where you run it. 

# 2. cat - Concatenate

But what if we want to see what's <b>in</b> a particular file? Enter the `cat` 
or <b>concatenate</b> command. To put it shortly, the `cat` command takes 
the contents of a file or the output of a command and directs that content to 
a location of your choosing, usually `stdout` or a file. <b>NOTE: For our 
purposes, you can consider `stdout` to be synonymous with displaying the 
contents of a the file or command in your Terminal window.</b> To get a feel 
for how this works, run the following three commands in your Terminal window: 

`echo "I am a cyber security professional!"`

`echo "I am a cyber security professional!" > professional.txt`

`cat professional.txt`

By default, all commands return input to `stdout`, as we can see in the first 
command. The string "I am a cyber professional!" is passed to `stdout` and 
displayed on screen. In the second command, the `>` tells the command to 
<b>redirect</b> the output of the command from `stdout` to a file named 
`professional.txt`. To demonstrate both redirect features of `cat`, we run 
the third command, `cat professional.txt`. This command's output shows us 
two things: 

1. That our previous command, `echo "I am a cyber security professional!" > professional.txt` 
did what we thought it would, and redirected the output to the file `professional.txt`
2. It shows that our current command, `cat professional.txt`, takes the contents 
of a file and directs them to `stdout` so we can view them. As you will see, 
the command `cat professional.txt` placed the contents of the file, the 
string "I am a cyber security professional!", and placed it in `stdout` aka 
our Terminal window. 

<b>`>` and `>>`</b>

In the previous section, we ran the command 

`echo "I am a cyber security professional!" > professional.txt`

What would happen if we ran the command again, but we changed the text of the 
`echo` command? Let's find out! Run the following commands in your Terminal 
window: 

```echo "I am an information security professional!" > professional.txt
cat professional.txt```

Notice that the contents of the file `professional.txt` now reflect the contents 
of the command we just ran, and <b><i>ONLY</b></i> the command we just ran. 
The previous contents of the file, "I am a cyber security professional!" have 
been overwritten and replaced with "I am an information security professional!" 
by the command we just ran. To add output to an existing file and keep the 
original contents of the file, we <b><i>append</b></i> the contents of our 
most recent command to the existing file, using a `>>` as opposed to a `>`. 
This will echo the contents of the command to the bottom of a file. Let's try 
it! Run the following commands in your terminal: 

```echo "I love cyber security!" >> professional.txt
cat professional.txt```

Notice this time, by using the `>>` as opposed to the `>`, the original contents 
of the file are preserved, and the new information is added to the bottom. 
Note that if a file does not exist, either `>` or `>>` will create a file, as 
in our first `cat` example when we ran `ehco "I am a cyber security professional!" > professional.txt`, 
the file `professional.txt` did not exist in our environment. However, had we 
run the `ls` command after running that command, we would have seen the file 
`professional.txt` listed in our home directory (or wherever you ran the command). 
This can save you time, as you do not need the run the command `touch ipinfo` 
before running the command `ifconfig > ipinfo`, for example. 

# 3. mkdir and rmdir - Make Directory and Remove Directory

Similar to the commands to create and remove files, `touch` and `rm`, we have 
commands to create and remove directories, `mkdir` and `rmdir`, respectively. 
These essentially work the same as `touch` and `rm`, so we won't cover them 
in-depth here. The only important thing to note is the the `rmdir` command 
will not work unless the directory you are trying to remove is empty. To 
remove a directory that has files in it with `rmdir`, use `rm` to remove the 
files first, and then use `rmdir` to remove the now empty directory (we will 
cover a more efficient way to remove directories regardless of their contents 
in the <b>Bash-Scripting</b> module. 

# 4. head and tail - Head and Tail 

So let's say you need the contents of the command `ifconfig` (a command that 
shows network information in Linux), but you need to write only the information 
for the first interface (the first block of text). Without using a text editor 
like `vim` or `nano` to manually adjust the file later, how can we manipulate 
the contents of the `ifconfig` output to be only what we need? Two of the ways 
we can modify that output are the `head` and `tail` commands. By default, running 
`head`/`tail <file>` will print the top/bottom 10 lines of that file into your 
Terminal window. Like with many other commands, this behavior can be modified 
with switches, like `-n`, which changes the number of lines that `head` or 
`tail` prints (so while the command `head somefile.txt` would print the first 
10 lines of somefile.txt, `head -n 5 somefile.txt` would print only the first 
five lines). 

# 5. grep and find - Grep and Find (I'm starting to sound repetitive)

But what if we need a small part of a file that's not at the bottom or top? 
What if we're not sure whether what we're looking for is even in the file we're 
looking at, but we need to be sure? WHAT IF WE DON'T EVEN KNOW WHERE TO FIND 
THE FILE AT ALL??? Fear not, my compatriots, for `grep` and `find` are here. 
In short, `grep` looks in files for content, and `find` looks in your file 
system for files/directories. Like other commands, both `grep` and `find` have 
switches that alter their functionality to fine-tune it to what you need. However, 
unlike the other commands we've covered thus far, both `grep` and `find` have 
extensive options, and it is worth taking a look at the man page for both 
commands (`man grep` and `man find`) to familiarize yourself with the available 
options. 

<b>Grep Demonstration</b>

By running the command `ps aux`, we can get a list of all the processes currently 
running on our machine. As we recall from the section on the `cat` command, we 
can redirect this information from `stdout` by concatenating it to a file with 
the command `ps aux > current-processes.txt`. If we wanted our system to look 
through the file `current-processes.txt` and only return the processes run by 
the root user, we could run the command `grep 'root' current-processes.txt`. 
Try it in your own terminal!

<b>Find Demonstration</b>

So say you create a file and put some important data in it, but you were 
moving quickly, and you created the file with a relative path, and now you 
don't remember where you were when you created the file? You could manually 
navigate the file structure and look in every single directory until you found 
the one you were looking for, but as you can imagine, that would be exteremely 
inefficient and time-consuming. Instead, we use the `find` command. Run the 
following command in your Terminal window: 

`curl -O [url path goes here] && chmod 755 find-demo.sh && ./find-demo.sh`

This command will download and execute a script that will hide a file called 
"flag.txt" somewhere in your file system. Use the `find` command to locate the 
file. Feel free to research appropriate switches for the `find` command to 
make your search easier. 

# Awk

Okay, so we can find files and we can find particular lines in those files, but 
what if the line of information returned by `grep` is either too much or formatted 
in a way that doesn't jive with what we're trying to do? Lucky for us, we can 
lean on the `awk` command. `awk` takes a file and only prints the information 
from the file that it is instructed to. Let's explore `awk` in the walkthrough 
below: 

<b>Using awk to print a list of users on your system</b>

So, let's take an opportunity to relate these commands to system hardening, which 
is the concept of securing your system against unauthorized access, both internally 
(from users who may intentionally or unintentionally damage or compromise your 
system) and externally (from malicious actors who wish to compromise your data 
and/or identity). One of the many things we can do to harden a system is an 
<b>user account audit</b>. A user account audit is the process of reviewing every 
user that has an account on a system and verifying both that the account is 
supposed to exist and that it has only the privileges necessary to perform the 
user's role on the system (which is referred to as the <b><i>principle of least 
privilege/permission</b></i>). One way you could go about this would be to `cat` 
the contents of the `/etc/passwd` file to display all users on a system and 
their user settings. However, if you try this yourself, you'll notice the output 
is a little less than clean, considering the `/etc/passwd` file contains extra 
information that we do not need for this audit. To clean this output up, we will 
use the `awk` command. First, let's run the `cat` command to see what the 
`/etc/passwd` file looks like with no manipulation: 

![/etc/passwd-screenshot](url goes here)

Now, instead of using `cat` to dump all the contents of the file into our Terminal, 
we will use the `awk` command to simply the output and make it more human-
readable. To do this, we will run the following command: 

`awk -F':' '{print $1}' /etc/passwd`

Here's a breakdown of each part of the command: 

1. `awk` is the command we are running
2. `-F':'` tells `awk` what its <b>delimiter</b> is (we will cover this down 
below)
3. `'{print $1}'` tells `awk` which field to print
4. `/etc/passwd` is the file we are running `awk` against

<b><i>WHAT THE DELIMITER IS A DELIMITER</b></i>

<i>A <b>delimiter</b> is a character that tells the command or application 
that's processing a set of data how to separate the data. For example, in the 
list of words "apple banana cherry date," the delimiter would be a single 
space, as there is a single space between each of the entries in the list. If 
we write the same list of words slightly differently, say "apple,banana,cherry,date," 
the delimiter would no longer be a space, but would be a comma.</i> 

If we run the command above, we should get output that looks something like 
this: 

![/etc/passwd-with-awk](url goes here)

# Putting It All Together (command-line-basics-continued challenge)

Use the commands covered so far to complete the following tasks: 

1. Make sure you are in your home folder. Create a file called `challenge.txt` 
using the relative path for the file `challenge.txt`. Then, remove the file. 
Finally, create the file `challenge.txt` again, but use the file's absolute path. 
2. Create a directory in your home folder called "challenge." Create three 
subdirectories in the `challenge` directory named `dir1` `dir2` and `dir3`. 
Then, remove all four of these directories. <b>FOOD FOR THOUGHT:</b> What's 
the least number of commands necessary to remove all four of these directories? 
3. A network engineer has sent you an email asking for you to send him some 
network configuration info from your system. Specifically, he wants the 
information for your loopback interface. Write the contents of the command 
`ifconfig` to a file named `ipinfo.txt`. Then, display the contents of the 
file `ipinfo.txt`, but only the information related to the loopback interface, 
which has an IP address of <b>127.0.0.1</b>. Write this information to a new 
file named `info-for-network-team.txt`
4. You are performing a password audit of your system and want to compare user 
accounts to their hashed passwords. You know the file you're looking for is 
called `shadow`, but you can't remember where the file is located. Run a command 
that will locate the file `shadow` (hint: you will need to use `sudo` with this 
command). 
5. You think someone may have recently managed to create an unauthorized user 
account on your system, and you want to look at recently created user accounts 
to see if there is anything unusual. Execute a command that will show only the 
bottom 10 lines of the file `/etc/passwd` to look at the most recently created 
accounts. 
6. You want to take a look at the processes running on your system to see if 
any malicious processes are running that may be taxing your system resources. 
Run the command `ps aux` and concatenate it to the file `sys-proc.txt`. Then, 
display the contents of the file `sys-proc.txt`, but only display the information 
related to the proccess ID (PID), CPU usage, and memory usage. 
7. <b>BONUS:</b> You want to display the IP address for each of your network 
interfaces, but you don't want to have to read through all of the additional 
information that the command `ifconfig` provides. Run a single command that will 
display <i>only the IP addresses</i> listed when running the command `ifconfig` 
(you will need to do some research related to <b><i>command pipes</b></i> to 
complete this bonus question). 

# Wrap-Up

In this module, we learned more fundamental commands for navigating the Linux 
terminal. `touch`, `rm`, `mkdir`, `rmdir`, `cat`, `grep`, `find`, and `awk` 
are all commands that you will use often when using your system. In the next lab, 
we will look at putting these fundamental commands together with <b>chain commands</b>, 
<piped commands</b>, and finally <b>scripts</b>.  
 

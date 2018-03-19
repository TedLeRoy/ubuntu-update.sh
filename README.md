# ubuntu-update.sh

A super simple bash script to update your Ubuntu system.

Set the file to executable then run it with sudo as 
outlined below to update your Ubuntu system.

### Prerequisites

You must have sudo permissions to run this script.

You must set the file to executable.

Set it so it is executable using the command:

```
sudo chmod +x ubuntu-update.sh
```

Being in the directory where the file resides when you run the comand.

You will not have to set the file executable if you create a local git repository and clone from Master.

### Warning

Be sure you have read and understand what this file does before running it.

You can read the man page for each command and option to see what it does.

Any time the creator of a script says it has to be run with sudo permissions or as root, use caution.

*This script has to be run with sudo because the apt-get commands it uses must be run as root.*

## What it does

This script runs the following commands:

```
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove
```

It also writes the output to a file, /tmp/update-output.txt, and to the screen with the tee command, then uses grep to parse the update-output.txt file for information you may want to be aware of, displaying any found at the end of the run.

It then deletes the /tmp/update-output.txt file that was created.

### Installing

ubuntu-update.sh does not require any special installation.

Either copy the repository from github or simply copy the file using the download option from the green "Clone or download" link in the upper right of the github page.

To make a local copy of the git repo, run:

```
git clone https://github.com/TedLeRoy/ubuntu-update.sh.git
```

in the directory where you want to make the git clone.

To copy the file directly, type:

```
wget https://github.com/TedLeRoy/ubuntu-update.sh/archive/master.zip
```

being in the directory where you want the file downloaded, then type `unzip master.zip` to extract the files.

## Usage 

Just run as shown:

```
sudo ./ubuntu-update.sh
```

being in the directory where ubuntu-update.sh resides.

Output will be the normal output to std-out of running apt-get update, upgrade, dist-upgrade, and autoremove.

A video showing a sample run can be found at https://youtu.be/HCWUGxYAqjY

It is recommended that you run this script interactively instead of calling it with another script or process. You may be prompted for input for things like GRUB updates, or which version of a file to keep. This will hang the script unless you provide input.

Although these prompts could be overridden with `export DEBIAN_FRONTEND=noninteractive`, responding to the prompts provides greater control.

The script will also parse the output attempting to display output that may require your attention at the end of the run, looking for words like *warning* and *reboot*.

### Messages

Look for messages recommending a reboot or providing other warnings you may want to check out. These should be displayed at the end of the run but it may not catch all items of interest.

### Updates

If you chose to create a local git repository, you can run one command to update to the latest version available.

```
git fetch
```

If you downloaded the file, you'll have to download again after each update.

## Author

* **Ted LeRoy** - *Initial work* - [ubuntu-update.sh](https://github.com/TedLeRoy/ubuntu-update.sh)

## Built With

bash script using apt on Ubuntu 16.04 LTS.

## Future Improvements

The following additions or features are planned:

* Accept command line options to override default behavior. If the user wants to skip dist-upgrade, provide a command line option for doing so, for example.
* Implement versioning so people will know when there has been an update.

Suggestions for features are welcome.

## License

This project is licensed under the GNU General Public License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgements

* Creators and maintainers of apt

## Sample run

Here is what a sample run of the script looks like:

```
theo@Ubuntu-Practice:~/my_projects/ubuntu-update.sh$ sudo ./ubuntu-update.sh
[sudo] password for theo:

ubuntu-update.sh Copyright (C) 2018 Ted LeRoy
This program comes with ABSOLUTELY NO WARRANTY see
https://github.com/TedLeRoy/ubuntu-update.sh/blob/master/LICENSE.md
This is free software, and you are welcome to redistribute it
under certain conditions.
Again, see  https://github.com/TedLeRoy/ubuntu-update.sh/blob/master/LICENSE.md
for details.

#############################
#     Updating Data Base    #
#############################

Hit:1 http://us.archive.ubuntu.com/ubuntu xenial InRelease
Get:2 http://us.archive.ubuntu.com/ubuntu xenial-updates InRelease [102 kB]
Get:3 http://security.ubuntu.com/ubuntu xenial-security InRelease [102 kB]
Get:4 http://us.archive.ubuntu.com/ubuntu xenial-backports InRelease [102 kB]
Get:5 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 Packages [742 kB]
Get:6 http://us.archive.ubuntu.com/ubuntu xenial-updates/main i386 Packages [689 kB]
Get:7 http://us.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 Packages [601 kB]
Get:8 http://us.archive.ubuntu.com/ubuntu xenial-updates/universe i386 Packages [557 kB]
Get:9 http://us.archive.ubuntu.com/ubuntu xenial-updates/universe Translation-en [243 kB]
Fetched 3,138 kB in 3s (810 kB/s)
Reading package lists...

##############################
# Upgrading Operating System #
##############################

Reading package lists...
Building dependency tree...
Reading state information...
Calculating upgrade...
The following packages will be upgraded:
  apt apt-transport-https apt-utils libapt-inst2.0 libapt-pkg5.0
5 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
Need to get 2,027 kB of archives.
After this operation, 1,024 B of additional disk space will be used.
Get:1 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libapt-pkg5.0 amd64 1.2.26 [706 kB]
Get:2 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libapt-inst2.0 amd64 1.2.26 [55.4 kB]
Get:3 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 apt amd64 1.2.26 [1,043 kB]
Get:4 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 apt-utils amd64 1.2.26 [197 kB]
Get:5 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 apt-transport-https amd64 1.2.26 [26.1 kB]
Fetched 2,027 kB in 1s (1,670 kB/s)
(Reading database ... 115014 files and directories currently installed.)
Preparing to unpack .../libapt-pkg5.0_1.2.26_amd64.deb ...
Unpacking libapt-pkg5.0:amd64 (1.2.26) over (1.2.25) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...
Setting up libapt-pkg5.0:amd64 (1.2.26) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...
(Reading database ... 115014 files and directories currently installed.)
Preparing to unpack .../libapt-inst2.0_1.2.26_amd64.deb ...
Unpacking libapt-inst2.0:amd64 (1.2.26) over (1.2.25) ...
Preparing to unpack .../archives/apt_1.2.26_amd64.deb ...
Unpacking apt (1.2.26) over (1.2.25) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...
Processing triggers for man-db (2.7.5-1) ...
Setting up apt (1.2.26) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...
(Reading database ... 115014 files and directories currently installed.)
Preparing to unpack .../apt-utils_1.2.26_amd64.deb ...
Unpacking apt-utils (1.2.26) over (1.2.25) ...
Preparing to unpack .../apt-transport-https_1.2.26_amd64.deb ...
Unpacking apt-transport-https (1.2.26) over (1.2.25) ...
Processing triggers for man-db (2.7.5-1) ...
Setting up libapt-inst2.0:amd64 (1.2.26) ...
Setting up apt-utils (1.2.26) ...
Setting up apt-transport-https (1.2.26) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...

#############################
#  Starting Full Upgrade    #
#############################

Reading package lists...
Building dependency tree...
Reading state information...
Calculating upgrade...
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.

#############################
#   Full Upgrade Complete   #
#############################


#############################
#    Starting Autoremove    #
#############################

Reading package lists...
Building dependency tree...
Reading state information...
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.

#############################
#    Autoremove Complete    #
#############################


#####################################################
#   Checking for actionable messages from install   #
#####################################################


#############################
#    Cleaning temp files    #
#############################


#############################
#     Done with upgrade     #
#############################
```

This was run on an Ubuntu 16.04 LTS Server installation of [Ubuntu](https://www.ubuntu.com/server).

Here are screenshots of a run:

![Screenshot 1 of ubuntu-update.sh run](https://image.ibb.co/iGWqCn/ubuntu_update_sh_run_1.png)
![Screenshot 2 of ubuntu-update.sh run](https://image.ibb.co/hhOgJS/ubuntu_update_sh_run_2.png)

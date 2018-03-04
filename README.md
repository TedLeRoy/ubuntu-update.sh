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

### Warning

Be sure you have read and understand what this file does before running it.

You can read the man page for each command to see what it does.

Any time the creator of a script says it has to be run with sudo permissions or as root, use caution.

*This script has to be run with sudo because apt commands must be run as root.*

### Installing

ubuntu-update.sh does not require any special installation.

Either copy the repository from github or simply copy the file.

To make a local copy of the git repo, run:

```
git clone git@github.com:TedLeRoy/ubuntu-update.sh.git
```

in the directory where you want to make the git clone.

To copy the file directly, type:

```
wget https://github.com/TedLeRoy/ubuntu-update.sh/archive/master.zip
```

being in the directory where you want the file downloaded, they type `unzip master.zip` to extract the files.

## Usage 

```
sudo ./<path/to/file/>ubuntu-update.sh
```

Output will be the normal output to std-out of an update and upgrade, then a full-upgrade (formerly called a dist-upgrade with apt-get).

### Messages

Look for messages recommending a reboot or recomending you run sudo apt auto-remove to clean up unneeded files.

## Author

* **Ted LeRoy** - *Initial work* - [ubuntu-update.sh](https://github.com/TedLeRoy/ubuntu-update.sh)

## Built With

bash script using apt on Ubuntu 16.04 LTS.

## License

This project is licensed under the GNU General Public License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgements

* Creators and maintainers of apt

## Sample run

Here is what a sample run of the script looks like:

```
Laptop:~/git/update/ubuntu-update.sh$ sudo ./update.sh
[sudo] password for user:


#############################
# Updating Operating System #
#############################


Hit:1 http://us.archive.ubuntu.com/ubuntu artful InRelease
Ign:2 http://dl.google.com/linux/chrome/deb stable InRelease
Hit:3 http://security.ubuntu.com/ubuntu artful-security InRelease
Get:4 http://us.archive.ubuntu.com/ubuntu artful-updates InRelease [78.6 kB]
Hit:5 http://ppa.launchpad.net/plt/racket/ubuntu artful InRelease
Hit:6 http://dl.google.com/linux/chrome/deb stable Release
Hit:7 http://us.archive.ubuntu.com/ubuntu artful-backports InRelease
Hit:8 http://ppa.launchpad.net/system76-dev/stable/ubuntu artful InRelease
Hit:10 http://ppa.launchpad.net/system76/pop/ubuntu artful InRelease
Hit:11 http://ppa.launchpad.net/webupd8team/atom/ubuntu artful InRelease
Fetched 78.6 kB in 1s (48.6 kB/s)
Reading package lists... Done
Building dependency tree
Reading state information... Done
All packages are up to date.
Reading package lists... Done
Building dependency tree
Reading state information... Done
Calculating upgrade... Done
APT(8)                                       APT                                      APT(8)

0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.


#############################
#     Done With Upgrade     #
#############################


#############################
#  Starting Dist-Upgrade    #
#############################


Reading package lists... Done
Building dependency tree
Reading state information... Done
Calculating upgrade... Done
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.


#############################
#  Operating System Updated #
#############################


```

This was run on an up to date installation of [POP!_OS](https://system76.com/pop) an Ubuntu derivative maintained by [System76](https://system76.com/).

Here's a ![screenshot](https://image.ibb.co/hTXNa7/ubuntu_update_sh_sample_run.png) of that run.

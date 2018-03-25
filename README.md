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
tedl@ubuntu-16-04:~/my_projects/ubuntu-update.sh$ sudo ./ubuntu-update.sh
[sudo] password for tedl:

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
Hit:2 http://us.archive.ubuntu.com/ubuntu xenial-updates InRelease
Hit:3 http://us.archive.ubuntu.com/ubuntu xenial-backports InRelease
Hit:4 http://security.ubuntu.com/ubuntu xenial-security InRelease
Reading package lists...

##############################
# Upgrading Operating System #
##############################

Reading package lists...
Building dependency tree...
Reading state information...
Calculating upgrade...
The following packages have been kept back:
  libdrm2
The following packages will be upgraded:
  apparmor apt apt-transport-https apt-utils base-files bsdutils
  cloud-guest-utils cloud-initramfs-copymods cloud-initramfs-dyn-netconf
  cryptsetup cryptsetup-bin distro-info-data dnsmasq-base dpkg
  friendly-recovery grub-common grub-legacy-ec2 grub-pc grub-pc-bin
  grub2-common initramfs-tools initramfs-tools-bin initramfs-tools-core
  iproute2 isc-dhcp-client isc-dhcp-common klibc-utils libapparmor-perl
  libapparmor1 libapt-inst2.0 libapt-pkg5.0 libaudit-common libaudit1
  libblkid1 libcryptsetup4 libfdisk1 libgcrypt20 libgnutls-openssl27
  libgnutls30 libklibc libmount1 libnuma1 libparted2 libplymouth4 libseccomp2
  libsmartcols1 libuuid1 linux-firmware logrotate lshw lxcfs lxd lxd-client
  mdadm mount open-vm-tools overlayroot parted plymouth
  plymouth-theme-ubuntu-text python-apt-common python3-apt python3-distupgrade
  resolvconf snapd sosreport squashfs-tools ubuntu-minimal
  ubuntu-release-upgrader-core ubuntu-server ubuntu-standard
  unattended-upgrades update-notifier-common util-linux uuid-runtime vlan
  xfsprogs
77 upgraded, 0 newly installed, 0 to remove and 1 not upgraded.
Need to get 79.0 MB of archives.
After this operation, 19.8 MB of additional disk space will be used.
Get:1 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 base-files amd64 9.4ubuntu4.6 [55.0 kB]
Get:2 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 bsdutils amd64 1:2.27.1-6ubuntu3.4 [51.5 kB]
Get:3 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 dpkg amd64 1.18.4ubuntu1.4 [2,088 kB]
Get:4 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 util-linux amd64 2.27.1-6ubuntu3.4 [849 kB]
Get:5 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 mount amd64 2.27.1-6ubuntu3.4 [121 kB]
Get:6 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libapt-pkg5.0 amd64 1.2.26 [706 kB]
[Truncated for brevity...]
Preparing to unpack .../snapd_2.29.4.2_amd64.deb ...
Warning: Stopping snapd.service, but it can still be activated by:
  snapd.socket
[Truncated for brevity...]
Unpacking grub-legacy-ec2 (17.2-35-gf576b2a2-0ubuntu1~16.04.2) over (0.7.9-153-g16a7302f-0ubuntu1~16.04.2) ...
dpkg: warning: unable to delete old directory '/etc/kernel/kernel/postinst.d': Directory not empty
dpkg: warning: unable to delete old directory '/etc/kernel/kernel/postrm.d': Directory not empty
dpkg: warning: unable to delete old directory '/etc/kernel/kernel': Directory not empty
[Truncated for brevity...]
Processin triggers for ureadahead (0.100.0-19) ...
Processing triggers for resolvconf (1.78ubuntu6) ...

#############################
#  Starting Full Upgrade    #
#############################

Reading package lists...
Building dependency tree...
Reading state information...
Calculating upgrade...
The following NEW packages will be installed:
  libdrm-common
The following packages will be upgraded:
  libdrm2
1 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 35.2 kB of archives.
After this operation, 39.9 kB of additional disk space will be used.
Get:1 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libdrm-common all 2.4.83-1~16.04.1 [4,870 B]
Get:2 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libdrm2 amd64 2.4.83-1~16.04.1 [30.4 kB]
Fetched 35.2 kB in 5s (6,572 B/s)
                                 Selecting previously unselected package libdrm-common.
(Reading database ... 91695 files and directories currently installed.)
Preparing to unpack .../libdrm-common_2.4.83-1~16.04.1_all.deb ...
Unpacking libdrm-common (2.4.83-1~16.04.1) ...
Preparing to unpack .../libdrm2_2.4.83-1~16.04.1_amd64.deb ...
Unpacking libdrm2:amd64 (2.4.83-1~16.04.1) over (2.4.76-1~ubuntu16.04.1) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...
Setting up libdrm-common (2.4.83-1~16.04.1) ...
Setting up libdrm2:amd64 (2.4.83-1~16.04.1) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...

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

Warning: Stopping lxd.service, but it can still be activated by:
Warning: Stopping snapd.service, but it can still be activated by:
dpkg: warning: unable to delete old directory '/etc/kernel/kernel/postinst.d': Directory not empty
dpkg: warning: unable to delete old directory '/etc/kernel/kernel/postrm.d': Directory not empty
dpkg: warning: unable to delete old directory '/etc/kernel/kernel': Directory not empty
update-rc.d: warning: start and stop actions are no longer supported; falling back to defaults
Installation finished. No error reported.
update-rc.d: warning: start and stop actions are no longer supported; falling back to defaults

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

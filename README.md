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

### Installing

ubuntu-update.sh does not require any special installation.

Either copy the repository from github or simply copy the file.

## Usage 

```
sudo ./<path/to/file/ubuntu-update.sh>
```

Output will be the normal output to std-out of an update an up grade, then a full-upgrade.

### Messages

Look for messages recommending a reboot or recomending you run sudo apt auto-remove to clean up unneeded files.

## Author

* **Ted LeRoy** - *Initial work* - [ubuntu-update.sh](https://github.com/TedLeRoy/ubuntu-update.sh)

## Built With

bash script using apt package manager on Ubuntu 16.04 LTS

## License

This project is licensed under the GNU General Public License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgements

* creators and maintainers of Advanced Package Tool

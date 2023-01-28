# System Maintenance

This script aims to perform maintenance on a Debian-based operating system. It is written in shell script and must be executed with administrator privileges (sudo).

## Functionality

1. Tests internet connection speed using the command `speedtest-cli`
2. Synchronizes the system clock with world time using the command `sudo dpkg-reconfigure tzdata`
3. Updates installed packages on the system using the command `apt update`
4. Installs available updates using the command `apt upgrade -s`
5. Updates FlatPack packages using the command `flatpak update -y`
6. Removes unnecessary dependencies using the command `apt autoremove`
7. Removes unnecessary/obsolete packages using the command `apt autoclean`
8. Clears memory cache using the commands `sudo sync` and `sudo sysctl -w vm.drop_caches=3`
9. Sets memory cache to 10% using the command `sudo sysctl vm.swappiness=10`
10. Turns off and on memory cache using the commands `sudo swapoff -a` and `sudo swapon -a`

## How to run

To run the script, open a terminal and navigate to the directory where the script is located. Then, execute the following command:
`sudo sh system-maintenance.sh`

**Attention:** It is important to note that the script should be executed with caution, as it can affect the system's functionality if used incorrectly. It is recommended to make a backup of important files before running it.

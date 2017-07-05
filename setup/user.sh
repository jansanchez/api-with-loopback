#! /bin/bash

# Add User
adduser $1

# Add the New User to the Sudo Group
groups $1
usermod -aG sudo $1

echo "vim /etc/sudoers"
echo "root    ALL=(ALL:ALL) ALL"
echo "$1 ALL=(ALL:ALL) ALL"

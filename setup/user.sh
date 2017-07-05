#! /bin/bash

# Add User
adduser $1

# Add the New User to the Sudo Group
groups $1
usermod -aG sudo $1

echo "Edit /etc/sudoers with..."
echo "root    ALL=(ALL:ALL) ALL"
echo "$1 ALL=(ALL:ALL) ALL"

#!/bin/bash

# Create the user pam360 with a bash login and default home directory
useradd -m -s /bin/bash pam360

# Generate a random password
password=$(openssl rand -base64 32)

# Set the password for pam360
echo "pam360:$password" | chpasswd

# Add pam360 to the wheel group (sudo privileges)
usermod -aG sudo pam360
